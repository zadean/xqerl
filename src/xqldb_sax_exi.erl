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
-module(xqldb_sax_exi).

-include("xqerl_db.hrl").

%% ====================================================================
%% API functions
%% ====================================================================
-export([parse_file/3,
         parse_dir/2]).


%% -type state()::#{pos      => non_neg_integer(),
%%                  parent   => [non_neg_integer()],
%%                  uri      => binary(),
%%                  db       => string(),
%%                  node_stk => list(#{}),
%%                  chld_stk => list(#{}),
%%                  nsp_on   => list({_,_}),
%%                  nsp_off  => list({_,_,_}),
%%                  names    => map(),
%%                  strings  => map(),
%%                  att_str  => map()
%%                  }.

parse_dir(DB, Dir) ->
   xqldb_file:pmap(Dir, ".exi$", true, 
                   fun(Nm) -> xqldb_sax_exi:parse_file(DB, Nm,<<"x.xml">>) end).


parse_file(_DB, _File, _Uri) ->
%%    Self = self(),
%%    State = default_state(DB,unicode:characters_to_binary(File)),
%%    %{ok,{Tree,Struct,_,{_Len,Nodes}},_} = 
%%    {ok,{Nodes,Nsps},_} = 
%%       xqldb_exi:parse_file(File, 
%%                            #{event_fun => fun event/2,
%%                              user_state => State}),
%%    % stuff for another module
%%    %{Len,Nodes} = xqldb_nodes:doc_tree_to_node_table(Tree),
%% %   Struct = xqldb_structure:index_doc(Nodes),
%% %   Len = byte_size(Nodes) div ?BSZ,
%% %   DocPos = xqldb_node_table:insert(?NODE_TABLE_P(DB), Nodes),
%% %   _ = xqldb_structure_index:add(?STRUCT_INDEX_P(DB), Struct),
%% %   ONsps = [{A + DocPos, B + DocPos,C,D} || {A,B,C,D} <- Nsps],
%% %   _ = xqldb_ns_node_table:insert(?NS_NODE_TABLE_P(DB), ONsps),
%% %   _ = xqldb_path_table:insert(?PATH_TABLE_P(DB), {Uri, xml, DocPos, Len}),
   ok.
   
%%    %{File,DocPos}.
%%    %{Tree,Struct,DocPos}.
%% 
%% 
%% %% default_continuation_cb(IoDevice) ->
%% %%    case file:read(IoDevice, 1 bsl 16) of
%% %%       eof ->
%% %%          {<<>>, IoDevice};
%% %%       {ok, FileBin} ->
%% %%          {FileBin, IoDevice}
%% %%    end.
%% 
%% 
%% %% ====================================================================
%% %% Internal functions
%% %% ====================================================================
%% 
%% default_state(DB, Uri) ->
%%    UriId = xqldb_namespace_table:insert(?NMSP_TABLE_P(DB), <<>>),
%%    XmlId = xqldb_namespace_table:insert(
%%              ?NMSP_TABLE_P(DB), <<"http://www.w3.org/XML/1998/namespace">>),
%%    M1 = add_uri(#{},<<>>,UriId),
%%    M2 = add_uri(M1,<<"http://www.w3.org/XML/1998/namespace">>,XmlId),
%%    #{pos      => 0,
%%      parent   => [0],
%%      uri      => Uri,
%%      db       => DB,
%%      node_stk => [],
%%      chld_stk => [[],[]],
%%      has_ns   => false,
%%      nsps     => M2,
%%      nsp_off  => [],
%%      nsp_on   => [],
%%      names    => initial_names(DB),
%%      strings  => #{},
%%      att_str  => #{}
%%      }.
%% 
%% 
%% %% SAX Events 
%% -spec event(Event::any(), State::state()) -> NewState::state().
%%          
%% %% EVENTS
%% %% {comment, Value}, % only Str
%% %% {pi, Name, Target},
%% 
%% 
%% %% start_document,
%% event(start_document, #{db  := DB,
%%                         uri := Uri} = State) ->
%%    UriRef = xqldb_string_table:insert(?TEXT_TABLE_P(DB), Uri),
%%    Nd = xqldb_nodes:document(UriRef),
%%    State#{pos := 1,
%%           parent := [{0,Nd}]};
%% %% end_document,
%% event(end_document, #{parent := [{0,Nd}],
%%                       chld_stk := [Chld,_],
%%                       nsp_off := Nsps} = _State) ->
%%    Tree = xqldb_nodes:set_children(Nd,lists:reverse(Chld)),
%%    {Tree, Nsps};
%% 
%% %% {namespace, Uri, Prefix, IsLocal},
%% event({namespace, {UriId,UriVal}, {PrefixId,Prefix}, IsLocal}, 
%%       #{db  := DB,
%%         parent := [{Pos,_}|_],
%%         nsps := Scp,
%%         names := NamesMap,
%%         nsp_on := On} = State) ->
%%    LUriId =  xqldb_namespace_table:insert(?NMSP_TABLE_P(DB), UriVal),
%%    N = {Pos,LUriId,Prefix,IsLocal},
%%    Scp1 = add_uri(Scp,UriVal,LUriId),
%%    State#{nsps := Scp1, nsp_on := [N|On], has_ns := true,
%%           names := NamesMap#{UriId => 
%%                                #{id => LUriId,
%%                                  local => #{},
%%                                  prefix => #{PrefixId => Prefix}}}};
%% event({namespace, {UriId,UriVal}, Prefix, IsLocal}, #{db  := DB,
%%                                                       parent := [{Pos,_}|_],
%%                                                       nsps := Scp,
%%                                                       names := NamesMap,
%%                                                       nsp_on := On} = State) ->
%%    LUriId =  xqldb_namespace_table:insert(?NMSP_TABLE_P(DB), UriVal),
%%    N = {Pos,LUriId,Prefix,IsLocal},
%%    Scp1 = add_uri(Scp,UriVal,LUriId),
%%    State#{nsps := Scp1, nsp_on := [N|On], has_ns := true,
%%           names := NamesMap#{UriId => 
%%                                #{id => LUriId,
%%                                  local => #{},
%%                                  prefix => #{}}}};
%% event({namespace, UriId, {PrefixId,Prefix}, IsLocal}, #{db  := DB,
%%                                                         parent := [{Pos,_}|_],
%%                                                         nsps := Scp,
%%                                                         names := NamesMap,
%%                                                         nsp_on := On} = State) ->
%%    #{UriId := #{id := LUriId}} = NamesMap,
%%    N = {Pos,UriId,Prefix,IsLocal},
%%    Scp1 = add_uri(Scp,get_uri(DB, LUriId),LUriId),
%%    State#{nsps := Scp1, nsp_on := [N|On], has_ns := true,
%%           names := NamesMap#{UriId => 
%%                                #{id => LUriId,
%%                                  local => #{},
%%                                  prefix => #{PrefixId => Prefix}}}};
%% event({namespace, UriId, PrefixId, IsLocal}, #{db  := DB,
%%                                                parent := [{Pos,_}|_],
%%                                                nsps := Scp,
%%                                                names := NamesMap,
%%                                                nsp_on := On} = State) ->
%%    #{UriId := #{id := LUriId,
%%                 prefix := #{PrefixId := Prefix}}} = NamesMap,
%%    N = {Pos,LUriId,Prefix,IsLocal},
%%    Scp1 = add_uri(Scp,get_uri(DB, LUriId),LUriId),
%%    State#{nsps := Scp1, nsp_on := [N|On], has_ns := true,
%%           names := NamesMap#{UriId => 
%%                                #{id => LUriId,
%%                                  local => #{},
%%                                  prefix => #{}}}};
%% 
%% 
%% %% {start_element, QName},
%% event({start_element, QName}, 
%%       #{db  := DB,
%%         pos := Pos,
%%         parent := [{Parent,ParElem}|_] = Ps,
%%         names := NameMap,
%%         chld_stk := NodeStk,
%%         has_ns := HasNs} = State) when is_map(ParElem) ->
%%    {{UriId, NameId}, NameMap1} = get_name_id(DB, QName, NameMap),
%%    Elem = {incomplete, Pos - Parent, NameId, UriId, HasNs, []},
%%    %{Atts,State1} = att_events(Attributes,[],State),
%%    State#{pos := Pos + 1,
%%           parent := [{Pos,Elem}|Ps],
%%           names := NameMap1,
%%           chld_stk := [[],NodeStk],
%%           has_ns := false};
%% event({start_element, QName}, 
%%       #{db  := DB,
%%         pos := Pos,
%%         parent := [{Parent,ParElem}|Ps],
%%         names := NameMap,
%%         chld_stk := [Old,NodeStk],
%%         has_ns := HasNs} = State) ->
%%    {{UriId, NameId}, NameMap1} = get_name_id(DB, QName, NameMap),
%%    Elem = {incomplete, Pos - Parent, NameId, UriId, HasNs, []},
%%    {CompParElem, Atts} = complete_element(ParElem),
%%    State#{pos := Pos + 1,
%%           parent := [{Pos,Elem},{Parent,CompParElem}|Ps],
%%           names := NameMap1,
%%           chld_stk := [[],[Old ++ Atts,NodeStk]],
%%           has_ns := false};
%% 
%% %% {attribute, QName, Value}, % {{Ns, Ln, Px}, Id | {Id, Str}}
%% event({attribute, QName, Value}, 
%%       #{db  := DB,
%%         pos := Pos,
%%         parent := [{A,{incomplete,B,C,D,E,Atts}}|Ps],
%%         names   := NameMap,
%%         strings := StringMap,
%%         att_str := AttStringMap} = State) ->
%%    {{UriId, NameId}, NameMap1} = get_name_id(DB, QName, NameMap),
%%    {TextRef, AttStringMap1} = get_attribute_string_id(DB, Value, AttStringMap, StringMap),
%%    Offset = length(Atts) + 1,
%%    Node = xqldb_nodes:attribute(Offset, NameId, UriId, TextRef, 0),
%%    State#{pos := Pos + 1,
%%           parent := [{A,{incomplete,B,C,D,E,[Node|Atts]}}|Ps],
%%           names := NameMap1,
%%           att_str := AttStringMap1};
%% 
%% %% end_element,
%% event(end_element,  
%%       #{pos := Pos,
%%         parent := [{SelfId,Elem}|Ps],
%%         chld_stk := [Chldn,[Pc,NodeStk]],
%%         nsp_on := On,
%%         nsp_off := Off} = State) when is_map(Elem) ->
%%    Set = xqldb_nodes:set_children(Elem,lists:reverse(Chldn)),
%%    {Off1, On1} = pop_uri(On,SelfId),
%%    Off2 = [{A,Pos - 1,C,B} || {A,B,C,_D} <- Off1],
%%    State#{parent := Ps,
%%           chld_stk := [[Set|Pc],NodeStk],
%%           nsp_on := On1, 
%%           nsp_off := Off2 ++ Off};
%% event(end_element,
%%       #{pos := Pos,
%%         parent := [{SelfId,Elem}|Ps],
%%         chld_stk := [[],[Pc,NodeStk]],
%%         nsp_on := On,
%%         nsp_off := Off} = State) ->
%%    {CompParElem, Atts} = complete_element(Elem),
%%    Set = xqldb_nodes:set_children(CompParElem,lists:reverse(Atts)),
%%    {Off1, On1} = pop_uri(On,SelfId),
%%    Off2 = [{A,Pos - 1,C,B} || {A,B,C,_D} <- Off1],
%%    State#{parent := Ps,
%%           chld_stk := [[Set|Pc],NodeStk],
%%           nsp_on := On1, 
%%           nsp_off := Off2 ++ Off};
%% 
%% %% {text, Value}, % can be {Id,Str} or just Id
%% event({text, String}, #{db := DB,
%%                         pos := Pos,
%%                         strings := StringMap,
%%                         att_str := AttStringMap,
%%                         chld_stk := [Pc,NodeStk],
%%                         parent := [{Parent,ParElem}|_]} = State) 
%%   when is_map(ParElem) -> 
%%    Offset = Pos - Parent,
%%    {TextRef, StringMap1} = get_string_id(DB, String, StringMap, AttStringMap),
%%    Node = xqldb_nodes:text(Offset,TextRef), 
%%    State#{pos := Pos + 1,
%%           strings := StringMap1,
%%           chld_stk := [[Node|Pc],NodeStk]};
%% event({text, String}, #{db := DB,
%%                         pos := Pos,
%%                         strings := StringMap,
%%                         att_str := AttStringMap,
%%                         chld_stk := [[],NodeStk],
%%                         parent := [{Parent,ParElem}|Ps]} = State) ->
%%    {CompParElem, Atts} = complete_element(ParElem),
%%    Offset = Pos - Parent,
%%    {TextRef, StringMap1} = get_string_id(DB, String, StringMap, AttStringMap),
%%    Node = xqldb_nodes:text(Offset,TextRef), 
%%    State#{pos := Pos + 1,
%%           strings := StringMap1,
%%           parent := [{Parent,CompParElem}|Ps],
%%           chld_stk := [[Node|Atts],NodeStk]};
%% 
%% event({processingInstruction, Target, Data}, 
%%       #{db := DB,
%%         pos := Pos,
%%         names := NameMap,
%%         chld_stk := [Pc,NodeStk],
%%         parent := [{Parent,_}|_]} = State) -> 
%%    Bin = (Data),
%%    Offset = Pos - Parent,
%%    {NameRef, NameMap1} = get_name_id(DB, <<>>, (Target), NameMap),
%%    TextRef = xqldb_string_table:insert(?TEXT_TABLE_P(DB), Bin),
%%    Node = xqldb_nodes:proc_inst(Offset, NameRef, TextRef),
%%    State#{pos := Pos + 1,
%%           names := NameMap1,
%%           chld_stk := [[Node|Pc],NodeStk]};
%% event({comment, String}, #{db := DB,
%%                            pos := Pos,
%%                            chld_stk := [Pc,NodeStk],
%%                            parent := [{Parent,_}|_]} = State) -> 
%%    Bin = (String),
%%    Offset = Pos - Parent,
%%    TextRef = xqldb_string_table:insert(?TEXT_TABLE_P(DB), Bin),
%%    Node = xqldb_nodes:comment(Offset,TextRef),
%%    State#{pos := Pos + 1,
%%           chld_stk := [[Node|Pc],NodeStk]};
%% 
%% 
%% event(Event,_State) -> 
%%    %State.
%%    throw({error,Event}).
%% 
%% pop_uri(L, ElemId) ->
%%    pop_uri(L, ElemId, []).
%% 
%% pop_uri([{ElemId,_,_,_} = M|T],ElemId,Acc) ->
%%    pop_uri(T,ElemId,[M|Acc]);
%% pop_uri(M,_,Acc) ->
%%    {lists:reverse(Acc), M}.
%% 
%%    
%% add_uri(Map,UriS,UriId) ->
%%    Map#{UriS => UriId}.
%% 
%% get_name_id(DB, Prefix, LocalName, NameMap) ->
%%    Key = {LocalName, Prefix},
%%    case maps:find(Key, NameMap) of
%%       error ->
%%          Id = xqldb_name_table:insert(?NAME_TABLE_P(DB), Key),
%%          {Id, NameMap#{Key => Id}};
%%       {ok,Id} ->
%%          {Id, NameMap}
%%    end.
%% 
%% 
%% %% TEXTS 
%% get_string_id(DB, {GlobalId, Value}, StringMap, _) ->
%%    DbId = xqldb_string_table:insert(?TEXT_TABLE_P(DB), Value),
%%    {DbId, StringMap#{GlobalId => DbId}};
%% get_string_id(_DB, GlobalId, StringMap, AttStringMap) ->
%%    if is_map_key(GlobalId, StringMap) ->
%%          {maps:get(GlobalId, StringMap), StringMap};
%%       true ->
%%          DbId = maps:get(GlobalId, AttStringMap),
%%          {DbId, StringMap#{GlobalId => DbId}}
%%    end.
%% 
%% %% ATTRIBUTE TEXTS 
%% get_attribute_string_id(DB, {GlobalId, Value}, AttStringMap, _) ->
%%    DbId = xqldb_string_table:insert(?TEXT_TABLE_P(DB), Value),
%%    {DbId, AttStringMap#{GlobalId => DbId}};
%% get_attribute_string_id(_DB, GlobalId, AttStringMap, StringMap) ->
%%    if is_map_key(GlobalId, AttStringMap) ->
%%          {maps:get(GlobalId, AttStringMap), AttStringMap};
%%       true ->
%%          DbId = maps:get(GlobalId, StringMap),
%%          {DbId, AttStringMap#{GlobalId => DbId}}
%%    end.
%% 
%% %% NAMESPACES 
%% get_uri(DB, Id) ->
%%    xqldb_namespace_table:lookup(?NMSP_TABLE_P(DB), Id).
%% 
%% %% NAMES 
%% % {{UriId, NameId}, NameMap1} = get_name_id(DB, QName, NameMap),
%% get_name_id(_DB, {UriId, LocalId}, NameMap) when is_integer(UriId),
%%                                                  is_integer(LocalId) ->
%%    LKey = {LocalId, 0},
%%    #{UriId := #{id := UId,
%%                 LKey := NmId}} = NameMap,
%%    {{UId, NmId}, NameMap};
%% get_name_id(_DB, {UriId, LocalId, PrefixId}, NameMap) 
%%   when is_integer(UriId),
%%        is_integer(LocalId),
%%        is_integer(PrefixId) ->
%%    LKey = {LocalId, PrefixId},
%%    #{UriId := #{id := UId,
%%                 LKey := NmId}} = NameMap,
%%    {{UId, NmId}, NameMap};
%% 
%% get_name_id(DB, {UriId, {LocalId, LocalVal}, PrefixId}, NameMap) 
%%   when is_integer(UriId),
%%        is_integer(LocalId),
%%        is_integer(PrefixId) ->
%%    #{id     := UId,
%%      prefix := #{PrefixId := PxVal},
%%      local  := LMap
%%      } = UMap = maps:get(UriId, NameMap),
%%    LMap1 = LMap#{LocalId => LocalVal},
%%    NameKey = {LocalVal, PxVal},
%%    NameId = xqldb_name_table:insert(?NAME_TABLE_P(DB), NameKey),
%%    LKey = {LocalId, PrefixId},
%%    NameMap1 = NameMap#{UriId := UMap#{local := LMap1,
%%                                       LKey => NameId}},
%%    {{UId, NameId}, NameMap1};
%% 
%% get_name_id(DB, {{UriId,UriVal}, {LocalId, LocalVal}, PrefixId}, NameMap) 
%%   when is_integer(UriId),
%%        is_integer(LocalId),
%%        is_integer(PrefixId) ->
%%    UId = xqldb_namespace_table:insert(?NMSP_TABLE_P(DB), UriVal),
%%    UMap = #{id     => UId,
%%             prefix => #{PrefixId => <<>>},
%%             local  => #{LocalId => LocalVal}
%%      },
%%    NameKey = {LocalVal, <<>>},
%%    NameId = xqldb_name_table:insert(?NAME_TABLE_P(DB), NameKey),
%%    LKey = {LocalId, PrefixId},
%%    NameMap1 = NameMap#{UriId => UMap#{LKey => NameId}},
%%    {{UId, NameId}, NameMap1};
%% 
%% get_name_id(_, GlobalId, Strings) ->
%%    maps:get(GlobalId, Strings).
%% 
%% initial_names(DB) ->
%%    Uri0 = xqldb_namespace_table:insert(?NMSP_TABLE_P(DB), <<>>),
%%    Uri1 = xqldb_namespace_table:insert(?NMSP_TABLE_P(DB), <<"http://www.w3.org/XML/1998/namespace">>),
%%    Uri2 = xqldb_namespace_table:insert(?NMSP_TABLE_P(DB), <<"http://www.w3.org/2001/XMLSchema-instance">>),
%%    #{0 => #{id => Uri0,
%%             prefix => #{0 => <<>>},
%%             local  => #{},
%%             {0,0}  => xqldb_name_table:insert(?NAME_TABLE_P(DB), {<<>>,<<>>})
%%            },
%%      1 => #{id => Uri1,
%%             prefix => #{0 => <<"xml">>},
%%             local  => #{0 => <<"base">>,
%%                         1 => <<"id">>,
%%                         2 => <<"lang">>,
%%                         3 => <<"space">>},
%%             {0,0} => xqldb_name_table:insert(?NAME_TABLE_P(DB), {<<"base">>,<<"xml">>}),
%%             {1,0} => xqldb_name_table:insert(?NAME_TABLE_P(DB), {<<"id">>,<<"xml">>}),
%%             {2,0} => xqldb_name_table:insert(?NAME_TABLE_P(DB), {<<"lang">>,<<"xml">>}),
%%             {3,0} => xqldb_name_table:insert(?NAME_TABLE_P(DB), {<<"space">>,<<"xml">>})
%%             },
%%      2 => #{id => Uri2,
%%             prefix => #{0 => <<"xsi">>},
%%             local  => #{0 => <<"nil">>,
%%                         1 => <<"type">>},
%%             {0,0} => xqldb_name_table:insert(?NAME_TABLE_P(DB), {<<"nil">>,<<"xsi">>}),
%%             {1,0} => xqldb_name_table:insert(?NAME_TABLE_P(DB), {<<"type">>,<<"xsi">>})
%%            }
%%     }.
%% 
%% complete_element({incomplete, Offset, NameId, UriId, HasNs, Atts}) ->
%%    Elem = xqldb_nodes:element(Offset,NameId,UriId,HasNs,length(Atts)),
%%    {Elem,Atts}.
%% 
%%    
%% 
%% 
%% 
