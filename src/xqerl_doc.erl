%% -------------------------------------------------------------------
%%
%% xqerl - XQuery processor
%%
%% Copyright (c) 2017-2018 Zachary N. Dean  All Rights Reserved.
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

%-export([read_file/1]).

-export([read_file/2]).
-export([read_text/2]).
-export([read_file/3]).
-export([read_http/1]).
-export([read_http/2]).
-export([read_stream/2]).
-export([read_dir/1]).
-export([read_files/1]).

-export([retrieve_doc/1]).
-export([retrieve_collection/1]).
-export([exists_doc/1]).

-export([doc_to_xqnode_doc/1]).

-include("xqerl.hrl").
-define(at(T,V), #xqAtomicValue{type = T, value = V}).

-record(state, {filename,
                counter = 1,
                stack = [],
                add_in_element   = [],
                inscope_ns       = maps:new(),
                element_stack    = [],
                base_uri         = [],
                nodes            = maps:new(),
                texts            = maps:new(),
                names            = maps:new(),
                namsp            = maps:new(),
                att_types        = maps:new(),
                cdata_flag       = false
               }).

read_dir(Dir) ->
   {ok, FileList} = xqerl_file:rec_list_dir(Dir),
   read_files(FileList).

read_http(Uri0) ->
   Uri = xqerl_lib:resolve_against_base_uri("file:///", Uri0),
   read_http(Uri,Uri).

read_http(Uri,Name) ->
   case xqerl_file:read_uri(Uri) of
      {ok,Str} ->
         Doc = read_stream(Str, Name),
         ?dbg("{Uri,Name}",{Uri,Name}),
         _ = store_doc(Name, Doc),
         ok;
      _ ->
         ?err('FODC0002')
   end.

%%    Uri = case lists:prefix("file://", Uri0) of
%%              true ->
%%                 lists:subtract(Uri0, "file://");
%%              _ ->
%%                 Uri0
%%           end,
%%    case filelib:is_file(Uri) of
%%       true ->
%%          read_file(self(), Uri, Name);
%%       _ ->
%%          case inets:services() of
%%             {error,inets_not_started} ->
%%                inets:start();
%%             _ ->
%%                ok
%%          end,
%%          Xml = case catch httpc:request(Uri) of
%%                   {ok,{{_,404,_},_Head,_Body}} ->
%%                      xqerl_error:error('FODC0002');
%%                   {ok,{_Stat,_Head,Body}} ->
%%                      Body;
%%                   {ok,{{_,404,_},_Body}} ->
%%                      xqerl_error:error('FODC0002');
%%                   {ok,{_Stat,Body}} ->
%%                      Body;
%%                   {error,no_scheme} ->
%%                      xqerl_error:error('FODC0002');
%%                   {'EXIT',_} ->
%%                      xqerl_error:error('FODC0002');
%%                   Other ->
%%                      ?dbg("Other",Other),
%%                      xqerl_error:error('FODC0002')
%%                end,
%%          Doc = read_stream(Xml, Name),
%%          _ = store_doc(Uri, Doc),
%%          ok
%%    end.

%% read_text(Uri0) ->
%%    read_text(Uri0,Uri0).

read_text(Uri0,Name) ->
   Uri = case lists:prefix("file://", Uri0) of
             true ->
                lists:subtract(Uri0, "file://");
             _ ->
                Uri0
          end,
   case filelib:is_file(Uri) of
      true ->
         read_text_file(Uri, Name);
      _ ->
         {error, Uri, Name}
   end.

read_text_file(File, Uri) ->
   {ok, Txt} = file:read_file(File),
   D = xqerl_ds:insert_res(Uri, Txt),
   ?dbg("D",D),
   ok.

read_files(FileList) ->
   %process_flag(trap_exit, true),
   Lnkd = [spawn_link(?MODULE, read_file, [self(), File]) || File <- FileList],
   ?dbg("Lnkd",Lnkd),
   ?dbg("FileList",FileList),
   Wt = fun(P) ->
            receive 
               {P, _X} ->
                  %Fnm = maps:get(file, X),
                  %ets:insert(Tab, {Fnm, X});
                  ok;
               {'EXIT', P, Reason} ->
                  exit({error, Reason})
            after 60000 ->
                exit({error,timeout})
            end
        end,
   lists:foreach(Wt, Lnkd).

read_file(Pid, File) ->
   {ok, Xml} = file:read_file(File),
   Doc = read_stream(Xml, File),
   _ = store_doc(File, Doc),
   Pid ! {self(),ok}.

read_file(Pid, File, Uri) ->
   {ok, Xml} = file:read_file(File),
   Doc = read_stream(Xml, Uri),
   _ = store_doc(Uri, Doc),
   Pid ! {self(),ok}.

read_stream(Xml, Name) ->
   read_stream(Xml, Name, #state{filename = Name}).

read_stream(Xml, Name, State) ->
   %?dbg("IntName",IntName),
   %?dbg("CurrLoc",CurrLoc),
   case catch xmerl_sax_parser:stream(Xml, [{current_location, Name},
                                            {event_fun, fun(A,B,C) -> handle_event(A,B,C) end },
                                            {event_state, State}]) of
      {ok, State1, R} ->
         case R of
            [] ->
                #{file  => Name,
                  base  => Name,
                  nodes => map_to_bin(State1#state.nodes),
                  texts => State1#state.texts,
                  names => State1#state.names,
                  namsp => State1#state.namsp,
                  att_types => State1#state.att_types};
            _ ->
               read_stream(R, Name, State1)
         end;
      {fatal_error,_Line, Reason, _EndTags, State2} -> % trailing content in a document
         ?dbg("Reason",Reason),
         case maps:size(State2#state.nodes) of
            1 -> % invalid document
               {error,Reason};
            _ ->
               %?dbg("State2",State2),
                #{file  => Name,
                  base  => Name,
                  nodes => map_to_bin(State2#state.nodes),
                  texts => State2#state.texts,
                  names => State2#state.names,
                  namsp => State2#state.namsp,
                  att_types => State2#state.att_types}
         end;
      Other ->
         ?dbg("Other",Other),
         {error,Other}
   end.

-record(nodes, {id = -1, tp = -1, atsz = 0, sz = 0, dst = 0, ln = 0, ns = 0, val = 0}).

handle_event(startDocument, _Ln, #state{counter = C, 
                                        inscope_ns = IsNs, 
                                        filename = FileName} = State) -> 
   ?dbg("startDocument",_Ln),
   if C == 1 ->
         Record = #nodes{id = C, tp = document},
         NewIsNs = IsNs#{[] => 1,
                         "xml" => 2},
         State#state{counter = C + 1, 
                     namsp = #{'no-namespace' => 1,
                               "http://www.w3.org/XML/1998/namespace" => 2}, 
                     inscope_ns = NewIsNs, 
                     stack = [C], 
                     base_uri = FileName,
                     element_stack = [Record]};
      true -> % more in doc
         Record = #nodes{id = 1, tp = document},
         State#state{counter = C, 
                     stack = [1], 
                     element_stack = [Record]}
   end;

handle_event(endDocument, _Ln, #state{element_stack = []} = State) -> 
   ?dbg("endDocument",_Ln),
   State; % empty document
handle_event(endDocument, _Ln, #state{counter = C,
                                      element_stack = [Record|ElemStk]} = State) -> 
   ?dbg("endDocument",_Ln),
   NewRec = Record#nodes{sz = C - 2},
   State1 = add_node(State, NewRec),
   State1#state{counter = C, element_stack = ElemStk};

handle_event({startPrefixMapping, Prefix, Uri}, _Ln, #state{add_in_element = Td, 
                                                            inscope_ns = IsNs} = State) -> 
   {NsId,State1} = get_namespace_id(State, Uri),
   {LnId,State2} = get_local_name_id(State1, Prefix),
   Node = #nodes{ln = LnId, ns = NsId, tp = namespace},
   
   NewIsNs = case maps:is_key(Prefix, IsNs) of 
                 true ->
                    Stk = maps:get(Prefix, IsNs),
                    maps:put(Prefix, [NsId|Stk], IsNs);
                 _ ->
                    maps:put(Prefix, [NsId], IsNs)
              end,
   State2#state{add_in_element = [Node|Td], 
                inscope_ns = NewIsNs};

handle_event({endPrefixMapping, Prefix}, _Ln, #state{inscope_ns = IsNs} = State) ->
   [_|Val] = maps:get(Prefix, IsNs),
   NewIsNs = case Val of 
                [] ->
                   maps:remove(Prefix, IsNs);
                _ ->
                   maps:put(Prefix, Val, IsNs)
             end,
   State#state{inscope_ns = NewIsNs};

handle_event({startElement, Uri, LocalName, {Prefix,_}, Attributes}, _Ln, #state{add_in_element = A,
                                                                                 att_types = AttTypes,
                                                                                 counter = C, 
                                                                                 stack = [P|_] = S, 
                                                                                 element_stack = ElemStk} = State) ->
   Uri1 = if Uri == [], Prefix == [] -> 
                'no-namespace'; 
             Uri == [] -> 
                throw({error,unknown_namespace}); 
             true -> Uri 
          end,
   % first any namespaces
   AddNs = fun(Ns, #state{counter = C1} = St) ->
                 C2 = C1 + 1,
                 NsNd = Ns#nodes{id = C2, dst = C2 - C},
                 St1 = add_node(St, NsNd),
                 St1#state{counter = C2}
           end,
   State1 = lists:foldl(AddNs, State, A),
   % next any attributes
   % #attribute{localName, prefix = [], uri = [], value} % erlsom
   % AddAt = fun({attribute,Ln,_Px,Ns,Val} = _At, #state{counter = C1, names = QNames1, nodes = NodeTab1} = St) ->
   AddAt = fun({Ns,_Px,Ln,Val} = _At, #state{counter = C1} = St) ->
                 Ns1 = if Ns == [] -> 'no-namespace'; true -> Ns end,
                 C2 = C1 + 1,
                 {LnId, St1} = get_local_name_id(St, Ln),
                 {NsId, St2} = get_namespace_id(St1, Ns1),
                 {TxId, St3} = get_text_id(St2, Val),
                 AttType = case maps:find({LocalName,Ln}, AttTypes) of
                              {ok,'xs:ID'} -> 1;
                              {ok,'xs:IDREF'} -> 2;
                              {ok,'xs:IDREFS'} -> 2;
                              _ -> 0
                           end,
                 AtNd = #nodes{atsz = AttType, id = C2, dst = C2 - C, tp = attribute, ln = LnId, ns = NsId, val = TxId},
                 St4 = add_node(St3, AtNd),
                 St4#state{counter = C2}
           end,
   #state{counter = C4} = State2 = lists:foldl(AddAt, State1, Attributes),
   {LocalNameId, State3} = get_local_name_id(State2, LocalName),
   State4 = if Prefix == [] -> 
                  State3;
               true -> 
                  {_,State_4} = get_local_name_id(State3, Prefix),
                  State_4
            end,
   {UriId, State5} = get_namespace_id(State4, Uri1),
   
   Record = #nodes{id = C, 
                   tp = element,
                   dst = C - P, 
                   ln = LocalNameId, 
                   ns = UriId,
                   atsz = C4 - C},
   State5#state{counter = C4 + 1, 
                stack = [C|S], 
                add_in_element = [], 
                element_stack = [Record|ElemStk]};

handle_event({endElement, _Uri, _LocalName, _QualifiedName}, _Ln, #state{stack = [_H|S], 
                                                                  counter = C,
                                                                  element_stack = [Record|ElemStk]} = State) -> 
   Id = Record#nodes.id,
   NewRec = Record#nodes{sz = (C - Id - 1)},
   State1 = add_node(State, NewRec),
   State1#state{stack = S, element_stack = ElemStk};

handle_event({characters, String}, _Ln, #state{counter = C, 
                                               stack = [P|_],
                                               cdata_flag = Flag} = State) ->
   Val1 = if Flag ->
                String;
             true ->
                %case string:trim(String) of
                %   [] ->
                %      " ";
                %   _ ->
                      String
                %end
          end,
   {TxId, State1} = get_text_id(State, Val1),
   Record = #nodes{id = C, 
                   tp = text, 
                   dst = C - P,
                   val = TxId},
   State2 = add_node(State1, Record),
   State2#state{counter = C +1};   

%% % TODO not sure if this should happen
%% handle_event({ignorableWhitespace, _String}, _Ln, State) -> %State;
%%    handle_event({characters, " "}, _Ln, State);
% TODO not sure if this should happen
handle_event({ignorableWhitespace, String}, _Ln, State) -> %State;
   handle_event({characters, String}, _Ln, State);

% ignore the xml PI if any
handle_event({processingInstruction, "xml", _Data}, _Ln, State) -> State;
handle_event({processingInstruction, Target, Data}, _Ln, #state{counter = C, 
                                                                stack = [P|_]} = State) -> 
   {LnId, State1} = get_local_name_id(State, Target),
   {TxId, State2} = get_text_id(State1, Data),
   {NsId, State3} = get_namespace_id(State2, 'no-namespace'),
   Record = #nodes{id = C, 
                   tp = 'processing-instruction',
                   dst = C - P,
                   ln = LnId,
                   ns = NsId,
                   val = TxId},
   State4 = add_node(State3, Record),
   State4#state{counter = C +1};   

handle_event({comment, String}, _Ln, #state{counter = C,
                                            stack = [P|_]} = State) -> 
   {TxId, State1} = get_text_id(State, String),
   Record = #nodes{id = C, 
                   tp = comment,
                   dst = C - P, 
                   val = TxId},
   State2 = add_node(State1, Record),
   State2#state{counter = C + 1};   

handle_event(startCDATA, _Ln, State) -> State#state{cdata_flag = true};
handle_event(endCDATA, _Ln, State) -> State#state{cdata_flag = false};

handle_event({attributeDecl, ElementName, AttributeName, Type, _Mode, _Value}, _Ln, #state{att_types = AttTypeMap} = State) -> 
   % expecting only local names for attribute types (namespaces in DTDs ?)
   AttTypeMap1 = maps:put({ElementName, AttributeName}, list_to_atom("xs:"++Type), AttTypeMap),
   ?dbg("AttTypeMap1",AttTypeMap1),
   State#state{att_types = AttTypeMap1};

%% handle_event({startDTD, _Name, _PublicId, _SystemId}, _Ln, State) -> State;
%% handle_event(endDTD, _Ln, State) -> State;
%% handle_event({startEntity, _SysId}, _Ln, State) -> State;
%% handle_event({endEntity, _SysId}, _Ln, State) -> State;
%% handle_event({elementDecl, _Name, _Model}, _Ln, State) -> State;
%% handle_event({internalEntityDecl, _Name, _Value}, _Ln, State) -> State;
%% handle_event({externalEntityDecl, _Name, _PublicId, _SystemId}, _Ln, State) -> State;
%% handle_event({unparsedEntityDecl, _Name, _PublicId, _SystemId, _Ndata}, _Ln, State) -> State;
%% handle_event({notationDecl, _Name, _PublicId, _SystemId}, _Ln, State) -> State;

handle_event(Event, _Ln, State) -> 
   ?dbg(Event,_Ln),
   %?dbg("State?",State),
   State.

get_local_name_id(#state{names = Names} = State, Val) ->
   case maps:find(Val, Names) of
      {ok, Id} ->
         {Id,State};
      error ->
         Cnt = maps:size(Names) + 1,
         NewNames = maps:put(Val, Cnt, Names),
         {Cnt, State#state{names = NewNames}}
   end.

get_namespace_id(#state{namsp = Names} = State, Val) ->
   case maps:find(Val, Names) of
      {ok, Id} ->
         {Id,State};
      error ->
         Cnt = maps:size(Names) + 1,
         NewNames = maps:put(Val, Cnt, Names),
         {Cnt, State#state{namsp = NewNames}}
   end.

get_text_id(#state{texts = Names} = State, Val) ->
   case maps:find(Val, Names) of
      {ok, Id} ->
         {Id,State};
      error ->
         Cnt = maps:size(Names) + 1,
         NewNames = maps:put(Val, Cnt, Names),
         {Cnt, State#state{texts = NewNames}}
   end.

%% -record(nodes, {id = -1, tp = -1, atsz = 0, sz = 0, dst = 0, ln = 0, ns = 0, val = 0}).

norm(#nodes{id = I, tp = document, sz = S}) ->
   xqerl_xdm:document_node(S, I);
norm(#nodes{id = I, tp = element,atsz = As, sz = S, dst = D, ln = L, ns = N}) ->
   xqerl_xdm:element_node(As, N, L, D, S, I);
norm(#nodes{id = I, tp = text, dst = D, val = V}) ->
   xqerl_xdm:text_node(V, D, I);
norm(#nodes{atsz = F, id = I, tp = attribute, dst = D, ln = L, ns = N, val = V}) ->
   xqerl_xdm:attribute_node(N, L, V, F, D, I);
norm(#nodes{id = I, tp = comment, dst = D, val = V}) ->
   xqerl_xdm:comment_node(V, D, I);
norm(#nodes{id = I, tp = 'processing-instruction', dst = D, ln = L, val = V, ns = N}) ->
   xqerl_xdm:pi_node(N, L, V, D, I);
norm(#nodes{id = I, tp = namespace, dst = D, ln = L, ns = N}) ->
   xqerl_xdm:namespace_node(N, L, D, I).

doc_to_binary(#{file := Uri} = Doc) ->
   Doc1 = add_text_lookup(Doc),
   Bin = erlang:term_to_binary(Doc1, [compressed]),
   {Uri, Bin}.

doc_to_xqnode_doc(Doc) ->
   add_text_lookup(Doc).

binary_to_doc(Bin) ->
   erlang:binary_to_term(Bin).

%% map with position => node
map_to_bin(Map) ->
   SKeys = lists:seq(1,maps:size(Map)),
   List = lists:map(fun(Key) ->
                        maps:get(Key, Map)
                    end, SKeys),
   erlang:iolist_to_binary(List).

add_text_lookup(#{texts := Texts} = Doc) ->
   F = fun(K,V,AccIn) -> AccIn#{V => K} end,
   TextLu = maps:fold(F,#{},Texts),
   Doc#{texts := TextLu}.

add_node(#state{nodes = Nodes} = State, #nodes{id = K} = Rec) ->
   V = norm(Rec),
   Nodes2 = maps:put(K, V, Nodes),
   State#state{nodes = Nodes2}.

store_doc(_Uri, {error,E}) -> {error,E};
store_doc(Uri, Doc) ->
   BinDoc = doc_to_binary(Doc),
   xqerl_ds:insert_doc(Uri, BinDoc).

retrieve_doc(Uri) ->
   {ok, {_,BinDoc}} = xqerl_ds:lookup_doc(Uri),
   binary_to_doc(BinDoc).

retrieve_collection(Uri) ->
   {ok,List} = xqerl_ds:lookup_doc(Uri),
   lists:map(fun({_,BinDoc}) when is_binary(BinDoc) ->
                   binary_to_doc(BinDoc);
                (O) ->
                   O
             end, List).

exists_doc(Uri) ->
   xqerl_ds:exists_doc(Uri).

