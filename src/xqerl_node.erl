%% -------------------------------------------------------------------
%%
%% xqerl - XQuery processor
%%
%% Copyright (c) 2017-2019 Zachary N. Dean  All Rights Reserved.
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

-define(bool(Val), Val).
-define(str(Val), Val).
-define(untyp(Val), #xqAtomicValue{type = 'xs:untypedAtomic', value = Val}).

-define(STR_REST(Str,Rest), <<Str,Rest/binary>>).
-define(CP_REST(Cp,Rest), <<Cp/utf8,Rest/binary>>).
-define(SSTR(S), <<S>>).

-dialyzer(no_opaque). % block array:array(_) warnings
-define(is_array(A), is_tuple(A), element(1, A) =:= array).

-define(xml, <<"http://www.w3.org/XML/1998/namespace">>).
-define(xmlns, <<"http://www.w3.org/2000/xmlns/">>).

-export([copy_node/1,
         contruct/2,
         expand_node_name/2,
         expand_attribute_name/2,
         expand_pi_name/1,
         expand_ns_name/1]).

-export([atomize_nodes/1, atomize_node/2]).
-export([to_xml/1]).
-export([nodes_equal/3]).

-export([%node_to_content/2,
         ensure_qname/2]).

-export([get_node_type/1]).

% for fn:generate-id
-export([get_node_hash/1]).

-export([merge_content/2]).

expand_node_name(Ctx, [V]) -> expand_node_name(Ctx, V);
expand_node_name(Ctx, #xqAtomicValue{type = 'xs:untypedAtomic',
                                     value = Val}) -> expand_node_name(Ctx, Val);
expand_node_name(_Ctx, []) ->
    ?err('XPTY0004');
expand_node_name(_Ctx, V) when is_number(V);
                               is_atom(V) ->
    ?err('XPTY0004');
expand_node_name(_Ctx, #qname{namespace = N,
                              prefix = P,
                              local_name = L}) ->
    {N, P, L};
expand_node_name(_Ctx, #xqAtomicValue{value = 
                                        #qname{namespace = N,
                                               prefix = P,
                                               local_name = L}}) ->
    {N, P, L};
expand_node_name(_Ctx, #xqAtomicValue{}) ->
    ?err('XPTY0004');
expand_node_name(#{namespaces := Nss} = Ctx, Expr) ->
    case xqerl_types:atomize(Expr) of % can throw XPTY0004
        [_,_|_] ->
            ?dbg("Atom", Expr),
            ?err('XPTY0004');
        Atom ->
            %?dbg("Atom", Atom),
            try
                QName = xqerl_types:cast_as(Atom, 'xs:QName', Nss),
                expand_node_name(Ctx, QName)
            catch
                _:_ ->
                    ?err('XQDY0074')
            end
    end.

expand_attribute_name(Ctx, [V]) -> expand_attribute_name(Ctx, V);
expand_attribute_name(Ctx, #xqAtomicValue{type = 'xs:untypedAtomic',
                                          value = Val}) -> 
    expand_attribute_name(Ctx, Val);
expand_attribute_name(_Ctx, []) ->
    ?err('XPTY0004');
expand_attribute_name(_Ctx, V) when is_number(V);
                                    is_atom(V) ->
    ?err('XPTY0004');
expand_attribute_name(_Ctx, #qname{namespace = N,
                                   prefix = P,
                                   local_name = L}) ->
    {N, P, L};
expand_attribute_name(_Ctx, #xqAtomicValue{value = 
                                             #qname{namespace = N,
                                                    prefix = P,
                                                    local_name = L}}) ->
    {N, P, L};
expand_attribute_name(_Ctx, #xqAtomicValue{}) ->
    ?err('XPTY0004');
expand_attribute_name(#{namespaces := Nss} = Ctx, Expr) ->
    case xqerl_types:atomize(Expr) of % can throw XPTY0004
        [_,_|_] ->
            ?dbg("Atom", Expr),
            ?err('XPTY0004');
        Atom ->
            %?dbg("Atom", Atom),
            try
                xqerl_types:cast_as(Atom, 'xs:QName', Nss)
            of
                #xqAtomicValue{value = #qname{namespace = _,
                                              prefix = <<>>,
                                              local_name = L}} ->
                    {<<>>, <<>>, L};
                QName ->
                    expand_attribute_name(Ctx, QName)
            catch
                _:_ ->
                    ?err('XQDY0074')
            end
    end.

expand_pi_name(#xqAtomicValue{type = 'xs:untypedAtomic',
                              value = Val}) -> 
    expand_pi_name(Val);
expand_pi_name(#qname{local_name = L}) ->
    {<<>>, <<>>, L};
expand_pi_name(#xqAtomicValue{value = #qname{local_name = L}}) ->
    {<<>>, <<>>, L};
expand_pi_name(Atom) when is_binary(Atom) ->
    try
        #xqAtomicValue{value = L} = xqerl_types:cast_as(Atom, 'xs:NCName'),
        {<<>>, <<>>, L}
    catch
        _:_ ->
            ?err('XQDY0041')
    end;
expand_pi_name(L) when is_list(L) ->
    case lists:flatten(L) of
        [X] ->
            expand_pi_name(X);
        _ ->
            ?err('XPTY0004')
    end;
expand_pi_name(_) ->
    ?err('XPTY0004').

expand_ns_name({[U], P}) -> expand_ns_name({U, P});
expand_ns_name({U, [P]}) -> expand_ns_name({U, P});
expand_ns_name({U, []}) ->
    U1 = xqerl_types:cast_as(U, 'xs:string'),
    {U1, <<>>};
expand_ns_name({U, <<>>}) ->
    U1 = xqerl_types:cast_as(U, 'xs:string'),
    {U1, <<>>};
expand_ns_name({U, #xqAtomicValue{type = 'xs:untypedAtomic', value = Val}}) ->
    expand_ns_name({U, Val});
expand_ns_name({U, P}) when is_binary(P) ->
    try
        #xqAtomicValue{value = U1} = xqerl_types:cast_as(U, 'xs:anyURI'),
        #xqAtomicValue{value = P1} = xqerl_types:cast_as(P, 'xs:NCName'),
        {U1, P1}
    catch
        _:_ ->
            ?dbg("P", P),
            ?err('XQDY0074')
    end;
expand_ns_name({_, _}) ->
    ?err('XPTY0004').

contruct(Ctx, [Node]) -> contruct(Ctx, Node);
contruct(Ctx, #{id := {_, _, _}} = Node) ->
    contruct(Ctx, copy_node(Node));
contruct(#{'base-uri' := BaseUri,
           namespaces := _Nss} = Ctx, 
         #{id := {Ref, _},
           nk := Nk} = Content) ->
    BaseUri1 =
        case BaseUri of
            #xqAtomicValue{value = V} ->
                V;
            V when is_binary(V) ->
                V
        end,
    %Default = get_default_namespace(Nss),
    InScopeNs = maps:get(inscope_ns, Ctx, #{<<"xml">> => ?xml%,
                                            %<<>> => Default
                                           }),
    Ctx1 = case Nk of
               document ->
                   new_doc_context(Ctx);
               _ ->
                   new_context(Ctx)
           end,
    Ctx2 = Ctx1#{inscope_ns => InScopeNs,
                 'base-uri' := BaseUri1},
    case is_updating_context(Ctx2) of
        true ->
            Ref1 = make_ref(),
            {Node, _Ctx} = contruct_node(Ctx2, Content, Ref1, InScopeNs),
            Node;
        false ->
            {Node, _Ctx} = contruct_node(Ctx2, Content, Ref, InScopeNs),
            Node
    end.

alist(L) when is_list(L) -> L;
alist(L) -> [L].

is_updating_context(#{updating := true}) -> true;
is_updating_context(_) -> false.

new_context(Ctx) ->
    Ctx#{next_node_id => 1}.

new_doc_context(Ctx) ->
    Ctx#{next_node_id => 0}.

% returns {Id, Ctx}
next_id(#{next_node_id := Last} = Ctx) ->
    {Last, Ctx#{next_node_id := Last + 1}}.


% namespaces are in the attributes when a direct cons
% also sets the ids of the attribute nodes
split_add_namespace_attributes(Atts, Ctx, Ref) ->
    F = fun(#{nk := namespace} = N, {{Ns, As}, Ctx1}) ->
               {{[N|Ns], As}, Ctx1};
           (N, {{Ns, As}, Ctx1}) ->
               % N is an attribute
               {Id, Ctx2} = next_id(Ctx1),
               NewId = {Ref, Id},
               {N1, _} = contruct_node(Ctx1, N, Ref, []),
               {{Ns, [N1#{id := NewId}|As]}, Ctx2}
        end,
    lists:foldl(F, {{[], []}, Ctx}, alist(Atts)).

augment_direct_inscope_namespaces(New, Old) ->
    F = fun(#{nk := namespace,
              nn := {Ns, Px}}, Acc) ->
               Acc#{Px => Ns}
        end,
    lists:foldl(F, Old, New).

augment_computed_inscope_namespaces(New, Old) ->
    F = fun(#{nk := namespace,
              nn := {Ns, Px}}, Acc) ->
                 case Acc of
                     #{Px := Ns} ->
                         Acc;
                     #{Px := _} ->
                         NewPx = xqerl_lib:next_comp_prefix(Acc),
                         %?dbg("Ns, Px, NewPx", {Ns, Px, NewPx}),
                         Acc#{NewPx => Ns};
                     _ ->
                         Acc#{Px => Ns}
                 end
        end,
    lists:foldl(F, Old, New).

augment_context_inscope_namespaces([], Ctx) -> Ctx;
augment_context_inscope_namespaces(New, #{namespaces := Nss,
                                          inscope_ns := InScopeNs} = Ctx) ->
    F = fun(#{nk := namespace,
              nn := {Ns, Px}}, {Acc, Acc1}) ->
               NewNs = #xqNamespace{namespace = Ns, prefix = Px},
               {lists:keystore(Px, 3, Acc, NewNs),
                Acc1#{Px => Ns}}
        end,
    {Aug, Aug1} = lists:foldl(F, {Nss, InScopeNs}, New),
    %?dbg("Aug",Aug),
    Ctx#{namespaces := Aug,
         inscope_ns := Aug1}.

augment_context_base_uri([], Ctx) -> Ctx;
augment_context_base_uri(New, #{'base-uri' := BaseUri} = Ctx) ->
    BaseUri1 =
        case BaseUri of
            #xqAtomicValue{value = V} ->
                V;
            V when is_binary(V) ->
                V
        end,
    try
        xqerl_lib:resolve_against_base_uri(BaseUri1, New)
    of
        {error, _} ->
            Ctx#{'base-uri' := New};
        BaseUri2 ->
            Ctx#{'base-uri' := BaseUri2}
    catch
        _:_ ->
            Ctx#{'base-uri' := New}
    end.

get_new_base_uri([]) -> [];
get_new_base_uri([#{nk := attribute,
                    nn := {?xml, _, <<"base">>},
                    sv := Sv}|_]) -> 
    xqerl_types:string_value(Sv);
get_new_base_uri([_|T]) ->
    get_new_base_uri(T).

get_curr_id(#{next_node_id := Id}) ->
    Id.

set_curr_id(Id, Ctx) ->
    Ctx#{next_node_id := Id}.

split_doc_content(Children) ->
    split_content(Children, doc, {[], [], []}).

split_content(Children) ->
    split_content(Children, tag, {[], [], []}).

% turn namespaces into {Px, Ns}
split_content([], _, {Nss, Atts, Children}) ->
    {lists:reverse(Nss), 
     lists:reverse(Atts), 
     lists:reverse(Children)};
split_content([#{nk := attribute}|_], doc, _) ->
    ?err('XPTY0004');
split_content([#{nk := attribute} = H|T], tag, {Nss, Atts, Children}) ->
    split_content(T, tag, {Nss, [H|Atts], Children});
split_content([#{nk := attribute}|_], content, _) ->
    ?err('XQTY0024');
split_content([#{nk := namespace}|_], doc, _) ->
    ?err('XPTY0004');
split_content([#{nk := namespace} = H|T], tag, {Nss, Atts, Children}) ->
    split_content(T, tag, {[H|Nss], Atts, Children});
split_content([#{nk := namespace}|_], content, _) ->
    ?err('XQTY0024');
split_content([H|T], doc, {Nss, Atts, Children}) ->
    split_content(T, doc, {Nss, Atts, [H|Children]});
split_content([#{nk := text, sv := <<>>}|T], tag, Acc) -> % skip empty text
    split_content(T, tag, Acc);
split_content([#{nk := text, sv := S1} = H, #{nk := text, sv := S2}|T], _, Acc) ->
    split_content([H#{sv := <<S1/binary, S2/binary>>}|T], content, Acc);
split_content([H|T], _, {Nss, Atts, Children}) ->
    split_content(T, content, {Nss, Atts, [H|Children]}).

add_implicit_namespaces(InScopeNs, {Ns, <<>>, _}, _) ->
    % default namespace
    case InScopeNs of
        #{<<>> := Ns} ->
            {[], InScopeNs};
        _ ->
            {[#{nk => namespace,
                nn => {Ns, <<>>}}], InScopeNs#{<<>> => Ns}}
    end;
add_implicit_namespaces(InScopeNs, _, _) ->
    {[], InScopeNs}.

check_computed_namespaces([]) -> ok;
%% check_computed_namespaces([{<<>>, <<>>}]) -> ok;
%% check_computed_namespaces([{<<"xml">>, ?xml}]) -> ok;
check_computed_namespaces(Namespaces) ->
    Unique = lists:usort(Namespaces),
    Prefixes = lists:usort([P || {P,_} <- Unique]),
    %?dbg("Namespaces", Namespaces),
    if 
        length(Unique) =/= length(Prefixes) ->
            ?err('XQDY0102');
        true ->
            %?dbg("NameSpaceNodes",NameSpaceNodes),
            %?dbg("NameSpaces",NameSpaces),
            F = fun({<<"xml">>, Ns}) when Ns =/= ?xml ->
                       ?err('XQDY0101');
                   ({Px, ?xml}) when Px =/= <<"xml">> ->
                       ?err('XQDY0101');
                   ({<<"xmlns">>, _}) ->
                       ?err('XQDY0101');
                   ({_, ?xmlns}) ->
                       ?err('XQDY0101');
                   ({<<>>, <<>>}) ->
                       ok;
                   ({_, <<>>}) ->
                       ?err('XQDY0101');
                   (_) ->
                       ok
                end,
            lists:foreach(F, Namespaces)
    end.

is_copied_node(#{id := {Ref, _}}, Ref) -> false;
is_copied_node(#{id := _}, _) -> true;
is_copied_node(_, _) -> false.

%{NodeName1, Atts2, InScopeNs3}
% throw XUDY0024 when in an update and new prefix needed
ensure_namespace_bindings(NodeName, AllAtts, InScopeNs, IsUpd) ->
    Fun = 
        fun({ENs, EPx, ELn}, InScope) ->
            case InScope of
                #{EPx := ENs} ->
                    % inscope
                    {{ENs, EPx, ELn}, InScope};
                % protect these prefixes
                #{EPx := _} when EPx == <<"xml">>;
                                 EPx == <<"xmlns">> ->
                    ?err('XQDY0096');
                #{EPx := _} when IsUpd == false ->
                    % wrong prefix
                    EPx1 = xqerl_lib:next_comp_prefix(InScope),
                    %?dbg("{ENs, EPx1, ELn}", {ENs, EPx, EPx1, ELn}),
                    {{ENs, EPx1, ELn}, InScope#{EPx1 => ENs}};
                #{EPx := _} when IsUpd == true ->
                    % update naming conflict
                    ?err('XUDY0024');
                _ ->
                    {{ENs, EPx, ELn}, InScope#{EPx => ENs}}
            end
        end,
    Att = 
        fun(#{nn := NN} = Node, Acc) ->
               case NN of
                   {<<>>,<<>>,_} ->
                       {Node, Acc};
                   _ ->
                       {NN1, Acc1} = Fun(NN, Acc),
                       {Node#{nn := NN1}, Acc1}
               end
        end,
    {NodeName1, InScopeNs1} = Fun(NodeName, InScopeNs),
    {Atts1, InScopeNs2} = lists:mapfoldl(Att, InScopeNs1, AllAtts),
    {NodeName1, Atts1, InScopeNs2}.


% base-uri and inscope namespaces can be augmented by content
% when a node with a different Ref is in the content, it is already built
% and well-formed, just copy in with the NS preserve settings
% content that is a fun/1 is from the XQuery constructor
% it takes the current Ctx once namespaces are figured out
% computed constructors cannot use namespaces in content

contruct_node(#{'base-uri' := Bu} = Ctx, 
              #{nk := document,
                ch := ContentFun} = Node, Ref, InScopeNs) ->
    % this node id
    {Id, Ctx1} = next_id(Ctx),
    NewId = {Ref, Id},
    % expand content with the new context
    RawContent = 
        if
            is_function(ContentFun, 1) ->
                ContentFun(Ctx1);
            true ->
                ContentFun
        end,
    Content = merge_content(RawContent),
    {[], [], Children} = split_doc_content(Content),
    ChFun = 
        fun(N, Ctx2) ->
               contruct_node(Ctx2, N, Ref, InScopeNs)
        end,
    {Children1, CtxOut} = lists:mapfoldl(ChFun, Ctx1, Children),
    Node1 = Node#{id := NewId,
                  bu => Bu,
                  ch := Children1},
    {Node1, CtxOut};

contruct_node(#{'copy-namespaces' := {Preserve, Inherit}} = Ctx, 
              #{nk := element,
                nn := NodeName,
                at := NsAtts,
                ch := ContentFun} = Node, Ref, InScopeNs) ->
    IsCopy = is_copied_node(Node, Ref),
    %?dbg("IsCopy", IsCopy),
    IsUpd = is_updating_context(Ctx),
    %?dbg("IsUpd", IsUpd),
    % this node id
    {Id, Ctx1} = next_id(Ctx),
    NewId = {Ref, Id},
    % split direct attributes and namespaces, creates attribute nodes
    % Nss is list of #{nk := namespace}
    {{Nss, Atts}, Ctx2} = split_add_namespace_attributes(NsAtts, Ctx1, Ref),
    
    % add new namespaces to the inscope
    InScopeNs1 = 
        if
            IsCopy ->
                #{ns := InScopeNs0} = Node,
                case {Preserve, Inherit} of
                    {preserve, inherit} when IsUpd ->
                        % inscopes switched here, parent wins instead of child
                        augment_direct_inscope_namespaces(Nss, maps:merge(InScopeNs, InScopeNs0));
                    {preserve, inherit} ->
                        %?dbg("InScopeNs0", InScopeNs0),
                        %?dbg("InScopeNs ", InScopeNs ),
                        augment_direct_inscope_namespaces(Nss, maps:merge(InScopeNs0, InScopeNs));
                    {preserve, 'no-inherit'} ->
                        augment_direct_inscope_namespaces(Nss, InScopeNs0);
                    {'no-preserve', inherit} ->
                        augment_direct_inscope_namespaces(Nss, InScopeNs);
                    {'no-preserve', 'no-inherit'} ->
                        augment_direct_inscope_namespaces(Nss, #{})
                end;
            true ->
                augment_direct_inscope_namespaces(Nss, InScopeNs)
        end,
    %?dbg("InScopeNs1", InScopeNs1),
    
    % get any namespaces added implicitly by the node names (not inscope!)
    {Nss1, InScopeNs2} = add_implicit_namespaces(InScopeNs1, NodeName, Inherit),
    %?dbg("InScopeNs2", InScopeNs2),
    
    %% add namespaces to context item
    Ctx3 = augment_context_inscope_namespaces(Nss1 ++ Nss, Ctx2),
    
    % add xml:base to context if any
    NewBase = get_new_base_uri(Atts),
    Ctx4 = augment_context_base_uri(NewBase, Ctx3),

    % expand content with the new context
    RawContent = 
        if
            is_function(ContentFun, 1) ->
                ContentFun(Ctx4);
            true ->
                ContentFun
        end,
    Content = merge_content(RawContent),
    % new set of namespaces, attributes and contents
    % these namespaces are inscope
    {Nss2, Atts1, Children} = split_content(Content),

    % check namespaces
    %ok = check_computed_namespaces([{P,U} || #{nn := {U,P}} <- Nss ++ Nss1 ++ Nss2]),
    ok = check_computed_namespaces([{P,U} || #{nn := {U,P}} <- Nss ++ Nss2]),
    ok = check_computed_default_override(NodeName, [{P,U} || #{nn := {U,P}} <- Nss2]),
    
    AllNss = augment_computed_inscope_namespaces(Nss2, InScopeNs2),
    AllAtts = Atts ++ Atts1,
    {NodeName1, Atts2, InScopeNs3} = ensure_namespace_bindings(NodeName, AllAtts, AllNss, IsUpd),
    %?dbg("InScopeNs3", InScopeNs3),
    
    ok = check_element_name(NodeName1),
    % add xml:base to context if any
    NewBase1 = get_new_base_uri(Atts1),
    #{'base-uri' := Bu1} = Ctx5 = augment_context_base_uri(NewBase1, Ctx4),

    ChFun = 
        fun(N, Ctx6) when IsCopy ->
               contruct_node(Ctx6, N, Ref, InScopeNs3);
           (N, Ctx6) when Inherit == inherit -> % XXX if direct, then only 1 not 3
               case is_copied_node(N, Ref) of
                   true ->
                       contruct_node(Ctx6, N, Ref, InScopeNs3); % try this
                       %contruct_node(Ctx6, N, Ref, InScopeNs2);
                   false ->
                       contruct_node(Ctx6, N, Ref, InScopeNs1)
               end;
           (N, Ctx6) ->
               contruct_node(Ctx6, N, Ref, InScopeNs1)
        end,
    {Atts3, CurrCtx0} = lists:mapfoldl(ChFun, Ctx5, Atts2),
    {Children1, CurrCtx} = lists:mapfoldl(ChFun, CurrCtx0, Children),

    %?dbg("NodeName1", NodeName1),
    %?dbg("InScopeNs ", InScopeNs ),
    %?dbg("InScopeNs1", InScopeNs1),
    %?dbg("InScopeNs2", InScopeNs2),
    %?dbg("InScopeNs3", InScopeNs3),
    %?dbg("Bu", Bu),
    % override the id from the original context coming in.
    % ensure only the next id is passed on.
    CurrId = get_curr_id(CurrCtx),
    CtxOut = set_curr_id(CurrId, Ctx),

    Node1 = Node#{id := NewId,
                  nn := NodeName1,
                  bu => Bu1,
                  at := check_attribute_names(Atts3),
                  ns => InScopeNs3,
                  ch := Children1},
    %?dbg("Node1", Node1),
    {Node1, CtxOut};

contruct_node(Ctx, #{nk := attribute,
                     nn := NodeName,
                     sv := Content} = Node, Ref, InScopeNs) ->
    {Id, Ctx1} = next_id(Ctx),
    NewId = {Ref, Id},
    %?dbg("Content", Content),
    Content1 = merge_text_content(Content, attribute),
    %?dbg("Content1", Content1),
    Content2 = xqerl_types:string_value(Content1),
    %?dbg("Content2", Content2),
    Node1 = 
        case NodeName of
            {?xml, _, <<"id">>} ->
                Content3 =
                    try
                        xqerl_types:string_value(
                          xqerl_types:cast_as(Content2, 'xs:ID'))
                    catch _:_ ->
                              ?err('XQDY0091')
                    end,
                Node#{sv := Content3,
                      id := NewId,
                      tn := 'xs:ID'};
            {?xml, _, <<"space">>} ->
                if
                    Content2  == <<"preserve">>;
                    Content2  == <<"default">> ->
                        Node#{id := NewId,
                              sv := Content2};
                    true ->
                        ?err('XQDY0092')
                end;
            {Ns, <<>>, Ln} when Ns =/= <<>> ->
                APx = xqerl_lib:next_comp_prefix(InScopeNs),
                %?dbg("Ns, Px, NewPx", {Ns, <<>>, APx}),
                Node#{id := NewId,
                      nn := {Ns, APx, Ln},
                      sv := Content2};
            _ ->
                _ = check_attribute_name(Node, #{}),
                Node#{id := NewId,
                      sv := Content2}
        end,
    {Node1, Ctx1};

contruct_node(Ctx, #{nk := 'processing-instruction',
                     nn := {_, _, Ln},
                     sv := Content} = Node, Ref, _InScopeNs) ->
    case string:lowercase(Ln) of
        <<"xml">> ->
            ?err('XQDY0064');
        _ ->
            Content1 = merge_text_content(Content, text),
            Content2 = xqerl_types:string_value(Content1),
            Content3 = string:trim(Content2, leading),
            case string:find(Content3, "?>") of
                nomatch ->
                    {Id, Ctx1} = next_id(Ctx),
                    NewId = {Ref, Id},
                    {Node#{id => NewId,
                           sv := Content3}, Ctx1};
                _ ->
                    ?err('XQDY0026')
            end
    end;
contruct_node(Ctx, #{nk := comment,
                     sv := Content} = Node, Ref, _InScopeNs) ->
    Content1 = merge_text_content(Content, text),
    Content2 = xqerl_types:string_value(Content1),
    Len = byte_size(Content2),
    Last = 
        if 
            Len == 0 -> <<>>;
            true -> binary:last(Content2)
        end,
    case string:find(Content2, <<"--">>) == nomatch andalso Last =/= $- of
        true ->
            {Id, Ctx1} = next_id(Ctx),
            NewId = {Ref, Id},
            {Node#{id => NewId,
                   sv := Content2}, Ctx1};
        _ ->
            ?err('XQDY0072')
    end;
contruct_node(Ctx, #{nk := namespace,
                     nn := {Ns, Px}} = Content, Ref, _InScopeNs) ->
    ok = check_computed_namespaces([{Px, Ns}]),
    {Id, Ctx1} = next_id(Ctx),
    NewId = {Ref, Id},
    {Content#{id := NewId}, Ctx1};
contruct_node(Ctx, #{nk := text,
                     sv := Content} = Node, Ref, _InScopeNs) ->
    %?dbg("Content ",Content ),
    case merge_text_content(Content, text) of
        [] ->
            {[], Ctx};
        Content1 ->
            %?dbg("Content1",Content1),
            Content2 = xqerl_types:string_value(Content1),
            {Id, Ctx1} = next_id(Ctx),
            NewId = {Ref, Id},
            {Node#{id => NewId,
                   sv := Content2}, Ctx1}
    end;
contruct_node(Ctx, #{id := {_, _, _}} = Content, Ref, InScopeNs) ->
    Node = copy_node(Content),
    contruct_node(Ctx, Node, Ref, InScopeNs).

copy_node([N]) ->
   copy_node(N);
copy_node(#{id := {_,_,_}} = N) ->
   D = xqldb_nodes:deep_copy_node(N),
   copy_node(D, erlang:make_ref());
copy_node(#{nk := _,
            pt := _} = N) ->
   (copy_node(N, erlang:make_ref()))#{pt := []};
copy_node(#{nk := _} = N) ->
   copy_node(N, erlang:make_ref());
copy_node(_) ->
   ?err('XUTY0013').

copy_node(#{id := {_,I},
            at := At,
            ch := Ch} = N, Ref) ->
   N#{id := {Ref, I},
      at := [copy_node(A, Ref) || A <- At],
      ch := [copy_node(A, Ref) || A <- Ch]};
copy_node(#{id := {_,I},
            ch := Ch} = N, Ref) ->
   N#{id := {Ref, I},
      ch := [copy_node(A, Ref) || A <- Ch]};
copy_node(#{id := {_,I},
            at := At} = N, Ref) ->
   N#{id := {Ref, I},
      at := [copy_node(A, Ref) || A <- At]};
copy_node(#{id := {_,I}} = N, Ref) ->
   N#{id := {Ref, I}}.

get_node_type(#{nk := Nk}) -> Nk.

ensure_qname(#xqAtomicValue{type = 'xs:QName', 
                            value = #qname{namespace = N, 
                                           prefix = P, 
                                           local_name = L}}, 
             _InScopeNamespaces) -> 
    {N, P, L};
ensure_qname({Nx,Px}, InScopeNamespaces) ->
   #qname{namespace = N, prefix = P} = 
     ensure_qname(#qname{namespace = Nx, prefix = Px}, InScopeNamespaces),
   {N,P};
ensure_qname([H], InScopeNamespaces) ->
   ensure_qname(H, InScopeNamespaces);
ensure_qname(#{nk := _} = Node, InScopeNamespaces) ->
   ensure_qname(xqerl_types:atomize(Node), InScopeNamespaces);
ensure_qname(#xqAtomicValue{type = 'xs:untypedAtomic',
                            value = Val}, InScopeNamespaces) ->
   ensure_qname(Val, InScopeNamespaces);
ensure_qname(Val, InScopeNamespaces) when is_binary(Val) ->
   try
      #qname{namespace = N, 
             prefix = P, 
             local_name = L} = 
        xqerl_types:value(xqerl_types:cast_as(Val,'xs:QName',InScopeNamespaces)),
      {N, P, L}
   catch
      _:_ ->
         ?err('XQDY0074')
   end;
ensure_qname(#xqAtomicValue{} = V, InScopeNamespaces) ->
   ?dbg("XPTY0004",{V, InScopeNamespaces}),
   ?err('XPTY0004');
ensure_qname(V, InScopeNamespaces) when is_number(V);
                                        is_atom(V) ->
   ?dbg("XPTY0004",{V, InScopeNamespaces}),
   ?err('XPTY0004');
ensure_qname(#qname{namespace = [Nx]} = QName, InScopeNamespaces) ->
   ensure_qname(QName#qname{namespace = Nx}, InScopeNamespaces);
ensure_qname(#qname{prefix = [Nx]} = QName, InScopeNamespaces) ->
   ensure_qname(QName#qname{prefix = Nx}, InScopeNamespaces);
ensure_qname(#qname{prefix = []} = QName, InScopeNamespaces) ->
   ensure_qname(QName#qname{prefix = <<>>}, InScopeNamespaces);
ensure_qname(#qname{local_name = [Nx]} = QName, InScopeNamespaces) ->
   ensure_qname(QName#qname{local_name = Nx}, InScopeNamespaces);

ensure_qname(#qname{namespace = #{nk := _} = Nx} = QName, InScopeNamespaces) ->
   NewNx = xqerl_types:string_value(Nx),
   ensure_qname(QName#qname{namespace = NewNx}, InScopeNamespaces);
ensure_qname(#qname{namespace = #xqAtomicValue{} = Nx} = QName, 
             InScopeNamespaces) ->
   NewNx = xqerl_types:string_value(Nx),
   ensure_qname(QName#qname{namespace = NewNx}, InScopeNamespaces);

ensure_qname(#qname{prefix = #{nk := _} = Nx} = QName, InScopeNamespaces) ->
   Atom = xqerl_types:atomize(Nx),
   ensure_qname(QName#qname{prefix = Atom}, InScopeNamespaces);
ensure_qname(#qname{prefix = #xqAtomicValue{value = <<>>}} = QName, 
             InScopeNamespaces) ->
   ensure_qname(QName#qname{prefix = <<>>}, InScopeNamespaces);
ensure_qname(#qname{prefix = #xqAtomicValue{type = AT} = Nx} = QName, 
             InScopeNamespaces) when ?xs_string(AT);
                                     AT == 'xs:untypedAtomic' ->
   NewNx = xqerl_types:string_value(Nx),
   ensure_qname(QName#qname{prefix = NewNx}, InScopeNamespaces);
ensure_qname(#qname{prefix = #xqAtomicValue{}}, _) ->
   ?err('XPTY0004');

ensure_qname(#qname{local_name = #{nk := _} = Nx} = QName, InScopeNamespaces) ->
   Atom = xqerl_types:atomize(Nx),
   ensure_qname(QName#qname{local_name = Atom}, InScopeNamespaces);
ensure_qname(#qname{local_name = #xqAtomicValue{value = <<>>}} = QName, 
             InScopeNamespaces) ->
   ensure_qname(QName#qname{local_name = <<>>}, InScopeNamespaces);
ensure_qname(#qname{local_name = #xqAtomicValue{type = AT} = Nx} = QName, 
             InScopeNamespaces) when ?xs_string(AT);
                                     AT == 'xs:untypedAtomic' ->
   NewNx = xqerl_types:string_value(Nx),
   ensure_qname(QName#qname{local_name = NewNx}, InScopeNamespaces);
ensure_qname(#qname{local_name = #xqAtomicValue{}}, _) ->
   ?err('XPTY0004');

ensure_qname(#qname{namespace = Ns,
                    prefix = Px,
                    local_name = Ln}, _InScopeNamespaces)
   when is_binary(Ns),
        is_binary(Px),
        is_binary(Ln) ->
   try
      Px1 = case Px of
               <<>> ->
                  <<>>;
               _ ->
                  xqerl_types:string_value(xqerl_types:cast_as(Px,'xs:NCName'))
            end,
      Ln1 = xqerl_types:string_value(xqerl_types:cast_as(Ln,'xs:NCName')),
      {Ns, Px1, Ln1}
   catch
      _:_ ->
         ?dbg("XQDY0074",{Ns, Px, Ln}),
         ?err('XQDY0074')
   end;
ensure_qname(#qname{namespace = Ns,
                    prefix = <<>>,
                    local_name = undefined} = QName, _InScopeNamespaces)
   when is_binary(Ns) orelse is_atom(Ns) ->
   QName;
ensure_qname(#qname{prefix = <<"xml">>,
                    local_name = undefined} = Q, _InScopeNamespaces) ->
   Q;
ensure_qname(#qname{namespace = Ns,
                    prefix = Px,
                    local_name = undefined}, _InScopeNamespaces)
   when is_binary(Ns),
        is_binary(Px) ->
   try
      %?dbg("Px",Px),
      Px1 = xqerl_types:string_value(xqerl_types:cast_as(Px,'xs:NCName')),
      #qname{namespace = Ns,
             prefix = Px1,
             local_name = undefined}    
   catch
      _:_ ->
         ?dbg("XQDY0074",{Ns, Px}),
         ?err('XQDY0074')
   end;
ensure_qname(QName, InScopeNamespaces) when is_list(QName) ->
   case xqerl_seq3:flatten(QName) of
      [H] ->
         ensure_qname(H, InScopeNamespaces);
      _ ->
         ?dbg("XPTY0004",QName),
         ?err('XPTY0004')
   end;
ensure_qname(QName, _InScopeNamespaces) ->
   ?dbg("XPTY0004",QName),
   ?err('XPTY0004').

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

check_element_name({_, <<"xmlns">>, _}) -> ?err('XQDY0096');
check_element_name({?xmlns, _, _}) -> ?err('XQDY0096');
check_element_name({TNs, <<"xml">>, _}) when TNs =/= ?xml -> ?err('XQDY0096');
check_element_name({?xml, TPx, _}) when TPx =/= <<"xml">> -> ?err('XQDY0096');
check_element_name(_) -> ok.

check_attribute_name(#{nn := {_, <<"xmlns">>, _}}, _) -> ?err('XQDY0044');
check_attribute_name(#{nn := {_, <<>>, <<"xmlns">>}}, _) -> ?err('XQDY0044');
check_attribute_name(#{nn := {?xmlns, _, _}}, _) -> ?err('XQDY0044');
check_attribute_name(#{nn := {Ns, <<"xml">>, _}}, _) when Ns =/= ?xml -> 
    ?err('XQDY0044');
check_attribute_name(#{nn := {?xml, Px, _}}, _) when Px =/= <<"xml">> -> 
    ?err('XQDY0044');
check_attribute_name(#{nn := {Ns, _, Ln}}, Map) ->
    Key = {Ns, Ln},
    case Map of
        #{Key := _} ->
            ?err('XQDY0025');
        _ ->
            Map#{Key => ok}
    end.

check_attribute_names([]) -> [];
check_attribute_names(Atts) ->
    _ = lists:foldl(fun check_attribute_name/2, #{}, Atts),
    Atts.

merge_content([]) -> [];
merge_content(Content) when is_list(Content) ->
    %?dbg("Content",Content),
    Content1 = merge_content_1(Content),
    %?dbg("Content1", Content1),
    merge_content(Content1, []);
merge_content(Content) when not is_list(Content) ->
    merge_content([Content]).

merge_content_1(List) ->
    F = fun(#{nk := document, id := {_,_,_}} = N) ->
               xqldb_mem_nodes:children_no_p(copy_node(N));
           (#{id := {_,_,_}} = N) ->
                [copy_node(N)];
           (#{nk := text, sv := <<>>}) -> [{}];
           (#{nk := document, ch := []}) -> [{}];
           (#{nk := document, ch := E}) ->
                E;
           ([]) -> [{}];
           (L) when is_list(L) ->
               maybe_merge_seq(merge_content_1(L), []);
           (A) when is_binary(A);
                    is_number(A);
                    is_boolean(A) ->
               [xqerl_types:cast_as(A, 'xs:untypedAtomic')];
           (#xqAtomicValue{} = A) ->
               [xqerl_types:cast_as(A, 'xs:untypedAtomic')];
           (A) when ?is_array(A) ->
               merge_content_1(xqerl_mod_array:flatten(#{}, A));
           (#xqFunction{}) ->
               ?err('XQTY0105');
           (O) ->
               [O]
        end,
    lists:flatmap(F, List).

merge_content([], Acc) ->
    lists:reverse(Acc);
merge_content([#xqAtomicValue{value = St1},
               #xqAtomicValue{value = St2}|T], Acc) ->
    Str3 = <<St1/binary, " ", St2/binary>>,
    merge_content([?untyp(Str3)|T], Acc);
merge_content([#{nk := text, sv := St1},
               #{nk := text, sv := St2} = H2|T], Acc) ->
    Str3 = <<St1/binary, St2/binary>>,
    Node = H2#{sv := Str3},
    merge_content([Node|T], Acc);
merge_content([#xqAtomicValue{value = St1},
               #{nk := text, sv := St2} = H2|T], Acc) ->
    Str3 = <<St1/binary, St2/binary>>,
    Node = H2#{sv := Str3},
    merge_content([Node|T], Acc);
merge_content([#{nk := text, sv := St1} = H1,
               #xqAtomicValue{value = St2}|T], Acc) ->
    Str3 = <<St1/binary, St2/binary>>,
    Node = H1#{sv := Str3},
    merge_content([Node|T], Acc);

merge_content([{}|T], Acc) ->
    merge_content(T, Acc);
merge_content([#xqAtomicValue{value = Val},{}|T], Acc) ->
    case Val of
        <<>> ->
            merge_content(T, Acc);
        _ ->
            merge_content(T, [#{nk => text, sv => Val}|Acc])
    end;
merge_content([#xqAtomicValue{value = Val}|T], Acc) ->
    case Val of
        <<>> ->
            merge_content(T, Acc);
        _ ->
            merge_content(T, [#{nk => text, sv => Val}|Acc])
    end;

merge_content([H|T], Acc) ->
    merge_content(T, [H|Acc]).

maybe_merge_seq([], Acc) ->
    lists:reverse(Acc);
maybe_merge_seq([#{id := {_,_,_}} = F|T], Acc) ->
    H = copy_node(F),
    maybe_merge_seq([H|T], Acc);
maybe_merge_seq([#{nk := document, ch := Ch}|T], Acc) ->
    maybe_merge_seq([Ch|T], Acc);
maybe_merge_seq([H1, H2|T], Acc)
  when is_binary(H1), is_binary(H2);
       is_binary(H1), is_number(H2);
       is_binary(H1), is_atom(H2);
       is_binary(H1), is_record(H2, xqAtomicValue);
       
       is_number(H1), is_binary(H2);
       is_number(H1), is_number(H2);
       is_number(H1), is_atom(H2);
       is_number(H1), is_record(H2, xqAtomicValue);
       
       is_atom(H1), is_binary(H2);
       is_atom(H1), is_number(H2);
       is_atom(H1), is_atom(H2);
       is_atom(H1), is_record(H2, xqAtomicValue);
       
       is_record(H1, xqAtomicValue), is_binary(H2);
       is_record(H1, xqAtomicValue), is_number(H2);
       is_record(H1, xqAtomicValue), is_atom(H2);
       is_record(H1, xqAtomicValue), is_record(H2, xqAtomicValue) ->
    St1 = xqerl_types:string_value(H1),
    St2 = xqerl_types:string_value(H2),
    Str3 = <<St1/binary," ",St2/binary>>,
    maybe_merge_seq([?untyp(Str3)|T], Acc);
maybe_merge_seq([H|T], Acc) when is_binary(H);
                                 is_number(H);
                                 is_atom(H);
                                 is_record(H, xqAtomicValue) ->
    St1 = xqerl_types:string_value(H),
    maybe_merge_seq([#{nk => text, sv => St1}|T], Acc);
maybe_merge_seq([H|T], Acc) when ?is_array(H) ->
    L = xqerl_mod_array:flatten(#{}, H),
    maybe_merge_seq([L|T], Acc);
maybe_merge_seq([H|T], Acc) when is_list(H) ->
    maybe_merge_seq(maybe_merge_seq(H,[]) ++ T, Acc);
maybe_merge_seq([H|T], Acc) ->
    maybe_merge_seq(T, [H|Acc]).

maybe_merge_text_seq(Seq) when is_list(Seq) ->
    Seq1 = 
        [case I of
             #{nk := _} ->
                 atomize_node(I);
             _ ->
                 I
         end || I <- Seq],
    maybe_merge_text_seq_1(Seq1);
maybe_merge_text_seq(Seq) -> maybe_merge_text_seq([Seq]).

maybe_merge_text_seq_1([]) -> [];
maybe_merge_text_seq_1([H1]) when is_binary(H1) -> H1;
maybe_merge_text_seq_1([H1, H2|T]) ->
    St1 = xqerl_types:string_value(H1),
    St2 = xqerl_types:string_value(H2),
    St3 = <<St1/binary," ",St2/binary>>,
    maybe_merge_text_seq_1([St3|T]);
maybe_merge_text_seq_1([H1]) ->
    [xqerl_types:string_value(H1)].

merge_text_content([],_) -> [];
merge_text_content([[]],_) -> [];
merge_text_content(Content, Type) when is_list(Content) ->
    %?dbg("C1", Content),
    Content1 = merge_text_content_1(Content, Type),
    %?dbg("C2", Content1),
    Content1;
merge_text_content(Content, Type) ->
    merge_text_content_1([Content], Type).


merge_text_content_1([?untyp(V)], _) -> V;

merge_text_content_1([H1, H2|T], Type) 
  when is_list(H1), is_binary(H2);
       is_list(H1), is_boolean(H2);
       is_list(H1), is_atom(H2);
       is_list(H1), is_number(H2);
       is_list(H1), is_record(H2, xqAtomicValue) ->
    H3 = maybe_merge_text_seq(H1),
    St2 = xqerl_types:string_value(H3),
    S1 = xqerl_types:string_value(H2),
    Str3 = ?untyp(<<St2/binary, S1/binary>>),
    merge_text_content_1([Str3|T], Type);

merge_text_content_1([H1, H2|T], Type)
  when is_list(H2), is_binary(H1);
       is_list(H2), is_boolean(H1);
       is_list(H2), is_atom(H1);
       is_list(H2), is_number(H1);
       is_list(H2), is_record(H1, xqAtomicValue) ->
    H3 = maybe_merge_text_seq(H2),
    St2 = xqerl_types:string_value(H3),
    S1 = xqerl_types:string_value(H1),
    Str3 = ?untyp(<<S1/binary, St2/binary>>),
    merge_text_content_1([Str3|T], Type);

merge_text_content_1([H1|T], Type) when is_list(H1) ->
    H3 = maybe_merge_text_seq(H1),
    St2 = xqerl_types:string_value(H3),
    Str3 = ?untyp(St2),
    merge_text_content_1([Str3|T], Type);

merge_text_content_1([?untyp(_) = H1, H2|T], text)
  when is_binary(H2);
       is_boolean(H2);
       is_atom(H2);
       is_number(H2);
       is_record(H2, xqAtomicValue) ->
    St1 = xqerl_types:string_value(H1),
    St2 = xqerl_types:string_value(xqerl_types:cast_as(H2, 'xs:untypedAtomic')),
    Str3 = <<St1/binary, " ", St2/binary>>,
    merge_text_content_1([Str3|T], text);
merge_text_content_1([?untyp(_) = H1, H2|T], attribute)
  when is_binary(H2);
       is_boolean(H2);
       is_atom(H2);
       is_number(H2);
       is_record(H2, xqAtomicValue) ->
    St1 = xqerl_types:string_value(H1),
    St2 = xqerl_types:string_value(xqerl_types:cast_as(H2, 'xs:untypedAtomic')),
    Str3 = <<St1/binary, St2/binary>>,
    merge_text_content_1([Str3|T], attribute);
merge_text_content_1([#{nk := Nk} = H|T], Type)
  when Nk == document;
       Nk == element;
       Nk == attribute;
       Nk == comment;
       Nk == text;
       Nk == 'processing-instruction' ->
    Atomized = atomize_node(H),
    merge_text_content_1([Atomized|T], Type);
merge_text_content_1([#xqAtomicValue{type = Type} = H|T], Kind) 
  when Type =/= 'xs:untypedAtomic' ->
    NewH = xqerl_types:cast_as(H, 'xs:untypedAtomic'),
    merge_text_content_1([NewH|T], Kind);
merge_text_content_1([H|T], Type) when is_binary(H);
                                       is_boolean(H);
                                       is_atom(H);
                                       is_number(H) ->
    NewH = xqerl_types:cast_as(H, 'xs:untypedAtomic'),
    merge_text_content_1([NewH|T], Type);

merge_text_content_1([H1,#{nk := Nk} = H2|T], Type)
  when Nk == document;
       Nk == element;
       Nk == attribute;
       Nk == comment;
       Nk == text;
       Nk == 'processing-instruction' ->
    Atomized = atomize_node(H2),
    merge_text_content_1([H1,Atomized|T], Type).

% a unique hash value for this node
get_node_hash(#{nk := _} = Node) ->
    erlang:phash(Node, 4294967296);
get_node_hash(_NonNode) ->
    ?err('XPTY0004').

% string values nodes as the correct type
atomize_nodes(List) when is_list(List) ->
    lists:map(fun(I) ->
                     atomize_node(I)
              end, List);
atomize_nodes(List) ->
    [atomize_node(List)].

atomize_node([]) -> ?str(<<>>);
atomize_node([S]) -> atomize_node(S);
atomize_node(#xqAtomicValue{} = Av) -> Av;
atomize_node(Bin) when is_binary(Bin) -> Bin;
atomize_node(#{nk := _} = Node) ->
    xqerl_types:atomize(Node).


atomize_node(Ctx, F) when is_function(F, 1) -> atomize_node(Ctx, F(Ctx));
atomize_node(Ctx, #{nk := element, ch := S}) -> atomize_node(Ctx, S);
atomize_node(_, Bin) when is_binary(Bin) -> Bin;
atomize_node(_, N) ->
    atomize_node(N).

names_equal({N1,_,L1},{N1,_,L1}) -> true;
names_equal(_,_) -> false.

nodes_equal(Node1, Node2, Collation) ->
    nodes_equal_1(Node1, Node2, Collation).

%% Tests if 2 nodes are logically deep-equal 
nodes_equal_1(#{nk := _,
                id := {_,_,_}} = N1, N2, C) -> 
    Copy = xqldb_nodes:deep_copy_node(N1),
    nodes_equal_1(Copy, N2, C);
nodes_equal_1(N1, #{nk := _,
                    id := {_,_,_}} = N2, C) -> 
    Copy = xqldb_nodes:deep_copy_node(N2),
    nodes_equal_1(N1, Copy, C);
nodes_equal_1(#{nk := _} = N1,#{nk := _} = N1,_) -> true;
nodes_equal_1(#{nk := Type1} = Node1, 
              #{nk := Type2} = Node2, Collation) ->
    %?dbg("{Type1,Type2}",{Type1,Type2}),
    if 
        Type1 == document andalso Type2 == document ->
            Nodes1 = get_comparable_child_nodes(Node1),
            Nodes2 = get_comparable_child_nodes(Node2),
            length(Nodes1) == length(Nodes2)
                andalso
            lists:all(fun({Ci1, Ci2}) ->
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
                lists:all(fun({Ci1, Ci2}) ->
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
                lists:all(fun({Ci1, Ci2}) ->
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
                                     ?str(Val2), Collation)
            end;
        Type1 == text andalso Type2 == text ->
            Val1 = xqerl_lib:decode_string(xqldb_mem_nodes:string_value(Node1)),
            Val2 = xqerl_lib:decode_string(xqldb_mem_nodes:string_value(Node2)),
            xqerl_operators:equal(?str(Val1),?str(Val2),Collation);
        Type1 == comment andalso Type2 == comment ->
            Val1 = xqldb_mem_nodes:string_value(Node1),
            Val2 = xqldb_mem_nodes:string_value(Node2),
            xqerl_operators:equal(?str(Val1), ?str(Val2), Collation);
        Type1 == 'processing-instruction' andalso 
        Type2 == 'processing-instruction' ->
            Name1 = xqldb_mem_nodes:node_name(Node1),
            Name2 = xqldb_mem_nodes:node_name(Node2),
            names_equal(Name1,Name2)
                andalso
            begin
                Val1 = xqldb_mem_nodes:string_value(Node1),
                Val2 = xqldb_mem_nodes:string_value(Node2),
                xqerl_operators:equal(?str(Val1), ?str(Val2))
            end;
        true ->
            false
    end.

% takes actual nodes, not ids
attributes_equal([], [], _) -> true;
attributes_equal(Atts1, Atts2, Collation) ->
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
to_xml(A) when ?is_array(A) ->
    to_xml(array:to_list(A));
to_xml(N) when is_list(N) ->
    M = combine_atomics(N,[]),
    << <<(to_xml(M1))/binary>> ||
       M1 <- M >>;
to_xml(#{nk := _,
         id := {_,_,_}} = Node) ->
    % deep copy DB nodes
    Copy = xqldb_nodes:deep_copy_node(Node),
    xqerl_serialize:serialize(Copy, #{method => xml});
to_xml(#{nk := _} = Node) ->
    xqerl_serialize:serialize(Node, #{method => xml});
to_xml(#xqAtomicValue{} = A) -> xqerl_types:string_value(A);
to_xml(B) when is_binary(B) -> B;
to_xml(V) when is_atom(V);
               is_number(V) -> 
    xqerl_types:string_value(V).

combine_atomics([], Acc) ->
   lists:reverse(Acc);
combine_atomics([H1, H2|T], Acc)
  when is_record(H1, xqAtomicValue) orelse is_binary(H1) orelse is_atom(H1) orelse is_number(H1),
       is_record(H2, xqAtomicValue) orelse is_binary(H2) orelse is_atom(H2) orelse is_number(H2) ->
    St1 = xqerl_types:string_value(H1),
    St2 = xqerl_types:string_value(xqerl_types:cast_as(H2, 'xs:string')),
    Str3 = <<St1/binary," ",St2/binary>>,
    combine_atomics([Str3|T], Acc);
combine_atomics([H|T], Acc) ->
    combine_atomics(T, [H|Acc]).

% check if element is in no namespace and it is being reset by a 
% computed namespace
check_computed_default_override({<<>>, _, _}, ComputNamespaces) ->
    NewDef = [ok || {<<>>, _} <- ComputNamespaces],
    if 
        NewDef == [] ->
            ok;
        true ->
            ?dbg("Namespaces", ComputNamespaces),
            ?err('XQDY0102')
    end;
check_computed_default_override(_, _) -> ok.

