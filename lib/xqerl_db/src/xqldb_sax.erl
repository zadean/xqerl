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
         split_parse_file/3]).

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
-define(MAX_PROCS, 8).

parse_dir(DB, Dir) ->
   xqldb_file:pmap(Dir, ".xml$", true, 
                   fun(Nm) -> xqldb_sax:parse_file(DB, Nm) end).

parse_file(DB,File) -> 
   Uri = unicode:characters_to_binary(File),
   parse_file(DB,File,Uri).

parse_file(DB,File,Uri) ->
   Self = self(),
   State = default_state(DB,Uri),
   %{ok,{Tree,Struct,_,{_Len,Nodes}},_} = 
   {ok,{Nodes,Nsps},_} = 
      xmerl_sax_parser:file(File,[{continuation_fun, 
                                   fun default_continuation_cb/1},
                                  {event_fun, fun event/3},
                                  {event_state, State}]),
   % stuff for another module
   %{Len,Nodes} = xqldb_nodes:doc_tree_to_node_table(Tree),
   Struct = xqldb_structure:index_doc(Nodes),
   Len = byte_size(Nodes) div ?BSZ,
   DocPos = xqldb_node_table:insert(?NODE_TABLE_P(DB), Nodes),
   _ = xqldb_lock:write(?DBLOCK(DB), Self, 60000),
   _ = xqldb_structure_index:add(?STRUCT_INDEX_P(DB), Struct),
   ONsps = [{A + DocPos, B + DocPos,C,D} || {A,B,C,D} <- Nsps],
   _ = xqldb_ns_node_table:insert(?NS_NODE_TABLE_P(DB), ONsps),
   _ = xqldb_path_table:insert(?PATH_TABLE_P(DB), {Uri, xml, DocPos, Len}),
   _ = xqldb_lock:clear(?DBLOCK(DB), Self),
   ok.

parse_list(_DB,[],_Uri) -> ok;
parse_list(DB,List,Uri) ->
   %?dbg("start", List),
   %Self = self(),
   State = default_state(DB,Uri),
   F = fun(E,S) ->
             event(E,0,S)
       end,
   {Nodes,Nsps} = lists:foldl(F, State, List),
   
   % stuff for another module
   %{Len,Nodes} = xqldb_nodes:doc_tree_to_node_table(Tree),
   Struct = xqldb_structure:index_doc(Nodes),
   Len = byte_size(Nodes) div ?BSZ,
   DocPos = xqldb_node_table:insert(?NODE_TABLE_P(DB), Nodes),
   %_ = xqldb_lock:write(?DBLOCK(DB), Self, 60000),
   _ = xqldb_structure_index:add(?STRUCT_INDEX_P(DB), Struct),
   ONsps = [{A + DocPos, B + DocPos,C,D} || {A,B,C,D} <- Nsps],
   _ = xqldb_ns_node_table:insert(?NS_NODE_TABLE_P(DB), ONsps),
   _ = xqldb_path_table:insert(?PATH_TABLE_P(DB), {Uri, xml, DocPos, Len}),
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

default_state(DB, Uri) ->
   UriId = xqldb_namespace_table:insert(?NMSP_TABLE_P(DB), <<>>),
   XmlId = xqldb_namespace_table:insert(
             ?NMSP_TABLE_P(DB), <<"http://www.w3.org/XML/1998/namespace">>),
   M1 = add_uri(#{},<<>>,UriId),
   M2 = add_uri(M1,<<"http://www.w3.org/XML/1998/namespace">>,XmlId),
   #{pos      => 0,
     parent   => [0],
     names    => #{},
     uri      => Uri,
     db       => DB,
     node_stk => [],
     chld_stk => [[],[]],
     has_ns   => false,
     nsps     => M2,
     nsp_off  => [],
     nsp_on   => [],
     att_dec  => #{},
     ignore_ws => false
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
                           uri := Uri} = State) ->
   UriRef = xqldb_string_table:insert(?TEXT_TABLE_P(DB), Uri),
   Nd = xqldb_nodes:document(UriRef),
   State#{pos := 1,
          parent := [{0,Nd}]};
event(startFragment, _L, #{db  := DB,
                           uri := Uri} = State) ->
   UriRef = xqldb_string_table:insert(?TEXT_TABLE_P(DB), Uri),
   Nd = xqldb_nodes:document(UriRef),
   State#{pos := 1,
          parent := [{0,Nd}]};
event(endDocument, _L, #{parent := [{0,Nd}],
                         chld_stk := [Chld,_],
                         nsp_off := Nsps} = _State) ->
   Tree = xqldb_nodes:set_children(Nd,lists:reverse(Chld)),
   {Tree, Nsps};
event(endFragment, _L, #{parent := [{0,Nd}],
                         chld_stk := [Chld,_],
                         nsp_off := Nsps} = _State) ->
   Tree = xqldb_nodes:set_children(Nd,lists:reverse(Chld)),
   {Tree, Nsps};
event({startPrefixMapping, PrefixS, UriS}, _, #{db  := DB,
                                                pos := Pos,
                                                nsps := Scp,
                                                nsp_on := On} = State) ->
   Prefix = ?u2b(PrefixS),
   Uri = ?u2b(UriS),
   UriId = xqldb_namespace_table:insert(?NMSP_TABLE_P(DB), Uri),
   N = {Pos,UriId,Prefix},
   Scp1 = add_uri(Scp,Uri,UriId),
   State#{nsps := Scp1, nsp_on := [N|On], has_ns := true};
event({endPrefixMapping, PrefixS}, _, #{pos := Pos,
                                        nsp_on := On,
                                        nsp_off := Off} = State) ->
   Prefix = ?u2b(PrefixS),
   {{FirstPos,UriId,Prefix}, On1} = pop_uri(On,Prefix),
   N = {FirstPos,Pos,Prefix,UriId},
   State#{nsp_on := On1, nsp_off := [N|Off]};

event({startElement, UriS, LocalNameS, {PrefixS,_}, Attributes}, _, 
      #{db  := DB,
        pos := Pos,
        parent := [{Parent,_}|_] = Ps,
        names := NameMap,
        chld_stk := NodeStk,
        has_ns := HasNs,
        nsps := Scp} = State) ->
   AttLen = length(Attributes),
   UriId = maps:get(?u2b(UriS), Scp),
   {NameId, NameMap1} = get_name_id(DB, ?u2b(PrefixS), ?u2b(LocalNameS), NameMap),
   Elem = xqldb_nodes:element(Pos - Parent,NameId,UriId,HasNs,AttLen),
   {Atts,State1} = att_events(Attributes,[],State,LocalNameS),
   State1#{pos := Pos + 1 + AttLen,
           parent := [{Pos,Elem}|Ps],
           names := NameMap1,
           chld_stk := [Atts,NodeStk],
           has_ns := false};
event({endElement, _Uri, _LocalName, {_PrefixS,_}}, _, 
      #{parent := [{_Self,Elem}|Ps],
        chld_stk := [Chldn,[Pc,NodeStk]]} = State) ->
   Set = xqldb_nodes:set_children(Elem,lists:reverse(Chldn)),
   State#{parent := Ps,
          chld_stk := [[Set|Pc],NodeStk]};

event({characters, String}, _, #{db := DB,
                                 pos := Pos,
                                 chld_stk := [Pc,NodeStk],
                                 parent := [{Parent,_}|_]} = State) -> 
   Bin = ?u2b(String),
   Offset = Pos - Parent,
   TextRef = xqldb_string_table:insert(?TEXT_TABLE_P(DB), Bin),
   Node = xqldb_nodes:text(Offset,TextRef),
   State#{pos := Pos + 1,
          chld_stk := [[Node|Pc],NodeStk]};
% could ignore with a setting
%% event({ignorableWhitespace, _String}, _, #{ignore_ws := true} = State) -> 
%%    State;
event({ignorableWhitespace, String}, _, #{db := DB,
                                 pos := Pos,
                                 chld_stk := [Pc,NodeStk],
                                 parent := [{Parent,_}|_]} = State) -> 
   Bin = ?u2b(String),
   Offset = Pos - Parent,
   TextRef = xqldb_string_table:insert(?TEXT_TABLE_P(DB), Bin),
   Node = xqldb_nodes:text(Offset,TextRef),
   State#{pos := Pos + 1,
          chld_stk := [[Node|Pc],NodeStk]};
event({processingInstruction, Target, Data}, _, 
      #{db := DB,
        pos := Pos,
        names := NameMap,
        chld_stk := [Pc,NodeStk],
        parent := [{Parent,_}|_]} = State) -> 
   Bin = ?u2b(Data),
   Offset = Pos - Parent,
   {NameRef, NameMap1} = get_name_id(DB, <<>>, ?u2b(Target), NameMap),
   TextRef = xqldb_string_table:insert(?TEXT_TABLE_P(DB), Bin),
   Node = xqldb_nodes:proc_inst(Offset, NameRef, TextRef),
   State#{pos := Pos + 1,
          names := NameMap1,
          chld_stk := [[Node|Pc],NodeStk]};
event({comment, String}, _, #{db := DB,
                              pos := Pos,
                              chld_stk := [Pc,NodeStk],
                              parent := [{Parent,_}|_]} = State) -> 
   Bin = ?u2b(String),
   Offset = Pos - Parent,
   TextRef = xqldb_string_table:insert(?TEXT_TABLE_P(DB), Bin),
   Node = xqldb_nodes:comment(Offset,TextRef),
   State#{pos := Pos + 1,
          chld_stk := [[Node|Pc],NodeStk]};

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

event(_Event,_,State) -> 
   %?dbg("UNKNOWN EVENT", Event),
   State.

att_events([{UriS, PrefixS, AttributeNameS, ValueS}|T], Acc, 
           #{db := DB,
             nsps := Scp,
             att_dec := AttDec,
             names := NameMap} = State, ElementLocalName) ->
   Uri = ?u2b(UriS),
   Bin = ?u2b(ValueS),
   NsRef = case maps:find(Uri, Scp) of
              {ok,V} ->
                 V;
              error ->
                 ?dbg("unknown", {Uri, Scp}),
                 throw({error, unknown_namespace})
           end,
   TextRef = xqldb_string_table:insert(?ATT_TABLE_P(DB), Bin),
   AttributeName = ?u2b(AttributeNameS),
   {NameRef, NameMap1} = get_name_id(DB, ?u2b(PrefixS), AttributeName, NameMap),
   Offset = length(Acc) + 1,
   Type = get_att_type({ElementLocalName, AttributeName}, AttDec),
   Node = xqldb_nodes:attribute(Offset, NameRef, NsRef, TextRef, Type),
   att_events(T, [Node|Acc], State#{names := NameMap1}, ElementLocalName);
att_events([],Acc,State,_) ->
   {Acc,State}.

get_att_type(Key, AttDec) ->
   case AttDec of
      #{Key := Type} ->
         Type;
      _ ->
         ?att_str
   end.


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
%% startCDATA
%% endCDATA
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
   case maps:find(Key, NameMap) of
      error ->
         Id = xqldb_name_table:insert(?NAME_TABLE_P(DB), Key),
         {Id, NameMap#{Key => Id}};
      {ok,Id} ->
         {Id, NameMap}
   end.


