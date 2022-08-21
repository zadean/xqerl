% Copyright (c) 2017-2020 Zachary N. Dean  All Rights Reserved.
% SPDX-FileCopyrightText: 2022 Zachary Dean contact@zadean.com
%
% SPDX-License-Identifier: Apache-2.0

%% @doc  Static analysis phase of compilation.

-module(xqerl_static_analysis).

-include("xqerl_parser.hrl").

%% ====================================================================
%% API functions
%% ====================================================================
-export([
    analyze/3,
    has_cycle/2,
    add_edge/3
]).

analyze(Body, Functions, Variables) ->
    G = digraph:new([]),
    _ =
        case Body of
            [] -> add_vertex(G, library);
            _ -> add_vertex(G, main)
        end,
    % add the variables
    M1 = add_glob_variables(G, Variables),
    % add the functions
    M2 = add_glob_funs(G, Functions, M1),
    % strip non-functions
    Functions1 = [F || #xqFunctionDef{} = F <- Functions],
    % strip non-variables
    Variables1 =
        [V || #xqVar{} = V <- Variables] ++
            [C || #xqContextItemDecl{} = C <- Variables],
    % globals are set now recurse for dependencies
    Body1 = l(Body),
    % analyze
    All = Body1 ++ Functions1 ++ Variables1,
    _ = x(G, M2, All, []),
    % TODO: this should do something
    % _ = xqerl_static_path_analysis:analyze(G),
    G.

%% print(G) ->
%%    Paths = [P || {_,{'no-namespace',_}} = P <- digraph:vertices(G)],
%%    Fun = fun(P) ->
%%                ?dbg("reaching",{P,digraph_utils:reaching([P], G)}),
%%                ?dbg("reachable",{P,digraph_utils:reachable([P], G)})
%%          end,
%%    lists:foreach(Fun, Paths),
%%    ok.

% scan everything, when new Var found, add edge and make parent,
% when new Ref found, find id and make link to parent, leave parent as is

x(G, Map, Parent, #xqComparisonExpr{
    id = Id,
    lhs = Lhs,
    rhs = Rhs
}) ->
    L = {Id, comp_left},
    R = {Id, comp_right},
    K = {Id, xqComparisonExpr},
    add_vertex(G, L),
    add_vertex(G, R),
    add_edge(G, K, Parent, comparison),
    add_edge(G, L, Parent, comparison),
    add_edge(G, R, Parent, comparison),
    x(G, Map, L, Lhs),
    x(G, Map, R, Rhs),
    Map;
% path expressions
x(G, Map, Parent, #xqPathExpr{id = Id, expr = Expr}) ->
    add_vertex(G, {static, known_namespaces}),
    add_edge(G, {static, known_namespaces}, Parent, property),
    K = {Id, path_expr},
    %?parse_dbg("{K,Parent}",{K,Parent, Expr}),
    add_vertex(G, K),
    case Parent of
        {_, {axisStep, _, _}} ->
            add_edge(G, K, Parent, {predicate, Parent, K}),
            x(G, Map#{path := Id}, K, Expr),
            Map;
        _ ->
            add_edge(G, K, Parent, {Parent, '=', K}),
            x(G, Map#{path := Id}, K, Expr),
            Map
    end;
% variable ref in path
x(G, Map, Parent, [V | T]) when V == 'root'; V == 'context-item' ->
    M = x(G, Map, Parent, V),
    x(G, M, context_item, T);
x(G, Map, Parent, [
    #xqAxisStep{
        id = Id,
        axis = Axis,
        node_test = Nt,
        predicates = Preds
    }
    | T
]) ->
    K = {Id, {axisStep, Axis, Nt}},
    add_vertex(G, K),
    add_edge(G, K, Parent, {path, maps:get(path, Map)}),
    add_preds(G, Id, K, Map, Preds),
    x(G, Map, K, T),
    Map;
x(G, Map, Parent, #xqAxisStep{
    id = Id,
    axis = Axis,
    node_test = Nt,
    predicates = Preds
}) ->
    K = {Id, {axisStep, Axis, Nt}},
    add_vertex(G, K),
    PathParent = {maps:get(path, Map), path_expr},
    add_edge(G, K, Parent, {path, maps:get(path, Map)}),
    add_edge(G, K, PathParent, {path, maps:get(path, Map)}),
    add_preds(G, Id, K, Map, Preds),
    Map;
% Left hand side is the context item
x(G, Map, Parent, #xqSimpleMap{id = Id, lhs = Lhs, rhs = Rhs}) ->
    K = {Id, map},
    add_vertex(G, K),
    add_edge(G, K, Parent, map),
    x(G, Map, Parent, Lhs),
    x(G, Map, K, Rhs),
    Map;
x(G, Map, Parent, #xqModifyExpr{id = Id, vars = Vars, expr = Expr, return = Return}) ->
    K = {Id, modify},
    add_vertex(G, {static, base_uri}),
    add_vertex(G, {static, known_namespaces}),
    add_edge(G, {static, base_uri}, Parent, property),
    add_edge(G, {static, known_namespaces}, Parent, property),
    add_vertex(G, K),
    add_edge(G, K, Parent, update),
    LM = lists:foldl(
        fun(E, M) ->
            x(G, M, Parent, E)
        end,
        Map,
        Vars
    ),
    x(G, LM, K, Expr),
    x(G, LM, K, Return);
x(G, Map, Parent, #xqUpdateExpr{id = Id, src = A, tgt = B}) ->
    % ensure updates are not moved
    K = {Id, update},
    add_vertex(G, {static, base_uri}),
    add_vertex(G, {static, known_namespaces}),
    add_edge(G, {static, base_uri}, Parent, property),
    add_edge(G, {static, known_namespaces}, Parent, property),
    add_vertex(G, K),
    add_edge(G, K, Parent, update),
    x(G, Map, K, A),
    x(G, Map, K, B),
    Map;
x(G, Map, Parent, #xqWhere{id = Id, expr = Expr}) ->
    K = {Id, where},
    add_vertex(G, K),
    add_edge(G, K, Parent, where),
    x(G, Map, K, Expr),
    Map;
x(G, Map, Parent, #xqOrderByClause{id = Id, spec = Expr}) ->
    K = {Id, order_by},
    add_vertex(G, K),
    add_edge(G, K, Parent, order),
    x(G, Map, K, Expr),
    Map;
x(G, Map, Parent, #xqGroup{id = Id, vars = Expr}) ->
    K = {Id, group_by},
    %?dbg("{Id,group}",K),
    add_vertex(G, K),
    add_edge(G, K, Parent, group),
    x(G, Map, K, Expr),
    Map;
x(G, Map, Parent, #xqVar{
    id = Id,
    name = Nm0,
    expr = D,
    position = Pos,
    anno = LineNum
}) ->
    Nm = sim_name(Nm0),
    add_vertex(G, {Id, Nm}),
    add_edge(G, {Id, Nm}, Parent, []),
    M1 = add_variable_to_scope(Nm0, Id, Map, G),
    case D of
        % flwor return is path
        #xqFlwor{return = #xqPathExpr{id = PathId}} ->
            K = {PathId, path_expr},
            add_vertex(G, K),
            add_edge(G, K, {Id, Nm}, {variable, Id, set});
        % expression is path
        #xqPathExpr{id = PathId} ->
            K = {PathId, path_expr},
            add_vertex(G, K),
            add_edge(G, K, {Id, Nm}, {variable, Id, set});
        % expression is variable reference
        #xqVarRef{name = RefNm0, anno = LineNum1} ->
            RefNm = sim_name(RefNm0),
            case catch maps:get(RefNm, Map) of
                {'EXIT', _} ->
                    ?parse_err('XPST0008', {undefined, LineNum1});
                RefId when {RefId, RefNm} == Parent ->
                    % self reference, variable does not exist yet
                    ?parse_err('XPST0008', {undefined, LineNum1});
                RefId ->
                    add_edge(G, {RefId, RefNm}, {Id, Nm}, {variable, Id, set}),
                    ok
            end;
        _ ->
            ok
    end,
    case Pos of
        #xqPosVar{name = Nm1} when Nm0 == Nm1 ->
            ?parse_err('XQST0089', {undefined, LineNum});
        #xqPosVar{id = Id1, name = Nm1} ->
            add_vertex(G, {Id1, sim_name(Nm1)}),
            add_edge(G, {Id1, sim_name(Nm1)}, Parent, {variable, Id1, set}),
            M2 = maps:put(sim_name(Nm1), Id1, M1),
            %x(G, Map, Parent, D),
            x(G, Map, {Id, Nm}, D),
            M2;
        _ ->
            %x(G, Map, Parent, D),
            x(G, Map, {Id, Nm}, D),
            M1
    end;
x(
    G,
    Map,
    Parent,
    #xqWindow{
        win_variable = #xqVar{id = Id, name = Nm0, expr = Ex},
        s = S1,
        spos = S2,
        sprev = S3,
        snext = S4,
        e = E1,
        epos = E2,
        eprev = E3,
        enext = E4,
        start_expr = Se,
        end_expr = Ee
    }
) ->
    Nm = sim_name(Nm0),
    add_vertex(G, {Id, Nm}),
    add_edge(G, {Id, Nm}, Parent, variable),
    M1 = add_variable_to_scope(Nm0, Id, Map, G),
    x(G, Map, {Id, Nm}, Ex),
    Fold = fun
        (undefined, M) ->
            M;
        (#xqVar{id = Id2, name = Nm3}, M) ->
            Nm2 = sim_name(Nm3),
            add_vertex(G, {Id2, Nm2}),
            add_edge(G, {Id2, Nm2}, {Id2, Nm2}, {variable, Id2}),
            add_variable_to_scope(Nm3, Id2, M, G);
        (#xqPosVar{id = Id2, name = Nm3}, M) ->
            Nm2 = sim_name(Nm3),
            add_vertex(G, {Id2, Nm2}),
            add_edge(G, {Id2, Nm2}, {Id2, Nm2}, {pos_variable, Id2}),
            add_variable_to_scope(Nm3, Id2, M, G)
    end,
    M2 = lists:foldl(Fold, M1, [S1, S2, S3, S4]),
    x(G, M2, {Id, Nm}, Se),
    M3 = lists:foldl(Fold, M2, [E1, E2, E3, E4]),
    x(G, M3, {Id, Nm}, Ee),
    M3;
x(G, Map, Parent, #xqTypeswitchCase{
    types = default,
    variable = #xqVar{id = Id, name = Nm0, expr = D}
}) ->
    Nm = sim_name(Nm0),
    add_vertex(G, {Id, Nm}),
    add_edge(G, {Id, Nm}, Parent, type_switch),
    M1 = add_variable_to_scope(Nm0, Id, Map, G),
    x(G, M1, Parent, D),
    Map;
x(G, Map, Parent, [#xqTypeswitchCase{variable = #xqVar{id = Id, name = Nm0, expr = D}} | T]) ->
    Nm = sim_name(Nm0),
    add_vertex(G, {Id, Nm}),
    add_edge(G, {Id, Nm}, Parent, type_switch),
    M1 = add_variable_to_scope(Nm0, Id, Map, G),
    x(G, M1, Parent, D),
    x(G, Map, Parent, T),
    Map;
% local function defs
x(
    G,
    Map,
    [
        #xqFunctionDef{
            id = Id,
            name = Nm0,
            arity = Ar,
            body = Body,
            params = Params
        }
        | T
    ],
    _Data
) ->
    Nm = sim_name(Nm0),
    FnKey = {Id, Nm, Ar},
    add_vertex(G, FnKey),
    % overload params
    Map1 = lists:foldl(
        fun(#xqVar{id = Id1, name = Nm1}, M) ->
            ParmSim = sim_name(Nm1),
            ParmKey = {Id1, ParmSim},
            add_vertex(G, ParmKey),
            add_edge(G, ParmKey, FnKey, parameter),
            add_variable_to_scope(Nm1, Id1, M, G)
        end,
        Map,
        Params
    ),
    x(G, Map1, FnKey, Body),
    x(G, Map, T, []);
% global variables
x(G, Map, [#xqVar{id = Id, name = Nm0, expr = Body} | T], _Data) ->
    Nm = sim_name(Nm0),
    % all global variable bodies can have dependency on context item
    add_vertex(G, {Id, Nm}),
    x(G, Map, {Id, Nm}, Body),
    case maps:is_key(context_item, Map) of
        true ->
            %add_edge(G,context_item,{Id,Nm}),
            ContextEdges = digraph_utils:reaching([{Id, Nm}], G),
            case lists:member({dynamic, context_item}, ContextEdges) of
                true ->
                    add_edge(G, context_item, {Id, Nm}, ext);
                _ ->
                    ok
            end;
        _ ->
            ok
    end,
    x(G, Map, T, []);
% main query
x(G, Map, [#xqQuery{query = Qry} | T], _Data) ->
    add_vertex(G, main),
    x(G, Map, T, []),
    x(G, Map, main, Qry),
    % check for context dependency
    ContextEdges = digraph_utils:reaching([main], G),
    case lists:member({dynamic, context_item}, ContextEdges) of
        true ->
            add_edge(G, context_item, main, ext);
        _ ->
            ok
    end;
x(G, Map, [#xqContextItemDecl{default = Expr} | T], _Data) ->
    add_vertex(G, context_item),
    add_edge(G, context_item, main, ext),
    x(G, Map, context_item, Expr),
    x(G, Map, T, []);
x(G, Map, Parent, Data) when is_list(Data) ->
    lists:foldl(
        fun(D, M) ->
            x(G, M, Parent, D)
        end,
        Map,
        Data
    );
%'if-then-else' branches
x(G, Map, Parent, #xqIfExpr{condition = If, if_true = {TI, Then}, if_false = {EI, Else}}) ->
    add_vertex(G, {TI, 'if-then-else'}),
    add_vertex(G, {EI, 'if-then-else'}),
    add_edge(G, {TI, 'if-then-else'}, Parent, conditional),
    add_edge(G, {EI, 'if-then-else'}, Parent, conditional),
    x(G, Map, Parent, If),
    x(G, Map, {TI, 'if-then-else'}, Then),
    x(G, Map, {EI, 'if-then-else'}, Else),
    Map;
x(G, Map, Parent, #xqTryCatch{id = Id, expr = Expr, catches = Catches}) ->
    %?parse_dbg("Line", ?LINE),
    K = {Id, try_catch},
    add_vertex(G, K),
    add_edge(G, K, Parent, try_catch),
    x(G, Map, K, Expr),
    ErrNs = <<"http://www.w3.org/2005/xqt-errors">>,
    E1 = {ErrNs, <<"code">>},
    E2 = {ErrNs, <<"description">>},
    E3 = {ErrNs, <<"value">>},
    E4 = {ErrNs, <<"module">>},
    E5 = {ErrNs, <<"line-number">>},
    E6 = {ErrNs, <<"column-number">>},
    E7 = {ErrNs, <<"additional">>},
    add_vertex(G, E1),
    add_vertex(G, E2),
    add_vertex(G, E3),
    add_vertex(G, E4),
    add_vertex(G, E5),
    add_vertex(G, E6),
    add_vertex(G, E7),
    M2 = Map#{
        E1 => E1,
        E2 => E2,
        E3 => E3,
        E4 => E4,
        E5 => E5,
        E6 => E6,
        E7 => E7
    },
    x(G, M2, K, Catches);
x(G, Map, Parent, #xqQName{local_name = <<"QName">>}) ->
    add_vertex(G, {static, known_namespaces}),
    add_edge(G, {static, known_namespaces}, Parent, property),
    Map;
x(G, Map, Parent, #xqNodeConstructor{cons = Bod}) ->
    add_vertex(G, {static, base_uri}),
    add_vertex(G, {static, known_namespaces}),
    add_edge(G, {static, base_uri}, Parent, property),
    add_edge(G, {static, known_namespaces}, Parent, property),
    x(G, Map, Parent, Bod),
    Map;
x(G, Map, Parent, #xqFlwor{} = Data) ->
    xf(G, Map, Parent, Data),
    Map;
x(G, Map, Parent, #xqPosVar{id = Id1, name = Nm1}) ->
    add_vertex(G, {Id1, sim_name(Nm1)}),
    add_edge(G, {Id1, sim_name(Nm1)}, Parent, {pos_variable, Id1}),
    M2 = maps:put(sim_name(Nm1), Id1, Map),
    x(G, M2, Parent, []),
    M2;
x(_, _, _, #xqVarRef{name = #xqQName{namespace = undefined}, anno = LineNum}) ->
    % unknown prefix/namespace for variable
    ?parse_err('XPST0081', {undefined, LineNum});
x(G, Map, Parent, #xqVarRef{name = Nm0, anno = LineNum}) ->
    Nm = sim_name(Nm0),
    case catch maps:get(Nm, Map) of
        {'EXIT', _} ->
            ?parse_dbg("XPST0008", Nm0),
            ?parse_err('XPST0008', {undefined, LineNum});
        Id when {Id, Nm} == Parent ->
            ?parse_dbg("XPST0008", Nm0),
            % self reference, variable does not exist yet
            ?parse_err('XPST0008', {undefined, LineNum});
        Id ->
            %?dbg("Parent",Parent),
            add_edge(G, {Id, Nm}, Parent, {variable, Id, ref}),
            Map
    end;
x(G, Map, Parent, #xqFunctionCall{
    name = Nm,
    arity = Ar,
    args = Args
}) ->
    fun_call_existing(G, Nm, Ar, Map, Parent, Args);
x(G, Map, Parent, #xqPartialFunctionCall{
    name = Nm,
    arity = Ar,
    args = Args
}) ->
    fun_call_existing(G, Nm, Ar, Map, Parent, Args);
x(G, Map, Parent, #xqPostfixExpr{
    part = true,
    expr = #xqQName{} = Nm,
    post = [#xqArgumentList{args = Args}]
}) ->
    Ar = length(Args),
    fun_call_existing(G, Nm, Ar, Map, Parent, Args);
x(G, Map, Parent, #xqFunctionRef{name = Nm0, arity = Ar}) ->
    Nm = sim_name(Nm0),
    case maps:get({Nm, Ar}, Map, []) of
        [] ->
            % non local function
            add_properties(G, Nm0, Ar),
            add_vertex(G, {-1, Nm, Ar}),
            add_edge(G, {-1, Nm, Ar}, Parent, ext);
        0 ->
            add_vertex(G, {-1, Nm, Ar}),
            add_edge(G, {-1, Nm, Ar}, Parent, static),
            add_edge(G, {0, Nm, Ar}, Parent, static);
        _ ->
            %add_edge(G, {Id,Nm,Ar}, Parent) % allow local function refs...
            % allow local function refs...
            add_edge(G, {-1, Nm, Ar}, Parent, local)
    end,
    Map;
x(G, Map, Parent, Data) when is_tuple(Data) ->
    D1 = tuple_to_list(Data),
    x(G, Map, Parent, D1);
% simple map statement is the context-item
x(_G, Map, {_, map} = _Parent, 'context-item') ->
    %add_vertex(G, context_item),
    %add_edge(G, context_item, Parent, current_context),
    Map;
x(G, Map, Parent, 'context-item') ->
    add_vertex(G, context_item),
    add_edge(G, context_item, Parent, current_context),
    Map;
x(G, Map, Parent, 'root') ->
    add_vertex(G, context_item),
    add_edge(G, context_item, Parent, {path, maps:get(path, Map)}),
    Map;
x(G, Map, Parent, 'any-root') ->
    add_vertex(G, context_item),
    add_edge(G, context_item, Parent, {path, maps:get(path, Map)}),
    Map;
x(G, Map, [_ | T], D) ->
    x(G, Map, T, D);
x(_, Map, _, _) ->
    Map.

xf(G, Map, Parent, #xqFlwor{id = Id, loop = Loop, return = Ret}) ->
    Key = {Id, flwor},
    add_vertex(G, Key),
    add_edge(G, Key, Parent, []),
    Le = lists:flatmap(
        fun
            (#xqWindow{} = E) ->
                l(E);
            (#xqGroup{} = E) ->
                l(E);
            (#xqWhere{} = E) ->
                l(E);
            (#xqOrderByClause{} = E) ->
                l(E);
            (#xqFor{} = E) ->
                l(E);
            (#xqLet{} = E) ->
                l(E);
            (#xqCount{} = E) ->
                l(E)
        end,
        Loop
    ),
    LM = lists:foldl(
        fun(E, M) ->
            %x(G, M, E, Parent)
            x(G, M, Parent, E)
        end,
        Map,
        Le
    ),
    x(G, LM, Key, Ret).

add_vertex(G, V) -> digraph:add_vertex(G, V).

add_edge(G, A, B) ->
    add_edge(G, A, B, undefined).

% adds edge A -> B with label L if none exists
add_edge(G, A, B, L) ->
    Ex = [
        V
     || E <- digraph:out_edges(G, A),
        {_, _, V, _} <- [digraph:edge(G, E)],
        V == B
    ],
    case Ex of
        [] ->
            digraph:add_edge(G, A, B, L);
        _ ->
            ok
    end,
    ok.

has_cycle(G, Variables) ->
    Vars = [{{Id, sim_name(Nm)}, L} || #xqVar{anno = L, id = Id, name = Nm} <- Variables],
    lists:foreach(
        fun({Var, L}) ->
            case digraph:get_cycle(G, Var) of
                false -> ok;
                C -> has_cycle_1(C, L)
            end
        end,
        Vars
    ).

has_cycle_1(C, L) ->
    Cond = [N || {N, 'if-then-else'} <- C],
    case Cond of
        [] ->
            % variable cycle
            ?parse_err('XQDY0054', {undefined, L});
        [N | _] ->
            % cycle was in a logic branch.
            % it may never happen, throw at run-time
            erlang:put({'if-then-else', N}, 'XQDY0054')
    end.

l([]) ->
    [];
l(L) when is_list(L) ->
    L;
l(L) ->
    [L].

sim_name(#xqQName{namespace = N, local_name = L}) -> {N, L};
sim_name({qname, N, _, L}) -> {N, L}.

% returns map
add_glob_variables(G, Variables) ->
    %?parse_dbg("Variables",Variables),
    Fun = fun(A, B) -> add_glob_variables_1(G, A, B) end,
    lists:foldl(Fun, #{path => []}, Variables).

add_glob_variables_1(G, {#xqQName{anno = LineNum} = Nm, _, Annos, _, _}, Map) ->
    case is_private(Annos) of
        true ->
            Map;
        false ->
            Sim = sim_name(Nm),
            add_vertex(G, {0, sim_name(Nm)}),
            case Map of
                #{Sim := 0} ->
                    Map;
                #{Sim := _} ->
                    ?parse_err('XQST0049', {undefined, LineNum});
                _ ->
                    maps:put(Sim, 0, Map)
            end
    end;
add_glob_variables_1(G, #xqVar{id = Id, name = Nm, anno = LineNum}, Map) ->
    Sim = sim_name(Nm),
    add_vertex(G, {Id, sim_name(Nm)}),
    case maps:is_key(Sim, Map) of
        true -> ?parse_err('XQST0049', {undefined, LineNum});
        _ -> maps:put(Sim, Id, Map)
    end;
add_glob_variables_1(G, #xqContextItemDecl{}, Map) ->
    add_vertex(G, context_item),
    maps:put(context_item, -1, Map).

% returns map
add_glob_funs(G, Functions, Map0) ->
    %?dbg("Functions",Functions),
    Fun = fun(A, B) -> add_glob_funs_1(G, A, B) end,
    lists:foldl(Fun, Map0, Functions).

add_glob_funs_1(_, #xqFunctionDef{name = #xqQName{namespace = undefined}, anno = LineNum}, _) ->
    ?parse_err('XQST0060', {undefined, LineNum});
add_glob_funs_1(
    G,
    #xqFunctionDef{id = Id, name = Nm, arity = Ar, params = Params, anno = LineNum},
    Map
) ->
    S = sim_name(Nm),
    FnKey = {Id, S, Ar},
    add_vertex(G, {Id, S, Ar}),
    %% add parameter dependencies
    _ = lists:foldl(
        fun(#xqVar{id = Id1, name = Nm1}, Pos) ->
            ParmKey = {Id1, sim_name(Nm1)},
            add_vertex(G, ParmKey),
            add_edge(G, ParmKey, FnKey, {param, Pos}),
            Pos + 1
        end,
        1,
        Params
    ),
    case maps:is_key({S, Ar}, Map) of
        true ->
            ?parse_err('XQST0034', {undefined, LineNum});
        _ ->
            maps:put({S, Ar}, Id, Map)
    end;
add_glob_funs_1(G, {#xqQName{anno = LineNum} = Nm, _, Annos, _, Ar, _}, Map) ->
    case is_private(Annos) of
        true ->
            Map;
        false ->
            S = sim_name(Nm),
            add_properties(G, Nm, Ar),
            TempKey = {S, Ar},
            case Map of
                #{TempKey := 0} ->
                    Map;
                #{TempKey := _} ->
                    ?parse_err('XQST0034', {undefined, LineNum});
                _ ->
                    maps:put(TempKey, 0, Map)
            end
    end.

% adds static and dynamic properities for a function to the digraph
add_properties(G, Nm0, Ar) ->
    Properties = xqerl_static_fn_props:get_props(Nm0, Ar),
    Nm = sim_name(Nm0),
    add_vertex(G, {0, Nm, Ar}),
    Static = maps:get(static_properties, Properties),
    Dynamic = maps:get(dynamic_properties, Properties),
    lists:foreach(
        fun(P) ->
            add_vertex(G, {static, P}),
            add_edge(G, {static, P}, {0, Nm, Ar}, property)
        end,
        Static
    ),
    lists:foreach(
        fun(P) ->
            add_vertex(G, {dynamic, P}),
            add_edge(G, {dynamic, P}, {0, Nm, Ar}, property)
        end,
        Dynamic
    ),
    ok.

% add variable to the map
add_variable_to_scope(Nm, Id, Map, _G) ->
    maps:put(sim_name(Nm), Id, Map).

is_private([]) ->
    false;
is_private([
    #xqAnnotation{
        name = #xqQName{
            namespace = <<"http://www.w3.org/2012/xquery">>,
            local_name = <<"private">>
        }
    }
    | _
]) ->
    true;
is_private([_ | T]) ->
    is_private(T).

is_axis_parent({_, {axisStep, _, _}}) -> true;
is_axis_parent({_, predicate}) -> true;
is_axis_parent(_) -> false.

get_fun_id({{<<"http://www.w3.org/2005/xpath-functions">>, <<"concat">>}, _}, _M) ->
    0;
get_fun_id({Nm, Ar}, M) ->
    maps:get({Nm, Ar}, M).

fun_call_existing(G, Nm0, Ar, Map, Parent, Args) ->
    Nm = sim_name(Nm0),
    case maps:is_key({Nm, Ar}, Map) of
        true ->
            fun_call_existing_1(G, Nm, Ar, Map, Parent, Args);
        % non local function
        _ ->
            add_properties(G, Nm0, Ar),
            add_vertex(G, {-1, Nm, Ar}),
            case is_axis_parent(Parent) of
                true ->
                    %?dbg("Axis Parent", {-1,Nm,Ar}),
                    add_edge(G, {-1, Nm, Ar}, Parent, {path, maps:get(path, Map)});
                false ->
                    add_edge(G, {-1, Nm, Ar}, Parent, ext)
            end,
            x(G, Map, Parent, Args)
    end,
    Map.

fun_call_existing_1(G, Nm, Ar, Map, Parent, Args) ->
    Id = get_fun_id({Nm, Ar}, Map),
    Static = Id == 0,
    _ =
        case Static of
            true ->
                add_vertex(G, {-1, Nm, Ar}),
                add_edge(G, {-1, Nm, Ar}, Parent, static);
            _ ->
                ok
        end,
    _ =
        case is_axis_parent(Parent) of
            true ->
                %?dbg("Axis Parent", {Id,Nm,Ar}),
                add_edge(G, {Id, Nm, Ar}, Parent, {path, maps:get(path, Map)});
            false when Static ->
                add_edge(G, {Id, Nm, Ar}, Parent, static);
            false ->
                add_edge(G, {Id, Nm, Ar}, Parent, local)
        end,
    x(G, Map, Parent, Args).

add_preds(_, _, _, _, []) ->
    ok;
add_preds(G, Id, K, Map, Preds) ->
    PredK = {Id, predicate},
    add_vertex(G, PredK),
    add_edge(G, PredK, K, {path, maps:get(path, Map)}),
    x(G, Map, {Id, predicate}, Preds).
