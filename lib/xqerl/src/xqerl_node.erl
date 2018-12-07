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

%% @doc Processing for local nodes created in XQuery. Translation from 
%% 'doc' -> node.
%% TODO : Complete rewrite. simplify

-module(xqerl_node).
-compile(inline_list_funcs).

-include("xqerl.hrl").

-define(bool(Val), #xqAtomicValue{type = 'xs:boolean', value = Val}).
-define(str(Val), #xqAtomicValue{type = 'xs:string', value = Val}).
-define(untyp(Val), #xqAtomicValue{type = 'xs:untypedAtomic', value = Val}).

-define(STR_REST(Str,Rest), <<Str,Rest/binary>>).
-define(CP_REST(Cp,Rest), <<Cp/utf8,Rest/binary>>).
-define(SSTR(S), <<S>>).

-export([new_fragment/1]).
-export([new_fragment/2]).

-export([atomize_nodes/1]).
-export([to_xml/1]).
-export([nodes_equal/3]).

-export([node_to_content/2]).

-export([get_node_type/1]).

% for fn:generate-id
-export([get_node_hash/1]).

-export([merge_content/2]).


new_context(Ctx) ->
   Ctx#{next_node_id => 0,
        frag_id => next_frag_id(),
        nodes => #{}}.

new_fragment(#{nk := _} = Node) -> 
   Node.

% return document 
-spec new_fragment(any(), any()) -> 
         xq_types:xml_node() | [xq_types:xml_node()].
new_fragment(_, []) -> [];
new_fragment(_, [undefined]) -> [];
new_fragment(#{'base-uri' := B} = Ctx0, Content) when is_list(Content), is_map(Ctx0) ->
   DefaultNs = [Ns || #xqNamespace{prefix = Px} = Ns 
               <- maps:get(namespaces, Ctx0,
                           [#xqNamespace{namespace = 'no-namespace', 
                                         prefix = <<>>}]), 
                      Px =:= <<>>],
   Ctx = new_context(Ctx0),
   {Id,Ctx1} = next_id(Ctx),
   Doc = #xqXmlFragment{identity = Id},
   Ctx2 = add_node(Ctx1, Id, Doc),
   DynNs = [#xqNamespace{namespace = ?SSTR("http://www.w3.org/XML/1998/namespace"), 
                         prefix = ?SSTR("xml")}|DefaultNs],
   {Children, Sz, Ctx4} = handle_contents(Ctx2, Id, Content, DynNs, 0),
   if Children == [] ->
         [];
      true ->
         Ctx5 = set_node_children(Ctx4, Id, Children, Sz),
         _FragId = get_frag_id(Ctx5),
         {_,L} = build_sax(Ctx0, get_nodes(Ctx5)),
         xqldb_mem_nodes:parse_list(xqerl_types:value(B),L)
   end;
new_fragment(Ctx0, Content) when is_map(Ctx0), not is_list(Content) ->
   new_fragment(Ctx0, [Content]);
new_fragment(Ctx0, Content) when is_list(Content), not is_map(Ctx0) ->
   new_fragment(new_context(#{'base-uri' => #xqAtomicValue{value = <<>>},
                              'copy-namespaces' => {preserve, 'no-inherit'}}), Content);
new_fragment(Ctx0, Content) when not is_map(Ctx0), not is_list(Content) ->
   new_fragment(new_context(#{'base-uri' => #xqAtomicValue{value = <<>>},
                              'copy-namespaces' => {preserve, 'no-inherit'}}), [Content]).

can_follow([],_Curr) -> true;
can_follow(element,attribute) -> false;
can_follow(text,attribute) -> false;
can_follow('processing-instruction',attribute) -> false;
can_follow(comment,attribute) -> false;
can_follow(element,namespace) -> false;
can_follow(namespace,attribute) -> true;
can_follow(attribute,namespace) -> true;
can_follow(_,_) -> true.

get_node_type(#{nk := Nk}) -> Nk;
get_node_type(#xqDocumentNode{}) -> document;
get_node_type(#xqElementNode{}) -> element;
get_node_type(#xqNamespaceNode{}) -> namespace;
get_node_type(#xqAttributeNode{}) -> attribute;
get_node_type(#xqCommentNode{}) -> comment;
get_node_type(#xqTextNode{}) -> text;
get_node_type(#xqProcessingInstructionNode{}) -> 'processing-instruction'.

string_if_tuple(Val) when is_tuple(Val) ->
   xqerl_types:string_value(Val);
string_if_tuple(Val) ->
   Val.

ensure_qname(#qname{namespace = [Nx]} = QName, InScopeNamespaces) ->
   ensure_qname(QName#qname{namespace = Nx}, InScopeNamespaces);
ensure_qname(#qname{prefix = [Nx]} = QName, InScopeNamespaces) ->
   ensure_qname(QName#qname{prefix = Nx}, InScopeNamespaces);
ensure_qname(#qname{local_name = [Nx]} = QName, InScopeNamespaces) ->
   ensure_qname(QName#qname{local_name = Nx}, InScopeNamespaces);

ensure_qname(#xqAtomicValue{type = 'xs:QName', value = QName}, 
             _InScopeNamespaces) -> QName;
ensure_qname(#qname{namespace = #xqAtomicValue{} = Nx} = QName, 
             InScopeNamespaces) ->
   NewNx = xqerl_types:string_value(Nx),
   ensure_qname(QName#qname{namespace = NewNx}, InScopeNamespaces);
ensure_qname(#qname{prefix = #xqAtomicValue{value = <<>>}} = QName, 
             InScopeNamespaces) ->
   ensure_qname(QName#qname{prefix = <<>>}, InScopeNamespaces);
ensure_qname(#qname{prefix = #xqAtomicValue{} = Nx} = QName, 
             InScopeNamespaces) ->
   try
      NewNx = xqerl_types:string_value(xqerl_types:cast_as(Nx, 'xs:NCName')),
      ensure_qname(QName#qname{prefix = NewNx}, InScopeNamespaces)
   catch
      _:_ ->
         ?err('XQDY0074')
   end;
ensure_qname(#qname{local_name = #xqAtomicValue{} = Nx} = QName, 
             InScopeNamespaces) ->
   try
      NewNx = xqerl_types:string_value(xqerl_types:cast_as(Nx, 'xs:NCName')),
      ensure_qname(QName#qname{local_name = NewNx}, InScopeNamespaces)
   catch
      _:_ ->
         ?err('XQDY0074')
   end;
ensure_qname(#qname{namespace = #{nk := _} = Nx} = QName, InScopeNamespaces) ->
   NewNx = xqerl_types:string_value(Nx),
   ensure_qname(QName#qname{namespace = NewNx}, InScopeNamespaces);
ensure_qname(#qname{prefix = #{nk := _} = Nx} = QName, InScopeNamespaces) ->
   try
      NewNx = xqerl_types:string_value(xqerl_types:cast_as(Nx, 'xs:NCName')),
      ensure_qname(QName#qname{prefix = NewNx}, InScopeNamespaces)
   catch
      _:_ ->
         ?err('XQDY0074')
   end;
ensure_qname(#qname{local_name = #{nk := _} = Nx} = QName, InScopeNamespaces) ->
   try
      NewNx = xqerl_types:string_value(xqerl_types:cast_as(Nx, 'xs:NCName')),
      ensure_qname(QName#qname{local_name = NewNx}, InScopeNamespaces)
   catch
      _:_ ->
         ?err('XQDY0074')
   end;
ensure_qname(#qname{namespace = Ns, prefix = Px, local_name = Ln} = QName, 
             InScopeNamespaces) -> 
   SNs = is_tuple(Ns),
   SPx = is_tuple(Px),
   SLn = is_tuple(Ln),
   Ns1 = string_if_tuple(Ns),
   Px1 = string_if_tuple(Px),
   Ln1 = string_if_tuple(Ln),
   if SNs orelse SPx orelse SLn ->
         ensure_qname(#qname{namespace = Ns1, prefix = Px1, local_name = Ln1}, 
                      InScopeNamespaces);
      true ->
         QName
   end;
ensure_qname(#{nk := _} = Node, InScopeNamespaces) -> 
   try
      Q = xqerl_types:cast_as(Node,'xs:QName',InScopeNamespaces),
      xqerl_types:value(Q)
   catch
      _:_ ->
         ?err('XQDY0074')
   end;
ensure_qname(#xqAtomicValue{type = Ty} = At, InScopeNamespaces) 
   when Ty =:= 'xs:string';
        Ty =:= 'xs:untypedAtomic' ->
   try
      xqerl_types:value(xqerl_types:cast_as(At,'xs:QName',InScopeNamespaces))
   catch
      _:_ ->
         ?err('XQDY0074')
   end;
ensure_qname(#xqAtomicValue{} = V, InScopeNamespaces) ->
   ?dbg("XPTY0004",{V, InScopeNamespaces}),
   ?err('XPTY0004');
ensure_qname([H], InScopeNamespaces) ->
   ensure_qname(H, InScopeNamespaces);
ensure_qname(QName, InScopeNamespaces) ->
   case ?seq:from_list(QName) of
      [H] ->
         ensure_qname(H, InScopeNamespaces);
      _ ->
         ?dbg("XPTY0004",{QName, InScopeNamespaces}),
         ?err('XPTY0004')
   end.

%% A namespace binding is created for each namespace declared in the current 
%%   element constructor by a namespace declaration attribute.
%% A namespace binding is created for each namespace node in the content 
%%   sequence of the current element constructor.
%% A namespace binding is created for each namespace that is declared in a 
%%   namespace declaration attribute of an enclosing 
%%   direct element constructor and not overridden by the current element 
%%   constructor or an intermediate constructor.
%% A namespace binding is always created to bind the prefix xml to the 
%%   namespace URI http://www.w3.org/XML/1998/namespace.
%% For each prefix used in the name of the constructed element or in the names 
%%   of its attributes, a namespace binding must exist. 
%%   If a namespace binding does not already exist for one of these prefixes, 
%%   a new namespace binding is created for it. 
%%   If this would result in a conflict, because it would require two different 
%%   bindings of the same prefix, then the prefix used in the node name is 
%%   changed to an arbitrary implementation-dependent prefix that does not 
%%   cause such a conflict, and a namespace binding is created for this new 
%%   prefix. If there is an in-scope default namespace, then a binding is 
%%   created between the empty prefix and that URI.
% return new in-scope namespaces
augment_inscope_namespaces(#xqElementNode{name = #qname{namespace = <<>>, 
                                                        prefix = <<>>} = Q} = E, 
                           InscopeNamespaces) ->
   augment_inscope_namespaces(E#xqElementNode{
                                    name = Q#qname{namespace = 'no-namespace'}}, 
                           InscopeNamespaces);
augment_inscope_namespaces(#xqElementNode{name = #qname{namespace = Ns, 
                                                        prefix = Px}}, 
                           InscopeNamespaces) ->
   % contructed names may bring in namepace binding
   NewNs = #xqNamespace{namespace = Ns, prefix = Px},
   AlreadyInScope = lists:member(NewNs, InscopeNamespaces),
   if AlreadyInScope ->
         InscopeNamespaces;
      Px == <<>> andalso Ns == 'no-namespace' ->
         [#xqNamespace{prefix = Px,namespace = Ns}|InscopeNamespaces];
      true -> % new binding
         PxList = [Px1 || #xqNamespace{prefix = Px1} <- InscopeNamespaces],
         PxAlreadyInUse = lists:member(Px, PxList),
         if Px == <<>> -> % default override from element
               [NewNs|
                  [Nx || 
                   #xqNamespace{prefix = Px1} = Nx 
                  <- InscopeNamespaces, Px1 =/= <<>>]];
            PxAlreadyInUse == false ->
               [NewNs|InscopeNamespaces];
            true ->
               NewPx = xqerl_lib:next_comp_prefix(InscopeNamespaces),
               NewNs1 = NewNs#xqNamespace{prefix = NewPx},
               case lists:member(NewNs1, InscopeNamespaces) of
                  true ->
                     InscopeNamespaces;
                  _ ->
                     [NewNs1|InscopeNamespaces]
               end
         end
   end;
augment_inscope_namespaces(#xqAttributeNode{name = Name} = Att, 
                           InscopeNamespaces) ->
   #qname{namespace = Ns, prefix = Px, local_name = Ln} = 
     ensure_qname(Name,InscopeNamespaces),
   % attributes in namespaces unknown add the namespace to the inscopes, 
   %  they do not override prefixes
   % catch overwrites of xml and xmlns namespaces here
   % errors on attribute
   if Px == <<"xmlns">>;
      Px == <<"">> andalso Ln == <<"xmlns">>;
      Ns == <<"http://www.w3.org/2000/xmlns/">>;
      Px == <<"xml">> andalso Ns =/= <<"http://www.w3.org/XML/1998/namespace">>;
      Ns == <<"http://www.w3.org/XML/1998/namespace">> andalso Px =/= <<"xml">> ->
         ?err('XQDY0044');
      true ->
         ok
   end,
   NewNs = #xqNamespace{namespace = Ns, prefix = Px},
   AlreadyInScope = lists:member(NewNs, InscopeNamespaces),
   if AlreadyInScope ->
         {Att,InscopeNamespaces};
      Px == <<>> andalso Ns == 'no-namespace' ->
         {Att,InscopeNamespaces};
      true -> % new binding
         PxList = [Px1 || #xqNamespace{prefix = Px1} <- InscopeNamespaces],
         PxAlreadyInUse = lists:member(Px, PxList),
         if PxAlreadyInUse == false andalso Px =/= <<>> ->
               {Att,[NewNs|InscopeNamespaces]};
            true ->
               NewPx = xqerl_lib:next_comp_prefix(InscopeNamespaces),
               NewNs1 = NewNs#xqNamespace{prefix = NewPx},
               {Att#xqAttributeNode{name = #qname{namespace = Ns, 
                                                  prefix = NewPx, 
                                                  local_name = Ln}}, 
                [NewNs1|InscopeNamespaces]}
         end
   end;
augment_inscope_namespaces(#xqNamespaceNode{name = #qname{namespace = Ns, prefix = Px}}, InscopeNamespaces) ->
   % namespace nodes overwrite prefix bindings
   Fil = lists:filter(fun(#xqNamespace{prefix = Px1}) ->
                            Px1 =/= Px
                      end, InscopeNamespaces),
   [#xqNamespace{namespace = Ns, prefix = Px}|Fil];
augment_inscope_namespaces(_, InscopeNamespaces) -> InscopeNamespaces.


check_element_name(#qname{prefix = <<"xmlns">>}) -> 
   ?err('XQDY0096');
check_element_name(#qname{namespace = <<"http://www.w3.org/2000/xmlns/">>}) -> 
   ?err('XQDY0096');
check_element_name(#qname{namespace = TNs, 
                          prefix = <<"xml">>}) 
   when TNs =/= <<"http://www.w3.org/XML/1998/namespace">> -> 
   ?err('XQDY0096');
check_element_name(#qname{namespace = <<"http://www.w3.org/XML/1998/namespace">>, 
                          prefix = TPx}) 
   when TPx =/= <<"xml">> -> 
   ?err('XQDY0096');
check_element_name(_) ->
   ok.

check_attribute_names(AttributeNodes) ->
   Names = [{Ns,Ln} || 
            #xqAttributeNode{name = #qname{namespace = Ns, local_name = Ln}} 
           <- AttributeNodes],
   OK = length(lists:sort(Names)) == length(lists:usort(Names)),
   if OK ->
         ok;
      true ->
         ?err('XQDY0025')
   end.
   
ensure_content(undefined) -> [];
ensure_content(Content) when is_list(Content) -> Content;
ensure_content(Content) -> 
   [Content]. % leave sequences alone, they get atomized

merge_inscope_namespaces({'no-preserve','no-inherit'},
                         ElemNs,
                         _InScopeNs,
                         _DirectNamespaces) ->
   % no-preserve, no-inherit means keep only used namespaces.
   ElemNs;
merge_inscope_namespaces({'no-preserve',inherit},
                         _ElemNs,
                         InScopeNs,
                         DirectNamespaces) ->
   % no-preserve, inherit means keep no namespaces actually attached and all in-scope.
   lists:ukeymerge(3, lists:keysort(3, DirectNamespaces), lists:keysort(3, InScopeNs));
merge_inscope_namespaces({preserve,'no-inherit'},
                         _ElemNs,
                         _InScopeNs,
                         DirectNamespaces) ->
   % preserve, no-inherit means keep only those namespaces actually attached.
   lists:keysort(3, DirectNamespaces);
   %lists:ukeymerge(3, lists:keysort(3, DirectNamespaces), lists:keysort(3, InScopeNs));
merge_inscope_namespaces({preserve,inherit},
                         ElemNs,
                         InScopeNs,
                         DirectNamespaces) ->
   % preserve, inherit means keep all namespaces actually attached and all non-conflicting in-scope.
   Keep =    lists:ukeymerge(3, lists:keysort(3, DirectNamespaces), lists:keysort(3, InScopeNs)),
   F = fun(#xqNamespace{namespace = NS1, prefix = PX1}) ->
                B = fun(#xqNamespace{namespace = NS2, prefix = PX2}) ->
                          NS1 == NS2 orelse PX1 == PX2
                    end,
                not lists:any(B, Keep)
          end,
   lists:filter(F, ElemNs) ++ Keep.

% returns {Children, Sz, Ctx3}
-spec handle_contents(map(),_,_,_,_) -> {[integer()], integer(), map()}.
handle_contents(Ctx, _Parent, [], _Ns, Sz) -> {[], Sz, Ctx};
handle_contents(Ctx, _Parent, [undefined], _Ns, Sz) -> {[], Sz, Ctx};
handle_contents(Ctx, Parent, Content, Ns, Sz) when is_list(Content) ->
   Content1 = xqerl_seq3:flatten(Content),
   Fun = fun(Node, {Children, Sz1, Ctx1, LastType, _UsedAttNames}) ->
               Type = get_node_type(Node),
               case can_follow(LastType,Type) of
                  false ->
                     ?err('XQTY0024');
                  _ ->
                     {Id, Sz2,Ctx2} = handle_content(Ctx1,Parent,Node,Ns,Sz1),
                     if is_list(Id) ->
                           {Id ++ Children, Sz2,Ctx2,Type,[]};
                        true ->
                           {[Id|Children], Sz2,Ctx2,Type,[]}
                     end
               end
         end,
   {Ids, Sz3,Ctx3,_Type,_UsedAtts} = 
     lists:foldl(Fun, {[], Sz, Ctx, [], []}, Content1),
   {Ids, Sz3,Ctx3};
handle_contents(Ctx, Parent, Content, Ns, Sz) ->
   handle_contents(Ctx, Parent, [Content], Ns, Sz).

% returns {Id, Sz,Ctx2}
handle_content(#{'base-uri' := BU,
                 'copy-namespaces' := CopyNsPreserveInherit} = Ctx, 
               Parent, #xqElementNode{name = QName,
                                      inscope_ns = ElemNs,
                                      attributes = Atts, 
                                      expr = Content} = N, 
               InScopeNs0, Sz) ->
?dbg("ElemNs    ",ElemNs),
%?dbg("InScopeNs0",InScopeNs0),

   {Id,Ctx1} = next_id(Ctx),
   
   % direct constructors have their namespaces in attributes, 
   % constructed are in expr
   Atts1    = ensure_content(Atts),
%?dbg("Atts ",Atts ),
%?dbg("Atts1",Atts1),
   DirectNamespaces = [#xqNamespace{namespace = if XNs == <<>> -> 'no-namespace';
                                                   true -> XNs end,
                                    prefix = XPx}
                      || #xqNamespaceNode{name = #qname{namespace = XNs,
                                                        prefix = XPx}} 
                      <- Atts1],
   ok = check_direct_namespaces(DirectNamespaces),

   % merge static namespaces into the inscope
   InScopeNs = merge_inscope_namespaces(CopyNsPreserveInherit,
                                        ElemNs,
                                        InScopeNs0,
                                        DirectNamespaces),
%?dbg("DirectNamespaces",DirectNamespaces),
%?dbg("InScopeNs",InScopeNs),
   Content0 = ensure_content(Content),
   Content1 = expand_nodes(Content0,CopyNsPreserveInherit,InScopeNs),

   ComputNamespaces = [X || X <- Content1, is_record(X, xqNamespaceNode)],

   % computed namespaces can have expressions for QNames
   ComputNamespaces1 = lists:map(fun(#xqNamespaceNode{name = Q} = NsN) ->
                                     NewQ = ensure_qname(Q, InScopeNs),
                                     NsN#xqNamespaceNode{name = NewQ}
                               end, ComputNamespaces),

   ok = check_computed_namespaces(ComputNamespaces1),
   
   % all non namespace nodes
   RestNodes = [X || X <- Atts1 ++ Content1,
                     not is_record(X, xqNamespaceNode),
                     not is_record(X, xqNamespace)],
   
   InScopeNs1 = lists:foldl(fun(NsN, Is) ->
                                  augment_inscope_namespaces(NsN, Is)
                            end, InScopeNs, ComputNamespaces1),

%?dbg("ComputNamespaces1",ComputNamespaces1),
%?dbg("InScopeNs1",InScopeNs1),
   % inscope from outside can be used here
   ElemQName = ensure_qname(QName, InScopeNs1 ++ ElemNs),
%?dbg("QName",QName),
%?dbg("ElemQName",ElemQName),
   InScopeNs2 = augment_inscope_namespaces(N#xqElementNode{name = ElemQName},
                                                 InScopeNs1),

%?dbg("InScopeNs2",InScopeNs2),
   %this will copy in any nodes
   Content2 = merge_content(Ctx, RestNodes, InScopeNs2),
   
   Fld1 = fun(#xqAttributeNode{name = Q} = NsN, Is) ->
                NewQ = ensure_qname(Q, InScopeNs2),
                augment_inscope_namespaces(
                  NsN#xqAttributeNode{name = NewQ}, Is);
             (O, Is) ->
                {O, Is}
          end,
   {Content3,InScopeNs3} = lists:mapfoldl(Fld1, InScopeNs2, Content2),

%?dbg("InScopeNs3",InScopeNs3),
   % all attribute nodes
   AttributeNodes2 = [X || X <- Content3, is_record(X, xqAttributeNode)],
   ok = check_attribute_names(AttributeNodes2),
   
   ok = check_computed_default_override(ElemQName, ComputNamespaces1),
   
   ok = check_element_name(ElemQName),
   % base-uri will come from the children
   Base1 = [Uri || 
            #xqAttributeNode{name =
                               #qname{namespace = 
                                        ?SSTR("http://www.w3.org/XML/1998/namespace"),
                                      local_name = ?SSTR("base")}, 
                             expr = Uri} <- Content3],
   NewBase = ?seq:flatten(Base1),
   BU1 = if NewBase == [] ->
               BU;
            true ->
               try
                  Path = xqerl_lib:resolve_against_base_uri(
                        xqerl_types:value(BU),
                        xqerl_types:value(hd(NewBase))),
                  %?dbg("Path",Path),
                  #xqAtomicValue{type = 'xs:anyURI', value = Path}
               catch 
                  _:_ -> 
                     % invalid base uri in xml:base is empty
                     #xqAtomicValue{type = 'xs:anyURI', value = <<>>}
               end
         end,
%?dbg("BU1",BU1),
   ImplNamespaces = [#xqNamespaceNode{name = #qname{namespace = XNs,
                                                        prefix = XPx}} 
                      || #xqNamespace{namespace = XNs,
                                    prefix = XPx} <- InScopeNs3],
   ElemQName1 = resolve_namespace(ElemQName, InScopeNs3),
%?dbg("ElemQName1",ElemQName1),
   Node = N#xqElementNode{identity = Id, 
                          parent_node = Parent, 
                          name = ElemQName1, 
                          base_uri = BU1,
                          expr = undefined, 
                          attributes = undefined, 
                          inscope_ns = InScopeNs3},
   Ctx2 = (add_node(Ctx1, Id, Node)),
   {Children, Sz1, Ctx3} = 
     handle_contents(Ctx2#{'base-uri' := BU1}, 
                     Id, ImplNamespaces ++ Content3, 
                     InScopeNs3, 0),
   Ctx4 = (set_node_children(Ctx3, Id, Children, Sz1)),
   {Id, Sz1 + Sz + 1,Ctx4};

handle_content(Ctx, _Parent, #xqDocumentNode{expr = Content} = N, INs, Sz) ->
   {Id,Ctx1} = next_id(Ctx),
   Content1 = [Content],
   Content2 = merge_content(Ctx, Content1, INs),
   %?dbg("Content1",Content1),
   % no attributes on documents
   _ = lists:foreach(fun(#xqAttributeNode{}) ->
                           ?err('XPTY0004');
                        (_) ->
                           ok
                     end, Content2),
   Node = N#xqDocumentNode{identity = Id, expr = undefined},
   Ctx2 = add_node(Ctx1, Id, Node),
   {Children, Sz1, Ctx3} = handle_contents(Ctx2, Id, Content2, INs, 0),
   Ctx4 = set_node_children(Ctx3, Id, Children, Sz1),
   {Id, Sz1 + Sz + 1,Ctx4};

handle_content(Ctx, Parent, 
               #xqAttributeNode{name = QName, expr = Content} = N, 
               InScopeNs, Sz) ->
   {Id,Ctx1} = next_id(Ctx),
   Content2 = merge_text_content(Content, attribute),
   AttQName = ensure_qname(QName, InScopeNs),
   {N1,_} = augment_inscope_namespaces(N#xqAttributeNode{name = AttQName}, 
                                       InScopeNs),
   #xqAttributeNode{name = AttQName1} = N1,
   Expr = case AttQName1 of
             #qname{namespace = _, prefix = ?SSTR("xml"), local_name = ?SSTR("id")} ->
                try
                  xqerl_types:cast_as(Content2,'xs:ID')
                catch _:_ ->
                  ?err('XQDY0091')
                end;
             #qname{namespace = _, prefix = ?SSTR("xml"), local_name = ?SSTR("space")} ->
               StrVal = xqerl_types:cast_as(Content2,'xs:string'),
               case xqerl_types:value(StrVal) of
                  ?SSTR("preserve") ->
                     StrVal;
                  ?SSTR("default") ->
                     StrVal;
                  _ ->
                     ?err('XQDY0092')
               end;
             #qname{namespace = _, prefix = ?SSTR("xml"), local_name = ?SSTR("lang")} ->
                Content2;
                %xqerl_types:cast_as(Expr0,'xs:language');
             #qname{namespace = _, prefix = ?SSTR("xml"), local_name = ?SSTR("base")} ->
                try
                   xqerl_types:cast_as(Content2,'xs:anyURI')
                catch _:_ ->
                   Content2
                end;
             _ ->
                Content2
          end,
   Node = N1#xqAttributeNode{identity = Id, 
                             parent_node = Parent, 
                             expr = Expr},
   Ctx3 = add_node(Ctx1, Id, Node),
   {Id, Sz + 1, Ctx3};

handle_content(Ctx, Parent, #xqNamespaceNode{name = QName} = N, 
               InScopeNamespaces, Sz) ->
   % check if there is an inscope namespace with the same URI, use it's prefix
   {Id,Ctx1} = next_id(Ctx),
   NsName = ensure_qname(QName, InScopeNamespaces),
%?dbg("N",N),
%?dbg("NsName",NsName),
   _ = check_computed_namespaces([N]),
   Node = N#xqNamespaceNode{identity = Id, 
                            parent_node = Parent, 
                            name = NsName},
   Ctx2 = add_node(Ctx1, Id, Node),
   {Id, Sz + 1, Ctx2};

handle_content(Ctx, Parent, #xqProcessingInstructionNode{name = QName, 
                                                         expr = E, 
                                                         base_uri = _BU} = N, 
               _INs, Sz) ->
   TExpr = string:trim(xqerl_types:string_value(E), leading),
   case string:find(TExpr, "?>") of
      nomatch ->
         QName0 = if is_list(QName) ->
                        ?seq:singleton_value(QName);
                     true ->
                        QName
                  end,
         QName1 = case QName0 of
                     #qname{} ->
                        case string:lowercase(QName0#qname.local_name) of
                           ?SSTR("xml") ->
                              ?err('XQDY0064');
                           _ ->
                              QName0
                        end;
                     #xqAtomicValue{type = AT, value = _Val} 
                        when AT =:= 'xs:string';
                             AT =:= 'xs:untypedAtomic' ->
                        try 
                           xqerl_types:value(
                             xqerl_types:cast_as(QName0,'xs:NCName')) 
                        of
                           L ->
                              case string:lowercase(L) of
                                 ?SSTR("xml") ->
                                    ?err('XQDY0064');
                                 _ ->
                                    #qname{local_name = L}
                              end
                        catch
                           _:_ ->
                              ?err('XQDY0041')
                        end;
                     #xqAtomicValue{type = 'xs:QName', value = Q} ->
                        case string:lowercase(Q#qname.local_name) of
                           ?SSTR("xml") ->
                              ?err('XQDY0064');
                           _ ->
                              Q
                        end;
                     _ ->
                        ?err('XPTY0004')
                  end,
         {Id,Ctx1} = next_id(Ctx),
         Node = N#xqProcessingInstructionNode{identity = Id, 
                                              parent_node = Parent, 
                                              name = QName1, 
                                              expr = ?str(TExpr)},
         Ctx2 = add_node(Ctx1, Id, Node),
         {Id, Sz + 1, Ctx2};
      _ ->
         ?err('XQDY0026')
   end;

handle_content(Ctx, Parent, #xqCommentNode{expr = E} = N, _INs, Sz) ->
   Str = xqerl_types:string_value(E),
   Len = byte_size(Str),
   Last = if Len == 0 -> <<>>;
             true -> binary:last(Str)
          end,         
   case string:find(Str, <<"--">>) == nomatch andalso Last =/= $- of
      true ->
         {Id,Ctx1} = next_id(Ctx),
         Node = N#xqCommentNode{identity = Id, parent_node = Parent},
         Ctx2 = add_node(Ctx1, Id, Node),
         {Id, Sz + 1, Ctx2};
      _ ->
         ?err('XQDY0072')
   end;

handle_content(Ctx, Parent, #xqTextNode{expr = Content, 
                                        cdata = C} = N, _INs, Sz) ->
   Content1 = maybe_merge_text_seq(Content),
   Content2 = merge_text_content(Content1, text),
   %?dbg("Content ",Content ),
   %?dbg("Content1",Content1),
   %?dbg("Content2",Content2),
   case Content2 == [] of
      %true when Parent > 0 ->
      true ->
         {[], Sz, Ctx};
      _ when C == true ->
         {Id,Ctx1} = next_id(Ctx),
         Node = N#xqTextNode{identity = Id, parent_node = Parent},
         Ctx2 = add_node(Ctx1, Id, Node),
         {Id, Sz + 1, Ctx2};
      _ ->
         {Id,Ctx1} = next_id(Ctx),
         Node = N#xqTextNode{identity = Id, 
                             parent_node = Parent, 
                             expr = Content2},
         Ctx2 = add_node(Ctx1, Id, Node),
         {Id, Sz + 1, Ctx2}
   end;

% internal fragment to merge
handle_content(Ctx, Parent, #{nk := _} = Node, INs, Sz) ->
   {Preserve,Inherit} = maps:get('copy-namespaces', Ctx),
   Contents = node_to_content(Node, Preserve),
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
next_id(#{next_node_id := Last} = Ctx) ->
   {Last, Ctx#{next_node_id := Last + 1}}.

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

get_nodes(#{nodes := Nodes}) -> Nodes.

get_frag_id(#{frag_id := F}) -> F.

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

resolve_namespace(#qname{namespace = Ns, 
                         prefix = LPx} = QName, InscopeNamespaces) ->
   %check if there is a new prefix for the namespace
   Px1 = [Px || 
          #xqNamespace{namespace = Ns1, prefix = Px} 
         <- InscopeNamespaces, 
                Ns1 == Ns],
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

merge_content(_,[],_) -> [];
%% merge_content(Ctx,F,Is) when is_function(F) ->
%%    merge_content(Ctx,F(Ctx),Is);
merge_content(Ctx, Content, InscopeNamespaces) when is_list(Content) ->
   CopyNsPreserve = maps:get('copy-namespaces', Ctx),
   L = expand_nodes(Content,CopyNsPreserve,InscopeNamespaces),
   %?dbg("L",L),
   merge_content(L, []).

strip_unused_namespaces([#xqElementNode{name = #qname{namespace = ENs},
                                        children = Children,
                                        attributes = Attributes,
                                        expr = ChildContent, 
                                        inscope_ns = EIsNs} = E | T]) ->
   Content0 = Children ++ ChildContent ++ Attributes,
   InUseNs = [ENs|[ANs || #xqAttributeNode{name = #qname{namespace = ANs}} 
                  <- Content0]],
   FiltFun2 = fun(#xqNamespace{namespace = NsNs}) ->
                    lists:member(NsNs, InUseNs);
                 (#xqNamespaceNode{name = #qname{namespace = NsNs}}) ->
                    lists:member(NsNs, InUseNs);
                 (_) ->
                    true
             end,
   NewContent = lists:filter(FiltFun2, Content0),
   NewContent1 = strip_unused_namespaces(NewContent),
   NewEIsNs = lists:filter(FiltFun2, EIsNs),
%?dbg("InUseNs",InUseNs),
%?dbg("NewEIsNs",NewEIsNs),
%?dbg("Content0   ",Content0),
%?dbg("NewContent",NewContent),
%?dbg("NewContent1",NewContent1),
   [E#xqElementNode{children = [], 
                    attributes = [], 
                    expr = NewContent1, inscope_ns = NewEIsNs} | 
      strip_unused_namespaces(T)];
strip_unused_namespaces([H|T]) ->
   [H|strip_unused_namespaces(T)];
strip_unused_namespaces([]) ->
   [].

expand_nodes([[#{nk := _} = Node]|T],Preserve,Namespaces) ->
   expand_nodes([Node|T],Preserve,Namespaces);
expand_nodes([[#{nk := _} = Node|T]],Preserve,Namespaces) ->
   expand_nodes([Node|T],Preserve,Namespaces);
expand_nodes([#{nk := _} = Node|T],{Preserve,_Inherit},Namespaces) ->
%   ?dbg("Node",Node),
   Content = node_to_content(Node, Preserve),
%?dbg("Preserve",Preserve),
%?dbg("Content",Content),
   Content1 = if Preserve == 'no-preserve' ->
                    strip_unused_namespaces(Content);
                 true ->
                    Content
              end,
%?dbg("Content1",Content1),
   Content1 ++ expand_nodes(T,Preserve,Namespaces);
expand_nodes([#array{data = H}|T],Preserve,Namespaces) ->
   expand_nodes(H++T,Preserve,Namespaces);
expand_nodes([#xqFunction{}|_],_,_) ->
   ?err('XQTY0105');
expand_nodes([H|T],Preserve,Namespaces) ->
   [H|expand_nodes(T,Preserve,Namespaces)];
expand_nodes([],_Presrve,_Namespaces) -> [].

merge_content([], Acc) ->
   lists:reverse(Acc);
merge_content([H|T], Acc) when is_list(H) ->
   NewH = maybe_merge_seq(H,[]),
   merge_content(NewH ++ T, Acc);
% pre-merge nodes
merge_content([H1,#{nk := _} = Node|T], Acc) ->
   Content = node_to_content(Node, preserve),
   merge_content([H1|Content] ++ T, Acc);
% empty strings ignored
merge_content([#xqAtomicValue{type = Type, value = <<>>}|T], Acc) 
   when Type =/= 'xs:untypedAtomic',
        Type =/= 'xs:string' ->
   merge_content(T, Acc);
merge_content([#xqAtomicValue{type = Type} = H|T], Acc) 
   when Type =/= 'xs:untypedAtomic' ->
   NewH = xqerl_types:cast_as(H, 'xs:untypedAtomic'),
   merge_content([NewH|T], Acc);
merge_content([#xqAtomicValue{} = H1,#xqAtomicValue{} = H2|T], Acc) ->
   St1 = xqerl_types:string_value(H1),
   St2 = xqerl_types:string_value(xqerl_types:cast_as(H2, 'xs:untypedAtomic')),
   Str3 = <<St1/binary, " ", St2/binary>>,
   merge_content([#xqAtomicValue{type = 'xs:untypedAtomic', 
                                 value = Str3}|T], Acc);
merge_content([#xqAtomicValue{type = Type, value = _Val} = Expr], Acc) 
   when Type == 'xs:untypedAtomic' ->
   merge_content([], [#xqTextNode{expr = Expr}|Acc]);
merge_content([#xqAtomicValue{} = H1,H2|T], Acc) ->
   Node = #xqTextNode{expr = H1},
   merge_content([Node,H2|T], Acc);
merge_content([#xqTextNode{expr = S1},#xqTextNode{expr = S2} = H2|T], Acc) ->
   St1 = xqerl_types:string_value(S1),
   St2 = xqerl_types:string_value(S2),
   Str3 = <<St1/binary, St2/binary>>,
   Node = H2#xqTextNode{expr = ?untyp(Str3)},
   merge_content([Node|T], Acc);
merge_content([#xqTextNode{} = H1,#xqAtomicValue{} = H2|T], Acc) ->
   PreMerge = merge_content([H2|T], []),
   merge_content([H1|PreMerge], Acc);
merge_content([#xqTextNode{} = H1,H2|T], Acc) when is_list(H2) ->
   NewH = merge_content(H2,[]),
   merge_content([H1|NewH] ++ T, Acc);
merge_content([#xqTextNode{expr = S1} = H|T], Acc) ->
   St1 = xqerl_types:string_value(S1),
   if St1 == <<>> ->
         merge_content(T, Acc);
      true ->
         merge_content(T, [H|Acc])
   end;
merge_content([#{nk := _} = Node|T], Acc) ->
   Content = node_to_content(Node, preserve),
   merge_content(Content ++ T, Acc);
merge_content([#xqDocumentNode{expr = E}|T], Acc) when length(Acc) > 0 ->
   merge_content([E|T], Acc);
merge_content([#array{data = H}|T], Acc) ->
   merge_content([H | T], Acc);
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
maybe_merge_seq([#xqAtomicValue{type = 'xs:untypedAtomic'} = H1,
                 #xqAtomicValue{} = H2|T], Acc) ->
   St1 = xqerl_types:string_value(H1),
   St2 = xqerl_types:string_value(xqerl_types:cast_as(H2, 'xs:untypedAtomic')),
   Str3 = <<St1/binary," ",St2/binary>>,
   maybe_merge_seq([?untyp(Str3)|T], Acc);
maybe_merge_seq([H|T], Acc) when is_list(H) ->
   maybe_merge_seq(maybe_merge_seq(H,[]) ++ T, Acc);
maybe_merge_seq([H|T], Acc) ->
   maybe_merge_seq(T, [H|Acc]).

maybe_merge_text_seq(Seq) when is_list(Seq) ->
   maybe_merge_text_seq(Seq,[]);
maybe_merge_text_seq(Seq) -> maybe_merge_text_seq([Seq]).

maybe_merge_text_seq([],Acc) ->
   lists:reverse(Acc);
maybe_merge_text_seq([#xqElementNode{expr = []}|T], Acc) ->
   maybe_merge_text_seq(
     [#xqAtomicValue{type = 'xs:untypedAtomic',value = <<>>}|T],Acc);
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
maybe_merge_text_seq([#xqAtomicValue{type = 'xs:untypedAtomic'} = H1,
                      #xqAtomicValue{} = H2|T], Acc) ->
   St1 = xqerl_types:string_value(H1),
   St2 = xqerl_types:string_value(xqerl_types:cast_as(H2, 'xs:untypedAtomic')),
   Str3 = <<St1/binary," ",St2/binary>>,
   maybe_merge_text_seq([?untyp(Str3)|T], Acc);
maybe_merge_text_seq([#xqAtomicValue{type = Type} = H|T], Acc) 
   when Type =/= 'xs:untypedAtomic' ->
   maybe_merge_text_seq(
     [xqerl_types:cast_as(H, 'xs:untypedAtomic')|T],Acc);
maybe_merge_text_seq([H|T], Acc) ->
   case is_list(H) of
      true when H == [], Acc == [] ->
         maybe_merge_text_seq(T, Acc);
      true when H == [] ->
         maybe_merge_text_seq([?untyp(<<"">>)|T], Acc);
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

merge_text_content([],_) ->
   [];
merge_text_content(Content,Type) when is_list(Content) ->
   Merged = lists:map(fun(C) when is_list(C) ->
                            flatten_list_content(C);
                         (C) ->
                            C
                      end, Content),
   merge_text_content(Merged, [], Type);
merge_text_content(Content,Type) ->
   merge_text_content([Content], [], Type).

merge_text_content([], Acc,_) ->
   lists:reverse(Acc);

merge_text_content([#xqElementNode{} = H|T], Acc,Type) ->
   Atomized = atomize_node(H),
   merge_text_content(T, [Atomized | Acc],Type);
merge_text_content([#xqCommentNode{} = H|T], Acc,Type) ->
   Atomized = atomize_node(H),
   merge_text_content(T, [Atomized | Acc],Type);
merge_text_content([#xqTextNode{} = H|T], Acc,Type) ->
   Atomized = atomize_node(H),
   merge_text_content(T, [Atomized | Acc],Type);
merge_text_content([#xqProcessingInstructionNode{} = H|T], Acc,Type) ->
   Atomized = atomize_node(H),
   merge_text_content(T, [Atomized | Acc],Type);

merge_text_content([#xqAtomicValue{type = Type} = H|T], Acc,Type) 
   when Type =/= 'xs:untypedAtomic' ->
   NewH = xqerl_types:cast_as(H, 'xs:untypedAtomic'),
   merge_text_content([NewH|T], Acc,Type);

merge_text_content([#xqAtomicValue{} = H1,#xqAtomicValue{} = H2|T], Acc,text) ->
   St1 = xqerl_types:string_value(H1),
   St2 = xqerl_types:string_value(xqerl_types:cast_as(H2, 'xs:untypedAtomic')),
   Str3 = <<St1/binary, " ", St2/binary>>,
   merge_text_content(
     [#xqAtomicValue{type = 'xs:string', value = Str3}|T], Acc,text);

merge_text_content([#xqAtomicValue{} = H1,#xqAtomicValue{} = H2|T], Acc,attribute) ->
   St1 = xqerl_types:string_value(H1),
   St2 = xqerl_types:string_value(xqerl_types:cast_as(H2, 'xs:untypedAtomic')),
   Str3 = <<St1/binary, St2/binary>>,
   merge_text_content(
     [#xqAtomicValue{type = 'xs:string', value = Str3}|T], Acc,attribute);

merge_text_content([#xqAtomicValue{} = H1, #{nk := _} = Node|T], Acc,Type) ->
   Atomized = [atomize_node(Node)],
   merge_text_content([H1|Atomized] ++ T, Acc,Type);

merge_text_content([#xqAtomicValue{type = AType, value = _Val} = Expr], Acc,Type) 
   when AType == 'xs:untypedAtomic' ->
   merge_text_content([], [Expr|Acc],Type);

merge_text_content([#xqAtomicValue{} = H1,
                    #xqElementNode{expr = Expr}|T], Acc,Type) ->
   E1 = if Expr == [] ->
              [#xqAtomicValue{type = 'xs:untypedAtomic', value = <<>>}];
           is_list(Expr) ->
              Expr;
           true ->
             [Expr]
        end,
   merge_text_content([H1|E1]++T, Acc,Type);
merge_text_content([#xqAtomicValue{} = H1,
                    #xqAttributeNode{expr = Expr}|T], Acc,Type) ->
   E1 = if is_list(Expr) ->
              Expr;
           true ->
             [Expr]
        end,
   merge_text_content([H1|E1]++T, Acc,Type);
merge_text_content([#xqAtomicValue{} = H1,
                    #xqCommentNode{expr = Expr}|T], Acc,Type) ->
   E1 = if is_list(Expr) ->
              Expr;
           true ->
             [Expr]
        end,
   merge_text_content([H1|E1]++T, Acc,Type);
merge_text_content([#xqAtomicValue{} = H1,
                    #xqTextNode{expr = Expr}|T], Acc,Type) ->
   E1 = if is_list(Expr) ->
              Expr;
           true ->
             [Expr]
        end,
   merge_text_content([H1|E1]++T, Acc,Type);
merge_text_content([#xqAtomicValue{} = H1,
                    #xqProcessingInstructionNode{expr = Expr}|T], Acc,Type) ->
   E1 = if is_list(Expr) ->
              Expr;
           true ->
             [Expr]
        end,
   merge_text_content([H1|E1]++T, Acc,Type);

merge_text_content([#xqAtomicValue{value = S1}, H2|T], Acc,Type) 
   when is_list(H2) ->
   H3 = maybe_merge_text_seq(H2),
   St2 = xqerl_types:string_value(H3),
   Str3 = ?str(<<S1/binary, St2/binary>>),
   merge_text_content([Str3|T], Acc,Type);

merge_text_content([H1, #xqAtomicValue{} = H2|T], Acc,Type) when is_list(H1) ->
   H3 = maybe_merge_text_seq(H1),
   St2 = xqerl_types:string_value(H3),
   S1 = xqerl_types:string_value(H2),
   Str3 = ?str(<<St2/binary, S1/binary>>),
   merge_text_content([Str3|T], Acc,Type);

merge_text_content([H1|T], Acc,Type) when is_list(H1) ->
   H3 = maybe_merge_text_seq(H1),
   St2 = xqerl_types:string_value(H3),
   Str3 = ?str(St2),
   merge_text_content([Str3|T], Acc,Type);

merge_text_content([#xqTextNode{expr = S1},#xqTextNode{expr = S2}|T], Acc,Type) ->
   St1 = xqerl_types:string_value(S1),
   St2 = xqerl_types:string_value(S2),
   Str3 = ?str(<<St2/binary, St1/binary>>),
   Node = ?str(Str3),
   merge_text_content([Node|T], Acc,Type);

merge_text_content([#{nk := _} = Node|T], Acc,Type) ->
   Atomized = [atomize_node(Node)],
   merge_text_content(Atomized ++ T, Acc,Type);

merge_text_content([#xqDocumentNode{expr = E}|T], Acc,Type) ->
   merge_text_content([E|T], Acc,Type);
merge_text_content([#xqElementNode{expr = E}|T], Acc,Type) ->
   if E == [] ->
         merge_text_content(
           [#xqAtomicValue{type = 'xs:untypedAtomic', value = <<"">>}|T], Acc,Type);
      true ->
         merge_text_content([E|T], Acc,Type)
   end;
merge_text_content([#xqAttributeNode{expr = E}|T], Acc,Type) ->
   merge_text_content([E|T], Acc,Type);

merge_text_content([H|T], Acc,Type) ->
   case is_list(H) of
      true ->
         H3 = maybe_merge_text_seq(H),
         St2 = xqerl_types:string_value(H3),
         Str3 = ?str(St2),
         merge_text_content([Str3|T], Acc,Type);
      _ ->
         merge_text_content(T, [H|Acc],Type)
   end.

% a unique hash value for this node
get_node_hash(#{nk := _} = Node) ->
   erlang:phash(Node, 4294967296);
get_node_hash(_NonNode) ->
   ?err('XPTY0004').

% string values  nodes as the correct type
atomize_nodes(List) when is_list(List) ->
   lists:map(fun(I) ->
                   atomize_node(I)
             end, List);
atomize_nodes(List) ->
   [atomize_node(List)].

atomize_node([]) -> ?str(<<>>);
atomize_node(#xqAtomicValue{} = Av) ->
   Av;
atomize_node(#{nk := Type} = Node) ->
   String = 
     case xqldb_mem_nodes:string_value(Node) of
        [] ->
           <<>>;
        [S] ->
           S;
        S ->
           S
     end,
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
atomize_node(#xqProcessingInstructionNode{expr = S}) -> 
   ?str(string:trim(xqerl_types:string_value(S), leading));
atomize_node(#xqCommentNode{expr = S}) -> ?str(xqerl_types:string_value(S));
atomize_node(#xqTextNode{expr = S}) -> ?untyp(xqerl_types:string_value(S)).

names_equal({N1,_,L1},{N1,_,L1}) -> true;
names_equal(_,_) -> false.

nodes_equal(Node1, Node2, Collation) ->
   ?bool(nodes_equal_1(Node1, Node2, Collation)).

%% Tests if 2 nodes are logically deep-equal 
nodes_equal_1(#{nk := _} = N1,#{nk := _} = N1,_) -> true;
nodes_equal_1(#{nk := Type1} = Node1, 
              #{nk := Type2} = Node2, Collation) ->
%?dbg("{Type1,Type2}",{Type1,Type2}),
   if Type1 == document andalso Type2 == document ->
         Nodes1 = get_comparable_child_nodes(Node1),
         Nodes2 = get_comparable_child_nodes(Node2),
         length(Nodes1) == length(Nodes2)
            andalso
         lists:all(fun({Ci1,Ci2}) ->
                         nodes_equal_1(Ci1, Ci2, Collation)
                   end, lists:zip(Nodes1, Nodes2));
      Type1 == fragment andalso Type2 == fragment ->
         attributes_equal(xqldb_mem_nodes:attributes(Node1),
                          xqldb_mem_nodes:attributes(Node2), Collation)
            andalso
         begin
            Nodes1 = get_comparable_child_nodes(Node1),
            Nodes2 = get_comparable_child_nodes(Node2),
%?dbg("{Nodes1,Nodes2}",{Nodes1,Nodes2}),
            length(Nodes1) == length(Nodes2)
               andalso
            lists:all(fun({Ci1,Ci2}) ->
                            nodes_equal_1(Ci1, Ci2, Collation)
                      end, lists:zip(Nodes1, Nodes2))
         end;
      Type1 == element andalso Type2 == element ->
         Name1 = xqldb_mem_nodes:node_name(Node1),
         Name2 = xqldb_mem_nodes:node_name(Node2),
%?dbg("{Name1,Name2}",{Name1,Name2}),
         names_equal(Name1,Name2)
            andalso
         attributes_equal(xqldb_mem_nodes:attributes(Node1),
                          xqldb_mem_nodes:attributes(Node2), Collation)
            andalso
         begin
            Nodes1 = get_comparable_child_nodes(Node1),
            Nodes2 = get_comparable_child_nodes(Node2),
%?dbg("{Nodes1,Nodes2}",{Nodes1,Nodes2}),
            length(Nodes1) == length(Nodes2)
               andalso
            lists:all(fun({Ci1,Ci2}) ->
                            nodes_equal_1(Ci1, Ci2, Collation)
                      end, lists:zip(Nodes1, Nodes2))
         end;
      Type1 == attribute andalso Type2 == attribute ->
         Name1 = xqldb_mem_nodes:node_name(Node1),
         Name2 = xqldb_mem_nodes:node_name(Node2),
%?dbg("{Name1,Name2}",{Name1,Name2}),
         names_equal(Name1,Name2)
            andalso
         begin
            Val1 = xqerl_lib:decode_string(
                     xqldb_mem_nodes:string_value(Node1)),
            Val2 = xqerl_lib:decode_string(
                     xqldb_mem_nodes:string_value(Node2)),
%?dbg("{Val1,Val2}",{Val1,Val2}),
            xqerl_operators:equal(?str(Val1),
                                  ?str(Val2), Collation) == ?bool(true)
         end;
      Type1 == text andalso Type2 == text ->
         Val1 = xqerl_lib:decode_string(xqldb_mem_nodes:string_value(Node1)),
         Val2 = xqerl_lib:decode_string(xqldb_mem_nodes:string_value(Node2)),
         xqerl_operators:equal(?str(Val1),?str(Val2),Collation) == ?bool(true);
      Type1 == comment andalso Type2 == comment ->
         Val1 = xqldb_mem_nodes:string_value(Node1),
         Val2 = xqldb_mem_nodes:string_value(Node2),
         xqerl_operators:equal(?str(Val1), ?str(Val2), Collation) == ?bool(true);
      Type1 == 'processing-instruction' andalso 
        Type2 == 'processing-instruction' ->
         Name1 = xqldb_mem_nodes:node_name(Node1),
         Name2 = xqldb_mem_nodes:node_name(Node2),
         names_equal(Name1,Name2)
            andalso
         begin
            Val1 = xqldb_mem_nodes:string_value(Node1),
            Val2 = xqldb_mem_nodes:string_value(Node2),
            xqerl_operators:equal(?str(Val1), ?str(Val2)) == ?bool(true)
         end;
      true ->
         false
   end.


% takes actual nodes, not ids
attributes_equal([], [], _) -> 
   true;
attributes_equal(Atts1,Atts2, Collation) ->
%?dbg("{Atts1,Atts2}",{Atts1,Atts2}),
   length(Atts1) == length(Atts2) 
   andalso
   lists:all(
       fun(A1) ->
            lists:any(
                 fun(A2) ->
                       nodes_equal_1(A1, A2, Collation)
                 end, Atts2)
       end, Atts1).

get_comparable_child_nodes(#{ch := Children}) ->
   [C ||
    #{nk := Nk} = C <- Children,
    Nk =/= comment,
    Nk =/= 'processing-instruction'];
get_comparable_child_nodes(_) -> [].


to_xml(#xqError{} = E) ->
   E;
to_xml({array,L}) ->
   to_xml(L);
to_xml(N) when is_list(N) ->
   M = combine_atomics(N,[]),
   << <<(to_xml(M1))/binary>> ||
      M1 <- M >>;
to_xml(#{nk := _} = Node) ->
   xqerl_serialize:serialize(Node, #{method => xml});
to_xml(#xqAtomicValue{} = A) -> xqerl_types:string_value(A).


combine_atomics([], Acc) ->
   lists:reverse(Acc);
combine_atomics([#xqAtomicValue{} = H1,#xqAtomicValue{} = H2|T], Acc) ->
   St1 = xqerl_types:string_value(H1),
   St2 = xqerl_types:string_value(xqerl_types:cast_as(H2, 'xs:string')),
   Str3 = <<St1/binary," ",St2/binary>>,
   combine_atomics([#xqAtomicValue{type = 'xs:string', value = Str3}|T], Acc);
combine_atomics([H|T], Acc) ->
   combine_atomics(T, [H|Acc]).


check_computed_namespaces(NameSpaceNodes) ->
   Namespaces = [{P,xqerl_types:value(N)} || 
                 #xqNamespaceNode{name=#qname{namespace = N, prefix = P}} 
                <- NameSpaceNodes],
   Unique = lists:usort(Namespaces),
   Prefixes = lists:usort([P || {P,_} <- Unique]),
   if length(Unique) =/= length(Prefixes) ->
         ?err('XQDY0102');
      true ->
         %?dbg("NameSpaceNodes",NameSpaceNodes),
         %?dbg("Namespaces",Namespaces),
         F = fun({<<"xml">>,Ns}) 
                   when Ns =/= <<"http://www.w3.org/XML/1998/namespace">> ->
                   ?err('XQDY0101');
                ({Px,<<"http://www.w3.org/XML/1998/namespace">>}) 
                   when Px =/= <<"xml">> ->
                   ?err('XQDY0101');
                ({<<"xmlns">>,_}) ->
                   ?err('XQDY0101');
                ({_,<<"http://www.w3.org/2000/xmlns/">>}) ->
                   ?err('XQDY0101');
                ({<<"">>,<<"">>}) ->
                   ok;
                ({_,<<"">>}) ->
                   ?err('XQDY0101');
                (_) ->
                   ok
             end,
         lists:foreach(F, Namespaces)
   end,
   ok.
   
check_direct_namespaces(NameSpaceNodes) ->
   Namespaces = [{P,xqerl_types:value(N)} || 
                 #xqNamespaceNode{name=#qname{namespace = N, prefix = P}} 
                <- NameSpaceNodes],
   Unique = lists:usort(Namespaces),
   Prefixes = lists:usort([P || {P,_} <- Unique]),
   if length(Unique) =/= length(Prefixes) ->
         ?err('XQDY0102');
      true ->
         F = fun({"xml",Ns}) 
                   when Ns =/= "http://www.w3.org/XML/1998/namespace" ->
                   ?err('XQDY0096');
                ({Px,"http://www.w3.org/XML/1998/namespace"}) 
                   when Px =/= "xml" ->
                   ?err('XQDY0096');
                ({"xmlns",_}) ->
                   ?err('XQDY0096');
                ({_,"http://www.w3.org/2000/xmlns/"}) ->
                   ?err('XQDY0096');
                (_) ->
                   ok
             end,
         lists:foreach(F, Namespaces)
   end,
   ok.

check_computed_default_override(#qname{namespace = 'no-namespace'}, 
                                ComputNamespaces) ->
   NewDef = [ok || #xqNamespaceNode{name = #qname{prefix = <<>>}} 
            <- ComputNamespaces],
   if NewDef == [] ->
         ok;
      true ->
         ?err('XQDY0102')
   end;
check_computed_default_override(_, _) -> ok.

node_to_content(#{nk := _} = Orig, Preserve) ->
   F = fun O([]) -> [];
           O(#{nk := document,
               ch := _} = Node) ->
              [O(C) || C <- xqldb_mem_nodes:children(Node)];
           O(#{nk := document}) ->
              [];
           O(#{nk := element,
               nn := {Ns,Px,Ln},
               ns := Nss,
               at := At,
               ch := _} = Node) ->
              Ns1 = if Preserve == preserve ->
                          [#xqNamespaceNode{name = #qname{namespace = Uri, 
                                                    prefix = Prefix}} ||
                     {Prefix, Uri} <- maps:to_list(Nss)];
                       true ->
                          [#xqNamespaceNode{name = #qname{namespace = Ns, 
                                                    prefix = Px}}]
                    end,
              At1 = [O(C) || C <- At],
              Ch1 = [O(C) || C <- xqldb_mem_nodes:children(Node)],
              #xqElementNode{name = 
                               #qname{namespace = maybe_ns_to_atom(Ns), 
                                        prefix = Px, 
                                        local_name = Ln},
                          attributes = Ns1, 
                          children = [], 
                          expr = At1 ++ Ch1};
           O(#{nk := element,
               nn := {Ns,Px,Ln},
               ns := Nss,
               ch := _} = Node) ->
              Ns1 = if Preserve == preserve ->
                          [#xqNamespaceNode{name = #qname{namespace = Uri, 
                                                    prefix = Prefix}} ||
                     {Prefix, Uri} <- maps:to_list(Nss)];
                       true ->
                          [#xqNamespaceNode{name = #qname{namespace = Ns, 
                                                    prefix = Px}}]
                    end,
              Ch1 = [O(C) || C <- xqldb_mem_nodes:children(Node)],
              #xqElementNode{name = 
                               #qname{namespace = maybe_ns_to_atom(Ns), 
                                        prefix = Px, 
                                        local_name = Ln},
                          attributes = Ns1, 
                          children = [], 
                          expr = Ch1};
           O(#{nk := namespace,
               nn := {Ns,Px,_}}) ->
              #xqNamespaceNode{name = #qname{namespace = Ns,
                                             prefix    = Px}};
           O(#{nk := attribute,
               nn := {Ns,Px,Ln}} = Node) ->
              Value = xqldb_mem_nodes:string_value(Node),
              #xqAttributeNode{name = 
                                 #qname{namespace = maybe_ns_to_atom(Ns),
                                        prefix = Px, 
                                        local_name = Ln},
                               expr = ?untyp(Value)};
           O(#{nk := comment} = Node) ->
              Value = xqldb_mem_nodes:string_value(Node),
              #xqCommentNode{expr = ?str(Value)};
           O(#{nk := text} = Node) ->
              Value = xqldb_mem_nodes:string_value(Node),
              #xqTextNode{expr = ?untyp(Value)};
           O(#{nk := 'processing-instruction',
               nn := {Ns,_,Ln}} = Node) ->
              Value = xqldb_mem_nodes:string_value(Node),
              #xqProcessingInstructionNode{name = 
                                             #qname{namespace = maybe_ns_to_atom(Ns), 
                                                      local_name = Ln},
                                           expr = ?str(Value)}
       end,
   Content = F(Orig),
   if is_list(Content) ->
         Content;
      true ->
         [Content]
   end.

maybe_ns_to_atom(<<>>) -> 'no-namespace';
maybe_ns_to_atom(O) -> O.
  

%% node_to_content(Doc,Node) ->
%%    case xqldb_doc:node_kind(Doc, Node) of
%%      document ->
%%       Fun = fun(N) ->
%%                   node_to_content(Doc, N)
%%             end,
%%         lists:map(Fun, xqldb_doc:children(Doc, Node));
%%      element ->
%%       Fun = fun(N) ->
%%                   node_to_content(Doc, N)
%%             end,
%%         Namespaces = lists:map(Fun, xqldb_doc:namespace_nodes(Doc, Node)),
%%         Attributes = lists:map(Fun, xqldb_doc:attributes(Doc, Node)),
%%         Children   = lists:map(Fun, xqldb_doc:children(Doc, Node)),
%%         {Namespace,LocalName} = xqldb_doc:node_name(Doc, Node),
%%         Prefix = xqerl_xdm:prefix(Doc, Node),
%%         #xqElementNode{name = #qname{namespace = Namespace, 
%%                                      prefix = Prefix, 
%%                                      local_name = LocalName},
%%                        attributes = Namespaces, 
%%                        children = [], 
%%                        expr = Attributes ++ Children};
%%      namespace ->
%%         Prefix = case xqldb_doc:node_name(Doc, Node) of
%%                     [] ->
%%                        [];
%%                     {_,Pr} ->
%%                        Pr
%%                  end,
%%         Uri        = xqldb_doc:string_value(Doc, Node),
%%         #xqNamespaceNode{name = #qname{namespace = Uri, prefix = Prefix}};
%%      attribute ->
%%         {Namespace,LocalName} = xqldb_doc:node_name(Doc, Node),
%%         Prefix = if Namespace == 'no-namespace' ->
%%                        [];
%%                     true ->
%%                        xqerl_xdm:prefix(Doc, Node)
%%                  end,
%%         Value = xqldb_doc:string_value(Doc, Node),
%%         #xqAttributeNode{name = #qname{namespace = Namespace, 
%%                                        prefix = Prefix, 
%%                                        local_name = LocalName},
%%                          expr = ?untyp(Value)};
%%      comment ->
%%         Value = xqldb_doc:string_value(Doc, Node),
%%         #xqCommentNode{expr = ?str(Value)};
%%      text ->
%%         Value = xqldb_doc:string_value(Doc, Node),
%%         #xqTextNode{expr = ?untyp(Value)};
%%      'processing-instruction' ->
%%         {Namespace,LocalName} = xqldb_doc:node_name(Doc, Node),
%%         Value = xqldb_doc:string_value(Doc, Node),
%%         #xqProcessingInstructionNode{name = #qname{namespace = Namespace, 
%%                                                    local_name = LocalName},
%%                                      expr = ?str(Value)}
%%   end.


%% %% XML doc is a map: #{file  => DocumentUri,- URI from the document during loading, doc-store lookup key
%% %%                     base  => BaseUri,    - Base URI for the document. can be different than Doc URI, e.g. set in query, also overridden by xml:base
%% %%                     names => NCNames,    - map of string() to integer(), key is the NCName, value is NAME ID below
%% %%                     namsp => Namespaces, - map of string() to integer(), key is the URI, value is NSP ID below
%% %%                     texts => TextValues, - map of integer() to string(), key is the 'Text Reference' ID below, value is the text
%% %%                     nodes => NodeBinary  - positional binary of 16 bytes with the following layout
%% %%                    }
%% 
%% % return #xqNode{}
%% build_xqnode(#{'base-uri' := BaseUri}, FragId, Nodes) ->
%%    State = #{file => FragId,
%%              base => xqerl_types:value(BaseUri),
%%              names => #{},
%%              namsp => #{},
%%              texts => #{},
%%              nodes => #{} % map first then binary
%%             },
%%    Size = maps:size(Nodes) -1,
%%    NodeList = lists:map(fun(I) ->
%%                               maps:get(I, Nodes)
%%                         end, lists:seq(1, Size)),
%%    build_xqnode(State, NodeList).
%% 
%% build_xqnode(#{nodes := Nodes} = State, []) ->
%%    NewNodes = map_to_bin(Nodes),
%%    Doc1 = add_text_lookup(State),
%%    Doc2 = Doc1#{nodes := NewNodes},
%%    #xqNode{doc = Doc2, node = xqerl_xdm:root(Doc2)};
%% build_xqnode(State, [#xqDocumentNode{identity = Id, 
%%                                      desc_count = Size}|List]) ->
%%    Bin = xqerl_xdm:document_node(Size, Id),
%%    State1 = add_node_to_map(State, Id, Bin),
%%    build_xqnode(State1, List);
%% % TODO need att/ns count
%% build_xqnode(State, [#xqElementNode{identity = Id, 
%%                                     desc_count = Size, 
%%                                     parent_node = Par, 
%%                                     name = #qname{namespace = Ns, 
%%                                                   local_name = Ln}}|List]) ->
%%    AtNsSize = 31,
%%    {NsId,State1} = get_namespace_id(State, Ns),
%%    {LnId,State2} = get_local_name_id(State1, Ln),
%%    Offset = Id - Par,
%%    Bin = xqerl_xdm:element_node(AtNsSize, NsId, LnId, Offset, Size, Id),
%%    State3 = add_node_to_map(State2, Id, Bin),
%%    build_xqnode(State3, List);
%% build_xqnode(State, [#xqNamespaceNode{identity = Id, 
%%                                       parent_node = Par, 
%%                                       name = #qname{namespace = Ns, 
%%                                                     prefix = Ln}}|List]) ->
%%    {NsId,State1} = get_namespace_id(State, Ns),
%%    {LnId,State2} = get_local_name_id(State1, Ln),
%%    Offset = Id - Par,
%%    Bin = xqerl_xdm:namespace_node(NsId, LnId, Offset, Id),
%%    State3 = add_node_to_map(State2, Id, Bin),
%%    build_xqnode(State3, List);
%% % special case of stand-alone attribute with namespace
%% build_xqnode(State, [#xqAttributeNode{identity = 1, 
%%                                       name = #qname{namespace = Ns, 
%%                                                     prefix = Px, 
%%                                                     local_name = Ln}, 
%%                                       expr = Val}|List]) 
%%    when Ns =/= 'no-namespace' ->
%%    Value = xqerl_types:string_value(Val),
%%    {TId,State1} = get_text_id(State, Value),
%%    {NsId,State2} = get_namespace_id(State1, Ns),
%%    {LnId,State3} = get_local_name_id(State2, Ln),
%%    {PxId,State4} = get_local_name_id(State3, Px),
%%    Offset = 0,
%%    Bin1 = xqerl_xdm:namespace_node(NsId, PxId, 0, 1),
%%    IsId = if Ns == "http://www.w3.org/XML/1998/namespace" andalso 
%%                Ln == "id" -> 1;
%%              true -> 0
%%           end,
%%    Bin2 = xqerl_xdm:attribute_node(NsId, LnId, TId, IsId, Offset, 2),
%%    State5 = add_node_to_map(State4, 1, Bin1),
%%    State6 = add_node_to_map(State5, 2, Bin2),
%%    build_xqnode(State6, List);
%% build_xqnode(State, [#xqAttributeNode{identity = Id, 
%%                                       parent_node = Par, 
%%                                       name = #qname{namespace = Ns, 
%%                                                     local_name = Ln}, 
%%                                       expr = Val}|List]) ->
%%    Value = xqerl_types:string_value(Val),
%%    {TId,State1} = get_text_id(State, Value),
%%    {NsId,State2} = get_namespace_id(State1, Ns),
%%    {LnId,State3} = get_local_name_id(State2, Ln),
%%    Offset = Id - Par,
%%    IsId = if Ns == "http://www.w3.org/XML/1998/namespace" andalso 
%%                Ln == "id" -> 1;
%%              true -> 0
%%           end,
%%    Bin = xqerl_xdm:attribute_node(NsId, LnId, TId, IsId, Offset, Id),
%%    State4 = add_node_to_map(State3, Id, Bin),
%%    build_xqnode(State4, List);
%% build_xqnode(State, [#xqTextNode{identity = Id, 
%%                                  parent_node = Par, 
%%                                  expr = Val}|List]) ->
%%    Value = xqerl_types:string_value(Val),
%%    {TId,State1} = get_text_id(State, Value),
%%    Offset = Id - Par,
%%    Bin = xqerl_xdm:text_node(TId, Offset, Id),
%%    State2 = add_node_to_map(State1, Id, Bin),
%%    build_xqnode(State2, List);
%% build_xqnode(State, [#xqCommentNode{identity = Id, 
%%                                     parent_node = Par, 
%%                                     expr = Val}|List]) ->
%%    Value = xqerl_types:string_value(Val),
%%    {TId,State1} = get_text_id(State, Value),
%%    Offset = Id - Par,
%%    Bin = xqerl_xdm:comment_node(TId, Offset, Id),
%%    State2 = add_node_to_map(State1, Id, Bin),
%%    build_xqnode(State2, List);
%% build_xqnode(State, [#xqProcessingInstructionNode{identity = Id, 
%%                                                   parent_node = Par, 
%%                                                   name = 
%%                                                     #qname{local_name = Ln}, 
%%                                                   expr = Val}|List]) ->
%%    Value = xqerl_types:string_value(Val),
%%    {TId,State1} = get_text_id(State, Value),
%%    {LnId,State2} = get_local_name_id(State1, Ln),
%%    {NsId,State3} = get_namespace_id(State2, 'no-namespace'),
%%    Offset = Id - Par,
%%    Bin = xqerl_xdm:pi_node(NsId,LnId, TId, Offset, Id),
%%    State4 = add_node_to_map(State3, Id, Bin),
%%    build_xqnode(State4, List).  
%% 
%% %% from xqerl_doc
%% 
%% get_local_name_id(#{names := Names} = State, Val) ->
%%    case maps:find(Val, Names) of
%%       {ok, Id} ->
%%          {Id,State};
%%       error ->
%%          Cnt = maps:size(Names) + 1,
%%          NewNames = maps:put(Val, Cnt, Names),
%%          {Cnt, State#{names := NewNames}}
%%    end.
%% 
%% get_namespace_id(#{namsp := Names} = State, Val) ->
%%    case maps:find(Val, Names) of
%%       {ok, Id} ->
%%          {Id,State};
%%       error ->
%%          Cnt = maps:size(Names) + 1,
%%          NewNames = maps:put(Val, Cnt, Names),
%%          {Cnt, State#{namsp := NewNames}}
%%    end.
%% 
%% get_text_id(#{texts := Names} = State, Val) ->
%%    case maps:find(Val, Names) of
%%       {ok, Id} ->
%%          {Id,State};
%%       error ->
%%          Cnt = maps:size(Names) + 1,
%%          NewNames = maps:put(Val, Cnt, Names),
%%          {Cnt, State#{texts := NewNames}}
%%    end.
%% 
%% %% map with position => node
%% map_to_bin(Map) ->
%%    SKeys = lists:seq(1,maps:size(Map)),
%%    List = lists:map(fun(Key) ->
%%                         maps:get(Key, Map)
%%                     end, SKeys),
%%    erlang:iolist_to_binary(List).
%% 
%% add_text_lookup(#{texts := Texts} = Doc) ->
%%    F = fun(K,V,AccIn) -> AccIn#{V => K} end,
%%    TextLu = maps:fold(F,#{},Texts),
%%    Doc#{texts := TextLu}.
%% 
%% add_node_to_map(#{nodes := Nodes} = State, Id, Bin) ->
%%    Nodes2 = maps:put(Id, Bin, Nodes),
%%    State#{nodes := Nodes2}.













split_1(Ids,NodeMap) ->
   split_1(Ids,NodeMap,{[],[],[]}).

split_1([],_,{Ns,At,Ch}) ->
   {Ns,At,Ch};
split_1([H|T],NodeMap,{Ns,At,Ch}) ->
   case maps:get(H, NodeMap) of
      #xqNamespaceNode{name = #qname{prefix = <<"xml">>}} ->
         split_1(T,NodeMap,{Ns,At,Ch});
      #xqNamespaceNode{} = N ->
         split_1(T,NodeMap,{[N|Ns],At,Ch});
      #xqAttributeNode{} = N ->
         split_1(T,NodeMap,{Ns,[N|At],Ch});
      _ ->
         {Ns,At,[H|T]}
   end.
     



% return #xqNode{}
-spec build_sax(_,_) -> {[], list(tuple())}.
        
build_sax(#{'base-uri' := BaseUri}, % add base-uri as xml:base on document
          #{0 := #xqXmlFragment{children = Roots}} = Nodes) ->
   DeepList = lists:map(fun(C) ->
                              build_sax(C,Nodes,[])
                        end, Roots),
   FlatList = case maps:get(hd(Roots),Nodes) of
                 #xqDocumentNode{} ->
                    lists:flatten([base_uri_att(BaseUri)|DeepList]);
                 #xqTextNode{} -> % no base uri
                    lists:flatten([startFragment,DeepList,endFragment]);
                 #xqNamespaceNode{} -> % no base uri
                    lists:flatten([startFragment,DeepList,endFragment]);
                 #xqProcessingInstructionNode{} -> % no base uri
                    lists:flatten([startFragment,DeepList,endFragment]);
                 #xqCommentNode{} -> % no base uri
                    lists:flatten([startFragment,DeepList,endFragment]);
                 #xqAttributeNode{name = #qname{prefix = Px, 
                                                local_name = Ln}}
                    when Px =/= ?SSTR("xml") andalso Ln =/= ?SSTR("base") -> % no base uri
                    lists:flatten([startFragment,DeepList,endFragment]);
                 _ ->
                    lists:flatten([startFragment,base_uri_att(BaseUri),
                                   DeepList,endFragment])
              end,
   {[],FlatList}.

build_sax(Num, NodeMap,NsInUse) ->
   case maps:get(Num, NodeMap) of
      %
      #xqAttributeNode{} = At ->
         [A] = attribute_list([At]),
         [{attribute,A}];
      #xqNamespaceNode{} = Ns ->
         {[{startPrefixMapping, P, U}],_} = namespace_mappings([Ns]),
         [{namespace, P, U}];
      #xqDocumentNode{children = Ch} ->
         CF = fun(C) -> build_sax(C, NodeMap,NsInUse) end,
         [startDocument,
          lists:map(CF, Ch),
          endDocument];
      #xqProcessingInstructionNode{name = #qname{local_name = Ln},
                                   expr = Val} ->
         Value = xqerl_types:string_value(Val),
         {processingInstruction, Ln, Value};
      #xqCommentNode{expr = Val} ->
         Value = xqerl_types:string_value(Val),
         {comment, Value};
      #xqTextNode{expr = Val} ->
         Value = xqerl_types:string_value(Val),
         {characters, Value};
      #xqElementNode{name = #qname{namespace = ENs,
                                   prefix = Px,
                                   local_name = ELn} = En,
                     %inscope_ns = Is,
                     children = AllCh} ->
         {Ns,At,Ch} = split_1(AllCh,NodeMap),
         % this element name can add to namespaces
         {NsStart,NsEnd} = namespace_mappings([#xqNamespaceNode{name = En}|Ns]),
         AttList = attribute_list(At),
         % check for new namespace by declaration, any unused in-scope if to be copied
         CF = fun(C) -> build_sax(C, NodeMap,NsInUse) end,
         [NsStart,
          {startElement, fix_ns(ENs), ELn, {Px,ELn}, AttList},
          lists:map(CF, Ch),
          {endElement, fix_ns(ENs), ELn, {Px,ELn}},
          NsEnd]
   end.
%% %{startElement, Uri, LocalName, QualifiedName, Attributes}
%% %[{Uri, Prefix, AttributeName, Value}]
%% %{endElement, Uri, LocalName, QualifiedName}


%% %{startPrefixMapping, Prefix, Uri}
%% %{endPrefixMapping, Prefix}
namespace_mappings(List) ->
   S = lists:map(fun(#xqNamespaceNode{name = #qname{namespace = Ns,
                                                    prefix = Ln}}) ->
                       {startPrefixMapping, Ln, fix_ns(Ns)};
                    (#xqNamespace{namespace = Ns, prefix = Ln}) ->
                       {startPrefixMapping, Ln, fix_ns(Ns)}
                 end, List),
   E = lists:map(fun(#xqNamespaceNode{name = #qname{prefix = Ln}}) ->
                       {endPrefixMapping, Ln};
                    (#xqNamespace{prefix = Ln}) ->
                       {endPrefixMapping, Ln}
                 end, List),
   {lists:usort(S),
    lists:usort(E)}.

%% [{Uri, Prefix, AttributeName, Value}]
attribute_list(List) ->
   lists:map(fun(#xqAttributeNode{name = #qname{namespace = Ns,
                                                prefix = Px, 
                                                local_name = Ln},
                                  expr = Val}) ->
                   Value = xqerl_types:string_value(Val),
                   {fix_ns(Ns), Px, Ln, Value}
             end, List).

base_uri_att(#xqAtomicValue{value = <<>>}) ->
   [];
base_uri_att(#xqAtomicValue{value = Uri}) ->
   {baseUri, Uri}.

fix_ns('no-namespace') -> <<>>;
fix_ns(Other) -> Other.
  
