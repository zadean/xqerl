%% -------------------------------------------------------------------
%%
%% xqerl - XQuery processor
%%
%% Copyright (c) 2018-2019 Zachary N. Dean  All Rights Reserved.
%%
%% This file is provided to you under the Apache License,
%% Version 2.0 (the "License"); you may not use this file
%% except in compliance with the License.  You may obtain
%% a copy of the License at
%%
%%   http://www.apache.org/licenses/LICENSE-2.0
%%
%% Unless required by applicable law or agreed to in writing,
%% software distributed under the License is distributed on an
%% "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
%% KIND, either express or implied.  See the License for the
%% specific language governing permissions and limitations
%% under the License.
%%
%% -------------------------------------------------------------------
%%
-module(xqldb_sax).

-include("xqerl_db.hrl").

%% ====================================================================
%% API functions
%% ====================================================================
-export([parse_file/2,
         parse_dir/2,
         parse_file/3,
         parse_list/3,
         split_parse_file/3,
         compact/1]).

-type state()::#{pos      => non_neg_integer(),
                 parent   => [non_neg_integer()],
                 uri      => binary(),
                 db       => string(),
                 node_stk => list(#{}),
                 chld_stk => list(#{}),
                 nsp_on   => list({_,_}),
                 nsp_off  => list({_,_,_})}.

-define(u2b(S), unicode:characters_to_binary(S)).
%-define(MAX_PROCS, 45).
-define(MAX_PROCS, 32).

parse_dir(DB, Dir) ->
   xqldb_file:pmap(Dir, ".xml$", true, 
                   fun(Nm) -> xqldb_sax:parse_file(DB, Nm) end).

parse_file(DB,File) -> 
   Uri = unicode:characters_to_binary(File),
   parse_file(DB,File,Uri).

parse_file(DB,File,Uri) ->
   DocId = xqldb_path_table:new_document_id(?PATH_TABLE_P(DB)),
   State0 = default_state(DB,Uri,DocId),
   Index = maps:get(index, DB),
   Timestamp = maps:get(timestamp, State0),
   WFun = fun() -> index_writer([], {Index, DocId, Timestamp}) end,
   Writer = erlang:spawn_opt(WFun, [link, {fullsweep_after, 0}, {message_queue_data, off_heap}]),
   State = State0#{writer => Writer},
   try
   {ok,State1,_} = 
      xmerl_sax_parser:file(File,[{continuation_fun, 
                                   fun default_continuation_cb/1},
                                  {event_fun, fun event/3},
                                  {event_state, State}]),
    
   
   % Nodes is [{NodeId, NodeBin, PathId}] 
   % Nsps  is [{ElemId, UriId, Prefix}] in-scope is then easy to find
% make and insert all index values at all levels
   Self = self(),   
   ok = post_document_paths(State1),   
   Writer ! {Self, done},
   ok = wait_index_writer(Writer),
   _ = xqldb_lock:write(?DBLOCK(DB), Self, 60000),
   _ = xqldb_path_table:insert(?PATH_TABLE_P(DB), {Uri, xml, DocId}),
   _ = xqldb_lock:clear(?DBLOCK(DB), Self),
   ok
   catch _ : G : E ->
      [{G,E}]
   end.

      
parse_list(_DB,[],_Uri) -> ok;
parse_list(DB,List,Uri) ->
   %?dbg("start", List),
   %Self = self(),
   DocId = xqldb_path_table:new_document_id(?PATH_TABLE_P(DB)),
   State = default_state(DB,Uri,DocId),
   F = fun(E,S) ->
             event(E,0,S)
       end,
   {Nodes,Nsps} = lists:foldl(F, State, List),
   
   % stuff for another module
   %{Len,Nodes} = xqldb_nodes:doc_tree_to_node_table(Tree),
   %Struct = xqldb_structure:index_doc(Nodes),
   %Len = byte_size(Nodes) div ?BSZ,
   %DocPos = xqldb_node_table:insert(?NODE_TABLE_P(DB), Nodes),
   %_ = xqldb_lock:write(?DBLOCK(DB), Self, 60000),
   %_ = xqldb_structure_index:add(?STRUCT_INDEX_P(DB), Struct),
   %ONsps = [{A + DocPos, B + DocPos,C,D} || {A,B,C,D} <- Nsps],
   %_ = xqldb_ns_node_table:insert(?NS_NODE_TABLE_P(DB), ONsps),
   %_ = xqldb_path_table:insert(?PATH_TABLE_P(DB), {Uri, xml, DocPos, Len}),
   %_ = xqldb_lock:clear(?DBLOCK(DB), Self),
   %?dbg("done", Uri),
   ok.


split_parse_file(File, Fun, Path) ->
   State = default_split_state(Fun, Path),
   {ok,ok,_} = 
      xmerl_sax_parser:file(File,[{continuation_fun, 
                                   fun default_continuation_cb/1},
                                  {event_fun, fun split_doc/3},
                                  {event_state, State}]),
   ok.


default_continuation_cb(IoDevice) ->
   case file:read(IoDevice, 1 bsl 16) of
      eof ->
         {<<>>, IoDevice};
      {ok, FileBin} ->
         {FileBin, IoDevice}
   end.

%% ====================================================================
%% Internal functions
%% ====================================================================

default_state(DB, Uri, DocId) ->
   UriId = xqldb_namespace_table:insert(?NMSP_TABLE_P(DB), <<>>),
   XmlId = xqldb_namespace_table:insert(
             ?NMSP_TABLE_P(DB), <<"http://www.w3.org/XML/1998/namespace">>),
   M1 = add_uri(#{},<<>>,UriId),
   M2 = add_uri(M1,<<"http://www.w3.org/XML/1998/namespace">>,XmlId),
   #{db       => DB,       % DB this doc goes into
     doc_id   => DocId,    % unique document ID, base62 binary
     writer   => [],       % index writer/collector process 
     timestamp => erlang:system_time(microsecond), 
     pos      => 0,        % current position    -> simply counts forward
     parent   => <<>>,     % node stack  -> each node Pos is appended, makes up the unique NodeId
     names    => #{},      % all names used so far
     paths    => #{},      % paths used : path => ID
     curr_path=> [],       % paths used right now, a stack
     uri      => Uri,      % document-uri
     nsps     => M2,       % all inscope namespaces so far
     att_dec  => #{},      % from DTD for typing info
     att_texts => #{},     % cache all attribute binaries
     texts     => #{},     % cache short text binaries
     ignore_ws => false,   % ignore all WS text nodes or not
     has_ns   => false     % the next element has a namespace
    }.

default_split_state(Fun, Path) ->
   #{path   => Path,
     stack  => [],
     acc    => [],
     pids   => [],
     state  => search,
     ret    => Fun}.


%% SAX Events 
-spec event(Event::any(),Location::any(),State::state()) -> 
         NewState::state() | {Nodes::binary(), [any()]}.
         
%% startDocument
event(startDocument, _L, #{db  := DB,
                           doc_id := DocId,
                           paths := Paths,
                           writer := Writer,
                           timestamp := Timestamp,
                           uri := Uri} = State) ->
   NodeId = <<>>,
   UriRef = xqldb_string_table:insert(?TEXT_TABLE_P(DB), Uri),
   NodeBin = xqldb_nodes:document(UriRef),
   {PathId, Paths1} = get_path_id(DB, [], Paths),
   ok = post_node_indexes(Writer, DocId, NodeId, NodeBin, PathId, Timestamp),
   State#{pos := 1,
          paths := Paths1,
          parent := NodeId};
event(startFragment, _L, #{db  := DB,
                           uri := Uri} = State) ->
   UriRef = xqldb_string_table:insert(?TEXT_TABLE_P(DB), Uri),
   Nd = xqldb_nodes:document(UriRef),
   State#{pos := 1,
          node_acc := [Nd],
          parent := <<>>};
event(endDocument, _L, #{parent := <<>>} = State) ->
   State;
event(endFragment, _L, #{parent := <<>>} = State) ->
   State;
event({startPrefixMapping, PrefixS, UriS}, _, #{db  := DB,
                                                doc_id := DocId,
                                                parent := Par,
                                                pos := Pos,
                                                writer := Writer,
                                                timestamp := Timestamp,
                                                nsps := Scp} = State) ->
   ElemId = add_pos(Par, Pos),
   Prefix = ?u2b(PrefixS),
   Uri = ?u2b(UriS),
   UriId = xqldb_namespace_table:insert(?NMSP_TABLE_P(DB), Uri),
   ok = post_namespace_node(Writer, DocId, ElemId, UriId, Prefix, Timestamp),
   Scp1 = add_uri(Scp,Uri,UriId),
   State#{nsps := Scp1, has_ns := true}; % flag next element that it has a NS
event({endPrefixMapping, _}, _, State) ->
   State;

event({startElement, UriS, LocalNameS, {PrefixS,_}, Attributes}, _, 
      #{db  := DB,
        doc_id := DocId,
        pos := Pos,
        parent := Ps,
        paths := Paths,
        curr_path := CPath,
        names := NameMap,
        has_ns := HasNs,
        nsps := Scp,
        writer := Writer,
        timestamp := Timestamp} = State) ->
   AttLen = length(Attributes),
   UriId = maps:get(?u2b(UriS), Scp),
   NodeId = add_pos(Ps, Pos),
   {NameId, NameMap1} = get_name_id(DB, ?u2b(PrefixS), ?u2b(LocalNameS), NameMap),
   PathKey = {UriId, NameId},
   CPath1 = [PathKey|CPath],
   NodePath = lists:reverse(CPath1),
   {PathId, Paths1} = get_path_id(DB, NodePath, Paths), 
   NodeBin = xqldb_nodes:element(NameId, UriId, HasNs, AttLen),
   State1 = att_events(Attributes, State#{parent := NodeId,
                                          curr_path := CPath1,
                                          names := NameMap1,
                                          pos := Pos + 1},LocalNameS),
   ok = post_node_indexes(Writer, DocId, NodeId, NodeBin, PathId, Timestamp),
   State1#{curr_path := CPath1,
           paths := Paths1,
           has_ns := false};

event({endElement, _Uri, _LocalName, {_PrefixS,_}}, _, 
      #{parent := Ps,
        curr_path := [_|CPath]
       } = State) ->
   State#{parent := rem_pos(Ps),
          curr_path := CPath};
%% Ignoring CData flag for now 
event(startCDATA, _, State) -> State;
event(endCDATA, _, State) -> State;
event({characters, String}, _, #{db := DB,
                                 doc_id := DocId,
                                 pos := Pos,
                                 parent := Ps,
                                 paths := Paths,
                                 texts := Texts,
                                 curr_path := CPath,
                                 writer := Writer,
                                 timestamp := Timestamp
                                } = State) -> 
   NodeId = add_pos(Ps, Pos),
   Bin = ?u2b(String),
   {TextRef, Texts1} = get_text_id(DB, Bin, Texts),
   NodeBin = xqldb_nodes:text(TextRef),
   CPath1 = [text|CPath], 
   {PathId, Paths1} = get_path_id(DB, lists:reverse(CPath1), Paths),
   ok = post_node_indexes(Writer, DocId, NodeId, NodeBin, PathId, Timestamp),
   State#{pos := Pos + 1,
          paths := Paths1,
          texts := Texts1};
% could ignore with a setting
%% event({ignorableWhitespace, _String}, _, #{ignore_ws := true} = State) -> 
%%    State;
event({ignorableWhitespace, String}, L, State) ->
   event({characters, String}, L, State);

event({processingInstruction, Target, Data}, _,
      #{ db := DB,
         doc_id := DocId,
         pos := Pos,
         parent := Ps,
         paths := Paths,
         texts := Texts,
         names := NameMap,
         curr_path := CPath,
         writer := Writer,
         timestamp := Timestamp} = State) -> 
   NodeId = add_pos(Ps, Pos),
   Bin = ?u2b(Data),
   {TextRef, Texts1} = get_text_id(DB, Bin, Texts),
   {NameRef, NameMap1} = get_name_id(DB, <<>>, ?u2b(Target), NameMap),
   NodeBin = xqldb_nodes:proc_inst(NameRef, TextRef),
   CPath1 = [{pi, NameRef}|CPath], 
   {PathId, Paths1} = get_path_id(DB, lists:reverse(CPath1), Paths),
   ok = post_node_indexes(Writer, DocId, NodeId, NodeBin, PathId, Timestamp),
   State#{pos := Pos + 1,
          names := NameMap1,
          paths := Paths1,
          texts := Texts1};
event({comment, String}, _, #{db := DB,
                              doc_id := DocId,
                              pos := Pos,
                              parent := Ps,
                              paths := Paths,
                              texts := Texts,
                              curr_path := CPath,
                              writer := Writer,
                              timestamp := Timestamp} = State) -> 
   NodeId = add_pos(Ps, Pos),
   Bin = ?u2b(String),
   {TextRef, Texts1} = get_text_id(DB, Bin, Texts),
   NodeBin = xqldb_nodes:comment(TextRef),
   CPath1 = [comment|CPath], 
   {PathId, Paths1} = get_path_id(DB, lists:reverse(CPath1), Paths),
   ok = post_node_indexes(Writer, DocId, NodeId, NodeBin, PathId, Timestamp),
   State#{pos := Pos + 1,
          paths := Paths1,
          texts := Texts1};

event({attributeDecl, ElementNameS, AttributeNameS, Type, _Mode, _Value}, _, 
      #{att_dec := AttDec} = State) ->
   Key = {ElementNameS, AttributeNameS},
   AttDec1 = case Type of
                "ID" ->
                   AttDec#{Key => ?att_id};
                "IDREF" ->
                   AttDec#{Key => ?att_idref};
                "IDREFS" ->
                   AttDec#{Key => ?att_idref};
                _ ->
                   AttDec#{Key => ?att_str}
             end,
   State#{att_dec := AttDec1};

event(Event,_,State) -> 
   ?dbg("UNKNOWN EVENT", Event),
   State.

att_events([{UriS, PrefixS, AttributeNameS, ValueS}|T], 
      #{db  := DB,
        doc_id := DocId,
        pos := Pos,
        parent := Ps,
        paths := Paths,
        curr_path := CPath,
        names := NameMap,
        att_dec := AttDec,
        att_texts := AttTexts,
        writer := Writer,
        timestamp := Timestamp,
        nsps := Scp} = State, ElementLocalName) ->
   NodeId = add_pos(Ps, Pos),
   Uri = ?u2b(UriS),
   Bin = ?u2b(ValueS),
   UriId = case maps:find(Uri, Scp) of
              {ok,V} -> V;
              error ->
                 ?dbg("unknown", {Uri, Scp}),
                 throw({error, unknown_namespace})
           end,
   AttributeName = ?u2b(AttributeNameS),
   Type = get_att_type({ElementLocalName, AttributeName}, AttDec),
   {TextRef, AttTexts1} = get_att_text_id(DB, Bin, AttTexts),
   {NameId, NameMap1} = get_name_id(DB, ?u2b(PrefixS), AttributeName, NameMap),
   
   NodeBin = xqldb_nodes:attribute(NameId, UriId, TextRef, Type),
   PathKey = {att, UriId, NameId},
   CPath1 = [PathKey|CPath], 
   {PathId, Paths1} = get_path_id(DB, lists:reverse(CPath1), Paths),
   ok = post_node_indexes(Writer, DocId, NodeId, NodeBin, PathId, Timestamp),
   att_events(T, 
              State#{names := NameMap1,
                     pos := Pos + 1,
                     paths := Paths1,
                     att_texts := AttTexts1}, 
              ElementLocalName);
att_events([],State,_) ->
   State.

get_att_type(Key, AttDec) ->
   case AttDec of
      #{Key := Type} ->
         Type;
      _ ->
         ?att_str
   end.

% Add Pos to the NodeId
add_pos(Par, Pos) ->
   <<Par/binary,Pos:32/integer>>.

% Remove highest Pos from the NodeId
rem_pos(Par) ->
   binary:part(Par, {0, byte_size(Par) - 4}).


split_doc(startDocument, _, #{stack := Stack} = State) ->
   State#{stack := [document|Stack]};
split_doc(endDocument, _, _) -> ok;

% start element while searching, push stack, check for match
split_doc({startElement, _, LocalName, {Prefix,_}, _}, _, 
          #{path  := Path,
            stack := Stack,
            state := search} = State) ->
   SEv = {element, Prefix, LocalName},
   NewStack = [SEv|Stack],
   case Stack == Path of
      true ->
         State#{stack := NewStack,
                acc   := [startDocument],
                state := capture};
      _ ->
         State#{stack := NewStack}
   end;
% start element while capturing, push stack, capture
split_doc({startElement, _, LocalName, {Prefix,_}, _} = Event, _, 
          #{acc   := Acc,
            stack := Stack,
            state := capture} = State) ->
   SEv = {element, Prefix, LocalName},
   NewStack = [SEv|Stack],
   State#{stack := NewStack,
          acc   := [Event|Acc]};

% end element while searching, pop stack
split_doc({endElement, _, _, _}, _, 
          #{stack := [_|Stack],
            state := search} = State) ->
   State#{stack := Stack};

% end element while capturing, pop stack, check path stop capture
split_doc({endElement, _, _, _} = Event, _, 
          #{path  := Path,
            stack := [_|Stack],
            acc   := Acc,
            pids  := Pids,
            state := capture,
            ret   := Fun} = State) ->
   case Stack == Path of
      true ->
         % do Fun to the Acc
         Events = lists:reverse([endDocument,Event|Acc]),
         Pids1 = if length(Pids) >= ?MAX_PROCS ->
                       wait_yield(Pids);
                    true ->
                       Pids
                 end,               
         NewPid = Fun(Events),
         State#{stack := Stack,
                pids  := [NewPid|Pids1],
                acc   := [],
                state := search};
      _ ->
         State#{stack := Stack,
                acc   := [Event|Acc]}
   end;

% ignore when something found in search that is not important
split_doc(_, _, #{state := search} = State) ->
   State;

% simply add to events accumulator when not element event
split_doc(Event, _, #{state := capture,
                      acc   := Acc} = State) ->
   State#{acc := [Event|Acc]}.

%% 
%% {startDTD, Name, PublicId, SystemId}
%% endDTD
%% {startEntity, SysId}
%% {endEntity, SysId}
%% {elementDecl, Name, Model}
%% {internalEntityDecl, Name, Value}
%% {externalEntityDecl, Name, PublicId, SystemId}
%% {unparsedEntityDecl, Name, PublicId, SystemId, Ndata}
%% {notationDecl, Name, PublicId, SystemId}


wait_yield(Pids) ->
   receive
      {Pid, done} when is_pid(Pid) ->
         lists:delete(Pid, Pids)
   after 60000 ->
       timeout
   end.

-define(MAX_POST, 2000).


wait_index_writer(Pid) ->
   receive
      {Pid, done} when is_pid(Pid) ->
         ok
   after 60000 ->
       timeout
   end.
   

pop_uri(On,Prefix) ->
   pop_uri(On,Prefix,[]).

pop_uri([{_,_,Prefix} = M|T],Prefix,Acc) ->
   {M, lists:reverse(Acc) ++ T};
pop_uri([M|T],Prefix,Acc) ->
   pop_uri(T,Prefix,[M|Acc]).

   
add_uri(Map,UriS,UriId) ->
   Map#{UriS => UriId}.

get_name_id(DB, Prefix, LocalName, NameMap) ->
   Key = {LocalName, Prefix},
   if is_map_key(Key, NameMap) ->
         {maps:get(Key, NameMap), NameMap};
      true ->
         Id = xqldb_name_table:insert(?NAME_TABLE_P(DB), Key),
         {Id, NameMap#{Key => Id}}
   end.

get_path_id(_DB, Path, Paths) when is_map_key(Path, Paths) ->
   {maps:get(Path, Paths), Paths};
get_path_id(DB, Path, Paths) ->
   Id = xqldb_structure_index:add(?STRUCT_INDEX_P(DB), Path),
   {Id, Paths#{Path => Id}}.

get_text_id(_DB, Text, Texts) when byte_size(Text) < 100,
                                   is_map_key(Text, Texts) ->
   {maps:get(Text, Texts), Texts};
get_text_id(DB, Text, Texts) ->
   TextRef = xqldb_string_table:insert(?TEXT_TABLE_P(DB), Text),
   {TextRef, Texts}.

get_att_text_id(_DB, Text, Texts) when is_map_key(Text, Texts) ->
   {maps:get(Text, Texts), Texts};
get_att_text_id(DB, Text, Texts) ->
   TextRef = xqldb_string_table:insert(?ATT_TABLE_P(DB), Text),
   {TextRef, Texts#{Text => TextRef}}.

post_document_paths(#{paths := Paths, writer := Writer}) ->
   Writer ! {path_doc, maps:values(Paths)},
   ok.

post_node_indexes(Writer, DocId, NodeId, NodeBin, PathId, Timestamp) ->
   Props = [{b, NodeBin},
            {p, PathId}],
   Postings = 
     [{path, DocId, PathId,           NodeId, Props, Timestamp},
      {doc,  DocId, trunc_id(NodeId), NodeId, Props, Timestamp}
      ],
   Writer ! {postings, Postings},
   ok.

post_namespace_node(Writer, DocId, NodeId, UriId, Prefix, Timestamp) ->
   Postings = 
     [{namespace, DocId, NodeId, {NodeId, UriId, Prefix}, [], Timestamp}],
   Writer ! {postings, Postings},
   ok.

index_writer(Postings, {Server, DocId, Timestamp} = State) ->
   receive
      {postings, P} when length(Postings) > ?MAX_POST ->
         ok = merge_index:index(Server, P ++ Postings),
         index_writer([], State);
      {postings, P} ->
         index_writer(P ++ Postings, State);
      {path_doc, Paths} ->
         PathDocs = [{path, doc, P, DocId, [], Timestamp} ||
                     P <- Paths],
         ok = merge_index:index(Server, PathDocs),
         index_writer(Postings, State);
      {Par, done} when Postings == [] ->
         Par ! {self(), done};
      {Par, done} ->
         ok = merge_index:index(Server, Postings),
         Par ! {self(), done}      
   after 60000 ->
       timeout
   end.


compact(DbUri) ->
   DB = xqldb_db:database(DbUri),
   %merge_index:drop(maps:get(index, DB)).
   merge_index:compact(maps:get(index, DB)).


trunc_id(<<>>) -> <<>>;
trunc_id(<<_:4/binary>> = A) -> A;
trunc_id(<<_:8/binary>> = A) -> A;
trunc_id(<<A:8/binary,_/binary>>) -> <<A:8/binary>>.  
