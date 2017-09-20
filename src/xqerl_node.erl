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

%% @doc Processing for local nodes created in XQuery. Translation from 'doc' -> node.
%% @TODO MESSY

-module(xqerl_node).

-include("xqerl.hrl").

-define(bool(Val), #xqAtomicValue{type = 'xs:boolean', value = Val}).
-define(str(Val), #xqAtomicValue{type = 'xs:string', value = Val}).
-define(untyp(Val), #xqAtomicValue{type = 'xs:untypedAtomic', value = Val}).


%-export([test/0]).

-export([node_type/1]).
-export([new_fragment/1]).
-export([new_fragment/2]).

%% -export([position_range/2]).
%% -export([position_single/2]).

-export([get_node/1]).
-export([get_node_id/1]).
-export([get_node_children/1]).
-export([get_node_name/1]).
-export([get_node_type/1]).

-export([parent_id/1]).
-export([child_ids/1]).
-export([descendant_ids/1]).
-export([ancestor_ids/1]).
-export([sibling_ids/1]).

-export([atomize_nodes/1]).
-export([to_xml/1]).
-export([nodes_equal/2]).





%%% identity + desc_count == last desc

% ContextMap - 
% last_id
% nodes -> array of record tuples for each known node

new_context() ->
   M1 = maps:new(),
   M2 = maps:put(next_node_id, 0, M1),
   M3 = maps:put(frag_id, next_frag_id(), M2),
   M4 = maps:put(nodes, gb_trees:empty(), M3),
   maps:put(base_uri, [], M4).

new_fragment({RootId, {1,_}}) when RootId > 0 -> ?seq:empty();
new_fragment({RootId, Doc}) -> 
   %?dbg(?LINE,RootId),
   %?dbg(?LINE,Doc),
   Content = build_contents(RootId, Doc),
   %?dbg("Content",Content),
   new_fragment(Content,"").


% return document {RootId, Doc}
new_fragment(Content, BaseUri) when is_list(Content) ->
   %?dbg("new_fragment Content",Content),
   Ctx = new_context(),
   {Id,Ctx1} = next_id(Ctx),
   Doc = #xqXmlFragment{identity = Id},
   Ctx2 = add_node(Ctx1, Id, Doc),
   Ctx3 = maps:put(base_uri, BaseUri, Ctx2),
   {Children, Sz, Ctx4} = handle_contents(Ctx3, Id, Content, static_namespaces(), 0),
   if Children == [] ->
         ?seq:empty();
      true ->
         Ctx5 = set_node_children(Ctx4, Id, Children, Sz),
         FragId = get_frag_id(Ctx5),
         _ = xqerl_context:add_available_document(FragId, get_nodes(Ctx5)),
         #xqNode{frag_id = FragId,identity = 1 }
   end;
new_fragment(Content, BaseUri) ->
   new_fragment([Content], BaseUri).


can_follow([],_Curr) -> true;
can_follow(element,attribute) -> false;
can_follow(text,attribute) -> false;
can_follow('processing-instruction',attribute) -> false;
can_follow(comment,attribute) -> false;
can_follow(element,namespace) -> false;
can_follow(attribute,namespace) -> false;
%can_follow(_,document) -> false;
can_follow(_,_) -> true.


% returns {Children, Sz, Ctx3}
handle_contents(Ctx, _Parent, [], _Ns, Sz) -> {[], Sz, Ctx};
handle_contents(Ctx, _Parent, [undefined], _Ns, Sz) -> {[], Sz, Ctx};
handle_contents(Ctx, Parent, Content, Ns, Sz) ->
    Content0 = case Content of
                  [C] ->
                     case ?seq:is_sequence(C) of
                        true ->
                           %?dbg("Content",Content),
                           ?seq:to_list(C);
                        _ ->
                           Content
                     end;
                  _ when is_list(Content) ->
                     lists:flatten(
                        lists:map(fun(I) ->
                                    case ?seq:is_sequence(I) of
                                       true ->
                                          %?dbg("Content",Content),
                                          ?seq:to_list(I);
                                       _ ->
                                          I
                                    end                                     
                                  end, Content));
                  C ->
                     [C]
               end,
   Content1 = merge_content(Content0),
   %?dbg("handle_contents Content0",Content0),
   %?dbg("handle_contents Content1",Content1),
   Fun = fun(Node, {Children, Sz1, Ctx1, LastType, UsedAttNames}) ->
               Type = get_node_type(Node),
               %?dbg("can_follow(LastType,Type)", {LastType,Type}),
               case can_follow(LastType,Type) of
                  false ->
                     xqerl_error:error('XQTY0024');
                  _ ->
                     UsedAttNames1 = case Node of
                                        #xqAttributeNode{name = AName} ->
                                           case xqerl_types:value(AName) of
                                              #qname{namespace = N,local_name = L} ->
                                                 New = {N,L},
                                                 case lists:any(fun(U) ->
                                                                      U == New
                                                                end, UsedAttNames) of
                                                    true ->
                                                       xqerl_error:error('XQDY0025');
                                                    _ ->
                                                       [New|UsedAttNames]
                                                 end;
                                              _ ->
                                                 %?dbg("AName",AName),
                                                 UsedAttNames
                                           end;
                                        _ ->
                                           UsedAttNames
                                     end,
                     case Node of
                        #xqTextNode{expr = E} ->
%%                            Es = xqerl_types:string_value(E),
%%                            if Es == [] ->
%%                                  {Children, Sz1,Ctx1,Type,UsedAttNames1};
%%                               true ->
                                 {Id, Sz2,Ctx2} = handle_content(Ctx1, Parent, Node, Ns, Sz1),
                                 if is_list(Id) ->
                                       {Id ++ Children, Sz2,Ctx2,Type,UsedAttNames1};
                                    true ->
                                       {[Id|Children], Sz2,Ctx2,Type,UsedAttNames1}
%%                                  end
                           end;
                        _ ->
                           {Id, Sz2,Ctx2} = handle_content(Ctx1, Parent, Node, Ns, Sz1),
                           if is_list(Id) ->
                                 {Id ++ Children, Sz2,Ctx2,Type,UsedAttNames1};
                              true ->
                                 {[Id|Children], Sz2,Ctx2,Type,UsedAttNames1}
                           end
                     end
               end
         end,
   {Ids, Sz3,Ctx3,_Type,_UsedAtts} = lists:foldl(Fun, {[], Sz, Ctx, [], []}, Content1),
   {Ids, Sz3,Ctx3}.

%% flatten_content(Content) ->
%%    lists:flatmap(fun({Num,_} = Seq) when is_integer(Num) ->
%%                    ?seq:to_list(Seq);
%%                     (Seq) ->
%%                    [Seq]                 
%%                  end, Content).

% returns {Id, Sz,Ctx2}
handle_content(Ctx, Parent, #xqElementNode{name = QName, expr = Content, inscope_ns = ElemNs} = N, INs, Sz) ->
   %?dbg("N",N),
   %?dbg("INs",INs),
   %?dbg("ElemNs",ElemNs),
   %?dbg("QName",QName),
   {Id,Ctx1} = next_id(Ctx),
   Content1 = case ?seq:is_sequence(Content)  of
                 true ->
                    [Content];
                    %?seq:to_list(Content);
                 _ ->
                    if is_list(Content) -> Content; 
                          %flatten_content(Content);
                       true -> [Content] 
                    end
              end,
   Content2 = merge_content(Content1),
   INs1 = lists:filter(fun(#xqNamespace{prefix = P3, namespace = N3}) ->
                             Found = lists:keyfind(P3, 3, ElemNs),
                             case Found of
                                false ->
                                   true;
                                {_,N4,P3} when N4 =/= N3 ->
                                   true;
                                _ ->
                                   false
                             end
                       end, INs) ++ ElemNs,
   %?dbg("xqElementNode Content",Content),
   %?dbg("xqElementNode Content1",Content1),
   %?dbg("xqElementNode Content2",Content2),
   NameSpaces1 =  [X || X <- Content2, is_record(X, xqNamespaceNode)] ++
                  [X || 
                   #xqAttributeNode{name = QN} = X  <- Content2,
                   #qname{namespace = Nx1,prefix = Lx1} <- begin
                                                               D = xqerl_types:value(QN),
                                                               [D]
                                                            end
                                                           ,
                   Lx1 =/= "xml",
                   Nx1 =/= undefined,
                   Nx1 =/= 'no-namespace',
                   Nx1 =/= "http://www.w3.org/2000/xmlns/",
                   Nx1 =/= "http://www.w3.org/XML/1998/namespace"],
   NameSpaces2 = lists:filter(fun(#xqNamespaceNode{name = #qname{namespace = Nx1,prefix = Lx1}}) ->
                                   not lists:any(
                                     fun(#xqNamespace{namespace = Xx1,prefix = Px1}) ->
                                           % first check for duplicate prefixes
                                           _ = has_bad_namespaces(NameSpaces1),
                                          false 
                                          %Nx1 == Xx1 andalso Lx1 == Px1
                                     end, INs1);
                                 (#xqAttributeNode{name = QN}) ->
                                    #qname{namespace = Nx1,prefix = Lx1, local_name = Lnx1} = xqerl_types:value(QN),
                                   not lists:any(fun(#xqNamespace{namespace = Xx1,prefix = Px1}) ->
                                                   (Nx1 == Xx1 andalso Lx1 == Px1) 
                                                   orelse (Lx1 == "xml") orelse (Lx1 == "xmlns")
                                                   orelse (Lnx1 == "xml") orelse (Lnx1 == "xmlns")
                                                 end, INs1)
                             end, NameSpaces1), % remove already declared namespaces
   NameSpaces2_1 = [N6 || #xqAttributeNode{name = QN} <- NameSpaces2,
                          #qname{namespace = Nx1,prefix = Lx1} <- [xqerl_types:value(QN)],
                          N6 <- [#xqNamespaceNode{name = #qname{namespace = Nx1,prefix = Lx1}}]],
   NameSpaces2_2 = [N6 || #xqNamespaceNode{} = N6 <- NameSpaces2],
   NameSpaces = lists:umerge(lists:usort(NameSpaces2_1), lists:usort(NameSpaces2_2)),
   NonNameSpaces = [X || X <- Content2, not is_record(X, xqNamespaceNode)],
   %?dbg("xqElementNode NameSpaces",NameSpaces),
   %?dbg("xqElementNode NonNameSpaces",NonNameSpaces),
   NewNs = merge_ns(NameSpaces, INs1),
   %?dbg("NewNs",NewNs),
   %?dbg("NameSpaces1",NameSpaces1),
   %?dbg("NameSpaces2",NameSpaces2),
   %?dbg("NameSpaces",NameSpaces),
   %?dbg("INs1",INs1),
   QName0 = case ?seq:is_sequence(QName) of
               true ->
                  ?seq:singleton_value(QName);
               _ ->
                  QName
            end,
   %?dbg("QName0",QName0),
   QName2 = case QName0 of
               #qname{} ->
                  QName0;
               #xqNode{} ->
                  try
                     xqerl_types:value(xqerl_types:cast_as(QName0,'xs:QName',INs1))
                  catch
                     _:E ->
                        ?dbg("233",E),
                        xqerl_error:error('XQDY0074')
                  end;
               #xqAtomicValue{type = Ty} when Ty == 'xs:string';
                                              Ty == 'xs:untypedAtomic' ->
                  try
                     xqerl_types:value(xqerl_types:cast_as(QName0,'xs:QName',INs1))
                  catch
                     _:E ->
                        ?dbg("233",E),
                        xqerl_error:error('XQDY0074')
                  end;
               [#xqAtomicValue{type = Ty}] when Ty == 'xs:string';
                                                Ty == 'xs:untypedAtomic' ->
                  try
                     xqerl_types:value(xqerl_types:cast_as(QName0,'xs:QName',INs1))
                  catch
                     _:E ->
                        ?dbg("241",E),
                        xqerl_error:error('XQDY0074')
                  end;
               #xqAtomicValue{type = 'xs:QName', value = Q} ->
                  Q;
               [#xqAtomicValue{type = 'xs:QName', value = Q}] ->
                  Q;
               E ->
                  ?dbg("241",E),
                  xqerl_error:error('XPTY0004')
            end,
   %QName2 = resolve_namespace(QName1, NewNs),
   %this node namespace is also in-scope
   %?dbg("QName2",QName2),
   QName1 = 
     case QName2 of
       % errors on element name
       #qname{namespace = _, prefix = "xmlns", local_name = _} -> 
          xqerl_error:error('XQDY0096');
       #qname{namespace = "http://www.w3.org/2000/xmlns/", prefix = _, local_name = _} -> 
          xqerl_error:error('XQDY0096');
       #qname{namespace = TNs, prefix = "xml", local_name = _} when TNs =/= "http://www.w3.org/XML/1998/namespace" -> 
          xqerl_error:error('XQDY0096');
       #qname{namespace = "http://www.w3.org/XML/1998/namespace", prefix = TPx, local_name = _} when TPx =/= "xml" -> 
          xqerl_error:error('XQDY0096');
       #qname{namespace = N5, prefix = _, local_name = _} when is_list(N5) ->
          QName2;
        _ ->
           resolve_namespace(QName2, NewNs)
     end,
   #qname{namespace = Nx4,prefix = Lx4} = QName1,
   TempNs = #xqNamespace{namespace = Nx4,prefix = Lx4},
   NewNs1 = [TempNs|[T || #xqNamespace{prefix = Lx5} = T <- NewNs, Lx5 =/= Lx4]],
   %?dbg("QName",QName),
   %?dbg("QName0",QName0),
   %?dbg("QName1",QName1),
   %?dbg("QName2",QName2),
   %?dbg("NewNs",NewNs),
   %?dbg("NewNs1",NewNs1),
   %?dbg("TempNs",TempNs),
   Node = N#xqElementNode{identity = Id, 
                          parent_node = Parent, 
                          name = QName1, 
                          %base_uri = BaseUri1, set after content resolved
                          expr = undefined, 
                          inscope_ns = NewNs1},
   Ctx2 = add_node(Ctx1, Id, Node),
   %?dbg("N",N),
   %?dbg("Node",Node),
   {Children, Sz1, Ctx3} = handle_contents(Ctx2, Id, NameSpaces ++ NonNameSpaces, NewNs1, 0),
   %?dbg("Children",Children),
%%    % check for duplicate attributes
%%    Atts = [X || #xqAttributeNode{name = #qname{}} X <- NonNameSpaces, is_record(X, xqAttributeNode)]
%%    _ = lists:foreach(Fun, List),
   % base-uri will come from the children
   Ctx4 = set_node_children(Ctx3, Id, Children, Sz1),
   Ctx5 = set_node_base_uri(Ctx4, Id),
   {Id, Sz1 + Sz + 1,Ctx5};

handle_content(Ctx, _Parent, #xqDocumentNode{expr = Content} = N, INs, Sz) ->
   {Id,Ctx1} = next_id(Ctx),
   Content1 = case ?seq:is_sequence(Content)  of
                 true ->
                    [Content];
                 _ ->
                    if is_list(Content) -> Content; 
                          %flatten_content(Content);
                       true -> [Content] 
                    end
              end,
   Content2 = merge_content(Content1),
   ?dbg("xqElementNode Content2",Content2),
   % no attributes on documents
   _ = lists:foreach(fun(#xqAttributeNode{}) ->
                           xqerl_error:error('XPTY0004');
                        (_) ->
                           ok
                     end, Content2),
   Node = N#xqDocumentNode{identity = Id, expr = undefined},
   Ctx2 = add_node(Ctx1, Id, Node),
   {Children, Sz1, Ctx3} = handle_contents(Ctx2, Id, Content2, INs, 0),
   Ctx4 = set_node_children(Ctx3, Id, Children, Sz1),
   Ctx5 = set_node_base_uri(Ctx4, Id),
   {Id, Sz1 + Sz + 1,Ctx5};

handle_content(Ctx, Parent, #xqAttributeNode{name = QName, expr = Content} = N, INs, Sz) ->
   {Id,Ctx1} = next_id(Ctx),
   Content1 = case ?seq:is_sequence(Content)  of
                 true ->
                    [Content];
                 _ ->
                    if is_list(Content) -> Content; 
                          %flatten_content(Content);
                       true -> [Content] 
                    end
              end,
   Content2 = merge_text_content(Content1),
   %?dbg("Content",Content),
   %?dbg("Content1",Content1),
   %?dbg("Content2",Content2),
   QName0 = case ?seq:is_sequence(QName) of
               true ->
                  ?seq:singleton_value(QName);
               _ ->
                  QName
            end,
   QName1 = case QName0 of
               #qname{} ->
                  QName0;
               #xqAtomicValue{type = Ty} when Ty == 'xs:string';
                                              Ty == 'xs:untypedAtomic' ->
                  try
                     %?dbg("INs",INs),
                     %?dbg("QName0",QName0),
                     xqerl_types:value(xqerl_types:cast_as(QName0,'xs:QName',INs))
                  catch
                     _:E ->
                        ?dbg("302",E),
                        xqerl_error:error('XQDY0074')
                  end;
               [#xqAtomicValue{type = Ty}] when Ty == 'xs:string';
                                                Ty == 'xs:untypedAtomic' ->
                  try
                     xqerl_types:value(xqerl_types:cast_as(QName0,'xs:QName',INs))
                  catch
                     _:E ->
                        ?dbg("310",E),
                        xqerl_error:error('XQDY0074')
                  end;
               #xqAtomicValue{type = 'xs:QName', value = Q} ->
                  Q;
               [#xqAtomicValue{type = 'xs:QName', value = Q}] ->
                  Q;
               _ ->
                  xqerl_error:error('XPTY0004')
            end,
%%    StrVal = xqerl_types:string_value(N#xqAttributeNode.expr),
%%    Expr0 = ?str(StrVal),
   Expr0 = atomize_nodes(Content2),
   %?dbg("QName0",QName0),
   %?dbg("QName1",QName1),
   %?dbg("QName2",QName2),
   Expr = case QName1 of
             #qname{namespace = _, prefix = "xml", local_name = "id"} -> % xml:id, TODO xml:base, xml:lang
                try
                  xqerl_types:cast_as(Expr0,'xs:ID')
                catch _:_ ->
                  xqerl_error:error('XQDY0091')
                end;
             #qname{namespace = _, prefix = "xml", local_name = "space"} -> % xml:id, TODO xml:base, xml:lang
               StrVal = xqerl_types:cast_as(Expr0,'xs:string'),
               case xqerl_types:value(StrVal) of
                  "preserve" ->
                     StrVal;
                  "default" ->
                     StrVal;
                  %"strip" -> % not sure if this should be here. strip is not allowed
                  %   StrVal;
                  _ ->
                     xqerl_error:error('XQDY0092')
               end;
             #qname{namespace = _, prefix = "xml", local_name = "lang"} -> % xml:id, TODO xml:base
                xqerl_types:cast_as(Expr0,'xs:language');
             #qname{namespace = _, prefix = "xml", local_name = "base"} -> % xml:id, TODO xml:base
                xqerl_types:cast_as(Expr0,'xs:anyURI');
             % errors on attribute
             #qname{namespace = _, prefix = "xmlns", local_name = _} -> 
                xqerl_error:error('XQDY0044');
             #qname{namespace = _, prefix = "", local_name = "xmlns"} -> 
                xqerl_error:error('XQDY0044');
             #qname{namespace = "http://www.w3.org/2000/xmlns/", prefix = _, local_name = _} -> 
                xqerl_error:error('XQDY0044');
             #qname{namespace = TNs, prefix = "xml", local_name = _} when TNs =/= "http://www.w3.org/XML/1998/namespace" -> 
                xqerl_error:error('XQDY0044');
             #qname{namespace = "http://www.w3.org/XML/1998/namespace", prefix = TPx, local_name = _} when TPx =/= "xml" -> 
                xqerl_error:error('XQDY0044');
             _ ->
                Expr0
          end,
   #qname{namespace = Nx1,prefix = Lx1} = xqerl_types:value(QName1),
   NameSpaces = [#xqNamespaceNode{name = #qname{namespace = Nx1,prefix = Lx1}}],  
   %?dbg("xqElementNode NameSpaces",NameSpaces),
   %?dbg("xqElementNode NonNameSpaces",NonNameSpaces),
   NewNs = merge_ns(NameSpaces, INs),

   QName2 = resolve_attribute_namespace(QName1, NewNs),
   Node = N#xqAttributeNode{identity = Id, parent_node = Parent, name = QName2, expr = Expr},
   Ctx2 = case QName2 of
             #qname{prefix = "xml", local_name = "base"} ->
                maps:put(base_uri, Expr, Ctx1);
             _ ->
                Ctx1
          end,
   Ctx3 = add_node(Ctx2, Id, Node),
   {Id, Sz + 1, Ctx3};

handle_content(Ctx, Parent, #xqNamespaceNode{name = #qname{namespace = Ns, prefix = Px}} = N, INs, Sz) ->
   Ns1 = xqerl_types:value(Ns),
   Px3 = xqerl_types:value(Px),
   % check if there is an inscope namespace with the same URI, use it's prefix
   {Id,Ctx1} = next_id(Ctx),
   Px1 = case lists:keyfind(Ns1, 2, INs) of
            false ->
               Px3;
            #xqNamespace{prefix = Px2} ->
               Px2
         end,
   case {Ns1,Px1} of
      % errors on namespace
      {"http://www.w3.org/XML/1998/namespace",TP} when TP =/= "xml" ->
         xqerl_error:error('XQDY0101');
      {TNs,"xml"} when TNs =/= "http://www.w3.org/XML/1998/namespace" ->
         xqerl_error:error('XQDY0101');
      {_,"xmlns"} ->
         xqerl_error:error('XQDY0101');
      {"http://www.w3.org/2000/xmlns/",TP} when TP =/= "" ->
         xqerl_error:error('XQDY0101');
      {"",_} ->
         xqerl_error:error('XQDY0101');
      _ ->
         ok
   end,   
   Node = N#xqNamespaceNode{identity = Id, 
                            parent_node = Parent, 
                            name = #qname{namespace = Ns1, prefix = Px1}},
   Ctx2 = add_node(Ctx1, Id, Node),
   {Id, Sz + 1, Ctx2};

handle_content(Ctx, Parent, #xqProcessingInstructionNode{name = QName, expr = E} = N, INs, Sz) ->
   %?dbg("xqProcessingInstructionNode",N),
   case string:str(xqerl_types:string_value(E), "?>") of
      0 ->
         QName0 = case ?seq:is_sequence(QName) of
                     true ->
                        ?seq:singleton_value(QName);
                     _ ->
                        QName
                  end,
         QName1 = case QName0 of
                     #qname{} ->
                        case string:lowercase(QName0#qname.local_name) of
                           "xml" ->
                              xqerl_error:error('XQDY0064');
                           _ ->
                              QName0
                        end;
                     #xqAtomicValue{type = AT, value = _Val} when AT == 'xs:string';
                                                                 AT == 'xs:untypedAtomic' ->
                        try xqerl_types:value(xqerl_types:cast_as(QName0,'xs:NCName')) of
                           L ->
                              case string:lowercase(L) of
                                 "xml" ->
                                    xqerl_error:error('XQDY0064');
                                 _ ->
                                    #qname{local_name = L}
                              end
                        catch
                           _:_ ->
                              xqerl_error:error('XQDY0041')
                        end;
                     #xqAtomicValue{type = 'xs:QName', value = Q} ->
                        case string:lowercase(Q#qname.local_name) of
                           "xml" ->
                              xqerl_error:error('XQDY0064');
                           _ ->
                              Q
                        end;
                     _ ->
                        xqerl_error:error('XPTY0004')
                  end,
         %?dbg("QName1",QName1),
         %?dbg("INs",INs),
         %QName2 = resolve_attribute_namespace(QName1, INs),
         {Id,Ctx1} = next_id(Ctx),
         Node = N#xqProcessingInstructionNode{identity = Id, parent_node = Parent, name = QName1},
         Ctx2 = add_node(Ctx1, Id, Node),
         {Id, Sz + 1, Ctx2};
      _ ->
         xqerl_error:error('XQDY0026')
   end;

handle_content(Ctx, Parent, #xqCommentNode{expr = E} = N, _INs, Sz) ->
   Str = xqerl_types:string_value(E),
   Last = if length(Str) == 0 ->
                "";
             true ->
                hd(lists:reverse(Str))
          end,         
   case string:str(Str, "--") == 0 andalso Last =/= $- of
      true ->
         {Id,Ctx1} = next_id(Ctx),
         Node = N#xqCommentNode{identity = Id, parent_node = Parent},
         Ctx2 = add_node(Ctx1, Id, Node),
         {Id, Sz + 1, Ctx2};
      _ ->
         xqerl_error:error('XQDY0072')
   end;

handle_content(Ctx, _Parent, #xqTextNode{expr = ""}, _INs, Sz) -> % no empty text nodes
   {[], Sz, Ctx};
%% handle_content(Ctx, _Parent, #xqTextNode{expr = [#xqAtomicValue{type = 'xs:string',value = ""}]}, _INs, Sz) -> % no empty text nodes
%%    {[], Sz, Ctx};
%% handle_content(Ctx, _Parent, #xqTextNode{expr = #xqAtomicValue{type = 'xs:string',value = ""}}, _INs, Sz) -> % no empty text nodes
%%    {[], Sz, Ctx};
handle_content(Ctx, Parent, #xqTextNode{expr = Ex, cdata = C} = N, _INs, Sz) ->
   case (?seq:is_sequence(Ex) andalso ?seq:is_empty(Ex))
      orelse (C == false andalso string:trim(xqerl_types:string_value(Ex)) == []) of
      true ->
         %?dbg(?LINE,Ex),
         {[], Sz, Ctx};
      _ ->
         %?dbg(?LINE,Ex),
         {Id,Ctx1} = next_id(Ctx),
         NewEx = #xqAtomicValue{type = 'xs:untypedAtomic', value = xqerl_types:string_value(Ex)} ,
         Node = N#xqTextNode{identity = Id, parent_node = Parent, expr = NewEx},
         %?dbg("handle_content xqTextNode N", N),
         %?dbg("handle_content xqTextNode", Node),
         Ctx2 = add_node(Ctx1, Id, Node),
         {Id, Sz + 1, Ctx2}
   end;

%% handle_content(Ctx, Parent, #xqAtomicValue{value = _} = N, _INs, Sz) ->
%%    ?dbg("Dialyzer says no match",?LINE),
%%    {Id,Ctx1} = next_id(Ctx),
%%    %?dbg("handle_content xqAtomicValue", Id),
%%    Val = xqerl_types:cast_as(N, 'xs:untypedAtomic'),
%%    %?dbg("handle_content xqAtomicValue", Val),
%%    Node = #xqTextNode{identity = Id, parent_node = Parent, expr = Val},
%%    Ctx2 = add_node(Ctx1, Id, Node),
%%    {Id, Sz + 1, Ctx2};

%% handle_content(Ctx, Parent, List, INs, Sz) when is_list(List) ->
%%    handle_contents(Ctx, Parent, List, INs, Sz);

% internal fragment to merge
handle_content(Ctx, Parent, #xqNode{frag_id = F, identity = I}, INs, Sz) ->
   %?dbg("handle_content 324",{F,I}),
   Doc = xqerl_context:get_available_document(F),
   Contents = build_contents(I, Doc),
   {Children, Sz1, Ctx3} = handle_contents(Ctx, Parent, Contents, INs, Sz),
   {Children, Sz1, Ctx3};

%% handle_content(Ctx, _Parent, [], _INs, Sz) ->
%%    {[], Sz, Ctx};

handle_content(Ctx, Parent, Seq, INs, Sz)  ->
   Ci = ?seq:to_list(Seq),
   %?dbg("handle_content 284",Ci),
   handle_contents(Ctx, Parent, Ci, INs, Sz).


%% -record(xqDocumentNode, {
%% -record(xqElementNode, {
%% -record(xqAttributeNode, {

%% -record(xqNamespaceNode, {
%% -record(xqProcessingInstructionNode, {
%% -record(xqCommentNode, {
%% -record(xqTextNode, {
%% -record(xqXmlFragment, {





% returns {Id,Ctx}
next_id(Ctx) ->
   Last = maps:get(next_node_id, Ctx),
   Next = Last + 1,
   {Last, maps:put(next_node_id, Next, Ctx)}.

next_frag_id() ->
   case erlang:get(next_frag_id) of
      undefined ->
         erlang:put(next_frag_id, 1),
         0;
      N ->
         erlang:put(next_frag_id, N + 1),
         N
   end.

% returns new Ctx
add_node(Ctx, Id, Node) ->
   Nodes = maps:get(nodes, Ctx),
   maps:put(nodes, 
            gb_trees:enter(Id, Node, Nodes), 
            %array:set(Id, Node, Nodes), 
            Ctx).

get_nodes(Ctx) ->
   maps:get(nodes, Ctx).

get_frag_id(Ctx) ->
   maps:get(frag_id, Ctx).


build_contents(Id, Doc) ->
  Node = gb_trees:get(Id, Doc),
  case Node of
      #xqElementNode{} ->
         Children = lists:sort(Node#xqElementNode.children),
         %NameSpaces = Node#xqElementNode.inscope_ns,
         %?dbg("build_contents",NameSpaces),
         Exp = lists:map(fun(N) ->
                               build_contents(N, Doc)
                         end, Children),
         [Node#xqElementNode{desc_count = 0, children = [], expr = Exp}]; 
      #xqDocumentNode{} ->
         Children = Node#xqDocumentNode.children,
         Exp = lists:map(fun(N) ->
                               build_contents(N, Doc)
                         end, Children),
         Exp;
      #xqXmlFragment{} ->
         Children = Node#xqXmlFragment.children,
         Exp = lists:map(fun(N) ->
                               build_contents(N, Doc)
                         end, Children),
         Exp;
      [N] ->
         [N];
      N ->
         [N]
   end.


% returns new Ctx
set_node_children(Ctx, Id, Children, Sz) ->
   Children1 = lists:reverse(Children),
   Nodes = maps:get(nodes, Ctx),
   Node = gb_trees:get(Id, Nodes),
   %Node = array:get(Id, Nodes),
   Node2 = case Node of
              #xqXmlFragment{} ->
                 Node#xqXmlFragment{children = Children1, desc_count = Sz};
              #xqDocumentNode{} ->
                 Node#xqDocumentNode{children = Children1, desc_count = Sz};
              #xqElementNode{} ->
                 Node#xqElementNode{children = Children1, desc_count = Sz}
           end,
   maps:put(nodes, 
            gb_trees:enter(Id, Node2, Nodes),
            %array:set(Id, Node2, Nodes),
            Ctx).

% returns new Ctx
set_node_base_uri(Ctx, Id) ->
   Nodes   = maps:get(nodes, Ctx),
   BaseUri = maps:get(base_uri, Ctx),
   Node = gb_trees:get(Id, Nodes),
   Node2 = case Node of
              #xqDocumentNode{} ->
                 Node#xqDocumentNode{base_uri = BaseUri};
              #xqElementNode{} ->
                 Node#xqElementNode{base_uri = BaseUri}
           end,
   maps:put(nodes, 
            gb_trees:enter(Id, Node2, Nodes),
            %array:set(Id, Node2, Nodes),
            Ctx).

merge_ns(NewNs, OldNs) ->
   Combined = [{N2,P2} || #xqNamespaceNode{name = #qname{namespace = N2, prefix = P2}} <- lists:usort(NewNs)] ++
              [{N2,P2} || #xqNamespace{namespace = N2, prefix = P2} <- lists:usort(OldNs)],
   Prefixes = [P2 || {_,P2} <- lists:usort(Combined)],
   %?dbg("OldNs",OldNs),
   %?dbg("NewNs",NewNs),
   %?dbg("Prefixes",Prefixes),
   NewNs1 = case lists:usort(Prefixes) =/= lists:sort(Prefixes) of %orelse NewDefault of
                true -> % there are 2 namespaces with the same prefix. Need new prefixes
                 % ?dbg("NewNs, OldNs",{NewNs, OldNs}),
                  NsDict = lists:foldl(fun(#xqNamespaceNode{name = #qname{namespace = Ns,prefix = Px}},Dict) ->
                                             dict:append(Px, Ns, Dict)
                                       end, dict:new(), NewNs),
                  NsRenamed = lists:flatmap(fun({Key,Vals}) ->
                                              if is_list(Vals) ->
                                                    {L,_} = lists:mapfoldl(fun(A,Cnt) ->
                                                                                 NewPx = Key ++ "ns_" ++ integer_to_list(Cnt),
                                                                                 {#xqNamespaceNode{name = #qname{namespace = A,prefix = NewPx}},Cnt+1}
                                                                   end, 1, Vals),
                                                    L;
                                                 true ->
                                                    #xqNamespaceNode{name = #qname{namespace = Vals,prefix = Key}}
                                              end
                                        end, dict:to_list(NsDict)),
                  %?dbg("NsRenamed",NsRenamed),
                  NsRenamed;
                _ ->
                   lists:filter(fun(#xqNamespaceNode{name = #qname{namespace = N2}}) ->
                                      not lists:any(fun(#xqNamespace{namespace = N1}) ->
                                                          N1 == N2
                                                    end, OldNs)
                                end, NewNs)
                   
             end,
   Filter = fun(#xqNamespace{prefix = P1}) ->
                  not lists:any(fun(#xqNamespaceNode{name = #qname{prefix = P2}}) ->
                                  P1 == P2
                            end, NewNs1)
            end,
   Filtered = lists:filter(Filter, OldNs),
   AsNs = lists:map(fun(#xqNamespaceNode{name = #qname{namespace = N2x, prefix = P2x}}) ->
                          P2 = xqerl_types:string_value(P2x),
                          N2 = xqerl_types:string_value(N2x),
                          %?dbg("P2x", {P2,P2x}),
                          %?dbg("N2x", {N2,N2x}),
                          % attempt to reset xml or xsi namespace
                          if P2 == "xml" andalso N2 =/= "http://www.w3.org/XML/1998/namespace" ->
                                ?dbg("XQST0070", {P2,N2}),
                                xqerl_error:error('XQST0070');
                             P2 == "xmlns" andalso N2 =/= "http://www.w3.org/2000/xmlns/" ->
                                ?dbg("XQST0070", {P2,N2}),
                                xqerl_error:error('XQST0070');
%%                              N2 == [] andalso P2 == [] -> % new default NS
%%                                 #xqNamespace{namespace = 'no-namespace',prefix = ""};
%%                              N2 == [] -> % attempt to clear namespace for prefix
%%                                 xqerl_error:error('XQST0085');
                             true ->
                                #xqNamespace{namespace = N2,prefix = P2}
                          end
                    end, NewNs1),
   %?dbg("Prefixes",Prefixes),
   %?dbg("NewNs1",NewNs1),
   %?dbg("Filtered",Filtered),
   %?dbg("AsNs",AsNs),
   AsNs ++ Filtered.

resolve_namespace(#qname{namespace = Na, prefix = P} = QName, Ns) when is_atom(Na) ; Na == [] ->
   %?dbg("resolve_namespace atom Ns",Ns),
   %?dbg("resolve_namespace atom QName",QName),
   N = [X || #xqNamespace{namespace = X, prefix = Px} <- Ns, P == Px ],
   if N == [] ->
         ?dbg("resolve_namespace",{QName,Ns}),
         xqerl_error:error('XPST0081');
      true ->
         %?dbg("resolve_namespace",{Na,Ns}),
         QName#qname{namespace = hd(N)}
   end;
resolve_namespace(#qname{namespace = N} = QName, Ns) ->
   %check if there is a new prefix for the namespace, should only be attributes
   %?dbg("resolve_namespace Ns",Ns),
   %?dbg("resolve_namespace QName",QName),
   case lists:keyfind(N, 2, Ns) of
      false -> 
         Stat = dict:to_list(xqerl_context:get_statically_known_namespaces()),
         case lists:keyfind(N, 2, Stat) of
            false ->
               ?dbg("N",N),
               ?dbg("Ns",Ns),
               ?dbg("Stat",Stat),
               xqerl_error:error('XQDY0074');
            {Px,_Ns} ->
               %?dbg("FOUND",Px),
               QName#qname{prefix = Px}
         end;
%%          % couldnt find it, hope for the best??
%%          QName;
      #xqNamespace{prefix = Px} ->
         QName#qname{prefix = Px}
   end.

resolve_attribute_namespace(QName, Ns) ->
   QName1 = resolve_namespace(QName, Ns),
   if QName1#qname.prefix == [] -> QName1#qname{namespace = 'no-namespace'};
      true ->
         QName1
   end.

static_namespaces() ->
   StatL = [{"xml","http://www.w3.org/XML/1998/namespace"},{[],'no-namespace'}],
   %StatL = [{"xml","http://www.w3.org/XML/1998/namespace"},{[],'no-namespace'},{"fn","http://www.w3.org/2005/xpath-functions"}],
   %?dbg("static_namespaces",StatL),
   Static = lists:map(fun({K,V}) ->
                  #xqNamespace{namespace = V, prefix = K}
            end, StatL),
   Def = xqerl_context:get_default_element_type_namespace(),
   %?dbg("static_namespaces",Def),
   Default = #xqNamespace{namespace = Def, prefix = []},
   lists:keyreplace([], 3, Static, Default).


merge_content([]) ->
   [];
merge_content(Content) when is_list(Content) ->
   L = lists:flatten(Content),
   %?dbg("merging",L),
   merge_content(L, []).


merge_content([], Acc) ->
   %?dbg("merge_content",Acc),
   lists:reverse(Acc);
merge_content([#xqAtomicValue{type = Type} = H|T], Acc) when Type =/= 'xs:untypedAtomic' ->
   %?dbg("merge_content",6),
   NewH = xqerl_types:cast_as(H, 'xs:untypedAtomic'),
   merge_content([NewH|T], Acc);
merge_content([#xqAtomicValue{} = H1,#xqAtomicValue{} = H2|T], Acc) ->
   St1 = xqerl_types:value(xqerl_types:string_value(H1)),
   St2 = xqerl_types:value(xqerl_types:string_value(xqerl_types:cast_as(H2, 'xs:untypedAtomic'))),
   Str3 = St1 ++ St2,
   merge_content([#xqAtomicValue{type = 'xs:untypedAtomic', value = Str3}|T], Acc);

merge_content([#xqAtomicValue{type = Type, value = _Val} = Expr], Acc) when Type == 'xs:untypedAtomic' ->
   merge_content([], [#xqTextNode{expr = Expr}|Acc]);

merge_content([#xqAtomicValue{} = H1,H2|T], Acc) ->
   %?dbg("merge_content",4),
   Node = #xqTextNode{expr = H1},
   merge_content([Node,H2|T], Acc);

merge_content([#xqTextNode{expr = S1},#xqTextNode{expr = S2} = H2|T], Acc) ->
   %?dbg("merge_content",3),
   St1 = xqerl_types:value(xqerl_types:string_value(S1)),
   St2 = xqerl_types:value(xqerl_types:string_value(S2)),
   Str3 = St1 ++ St2,
   Node = H2#xqTextNode{expr = ?untyp(Str3)},
   %io:format("MERGED: ~p~n",[Node]),
   merge_content([Node|T], Acc);

merge_content([#xqTextNode{expr = S1} = H|T], Acc) ->
   St1 = xqerl_types:value(xqerl_types:string_value(S1)),
   if St1 == [] ->
         merge_content(T, Acc);
      true ->
         merge_content(T, [H|Acc])
   end;

merge_content([#xqNode{frag_id = F, identity = I}|T], Acc) ->
   Doc = xqerl_context:get_available_document(F),
   Content = build_contents(I, Doc),
   %?dbg("merge_content 512",Content),
   merge_content(Content ++ T, Acc);

merge_content([#xqDocumentNode{expr = E}|T], Acc) when length(Acc) > 0 ->
   merge_content([E|T], Acc);
merge_content([H|T], Acc) ->
   %?dbg(?LINE,H),
   case ?seq:is_sequence(H) of
      true ->
         #xqSeqType{type = Type} = ?seq:get_seq_type(H),
         if ?anySimpleType(Type) ->
               Str = xqerl_types:string_value(H),
               %?dbg(?LINE,Str),
               merge_content([?untyp(Str)|T], Acc);
            true ->
               H3 = maybe_merge_seq(H),
               %?dbg(?LINE,H3),
               merge_content(H3 ++ T, Acc)
            end;
      _ ->
         merge_content(T, [H|Acc])
   end.
%%    case ?seq:is_sequence(H) of
%%       true ->
%%          #xqSeqType{type = Type} = ?seq:get_seq_type(H),
%%          if ?anySimpleType(Type) ->
%%                Str = xqerl_types:string_value(H),
%%                %?dbg("Str",Str),
%%                merge_content([#xqAtomicValue{type = 'xs:untypedAtomic', value = Str}|T], Acc);
%%             true ->
%%                H1 = maybe_merge_seq(H),
%%                %?dbg(?LINE,H1),
%%                %?dbg("H1",{H1 ++ T,Acc}),
%%                merge_content(H1 ++ T, Acc)
%%             end;
%%       _ ->
%%          %?dbg("H",{H,Acc}),
%%          merge_content(T, [H|Acc])
%%    end.

maybe_merge_seq(Seq) ->
   List = ?seq:to_list(Seq),
   maybe_merge_seq(List,[]).

maybe_merge_seq([],Acc) ->
   lists:reverse(Acc);
maybe_merge_seq([#xqAtomicValue{} = H1,#xqAtomicValue{} = H2|T], Acc) ->
   St1 = xqerl_types:value(xqerl_types:string_value(H1)),
   St2 = xqerl_types:value(xqerl_types:string_value(xqerl_types:cast_as(H2, 'xs:untypedAtomic'))),
   Str3 = lists:concat([St1," ",St2]),
   maybe_merge_seq([#xqAtomicValue{type = 'xs:untypedAtomic', value = Str3}|T], Acc);
maybe_merge_seq([H|T], Acc) ->
   maybe_merge_seq(T, [H|Acc]).


maybe_merge_text_seq([Seq]) -> maybe_merge_text_seq(Seq);
maybe_merge_text_seq(Seq) ->
   List = ?seq:to_list(Seq),
   ?seq:from_list(maybe_merge_text_seq(List,[])).

maybe_merge_text_seq([],Acc) ->
   lists:reverse(Acc);
maybe_merge_text_seq([#xqElementNode{expr = []}|T], Acc) ->
   maybe_merge_text_seq([#xqAtomicValue{type = 'xs:untypedAtomic',value = ""}|T],Acc);
maybe_merge_text_seq([#xqElementNode{expr = E}|T], Acc) ->
   maybe_merge_text_seq([E|T],Acc);
maybe_merge_text_seq([#xqAttributeNode{expr = E}|T], Acc) ->
   maybe_merge_text_seq([E|T],Acc);
maybe_merge_text_seq([#xqCommentNode{expr = E}|T], Acc) ->
   maybe_merge_text_seq([E|T],Acc);
maybe_merge_text_seq([#xqProcessingInstructionNode{expr = E}|T], Acc) ->
   maybe_merge_text_seq([E|T],Acc);
maybe_merge_text_seq([#xqTextNode{expr = E}|T], Acc) ->
   maybe_merge_text_seq([E|T],Acc);
maybe_merge_text_seq([#xqAtomicValue{} = H1,#xqAtomicValue{} = H2|T], Acc) ->
   St1 = xqerl_types:value(xqerl_types:string_value(H1)),
   St2 = xqerl_types:value(xqerl_types:string_value(xqerl_types:cast_as(H2, 'xs:untypedAtomic'))),
   Str3 = lists:concat([St1," ",St2]),
   maybe_merge_text_seq([#xqAtomicValue{type = 'xs:untypedAtomic', value = Str3}|T], Acc);
maybe_merge_text_seq([#xqAtomicValue{type = Type} = H|T], Acc) when Type =/= 'xs:untypedAtomic' ->
   maybe_merge_text_seq([xqerl_types:cast_as(H, 'xs:untypedAtomic')|T],Acc);
maybe_merge_text_seq([H|T], Acc) ->
   case ?seq:is_sequence(H) of
      true ->
         case ?seq:is_empty(H) of
            true ->
               maybe_merge_text_seq([#xqAtomicValue{type = 'xs:untypedAtomic',value = ""}|T], Acc);
            _ ->
               maybe_merge_text_seq(?seq:to_list(H) ++ T, Acc)
         end;
      _ ->
         maybe_merge_text_seq(T, [H|Acc])
   end.



merge_text_content([]) ->
   [];
merge_text_content(Content) when is_list(Content) ->
   L = lists:flatten(Content),
   %?dbg("merging",L),
   merge_text_content(L, []).


merge_text_content([], Acc) ->
   %?dbg(?LINE,Acc),
   lists:reverse(Acc);

merge_text_content([#xqElementNode{expr = Expr}|T], Acc) ->
   E1 = if Expr == [] ->
              [#xqAtomicValue{type = 'xs:untypedAtomic', value = ""}];
           is_list(Expr) ->
              Expr;
           true ->
             [Expr]
        end,
   merge_text_content(E1++T, Acc);
merge_text_content([#xqCommentNode{expr = Expr}|T], Acc) ->
   E1 = if is_list(Expr) ->
              Expr;
           true ->
             [Expr]
        end,
   merge_text_content(E1++T, Acc);
merge_text_content([#xqTextNode{expr = Expr}|T], Acc) ->
   E1 = if is_list(Expr) ->
              Expr;
           true ->
             [Expr]
        end,
   merge_text_content(E1++T, Acc);
merge_text_content([#xqProcessingInstructionNode{expr = Expr}|T], Acc) ->
   E1 = if is_list(Expr) ->
              Expr;
           true ->
             [Expr]
        end,
   merge_text_content(E1++T, Acc);

merge_text_content([#xqAtomicValue{type = Type} = H|T], Acc) when Type =/= 'xs:string' ->
   NewH = xqerl_types:cast_as(H, 'xs:string'),
   merge_text_content([NewH|T], Acc);
merge_text_content([#xqAtomicValue{} = H1,#xqAtomicValue{} = H2|T], Acc) ->
   St1 = xqerl_types:value(xqerl_types:string_value(H1)),
   St2 = xqerl_types:value(xqerl_types:string_value(xqerl_types:cast_as(H2, 'xs:string'))),
   Str3 = St1 ++ St2,
   merge_text_content([#xqAtomicValue{type = 'xs:string', value = Str3}|T], Acc);

merge_text_content([#xqAtomicValue{type = Type, value = _Val} = Expr], Acc) when Type == 'xs:string' ->
   merge_text_content([], [Expr|Acc]);

merge_text_content([#xqAtomicValue{} = H1,#xqElementNode{expr = Expr}|T], Acc) ->
   ?dbg(?LINE, Expr),
   E1 = if Expr == [] ->
              [#xqAtomicValue{type = 'xs:untypedAtomic', value = ""}];
           is_list(Expr) ->
              Expr;
           true ->
             [Expr]
        end,
   merge_text_content([H1|E1]++T, Acc);
merge_text_content([#xqAtomicValue{} = H1,#xqAttributeNode{expr = Expr}|T], Acc) ->
   E1 = if is_list(Expr) ->
              Expr;
           true ->
             [Expr]
        end,
   merge_text_content([H1|E1]++T, Acc);
merge_text_content([#xqAtomicValue{} = H1,#xqCommentNode{expr = Expr}|T], Acc) ->
   E1 = if is_list(Expr) ->
              Expr;
           true ->
             [Expr]
        end,
   merge_text_content([H1|E1]++T, Acc);
merge_text_content([#xqAtomicValue{} = H1,#xqTextNode{expr = Expr}|T], Acc) ->
   E1 = if is_list(Expr) ->
              Expr;
           true ->
             [Expr]
        end,
   merge_text_content([H1|E1]++T, Acc);
merge_text_content([#xqAtomicValue{} = H1,#xqProcessingInstructionNode{expr = Expr}|T], Acc) ->
   E1 = if is_list(Expr) ->
              Expr;
           true ->
             [Expr]
        end,
   merge_text_content([H1|E1]++T, Acc);

merge_text_content([#xqAtomicValue{value = S1} = H1, H2|T], Acc) ->
   case ?seq:is_sequence(H2) of
      true ->
         #xqSeqType{type = Type} = ?seq:get_seq_type(H2),
         if ?anySimpleType(Type) ->
               St2 = xqerl_types:value(xqerl_types:string_value(H2)),
               Str3 = ?str(S1 ++ St2),
               merge_text_content([Str3|T], Acc);
            true ->
               H3 = maybe_merge_text_seq(H2),
               St2 = xqerl_types:value(xqerl_types:string_value(H3)),
               Str3 = ?str(S1 ++ St2),
               merge_text_content([Str3|T], Acc)
            end;
      _ ->
         H3 = maybe_merge_text_seq(H2),
         St2 = xqerl_types:value(xqerl_types:string_value(H3)),
         Str3 = ?str(S1 ++ St2),
         merge_text_content([Str3|T], Acc)
   end;

merge_text_content([H1, #xqAtomicValue{} = H2|T], Acc) ->
   case ?seq:is_sequence(H1) of
      true ->
         #xqSeqType{type = Type} = ?seq:get_seq_type(H1),
         if ?anySimpleType(Type) ->
               Str = xqerl_types:string_value(H1),
               Node = #xqTextNode{expr = ?str(Str)},
               merge_text_content([Node,H2|T], Acc);
            true ->
               H3 = maybe_merge_text_seq(H1),
               St2 = xqerl_types:value(xqerl_types:string_value(H3)),
               merge_text_content([?str(St2),H2|T], Acc)
            end;
      _ ->
         H3 = maybe_merge_text_seq(H1),
         St2 = xqerl_types:value(xqerl_types:string_value(H3)),
         S1 = xqerl_types:string_value(H2),
         Str3 = ?str(St2 ++ S1),
         merge_text_content([Str3|T], Acc)
   end;

merge_text_content([#xqTextNode{expr = S1},#xqTextNode{expr = S2}|T], Acc) ->
   St1 = xqerl_types:value(xqerl_types:string_value(S1)),
   St2 = xqerl_types:value(xqerl_types:string_value(S2)),
   Str3 = ?str(St2 ++ St1),
   Node = ?str(Str3),
   merge_text_content([Node|T], Acc);

merge_text_content([#xqNode{frag_id = F, identity = I}|T], Acc) ->
   Doc = xqerl_context:get_available_document(F),
   Content = build_contents(I, Doc),
   merge_text_content(Content ++ T, Acc);

merge_text_content([#xqDocumentNode{expr = E}|T], Acc) ->
   merge_text_content([E|T], Acc);
merge_text_content([#xqElementNode{expr = E}|T], Acc) ->
   if E == [] ->
         merge_text_content([#xqAtomicValue{type = 'xs:untypedAtomic', value = ""}|T], Acc);
      true ->
         merge_text_content([E|T], Acc)
   end;
merge_text_content([#xqAttributeNode{expr = E}|T], Acc) ->
   merge_text_content([E|T], Acc);

merge_text_content([H|T], Acc) ->
   %?dbg(?LINE,H),
   case ?seq:is_sequence(H) of
      true ->
         #xqSeqType{type = Type} = ?seq:get_seq_type(H),
         if ?anySimpleType(Type) ->
               Str = xqerl_types:string_value(H),
               merge_text_content([#xqTextNode{expr = ?str(Str)}|T], Acc);
            true ->
               H3 = maybe_merge_text_seq(H),
               %?dbg(?LINE,H3),
               St2 = xqerl_types:value(xqerl_types:string_value(H3)),
               %?dbg(?LINE,St2),
               merge_text_content([?str(St2)|T], Acc)
            end;
      _ ->
         H3 = maybe_merge_text_seq(H),
         St2 = xqerl_types:value(xqerl_types:string_value(H3)),
         merge_text_content([?str(St2)|T], Acc)
   end.



%%%%% save these for update facility  
%% append(Doc1, Doc2) ->
%%    Shift = gb_trees:size(Doc1),
%%    Iter = gb_trees:iterator(Doc2),
%%    do_append(Doc1,Iter,Shift).
%% 
%% do_append(Doc,Iter,Shift) ->
%%    case gb_trees:next(Iter) of
%%       none ->
%%          Doc;
%%       {K,V,I} ->
%%          K1 = K + Shift,
%%          V1 = 
%%             case V of
%%                #xqXmlFragment{identity = Id, children = C} -> V#xqXmlFragment{identity = Id + Shift, children = shift_children(Shift,C)};
%%                #xqDocumentNode{identity = Id, children = C} -> V#xqDocumentNode{identity = Id + Shift, children = shift_children(Shift,C)};
%%                #xqElementNode{identity = Id, parent_node = P, children = C} -> V#xqElementNode{identity = Id + Shift, parent_node = P + Shift, children = shift_children(Shift,C)};
%%                #xqAttributeNode{identity = Id, parent_node = P} -> #xqAttributeNode{identity = Id+ Shift, parent_node = P+ Shift};
%%                #xqNamespaceNode{identity = Id, parent_node = P} -> #xqNamespaceNode{identity = Id+ Shift, parent_node = P+ Shift};
%%                #xqProcessingInstructionNode{identity = Id, parent_node = P} -> #xqProcessingInstructionNode{identity = Id+ Shift, parent_node = P+ Shift};
%%                #xqCommentNode{identity = Id, parent_node = P} -> #xqCommentNode{identity = Id+ Shift, parent_node = P+ Shift};
%%                #xqTextNode{identity = Id, parent_node = P} -> #xqTextNode{identity = Id+ Shift, parent_node = P+ Shift}
%%             end,
%%          Doc1 = gb_trees:enter(K1, V1, Doc),
%%          do_append(Doc1,I,Shift)
%%    end.
%% 
%% shift_children(Shift,Children) ->
%%    [C + Shift || C <- Children].



%% child | descendant | attribute | self | 'descendant-or-self' | 'following-sibling' | following | namespace 
%% parent | ancestor | 'preceding-sibling' | preceding | 'ancestor-or-self'
child_ids({Ids, Doc}) when not is_list(Ids) ->
   child_ids({[Ids], Doc});
child_ids({Ids, Doc}) ->
   Children = 
   lists:flatten([case N of
       #xqElementNode{children = C1} ->
          C1;
       #xqDocumentNode{children = C2} ->
          C2;
       #xqXmlFragment{children = C3} ->
          C3
    end ||
    Id <- Ids,
    N <- [gb_trees:get(Id, Doc)],
    is_record(N, xqElementNode) orelse is_record(N, xqDocumentNode) orelse is_record(N, xqXmlFragment)]),
   lists:sort(Children).

descendant_ids({Id, Doc}) ->
   lists:sort(lists:flatten(
      [Did ||
       N <- [gb_trees:get(Id, Doc)],
       is_record(N, xqElementNode) orelse is_record(N, xqDocumentNode),
       Did <- get_descendants(N)])).

ancestor_ids({Id, Doc}) ->
   lists:sort(lists:flatten(ancestor_ids({Id,Doc}, []))).
ancestor_ids({Id,Doc}, Acc) ->
   Par = get_parent_id({Id,Doc}),
   case Par of
      [] ->
         Acc;
      V ->
         ancestor_ids({V,Doc}, [Id|Acc])
   end.  

parent_id({Id, Doc}) ->
   lists:sort(lists:flatten(parent_id({Id,Doc}, []))).
parent_id({Id,Doc}, _Acc) ->
   get_parent_id({Id,Doc}).  

sibling_ids({Id,Doc}) ->
   case get_node_type({Id,Doc}) of
      element ->
         Par = get_parent_id({Id,Doc}),
         case Par of
            [] ->
               [];
            V ->
               lists:sort(child_ids({V,Doc}) -- [Id])
         end;
      _ ->
         []
   end.  

descendant_text({Ids, Doc}) ->
   Txts = lists:flatten(
      [T#xqTextNode.expr ||
       Id <- Ids,
       N <- [gb_trees:get(Id, Doc)],
       is_record(N, xqElementNode) orelse is_record(N, xqDocumentNode),
       Did <- get_descendants(N),
       T <- [gb_trees:get(Did, Doc)],
       is_record(T, xqTextNode) ]),
   %?dbg("descendant_text",Txts),
   NewVal = case length(Txts) of
               1 ->
                  [Txt] = Txts,
                  ?untyp(xqerl_types:value(?seq:singleton(Txt) ));
               _ ->
                  V = lists:concat([xqerl_types:value(?seq:singleton(T)) || T <- Txts]),
                  [#xqAtomicValue{type = 'xs:untypedAtomic', value = V}]
            end,
   NewVal.

%% -record(xqAttributeNode, {
%% -record(xqNamespaceNode, {
%% -record(xqProcessingInstructionNode, {
%% -record(xqCommentNode, {
%% -record(xqTextNode, {


%% get_parent(N) ->
%%    case N of
%%       #xqElementNode{parent_node = P} ->
%%          P;
%%       #xqAttributeNode{parent_node = P} ->
%%          P;
%%       #xqNamespaceNode{parent_node = P} ->
%%          P;
%%       #xqProcessingInstructionNode{parent_node = P} ->
%%          P;
%%       #xqCommentNode{parent_node = P} ->
%%          P;
%%       #xqTextNode{parent_node = P} ->
%%          P;
%%       X ->
%%          io:format("got: ~p~n",[X]),
%%          []
%%    end.

get_node_id(#xqNode{} = Node) ->
   erlang:phash(Node, 4294967296);
get_node_id(_NonNode) ->
   xqerl_error:error('XPTY0004').

get_node_children(#xqNode{frag_id = F, identity = Id}) ->
   Doc = xqerl_context:get_available_document(F),
   child_ids({Id, Doc});
get_node_children(_NonNode) ->
   xqerl_error:error('XPTY0004').

get_node([#xqNode{frag_id = F, identity = Id}]) ->
   Doc = xqerl_context:get_available_document(F),
   gb_trees:get(Id, Doc);
get_node(#xqNode{frag_id = F, identity = Id}) ->
   Doc = xqerl_context:get_available_document(F),
   gb_trees:get(Id, Doc);
get_node({Id,Doc}) ->
   gb_trees:get(Id, Doc).


get_node_name(#xqNode{frag_id = F, identity = Id}) ->
   Doc = xqerl_context:get_available_document(F),
   get_node_name({Id,Doc});
get_node_name({Id,Doc}) ->
   case gb_trees:get(Id, Doc)  of
      #xqElementNode{name = Nm} ->
                  Nm;
      #xqAttributeNode{name = Nm} ->
                  Nm;
      #xqProcessingInstructionNode{name = Nm} ->
                  Nm;
      #xqNamespaceNode{name = #qname{prefix = P}} ->
         #qname{local_name = P};
      _ ->
         []
   end;
get_node_name(_NonNode) -> xqerl_error:error('XPTY0004').

%% get_node_type({Sz,_} = X) when is_integer(Sz), Sz >= 1 ->
%%    #xqSeqType{type = Type} = get_seq_type(X),
%%    Type;
get_node_type(#xqNode{frag_id = F, identity = Id}) ->
   Doc = xqerl_context:get_available_document(F),
   %?dbg("Doc",Doc),
   %?dbg("Doc",F),
   get_node_type({Id,Doc});
get_node_type({Id,Doc}) ->
   case gb_trees:get(Id, Doc)  of
      #xqDocumentNode{} -> 'document-node';
      #xqElementNode{} -> element;
      #xqTextNode{} -> text;
      #xqCommentNode{} -> comment;
      #xqNamespaceNode{} -> namespace;
      #xqProcessingInstructionNode{} -> 'processing-instruction';
      #xqAttributeNode{} -> attribute;
      #xqXmlFragment{} -> fragment;
      _ ->
         'empty-sequence' % the fragment that isn't document
   end;
get_node_type(#xqDocumentNode{}) -> 'document-node';
get_node_type(#xqElementNode{}) -> element;
get_node_type(#xqTextNode{}) -> text;
get_node_type(#xqCommentNode{}) -> comment;
get_node_type(#xqNamespaceNode{}) -> namespace;
get_node_type(#xqNamespace{}) -> namespace; % kludge
get_node_type(#xqProcessingInstructionNode{}) -> 'processing-instruction';
get_node_type(#xqAttributeNode{}) -> attribute.

get_parent_id({[Id],Doc}) ->
   get_parent_id({Id,Doc});
get_parent_id({Id,Doc}) ->
   Node = gb_trees:get(Id, Doc), 
   case Node of
      #xqDocumentNode{} -> [];
      #xqElementNode{}  -> [Node#xqElementNode.parent_node];
      #xqTextNode{}     -> [Node#xqTextNode.parent_node];
      #xqCommentNode{}  -> [Node#xqCommentNode.parent_node];
      #xqNamespaceNode{}-> [Node#xqNamespaceNode.parent_node];
      #xqProcessingInstructionNode{} -> [Node#xqProcessingInstructionNode.parent_node];
      #xqAttributeNode{}-> [Node#xqAttributeNode.parent_node];
      _ ->
         []
   end.





get_descendants(N) ->
{Id,Cnt} =  case N of
               #xqElementNode{identity = I, desc_count = C} ->
                  {I,C};
               #xqDocumentNode{identity = I, desc_count = C} ->
                  {I,C}%;
               %_ ->
               %   {-1,0}
            end,
   lists:seq(Id + 1, Id + Cnt).



atomize_nodes([List]) ->
   atomize_nodes(List);
atomize_nodes(List) ->
   Nodes = case ?seq:is_sequence(List) of
              true ->
                 ?seq:to_list(List);
              _ ->
                 if is_list(List) ->
                       List;
                    true ->
                       [List]
                 end
           end,
   %?dbg("Nodes",Nodes),
   ?seq:from_list
      (lists:map(fun(Li) ->
                       atomize_nodes1(Li)
                 end, Nodes)).

atomize_nodes1(Node) ->
   An = atomize_node(Node),
   %Str = xqerl_types:cast_as(An,'xs:untypedAtomic'),
   %?dbg("atomize_nodes Str",Str),
   R = case An of
      #xqAtomicValue{} ->
         ?seq:singleton(An);
      Other ->
         %?dbg("Other",Other),
         ?seq:from_list(Other)
   end,
   %?dbg("R",R),
   R.

atomize_node(#xqAtomicValue{} = Av) ->
   %?dbg("atomize_node xqAtomicValue",Av),
   Av;

atomize_node(#xqNode{frag_id = F, identity = Id}) ->
   Doc = xqerl_context:get_available_document(F),
   Str = atomize_node({Id,Doc}),
   %?dbg("atomize_node Str",Str),
   Str;
atomize_node({Id,Doc}) ->
   Node = gb_trees:get(Id, Doc),
   %?dbg("Node",Node),
   StrVal = case Node of
               #xqDocumentNode{} -> descendant_text({[Id], Doc});
               #xqElementNode{} -> descendant_text({[Id], Doc});
               #xqAttributeNode{expr = S} -> ?untyp(xqerl_types:string_value(S));
               #xqNamespaceNode{name = #qname{namespace = S}} -> ?str(S);
               #xqNamespace{namespace = S} -> ?str(S);
               #xqProcessingInstructionNode{expr = S} -> ?str(string:trim(xqerl_types:string_value(S)));
               #xqCommentNode{expr = S} -> ?str(xqerl_types:string_value(S));
               #xqTextNode{expr = S} -> ?untyp(xqerl_types:string_value(S))
            end,
   %?dbg("atomize_node StrVal",StrVal),
   StrVal;
atomize_node(#xqElementNode{expr = S}) -> atomize_node(S);
atomize_node(#xqAttributeNode{expr = S}) -> ?untyp(xqerl_types:string_value(S));
atomize_node(#xqNamespaceNode{name = #qname{namespace = S}}) -> ?str(S);
atomize_node(#xqNamespace{namespace = S}) -> ?str(S);
atomize_node(#xqProcessingInstructionNode{expr = S}) -> ?str(string:trim(xqerl_types:string_value(S)));
atomize_node(#xqCommentNode{expr = S}) -> ?str(xqerl_types:string_value(S));
atomize_node(#xqTextNode{expr = S}) -> ?untyp(xqerl_types:string_value(S));

atomize_node(Seq) ->
   case ?seq:is_sequence(Seq) of
      true ->
         atomize_nodes(Seq);
      _ ->
         Seq
   end.




%% -record(xqDocumentNode, {
%% -record(xqElementNode, {
%% -record(xqAttributeNode, {
%% -record(xqNamespaceNode, {
%% -record(xqProcessingInstructionNode, {
%% -record(xqCommentNode, {
%% -record(xqTextNode, {


nodes_equal({#xqDocumentNode{identity = Id1, children = _C1}, Doc1},
            {#xqDocumentNode{identity = Id2, children = _C2}, Doc2}) ->
   Nodes1 = get_comparable_child_nodes({Id1, Doc1}),
   Nodes2 = get_comparable_child_nodes({Id2, Doc2}),
   length(Nodes1) == length(Nodes2)
   andalso
   lists:all(fun({Ci1,Ci2}) ->
                   nodes_equal({Ci1, Doc1},{Ci2, Doc2})
             end, lists:zip(Nodes1, Nodes2));

nodes_equal({#xqElementNode{identity = Id1, children = _C1, name = Q1}, Doc1},
            {#xqElementNode{identity = Id2, children = _C2, name = Q2}, Doc2}) ->
   ?seq:singleton_value(
     xqerl_operators:equal(#xqAtomicValue{type = 'xs:QName', value = Q1},
                           #xqAtomicValue{type = 'xs:QName', value = Q2})) == ?bool(true)
  andalso
   attributes_equal(get_attribute_nodes({Id1, Doc1}),
                    get_attribute_nodes({Id2, Doc2}))
  andalso
   begin
      Nodes1 = get_comparable_child_nodes({Id1, Doc1}),
      Nodes2 = get_comparable_child_nodes({Id2, Doc2}),
      %?dbg("{Nodes1,Nodes2}",{Nodes1,Nodes2}),
      length(Nodes1) == length(Nodes2)
      andalso
      lists:all(fun({Ci1,Ci2}) ->
                      nodes_equal({Ci1, Doc1},{Ci2, Doc2})
                end, lists:zip(Nodes1, Nodes2))      
   end;

nodes_equal({#xqAttributeNode{name = Q1, expr = E1}, _Doc1},
            {#xqAttributeNode{name = Q2, expr = E2}, _Doc2}) ->
   %?dbg("{E1,E2}",{E1,E2}),
   %?dbg("{Q1,Q2}",{Q1,Q2}),
   ?seq:singleton_value(
     xqerl_operators:equal(#xqAtomicValue{type = 'xs:QName', value = Q1},
                           #xqAtomicValue{type = 'xs:QName', value = Q2})) == ?bool(true)
  andalso
     % E1 == E2 to catch [] == []
   (E1 == E2 orelse ?seq:singleton_value(xqerl_operators:equal(E1,E2)) == ?bool(true));

nodes_equal({#xqProcessingInstructionNode{name = Q1, expr = V1}, _Doc1},
            {#xqProcessingInstructionNode{name = Q2, expr = V2}, _Doc2}) ->
   ?seq:singleton_value(
   xqerl_operators:equal(#xqAtomicValue{type = 'xs:QName', value = Q1},
                         #xqAtomicValue{type = 'xs:QName', value = Q2})) == ?bool(true)
   andalso 
   ?seq:singleton_value(xqerl_operators:equal(V1,V2)) == ?bool(true);

nodes_equal({#xqNamespaceNode{name = Q1}, _Doc1},
            {#xqNamespaceNode{name = Q2}, _Doc2}) ->
   ?seq:singleton_value(
   xqerl_operators:equal(#xqAtomicValue{type = 'xs:QName', value = Q1},
                         #xqAtomicValue{type = 'xs:QName', value = Q2})) == ?bool(true);

nodes_equal({#xqCommentNode{expr = V1}, _Doc1},
            {#xqCommentNode{expr = V2}, _Doc2}) ->
   ?seq:singleton_value(xqerl_operators:equal(V1,V2)) == ?bool(true);

nodes_equal({#xqTextNode{expr = V1}, _Doc1},
            {#xqTextNode{expr = V2}, _Doc2}) ->
   ?seq:singleton_value(xqerl_operators:equal(V1,V2)) == ?bool(true);

% mixed types, no attributes
nodes_equal({#xqDocumentNode{},_},_) -> false;
nodes_equal({#xqElementNode{},_},_) -> false;
nodes_equal({#xqProcessingInstructionNode{},_},_) -> false;
nodes_equal({#xqNamespaceNode{},_},_) -> false;
nodes_equal({#xqCommentNode{},_},_) -> false;
nodes_equal({#xqTextNode{},_},_) -> false;

nodes_equal(#xqNode{frag_id = F1, identity = I1},#xqNode{frag_id = F1, identity = I1}) ->
   ?bool(true);
nodes_equal(#xqNode{frag_id = F1, identity = I1},#xqNode{frag_id = F2, identity = I2}) ->
   D1 = xqerl_context:get_available_document(F1),
   D2 = xqerl_context:get_available_document(F2),
   N1 = gb_trees:get(I1, D1),
   N2 = gb_trees:get(I2, D2),
   Eq = nodes_equal({N1, D1},{N2, D2}),
   %?dbg("Eq",Eq),
   ?bool(Eq).

% takes actual nodes, not ids
attributes_equal([], []) -> 
   true;
attributes_equal(Atts1, Atts2) ->
   length(Atts1) == length(Atts2) 
   andalso
   lists:all(
       fun(#xqAttributeNode{name = Q1, expr = V1}) ->
            lists:any(
                 fun(#xqAttributeNode{name = Q2, expr = V2}) ->
                       Names =   xqerl_operators:equal(
                                   #xqAtomicValue{type = 'xs:QName', value = Q1},
                                   #xqAtomicValue{type = 'xs:QName', value = Q2}) == ?bool(true),
                       Val = ?seq:singleton_value(xqerl_operators:equal(V1,V2)),
                       Values = (Val == ?bool(true) orelse Val == []),
                       Names andalso Values
                 end, Atts2)
       end, Atts1).

get_attribute_nodes({Id, Doc}) ->
   [Child ||
    C <- child_ids({[Id], Doc}),
    Child <- [gb_trees:get(C, Doc)],
    is_record(Child, xqAttributeNode)].

get_namespace_nodes({Id, Doc}) ->
   [Child ||
    C <- child_ids({[Id], Doc}),
    Child <- [gb_trees:get(C, Doc)],
    is_record(Child, xqNamespaceNode)].

get_nonattribute_nodes({Id, Doc}) ->
   Ch = 
   [Child ||
    C <- lists:sort(child_ids({[Id], Doc})),
    Child <- [gb_trees:get(C, Doc)],
    not is_record(Child, xqAttributeNode),
    not is_record(Child, xqNamespaceNode)],
   %?dbg("Ch",{Ch,Id}),
   Ch.

get_comparable_child_nodes({Id, Doc}) ->
   [Child ||
    C <- lists:sort(child_ids({[Id], Doc})),
    Child <- [gb_trees:get(C, Doc)],
    not is_record(Child, xqAttributeNode),
    not is_record(Child, xqNamespaceNode),
    not is_record(Child, xqCommentNode),
    not is_record(Child, xqProcessingInstructionNode)].


to_xml1([],_) -> [];
to_xml1([#xqNode{} = H|T],node) ->
   [to_xml(H)|to_xml1(T,node)];
to_xml1([#xqNode{} = H|T],_) ->
   [to_xml(H)|to_xml1(T,node)];
to_xml1([#xqAtomicValue{} = H|T],atomic) ->
   [" ",to_xml(H)|to_xml1(T,atomic)];
to_xml1([#xqAtomicValue{} = H|T],_) ->
   [to_xml(H)|to_xml1(T,atomic)];
to_xml1([H|T],_) ->
   %?dbg("to_xml1",H),
   [to_xml(H)|to_xml1(T,atomic)].


to_xml({Id,Doc}) ->
   %?dbg("Doc",Doc),
   Node = gb_trees:get(Id, Doc),
   InUseNamespaces   = [{"",'no-namespace'},
                        {"xml","http://www.w3.org/XML/1998/namespace"}],
   InScopeNamespaces = InUseNamespaces,
   to_xml(Node, Doc, InUseNamespaces, InScopeNamespaces);
to_xml(#xqError{} = E) ->
   E;
to_xml(N) when is_list(N) ->
   M = combine_atomics(N,[]),
   lists:flatmap(fun to_xml/1,M);
to_xml(#xqNode{frag_id = F, identity = Id}) ->
   Doc = xqerl_context:get_available_document(F),
   %?dbg("Doc",Doc),
   Node = gb_trees:get(Id, Doc),
   InUseNamespaces   = [{"",'no-namespace'},
                        {"xml","http://www.w3.org/XML/1998/namespace"}],
   InScopeNamespaces = InUseNamespaces,
   to_xml(Node, Doc, InUseNamespaces, InScopeNamespaces);
to_xml(#xqAtomicValue{} = A) -> xqerl_types:string_value(A);
to_xml(Seq) ->
   case ?seq:is_sequence(Seq) of
      true ->
         case ?seq:size(Seq) of
            1 ->
               to_xml(?seq:singleton_value(Seq));
            _ ->
               to_xml(?seq:to_list(Seq))
         end;
      _ ->
         Seq
   end.

combine_atomics([], Acc) ->
   lists:reverse(Acc);
combine_atomics([#xqAtomicValue{} = H1,#xqAtomicValue{} = H2|T], Acc) ->
   St1 = xqerl_types:value(xqerl_types:string_value(H1)),
   St2 = xqerl_types:value(xqerl_types:string_value(xqerl_types:cast_as(H2, 'xs:string'))),
   Str3 = lists:concat([St1," ",St2]),
   combine_atomics([#xqAtomicValue{type = 'xs:string', value = Str3}|T], Acc);
combine_atomics([H|T], Acc) ->
   combine_atomics(T, [H|Acc]).


maybe_add_ns(List, Namespaces, InUseNamespaces) when is_list(List) ->
   List1 = lists:filter(fun(#qname{namespace = Ns, prefix = Px}) ->
                              if Px == "xml" ->
                                    false;
                                 true ->
                                    case proplists:get_value(Px, InUseNamespaces) of
                                       undefined ->
                                          true;
                                       Val ->
                                          Val =/= Ns
                                    end
                              end;
                           (#xqNamespace{namespace = Ns3,prefix = Px3}) ->
                              case proplists:get_value(Px3, InUseNamespaces) of
                                 undefined ->
                                    false;
                                 Val ->
                                    Val =/= Ns3
                              end
                        end, lists:usort(List)),
   %?dbg("maybe_add_ns",List1),
   lists:foldl(fun(Q,A) ->
                   maybe_add_ns(Q,A)  
               end, Namespaces, List1).

maybe_add_ns(#xqNamespace{namespace = Ns,prefix = Px}, Namespaces) ->
   InList = lists:any(fun(#xqNamespaceNode{name = #qname{namespace = Ns1, prefix = Px1}}) ->
                            Px == Px1 andalso Ns == Ns1
                      end, Namespaces),
   if InList -> 
         Namespaces;
      true ->
         [#xqNamespaceNode{name = #qname{namespace = Ns, prefix = Px}}|Namespaces]
   end;
maybe_add_ns(#qname{namespace = Ns, prefix = Px}, Namespaces) ->
   InList = lists:any(fun(#xqNamespaceNode{name = #qname{namespace = Ns1, prefix = Px1}}) ->
                            Px == Px1 andalso Ns == Ns1
                      end, Namespaces),
   if InList -> 
         Namespaces;
      true ->
         [#xqNamespaceNode{name = #qname{namespace = Ns, prefix = Px}}|Namespaces]
   end.

add_inuse_namespaces(NodeList, InUseNamespaces) ->
   Fun = fun(#xqNamespaceNode{name = #qname{namespace = Ns, prefix = Px}}, Acc) ->
               lists:keystore(Px, 1, Acc, {Px,Ns})
         end,
   lists:foldl(Fun, InUseNamespaces, NodeList).

%TODO inherit namespace, preserve whitespace
to_xml(#xqXmlFragment{children = Children}, Doc, InUseNamespaces, InScopeNamespaces) ->
   lists:flatmap(fun(C) ->
                   Node = gb_trees:get(C, Doc),
                   to_xml(Node,Doc,InUseNamespaces, InScopeNamespaces)
             end, lists:sort(Children));
to_xml(#xqDocumentNode{children = Children}, Doc, InUseNamespaces, InScopeNamespaces) ->
   lists:flatmap(fun(C) ->
                   Node = gb_trees:get(C, Doc),
                   to_xml(Node,Doc,InUseNamespaces, InScopeNamespaces)
             end, lists:sort(Children));

to_xml(#xqElementNode{identity = Id, name = QName, inscope_ns = IsNs}, Doc, InUseNamespaces, _InScopeNamespaces) ->
   %?dbg("IsNs",IsNs),
   % inscope namespaces can override those that were in scope and use.
   Atts = get_attribute_nodes({Id,Doc}),
   % all QNames in use on this element
   QNames = lists:foldl(fun(#xqAttributeNode{name = AQName},Acc) ->
                              [AQName|Acc];
                           (#xqNamespace{} = Ns3,Acc) ->
                              [Ns3|Acc]
                        end, [QName], Atts ++ IsNs),
   % real nodes that will be printed if in use or not
   NSps = get_namespace_nodes({Id,Doc}), 
   % used namespaces and nodes to add
   NSps1 = maybe_add_ns(QNames,NSps, InUseNamespaces),
   %?dbg("QNames",QNames),
   %?dbg("NSps",NSps),
   %?dbg("NSps1",NSps1),
   %?dbg("InUseNamespaces",InUseNamespaces),
   % new in use list
   InUseNamespaces1 = add_inuse_namespaces(NSps1, InUseNamespaces),
   
   Children = get_nonattribute_nodes({Id,Doc}),
   NspStr = lists:flatmap(fun(Ns) ->
                                to_xml(Ns, Doc, [],[])
                          end, NSps1),
   AttStr = lists:flatmap(fun(Att) ->
                                to_xml(Att, Doc, InUseNamespaces1,InUseNamespaces1)
                          end, Atts),
   ChldStr = lists:flatmap(fun(C) ->
                                 to_xml(C,Doc,InUseNamespaces1,InUseNamespaces1)
                           end, Children),
   %?dbg("NspStr",NspStr),
   if ChldStr == [] ->
         "<" ++ ser_qname(QName) ++ NspStr ++ AttStr ++ "/>";
      true ->
         "<" ++ ser_qname(QName) ++ NspStr ++ AttStr ++ ">" ++ ChldStr ++ "</" ++ ser_qname(QName) ++ ">" 
   end;

to_xml(#xqAttributeNode{name = QName, expr = Str}, _Doc, _InUseNamespaces, _InScopeNamespaces) ->
   StrV = xqerl_types:string_value(Str),
   " " ++ ser_qname(QName) ++ "=\"" ++ encode_att_text(StrV) ++ "\"";

to_xml(#xqProcessingInstructionNode{name = Qn, expr = Val}, _Doc, _InUseNamespaces, _InScopeNamespaces) ->
   Local = Qn#qname.local_name,
   Txt = encode_text(xqerl_types:string_value(Val)),
   if Txt == "" ->
         "<?" ++ Local ++ "?>";
      true ->
         "<?" ++ Local ++ " " ++ Txt ++ "?>"
   end;

to_xml(#xqNamespaceNode{name = #qname{namespace = _Ns, prefix = "xml"}}, _Doc, _InUseNamespaces, _InScopeNamespaces) -> "";
to_xml(#xqNamespaceNode{name = #qname{namespace = Ns, prefix = Px}}, _Doc, _InUseNamespaces, _InScopeNamespaces) ->
   %?dbg("{Ns,Px}",{Ns,Px}),
   Ns1 = if Ns == 'no-namespace' ->
               "";
            Ns == 'undefined' ->
               "";
            true ->
               encode_att_text(Ns)
         end,
   " " ++ 
   if is_atom(Px) orelse Px == "" ->
         "xmlns";
      true ->
         "xmlns:" ++ Px
   end ++ "=\"" ++ Ns1 ++ "\"";
to_xml(#xqCommentNode{expr = Val}, _Doc, _InUseNamespaces, _InScopeNamespaces) ->
   "<!--" ++ xqerl_types:value(xqerl_types:string_value(Val)) ++ "-->";
to_xml(#xqTextNode{expr = Val}, _Doc, _InUseNamespaces, _InScopeNamespaces) ->
   encode_text(xqerl_types:value(xqerl_types:string_value(Val)));
to_xml(Node, _Doc, _InUseNamespaces, _InScopeNamespaces) ->
   ?dbg("to_xml OTHER",Node),
   Node.


%% nodes_equal({#xqDocumentNode{},_},_) -> false;
%% nodes_equal({#xqElementNode{},_},_) -> false;
%% nodes_equal({#xqAttributeNode{},_},_) -> false;
%% nodes_equal({#xqProcessingInstructionNode{},_},_) -> false;
%% nodes_equal({#xqNamespaceNode{},_},_) -> false;
%% nodes_equal({#xqCommentNode{},_},_) -> false;
%% nodes_equal({#xqTextNode{},_},_) -> false;

encode_text([]) ->
   [];
encode_text("<"++Tail) ->
   "&lt;"++encode_text(Tail);
encode_text(">"++Tail) ->
   "&gt;"++encode_text(Tail);
encode_text("&"++Tail) ->
   "&amp;"++encode_text(Tail);
encode_text([H|Tail]) when H >= 255 ->
   "&#"++integer_to_list(H)++";"++encode_text(Tail);
encode_text([H|Tail]) ->
   [H|encode_text(Tail)].

encode_att_text([]) ->
   [];
encode_att_text([H|Tail]) when H >= 255;
                               H == 9;
                               H == 10;
                               H == 13 ->
   "&#"++integer_to_list(H)++";"++encode_att_text(Tail);
encode_att_text("\""++Tail) ->
   "&quot;"++encode_att_text(Tail);
encode_att_text("<"++Tail) ->
   "&lt;"++encode_att_text(Tail);
encode_att_text(">"++Tail) ->
   "&gt;"++encode_att_text(Tail);
encode_att_text("&"++Tail) ->
   "&amp;"++encode_att_text(Tail);
encode_att_text("{"++Tail) ->
   "{{"++encode_att_text(Tail);
encode_att_text("}"++Tail) ->
   "}}"++encode_att_text(Tail);
encode_att_text([H|Tail]) ->
   [H|encode_att_text(Tail)].


ser_qname(#qname{prefix = Px, local_name = Ln}) ->
   if is_atom(Px) orelse Px == "" ->
         "";
      true ->
         Px ++ ":" 
   end ++ Ln.

has_bad_namespaces(NameSpaceNodes) ->
   Namespaces = [{P,xqerl_types:value(N)} || #xqNamespaceNode{name=#qname{namespace = N, prefix = P}} <- NameSpaceNodes],
   %?dbg("has_bad_namespaces",Namespaces),
   Unique = lists:usort(Namespaces),
   Prefixes = lists:usort([P || {P,_} <- Unique]),
   if length(Unique) =/= length(Prefixes) ->
         xqerl_error:error('XQDY0102');
      true ->
         lists:foreach(fun({"xml",Ns}) when Ns =/= "http://www.w3.org/XML/1998/namespace" ->
                             ?dbg("xml",Ns),
                             xqerl_error:error('XQST0070');
                          ({"xmlns",Ns}) when Ns =/= "http://www.w3.org/2000/xmlns/" ->
                             ?dbg("xmlns",Ns),
                             xqerl_error:error('XQST0070');
                          (_) ->
                             []
                       end, Namespaces)
   end.


node_type(element)                  -> 0;
node_type(0)                        -> element;
node_type(attribute)                -> 1;
node_type(1)                        -> attribute;
node_type(text)                     -> 2;
node_type(2)                        -> text;
node_type(namespace)                -> 3;
node_type(3)                        -> namespace;
node_type(document)                 -> 4;
node_type(4)                        -> document;
node_type(comment)                  -> 5;
node_type(5)                        -> comment;
node_type('processing-instruction') -> 6;
node_type(6)                        -> 'processing-instruction'.
