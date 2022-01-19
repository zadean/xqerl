-module(xqerl_static_path_analysis).

%% -include("xqerl.hrl").
%%
%% %% ====================================================================
%% %% API functions
%% %% ====================================================================
%% -export([analyze/1]).
%%
%% analyze(_G) -> ok.
%%
%% %%    Verts = digraph:vertices(G),
%% %%    Tab = ets:new(grouped, [ordered_set]),
%% %%    _ =
%% %%      [begin
%% %%          {root, edge(G, Tab, Ed, Id)}
%% %%       end ||
%% %%       {Id, path_expr} = P <- lists:sort(Verts),
%% %%       Ed <- digraph:in_edges(G, P)
%% %%       ],
%% %%    Grpd = build_tree(Tab),
%% %%    io:format("~p~n", [Grpd]),
%% %%    Infos = ets:match(Tab, {{info,'$1'}}),
%% %%    io:format("~p~n", [Infos]),
%% %%    %io:format("~p~n", [ets:tab2list(Tab)]),
%% %%    ets:delete(Tab),
%% %%    Grpd.
%%
%%
%% %% ====================================================================
%% %% Internal functions
%% %% ====================================================================
%%
%% %% edge(G, {_,V1,V2,Lbl}, Acc) ->
%% %%    In = digraph:in_edges(G, V1),
%% %%    case In of
%% %%       [] ->
%% %%          [lists:reverse([V1|A]) ||
%% %%           A <- Acc];
%% %%       List ->
%% %%          NewAcc = [[V1|A] || A <- Acc],
%% %%          [edge(G, digraph:edge(G, L), NewAcc) ||
%% %%           L <- List]
%% %%    end.
%%
%%
%% edge(G, Tab, E, Id) ->
%%    case digraph:edge(G, E) of
%%       {_, {_, path_expr} = V1, {_, {axisStep, _, _}} = V2, _} -> % predicate
%%          Out = digraph:in_edges(G, V1),
%%          _ = [edge(G, Tab, O, Id) || O <- Out],
%%          ets_insert(Tab, {predicate, {V1, source, V2}}),
%%          [];
%%       {_, {_, path_expr}, {_, path_expr}, L} -> % paths with same source
%%          {info, L};
%%       {_, V1, V2, {path, Id}} ->
%%          Out = digraph:in_edges(G, V1),
%%          _ = [edge(G, Tab, O, Id) || O <- Out],
%%          ets_insert(Tab, {V2,V1,Id}),
%%          [];
%%       {_, V1, {_, predicate} = V2, _} ->
%%          Out = digraph:in_edges(G, V1),
%%          _ = [edge(G, Tab, O, Id) || O <- Out],
%%          ets_insert(Tab, {V2,V1,Id}),
%%          ets_insert(Tab, {predicate, {V2, statement, V1}}),
%%          [];
%%       {_, V1, {Id,path_expr} = V2, {variable, _, _}} -> % variable root of path
%%          Out = digraph:in_edges(G, V1),
%%          _ = [edge(G, Tab, O, Id) || O <- Out],
%%          ets_insert(Tab, {V2,V1,Id}),
%%          [];
%%       {_, V1, V2, {variable, _, set}} -> % variable is set to path statement
%%          Out = digraph:in_edges(G, V1),
%%          _ = [edge(G, Tab, O, Id) || O <- Out],
%%          ets_insert(Tab, {info, {V2, source, V1}}),
%%          [];
%%       {_, _, _, {path,_}} = _L -> []; % related, but wrong step
%%       {_, _, _, {variable, _, ref}} -> []; % random connection
%%       {_, _, _, static} -> [];
%%       {_, _, _, property} -> [];
%%       {_, _, _, _} = L ->
%%          ?dbg("L", L),
%%          []
%%    end.
%%
%% %% {info, {predicate, {AxisStep, PathExpr}}}  == Path is a predicate
%% %%                                               expression based on AxisStep.
%% %% {info, Var, '=', Path}  == this variable has this path.
%% %% {Var, AxisStep}         == this variable is in this path, the variable may
%% %%                            already have a path that must be prepended to
%% %%                            this path.
%% %% {AxisStep1, AxisStep2}  == one step to the next
%% %% {AxisStep, PathExpr}    == this step has a predicate path expression
%% %% {PathExpr, Var}         == beginning of new path expression
%% %% {PathExpr, AxisStep2}   == beginning of un-rooted path (may be predicate)
%% %% {Var1, Var2}            == FILTER OUT.
%%
%% build_tree(Tab) ->
%% % 1: find all variables
%% % 2: foreach var/path, follow path to the end
%% % see what that looks like
%%    VarMs = [{{{{'$1',{'$2','$3'}},'$4','$5'}},
%%              [{is_binary,'$3'}],
%%              [{{{{{{'$1',{{'$2','$3'}}}},'$4','$5'}}}}]}],
%%    Vars = ets:select(Tab, VarMs),
%%    [ {{PathId, path_expr}, [Var|Path]} ||
%%       {{Var, Next, PathId}} <- Vars,
%%       Path <- chase_path(Tab, Next, PathId)].
%%
%% chase_path(Tab, Parent, PathId) ->
%%    NextMs = [{{{Parent,'$1',PathId}},[],['$1']}],
%%    Nexts = ets:select(Tab, NextMs),
%%    if Nexts == [] ->
%%          [[Parent]];
%%       true ->
%%          LofL = [chase_path(Tab, N, PathId) || N <- Nexts],
%%          [[Parent|L] || L1 <- LofL, L <- L1]
%%    end.
%%
%%
%% %%    %?dbg("Roots",Roots),
%% %%    Grpd = group_by_2(Roots),
%% %%    FrstKeys = [K || {K,_} <- dict:to_list(Grpd)],
%% %%    %?dbg("FrstKeys",FrstKeys),
%% %%    [{dict:fetch(K, Grpd),
%% %%     condense_tree(build_tree(Tab, K))} || K <- FrstKeys].
%%
%% build_tree(Tab, Key) ->
%%    Key1 = case Key of
%%       {_, path_expr} ->
%%          predicate;
%%       _ ->
%%          Key
%%    end,
%%    case lists:usort(ets:select(Tab, [{{{Key,'$1','_'}},[],['$1']}])) of
%%       [] ->
%%          [{Key}];
%%       [Got] ->
%%          [{Key1, build_tree(Tab, Got)}];
%%       Got ->
%%          Unique = Got,
%%          ?dbg("Key1",Key1),
%%          [{Key1, build_tree(Tab, G)} || G <- Unique]
%%    end.
%%
%% condense_tree({Tup1, Tup2}) when is_tuple(Tup1),
%%                                  is_tuple(Tup2) ->
%%    {Tup1, condense_tree(Tup2)};
%% condense_tree({Tup1, List2}) when is_tuple(Tup1),
%%                                   is_list(List2) ->
%%
%%    {Tup1, condense_tree(List2)};
%% condense_tree({context_item, Tup1}) when is_tuple(Tup1) ->
%%    {context_item, condense_tree(Tup1)};
%% condense_tree({predicate, Tup1}) when is_tuple(Tup1) ->
%%    {predicate, condense_tree(Tup1)};
%% condense_tree(Tup1) when is_tuple(Tup1) ->
%%    Tup1;
%% condense_tree(Atom) when is_atom(Atom) ->
%%    Atom;
%% condense_tree(List1) when is_list(List1) ->
%%    [condense_tree(G) || G <- group_by_axis(List1)].
%%
%%
%%
%% ets_insert(Tab, Tup) ->
%%    ets:insert(Tab, {Tup}).
%%
%% %{{info, {predicate, {AxisStepId, _}, {PathExprId, path_expr}}, _}}
%%
%% % group root statements by their 2nd element
%% group_by_2(Roots) ->
%%    Sec = [V || {_,V} <- Roots],
%%    USec = lists:usort(Sec),
%%    List = [{U, []} || U <- USec],
%%    EmpDict = dict:from_list(List),
%%    Fold = fun({K,V}, Dict) ->
%%                 dict:append(V, K, Dict)
%%           end,
%%    lists:foldl(Fold, EmpDict, Roots).
%%
%% group_by_axis([X]) -> [X];
%% group_by_axis([{{K,V},Rest}|T]) ->
%%    Pred = fun({{_,V1},_}) when V == V1 -> true;
%%              ({_,V1}) when V == V1 -> true;
%%              (_) -> false
%%           end,
%%    {Matched, T1} = lists:partition(Pred, T),
%%    Fold = fun({{K1,_},Rest1}, {{Ks,_},Rests}) ->
%%                 {{append(K1,Ks),V},append(Rest1,Rests)};
%%              ({K1,_}, {{Ks,_},Rests}) ->
%%                 {{append(K1,Ks),V}, Rests}
%%           end,
%%    Rest1 = if is_list(Rest) -> Rest;
%%               true -> [Rest]
%%            end,
%%    {KVs, Rests1} = lists:foldl(Fold, {{K,V},Rest1}, Matched),
%%    [{KVs, group_by_axis(Rests1)} | group_by_axis(T1)];
%% group_by_axis([{predicate, Preds}|T]) ->
%%    Pred = fun({predicate, _}) -> true;
%%              (_) -> false
%%           end,
%%    {Matched, T1} = lists:partition(Pred, T),
%%    Fold = fun({predicate, P1}, {predicate,Ps}) ->
%%                 {predicate, append(P1,Ps)}
%%           end,
%%    {predicate, CombPreds} = lists:foldl(Fold, {predicate,Preds}, Matched),
%%    NewPreds = group_by_axis(CombPreds),
%%    NewPreds1 = condense_tree(NewPreds),
%%    [{predicate, NewPreds1} | group_by_axis(T1)];
%%
%% group_by_axis([{K,V}|T]) ->
%%    Pred = fun({I,V1}) when is_integer(I) ->
%%                 V == V1;
%%              ({{I,V1},_}) when is_integer(I) ->
%%                 V == V1;
%%              (_) -> false
%%           end,
%%    {Matched, T1} = lists:partition(Pred, T),
%%    Fold = fun({{K1,_},Rest1}, {{Ks,_},Rests}) ->
%%                 {{append(K1,Ks),V},append(Rest1,Rests)};
%%              ({K1,_}, {{Ks,_},Rests}) ->
%%                 {{append(K1,Ks),V}, Rests}
%%           end,
%%    case lists:foldl(Fold, {{K,V},[]}, Matched) of
%%       {KVs,[]} ->
%%          [KVs | group_by_axis(T1)];
%%       {KVs, Res} ->
%%          Res1 = group_by_axis(Res),
%%          [{KVs, Res1} | group_by_axis(T1)]
%%    end;
%% group_by_axis([{0,_,Ar} = H|T]) when is_integer(Ar) ->
%%    % remove duplicate fun calls
%%    T1 = [Ti || Ti <- T,
%%                Ti =/= H],
%%    [H|group_by_axis(T1)];
%% group_by_axis([H|T]) -> [H|group_by_axis(T)];
%% group_by_axis([]) -> [].
%%
%%
%% append(L1,L2) when is_list(L1), is_list(L2) ->
%%    L1 ++ L2;
%% append(L1,L2) when is_list(L2) ->
%%    [L1 | L2];
%% append(L1,L2) ->
%%    [L1 , L2].
%%
%%
%% % {StepId, Step}
