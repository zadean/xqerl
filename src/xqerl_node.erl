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

%-export([node_type/1]).
-export([new_fragment/1]).
-export([new_fragment/2]).

%% -export([position_range/2]).
%% -export([position_single/2]).

-export([atomize_nodes/1]).
-export([to_xml/1]).
-export([nodes_equal/3]).

-export([node_to_content/1]).

-export([get_node_type/1]).

% for fn:generate-id
-export([get_node_hash/1]).

-export([merge_content/2]).


%%% identity + desc_count == last desc

% ContextMap - 
% last_id
% nodes -> array of record tuples for each known node

new_context(Ctx) ->
   Ctx#{next_node_id => 0,
        frag_id => next_frag_id(),
        nodes => #{}}.

new_fragment(#xqNode{doc = #{file := ""} = Doc } = Node) -> 
   Node#xqNode{doc = Doc#{file := next_frag_id()}}.

% return document {RootId, Doc}
new_fragment(Ctx0, Content) when is_list(Content) ->
   DefaultNs = [],
   %DefaultNs = [Ns || #xqNamespace{prefix = Px} = Ns <- maps:get(namespaces, Ctx0), Px == []],
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
         ?dbg("FragId",FragId),
         build_xqnode(Ctx0, FragId, get_nodes(Ctx5))
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
can_follow(_,_) -> true.

get_node_type(#xqNode{doc = Doc, node = Node}) ->
   xqerl_xdm:dm_node_kind(Doc, Node);
get_node_type(#xqDocumentNode{}) -> document;
get_node_type(#xqElementNode{}) -> element;
get_node_type(#xqNamespaceNode{}) -> namespace;
get_node_type(#xqAttributeNode{}) -> attribute;
get_node_type(#xqCommentNode{}) -> comment;
get_node_type(#xqTextNode{}) -> text;
get_node_type(#xqProcessingInstructionNode{}) -> 'processing-instruction'.



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
ensure_qname(#xqAtomicValue{} = V, InScopeNamespaces) ->
   ?dbg("XPTY0004",{V, InScopeNamespaces}),
   xqerl_error:error('XPTY0004');
ensure_qname([H], InScopeNamespaces) ->
   ensure_qname(H, InScopeNamespaces);
ensure_qname(List, InScopeNamespaces) when is_list(List) ->
   case ?seq:from_list(List) of
      [H] ->
         ensure_qname(H, InScopeNamespaces);
      _ ->
         ?dbg("XPTY0004",{List, InScopeNamespaces}),
         xqerl_error:error('XPTY0004')
   end;
   
ensure_qname(QName, InScopeNamespaces) ->
   ?dbg("XPTY0004",{QName, InScopeNamespaces}),
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
            PxAlreadyInUse == false ->
               [NewNs|InscopeNamespaces];
            true ->
               NewPx = if Px == [] -> "ns_";
                          true -> Px ++ "_" end,
               NewNs1 = NewNs#xqNamespace{prefix = NewPx},
               case lists:member(NewNs1, InscopeNamespaces) of
                  true ->
                     InscopeNamespaces;
                  _ ->
                     [NewNs1|InscopeNamespaces]
               end
         end
   end;
augment_inscope_namespaces(#xqAttributeNode{name = Name}, InscopeNamespaces) ->
   #qname{namespace = Ns, prefix = Px, local_name = Ln} = ensure_qname(Name,InscopeNamespaces),
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
         if PxAlreadyInUse == false andalso Px =/= [] ->
               [NewNs|InscopeNamespaces];
            true ->
               NewPx = if Px == [] -> "ns_";
                          true -> Px ++ "_" end,
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
   Content0 = case Content of
                  _ when is_list(Content) ->
                     lists:flatten(Content);
                  C ->
                     [C]
               end,
   Content1 = Content0,
   Fun = fun(Node, {Children, Sz1, Ctx1, LastType, _UsedAttNames}) ->
               Type = get_node_type(Node),
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
   {Ids, Sz3,Ctx3}.

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
   OK = length(lists:sort(Names)) == length(lists:usort(Names)),
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
   lists:umerge(lists:usort(OrigNs),lists:usort(NewNs)).

% returns {Id, Sz,Ctx2}
handle_content(Ctx, Parent, #xqElementNode{name = QName,
                                           inscope_ns = ElemNs, 
                                           attributes = Atts, 
                                           expr = Content} = N, InScopeNs0, Sz) ->
   %?dbg("InScopeNs0",InScopeNs0),
   %?dbg("ElemNs",ElemNs),
   % direct constructors have their namespaces in attributes, constructed are in expr
   BU = maps:get('base-uri', Ctx),
   InScopeNs = merge_inscope_namespaces(ElemNs,InScopeNs0),
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
   ok = check_direct_namespaces(DirectNamespaces),
   ok = check_computed_namespaces(ComputNamespaces1),
   
   NamespaceNodes =  DirectNamespaces ++ ComputNamespaces1,
   InScopeNs1 = lists:foldl(fun(NsN, Is) ->
                                  augment_inscope_namespaces(NsN, Is)
                            end, InScopeNs, NamespaceNodes),

   AttributeNodes =  [X || X <- Atts1 ++ Content1, is_record(X, xqAttributeNode)],
   AttributeNodes1 = lists:map(fun(#xqAttributeNode{name = Q} = NsN) ->
                                     NewQ = ensure_qname(Q, InScopeNs1),
                                     NsN#xqAttributeNode{name = NewQ}
                               end, AttributeNodes),
   
   ElemQName = ensure_qname(QName, InScopeNs1),
   InScopeNs2 = augment_inscope_namespaces(N#xqElementNode{name = ElemQName}, InScopeNs1),
   InScopeNs3 = lists:foldl(fun(NsN, Is) ->
                                  augment_inscope_namespaces(NsN, Is)
                            end, InScopeNs2, AttributeNodes1),
   Content2 = merge_content(Ctx, Content1, InScopeNs3), %this will copy in any nodes
   Content3 = Atts1 ++ Content2,
   AttributeNodes2 =  [X || X <- Content3, is_record(X, xqAttributeNode)],
   ok = check_attribute_names(AttributeNodes2),
   Content4 = [C || C <- Content3, not is_record(C, xqElementNode)],
   % any new namespaces after merge, from non-elements
   InScopeNs4 = lists:foldl(fun(NsN, Is) ->
                                  augment_inscope_namespaces(NsN, Is)
                            end, InScopeNs3, AttributeNodes2),
%%    MaybeDefault = if Parent == 0 andalso
%%                        ElemQName#qname.prefix == [] andalso
%%                        ElemQName#qname.namespace =/= 'no-namespace' ->
%%                         [#xqNamespace{namespace = ElemQName#qname.namespace,prefix = []}];
%%                      true ->
%%                         []
%%                   end,
   NewNss = lists:filter(fun(#xqNamespace{prefix = [],namespace = Ns}) ->
                               not lists:keymember(Ns, #xqNamespace.namespace, InScopeNs0);
                            (#xqNamespace{prefix = P1}) ->
                               not lists:keymember(P1, #xqNamespace.prefix, InScopeNs0)                            
                         end, InScopeNs4),
   ImplNamespaces = lists:filtermap(fun(#xqNamespace{namespace = ImNs, prefix = ImPx}) ->
                                          Done = lists:any(fun(#xqNamespaceNode{name = #qname{namespace = InnerNs}}) ->
                                                          InnerNs == ImNs;
                                                       (_) ->
                                                          false
                                                    end,Content4),
                                          if Done ->
                                                false;
                                             true ->
                                                if ImPx == undefined ->
                                                      {true,#xqNamespaceNode{name = #qname{namespace = ImNs,prefix = "_"}}};
                                                   true ->
                                                      {true,#xqNamespaceNode{name = #qname{namespace = ImNs,prefix = ImPx}}}
                                                end
                                          end
                                    end, NewNss),
   %?dbg("ImplNamespaces",ImplNamespaces),
   %?dbg("ElemQName",ElemQName),
   %?dbg("NewNss",NewNss),
   %?dbg("InScopeNs4",InScopeNs4),
   %?dbg("InScopeNs0",InScopeNs0),
   ok = check_computed_default_override(ElemQName, ComputNamespaces1),
   
   ok = check_element_name(ElemQName),
   % base-uri will come from the children
   NewBase = lists:flatten([Uri || #xqAttributeNode{name = #qname{namespace = "http://www.w3.org/XML/1998/namespace", 
                                                                  local_name = "base"}, expr = Uri} <- Content3]),
   BU1 = if NewBase == [] ->
               BU;
            true ->
               Path = xqerl_lib:resolve_against_base_uri(xqerl_types:value(BU),xqerl_types:value(hd(NewBase)) ),
               #xqAtomicValue{type = 'xs:anyURI', value = Path}
         end,
   ElemQName1 = resolve_namespace(ElemQName, InScopeNs3),
   Node = N#xqElementNode{identity = Id, 
                          parent_node = Parent, 
                          name = ElemQName1, 
                          base_uri = BU1,
                          expr = undefined, 
                          attributes = undefined, 
                          inscope_ns = InScopeNs4},
   Ctx2 = (add_node(Ctx1, Id, Node)),
   {Children, Sz1, Ctx3} = handle_contents(Ctx2#{'base-uri' := BU1}, Id, ImplNamespaces ++ Content3, InScopeNs4, 0),
   Ctx4 = (set_node_children(Ctx3, Id, Children, Sz1)),
   {Id, Sz1 + Sz + 1,Ctx4};

handle_content(Ctx, _Parent, #xqDocumentNode{expr = Content} = N, INs, Sz) ->
   {Id,Ctx1} = next_id(Ctx),
   Content1 = [Content],
   Content2 = merge_content(Ctx, Content1, INs),
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
   {Id, Sz1 + Sz + 1,Ctx4};

handle_content(Ctx, Parent, #xqAttributeNode{name = QName, expr = Content} = N, InScopeNs, Sz) ->
   {Id,Ctx1} = next_id(Ctx),
   Content2 = merge_text_content(Content),
   AttQName = ensure_qname(QName, InScopeNs),
   InScopeNs1 = augment_inscope_namespaces(N#xqAttributeNode{name = AttQName}, InScopeNs),
   Expr0 = Content2,
   AttQName1 = resolve_attribute_namespace(AttQName, InScopeNs1),
   Expr = case AttQName1 of
             #qname{namespace = _, prefix = "xml", local_name = "id"} ->
                try
                  xqerl_types:cast_as(Expr0,'xs:ID')
                catch _:_ ->
                  xqerl_error:error('XQDY0091')
                end;
             #qname{namespace = _, prefix = "xml", local_name = "space"} ->
               StrVal = xqerl_types:cast_as(Expr0,'xs:string'),
               case xqerl_types:value(StrVal) of
                  "preserve" ->
                     StrVal;
                  "default" ->
                     StrVal;
                  _ ->
                     xqerl_error:error('XQDY0092')
               end;
             #qname{namespace = _, prefix = "xml", local_name = "lang"} ->
                Expr0;
                %xqerl_types:cast_as(Expr0,'xs:language');
             #qname{namespace = _, prefix = "xml", local_name = "base"} ->
                xqerl_types:cast_as(Expr0,'xs:anyURI');
             _ ->
                Expr0
          end,
   Node = N#xqAttributeNode{identity = Id, parent_node = Parent, name = AttQName1, expr = Expr},
   Ctx3 = add_node(Ctx1, Id, Node),
   {Id, Sz + 1, Ctx3};

handle_content(Ctx, Parent, #xqNamespaceNode{name = QName} = N, InScopeNamespaces, Sz) ->
   % check if there is an inscope namespace with the same URI, use it's prefix
   {Id,Ctx1} = next_id(Ctx),
   %?dbg("Id",Id),
   NsName = ensure_qname(QName, InScopeNamespaces),
   _ = check_computed_namespaces([N]),
   Node = N#xqNamespaceNode{identity = Id, 
                            parent_node = Parent, 
                            name = NsName},
   Ctx2 = add_node(Ctx1, Id, Node),
   {Id, Sz + 1, Ctx2};

handle_content(Ctx, Parent, #xqProcessingInstructionNode{name = QName, expr = E, base_uri = _BU} = N, _INs, Sz) ->
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
         {Id,Ctx1} = next_id(Ctx),
         Node = N#xqProcessingInstructionNode{identity = Id, parent_node = Parent, name = QName1, expr = ?str(TExpr)},
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
         {[], Sz, Ctx};
      _ when C == true ->
         {Id,Ctx1} = next_id(Ctx),
         Node = N#xqTextNode{identity = Id, parent_node = Parent},
         Ctx2 = add_node(Ctx1, Id, Node),
         {Id, Sz + 1, Ctx2};
      _ ->
         {Id,Ctx1} = next_id(Ctx),
         Node = N#xqTextNode{identity = Id, parent_node = Parent, expr = Content2},
         Ctx2 = add_node(Ctx1, Id, Node),
         {Id, Sz + 1, Ctx2}
   end;

% internal fragment to merge
handle_content(Ctx, Parent, #xqNode{} = Node, INs, Sz) ->
   Contents = node_to_content(Node),
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
add_node(#{nodes := Nodes} = Ctx, Id, Node) ->
   NewNodes = Nodes#{Id => Node},
   Ctx#{nodes := NewNodes}.

get_nodes(#{nodes := Nodes}) ->
   Nodes.

get_frag_id(Ctx) ->
   maps:get(frag_id, Ctx).


% returns new Ctx
set_node_children(Ctx, Id, Children, Sz) ->
   Children1 = lists:reverse(Children),
   Nodes = get_nodes(Ctx),
   Node = maps:get(Id, Nodes),
   %Node = array:get(Id, Nodes),
   Node2 = case Node of
              #xqXmlFragment{} ->
                 Node#xqXmlFragment{children = Children1, desc_count = Sz};
              #xqDocumentNode{} ->
                 Node#xqDocumentNode{children = Children1, desc_count = Sz};
              #xqElementNode{} ->
                 Node#xqElementNode{children = Children1, desc_count = Sz}
           end,
   add_node(Ctx,Id, Node2).

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
   L = expand_nodes(Content,CopyNsPreserve,InscopeNamespaces),
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

expand_nodes([#xqNode{} = Node|T],Preserve,Namespaces) ->
   Content = node_to_content(Node),
   Content1 = if Preserve == 'no-preserve' ->
                    strip_unused_namespaces(Content);
                 true ->
                    Content
              end,
   Content1 ++ expand_nodes(T,Preserve,Namespaces);
expand_nodes([List],Preserve,Namespaces) when is_list(List) ->
   expand_nodes(List,Preserve,Namespaces);
expand_nodes([#array{data = H}|T],Preserve,Namespaces) ->
   expand_nodes(H++T,Preserve,Namespaces);
expand_nodes([H|T],Preserve,Namespaces) ->
   [H|expand_nodes(T,Preserve,Namespaces)];
expand_nodes([],_Presrve,_Namespaces) -> [].

merge_content([], Acc) ->
   lists:reverse(Acc);
merge_content([H|T], Acc) when is_list(H) ->
   NewH = maybe_merge_seq(H,[]),
   merge_content(NewH ++ T, Acc);
% pre-merge nodes
merge_content([H1,#xqNode{} = Node|T], Acc) ->
   Content = node_to_content(Node),
   merge_content([H1|Content] ++ T, Acc);
merge_content([#xqAtomicValue{type = Type} = H|T], Acc) when Type =/= 'xs:untypedAtomic' ->
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
   Node = #xqTextNode{expr = H1},
   merge_content([Node,H2|T], Acc);
merge_content([#xqTextNode{expr = S1},#xqTextNode{expr = S2} = H2|T], Acc) ->
   St1 = xqerl_types:string_value(S1),
   St2 = xqerl_types:string_value(S2),
   Str3 = St1 ++ St2,
   Node = H2#xqTextNode{expr = ?untyp(Str3)},
   merge_content([Node|T], Acc);
merge_content([#xqTextNode{expr = S1} = H1,#xqAtomicValue{} = H2|T], Acc) ->
   St1 = xqerl_types:string_value(S1),
   St2 = xqerl_types:string_value(xqerl_types:cast_as(H2, 'xs:untypedAtomic')),
   Str3 = St1 ++ St2,
   Node = H1#xqTextNode{expr = ?untyp(Str3)},
   merge_content([Node|T], Acc);
merge_content([#xqTextNode{} = H1,H2|T], Acc) when is_list(H2) ->
   NewH = merge_content(H2,[]),
   merge_content([H1|NewH] ++ T, Acc);
merge_content([#xqTextNode{expr = S1} = H|T], Acc) ->
   St1 = xqerl_types:string_value(S1),
   if St1 == [] ->
         merge_content(T, Acc);
      true ->
         merge_content(T, [H|Acc])
   end;
merge_content([#xqNode{} = Node|T], Acc) ->
   Content = node_to_content(Node),
   merge_content(Content ++ T, Acc);
merge_content([#xqDocumentNode{expr = E}|T], Acc) when length(Acc) > 0 ->
   merge_content([E|T], Acc);
merge_content([H|T], Acc) when is_list(H) ->
   H3 = maybe_merge_seq(H),
   merge_content(H3 ++ T, Acc);
merge_content([H|T], Acc) ->
   merge_content(T, [H|Acc]).

maybe_merge_seq(Seq) ->
   List = ?seq:to_list(Seq),
   maybe_merge_seq(List,[]).

maybe_merge_seq([],Acc) ->
   lists:reverse(Acc);
maybe_merge_seq([#xqAtomicValue{type = 'xs:untypedAtomic'} = H1,#xqAtomicValue{} = H2|T], Acc) ->
   St1 = xqerl_types:string_value(H1),
   St2 = xqerl_types:string_value(xqerl_types:cast_as(H2, 'xs:untypedAtomic')),
   Str3 = lists:concat([St1," ",St2]),
   maybe_merge_seq([?untyp(Str3)|T], Acc);
maybe_merge_seq([H|T], Acc) when is_list(H) ->
   maybe_merge_seq(maybe_merge_seq(H,[]) ++ T, Acc);
maybe_merge_seq([H|T], Acc) ->
   maybe_merge_seq(T, [H|Acc]).

maybe_merge_text_seq([Seq]) -> maybe_merge_text_seq(Seq);
maybe_merge_text_seq(Seq) ->
   List = ?seq:to_list(Seq),
   maybe_merge_text_seq(List,[]).

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
maybe_merge_text_seq([#xqAtomicValue{type = 'xs:untypedAtomic'} = H1,#xqAtomicValue{} = H2|T], Acc) ->
   St1 = xqerl_types:string_value(H1),
   St2 = xqerl_types:string_value(xqerl_types:cast_as(H2, 'xs:untypedAtomic')),
   Str3 = lists:concat([St1," ",St2]),
   maybe_merge_text_seq([?untyp(Str3)|T], Acc);
maybe_merge_text_seq([#xqAtomicValue{type = Type} = H|T], Acc) when Type =/= 'xs:untypedAtomic' ->
   maybe_merge_text_seq([xqerl_types:cast_as(H, 'xs:untypedAtomic')|T],Acc);
maybe_merge_text_seq([H|T], Acc) ->
   case is_list(H) of
      true when H == [] ->
         maybe_merge_text_seq([?untyp("")|T], Acc);
      true ->
         maybe_merge_text_seq(H ++ T, Acc);
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
   merge_text_content(Merged, []);
merge_text_content(Content) ->
   merge_text_content([Content], []).

merge_text_content([], Acc) ->
   lists:reverse(Acc);

merge_text_content([#xqElementNode{} = H|T], Acc) ->
   Atomized = atomize_node(H),
   merge_text_content(T, [Atomized | Acc]);
merge_text_content([#xqCommentNode{} = H|T], Acc) ->
   Atomized = atomize_node(H),
   merge_text_content(T, [Atomized | Acc]);
merge_text_content([#xqTextNode{} = H|T], Acc) ->
   Atomized = atomize_node(H),
   merge_text_content(T, [Atomized | Acc]);
merge_text_content([#xqProcessingInstructionNode{} = H|T], Acc) ->
   Atomized = atomize_node(H),
   merge_text_content(T, [Atomized | Acc]);

merge_text_content([#xqAtomicValue{type = Type} = H|T], Acc) when Type =/= 'xs:untypedAtomic' ->
   NewH = xqerl_types:cast_as(H, 'xs:untypedAtomic'),
   merge_text_content([NewH|T], Acc);

merge_text_content([#xqAtomicValue{} = H1,#xqAtomicValue{} = H2|T], Acc) ->
   St1 = xqerl_types:string_value(H1),
   St2 = xqerl_types:string_value(xqerl_types:cast_as(H2, 'xs:untypedAtomic')),
   Str3 = St1 ++ St2,
   merge_text_content([#xqAtomicValue{type = 'xs:string', value = Str3}|T], Acc);

merge_text_content([#xqAtomicValue{} = H1, #xqNode{} = Node|T], Acc) ->
   Atomized = [atomize_node(Node)],
   merge_text_content([H1|Atomized] ++ T, Acc);

merge_text_content([#xqAtomicValue{type = Type, value = _Val} = Expr], Acc) when Type == 'xs:untypedAtomic' ->
   merge_text_content([], [Expr|Acc]);

merge_text_content([#xqAtomicValue{} = H1,#xqElementNode{expr = Expr}|T], Acc) ->
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
   merge_text_content([Str3|T], Acc);

merge_text_content([H1, #xqAtomicValue{} = H2|T], Acc) when is_list(H1) ->
   H3 = maybe_merge_text_seq(H1),
   St2 = xqerl_types:string_value(H3),
   S1 = xqerl_types:string_value(H2),
   Str3 = ?str(St2 ++ S1),
   merge_text_content([Str3|T], Acc);

merge_text_content([H1|T], Acc) when is_list(H1) ->
   H3 = maybe_merge_text_seq(H1),
   St2 = xqerl_types:string_value(H3),
   Str3 = ?str(St2),
   merge_text_content([Str3|T], Acc);

merge_text_content([#xqTextNode{expr = S1},#xqTextNode{expr = S2}|T], Acc) ->
   St1 = xqerl_types:string_value(S1),
   St2 = xqerl_types:string_value(S2),
   Str3 = ?str(St2 ++ St1),
   Node = ?str(Str3),
   merge_text_content([Node|T], Acc);

merge_text_content([#xqNode{} = Node|T], Acc) ->
   Atomized = [atomize_node(Node)],
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
         merge_text_content([Str3|T], Acc);
      _ ->
         merge_text_content(T, [H|Acc])
   end.

% a unique hash value for this node
get_node_hash(#xqNode{} = Node) ->
   erlang:phash(Node, 4294967296);
get_node_hash(_NonNode) ->
   xqerl_error:error('XPTY0004').

% string values  nodes as the correct type
atomize_nodes(List) when is_list(List) ->
   lists:map(fun(I) ->
                   atomize_node(I)
             end, List);
atomize_nodes(List) ->
   [atomize_node(List)].

atomize_node([]) -> ?str([]);
atomize_node(#xqAtomicValue{} = Av) ->
   Av;
atomize_node(#xqNode{doc = Doc, node = Node}) ->
   String = xqerl_xdm:dm_string_value(Doc, Node),
   Type = xqerl_xdm:dm_node_kind(Doc, Node),
   if Type == namespace;
      Type == comment ->
         ?str(String);
      Type == 'processing-instruction' ->
         ?str(string:trim(String, leading));
      true ->
         ?untyp(String)
   end;
atomize_node(#xqElementNode{expr = S}) -> atomize_node(S);
atomize_node(#xqAttributeNode{expr = S}) -> ?untyp(xqerl_types:string_value(S));
atomize_node(#xqNamespaceNode{name = #qname{namespace = S}}) -> ?str(S);
atomize_node(#xqNamespace{namespace = S}) -> ?str(S);
atomize_node(#xqProcessingInstructionNode{expr = S}) -> ?str(string:trim(xqerl_types:string_value(S), leading));
atomize_node(#xqCommentNode{expr = S}) -> ?str(xqerl_types:string_value(S));
atomize_node(#xqTextNode{expr = S}) -> ?untyp(xqerl_types:string_value(S)).

%% Tests if 2 nodes are logically deep-equal 
nodes_equal(Doc1, Node1,Doc2, Node2,Collation) ->
   Type1 = xqerl_xdm:dm_node_kind(Doc1, Node1),
   Type2 = xqerl_xdm:dm_node_kind(Doc2, Node2),
   if Type1 == document andalso Type2 == document ->
         Nodes1 = get_comparable_child_nodes(Doc1, Node1),
         Nodes2 = get_comparable_child_nodes(Doc2, Node2),
         length(Nodes1) == length(Nodes2)
            andalso
         lists:all(fun({Ci1,Ci2}) ->
                         nodes_equal(Doc1,Ci1,Doc2,Ci2,Collation)
                   end, lists:zip(Nodes1, Nodes2));
      Type1 == element andalso Type2 == element ->
         Name1 = xqerl_xdm:dm_node_name(Doc1, Node1),
         Name2 = xqerl_xdm:dm_node_name(Doc2, Node2),
         Name1 == Name2
            andalso
         attributes_equal(Doc1, xqerl_xdm:dm_attributes(Doc1, Node1),
                          Doc2, xqerl_xdm:dm_attributes(Doc2, Node2), Collation)
            andalso
         begin
            Nodes1 = get_comparable_child_nodes(Doc1, Node1),
            Nodes2 = get_comparable_child_nodes(Doc2, Node2),
            length(Nodes1) == length(Nodes2)
               andalso
            lists:all(fun({Ci1,Ci2}) ->
                            nodes_equal(Doc1,Ci1,Doc2,Ci2,Collation)
                      end, lists:zip(Nodes1, Nodes2))
         end;
      Type1 == attribute andalso Type2 == attribute ->
         Name1 = xqerl_xdm:dm_node_name(Doc1, Node1),
         Name2 = xqerl_xdm:dm_node_name(Doc2, Node2),
         Name1 == Name2
            andalso
         begin
            Val1 = xqerl_xdm:dm_string_value(Doc1, Node1),
            Val2 = xqerl_xdm:dm_string_value(Doc2, Node2),
            xqerl_operators:equal(?str(Val1),?str(Val2),Collation) == ?bool(true)
         end;
      Type1 == text andalso Type2 == text ->
         Val1 = xqerl_xdm:dm_string_value(Doc1, Node1),
         Val2 = xqerl_xdm:dm_string_value(Doc2, Node2),
         xqerl_operators:equal(?str(Val1),?str(Val2),Collation) == ?bool(true);
      Type1 == comment andalso Type2 == comment ->
         Val1 = xqerl_xdm:dm_string_value(Doc1, Node1),
         Val2 = xqerl_xdm:dm_string_value(Doc2, Node2),
         xqerl_operators:equal(?str(Val1),?str(Val2),Collation) == ?bool(true);
      Type1 == 'processing-instruction' andalso Type2 == 'processing-instruction' ->
         Name1 = xqerl_xdm:dm_node_name(Doc1, Node1),
         Name2 = xqerl_xdm:dm_node_name(Doc2, Node2),
         Name1 == Name2
            andalso
         begin
            Val1 = xqerl_xdm:dm_string_value(Doc1, Node1),
            Val2 = xqerl_xdm:dm_string_value(Doc2, Node2),
            xqerl_operators:equal(?str(Val1),?str(Val2)) == ?bool(true)
         end;
      Type1 == namespace andalso Type2 == namespace ->
         Name1 = xqerl_xdm:dm_node_name(Doc1, Node1),
         Name2 = xqerl_xdm:dm_node_name(Doc2, Node2),
         Name1 == Name2;
      true ->
         false
   end.

nodes_equal(#xqNode{} = N1,#xqNode{} = N1,_) ->
   ?bool(true);
nodes_equal(#xqNode{doc = Doc1,node = Node1},#xqNode{doc = Doc2,node = Node2},Collation) ->
   Eq = nodes_equal(Doc1,Node1,Doc2,Node2,Collation),
   ?bool(Eq).

% takes actual nodes, not ids
attributes_equal(_,[],_,[], _) -> 
   true;
attributes_equal(Doc1,Atts1,Doc2,Atts2, Collation) ->
   length(Atts1) == length(Atts2) 
   andalso
   lists:all(
       fun(A1) ->
            lists:any(
                 fun(A2) ->
                       nodes_equal(Doc1, A1,Doc2, A2,Collation)
                 end, Atts2)
       end, Atts1).

get_comparable_child_nodes(Doc,Node) ->
   Children = xqerl_xdm:dm_children(Doc, Node),
   [C ||
    C <- Children,
    T <- [xqerl_xdm:dm_node_kind(Doc,C)],
    T =/= comment,
    T =/= 'processing-instruction'].


%% to_xml({Map,Bin}) when is_map(Map), is_binary(Bin) ->
%%    to_xml(#xqNode{doc = Map, node = Bin});
to_xml(#xqError{} = E) ->
   E;
to_xml(N) when is_list(N) ->
   M = combine_atomics(N,[]),
   lists:flatmap(fun to_xml/1,M);
to_xml(#xqNode{doc = Doc, node = Node}) ->
   to_xml(Node, Doc);
to_xml(#xqAtomicValue{} = A) -> xqerl_types:string_value(A).

to_xml(Node, Doc) ->
   NodeKind = xqerl_xdm:dm_node_kind(Doc, Node),
   to_xml(NodeKind, Node, Doc).

to_xml(document, Node, Doc) ->
   Children = xqerl_xdm:dm_children(Doc, Node),
   lists:flatmap(fun(Child) ->
                       to_xml(Child, Doc)
                 end, Children);
to_xml(element, Node, Doc) ->
   {ElemNs,ElemLn} = xqerl_xdm:dm_node_name(Doc, Node),
   Prefix  = xqerl_xdm:prefix(Doc, Node),
   QName = #qname{namespace = ElemNs, prefix = Prefix, local_name = ElemLn},

   Namespaces = xqerl_xdm:dm_namespace_nodes(Doc, Node),
   Attributes = xqerl_xdm:dm_attributes(Doc, Node),
   
   Children = xqerl_xdm:dm_children(Doc, Node),
   
   NspStr = lists:flatmap(fun(Ns) ->
                                %?dbg("Ns",Ns),
                                %?dbg("Doc",Doc),
                                to_xml(namespace, Ns, Doc)
                          end, Namespaces),
   AttStr = lists:flatmap(fun(Att) ->
                                to_xml(attribute, Att, Doc)
                          end, Attributes),
   ChldStr = lists:flatmap(fun(C) ->
                                 NodeKind = xqerl_xdm:dm_node_kind(Doc, C),
                                 to_xml(NodeKind,C,Doc)
                           end, Children),
   if ChldStr == [] ->
         "<" ++ ser_qname(QName) ++ NspStr ++ AttStr ++ "/>";
      true ->
         "<" ++ ser_qname(QName) ++ NspStr ++ AttStr ++ ">" ++ ChldStr ++ "</" ++ ser_qname(QName) ++ ">" 
   end;
to_xml(attribute,Node, Doc) ->
   StrV = xqerl_xdm:dm_string_value(Doc, Node),
   {Ns,Ln} = xqerl_xdm:dm_node_name(Doc, Node),
   Px = xqerl_xdm:prefix(Doc, Node),
   QName = #qname{namespace = Ns, prefix = Px, local_name = Ln},
   %?dbg("QName",QName),
   " " ++ ser_qname(QName) ++ "=\"" ++ encode_att_text(StrV) ++ "\"";
to_xml('processing-instruction',Node, Doc) ->
   {_, Local} = xqerl_xdm:dm_node_name(Doc, Node),
   Txt = encode_text(xqerl_xdm:dm_string_value(Doc, Node)),
   if Txt == "" ->
         "<?" ++ Local ++ " ?>";
      true ->
         "<?" ++ Local ++ " " ++ Txt ++ "?>"
   end;
% namespace nodes can be here as records and not binary
to_xml(namespace,#xqNamespaceNode{name = #qname{namespace = Ns, prefix = Px}}, _Doc) ->
   if Px == "xml";
      Ns == 'no-namespace' ->
         "";
      true ->
         Ns1 = if Ns == 'undefined' ->
                     "";
                  true ->
                     encode_att_text(Ns)
               end,
         " " ++ 
         if is_atom(Px) orelse Px == "" ->
               "xmlns";
            true ->
               "xmlns:" ++ Px
         end ++ "=\"" ++ Ns1 ++ "\""
   end;
to_xml(namespace,Node, Doc) ->
   Ns = xqerl_xdm:dm_string_value(Doc, Node),
   Px = case xqerl_xdm:dm_node_name(Doc, Node) of
           {_,Px1} ->
              Px1;
           [] ->
              []
        end,
   to_xml(namespace,#xqNamespaceNode{name = #qname{namespace = Ns, prefix = Px}}, Doc);
to_xml(comment, Node, Doc) ->
   "<!--" ++ xqerl_xdm:dm_string_value(Doc, Node) ++ "-->";
to_xml(text,Node, Doc) ->
   encode_text(xqerl_xdm:dm_string_value(Doc, Node)).

combine_atomics([], Acc) ->
   lists:reverse(Acc);
combine_atomics([#xqAtomicValue{} = H1,#xqAtomicValue{} = H2|T], Acc) ->
   St1 = xqerl_types:string_value(H1),
   St2 = xqerl_types:string_value(xqerl_types:cast_as(H2, 'xs:string')),
   Str3 = lists:concat([St1," ",St2]),
   combine_atomics([#xqAtomicValue{type = 'xs:string', value = Str3}|T], Acc);
combine_atomics([H|T], Acc) ->
   combine_atomics(T, [H|Acc]).

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
   NewDef = [ok || #xqNamespaceNode{name = #qname{prefix = []}} <- ComputNamespaces],
   if length(NewDef) == 0 ->
         ok;
      true ->
         xqerl_error:error('XQDY0102')
   end;
check_computed_default_override(_, _) ->
   ok.

node_copy(#xqNode{} = XNode) ->
   Content = node_to_content(XNode),
   build_xqnode(#{'base-uri' => ""}, next_frag_id(), Content).


% return a list
node_to_content(#xqNode{doc = Doc, node = Node}) ->
   Content = node_to_content(Doc,Node),
   if is_list(Content) ->
         Content;
      true ->
         [Content]
   end.

node_to_content(Doc,Node) ->
   Fun = fun(N) ->
               node_to_content(Doc, N)
         end,
  case xqerl_xdm:dm_node_kind(Doc, Node) of
     document ->
        lists:map(Fun, xqerl_xdm:dm_children(Doc, Node));
     element ->
        Namespaces = lists:map(Fun, xqerl_xdm:dm_namespace_nodes(Doc, Node)),
        Attributes = lists:map(Fun, xqerl_xdm:dm_attributes(Doc, Node)),
        Children   = lists:map(Fun, xqerl_xdm:dm_children(Doc, Node)),
        {Namespace,LocalName} = xqerl_xdm:dm_node_name(Doc, Node),
        Prefix = xqerl_xdm:prefix(Doc, Node),
        #xqElementNode{name = #qname{namespace = Namespace, prefix = Prefix, local_name = LocalName},
                       attributes = Namespaces, children = [], expr = Attributes ++ Children};
     namespace ->
        Prefix = case xqerl_xdm:dm_node_name(Doc, Node) of
                    [] ->
                       [];
                    {_,Pr} ->
                       Pr
                 end,
        Uri        = xqerl_xdm:dm_string_value(Doc, Node),
        #xqNamespaceNode{name = #qname{namespace = Uri, prefix = Prefix}};
     attribute ->
        {Namespace,LocalName} = xqerl_xdm:dm_node_name(Doc, Node),
        Prefix = if Namespace == 'no-namespace' ->
                       [];
                    true ->
                       xqerl_xdm:prefix(Doc, Node)
                 end,
        Value = xqerl_xdm:dm_string_value(Doc, Node),
        #xqAttributeNode{name = #qname{namespace = Namespace, prefix = Prefix, local_name = LocalName},
                         expr = ?untyp(Value)};
     comment ->
        Value = xqerl_xdm:dm_string_value(Doc, Node),
        #xqCommentNode{expr = ?str(Value)};
     text ->
        Value = xqerl_xdm:dm_string_value(Doc, Node),
        #xqTextNode{expr = ?untyp(Value)};
     'processing-instruction' ->
        {Namespace,LocalName} = xqerl_xdm:dm_node_name(Doc, Node),
        Value = xqerl_xdm:dm_string_value(Doc, Node),
        #xqProcessingInstructionNode{name = #qname{namespace = Namespace, local_name = LocalName},
                                     expr = ?str(Value)}
  end.


%% XML doc is a map: #{file  => DocumentUri,- URI from the document during loading, doc-store lookup key
%%                     base  => BaseUri,    - Base URI for the document. can be different than Doc URI, e.g. set in query, also overridden by xml:base
%%                     names => NCNames,    - map of string() to integer(), key is the NCName, value is NAME ID below
%%                     namsp => Namespaces, - map of string() to integer(), key is the URI, value is NSP ID below
%%                     texts => TextValues, - map of integer() to string(), key is the 'Text Reference' ID below, value is the text
%%                     nodes => NodeBinary  - positional binary of 16 bytes with the following layout
%%                    }

% return #xqNode{}
build_xqnode(#{'base-uri' := BaseUri}, FragId, Nodes) ->
   State = #{file => FragId,
             base => xqerl_types:value(BaseUri),
             names => #{},
             namsp => #{},
             texts => #{},
             nodes => #{} % map first then binary
            },
   Size = maps:size(Nodes) -1,
   NodeList = lists:map(fun(I) ->
                              maps:get(I, Nodes)
                        end, lists:seq(1, Size)),
   build_xqnode(State, NodeList).

build_xqnode(#{nodes := Nodes} = State, []) ->
   NewNodes = map_to_bin(Nodes),
   Doc1 = add_text_lookup(State),
   Doc2 = Doc1#{nodes := NewNodes},
   #xqNode{doc = Doc2, node = xqerl_xdm:root(Doc2)};
build_xqnode(State, [#xqDocumentNode{identity = Id, desc_count = Size}|List]) ->
   Bin = xqerl_xdm:document_node(Size, Id),
   State1 = add_node_to_map(State, Id, Bin),
   build_xqnode(State1, List);
% TODO need att/ns count
build_xqnode(State, [#xqElementNode{identity = Id, desc_count = Size, parent_node = Par, name = #qname{namespace = Ns, local_name = Ln}}|List]) ->
   AtNsSize = 31,
   {NsId,State1} = get_namespace_id(State, Ns),
   {LnId,State2} = get_local_name_id(State1, Ln),
   Offset = Id - Par,
   Bin = xqerl_xdm:element_node(AtNsSize, NsId, LnId, Offset, Size, Id),
   State3 = add_node_to_map(State2, Id, Bin),
   build_xqnode(State3, List);
build_xqnode(State, [#xqNamespaceNode{identity = Id, parent_node = Par, name = #qname{namespace = Ns, prefix = Ln}}|List]) ->
   {NsId,State1} = get_namespace_id(State, Ns),
   {LnId,State2} = get_local_name_id(State1, Ln),
   Offset = Id - Par,
   Bin = xqerl_xdm:namespace_node(NsId, LnId, Offset, Id),
   State3 = add_node_to_map(State2, Id, Bin),
   build_xqnode(State3, List);
% special case of stand-alone attribute with namespace
build_xqnode(State, [#xqAttributeNode{identity = 1, 
                                      name = #qname{namespace = Ns, prefix = Px, local_name = Ln}, 
                                      expr = Val}|List]) when Ns =/= 'no-namespace' ->
   Value = xqerl_types:string_value(Val),
   {TId,State1} = get_text_id(State, Value),
   {NsId,State2} = get_namespace_id(State1, Ns),
   {LnId,State3} = get_local_name_id(State2, Ln),
   {PxId,State4} = get_local_name_id(State3, Px),
   Offset = 0,
   Bin1 = xqerl_xdm:namespace_node(NsId, PxId, 0, 1),
   Bin2 = xqerl_xdm:attribute_node(NsId, LnId, TId, Offset, 2),
   State5 = add_node_to_map(State4, 1, Bin1),
   State6 = add_node_to_map(State5, 2, Bin2),
   build_xqnode(State6, List);
build_xqnode(State, [#xqAttributeNode{identity = Id, parent_node = Par, name = #qname{namespace = Ns, local_name = Ln}, expr = Val}|List]) ->
   Value = xqerl_types:string_value(Val),
   {TId,State1} = get_text_id(State, Value),
   {NsId,State2} = get_namespace_id(State1, Ns),
   {LnId,State3} = get_local_name_id(State2, Ln),
   Offset = Id - Par,
   IsId = if Ns == "http://www.w3.org/XML/1998/namespace" andalso Ln == "Id" -> 1;
             true -> 0
          end,
   Bin = xqerl_xdm:attribute_node(NsId, LnId, TId, IsId, Offset, Id),
   State4 = add_node_to_map(State3, Id, Bin),
   build_xqnode(State4, List);
build_xqnode(State, [#xqTextNode{identity = Id, parent_node = Par, expr = Val}|List]) ->
   Value = xqerl_types:string_value(Val),
   {TId,State1} = get_text_id(State, Value),
   Offset = Id - Par,
   Bin = xqerl_xdm:text_node(TId, Offset, Id),
   State2 = add_node_to_map(State1, Id, Bin),
   build_xqnode(State2, List);
build_xqnode(State, [#xqCommentNode{identity = Id, parent_node = Par, expr = Val}|List]) ->
   Value = xqerl_types:string_value(Val),
   {TId,State1} = get_text_id(State, Value),
   Offset = Id - Par,
   Bin = xqerl_xdm:comment_node(TId, Offset, Id),
   State2 = add_node_to_map(State1, Id, Bin),
   build_xqnode(State2, List);
build_xqnode(State, [#xqProcessingInstructionNode{identity = Id, parent_node = Par, name = #qname{local_name = Ln}, expr = Val}|List]) ->
   Value = xqerl_types:string_value(Val),
   {TId,State1} = get_text_id(State, Value),
   {LnId,State2} = get_local_name_id(State1, Ln),
   {NsId,State3} = get_namespace_id(State2, 'no-namespace'),
   Offset = Id - Par,
   Bin = xqerl_xdm:pi_node(NsId,LnId, TId, Offset, Id),
   State4 = add_node_to_map(State3, Id, Bin),
   build_xqnode(State4, List).  

%% from xqerl_doc

get_local_name_id(#{names := Names} = State, Val) ->
   case maps:find(Val, Names) of
      {ok, Id} ->
         {Id,State};
      error ->
         Cnt = maps:size(Names) + 1,
         NewNames = maps:put(Val, Cnt, Names),
         {Cnt, State#{names := NewNames}}
   end.

get_namespace_id(#{namsp := Names} = State, Val) ->
   case maps:find(Val, Names) of
      {ok, Id} ->
         {Id,State};
      error ->
         Cnt = maps:size(Names) + 1,
         NewNames = maps:put(Val, Cnt, Names),
         {Cnt, State#{namsp := NewNames}}
   end.

get_text_id(#{texts := Names} = State, Val) ->
   case maps:find(Val, Names) of
      {ok, Id} ->
         {Id,State};
      error ->
         Cnt = maps:size(Names) + 1,
         NewNames = maps:put(Val, Cnt, Names),
         {Cnt, State#{texts := NewNames}}
   end.

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

add_node_to_map(#{nodes := Nodes} = State, Id, Bin) ->
   Nodes2 = maps:put(Id, Bin, Nodes),
   State#{nodes := Nodes2}.

