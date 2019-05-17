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
         parse_file/4,
         parse_list/4,
         split_parse_file/3,
         compact/1]).

-type state()::#{pos      => non_neg_integer(),
                 parent   => [non_neg_integer()],
                 uri      => binary(),
                 db       => db(),
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
   parse_file(DB,File,Uri,erlang:system_time()).

parse_file(DB,File,Uri,Stamp) ->
   State0 = default_state(DB,Uri,Stamp),
   Timestamp = maps:get(timestamp, State0),
   Counter = #{},
   WFun = fun() -> index_writer([], {DB, {Uri, Stamp}, Timestamp}, 0) end,
   Writer = erlang:spawn_opt(WFun, [link, {fullsweep_after, 0}]),
   State = State0#{writer => Writer,
                   counter => Counter},
   try
      {ok,State1,_} = 
         xmerl_sax_parser:file(File,[{continuation_fun, 
                                      fun default_continuation_cb/1},
                                     {event_fun, fun event/3},
                                     {event_state, State}]),
       
      
      % make and insert all index values at all levels
      Self = self(),   
      ok = post_document_paths(State1),   
      Writer ! {Self, done},
      ok = wait_index_writer(Writer),
      Counts = get_path_counts(maps:get(counter, State1)),
      xqldb_structure_index:incr_counts(DB, Counts),
      ok
   catch _ : G : E ->
      [{G,E}]
   end.

      
parse_list(_DB,[],_Uri,_) -> ok;
parse_list(DB,List,Name,Stamp) ->
   State0 = default_state(DB,Name,Stamp),
   Timestamp = maps:get(timestamp, State0),
   Counter = #{},
   WFun = fun() -> index_writer([], {DB, {Name, Stamp}, Timestamp}, 0) end,
   Writer = erlang:spawn_opt(WFun, [link, {fullsweep_after, 0}]),
   State = State0#{writer => Writer,
                   counter => Counter},
   try
   F = fun(E,S) ->
             event(E,0,S)
       end,
   State1 = lists:foldl(F, State, List),
   %?dbg("State1",State1),
   Self = self(),   
   ok = post_document_paths(State1),   
   Writer ! {Self, done},
   ok = wait_index_writer(Writer),
   Counts = get_path_counts(maps:get(counter, State1)),
   xqldb_structure_index:incr_counts(DB, Counts),
   ok
   catch _ : G : E ->
      [{G,E}]
   end.


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

default_state(DB, Uri, Stamp) ->
   {_UriId, M1} = get_name_id(DB, <<>>, #{}),
   {_XmlId, M2} = get_name_id(DB, <<"http://www.w3.org/XML/1998/namespace">>, M1),
   #{doc_id   => {Uri,Stamp}, % unique document ID
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
     texts     => #{},     % cache short text binaries
     ignore_ws => false,   % ignore all WS text nodes or not
     has_ns   => false,    % the next element has a namespace
     % tables
     db => DB
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
event(startDocument, _L, #{doc_id := DocId,
                           db := DB,
                           paths := Paths,
                           writer := Writer,
                           counter := Counter,
                           timestamp := Timestamp,
                           uri := Uri} = State) ->
   NodeId = <<>>,
   UriRef = xqldb_string_table2:insert(DB, Uri),
   NodeBin = xqldb_nodes:document(UriRef),
   {PathId, Paths1} = get_path_id(DB, [], Paths),
   Counter1 = post_node_indexes(Writer, DocId, NodeId, NodeBin, PathId, Timestamp, Counter),
   State#{pos := 1,
          paths := Paths1,
          counter := Counter1,
          parent := NodeId};
event(startFragment, _L, #{doc_id := DocId,
                           db := DB,
                           paths := Paths,
                           writer := Writer,
                           counter := Counter,
                           timestamp := Timestamp,
                           uri := Uri} = State) ->
   NodeId = <<>>,
   UriRef = xqldb_string_table2:insert(DB, Uri),
   NodeBin = xqldb_nodes:document(UriRef),
   {PathId, Paths1} = get_path_id(DB, [], Paths),
   Counter1 = post_node_indexes(Writer, DocId, NodeId, NodeBin, PathId, Timestamp, Counter),
   State#{pos := 1,
          paths := Paths1,
          counter := Counter1,
          parent := NodeId};
event(endDocument, _L, #{parent := <<>>} = State) -> State;
event(endFragment, _L, #{parent := <<>>} = State) ->
   State;
event({startPrefixMapping, PrefixS, UriS}, _, #{doc_id := DocId,
                                                db := DB,
                                                parent := Par,
                                                pos := Pos,
                                                writer := Writer,
                                                timestamp := Timestamp,
                                                nsps := Scp} = State) ->
   ElemId = add_pos(Par, Pos),
   Prefix = ?u2b(PrefixS),
   Uri = ?u2b(UriS),
   {UriId, Scp1} = get_name_id(DB, Uri, Scp),
   {_PrefixId, Scp2} = get_name_id(DB, Prefix, Scp1),
   ok = post_namespace_node(Writer, DocId, ElemId, UriId, Prefix, Timestamp),
   State#{nsps := Scp2, has_ns := true}; % flag next element that it has a NS
event({endPrefixMapping, _}, _, State) ->
   State;

event({startElement, UriS, LocalNameS, {PrefixS,_}, Attributes}, _, 
      #{doc_id := DocId,
        db := DB,
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
   UK = ?u2b(UriS),
   Prefix = ?u2b(PrefixS),
   LocalName = ?u2b(LocalNameS),
   NodeId = add_pos(Ps, Pos),
   #{UK := UriId} = Scp,
   {PrefixId, Scp1} = get_name_id(DB, Prefix, Scp),
   {NameId, NameMap1} = get_name_id(DB, LocalName, NameMap),
   PathKey = {UriId, NameId},
   CPath1 = [PathKey|CPath],
   {PathId, Paths1} = get_path_id(DB, CPath1, Paths), 
   NodeBin = xqldb_nodes:element(NameId, UriId, PrefixId, HasNs, AttLen),
   #{counter := Counter1} = 
     State1 = att_events(Attributes, State#{parent := NodeId,
                                            paths := Paths1,
                                            curr_path := CPath1,
                                            names := NameMap1,
                                            nsps := Scp1,
                                            pos := Pos + 1}, LocalName),
   Counter2 = post_node_indexes(Writer, DocId, NodeId, NodeBin, PathId, Timestamp, Counter1),
   State1#{parent := NodeId,
           curr_path := CPath1,
           counter := Counter2,
           has_ns := false};

event({endElement, _, _, {_,_}}, _, #{parent := Ps,
                                      curr_path := [_|CPath]} = State) ->
   State#{parent := rem_pos(Ps),
          curr_path := CPath};
%% Ignoring CData flag for now 
event(startCDATA, _, State) -> State;
event(endCDATA, _, State) -> State;
event({characters, String}, _, #{doc_id := DocId,
                                 db := DB,
                                 pos := Pos,
                                 parent := Ps,
                                 paths := Paths,
                                 curr_path := CPath,
                                 writer := Writer,
                                 counter := Counter,
                                 timestamp := Timestamp
                                } = State) -> 
   NodeId = add_pos(Ps, Pos),
   Bin = ?u2b(String),
   TextRef = get_text_id(DB, Bin),
   NodeBin = xqldb_nodes:text(TextRef),
   CPath1 = [text|CPath], 
   {PathId, Paths1} = get_path_id(DB, CPath1, Paths),
   Counter1 = post_node_indexes(Writer, DocId, NodeId, NodeBin, PathId, Timestamp, Counter),
   State#{pos := Pos + 1,
          paths := Paths1,
          counter := Counter1};
% could ignore with a setting
%% event({ignorableWhitespace, _String}, _, #{ignore_ws := true} = State) -> 
%%    State;
event({ignorableWhitespace, String}, L, State) ->
   event({characters, String}, L, State);

event({processingInstruction, Target, Data}, _,
      #{ doc_id := DocId,
         db := DB,
         pos := Pos,
         parent := Ps,
         paths := Paths,
         names := NameMap,
         curr_path := CPath,
         writer := Writer,
         counter := Counter,
         timestamp := Timestamp} = State) -> 
   NodeId = add_pos(Ps, Pos),
   Bin = ?u2b(Data),
   TextRef = get_text_id(DB, Bin),
   {NameRef, NameMap1} = get_name_id(DB, ?u2b(Target), NameMap),
   NodeBin = xqldb_nodes:proc_inst(NameRef, TextRef),
   CPath1 = [{pi, NameRef}|CPath], 
   {PathId, Paths1} = get_path_id(DB, CPath1, Paths),
   Counter1 = post_node_indexes(Writer, DocId, NodeId, NodeBin, PathId, Timestamp, Counter),
   State#{pos := Pos + 1,
          names := NameMap1,
          paths := Paths1,
          counter := Counter1};
event({comment, String}, _, #{doc_id := DocId,
                              db := DB,
                              pos := Pos,
                              parent := Ps,
                              paths := Paths,
                              curr_path := CPath,
                              writer := Writer,
                              counter := Counter,
                              timestamp := Timestamp} = State) -> 
   NodeId = add_pos(Ps, Pos),
   Bin = ?u2b(String),
   TextRef = get_text_id(DB, Bin),
   NodeBin = xqldb_nodes:comment(TextRef),
   CPath1 = [comment|CPath], 
   {PathId, Paths1} = get_path_id(DB, CPath1, Paths),
   Counter1 = post_node_indexes(Writer, DocId, NodeId, NodeBin, PathId, Timestamp, Counter),
   State#{pos := Pos + 1,
          paths := Paths1,
          counter := Counter1};

event({attributeDecl, ElementNameS, AttributeNameS, Type, _Mode, _Value}, _, 
      #{att_dec := AttDec} = State) ->
   Key = {?u2b(ElementNameS), ?u2b(AttributeNameS)},
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

% base uri sent from constructors and updates
event({baseUri, _},_,State) -> State;
event(Event,_,State) -> 
   ?dbg("UNKNOWN EVENT", Event),
   State.

att_events([{UriS, PrefixS, AttributeNameS, ValueS}|T], 
      #{doc_id := DocId,
        db := DB,
        pos := Pos,
        parent := Ps,
        paths := Paths,
        curr_path := CPath,
        names := NameMap,
        att_dec := AttDec,
        writer := Writer,
        timestamp := Timestamp,
        counter := Counter,
        nsps := Scp} = State, ElementLocalName) ->
   NodeId = add_pos(Ps, Pos),
   Uri = ?u2b(UriS),
   Prefix = ?u2b(PrefixS),
   Bin = ?u2b(ValueS),
   AttributeName = ?u2b(AttributeNameS),
   #{Uri := UriId} = Scp,
   Type = get_att_type({ElementLocalName, AttributeName}, AttDec),
   TextRef = get_text_id(DB, Bin),
   {PrefixId, Scp1} = get_name_id(DB, Prefix, Scp),
   {NameId, NameMap1} = get_name_id(DB, AttributeName, NameMap),
   
   NodeBin = xqldb_nodes:attribute(NameId, UriId, PrefixId, TextRef, Type),
   PathKey = {att, UriId, NameId},
   CPath1 = [PathKey|CPath], 
   {PathId, Paths1} = get_path_id(DB, CPath1, Paths),
   Counter1 = post_node_indexes(Writer, DocId, NodeId, NodeBin, PathId, Timestamp, Counter),
   att_events(T, 
              State#{names := NameMap1,
                     pos := Pos + 1,
                     paths := Paths1,
                     nsps := Scp1,
                     counter := Counter1}, 
              ElementLocalName);
att_events([],State,_) ->
   State.

get_att_type(Key, AttDec) ->
   %?dbg("Key, AttDec", {Key, AttDec}),
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
   

%% pop_uri(On,Prefix) ->
%%    pop_uri(On,Prefix,[]).
%% 
%% pop_uri([{_,_,Prefix} = M|T],Prefix,Acc) ->
%%    {M, lists:reverse(Acc) ++ T};
%% pop_uri([M|T],Prefix,Acc) ->
%%    pop_uri(T,Prefix,[M|Acc]).

   
get_name_id(DB, Key, NameMap) ->
   case NameMap of
      #{Key := Id} ->
         {Id, NameMap};
      _ ->
         Id = xqldb_name_table:insert(DB, Key),
         {Id, NameMap#{Key => Id}}
   end.

% Path is a reversed list
get_path_id(DB, Path, Paths) ->
   case Paths of
      #{Path := Id} ->
         {Id, Paths};
      _ ->
         Id = xqldb_structure_index:add(DB, lists:reverse(Path)),
         {Id, Paths#{Path => Id}}
   end.

get_text_id(DB, Text) ->
   xqldb_string_table2:insert(DB, Text).

post_document_paths(#{paths := Paths, writer := Writer}) ->
   Writer ! {path_doc, maps:values(Paths)},
   ok.

post_node_indexes(Writer, DocId, NodeId, NodeBin, PathId, Timestamp, Counter) ->
   Props = [{b, NodeBin},
            {d, DocId},
            {p, PathId}],
   Counter2 = update_counter(Counter, PathId, 1),
   Postings = 
     [{path, DocId, PathId,                       NodeId, Props, Timestamp},
      %{val,  DocId, NodeBin,                      NodeId, Props, Timestamp},
      {doc,  DocId, xqldb_nodes:trunc_id(NodeId), NodeId, Props, Timestamp}
      ],
   Writer ! {postings, Postings},
   Counter2.

post_namespace_node(Writer, DocId, NodeId, UriId, Prefix, Timestamp) ->
   Postings = 
     [{namespace, DocId, NodeId, {NodeId, UriId, Prefix}, [], Timestamp}],
   Writer ! {postings, Postings},
   ok.

index_writer(Postings, {#{index := Server}, _, _} = State, Count) when Count > ?MAX_POST ->
   ok = merge_index:index(Server, lists:append(Postings)),
   index_writer([[]], State, 0);
index_writer(Postings, {#{index := Server}, DocId, Timestamp} = State, Count) ->
   receive
      {postings, P} ->
         index_writer([P | Postings], State, Count + length(P));
      {path_doc, Paths} ->
         PathDocs = [{path, doc, P, DocId, [], Timestamp} ||
                     P <- Paths],
         ok = merge_index:index(Server, PathDocs),
         index_writer(Postings, State, Count);
      {Par, done} when Count == 0 ->
         Par ! {self(), done};
      {Par, done} ->
         ok = merge_index:index(Server, lists:append(Postings)),
         Par ! {self(), done}      
   after 60000 ->
       timeout
   end.


compact(DbUri) ->
   DB = xqldb_db:database(DbUri),
   %merge_index:drop(maps:get(index, DB)).
   merge_index:compact(maps:get(index, DB)).

get_path_counts(Counter) ->
   maps:to_list(Counter).

update_counter(Map, Key, Increment) ->
   case Map of
      #{Key := OldVal} ->
         Map#{Key := OldVal + Increment};
      _ ->
         Map#{Key => Increment}
   end.

