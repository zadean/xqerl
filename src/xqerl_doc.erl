%% -------------------------------------------------------------------
%%
%% xqerl - XQuery processor
%%
%% Copyright (c) 2017 Zachary N. Dean  All Rights Reserved.
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

%% @doc XML read/parsing to an internal document format. it's relatively small so it can be 
%%      saved to some data store. 
%% @NOTE currently uses xmerl as a parser, could also use erlsom or any other that has SAX. 
%% @IDEA XML parsing is about the slowest thing that can happen! Maybe an external parser
%%       could be used.  
%% @TODO Schema awareness. Typing of nodes is a cool feature!  

-module(xqerl_doc).

-export([read_file/2]).
-export([read_text/1]).
-export([read_file/3]).
-export([read_http/1]).
-export([read_http/2]).
-export([read_stream/2]).
-export([read_dir/2]).
-export([read_files/2]).
-export([doc_to_node/1]).

-include("xqerl.hrl").
%-include_lib("stdlib/include/qlc.hrl").
-define(at(T,V), #xqAtomicValue{type = T, value = V}).

-record(state, {filename,
                counter = 1,
                stack = [],
                add_in_element   = [],
                inscope_ns       = maps:new(),
                inscope_nsl      = [],
                children         = maps:new(),
                element_stack    = [],
                base_uri         = [],
                nodes            = maps:new(),
                texts            = maps:new(),
                names            = maps:new(),
                namsp            = maps:new(),
                att_types        = maps:new(),
                cdata_flag       = false
               }).

read_dir(Tab, Dir) ->
   {ok, FileList} = xqerl_file:rec_list_dir(Dir),
   read_files(Tab, FileList).

read_http(Uri0) ->
   read_http(Uri0,Uri0).

read_http(Uri0,Name) ->
   Uri = case lists:prefix("file:///", Uri0) of
             true ->
                lists:subtract(Uri0, "file:///");
             _ ->
                Uri0
          end,
   case filelib:is_file(Uri) of
      true ->
         read_file(self(), Uri, Name);
      _ ->
         case inets:services() of
            {error,inets_not_started} ->
               inets:start();
            _ ->
               ok
         end,
         Xml = case catch httpc:request(Uri) of
                  {ok,{{_,404,_},_Head,_Body}} ->
                     xqerl_error:error('FODC0002');
                  {ok,{_Stat,_Head,Body}} ->
                     Body;
                  {ok,{{_,404,_},_Body}} ->
                     xqerl_error:error('FODC0002');
                  {ok,{_Stat,Body}} ->
                     Body;
                  {error,no_scheme} ->
                     xqerl_error:error('FODC0002');
                  {'EXIT',_} ->
                     xqerl_error:error('FODC0002');
                  Other ->
                     ?dbg("Other",Other),
                     xqerl_error:error('FODC0002')
               end,
         %?dbg("XML",Xml),
         read_stream(Xml, Name)
   end.

read_text(Uri0) ->
   read_text(Uri0,Uri0).

read_text(Uri0,Name) ->
   Uri = case lists:prefix("file:///", Uri0) of
             true ->
                lists:subtract(Uri0, "file:///");
             _ ->
                Uri0
          end,
   case filelib:is_file(Uri) of
      true ->
         read_text_file(self(), Uri, Name);
      _ ->
         case inets:services() of
            {error,inets_not_started} ->
               inets:start();
            _ ->
               ok
         end,
         Xml = case catch httpc:request(Uri) of
                  {ok,{{_,404,_},_Head,_Body}} ->
                     xqerl_error:error('FOUT1170');
                  {ok,{_Stat,_Head,Body}} ->
                     list_to_binary(Body);
                  {ok,{{_,404,_},_Body}} ->
                     xqerl_error:error('FOUT1170');
                  {ok,{_Stat,Body}} ->
                     list_to_binary(Body);
                  {error,no_scheme} ->
                     xqerl_error:error('FOUT1170');
                  {'EXIT',_} ->
                     xqerl_error:error('FOUT1170');
                  Other ->
                     ?dbg("Other",Other),
                     xqerl_error:error('FOUT1170')
               end,
         Xml
   end.

read_text_file(_Pid, File,_) ->
   {ok, Txt} = file:read_file(File),
   Txt.

read_files(Tab, FileList) ->
   %process_flag(trap_exit, true),
   Lnkd = [spawn_link(?MODULE, read_file, [self(), File]) || File <- FileList],
   Wt = fun(P) ->
            receive 
               {P, X} ->
                  Fnm = maps:get(file, X),
                  ets:insert(Tab, {Fnm, X});
               {'EXIT', P, Reason} ->
                  exit({error, Reason})
            after 60000 ->
                exit({error,timeout})
            end
        end,
   lists:foreach(Wt, Lnkd).

read_file(_Pid, File) ->
   {ok, Xml} = file:read_file(File),
   read_stream(Xml, File).

read_file(_Pid, File, Uri) ->
   {ok, Xml} = file:read_file(File),
   read_stream(Xml, Uri).

%%    %{ok, State, _} = erlsom:parse_sax(Xml, #state{filename = File}, fun(A,C) -> handle_event(A,[],C) end),
%%    {ok, State, R} = xmerl_sax_parser:stream(Xml, [{event_fun, fun(A,B,C) -> handle_event(A,B,C) end }, {event_state, #state{filename = File}}]),
%%    ?dbg("R",R),
%%    Pid ! {self(),
%%           #{file  => File,
%%             nodes => map_to_tuple(State#state.nodes),
%%             texts => State#state.texts,
%%             names => add_kv_flip(State#state.names),
%%             namsp => add_kv_flip(State#state.namsp)}}.

read_stream(Xml, Name) ->
   read_stream(Xml, Name, #state{filename = Name}).

read_stream(Xml, Name, State) ->
   case xmerl_sax_parser:stream(Xml, [{event_fun, fun(A,B,C) -> handle_event(A,B,C) end },
                                      {event_state, State}]) of
      {ok, State1, R} ->
         %?dbg("read_stream R?",R), 
         case R of
            [] ->
               %?dbg("read_stream No Rest",R),
                #{file  => Name,
                  nodes => map_to_tuple(State1#state.nodes),
                  texts => State1#state.texts,
                  names => add_kv_flip(State1#state.names),
                  namsp => add_kv_flip(State1#state.namsp)};
            _ ->
               %?dbg("read_stream R",R),
               read_stream(R, Name, State1)
         end;
      {fatal_error,_Line, _Reason, _EndTags, State2} -> % trailing content in a document
         %?dbg("read_stream fatal_error",State2),
          #{file  => Name,
            nodes => map_to_tuple(State2#state.nodes),
            texts => State2#state.texts,
            names => add_kv_flip(State2#state.names),
            namsp => add_kv_flip(State2#state.namsp)}
   end.

%% map with position => node
map_to_tuple(Map) ->
   A1 = array:new(),
   A2 = maps:fold(fun(K, V, AccIn) ->
                   array:set(K, V, AccIn)
             end, A1, Map),
   [undefined|L1] = array:to_list(A2),
   list_to_tuple(L1).


   


-record(nodes, {id, tp, sz = 0, par = 0, qn = [], ns = [], att = [], chld = [], val = "", bu = ""}).

handle_event(startDocument, _Ln, #state{counter = C, 
                                        namsp = AlNs, 
                                        inscope_ns = IsNs, 
                                        children = Children, 
                                        nodes = NodeTab,
                                        filename = FileName} = State) -> 
   case maps:size(Children)  of
      0 ->
         %?dbg("startDocument",Ln),
         XmlNs = {"http://www.w3.org/XML/1998/namespace", "xml"},
         NoNs  = {'no-namespace', ""},
         Record = #nodes{id = C, tp = xqerl_node:node_type(document), bu = FileName},
         NewIsNs = maps:put("", 1, maps:put("xml", 0, IsNs)), 
         State#state{counter = C + 1, 
                     namsp = maps:put(NoNs, 1, maps:put(XmlNs, 0, AlNs)), 
                     inscope_ns = NewIsNs, 
                     inscope_nsl = inscope_namespaces(NewIsNs),
                     stack = [C], 
                     base_uri = FileName,
                     children = maps:put(C, [], Children),
                     element_stack = [Record]};
      _ -> % more in doc
         %?dbg("startDocument More",Ln),
         Record = denorm({1, maps:get(1, NodeTab)}), % doc node back to record
         %?dbg("startDocument Record",Record),
         State#state{counter = C, 
                     stack = [1], 
                     children = Children,
                     element_stack = [Record]}
   end;

handle_event(endDocument, _Ln, #state{stack = [H|S], 
                               children = Children,
                               counter = C,
                               element_stack = [Record|ElemStk],
                               nodes = NodeTab
                               } = State) -> 
   %?dbg("endDocument",Ln),
   %?dbg("endDocument stack",[H|S]),
   %?dbg("endDocument element_stack",[Record|ElemStk]),
   %?dbg("endDocument counter",C),
   %?dbg("endDocument children",Children),
   ChildList = maps:get(H, Children),
   %?dbg("endDocument ChildList",ChildList),
   NewRec = Record#nodes{sz = C - 2, chld = ChildList},
   %?dbg("endDocument NewRec",NewRec),
   {K,V} = norm(NewRec),
   %?dbg("endDocument {K,V}",{K,V}),
   NodeTab1 = maps:put(K, V, NodeTab),
   %?dbg("endDocument NodeTab1",NodeTab1),
   NewState = State#state{stack = [H|S], counter = C, element_stack = ElemStk, children = Children, nodes = NodeTab1},
   %?dbg("endDocument NewState",NewState),
   NewState;

handle_event({startPrefixMapping, Prefix1, Uri1}, _Ln, #state{add_in_element = Td, 
                                                     namsp = AlNs, 
                                                     inscope_ns = IsNs} = State) -> 
%%    Prefix1 = list_to_binary(Prefix),
%%    Uri1    = list_to_atom(Uri),
   NsKey   = {Uri1, Prefix1},
   {NsId, NewNs} = case maps:is_key(NsKey, AlNs) of 
                      true ->
                         {maps:get(NsKey, AlNs), AlNs};
                      _ ->
                         Nss = maps:size(AlNs),
                         {Nss, maps:put(NsKey, Nss, AlNs)}
                   end,
   NewIsNs = case maps:is_key(Prefix1, IsNs) of 
                 true ->
                    Stk = maps:get(Prefix1, IsNs),
                    maps:put(Prefix1, [NsId|Stk], IsNs);
                 _ ->
                    maps:put(Prefix1, [NsId], IsNs)
              end,
   Node = #nodes{ns = NsId, tp = xqerl_node:node_type(namespace)},
   State#state{add_in_element = [Node|Td], 
               namsp = NewNs, 
               inscope_ns = NewIsNs,
               inscope_nsl = inscope_namespaces(NewIsNs)
};

handle_event({endPrefixMapping, Prefix1}, _Ln, #state{inscope_ns = IsNs} = State) ->
   %Prefix1 = list_to_binary(Prefix),
   [_|Val] = maps:get(Prefix1, IsNs),
   NewIsNs = case Val of 
                [] ->
                   maps:remove(Prefix1, IsNs);
                _ ->
                   maps:put(Prefix1, Val, IsNs)
             end,
   State#state{inscope_ns = NewIsNs,
               inscope_nsl = inscope_namespaces(NewIsNs)};

handle_event({startElement, Uri, LocalName, QualifiedName, Attributes}, _Ln, #state{add_in_element = A,
                                                                                    counter = C, 
                                                                                    stack = S, 
                                                                                    inscope_nsl = InsL,
                                                                                    children = Children, 
                                                                                    element_stack = ElemStk,
                                                                                    %base_uri = BaseUri,
                                                                                    %nodes = NodeTab,
                                                                                    att_types = AttTypeMap} = State) ->
   ElemId = C,
   {ElemPx,_} = QualifiedName,
   Uri1 = case Uri of [] -> 'no-namespace'; UriNsT -> UriNsT end,
   % first any namespaces
   AddNs = fun(Ns, #state{counter = C1, nodes = NodeTab0} = St) ->
                 C2 = C1 + 1,
                 NsNd = Ns#nodes{id = C2, par = ElemId},
                 {K,V} = norm(NsNd),
                 NodeTab1 = maps:put(K, V, NodeTab0),
                 St#state{counter = C2, nodes = NodeTab1}
           end,
   State1 = lists:foldl(AddNs, State, A),
   #state{counter = C3} = State1,
   % next any attributes
   % #attribute{localName, prefix = [], uri = [], value} % erlsom
   % AddAt = fun({attribute,Ln,_Px,Ns,Val} = _At, #state{counter = C1, names = QNames1, nodes = NodeTab1} = St) ->
   AddAt = fun({Ns,Px,Ln,Val} = _At, #state{counter = C1, names = QNames1, nodes = NodeTab1, base_uri = BU1} = St) ->
                 Ns1 = case Ns of [] -> 'no-namespace'; NsT -> NsT end,
                 {Qid, QNames2} = get_qname_id(Ns1,Px,Ln,QNames1),
                 C2 = C1 + 1,
                 BU2 = if Px == "xml" andalso Ln == "base" ->
                           Val;
                          true -> BU1
                       end,
                 TypedVal = get_typed_att_value(LocalName, Px, Ln, Val, AttTypeMap),
                 AtNd = #nodes{id = C2, tp = xqerl_node:node_type(attribute), par = ElemId, qn = Qid, val = TypedVal},
                 {K,V} = norm(AtNd),
                 NodeTab2 = maps:put(K, V, NodeTab1),
                 St#state{counter = C2, names = QNames2, nodes = NodeTab2, base_uri = BU2}
           end,
   #state{counter = C4, names = QNames3, nodes = NodeTab2, base_uri = BaseUri3} = State2 = lists:foldl(AddAt, State1, Attributes),
   Parent = hd(S),
   {EQid, QNames4} = get_qname_id(Uri1,ElemPx,LocalName,QNames3),
   Record = #nodes{id = ElemId, 
                   tp = xqerl_node:node_type(element), 
                   par = Parent, 
                   qn = EQid, 
                   ns = InsL,
                   bu = BaseUri3,
                   att = [L||L<-lists:seq(C3+1,C4)]},
   Ch = maps:get(Parent, Children),
   %Children1 = maps:put(Parent, [{ElemId, 0}|Ch], Children),
   Children1 = maps:put(Parent, [ElemId|Ch], Children),
   State2#state{counter = C4 + 1, 
                stack = [ElemId|S], 
                add_in_element = [], 
                children = maps:put(ElemId, [L||L<-lists:seq(C+1,C3)], Children1),
                names = QNames4,
                element_stack = [Record|ElemStk],
                nodes = NodeTab2};

handle_event({endElement, _Uri, _LocalName, _QualifiedName}, _Ln, #state{stack = [H|S], 
                                                                  children = Children, 
                                                                  counter = C,
                                                                  element_stack = [Record|ElemStk],
                                                                  nodes = NodeTab} = State) -> 
   Id = Record#nodes.id,
   ChildList = maps:get(H, Children),
   NewRec = Record#nodes{chld = ChildList, sz = (C - Id - 1)},
   {K,V} = norm(NewRec),
   NodeTab1 = maps:put(K, V, NodeTab),
   State#state{stack = S, element_stack = ElemStk, children = maps:remove(H, Children), nodes = NodeTab1};

handle_event({characters, String}, _Ln, #state{counter = C, 
                                        children = Children, 
                                        stack = S,
                                        nodes = NodeTab,
                                        texts = TextTab,
                                        cdata_flag = Flag} = State) ->
   Parent = hd(S),
   Ch = maps:get(Parent, Children),
   %Children1 = maps:put(Parent, [{C,2}|Ch], Children),
   Children1 = maps:put(Parent, [C|Ch], Children),
   Record = #nodes{id = C, 
                   tp = xqerl_node:node_type(text), 
                   par = Parent,
                   val = C},
   String1 = if Flag ->
                   String;
                true ->
                   case string:trim(String) of
                      [] ->
                         " ";
                      _ ->
                         String
                   end
             end,
   TextTab1 = maps:put(C, ?at('xs:string', String1), TextTab),
   {K,V} = norm(Record),
   NodeTab1 = maps:put(K, V, NodeTab),
   State#state{counter = C +1, children = Children1, texts = TextTab1, nodes = NodeTab1};   

% TODO not sure if this should happen
handle_event({ignorableWhitespace, _String}, _Ln, State) -> %State;
   handle_event({characters, " "}, _Ln, State);

handle_event({processingInstruction, "xml", _Data}, _Ln, State) -> State;
handle_event({processingInstruction, Target, Data}, _Ln, #state{counter = C, 
                                                         children = Children, 
                                                         names = QNames,
                                                         stack = S,
                                                         nodes = NodeTab} = State) -> 
   %?dbg("processingInstruction",Ln),
   Parent = hd(S),
   Ch = maps:get(Parent, Children),
   %Children1 = maps:put(Parent, [{C,6}|Ch], Children),
   Children1 = maps:put(Parent, [C|Ch], Children),
   {Qid, QNames2} = get_qname_id('no-namespace',[],Target,QNames),
   Record = #nodes{id = C, tp = xqerl_node:node_type('processing-instruction'), par = Parent, qn = Qid, val = ?at('xs:string', Data)},
   {K,V} = norm(Record),
   NodeTab1 = maps:put(K, V, NodeTab),
   State#state{counter = C +1, children = Children1, names = QNames2, nodes = NodeTab1};   

handle_event({comment, String}, _Ln, #state{counter = C, 
                                     children = Children, 
                                     stack = S,
                                     nodes = NodeTab,
                                     texts = TextTab} = State) -> 
   %?dbg("comment",Ln),
   Parent = hd(S),
   %?dbg("comment State",State),
   Ch = maps:get(Parent, Children),
   %Children1 = maps:put(Parent, [{C,5}|Ch], Children),
   Children1 = maps:put(Parent, [C|Ch], Children),
   Record = #nodes{id = C, tp = xqerl_node:node_type(comment), par = Parent, val = C},
   TextTab1 = maps:put(C, ?at('xs:string', String), TextTab),
   {K,V} = norm(Record),
   NodeTab1 = maps:put(K, V, NodeTab),
   State#state{counter = C +1, children = Children1, texts = TextTab1, nodes = NodeTab1};   

handle_event(startCDATA, _Ln, State) -> State#state{cdata_flag = true};
handle_event(endCDATA, _Ln, State) -> State#state{cdata_flag = false};

handle_event({startDTD, _Name, _PublicId, _SystemId}, _Ln, State) -> State;
handle_event(endDTD, _Ln, State) -> State;
handle_event({startEntity, _SysId}, _Ln, State) -> State;
handle_event({endEntity, _SysId}, _Ln, State) -> State;
handle_event({elementDecl, _Name, _Model}, _Ln, State) -> State;
handle_event({attributeDecl, ElementName, AttributeName, Type, _Mode, _Value}, _Ln, #state{att_types = AttTypeMap} = State) -> 
   % expecting only local names for attribute types (namespaces in DTDs ?)
   AttTypeMap1 = maps:put({ElementName, AttributeName}, list_to_atom("xs:"++Type), AttTypeMap),
   State#state{att_types = AttTypeMap1};
handle_event({internalEntityDecl, _Name, _Value}, _Ln, State) -> State;
handle_event({externalEntityDecl, _Name, _PublicId, _SystemId}, _Ln, State) -> State;
handle_event({unparsedEntityDecl, _Name, _PublicId, _SystemId, _Ndata}, _Ln, State) -> State;
handle_event({notationDecl, _Name, _PublicId, _SystemId}, _Ln, State) -> State;

handle_event(Event, _Ln, State) -> 
   ?dbg("Event?",Event),
   ?dbg("State?",State),
   State.

get_typed_att_value(ElemName, AttPrefix, AttName, AttVal, AttTypeMap) ->
   if AttPrefix == "xml" andalso AttName == "id" -> ?at('xs:ID',AttVal);
      AttPrefix == "xml" andalso AttName == "lang" -> ?at('xs:language',AttVal);
      true ->
         case maps:find({ElemName, AttName}, AttTypeMap) of
            error ->
               ?at('xs:untypedAtomic',AttVal);
            {ok, Value} ->
               ?at(Value,AttVal)
         end
   end.

inscope_namespaces(Dict) ->
   [case is_list(L) of 
       true ->
          hd(L);
       _ ->
          L
    end || 
    L <- maps:values(Dict)].

get_qname_id(Ns,Px,Ln,List) ->
   case maps:find({Ns,Px,Ln}, List) of
      {ok, Id} ->
         {Id,List};
      error ->
         Cnt = maps:size(List),
         {Cnt, maps:put({Ns,Px,Ln}, Cnt, List)}
   end.


%% node_type(element)                  -> 0;
%% node_type(attribute)                -> 1;
%% node_type(text)                     -> 2;
%% node_type(namespace)                -> 3;
%% node_type(document)                 -> 4;
%% node_type(comment)                  -> 5;
%% node_type('processing-instruction') -> 6;

norm(#nodes{id = I, tp = 0, sz = S, par = P, qn = Q, ns = N, att = A, chld = C, val = _V, bu = B}) ->
   {I, {0, S, P, Q, N, A, C, B}};
norm(#nodes{id = I, tp = 1, sz = _S, par = P, qn = Q, ns = _N, att = _A, chld = _C, val = V}) ->
   {I, {1, P, Q, V}};
norm(#nodes{id = I, tp = 2, sz = _S, par = P, qn = _Q, ns = _N, att = _A, chld = _C, val = V}) ->
   {I, {2, P, V}};
norm(#nodes{id = I, tp = 3, sz = _S, par = P, qn = _Q, ns = N, att = _A, chld = _C, val = _V}) ->
   {I, {3, P, N}};
norm(#nodes{id = I, tp = 4, sz = S, par = _P, qn = _Q, ns = _N, att = _A, chld = C, val = _V, bu = B}) ->
   {I, {4, S, C, B}};
norm(#nodes{id = I, tp = 5, sz = _S, par = P, qn = _Q, ns = _N, att = _A, chld = _C, val = V}) ->
   {I, {5, P, V}};
norm(#nodes{id = I, tp = 6, sz = _S, par = P, qn = Q, ns = _N, att = _A, chld = _C, val = V}) ->
   {I, {6, P, Q, V}}.

denorm({I, {4, S, C, B}}) ->
   #nodes{id = I, tp = 4, sz = S, chld = C, bu = B}.


add_kv_flip(Map) ->
   maps:fold(fun(K,V,A) ->
                maps:put(V, K, A)   
             end, Map, Map).

doc_to_node(Doc) ->
   Uri            = maps:get(file,  Doc),
   NamesMap       = maps:get(names, Doc),
   NamespaceMap   = maps:get(namsp, Doc),
   NodeTup        = maps:get(nodes, Doc),
   TextMap        = maps:get(texts, Doc),
   
   Size = tuple_size(NodeTup),
   FragTree = gb_trees:empty(),
   FragTree1 = gb_trees:enter(0, #xqXmlFragment{identity = 0, 
                                                document_uri = Uri, 
                                                children = [1],
                                                desc_count = Size - 1}, FragTree),   
   FilledFrag = lists:foldl(fun(Idx,Tree) ->
                                  Node = element(Idx, NodeTup),
                                  Typed = to_typed_node(Idx, Node, NamesMap, NamespaceMap, TextMap),
                                  gb_trees:enter(Idx, Typed, Tree)
                            end, FragTree1, lists:seq(1, Size)),
   _ = xqerl_context:add_available_document(Uri, FilledFrag),
   #xqNode{frag_id = Uri, identity = 1 }.

%% node_type(element)                  -> 0;
%% node_type(attribute)                -> 1;
%% node_type(text)                     -> 2;
%% node_type(namespace)                -> 3;
%% node_type(document)                 -> 4;
%% node_type(comment)                  -> 5;
%% node_type('processing-instruction') -> 6;

to_typed_node(I, {0, S, P, Q, N, A, C, B}, NamesMap, NamespaceMap, _TextMap) ->
   {Uri,Px,Loc} = maps:get(Q, NamesMap),
   QName = #qname{namespace = Uri, prefix = Px, local_name = Loc},
   IsNs = lists:map(fun(Nid) ->
                          {X,Prx} = maps:get(Nid, NamespaceMap),
                          #xqNamespace{namespace = X, prefix = Prx}
                    end, N),
   #xqElementNode{identity = I,
                  desc_count = S,
                  parent_node = P,
                  name = QName,
                  inscope_ns = IsNs,
                  base_uri = ?at('xs:anyURI',B),
                  children = A ++ C};
                  %children = N ++ A ++ C};
to_typed_node(I, {1, P, Q, V}, NamesMap, _NamespaceMap, _TextMap) ->
   {Uri,Px,Loc} = maps:get(Q, NamesMap),
   QName = #qname{namespace = Uri, prefix = Px, local_name = Loc},
   #xqAttributeNode{identity = I,
                    parent_node = P,
                    name = QName,
                    expr = V
                    };
to_typed_node(I, {2, P, V}, _NamesMap, _NamespaceMap, TextMap) ->
   #xqTextNode{identity = I,
               parent_node = P,
               expr = maps:get(V, TextMap)};
to_typed_node(I, {3, P, N}, _NamesMap, NamespaceMap, _TextMap) ->
   {Uri,Pre} = maps:get(N, NamespaceMap),
   QName = #qname{namespace = Uri, prefix = Pre},
   #xqNamespaceNode{identity = I,
                    parent_node = P,
                    name = QName};
to_typed_node(I, {4, S, C, B}, _NamesMap, _NamespaceMap, _TextMap) ->
   #xqDocumentNode{identity = I,
                   desc_count = S,
                   base_uri = ?at('xs:anyURI',B),
                   children = C};
to_typed_node(I, {5, P, V}, _NamesMap, _NamespaceMap, TextMap) ->
   #xqCommentNode{identity = I,
                  parent_node = P,
                  expr = maps:get(V, TextMap)};
to_typed_node(I, {6, P, Q, V}, NamesMap, _NamespaceMap, _TextMap) ->
   {Uri,Px,Loc} = maps:get(Q, NamesMap),
   QName = #qname{namespace = Uri, prefix = Px, local_name = Loc},
   #xqProcessingInstructionNode{identity = I,
                                parent_node = P,
                                name = QName,
                                expr = V}.

