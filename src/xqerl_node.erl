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

-export([get_doc/1]).
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

-export([merge_content/2]).


%%% identity + desc_count == last desc

% ContextMap - 
% last_id
% nodes -> array of record tuples for each known node

new_context(Ctx) ->
   M2 = maps:put(next_node_id, 0, Ctx),
   M3 = maps:put(frag_id, next_frag_id(), M2),
   maps:put(nodes, gb_trees:empty(), M3).

new_fragment({RootId, {1,_}}) when RootId > 0 -> ?seq:empty();
new_fragment({RootId, Doc}) -> 
   Content = build_contents(RootId, Doc),
   Type = get_node_type({RootId,Doc}),
   Expr = if Type == 'document-node' ->
                #xqDocumentNode{expr = Content};
             true ->
                Content
          end,
   % clean context for output
   new_fragment(#{namespaces => [],
                  'base-uri' => [],
                  'copy-namespaces' => {preserve,'no-inherit'}}, Expr ).

% return document {RootId, Doc}
new_fragment(Ctx0, Content) when is_list(Content) ->
   DefaultNs = [Ns || #xqNamespace{prefix = Px} = Ns <- maps:get(namespaces, Ctx0), Px == []],
   %?dbg("new_fragment",maps:get(namespaces, Ctx0)),
   Ctx = new_context(Ctx0),
   {Id,Ctx1} = next_id(Ctx),
   Doc = #xqXmlFragment{identity = Id},
   Ctx2 = add_node(Ctx1, Id, Doc),
   DynNs = [#xqNamespace{namespace = "http://www.w3.org/XML/1998/namespace", prefix = "xml"}|DefaultNs],
   {Children, Sz, Ctx4} = handle_contents(Ctx2, Id, Content, DynNs, 0),
   if Children == [] ->
         ?seq:empty();
      true ->
         Ctx5 = set_node_children(Ctx4, Id, Children, Sz),
         FragId = get_frag_id(Ctx5),
         _ = xqerl_context:add_available_document(FragId, get_nodes(Ctx5)),
         %?dbg("get_nodes(Ctx5)",get_nodes(Ctx5)),
         #xqNode{frag_id = FragId,identity = 1 }
   end;
new_fragment(Ctx0, Content) ->
   new_fragment(Ctx0, [Content]).


can_follow([],_Curr) -> true;
can_follow(element,attribute) -> false;
can_follow(text,attribute) -> false;
can_follow('processing-instruction',attribute) -> false;
can_follow(comment,attribute) -> false;
can_follow(element,namespace) -> false;
can_follow(attribute,namespace) -> false;
%can_follow(_,document) -> false;
can_follow(_,_) -> true.


ensure_qname(#qname{namespace = #xqAtomicValue{} = Nx} = QName, InScopeNamespaces) ->
   NewNx = xqerl_types:string_value(Nx),
   ensure_qname(QName#qname{namespace = NewNx}, InScopeNamespaces);
ensure_qname(#qname{prefix = #xqAtomicValue{value = V} = Nx} = QName, InScopeNamespaces) ->
   try
      if V == [] ->
            ensure_qname(QName#qname{prefix = []}, InScopeNamespaces);
         true ->
            NewNx = xqerl_types:string_value(xqerl_types:cast_as(Nx, 'xs:NCName')),
            ensure_qname(QName#qname{prefix = NewNx}, InScopeNamespaces)
      end
   catch
      _:_ ->
         xqerl_error:error('XQDY0074')
   end;
ensure_qname(#qname{local_name = #xqAtomicValue{} = Nx} = QName, InScopeNamespaces) ->
   try
      NewNx = xqerl_types:string_value(xqerl_types:cast_as(Nx, 'xs:NCName')),
      ensure_qname(QName#qname{local_name = NewNx}, InScopeNamespaces)
   catch
      _:_ ->
         xqerl_error:error('XQDY0074')
   end;

ensure_qname(#qname{namespace = #xqNode{} = Nx} = QName, InScopeNamespaces) ->
   NewNx = xqerl_types:string_value(Nx),
   ensure_qname(QName#qname{namespace = NewNx}, InScopeNamespaces);
ensure_qname(#qname{prefix = #xqNode{} = Nx} = QName, InScopeNamespaces) ->
   try
      NewNx = xqerl_types:string_value(xqerl_types:cast_as(Nx, 'xs:NCName')),
      ensure_qname(QName#qname{prefix = NewNx}, InScopeNamespaces)
   catch
      _:_ ->
         xqerl_error:error('XQDY0074')
   end;
ensure_qname(#qname{local_name = #xqNode{} = Nx} = QName, InScopeNamespaces) ->
   try
      NewNx = xqerl_types:string_value(xqerl_types:cast_as(Nx, 'xs:NCName')),
      ensure_qname(QName#qname{local_name = NewNx}, InScopeNamespaces)
   catch
      _:_ ->
         xqerl_error:error('XQDY0074')
   end;

ensure_qname(#qname{namespace = Ns, prefix = Px, local_name = Ln} = QName, InScopeNamespaces) -> 
   SNs = is_tuple(Ns),
   SPx = is_tuple(Px),
   SLn = is_tuple(Ln),
   Ns1 = if SNs ->
               xqerl_types:string_value(Ns);
            true ->
               Ns
         end,
   Px1 = if SPx ->
               xqerl_types:string_value(Px);
            true ->
               Px
         end,
   Ln1 = if SLn ->
               xqerl_types:string_value(Ln);
            true ->
               Ln
         end,
   if SNs orelse SPx orelse SLn ->
         ensure_qname(#qname{namespace = Ns1, prefix = Px1, local_name = Ln1}, InScopeNamespaces);
      true ->
         QName
   end;

ensure_qname(#xqNode{} = Node, InScopeNamespaces) -> 
   try
      xqerl_types:value(xqerl_types:cast_as(Node,'xs:QName',InScopeNamespaces))
   catch
      _:E ->
         ?dbg("E",E),
         xqerl_error:error('XQDY0074')
   end;
ensure_qname(#xqAtomicValue{type = 'xs:QName', value = QName}, _InScopeNamespaces) -> QName;
ensure_qname(#xqAtomicValue{type = Ty} = At, InScopeNamespaces) when Ty == 'xs:string';
                                                                     Ty == 'xs:untypedAtomic' ->
   try
      xqerl_types:value(xqerl_types:cast_as(At,'xs:QName',InScopeNamespaces))
   catch
      _:E ->
         ?dbg("E",E),
         xqerl_error:error('XQDY0074')
   end;
ensure_qname(#xqAtomicValue{}, _InScopeNamespaces) ->
   xqerl_error:error('XPTY0004');
ensure_qname([H], InScopeNamespaces) ->
   ensure_qname(H, InScopeNamespaces);
ensure_qname(List, InScopeNamespaces) when is_list(List) ->
   case ?seq:from_list(List) of
      [H] ->
         ensure_qname(H, InScopeNamespaces);
      _ ->
         xqerl_error:error('XPTY0004')
   end;
   
ensure_qname(_QName, _InScopeNamespaces) ->
   xqerl_error:error('XPTY0004').
   


%% A namespace binding is created for each namespace declared in the current element constructor by a namespace declaration attribute.
%% A namespace binding is created for each namespace node in the content sequence of the current element constructor.
%% A namespace binding is created for each namespace that is declared in a namespace declaration attribute of an enclosing 
%%   direct element constructor and not overridden by the current element constructor or an intermediate constructor.
%% A namespace binding is always created to bind the prefix xml to the namespace URI http://www.w3.org/XML/1998/namespace.
%% For each prefix used in the name of the constructed element or in the names of its attributes, a namespace binding must exist. 
%%   If a namespace binding does not already exist for one of these prefixes, a new namespace binding is created for it. 
%%   If this would result in a conflict, because it would require two different bindings of the same prefix, then the prefix used 
%%   in the node name is changed to an arbitrary implementation-dependent prefix that does not cause such a conflict, and a 
%%   namespace binding is created for this new prefix. If there is an in-scope default namespace, then a binding is created 
%%   between the empty prefix and that URI.
% return new in-scope namespaces
augment_inscope_namespaces(#xqElementNode{name = #qname{namespace = Ns, prefix = Px}}, InscopeNamespaces) ->
   % contructed names may bring in namepace binding
   NewNs = #xqNamespace{namespace = Ns, prefix = Px},
   AlreadyInScope = lists:member(NewNs, InscopeNamespaces),
   %?dbg("NewNs",NewNs),
   %?dbg("AlreadyInScope",AlreadyInScope),
   %?dbg("InscopeNamespaces",InscopeNamespaces),
   if AlreadyInScope ->
         InscopeNamespaces;
      true -> % new binding
         PxList = [Px1 || #xqNamespace{prefix = Px1} <- InscopeNamespaces],
         PxAlreadyInUse = lists:member(Px, PxList),
         %?dbg("PxList",PxList),
         %?dbg("PxAlreadyInUse",PxAlreadyInUse),
         if Px == [] -> % default override from element
               [NewNs|[Nx || #xqNamespace{prefix = Px1} = Nx <- InscopeNamespaces, Px1 =/= []]];
            not PxAlreadyInUse ->
               [NewNs|InscopeNamespaces];
            true ->
               NewPx = Px ++ "_",
               NewNs1 = NewNs#xqNamespace{prefix = NewPx},
               case lists:member(NewNs1, InscopeNamespaces) of
                  true ->
                     InscopeNamespaces;
                  _ ->
                     [NewNs1|InscopeNamespaces]
               end
         end
   end;
augment_inscope_namespaces(#xqAttributeNode{name = #qname{namespace = Ns, prefix = Px, local_name = Ln}}, InscopeNamespaces) ->
   % attributes in namespaces unknown add the namespace to the inscopes, they do not override prefixes
   % catch overwrites of xml and xmlns namespaces here
   % errors on attribute
   if Px == "xmlns";
      Px == "" andalso Ln == "xmlns";
      Ns == "http://www.w3.org/2000/xmlns/";
      Px == "xml" andalso Ns =/= "http://www.w3.org/XML/1998/namespace";
      Ns == "http://www.w3.org/XML/1998/namespace" andalso Px =/= "xml" ->
         xqerl_error:error('XQDY0044');
      true ->
         ok
   end,
   NewNs = #xqNamespace{namespace = Ns, prefix = Px},
   AlreadyInScope = lists:member(NewNs, InscopeNamespaces),
   %?dbg("NewNs",NewNs),
   %?dbg("AlreadyInScope",AlreadyInScope),
   %?dbg("InscopeNamespaces",InscopeNamespaces),
   if AlreadyInScope ->
         InscopeNamespaces;
      Px == [] andalso Ns == 'no-namespace' ->
         InscopeNamespaces;
      true -> % new binding
         PxList = [Px1 || #xqNamespace{prefix = Px1} <- InscopeNamespaces],
         PxAlreadyInUse = lists:member(Px, PxList),
         %?dbg("PxList",PxList),
         %?dbg("PxAlreadyInUse",PxAlreadyInUse),
         if not PxAlreadyInUse andalso Px =/= [] ->
               [NewNs|InscopeNamespaces];
            true ->
               NewPx = Px ++ "_",
               NewNs1 = NewNs#xqNamespace{prefix = NewPx},
               %?dbg("NewNs1",NewNs1),
               case lists:member(NewNs1, InscopeNamespaces) of
                  true ->
                     InscopeNamespaces;
                  _ ->
                     [NewNs1|InscopeNamespaces]
               end
         end
   end;
augment_inscope_namespaces(#xqNamespaceNode{name = #qname{namespace = Ns, prefix = Px}}, InscopeNamespaces) ->
   % namespace nodes overwrite prefix bindings
   [#xqNamespace{namespace = Ns, prefix = Px}|lists:filter(fun(#xqNamespace{prefix = Px1}) ->
                                                                 Px1 =/= Px
                                                           end, InscopeNamespaces)];
augment_inscope_namespaces(_, InscopeNamespaces) -> InscopeNamespaces.


% returns {Children, Sz, Ctx3}
handle_contents(Ctx, _Parent, [], _Ns, Sz) -> {[], Sz, Ctx};
handle_contents(Ctx, _Parent, [undefined], _Ns, Sz) -> {[], Sz, Ctx};
handle_contents(Ctx, Parent, Content, Ns, Sz) ->
   %?dbg("Parent",Parent),
   %?dbg("Content",Content),
   %dbg("Ns",Ns),
   Content0 = case Content of
                  _ when is_list(Content) ->
                     lists:flatten(Content);
                  C ->
                     [C]
               end,
   Content1 = Content0,
   %Content1 = merge_content(Content0),
   %?dbg("handle_contents Content0",Content0),
   %?dbg("handle_contents Content1",Content1),
   Fun = fun(Node, {Children, Sz1, Ctx1, LastType, _UsedAttNames}) ->
               Type = get_node_type(Node),
               %?dbg("can_follow(LastType,Type)", {LastType,Type}),
               case can_follow(LastType,Type) of
                  false ->
                     xqerl_error:error('XQTY0024');
                  _ ->
                     %?dbg("Ns",Ns),
                     {Id, Sz2,Ctx2} = handle_content(Ctx1, Parent, Node, Ns, Sz1),
                     if is_list(Id) ->
                           {Id ++ Children, Sz2,Ctx2,Type,[]};
                        true ->
                           {[Id|Children], Sz2,Ctx2,Type,[]}
                     end
               end
         end,
   {Ids, Sz3,Ctx3,_Type,_UsedAtts} = lists:foldl(Fun, {[], Sz, Ctx, [], []}, Content1),
   %?dbg(?LINE,Ctx3),
   {Ids, Sz3,Ctx3}.

%% maybe_override_namespace({ENs,EPx},Ns) ->
%%    Overridden = [O || O = #xqNamespace{namespace = NNs, prefix = NPx} <- Ns, EPx == NPx, ENs =/= NNs],
%%    if Overridden == [] ->
%%          Ns;
%%       true ->
%%          Ns -- Overridden ++ [#xqNamespace{namespace = ENs, prefix = EPx}]
%%    end.

check_element_name(#qname{prefix = "xmlns"}) -> 
   xqerl_error:error('XQDY0096');
check_element_name(#qname{namespace = "http://www.w3.org/2000/xmlns/"}) -> 
   xqerl_error:error('XQDY0096');
check_element_name(#qname{namespace = TNs, 
                          prefix = "xml"}) when TNs =/= "http://www.w3.org/XML/1998/namespace" -> 
   xqerl_error:error('XQDY0096');
check_element_name(#qname{namespace = "http://www.w3.org/XML/1998/namespace", 
                          prefix = TPx}) when TPx =/= "xml" -> 
   xqerl_error:error('XQDY0096');
check_element_name(_) ->
   ok.

check_attribute_names(AttributeNodes) ->
   Names = [{Ns,Ln} || #xqAttributeNode{name = #qname{namespace = Ns, local_name = Ln}} <- AttributeNodes],
   %?dbg("Names",Names),
   OK = length(lists:sort(Names)) == length(lists:usort(Names)),
   %?dbg("AttributeNodes",AttributeNodes),
   if OK ->
         ok;
      true ->
         xqerl_error:error('XQDY0025')
   end.
   
ensure_content(undefined) -> [];
ensure_content(Content) when is_list(Content) -> Content;
ensure_content(Content) -> 
   [Content]. % leave sequences alone, they get atomized

merge_inscope_namespaces(OrigNs,NewNs) ->
   %?dbg("OrigNs",OrigNs),
   %?dbg("NewNs",NewNs),
   lists:umerge(lists:usort(OrigNs),lists:usort(NewNs)).

% returns {Id, Sz,Ctx2}
handle_content(Ctx, Parent, #xqElementNode{name = QName,
                                           inscope_ns = ElemNs, 
                                           attributes = Atts, 
                                           expr = Content} = N, InScopeNs0, Sz) ->
   % direct constructors have their namespaces in attributes, constructed are in expr
   BU = maps:get('base-uri', Ctx),
   InScopeNs = merge_inscope_namespaces(ElemNs,InScopeNs0),
   %?dbg("ElemNs",ElemNs),
   %?dbg("InScopeNs0",InScopeNs0),
   {Id,Ctx1} = next_id(Ctx),
   Atts1    = ensure_content(Atts),
   Content0 = ensure_content(Content),
   {CopyNsPreserve,_} = maps:get('copy-namespaces', Ctx),
   Content1 = expand_nodes(Content0,CopyNsPreserve,InScopeNs),
   
   DirectNamespaces = [X || X <- Atts1, is_record(X, xqNamespaceNode)],
   ComputNamespaces = [X || X <- Content1, is_record(X, xqNamespaceNode)],
   % computed namespaces can have expressions for QNames
   ComputNamespaces1 = lists:map(fun(#xqNamespaceNode{name = Q} = NsN) ->
                                     NewQ = ensure_qname(Q, InScopeNs),
                                     NsN#xqNamespaceNode{name = NewQ}
                               end, ComputNamespaces),
   %?dbg("DirectNamespaces",DirectNamespaces),
   %?dbg("ComputNamespaces",ComputNamespaces),
   %?dbg("ComputNamespaces1",ComputNamespaces1),
   ok = check_direct_namespaces(DirectNamespaces),
   ok = check_computed_namespaces(ComputNamespaces1),
   
   %?dbg("xqElementNode Content",Content),
   %?dbg("xqElementNode Content1",Content1),
   %NonNamespaces  =  [X || X <- Atts1 ++ Content1, not is_record(X, xqNamespaceNode)],
   NamespaceNodes =  DirectNamespaces ++ ComputNamespaces1,
   InScopeNs1 = lists:foldl(fun(NsN, Is) ->
                                  augment_inscope_namespaces(NsN, Is)
                            end, InScopeNs, NamespaceNodes),

   AttributeNodes =  [X || X <- Atts1 ++ Content1, is_record(X, xqAttributeNode)],
   AttributeNodes1 = lists:map(fun(#xqAttributeNode{name = Q} = NsN) ->
                                     NewQ = ensure_qname(Q, InScopeNs1),
                                     NsN#xqAttributeNode{name = NewQ}
                               end, AttributeNodes),
   ok = check_attribute_names(AttributeNodes1),
   
   ElemQName = ensure_qname(QName, InScopeNs1),
   InScopeNs2 = augment_inscope_namespaces(N#xqElementNode{name = ElemQName}, InScopeNs1),
   InScopeNs3 = lists:foldl(fun(NsN, Is) ->
                                  augment_inscope_namespaces(NsN, Is)
                            end, InScopeNs2, AttributeNodes1),
   
   %?dbg("InScopeNs3",InScopeNs3),
   %?dbg("Atts1 ++ Content1",Atts1 ++ Content1),
   %?dbg("AttributeNodes1",AttributeNodes1),
   Content2 = merge_content(Ctx, Content1, InScopeNs3), %this will copy in any nodes
   Content3 = Atts1 ++ Content2,
   Content4 = [C || C <- Content3, not is_record(C, xqElementNode)],
   % any new namespaces after merge, from non-elements
   InScopeNs4 = lists:foldl(fun(NsN, Is) ->
                                  augment_inscope_namespaces(NsN, Is)
                            end, InScopeNs3, Content4),
   
   ok = check_computed_default_override(ElemQName, ComputNamespaces1),
   
   ok = check_element_name(ElemQName),
   % base-uri will come from the children
   NewBase = lists:flatten([Uri || #xqAttributeNode{name = #qname{namespace = "http://www.w3.org/XML/1998/namespace", 
                                                                  local_name = "base"}, expr = Uri} <- Content3]),
   %?dbg("NewBase",NewBase),
   %?dbg("xqElementNode Content1",Content1),
   %?dbg("xqElementNode Content2",Content2),
   %?dbg("xqElementNode Content3",Content3),
   BU1 = if NewBase == [] ->
               BU;
            true ->
               case xqerl_lib:resolve_against_base_uri(xqerl_types:value(BU),xqerl_types:value(hd(NewBase)) ) of
                  {absolute, Path} ->
                     ?dbg("{absolute, Path}",Path),
                     #xqAtomicValue{type = 'xs:anyURI', value = Path};
                  {relative, RPath} ->
                     ?dbg("{relative, RPath}",RPath),
                     #xqAtomicValue{type = 'xs:anyURI', value = RPath}
               end
         end,
   ElemQName1 = resolve_namespace(ElemQName, InScopeNs3),
   %?dbg(?LINE,BU1),
   Node = N#xqElementNode{identity = Id, 
                          parent_node = Parent, 
                          name = ElemQName1, 
                          base_uri = BU1,
                          expr = undefined, 
                          attributes = undefined, 
                          inscope_ns = InScopeNs4},
   Ctx2 = (add_node(Ctx1, Id, Node)),
   %?dbg("NamespaceNodes",NamespaceNodes),
   %?dbg("NonNamespaces",NonNamespaces),
   %?dbg("N",N),
   %?dbg("Node",Node),
   {Children, Sz1, Ctx3} = handle_contents(Ctx2#{'base-uri' => BU1}, Id, Content3, InScopeNs3, 0),
   %?dbg("Children",Children),
   Ctx4 = (set_node_children(Ctx3, Id, Children, Sz1)),
   Ctx5 = set_node_base_uri(Ctx4#{'base-uri' => BU1}, [Id|Children]),
   %?dbg(?LINE,Ctx3),
   %?dbg(?LINE,Ctx4),
   %?dbg(?LINE,Ctx5),
   {Id, Sz1 + Sz + 1,Ctx5};

handle_content(Ctx, _Parent, #xqDocumentNode{expr = Content} = N, INs, Sz) ->
   {Id,Ctx1} = next_id(Ctx),
   Content1 = [Content],
   Content2 = merge_content(Ctx, Content1, INs),
   %?dbg("xqElementNode Content2",Content2),
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
   Ctx5 = set_node_base_uri(Ctx4, [Id|Children]),
   {Id, Sz1 + Sz + 1,Ctx5};

handle_content(Ctx, Parent, #xqAttributeNode{name = QName, expr = Content} = N, InScopeNs, Sz) ->
   {Id,Ctx1} = next_id(Ctx),
   Content2 = merge_text_content(Content),
   %?dbg("Content",Content),
   AttQName = ensure_qname(QName, InScopeNs),
   InScopeNs1 = augment_inscope_namespaces(N#xqAttributeNode{name = AttQName}, InScopeNs),
   Expr0 = Content2,
   %?dbg("Content2",Content2),
   %?dbg("N",N),
   %?dbg("Expr0",Expr0),
   AttQName1 = resolve_attribute_namespace(AttQName, InScopeNs1),
   %?dbg("AttQName1",AttQName1),
   Expr = case AttQName1 of
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
             _ ->
                Expr0
          end,
   %?dbg("InScopeNs1",InScopeNs1),
   %?dbg("AttQName1",AttQName1),
   %?dbg("Expr",Expr),
   Node = N#xqAttributeNode{identity = Id, parent_node = Parent, name = AttQName1, expr = Expr},
   Ctx3 = add_node(Ctx1, Id, Node),
   %?dbg(?LINE,Ctx3),
   {Id, Sz + 1, Ctx3};

handle_content(Ctx, Parent, #xqNamespaceNode{name = QName} = N, InScopeNamespaces, Sz) ->
   % check if there is an inscope namespace with the same URI, use it's prefix
   {Id,Ctx1} = next_id(Ctx),
   NsName = ensure_qname(QName, InScopeNamespaces),
   _ = check_computed_namespaces([N]),
   Node = N#xqNamespaceNode{identity = Id, 
                            parent_node = Parent, 
                            name = NsName},
   Ctx2 = add_node(Ctx1, Id, Node),
   {Id, Sz + 1, Ctx2};

handle_content(Ctx, Parent, #xqProcessingInstructionNode{name = QName, expr = E, base_uri = _BU} = N, _INs, Sz) ->
   %?dbg("E0",E),
   TExpr = string:trim(xqerl_types:string_value(E), leading),
   case string:str(TExpr, "?>") of
      0 ->
         QName0 = if is_list(QName) ->
                        ?seq:singleton_value(QName);
                     true ->
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
         Node = N#xqProcessingInstructionNode{identity = Id, parent_node = Parent, name = QName1, expr = ?str(TExpr)},
         %set_node_base_uri
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

handle_content(Ctx, Parent, #xqTextNode{expr = Content, cdata = C} = N, _INs, Sz) ->
   Content1 = maybe_merge_text_seq(Content),
   Content2 = merge_text_content(Content1),
   case Content2 == [] of
      true ->
         %?dbg("Ex",Ex),
         {[], Sz, Ctx};
      _ when C == true ->
         %?dbg("Ex",Ex),
         {Id,Ctx1} = next_id(Ctx),
         Node = N#xqTextNode{identity = Id, parent_node = Parent},
         Ctx2 = add_node(Ctx1, Id, Node),
         {Id, Sz + 1, Ctx2};
      _ ->
         {Id,Ctx1} = next_id(Ctx),
         %?dbg("Content2",Content2),
         Node = N#xqTextNode{identity = Id, parent_node = Parent, expr = Content2},
         Ctx2 = add_node(Ctx1, Id, Node),
         {Id, Sz + 1, Ctx2}
   end;

% internal fragment to merge
handle_content(Ctx, Parent, #xqNode{frag_id = F, identity = I}, INs, Sz) ->
   Doc = xqerl_context:get_available_document(F),
   Contents = build_contents(I, Doc),
   {_,Inherit} = maps:get('copy-namespaces', Ctx),
   INs1 = if Inherit == 'no-inherit' ->
                [];
             true ->
                INs
          end,
   {Children, Sz1, Ctx3} = handle_contents(Ctx, Parent, Contents, INs1, Sz),
   {Children, Sz1, Ctx3};

handle_content(Ctx, Parent, Seq, INs, Sz)  ->
   Ci = ?seq:to_list(Seq),
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
         Exp = lists:flatmap(fun(N) ->
                               build_contents(N, Doc)
                         end, Children),
         Namespaces = [N || #xqNamespaceNode{} = N <- Exp],
         NonNamespaces = [N || N <- Exp, not is_record(N, xqNamespaceNode)],
         % namespaces out so they are not confused with computed namespaces
         [Node#xqElementNode{desc_count = 0, attributes = Namespaces, children = [], expr = NonNamespaces}]; 
      #xqDocumentNode{} ->
         Children = Node#xqDocumentNode.children,
         Exp = lists:flatmap(fun(N) ->
                               build_contents(N, Doc)
                         end, Children),
         Exp;
      #xqXmlFragment{} ->
         Children = Node#xqXmlFragment.children,
         Exp = lists:flatmap(fun(N) ->
                               build_contents(N, Doc)
                         end, Children),
         Exp;
      N when is_list(N) ->
         N;
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
set_node_base_uri(Ctx, Ids) ->
   Nodes   = maps:get(nodes, Ctx),
   BaseUri = maps:get('base-uri', Ctx),
   %?dbg(?LINE, BaseUri),
   %?dbg(?LINE, Ids),
   lists:foldl(fun(Id,Ctx1) ->
                  Node = gb_trees:get(Id, Nodes),
                  Node2 = case Node of
%%                              #xqDocumentNode{} ->
%%                                 Node#xqDocumentNode{base_uri = BaseUri};
%%                              #xqElementNode{} ->
%%                                 Node#xqElementNode{base_uri = BaseUri};
                             #xqProcessingInstructionNode{} ->
                                Node#xqProcessingInstructionNode{base_uri = BaseUri};
                             _ ->
                                Node
                          end,
                  maps:put(nodes, 
                           gb_trees:enter(Id, Node2, maps:get(nodes, Ctx1)),
                           Ctx1)
               end, Ctx, Ids).

resolve_namespace(#qname{namespace = Ns, prefix = LPx} = QName, InscopeNamespaces) ->
   %check if there is a new prefix for the namespace
   Px1 = [Px || #xqNamespace{namespace = Ns1, prefix = Px} <- InscopeNamespaces, Ns1 == Ns],
   case Px1 of
      [H] ->
         QName#qname{prefix = H};
      _ ->
         case lists:member(LPx, Px1) of
            true ->
               QName;
            _ ->
               QName#qname{prefix = hd(Px1)}
         end
   end.

resolve_attribute_namespace(#qname{prefix = [],namespace = 'no-namespace'} = QName, _Ns) -> QName;
resolve_attribute_namespace(QName, Ns) ->
   resolve_namespace(QName, Ns).

merge_content(_,[],_) ->
   [];
merge_content(Ctx, Content, InscopeNamespaces) when is_list(Content) ->
   {CopyNsPreserve,_} = maps:get('copy-namespaces', Ctx),
   %?dbg("CN",{CopyNsPreserve}),
   L = expand_nodes(Content,CopyNsPreserve,InscopeNamespaces),
   %?dbg("Content",Content),
   %?dbg("L",L),
   merge_content(L, []).

strip_unused_namespaces([#xqElementNode{name = #qname{namespace = ENs}, expr = ChildContent, inscope_ns = EIsNs} = E | T]) ->
   InUseNs = [ENs|[ANs || #xqAttributeNode{name = #qname{namespace = ANs}} <- ChildContent]],
   FiltFun = fun(#xqNamespaceNode{name = #qname{namespace = NsNs}}) ->
                   lists:member(NsNs, InUseNs);
                (_) ->
                   true
            end,
   FiltFun2 = fun(#xqNamespace{namespace = NsNs}) ->
                    lists:member(NsNs, InUseNs);
                 (_) ->
                    true
             end,
   NewContent = lists:filter(FiltFun, ChildContent),
   NewContent1 = strip_unused_namespaces(NewContent),
   NewEIsNs = lists:filter(FiltFun2, EIsNs),
   [E#xqElementNode{expr = NewContent1, inscope_ns = NewEIsNs} | strip_unused_namespaces(T)];
strip_unused_namespaces([H|T]) ->
   [H|strip_unused_namespaces(T)];
strip_unused_namespaces([]) ->
   [].

%% expand_nodes([#xqDocumentNode{expr = Content}|T],Preserve,Namespaces) ->
%%    Content ++ expand_nodes(T,Preserve,Namespaces);
expand_nodes([#xqNode{frag_id = F, identity = I}|T],Preserve,Namespaces) ->
   Doc = xqerl_context:get_available_document(F),
   Content = build_contents(I, Doc),
   Content1 = if Preserve == 'no-preserve' ->
                    strip_unused_namespaces(Content);
                 true ->
                    Content
              end,
   Content1 ++ expand_nodes(T,Preserve,Namespaces);
expand_nodes([#array{data = H}|T],Preserve,Namespaces) ->
   expand_nodes(H++T,Preserve,Namespaces);
expand_nodes([H|T],Preserve,Namespaces) ->
   [H|expand_nodes(T,Preserve,Namespaces)];
expand_nodes([],_Presrve,_Namespaces) -> [].


merge_content([], Acc) ->
   %?dbg("merge_content",Acc),
   lists:reverse(Acc);

merge_content([H|T], Acc) when is_list(H) ->
   NewH = maybe_merge_seq(H,[]),
   %?dbg("H",H),
   %?dbg("NewH",NewH),
   merge_content(NewH ++ T, Acc);

% pre-merge nodes
merge_content([H1,#xqNode{frag_id = F, identity = I}|T], Acc) ->
   Doc = xqerl_context:get_available_document(F),
   Content = build_contents(I, Doc),
   %?dbg("merge_content",Content),
   merge_content([H1|Content] ++ T, Acc);

merge_content([#xqAtomicValue{type = Type} = H|T], Acc) when Type =/= 'xs:untypedAtomic' ->
   %?dbg("merge_content",6),
   NewH = xqerl_types:cast_as(H, 'xs:untypedAtomic'),
   merge_content([NewH|T], Acc);
merge_content([#xqAtomicValue{} = H1,#xqAtomicValue{} = H2|T], Acc) ->
   St1 = xqerl_types:string_value(H1),
   St2 = xqerl_types:string_value(xqerl_types:cast_as(H2, 'xs:untypedAtomic')),
   Str3 = St1 ++ " " ++ St2,
   merge_content([#xqAtomicValue{type = 'xs:untypedAtomic', value = Str3}|T], Acc);

merge_content([#xqAtomicValue{type = Type, value = _Val} = Expr], Acc) when Type == 'xs:untypedAtomic' ->
   merge_content([], [#xqTextNode{expr = Expr}|Acc]);

merge_content([#xqAtomicValue{} = H1,H2|T], Acc) ->
   %?dbg("merge_content",4),
   Node = #xqTextNode{expr = H1},
   merge_content([Node,H2|T], Acc);

merge_content([#xqTextNode{expr = S1},#xqTextNode{expr = S2} = H2|T], Acc) ->
   %?dbg("merge_content",3),
   St1 = xqerl_types:string_value(S1),
   St2 = xqerl_types:string_value(S2),
   Str3 = St1 ++ St2,
   Node = H2#xqTextNode{expr = ?untyp(Str3)},
   %?dbg("Node",Node),
   merge_content([Node|T], Acc);

merge_content([#xqTextNode{expr = S1} = H1,#xqAtomicValue{} = H2|T], Acc) ->
   St1 = xqerl_types:string_value(S1),
   St2 = xqerl_types:string_value(xqerl_types:cast_as(H2, 'xs:untypedAtomic')),
   Str3 = St1 ++ St2,
   Node = H1#xqTextNode{expr = ?untyp(Str3)},
   %?dbg("Node",Node),
   merge_content([Node|T], Acc);


merge_content([#xqTextNode{} = H1,H2|T], Acc) when is_list(H2) ->
   NewH = merge_content(H2,[]),
   %?dbg("H1",H1),
   %?dbg("NewH",NewH),
   merge_content([H1|NewH] ++ T, Acc);

merge_content([#xqTextNode{expr = S1} = H|T], Acc) ->
   St1 = xqerl_types:string_value(S1),
   if St1 == [] ->
         merge_content(T, Acc);
      true ->
         merge_content(T, [H|Acc])
   end;

merge_content([#xqNode{frag_id = F, identity = I}|T], Acc) ->
   Doc = xqerl_context:get_available_document(F),
   Content = build_contents(I, Doc),
   %?dbg("merge_content",Content),
   merge_content(Content ++ T, Acc);

merge_content([#xqDocumentNode{expr = E}|T], Acc) when length(Acc) > 0 ->
   merge_content([E|T], Acc);
merge_content([H|T], Acc) when is_list(H) ->
   H3 = maybe_merge_seq(H),
   %?dbg(?LINE,H3),
   merge_content(H3 ++ T, Acc);
merge_content([H|T], Acc) ->
   merge_content(T, [H|Acc]).

maybe_merge_seq(Seq) ->
   List = ?seq:to_list(Seq),
   maybe_merge_seq(List,[]).

maybe_merge_seq([],Acc) ->
   lists:reverse(Acc);
maybe_merge_seq([#xqAtomicValue{} = H1,#xqAtomicValue{} = H2|T], Acc) ->
   St1 = xqerl_types:string_value(H1),
   St2 = xqerl_types:string_value(xqerl_types:cast_as(H2, 'xs:untypedAtomic')),
   Str3 = lists:concat([St1," ",St2]),
   maybe_merge_seq([#xqAtomicValue{type = 'xs:untypedAtomic', value = Str3}|T], Acc);
maybe_merge_seq([H|T], Acc) when is_list(H) ->
   maybe_merge_seq(maybe_merge_seq(H,[]) ++ T, Acc);
maybe_merge_seq([H|T], Acc) ->
   maybe_merge_seq(T, [H|Acc]).


maybe_merge_text_seq([Seq]) -> maybe_merge_text_seq(Seq);
maybe_merge_text_seq(Seq) ->
   List = ?seq:to_list(Seq),
   maybe_merge_text_seq(List,[]).
   %?seq:from_list(maybe_merge_text_seq(List,[])).

maybe_merge_text_seq([],Acc) ->
   lists:reverse(Acc);
maybe_merge_text_seq([#xqElementNode{expr = []}|T], Acc) ->
   maybe_merge_text_seq([#xqAtomicValue{type = 'xs:untypedAtomic',value = ""}|T],Acc);
maybe_merge_text_seq([#xqElementNode{} = H|T], Acc) ->
   maybe_merge_text_seq([atomize_node(H)|T],Acc);
maybe_merge_text_seq([#xqAttributeNode{} = H|T], Acc) ->
   maybe_merge_text_seq([atomize_node(H)|T],Acc);
maybe_merge_text_seq([#xqCommentNode{} = H|T], Acc) ->
   maybe_merge_text_seq([atomize_node(H)|T],Acc);
maybe_merge_text_seq([#xqProcessingInstructionNode{} = H|T], Acc) ->
   maybe_merge_text_seq([atomize_node(H)|T],Acc);
maybe_merge_text_seq([#xqTextNode{} = H|T], Acc) ->
   maybe_merge_text_seq([atomize_node(H)|T],Acc);
maybe_merge_text_seq([#xqAtomicValue{} = H1,#xqAtomicValue{} = H2|T], Acc) ->
   St1 = xqerl_types:string_value(H1),
   St2 = xqerl_types:string_value(xqerl_types:cast_as(H2, 'xs:untypedAtomic')),
   Str3 = lists:concat([St1," ",St2]),
   maybe_merge_text_seq([#xqAtomicValue{type = 'xs:untypedAtomic', value = Str3}|T], Acc);
maybe_merge_text_seq([#xqAtomicValue{type = Type} = H|T], Acc) when Type =/= 'xs:untypedAtomic' ->
   maybe_merge_text_seq([xqerl_types:cast_as(H, 'xs:untypedAtomic')|T],Acc);
maybe_merge_text_seq([H|T], Acc) ->
   case is_list(H) of
      true ->
         case ?seq:is_empty(H) of
            true ->
               maybe_merge_text_seq([#xqAtomicValue{type = 'xs:untypedAtomic',value = ""}|T], Acc);
            _ ->
               maybe_merge_text_seq(H ++ T, Acc)
         end;
      _ ->
         maybe_merge_text_seq(T, [H|Acc])
   end.


flatten_list_content([]) -> [];
flatten_list_content([H1,H2|T]) when is_list(H1), is_list(H2) ->
   flatten_list_content([H1 ++ H2 | T]);
flatten_list_content([H1|T]) when is_list(H1) ->
   [flatten_list_content(H1)|flatten_list_content(T)];
flatten_list_content([H1|T]) ->
   [H1|flatten_list_content(T)].



merge_text_content([]) ->
   [];
merge_text_content(Content) when is_list(Content) ->
   Merged = lists:map(fun(C) when is_list(C) ->
                            flatten_list_content(C);
                         (C) ->
                            C
                      end, Content),
   %?dbg("Content",Content),
   %?dbg("Merged",Merged),
   merge_text_content(Merged, []);
merge_text_content(Content) ->
   merge_text_content([Content], []).

merge_text_content([], Acc) ->
   %?dbg(?LINE,Acc),
   lists:reverse(Acc);

merge_text_content([#xqElementNode{} = H|T], Acc) ->
   Atomized = ?seq:from_list(atomize_node(H)),
   %?dbg("Atomized",Atomized),
   merge_text_content(T, Atomized ++ Acc);
merge_text_content([#xqCommentNode{} = H|T], Acc) ->
   Atomized = ?seq:from_list(atomize_node(H)),
   %?dbg("Atomized",Atomized),
   merge_text_content(T, Atomized ++ Acc);
merge_text_content([#xqTextNode{} = H|T], Acc) ->
   Atomized = ?seq:from_list(atomize_node(H)),
   %?dbg("Atomized",Atomized),
   merge_text_content(T, Atomized ++ Acc);
merge_text_content([#xqProcessingInstructionNode{} = H|T], Acc) ->
   Atomized = ?seq:from_list(atomize_node(H)),
   %?dbg("Atomized",Atomized),
   merge_text_content(T, Atomized ++ Acc);

merge_text_content([#xqAtomicValue{type = Type} = H|T], Acc) when Type =/= 'xs:string' ->
   NewH = xqerl_types:cast_as(H, 'xs:string'),
   merge_text_content([NewH|T], Acc);

merge_text_content([#xqAtomicValue{} = H1,#xqAtomicValue{} = H2|T], Acc) ->
   St1 = xqerl_types:string_value(H1),
   St2 = xqerl_types:string_value(xqerl_types:cast_as(H2, 'xs:string')),
   Str3 = St1 ++ St2,
   %?dbg("Atomized", Str3),
   merge_text_content([#xqAtomicValue{type = 'xs:string', value = Str3}|T], Acc);

merge_text_content([#xqAtomicValue{} = H1,#xqNode{frag_id = F, identity = I}|T], Acc) ->
   Doc = xqerl_context:get_available_document(F),
   Atomized = ?seq:from_list(atomize_node({I,Doc})),
   %?dbg("Atomized", Atomized),
   merge_text_content([H1|Atomized] ++ T, Acc);

merge_text_content([#xqAtomicValue{type = Type, value = _Val} = Expr], Acc) when Type == 'xs:string' ->
   %?dbg("Atomized", Expr),
   merge_text_content([], [Expr|Acc]);


merge_text_content([#xqAtomicValue{} = H1,#xqElementNode{expr = Expr}|T], Acc) ->
   %?dbg(?LINE, Expr),
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

merge_text_content([#xqAtomicValue{value = S1}, H2|T], Acc) when is_list(H2) ->
   H3 = maybe_merge_text_seq(H2),
   St2 = xqerl_types:string_value(H3),
   Str3 = ?str(S1 ++ St2),
   %?dbg("Atomized", Str3),
   merge_text_content([Str3|T], Acc);

merge_text_content([H1, #xqAtomicValue{} = H2|T], Acc) when is_list(H1) ->
   H3 = maybe_merge_text_seq(H1),
   St2 = xqerl_types:string_value(H3),
   S1 = xqerl_types:string_value(H2),
   Str3 = ?str(St2 ++ S1),
   %?dbg("Atomized", Str3),
   merge_text_content([Str3|T], Acc);

%% merge_text_content([H1,H2|T], Acc) when is_list(H1), is_list(H2) ->
%%    H3 = maybe_merge_text_seq(H1 ++ H2),
%%    St2 = xqerl_types:string_value(H3),
%%    Str3 = ?str(St2),
%%    ?dbg("Atomized", Str3),
%%    merge_text_content([Str3|T], Acc);

merge_text_content([H1|T], Acc) when is_list(H1) ->
   H3 = maybe_merge_text_seq(H1),
   St2 = xqerl_types:string_value(H3),
   Str3 = ?str(St2),
   %?dbg("Atomized", Str3),
   merge_text_content([Str3|T], Acc);

merge_text_content([#xqTextNode{expr = S1},#xqTextNode{expr = S2}|T], Acc) ->
   St1 = xqerl_types:string_value(S1),
   St2 = xqerl_types:string_value(S2),
   Str3 = ?str(St2 ++ St1),
   Node = ?str(Str3),
   merge_text_content([Node|T], Acc);

merge_text_content([#xqNode{frag_id = F, identity = I}|T], Acc) ->
   Doc = xqerl_context:get_available_document(F),
   Atomized = ?seq:from_list(atomize_node({I,Doc})),
   %?dbg("Atomized",Atomized),
   merge_text_content(Atomized ++ T, Acc);

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
   case is_list(H) of
      true ->
         H3 = maybe_merge_text_seq(H),
         St2 = xqerl_types:string_value(H3),
         Str3 = ?str(St2),
         ?dbg("Atomized", Str3),
         merge_text_content([Str3|T], Acc);
      _ ->
         merge_text_content(T, [H|Acc])
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

get_doc(#xqNode{frag_id = F, identity = Id}) ->
   Doc = xqerl_context:get_available_document(F),
   case build_contents(Id, Doc) of
      [Cont] ->
         [Cont];
      Cont ->
         Cont
   end.


get_node_name(#xqElementNode{name = Nm}) -> Nm;
get_node_name(#xqAttributeNode{name = Nm}) -> Nm;
get_node_name(#xqProcessingInstructionNode{name = Nm}) -> Nm;
get_node_name(#xqNamespaceNode{name = #qname{prefix = P}}) ->
   #qname{namespace = 'no-namespace',prefix = "",local_name = P};
get_node_name(#xqNode{frag_id = F, identity = Id}) ->
   Doc = xqerl_context:get_available_document(F),
   get_node_name({Id,Doc});
% external xmlfrag
get_node_name({0,Doc}) ->
   get_node_name({1,Doc});
get_node_name({Id,Doc}) ->
   case gb_trees:get(Id, Doc)  of
      #xqElementNode{name = Nm} ->
                  Nm;
      #xqAttributeNode{name = Nm} ->
                  Nm;
      #xqProcessingInstructionNode{name = Nm} ->
                  Nm;
      #xqNamespaceNode{name = #qname{prefix = P}} ->
         #qname{namespace = 'no-namespace',prefix = "",local_name = P};
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
   atomize_nodes1(List);
atomize_nodes(List) ->
   Nodes = if is_list(List) ->
                 List;
              true ->
                 [List]
           end,
   %?dbg("Nodes",Nodes),
   lists:flatten(lists:map(fun(Li) ->
                   atomize_nodes1(Li)
             end, Nodes)).

atomize_nodes1(Node) ->
   An = atomize_node(Node),
   %Str = xqerl_types:cast_as(An,'xs:untypedAtomic'),
   %?dbg("An",An),
   %?dbg("atomize_nodes Str",Str),
   R = case An of
      #xqAtomicValue{} ->
         An;
      Other ->
         %?dbg("Other",Other),
         Other
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
               #xqProcessingInstructionNode{expr = S} -> ?str(string:trim(xqerl_types:string_value(S), leading));
               #xqCommentNode{expr = S} -> ?str(xqerl_types:string_value(S));
               #xqTextNode{expr = S} -> ?untyp(xqerl_types:string_value(S))
            end,
   %?dbg("atomize_node StrVal",StrVal),
   StrVal;

atomize_node(#xqElementNode{expr = S}) -> atomize_node(S);
atomize_node(#xqAttributeNode{expr = S}) -> ?untyp(xqerl_types:string_value(S));
atomize_node(#xqNamespaceNode{name = #qname{namespace = S}}) -> ?str(S);
atomize_node(#xqNamespace{namespace = S}) -> ?str(S);
atomize_node(#xqProcessingInstructionNode{expr = S}) -> ?str(string:trim(xqerl_types:string_value(S), leading));
atomize_node(#xqCommentNode{expr = S}) -> ?str(xqerl_types:string_value(S));
atomize_node(#xqTextNode{expr = S}) -> ?untyp(xqerl_types:string_value(S));

atomize_node(Seq) ->
   case is_list(Seq) of
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
   %?dbg("{Nodes1,Nodes2}",{Nodes1,Nodes2}),
   length(Nodes1) == length(Nodes2)
   andalso
   lists:all(fun({Ci1,Ci2}) ->
                   nodes_equal({Ci1, Doc1},{Ci2, Doc2})
             end, lists:zip(Nodes1, Nodes2));

nodes_equal({#xqElementNode{identity = Id1, children = _C1, name = Q1}, Doc1},
            {#xqElementNode{identity = Id2, children = _C2, name = Q2}, Doc2}) ->
   xqerl_operators:equal(#xqAtomicValue{type = 'xs:QName', value = Q1},
                         #xqAtomicValue{type = 'xs:QName', value = Q2}) == ?bool(true)
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
   xqerl_operators:equal(#xqAtomicValue{type = 'xs:QName', value = Q1},
                         #xqAtomicValue{type = 'xs:QName', value = Q2}) == ?bool(true)
  andalso
     % E1 == E2 to catch [] == []
   (E1 == E2 orelse xqerl_operators:equal(E1,E2) == ?bool(true));

nodes_equal({#xqProcessingInstructionNode{name = Q1, expr = V1}, _Doc1},
            {#xqProcessingInstructionNode{name = Q2, expr = V2}, _Doc2}) ->
   xqerl_operators:equal(#xqAtomicValue{type = 'xs:QName', value = Q1},
                         #xqAtomicValue{type = 'xs:QName', value = Q2}) == ?bool(true)
   andalso 
   xqerl_operators:equal(V1,V2) == ?bool(true);

nodes_equal({#xqNamespaceNode{name = Q1}, _Doc1},
            {#xqNamespaceNode{name = Q2}, _Doc2}) ->
   ?seq:singleton_value(
   xqerl_operators:equal(#xqAtomicValue{type = 'xs:QName', value = Q1},
                         #xqAtomicValue{type = 'xs:QName', value = Q2})) == ?bool(true);

nodes_equal({#xqCommentNode{expr = V1}, _Doc1},
            {#xqCommentNode{expr = V2}, _Doc2}) ->
   xqerl_operators:equal(V1,V2) == ?bool(true);

nodes_equal({#xqTextNode{expr = V1}, _Doc1},
            {#xqTextNode{expr = V2}, _Doc2}) ->
   xqerl_operators:equal(V1,V2) == ?bool(true);

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


%% to_xml1([],_) -> [];
%% to_xml1([#xqNode{} = H|T],node) ->
%%    [to_xml(H)|to_xml1(T,node)];
%% to_xml1([#xqNode{} = H|T],_) ->
%%    [to_xml(H)|to_xml1(T,node)];
%% to_xml1([#xqAtomicValue{} = H|T],atomic) ->
%%    [" ",to_xml(H)|to_xml1(T,atomic)];
%% to_xml1([#xqAtomicValue{} = H|T],_) ->
%%    [to_xml(H)|to_xml1(T,atomic)];
%% to_xml1([H|T],_) ->
%%    %?dbg("to_xml1",H),
%%    [to_xml(H)|to_xml1(T,atomic)].


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
   Node = gb_trees:get(Id, Doc),
   InUseNamespaces   = [{"",'no-namespace'},
                        {"xml","http://www.w3.org/XML/1998/namespace"}],
   InScopeNamespaces = InUseNamespaces,
   to_xml(Node, Doc, InUseNamespaces, InScopeNamespaces);
to_xml(#xqAtomicValue{} = A) -> xqerl_types:string_value(A);
to_xml(Seq) ->
   case is_list(Seq) of
      true ->
         case ?seq:size(Seq) of
            1 ->
               to_xml(?seq:singleton_value(Seq));
            _ ->
               to_xml(Seq)
         end;
      _ ->
         Seq
   end.

combine_atomics([], Acc) ->
   lists:reverse(Acc);
combine_atomics([#xqAtomicValue{} = H1,#xqAtomicValue{} = H2|T], Acc) ->
   St1 = xqerl_types:string_value(H1),
   St2 = xqerl_types:string_value(xqerl_types:cast_as(H2, 'xs:string')),
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
   QNames = lists:foldl(fun(#xqAttributeNode{name = #qname{prefix = []}},Acc) ->
                              Acc;
                           (#xqAttributeNode{name = AQName},Acc) ->
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
         "<?" ++ Local ++ " ?>";
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
   "<!--" ++ xqerl_types:string_value(Val) ++ "-->";
to_xml(#xqTextNode{expr = Val}, _Doc, _InUseNamespaces, _InScopeNamespaces) ->
   encode_text(xqerl_types:string_value(Val));
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
encode_att_text("{{"++Tail) ->
   "{{"++encode_att_text(Tail);
encode_att_text("{"++Tail) ->
   "{{"++encode_att_text(Tail);
encode_att_text("}}"++Tail) ->
   "}}"++encode_att_text(Tail);
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

check_computed_namespaces(NameSpaceNodes) ->
   Namespaces = [{P,xqerl_types:value(N)} || #xqNamespaceNode{name=#qname{namespace = N, prefix = P}} <- NameSpaceNodes],
   %?dbg("check_computed_namespaces",NameSpaceNodes),
   Unique = lists:usort(Namespaces),
   Prefixes = lists:usort([P || {P,_} <- Unique]),
   %?dbg("Unique",Unique),
   %?dbg("Prefixes",length(Unique) =/= length(Prefixes)),
   if length(Unique) =/= length(Prefixes) ->
         xqerl_error:error('XQDY0102');
      true ->
         lists:foreach(fun({"xml",Ns}) when Ns =/= "http://www.w3.org/XML/1998/namespace" ->
                             xqerl_error:error('XQDY0101');
                          ({Px,"http://www.w3.org/XML/1998/namespace"}) when Px =/= "xml" ->
                             xqerl_error:error('XQDY0101');
                          ({"xmlns",_}) ->
                             xqerl_error:error('XQDY0101');
                          ({_,"http://www.w3.org/2000/xmlns/"}) ->
                             xqerl_error:error('XQDY0101');
                          ({_,""}) ->
                             xqerl_error:error('XQDY0101');
                          (_) ->
                             ok
                       end, Namespaces)
   end,
   ok.
   
check_direct_namespaces(NameSpaceNodes) ->
   Namespaces = [{P,xqerl_types:value(N)} || #xqNamespaceNode{name=#qname{namespace = N, prefix = P}} <- NameSpaceNodes],
   %?dbg("has_bad_namespaces",Namespaces),
   Unique = lists:usort(Namespaces),
   Prefixes = lists:usort([P || {P,_} <- Unique]),
   %?dbg("Unique",Unique),
   %?dbg("Prefixes",length(Unique) =/= length(Prefixes)),
   if length(Unique) =/= length(Prefixes) ->
         xqerl_error:error('XQDY0102');
      true ->
         lists:foreach(fun({"xml",Ns}) when Ns =/= "http://www.w3.org/XML/1998/namespace" ->
                             xqerl_error:error('XQDY0096');
                          ({Px,"http://www.w3.org/XML/1998/namespace"}) when Px =/= "xml" ->
                             xqerl_error:error('XQDY0096');
                          ({"xmlns",_}) ->
                             xqerl_error:error('XQDY0096');
                          ({_,"http://www.w3.org/2000/xmlns/"}) ->
                             xqerl_error:error('XQDY0096');
                          (_) ->
                             ok
                       end, Namespaces)
   end,
   ok.

check_computed_default_override(#qname{namespace = 'no-namespace'}, ComputNamespaces) ->
   %?dbg("ComputNamespaces",ComputNamespaces),
   NewDef = [ok || #xqNamespaceNode{name = #qname{prefix = []}} <- ComputNamespaces],
   %?dbg("NewDef",NewDef),
   if length(NewDef) == 0 ->
         ok;
      true ->
         xqerl_error:error('XQDY0102')
   end;
check_computed_default_override(_, _) ->
   ok.


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
