%% -------------------------------------------------------------------
%%
%% xqerl - XQuery processor
%%
%% Copyright (c) 2017-2020 Zachary N. Dean  All Rights Reserved.
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

%% @doc Handles parts of a FLWOR statement that see the entire tuple stream as one unit.
%% @NOTE much of this could be done in-line in the tuple stream. Ordering/grouping as each tuple comes in.
%%       Windows clauses would be difficult since they look forward.
%% @NOTE The FLWOR could possibly be turned into process-to-process messaging, one tuple at a time.
%%       The return portion being a process that returns to the original process...
%%       ... something to think about with huge data set aggregation.

-module(xqerl_flwor).

-include("xqerl.hrl").
-include("xqerl_parser.hrl").

-export([windowclause/3]).
-export([windowclause/5]).
-export([orderbyclause/2]).
-export([groupbyclause/1]).

-export([optimize/3]).

%% -export([test/1]).
%% test(Term) ->
%%    replace_var_with_context_item(<<0>>, Term).

-define(BOOL_CALL(Arg), #xqFunctionCall{
    name = #qname{
        namespace = <<"http://www.w3.org/2005/xpath-functions">>,
        local_name = <<"boolean">>
    },
    arity = 1,
    args = [Arg]
}).

-type xqFlwor() :: #xqFlwor{}.

% internal use
%% -export([int_order_1/2]).

add_position(List) when is_list(List) ->
    List1 = xqerl_seq3:to_list(List),
    add_position(List1, 1, []);
add_position(List) ->
    add_position([List]).

add_position([H | T], Cnt, Acc) ->
    New = {H, Cnt},
    add_position(T, Cnt + 1, [New | Acc]);
add_position([], _Cnt, Acc) ->
    lists:reverse(Acc).

do_atomize([], _) ->
    {<<>>, []};
do_atomize([V], C) ->
    do_atomize(V, C);
do_atomize(#{nk := _} = N, Coll) ->
    case xqerl_seq3:singleton_value(xqerl_types:atomize(N)) of
        #xqAtomicValue{value = Val} = A ->
            {xqerl_coll:sort_key(Val, Coll), A};
        Val ->
            {xqerl_coll:sort_key(Val, Coll), Val}
    end;
do_atomize(#xqAtomicValue{value = Val, type = T} = A, _) when
    T =:= 'xs:gYearMonth' orelse
        T =:= 'xs:gYear' orelse
        T =:= 'xs:gMonthDay' orelse
        T =:= 'xs:gDay' orelse
        T =:= 'xs:gMonth' orelse
        T =:= 'xs:date' orelse
        T =:= 'xs:dateTime' orelse
        T =:= 'xs:time'
->
    {xqerl_coll:sort_key(Val, T), A};
do_atomize(#xqAtomicValue{value = Val} = A, Coll) ->
    {xqerl_coll:sort_key(Val, Coll), A};
do_atomize(A, Coll) when is_boolean(A); is_number(A); is_binary(A); is_atom(A) ->
    {xqerl_coll:sort_key(A, Coll), A};
do_atomize(_, _) ->
    ?err('XPTY0004').

%% takes {{{K1,C1},{KN,CN}}, {V1,V2,VN}} and returns {K1,KN,V1,V2,VN} grouped
groupbyclause(KeyVals) ->
    % atomize where needed
    KVFun = fun({K1, V}) ->
        KC = tuple_to_list(K1),
        Atoms = [do_atomize(K, C) || {K, C} <- KC],
        Vals = lists:map(
            fun
                ({Va, _}) -> Va;
                (Va) -> Va
            end,
            tuple_to_list(V)
        ),
        {Atoms, list_to_tuple(Vals)}
    end,
    KeyVals1 = lists:map(KVFun, KeyVals),

    Keys = [K || {K, _V} <- KeyVals1],
    UKeys = unique(Keys),
    Mapped = lists:foldl(
        fun({K, V}, Acc) ->
            upsert(K, V, Acc)
        end,
        maps:new(),
        KeyVals1
    ),
    All = lists:foldl(
        fun(Ks, Acc) ->
            K = [K || {K, _V} <- Ks],
            Vs = [V || {_K, V} <- Ks],
            V = reverse(maps:get(K, Mapped)),
            V1 = lists:map(
                fun(ListVal) ->
                    xqerl_seq3:flatten(ListVal)
                end,
                V
            ),
            New = list_to_tuple(Vs ++ V1),
            [New | Acc]
        end,
        [],
        UKeys
    ),
    lists:reverse(All).

%% takes single list from expression and the start function and returns
%% {SPrev,S, SPos,SNext,EPrev,E, EPos,ENext, W}
%% can only be tumbling with no end function
windowclause([], _, _) ->
    [];
windowclause(L, StartFun, WType) ->
    L1 = add_position(L),
    Bw = winstart([[] | L1], StartFun, []),
    flatten_window_return(WType, Bw).

%% takes single list from expression and the start/end functions and returns
%% {SPrev,S, SPos,SNext,EPrev,E, EPos,ENext, W}
%% Type is tumbling or sliding
windowclause([], _, _, _, _) ->
    [];
windowclause(L, StartFun, EndFun, {Type, Only}, WType) ->
    L1 = add_position(L),
    Bw = winstart([[] | L1], StartFun, EndFun, Type, Only),
    flatten_window_return(WType, Bw);
windowclause(L, StartFun, EndFun, Type, WType) ->
    windowclause(L, StartFun, EndFun, {Type, false}, WType).

flatten_window_return(ignore, Bw) ->
    [
        begin
            L2 = element(9, B),
            S = xqerl_seq3:flatten(L2),
            setelement(9, B, S)
        end
        || B <- Bw, B =/= []
    ];
flatten_window_return(WType, Bw) ->
    [
        begin
            L2 = element(9, B),
            S = xqerl_seq3:flatten(L2),
            case xqerl_types:instance_of(S, WType) of
                true ->
                    setelement(9, B, S);
                _ ->
                    ?err('XPTY0004')
            end
        end
        || B <- Bw, B =/= []
    ].

win_start_tup(S, SPos) -> {S, SPos, [], [], S, SPos, [], [], [S]}.

win_start_next_tup(S, SPos, SNext) -> {S, SPos, [], SNext, S, SPos, [], SNext, [S]}.

win_start_prev_tup(S, SPos, SPrev) -> {S, SPos, SPrev, [], S, SPos, SPrev, [], [S]}.

win_start_last_tup(S, SPos, SPrev) -> {S, SPos, SPrev, [], S, SPos, SPrev, [], S}.

win_start_all_tup(S, SPos, SPrev, SNext) -> {S, SPos, SPrev, SNext, S, SPos, SPrev, SNext, [S]}.

win_start_extract_last({S1, SPos1, SPrev1, SNext1, _, _, _, _, W}) ->
    {S1, SPos1, SPrev1, SNext1, W}.

win_start_set_acc(Acc) ->
    R = lists:reverse(element(9, Acc)),
    setelement(9, Acc, R).

% tumbling window with no end function, means window as if each 'true'
winstart([], _, _) ->
    [];
winstart([{S, SPos}], true, _) ->
    [win_start_tup(S, SPos)];
winstart([[], {S, SPos}], true, []) ->
    winstart([{S, SPos}], true, win_start_tup(S, SPos));
winstart([[], {_, _}] = L, true, Acc) ->
    [win_start_set_acc(Acc) | winstart(L, true, [])];
winstart([[], {S, SPos}, {SNext, _} | _] = L, true, []) ->
    winstart(tl(L), true, win_start_next_tup(S, SPos, SNext));
winstart([[], {_, _}, {_, _} | _] = L, true, Acc) ->
    [win_start_set_acc(Acc) | winstart(L, true, [])];
% last call , returns
winstart([{SPrev, _}, {S, SPos}], true, []) ->
    [win_start_prev_tup(S, SPos, SPrev)];
% last call , returns
winstart([{SPrev, _}, {S, SPos}], true, Acc) ->
    [win_start_set_acc(Acc), win_start_last_tup(S, SPos, SPrev)];
winstart([{SPrev, _}, {S, SPos}, {SNext, _} | _] = L, true, []) ->
    winstart(tl(L), true, win_start_all_tup(S, SPos, SPrev, SNext));
winstart([{_, _}, {_, _}, {_, _} | _] = L, true, Acc) ->
    [win_start_set_acc(Acc) | winstart(L, true, [])];
winstart([{S, SPos}], StartFun, _) ->
    case bool(StartFun({S, SPos, [], []})) of
        true ->
            [win_start_tup(S, SPos)];
        _ ->
            []
    end;
winstart([[], {S, SPos}], StartFun, []) ->
    case bool(StartFun({S, SPos, [], []})) of
        true ->
            winstart([{S, SPos}], StartFun, win_start_tup(S, SPos));
        _ ->
            winstart([{S, SPos}], StartFun, [])
    end;
winstart([[], {S, SPos}] = L, StartFun, Acc) ->
    case bool(StartFun({S, SPos, [], []})) of
        true ->
            [win_start_set_acc(Acc) | winstart(L, StartFun, [])];
        _ ->
            {S1, SPos1, SPrev1, SNext1, W} = win_start_extract_last(Acc),
            NewAcc = {S1, SPos1, SPrev1, SNext1, S, SPos, [], [], [S | W]},
            winstart([{S, SPos}], StartFun, NewAcc)
    end;
winstart([[], {S, SPos}, {SNext, _} | _] = L, StartFun, []) ->
    case bool(StartFun({S, SPos, [], SNext})) of
        true ->
            winstart(tl(L), StartFun, win_start_next_tup(S, SPos, SNext));
        _ ->
            winstart(tl(L), StartFun, [])
    end;
winstart([[], {S, SPos}, {SNext, _} | _] = L, StartFun, Acc) ->
    case bool(StartFun({S, SPos, [], SNext})) of
        true ->
            [win_start_set_acc(Acc) | winstart(L, StartFun, [])];
        _ ->
            {S1, SPos1, SPrev1, SNext1, W} = win_start_extract_last(Acc),
            NewAcc = {S1, SPos1, SPrev1, SNext1, S, SPos, [], SNext, [S | W]},
            winstart(tl(L), StartFun, NewAcc)
    end;
% last call , returns
winstart([{SPrev, _}, {S, SPos}], StartFun, []) ->
    case bool(StartFun({S, SPos, SPrev, []})) of
        true ->
            [win_start_prev_tup(S, SPos, SPrev)];
        _ ->
            []
    end;
% last call , returns
winstart([{SPrev, _}, {S, SPos}], StartFun, Acc) ->
    case bool(StartFun({S, SPos, SPrev, []})) of
        true ->
            [win_start_set_acc(Acc), win_start_last_tup(S, SPos, SPrev)];
        _ ->
            {S1, SPos1, SPrev1, SNext1, W} = win_start_extract_last(Acc),
            [{S1, SPos1, SPrev1, SNext1, S, SPos, SPrev, [], lists:reverse([S | W])}]
    end;
winstart([{SPrev, _}, {S, SPos}, {SNext, _} | _] = L, StartFun, []) ->
    case bool(StartFun({S, SPos, SPrev, SNext})) of
        true ->
            winstart(tl(L), StartFun, win_start_all_tup(S, SPos, SPrev, SNext));
        _ ->
            winstart(tl(L), StartFun, [])
    end;
winstart([{SPrev, _}, {S, SPos}, {SNext, _} | _] = L, StartFun, Acc) ->
    case bool(StartFun({S, SPos, SPrev, SNext})) of
        true ->
            [win_start_set_acc(Acc) | winstart(L, StartFun, [])];
        _ ->
            {S1, SPos1, SPrev1, SNext1, W} = win_start_extract_last(Acc),
            NewAcc = {S1, SPos1, SPrev1, SNext1, S, SPos, SPrev, SNext, [S | W]},
            winstart(tl(L), StartFun, NewAcc)
    end.

win_start_end_1(SPrev, L, EndFun, Only) ->
    {Win, _Rest} = winend(SPrev, [], [], [], L, EndFun, [], Only),
    [Win].

winstart([], _StartFun, _EndFun, _Type, _Only) ->
    [];
winstart([{SPrev, _}] = L, true, EndFun, _Type, Only) ->
    win_start_end_1(SPrev, L, EndFun, Only);
winstart([[], {S, SPos}, {SNext, _} | _] = L, true, EndFun, tumbling, Only) ->
    {Win, Rest} = winend([], S, SPos, SNext, L, EndFun, [], Only),
    [Win | winstart(Rest, true, EndFun, tumbling, Only)];
winstart([[], {S, SPos}, {SNext, _} | _] = L, true, EndFun, Type, Only) ->
    {Win, _Rest} = winend([], S, SPos, SNext, L, EndFun, [], Only),
    [Win | winstart(tl(L), true, EndFun, Type, Only)];
winstart([[], {S, SPos}] = L, true, EndFun, _, Only) ->
    {Win, _Rest} = winend([], S, SPos, [], L, EndFun, [], Only),
    [Win];
winstart([{SPrev, _}, {S, SPos}] = L, true, EndFun, _, Only) ->
    {Win, _Rest} = winend(SPrev, S, SPos, [], L, EndFun, [], Only),
    [Win];
winstart([{SPrev, _}, {S, SPos}, {SNext, _} | _] = L, true, EndFun, tumbling, Only) ->
    {Win, Rest} = winend(SPrev, S, SPos, SNext, L, EndFun, [], Only),
    [Win | winstart(Rest, true, EndFun, tumbling, Only)];
winstart([{SPrev, _}, {S, SPos}, {SNext, _} | _] = L, true, EndFun, Type, Only) ->
    {Win, _Rest} = winend(SPrev, S, SPos, SNext, L, EndFun, [], Only),
    [Win | winstart(tl(L), true, EndFun, Type, Only)];
winstart([{SPrev, _}] = L, StartFun, EndFun, _Type, Only) ->
    case bool(StartFun({[], [], SPrev, []})) of
        true ->
            win_start_end_1(SPrev, L, EndFun, Only);
        _ ->
            []
    end;
winstart([[], {S, SPos}, {SNext, _} | _] = L, StartFun, EndFun, tumbling, Only) ->
    case bool(StartFun({S, SPos, [], SNext})) of
        true ->
            {Win, Rest} = winend([], S, SPos, SNext, L, EndFun, [], Only),
            [Win | winstart(Rest, StartFun, EndFun, tumbling, Only)];
        _ ->
            winstart(tl(L), StartFun, EndFun, tumbling, Only)
    end;
winstart([[], {S, SPos}, {SNext, _} | _] = L, StartFun, EndFun, Type, Only) ->
    case bool(StartFun({S, SPos, [], SNext})) of
        true ->
            {Win, _Rest} = winend([], S, SPos, SNext, L, EndFun, [], Only),
            [Win | winstart(tl(L), StartFun, EndFun, Type, Only)];
        _ ->
            winstart(tl(L), StartFun, EndFun, Type, Only)
    end;
winstart([[], {S, SPos}] = L, StartFun, EndFun, Type, Only) ->
    case bool(StartFun({S, SPos, [], []})) of
        true ->
            {Win, _Rest} = winend([], S, SPos, [], L, EndFun, [], Only),
            % could send Win someplace now
            [Win];
        _ ->
            winstart(tl(L), StartFun, EndFun, Type, Only)
    end;
winstart([{SPrev, _}, {S, SPos}] = L, StartFun, EndFun, Type, Only) ->
    case bool(StartFun({S, SPos, SPrev, []})) of
        true ->
            {Win, _Rest} = winend(SPrev, S, SPos, [], L, EndFun, [], Only),
            % could send Win someplace now
            [Win];
        _ ->
            winstart(tl(L), StartFun, EndFun, Type, Only)
    end;
winstart([{SPrev, _}, {S, SPos}, {SNext, _} | _] = L, StartFun, EndFun, tumbling, Only) ->
    case bool(StartFun({S, SPos, SPrev, SNext})) of
        true ->
            {Win, Rest} = winend(SPrev, S, SPos, SNext, L, EndFun, [], Only),
            % could send Win someplace now
            [Win | winstart(Rest, StartFun, EndFun, tumbling, Only)];
        _ ->
            winstart(tl(L), StartFun, EndFun, tumbling, Only)
    end;
winstart([{SPrev, _}, {S, SPos}, {SNext, _} | _] = L, StartFun, EndFun, Type, Only) ->
    case bool(StartFun({S, SPos, SPrev, SNext})) of
        true ->
            {Win, _Rest} = winend(SPrev, S, SPos, SNext, L, EndFun, [], Only),
            % could send Win someplace now
            [Win | winstart(tl(L), StartFun, EndFun, Type, Only)];
        _ ->
            winstart(tl(L), StartFun, EndFun, Type, Only)
    end.

winend(SPrev, S, SPos, SNext, [[], {E, EPos}, {ENext, _} | _] = L, EndFun, Acc, Only) ->
    NewAcc = [E | Acc],
    case bool(EndFun({S, SPos, SPrev, SNext, E, EPos, [], ENext})) of
        true ->
            {{S, SPos, SPrev, SNext, E, EPos, [], ENext, lists:reverse(NewAcc)}, tl(L)};
        _ ->
            winend(SPrev, S, SPos, SNext, tl(L), EndFun, NewAcc, Only)
    end;
winend(SPrev, S, SPos, SNext, [[], {E, EPos}] = L, EndFun, Acc, Only) ->
    NewAcc = [E | Acc],
    case bool(EndFun({S, SPos, SPrev, SNext, E, EPos, [], []})) of
        true ->
            {{S, SPos, SPrev, SNext, E, EPos, [], [], lists:reverse(NewAcc)}, tl(L)};
        _ ->
            winend(SPrev, S, SPos, SNext, tl(L), EndFun, NewAcc, Only)
    end;
winend(SPrev, S, SPos, SNext, [{EPrev, _}, {E, EPos}], EndFun, Acc, Only) ->
    NewAcc = [E | Acc],
    case bool(EndFun({S, SPos, SPrev, SNext, E, EPos, EPrev, []})) of
        false when Only == true -> {[], []};
        _ -> {{S, SPos, SPrev, SNext, E, EPos, EPrev, [], lists:reverse(NewAcc)}, []}
    end;
winend(SPrev, S, SPos, SNext, [{EPrev, _}], EndFun, Acc, Only) ->
    case bool(EndFun({S, SPos, SPrev, SNext, [], [], EPrev, []})) of
        false when Only == true -> {[], []};
        _ -> {{S, SPos, SPrev, SNext, [], [], EPrev, [], lists:reverse(Acc)}, []}
    end;
winend(
    SPrev,
    S,
    SPos,
    SNext,
    [{EPrev, _}, {E, EPos}, {ENext, _} | _] = L,
    EndFun,
    Acc,
    Only
) ->
    NewAcc = [E | Acc],
    case bool(EndFun({S, SPos, SPrev, SNext, E, EPos, EPrev, ENext})) of
        true ->
            {{S, SPos, SPrev, SNext, E, EPos, EPrev, ENext, lists:reverse(NewAcc)}, tl(L)};
        _ ->
            winend(SPrev, S, SPos, SNext, tl(L), EndFun, NewAcc, Only)
    end.

%% functions for group by
unique(KeysAll) ->
    unique(KeysAll, maps:new(), []).

unique([], _Map, Acc) ->
    lists:reverse(Acc);
unique([H | T], Map, Acc) ->
    H1 = [Q || {Q, _} <- H],
    case maps:is_key(H1, Map) of
        true ->
            unique(T, Map, Acc);
        _ ->
            unique(T, maps:put(H1, true, Map), [H | Acc])
    end.

upsert(K, V, Map) ->
    H1 = [Q || {Q, _} <- K],
    case maps:find(H1, Map) of
        error ->
            maps:put(H1, append(V, []), Map);
        {ok, Val} ->
            maps:put(H1, append(V, Val), Map)
    end.

append(Tup, []) ->
    Sz = erlang:tuple_size(Tup),
    lists:map(
        fun(I) ->
            [erlang:element(I, Tup)]
        end,
        lists:seq(1, Sz)
    );
append(Tup, List) ->
    Sz = erlang:tuple_size(Tup),
    lists:map(
        fun(I) ->
            V = lists:nth(I, List),
            [erlang:element(I, Tup) | V]
        end,
        lists:seq(1, Sz)
    ).

reverse(List) ->
    Sz = erlang:length(List),
    lists:map(
        fun(I) ->
            lists:flatten(lists:reverse(lists:nth(I, List)))
        end,
        lists:seq(1, Sz)
    ).

% Clauses are funs that take an entire VarStream tuple
orderbyclause(VarStream, Clauses) ->
    F = fun(Tuple) ->
        Cs = lists:map(
            fun({C, D, E}) ->
                V = C(Tuple),
                {V, D, E}
            end,
            Clauses
        ),
        {Tuple, Cs}
    end,
    Set = lists:map(F, VarStream),
    Sorted = lists:sort(
        fun(A, B) ->
            do_order(A, B)
        end,
        Set
    ),
    [T || {T, _} <- Sorted].

% stable sort by empty function descending
do_order({_, []}, {_, []}) ->
    true;
do_order({_, [{[], descending, _} | _]}, {_, [{[], _, _} | _]}) ->
    true;
do_order({_, [{[], descending, greatest} | _]}, {_, [{_, _, _} | _]}) ->
    true;
do_order({_, [{_, descending, greatest} | _]}, {_, [{[], _, _} | _]}) ->
    false;
do_order(
    {_, [{#xqAtomicValue{type = 'xs:float', value = nan}, descending, greatest} | _]},
    {_, [{_, _, _} | _]}
) ->
    true;
do_order({_, [{nan, descending, greatest} | _]}, {_, [{_, _, _} | _]}) ->
    true;
do_order({_, [{[], descending, least} | _]}, {_, [{_, _, _} | _]}) ->
    false;
do_order({_, [{_, descending, least} | _]}, {_, [{[], _, _} | _]}) ->
    true;
do_order(
    {_, [{_, descending, least} | _]},
    {_, [{#xqAtomicValue{type = 'xs:float', value = nan}, _, _} | _]}
) ->
    true;
do_order({_, [{_, descending, least} | _]}, {_, [{nan, _, _} | _]}) ->
    true;
% stable sort by empty function ascending
do_order({_, [{[], ascending, _} | _]}, {_, [{[], _, _} | _]}) ->
    true;
do_order({_, [{[], ascending, greatest} | _]}, {_, [{_, _, _} | _]}) ->
    false;
do_order({_, [{_, ascending, greatest} | _]}, {_, [{[], _, _} | _]}) ->
    true;
do_order(
    {_, [{_, ascending, greatest} | _]},
    {_, [{#xqAtomicValue{type = 'xs:float', value = nan}, _, _} | _]}
) ->
    true;
do_order({_, [{_, ascending, greatest} | _]}, {_, [{nan, _, _} | _]}) ->
    true;
do_order({_, [{_, ascending, least} | _]}, {_, [{[], _, _} | _]}) ->
    false;
do_order(
    {_, [{_, ascending, least} | _]},
    {_, [{#xqAtomicValue{type = 'xs:float', value = nan}, _, _} | _]}
) ->
    false;
do_order({_, [{_, ascending, least} | _]}, {_, [{nan, _, _} | _]}) ->
    false;
do_order({_, [{[], ascending, least} | _]}, {_, [{_, _, _} | _]}) ->
    true;
do_order(
    {_, [{#xqAtomicValue{type = 'xs:float', value = nan}, ascending, least} | _]},
    {_, [{_, _, _} | _]}
) ->
    true;
do_order({_, [{nan, ascending, least} | _]}, {_, [{_, _, _} | _]}) ->
    true;
do_order({TA, [{ValA, Dir, _} | RestA]}, {TB, [{ValB, _, _} | RestB]}) ->
    Before =
        case Dir of
            descending -> xqerl_operators:greater_than(ValA, ValB);
            _ -> xqerl_operators:less_than(ValA, ValB)
        end,
    case Before of
        true ->
            true;
        _ ->
            case xqerl_operators:equal(ValA, ValB) of
                true ->
                    do_order({TA, RestA}, {TB, RestB});
                _ ->
                    false
            end
    end.

bool(true) -> true;
bool(false) -> false;
bool(T) -> xqerl_operators:eff_bool_val(T).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%   Static optimizations of FLWOR statements   %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% TODO : add xpath optimizations too

%% Attempts to optimize a FLWOR statement by reordering clauses
%% and removing unused variables
-spec optimize(xqFlwor(), digraph:graph(), fun()) -> Result :: xqFlwor() | any().
optimize(#xqFlwor{} = FL, Digraph, Det) ->
    FL0 = optimize_nested(FL, Digraph, Det),
    {B2, F2} = fold_changes(FL0, Digraph, Det),
    case strip_empty_flwor(F2) of
        #xqFlwor{} = _F000 ->
            %?dbg("1",FL),
            %?dbg("2",F2),
            %?dbg("3",_F000),
            {B3, F3} = replace_trailing_for_in_return(F2, Digraph, Det),
            {B4, F4} = fold_for_count(F3, Digraph),
            {B5, F5} = maybe_lift_simple_return(F4, Digraph, Det),
            {B6, F6} = maybe_lift_lets_in_return(F5, Digraph, Det),
            F7 =
                case B2 orelse B3 orelse B4 orelse B5 orelse B6 of
                    true ->
                        %?dbg("F6",F6),
                        % keep cycling until completely optimized
                        optimize(F6, Digraph, Det);
                    _ ->
                        F6
                end,
            _ = print_digraph(Digraph),
            case F7 of
                #xqFlwor{} ->
                    Cl8 = combine_wheres(F7#xqFlwor.loop),
                    leading_where_as_if(F7#xqFlwor{loop = Cl8}, Digraph, Det);
                Other ->
                    Other
            end;
        Empty ->
            Empty
    end;
optimize(FL, _, _) ->
    FL.

%% STEP 1
-spec optimize_nested(xqFlwor(), digraph:graph(), fun()) -> Result :: xqFlwor().
optimize_nested(#xqFlwor{loop = L} = FL, G, Det) ->
    Fun = fun
        ({'let', #xqVar{expr = #xqFlwor{} = Fl2} = FV, ST}) ->
            ?dbg("Optimizing nested FLWOR", true),
            {'let', FV#xqVar{expr = optimize(Fl2, G, Det)}, ST};
        (E) ->
            E
    end,
    NewLoop = lists:map(Fun, L),
    FL#xqFlwor{loop = NewLoop}.

%% STEP 2
-spec fold_changes(xqFlwor(), digraph:graph(), fun()) ->
    {Changed :: boolean(), Result :: xqFlwor()}.
fold_changes(#xqFlwor{} = FL, G, Det) ->
    {B0, F0} = maybe_replace_for_with_let(FL),
    {B0a, F0a} = maybe_split_for(F0, G),
    {B1, F1} = maybe_lift_let(F0a, G, Det),
    {B2, F2} = maybe_inline_let(F1, G),
    {B2a, F2a} = maybe_remove_redundant_let(F2, G),
    {B3, F3} = remove_unused_variables(F2a, G),
    {B4, F4} = maybe_lift_nested_for_expression(F3),
    {B8, F8} = maybe_split_comparisons_in_where_clause(F4, G),
    {B5, F5} = maybe_lift_nested_let_clause(F8),
    {B5a, F5a} = maybe_lift_nested_for_clause(F5, G),
    {B6, F6} = maybe_lift_where_clause(F5a, G, Det),
    {B7, F7} = where_clause_as_predicate(F6, G),
    B =
        B0 orelse
            B0a orelse
            B1 orelse
            B2 orelse
            B2a orelse
            B3 orelse
            B4 orelse B5 orelse B5a orelse B6 orelse B7 orelse B8,
    {B, F7}.

%% STEP 2.1 Attempts to replace singleton fors with a let
maybe_replace_for_with_let(#xqFlwor{loop = L} = FL) ->
    Fun = fun
        (
            {'for',
                #xqVar{
                    empty = false,
                    position = undefined
                } = FV,
                #xqSeqType{occur = one} = ST},
            _
        ) ->
            ?dbg("Replacing for with let", ST),
            {{'let', FV, ST}, true};
        (E, A) ->
            {E, A}
    end,
    {NewLoop, Changed} = lists:mapfoldl(Fun, false, L),
    {Changed, FL#xqFlwor{loop = NewLoop}}.

%% STEP 2.1.a
%% attempts to split 'for' clauses into a let and for clause
%% that appear after other for clauses
%% and do not rely on each other
%% then, returns {Changed :: boolean(), FLWOR :: #xqFlwor{}}
-spec maybe_split_for(xqFlwor(), digraph:graph()) -> {Changed :: boolean(), Result :: xqFlwor()}.
maybe_split_for(#xqFlwor{loop = Clauses} = FL, G) ->
    case [V || {for, _, _} = V <- Clauses] of
        [] ->
            {false, FL};
        Fors ->
            F = maybe_split_for_fun(G, Fors),
            Loop = lists:flatmap(F, Clauses),
            {Loop =/= Clauses, FL#xqFlwor{loop = Loop}}
    end.

maybe_split_for_fun(G, Fors) ->
    fun
        ({for, #xqVar{id = Id0, expr = Ex, empty = false} = FV, AType} = V) when
            Id0 < 10000 andalso is_tuple(Ex) andalso element(1, Ex) =/= pragma;
            Id0 < 10000, not is_tuple(Ex)
        ->
            D = fun(O) ->
                not relies_on(V, O, G) orelse length(Fors) == 1
            end,
            case lists:any(D, Fors) of
                % does not depend on some
                true ->
                    #xqVar{id = Id, name = Nm, type = Ty} = FV,
                    ?dbg("splitting for", Nm),
                    Let =
                        {'let',
                            #xqVar{
                                id = Id,
                                name = Nm,
                                expr = Ex,
                                % new type can `any` sequence
                                type =
                                    maybe_zero_type(
                                        maybe_many_type(Ty)
                                    )
                            },
                            maybe_many_type(AType)},
                    For =
                        {'for',
                            FV#xqVar{
                                id = Id + 10000,
                                expr = #xqVarRef{name = Nm}
                            },
                            AType},
                    FVx = vertex_name(For),
                    LVx = vertex_name(Let),
                    digraph:add_vertex(G, FVx),
                    digraph:add_vertex(G, LVx),

                    digraph:add_edge(G, LVx, FVx),
                    digraph:add_edge(G, FVx, LVx),

                    [Let, For];
                false ->
                    %?dbg("NOT splitting for",0),
                    [V]
            end;
        (O) ->
            [O]
    end.

%;
%maybe_split_for(FL, _) ->
%   {false,FL}.

%% STEP 2.1.b
%% attempts to lift 'let' clauses above other statements that do not use
%% them, returns {Changed :: boolean(), FLWOR :: #xqFlwor{}}
-spec maybe_lift_let(xqFlwor(), digraph:graph(), fun()) ->
    {Changed :: boolean(), Result :: xqFlwor()}.
maybe_lift_let(#xqFlwor{loop = Clauses} = FL, G, Det) ->
    PosList = to_pos_list(Clauses),
    Lets = [
        {P, V}
        || {P, V} <- PosList,
           element(1, V) == 'let',
           shiftable_expression(V, Det),
           P > 1
    ],
    %?dbg("Lets",Lets),
    F = fun({P, Let}, {Ch, All}) ->
        {Ch1, All1} = do_lift_let({P, Let}, All, G, Det),
        {Ch1 orelse Ch, All1}
    end,
    {Changed, NewPosList} = lists:foldl(F, {false, PosList}, Lets),
    {Changed, FL#xqFlwor{loop = from_pos_list(NewPosList)}}.

do_lift_let({P, Let}, All, G, Det) ->
    Seq = lists:reverse(lists:seq(1, P - 1)),
    Pred = fun(Pos) ->
        case lists:keyfind(Pos, 1, All) of
            {_, {group_by, _, _}} ->
                false;
            {_, Val} ->
                (not relies_on(Let, Val, G)) andalso
                    element(2, vertex_name(Let)) =/= element(2, vertex_name(Val)) andalso
                    shiftable_expression(Val, Det)
        end
    end,
    Skip = [lists:keyfind(A, 1, All) || A <- lists:takewhile(Pred, Seq)],
    case get_first_for_window(Skip) of
        [] ->
            {false, All};
        I ->
            ?dbg("Lifting let variable", Let),
            {true, insert_at(Let, I, remove_from(P, All))}
    end.

do_lift_where({P, Where}, All, G) ->
    Seq = lists:reverse(lists:seq(1, P - 1)),
    Pred = fun(Pos) ->
        case lists:keyfind(Pos, 1, All) of
            {_, {count, _}} ->
                false;
            {_, {group_by, _, _}} ->
                false;
            {_, Val} ->
                not relies_on(Where, Val, G)
        end
    end,
    Skip = lists:reverse([
        lists:keyfind(A, 1, All)
        || A <- lists:takewhile(Pred, Seq)
    ]),
    case get_first_non_where(Skip) of
        [] ->
            {false, All};
        I ->
            ?dbg("Lifting where", Where),
            {true, insert_at(Where, I, remove_from(P, All))}
    end.

get_first_for_window([{I, {'for', #xqVar{empty = false}, _}} | _]) ->
    I;
get_first_for_window([{I, #xqWindow{}} | _]) ->
    I;
get_first_for_window([_ | T]) ->
    get_first_for_window(T);
get_first_for_window([]) ->
    [].

get_first_non_where([]) -> [];
get_first_non_where([{_, {'where', _, _}} | T]) -> get_first_non_where(T);
get_first_non_where([{I, _} | _]) -> I.

%% STEP 2.2
%% attempts to replace any static/atomic variables set with a 'let' clause
%% with their value inline, and remove the let clause
%% returns {Changed :: boolean(), FLWOR :: #xqFlwor{}}
%% TODO: implement, need a good way to scope variables here
-spec maybe_inline_let(xqFlwor(), digraph:graph()) -> {Changed :: boolean(), Result :: xqFlwor()}.
maybe_inline_let(#xqFlwor{id = _Id, loop = _Clauses, return = _Return} = FL, _G) ->
    % lets that rely on nothing are static
    %   PosList = to_pos_list(Clauses),
    %   Lets = [{P,V} ||
    %           {P,V} <- PosList,
    %           element(1, V) == 'let',
    %           shiftable_expression(V),
    %           relies_on(V, [], G)
    %           ],
    % for each let
    % remove all edges
    % remove vertex
    % replace every use of variable with expr (#xqVarRef{name = Name})
    %   ?dbg("Lets",Lets),
    {false, FL}.

%% STEP 2.2.5
%% attempts to replace any redundant let clauses with the first occurance
%% returns {Changed :: boolean(), FLWOR :: #xqFlwor{}}
-spec maybe_remove_redundant_let(xqFlwor(), digraph:graph()) ->
    {Changed :: boolean(), Result :: xqFlwor()}.
maybe_remove_redundant_let(#xqFlwor{id = _Id, loop = _Clauses, return = _Return} = FL, _G) ->
    %% turn off for now
    {false, FL}.

%%
%%    % for each let clause look through the others for one with an identical
%%    % expression. If found, remove the 2nd let clause expression and replace
%%    % it with the 1st let variable reference
%%    % add dependancy between the variables
%%
%%    PosList = to_pos_list(Clauses),
%%    Lets = [{P,V} ||
%%            {P,V} <- PosList,
%%            element(1, V) == 'let'
%%            ],
%%    Dups = [{{P1,L1},{P2,L2}} ||
%%            {P1,{'let',#xqVar{expr = E1},_} = L1} <- Lets,
%%            {P2,{'let',#xqVar{expr = E2},_} = L2} <- Lets,
%%            expressions_equal(E1, E2),
%%            P1 < P2],
%%    % only remove the first
%%    % this works because path and postfix statements have unique ids
%%    case Dups of
%%       [] ->
%%          {false,FL};
%%       [{{_,{'let',#xqVar{name = N1},_} = L1},
%%         {P2,{'let',#xqVar{} = V,_} = L2}}|_] ->
%%          ?dbg("Removing reduntant let expression:", V),
%%          VN1 = vertex_name(L1),
%%          VN2 = vertex_name(L2),
%%          _ = digraph:add_edge(G, VN1, VN2),
%%          New = {P2,setelement(2, L2, V#xqVar{expr = #xqVarRef{name = N1}})},
%%          NewList = lists:map(fun({P,_}) when P == P2 ->
%%                                    New;
%%                                 (O) ->
%%                                    O
%%                              end, PosList),
%%          {true, FL#xqFlwor{loop = from_pos_list(NewList)}}
%%    end.

%% STEP 2.3
%% removes any unused variables created in let or count clauses
%% also removes variables from DiGraph
%% returns {Changed :: boolean(), FLWOR :: #xqFlwor{}}
-spec remove_unused_variables(xqFlwor(), digraph:graph()) ->
    {Changed :: boolean(), Result :: xqFlwor()}.
remove_unused_variables(#xqFlwor{loop = Clauses} = FL, G) ->
    PosList = to_pos_list(Clauses),
    Lets = [
        {P, V}
        || {P, V} <- PosList,
           element(1, V) == 'let' orelse element(1, V) == 'count',
           [] == relies_on([], V, G)
    ],
    case Lets of
        [] ->
            {false, FL};
        _ ->
            F = fun({P, Let}, CurrList) ->
                VN = vertex_name(Let),
                ?dbg("removing unused variable", VN),
                true = digraph:del_vertex(G, VN),
                remove_from(P, CurrList)
            end,
            % foldr to not screw up indexes
            NewFl = lists:foldr(F, PosList, Lets),
            {true, FL#xqFlwor{loop = from_pos_list(NewFl)}}
    end.

%% STEP 2.4
%% move simple (only for,let,where) flwors out of sub-for
%% expressions(not allowing empty, or with position)
%% place before for clause
%% sub-return becomes new for-expression
%% returns {Changed :: boolean(), FLWOR :: #xqFlwor{}}
-spec maybe_lift_nested_for_expression(xqFlwor()) -> {Changed :: boolean(), Result :: xqFlwor()}.
maybe_lift_nested_for_expression(#xqFlwor{loop = Clauses} = FL) ->
    F = fun
        (
            {for,
                #xqVar{
                    empty = false,
                    name = N,
                    position = undefined,
                    expr = #xqFlwor{
                        loop = Loop0,
                        return = Ret
                    }
                } = V,
                AType},
            _
        ) ->
            ?dbg("Flattening FLWOR", N),
            Loop = Loop0 ++ [{for, V#xqVar{expr = Ret}, AType}],
            {Loop, true};
        (O, Changed0) ->
            {O, Changed0}
    end,
    case lists:mapfoldl(F, false, Clauses) of
        {C1, true} ->
            {true, FL#xqFlwor{loop = lists:flatten(C1)}};
        _ ->
            {false, FL}
    end.

%% STEP 2.5
%% move leading let clauses out of sub-flwors in for or let clauses
%% returns {Changed :: boolean(), FLWOR :: #xqFlwor{}}
-spec maybe_lift_nested_let_clause(xqFlwor()) -> {Changed :: boolean(), Result :: xqFlwor()}.
maybe_lift_nested_let_clause(#xqFlwor{loop = Clauses} = FL) ->
    F = fun
        (
            {Typ,
                #xqVar{
                    name = N,
                    expr = #xqFlwor{loop = [{'let', _, _} = L | T]} = Fl1
                } = V,
                AType},
            _
        ) when Typ == 'for'; Typ == 'let' ->
            ?dbg("Lifting let from nested-FLWOR", N),
            Loop = [L, {Typ, V#xqVar{expr = Fl1#xqFlwor{loop = T}}, AType}],
            {Loop, true};
        (O, Changed0) ->
            {O, Changed0}
    end,
    case lists:mapfoldl(F, false, Clauses) of
        {C1, true} ->
            {true, FL#xqFlwor{loop = lists:flatten(C1)}};
        _ ->
            {false, FL}
    end.

%% STEP 2.5.a
%% move leading for clauses out of sub-flwors in let clauses, add dependency
%% turn for into let and change let fo reference new let
%% returns {Changed :: boolean(), FLWOR :: #xqFlwor{}}
-spec maybe_lift_nested_for_clause(xqFlwor(), digraph:graph()) ->
    {Changed :: boolean(), Result :: xqFlwor()}.
maybe_lift_nested_for_clause(#xqFlwor{loop = Clauses} = FL, G) ->
    F = fun
        (
            {'let',
                #xqVar{
                    name = N,
                    expr = #xqFlwor{loop = [{'for', _, _} | _]} = Fl1
                } = V,
                AType} = L1,
            _
        ) ->
            case maybe_split_for(Fl1, G) of
                {true, NewFl} ->
                    ?dbg("Lifting for from sub-FLWOR", N),
                    Loop = [{'let', V#xqVar{expr = NewFl}, AType}],
                    {Loop, true};
                {false, _} ->
                    {L1, false}
            end;
        (O, Changed0) ->
            {O, Changed0}
    end,
    case lists:mapfoldl(F, false, Clauses) of
        {C1, true} ->
            {true, FL#xqFlwor{loop = lists:flatten(C1)}};
        _ ->
            {false, FL}
    end.

%% STEP 2.6
%% lift 'where' clauses above other statements that do not use them
%% returns {Changed :: boolean(), FLWOR :: #xqFlwor{}}
-spec maybe_lift_where_clause(xqFlwor(), digraph:graph(), fun()) ->
    {Changed :: boolean(), Result :: xqFlwor()}.
maybe_lift_where_clause(#xqFlwor{loop = Clauses} = FL, G, Det) ->
    PosList = to_pos_list(Clauses),
    Lets = [
        {P, V}
        || {P, V} <- PosList,
           element(1, V) == 'where',
           shiftable_expression(V, Det),
           P > 1
    ],
    F = fun({P, Let}, {Ch, All}) ->
        {Ch1, All1} = do_lift_where({P, Let}, All, G),
        {Ch1 orelse Ch, All1}
    end,
    {Changed, NewPosList} = lists:foldl(F, {false, PosList}, Lets),
    {Changed, FL#xqFlwor{loop = from_pos_list(NewPosList)}}.

%% STEP 2.7
%% 'where' clauses directly following 'for' clauses become predicates
%% returns {Changed :: boolean(), FLWOR :: #xqFlwor{}}
-spec where_clause_as_predicate(xqFlwor(), digraph:graph()) ->
    {Changed :: boolean(), Result :: xqFlwor()}.
where_clause_as_predicate(
    #xqFlwor{
        id = _Id,
        loop = Clauses,
        return = _Return
    } = FL,
    G
) ->
    NewClauses = merge_for_where(Clauses, G),
    flwor_changed(FL, Clauses, NewClauses).

merge_for_where(
    [
        {for,
            #xqVar{
                name = FName,
                empty = false,
                expr = Expr,
                position = undefined
            } = FVar,
            AType} = For,
        {'where', WId, WExpr} = Where
        | T
    ],
    G
) ->
    WName = vertex_name(Where),
    FVName = vertex_name(For),
    case relies_on_for_no_pos(Where, For, G) of
        true ->
            % relies on for variable, so replace with 'context-item'
            %?dbg("Lifting where into for as predicate",WExpr),
            FVarRef = #xqVarRef{name = FName, anno = FVar#xqVar.anno},
            %?dbg("removing where clause",WName),
            case catch replace_var_with_context_item(FVarRef, WExpr) of
                % caused by predicates and other axis steps
                {error, _E} ->
                    %?dbg("ERROR removing where clause", E),
                    [For, Where | merge_for_where(T, G)];
                WExpr2 ->
                    digraph:add_edge(G, WName, FVName),
                    ?dbg("removed where clause", {FVarRef, WExpr2}),
                    [boolean_for(FVar, WId, Expr, WExpr2, AType) | merge_for_where(T, G)]
            end;
        false ->
            ?dbg("Lifting where into for as predicate", WExpr),
            ?dbg("removing where clause", WName),
            digraph:add_edge(G, WName, FVName),
            [boolean_for(FVar, WId, Expr, WExpr, AType) | merge_for_where(T, G)]
    end;
merge_for_where([H | T], G) ->
    [H | merge_for_where(T, G)];
merge_for_where([], _) ->
    [].

boolean_for(FVar, WId, Expr, WExpr, AType) ->
    {for, FVar#xqVar{expr = {postfix, WId, Expr, [{predicate, ?BOOL_CALL(WExpr)}]}},
        maybe_zero_type(AType)}.

replace_var_with_context_item(_, predicate) ->
    % an internal predicate cannot use the outside context item
    throw({error, predicate});
replace_var_with_context_item(_, #xqAxisStep{}) ->
    % an internal predicate cannot use the outside context item
    throw({error, axisStep});
replace_var_with_context_item(#xqVarRef{name = H} = FVarRef, [#xqVarRef{name = H} | T]) ->
    ['context-item' | replace_var_with_context_item(FVarRef, T)];
replace_var_with_context_item(FVarRef, [H | T]) when is_list(H) ->
    replace_var_with_context_item(FVarRef, H) ++ replace_var_with_context_item(FVarRef, T);
replace_var_with_context_item(FVarRef, [H | T]) ->
    [replace_var_with_context_item(FVarRef, H) | replace_var_with_context_item(FVarRef, T)];
replace_var_with_context_item(#xqVarRef{name = H}, #xqVarRef{name = H}) ->
    'context-item';
replace_var_with_context_item(FVarRef, T) when is_tuple(T) ->
    List = tuple_to_list(T),
    New = [replace_var_with_context_item(FVarRef, L) || L <- List],
    list_to_tuple(New);
replace_var_with_context_item(_, WExpr) ->
    WExpr.

%% STEP 2.8
%% Splits comparison operators in a `where` into two `let` expressions, one
%% for each side. These `let` expressions can then be possibly lifted
%% so they are only executed once and not for every iteration.
%% returns {Changed :: boolean(), FLWOR :: #xqFlwor{}}
-spec maybe_split_comparisons_in_where_clause(xqFlwor(), digraph:graph()) ->
    {Changed :: boolean(), Result :: xqFlwor()}.
maybe_split_comparisons_in_where_clause(
    #xqFlwor{
        id = _Id,
        loop = Clauses,
        return = _Return
    } = FL,
    G
) ->
    NewClauses = split_where_comparisons(Clauses, G),
    flwor_changed(FL, Clauses, NewClauses).

%xqComparisonExpr
split_where_comparisons(
    [
        {'where', WId,
            #xqComparisonExpr{
                id = CId,
                lhs = Lhs,
                rhs = Rhs,
                anno = Line
            } = WExpr} = Where
        | T
    ],
    G
) ->
    LNm = #qname{
        namespace = <<>>,
        prefix = <<>>,
        local_name = <<"~lhs_", (integer_to_binary(CId))/binary>>
    },
    RNm = #qname{
        namespace = <<>>,
        prefix = <<>>,
        local_name = <<"~rhs_", (integer_to_binary(CId))/binary>>
    },

    Lhs1 =
        case Lhs of
            {path_expr, LI, _} ->
                erlang:put({'$_where', LI}, Rhs),
                % put here for static phase type check
                {atomize, Lhs};
            _ ->
                Lhs
        end,
    Rhs1 =
        case Rhs of
            {path_expr, RI, _} ->
                erlang:put({'$_where', RI}, Lhs),
                % put here for static phase type check
                {atomize, Rhs};
            _ ->
                Rhs
        end,
    LLetVar = #xqVar{
        name = LNm,
        type = undefined,
        id = CId + 20000,
        expr = Lhs1
    },
    RLetVar = #xqVar{
        name = RNm,
        type = undefined,
        id = CId + 30000,
        expr = Rhs1
    },
    WExpr1 = WExpr#xqComparisonExpr{
        lhs = #xqVarRef{name = LNm, anno = Line},
        rhs = #xqVarRef{name = RNm, anno = Line}
    },
    WExpr2 = WExpr#xqComparisonExpr{
        lhs = Lhs,
        rhs = #xqVarRef{name = RNm, anno = Line}
    },
    WExpr3 = WExpr#xqComparisonExpr{
        lhs = #xqVarRef{name = LNm, anno = Line},
        rhs = Rhs
    },
    LLet = {'let', LLetVar, #xqSeqType{}},
    RLet = {'let', RLetVar, #xqSeqType{}},
    Where1 = {'where', WId, WExpr1},
    Where2 = {'where', WId, WExpr2},
    Where3 = {'where', WId, WExpr3},
    LVx = vertex_name(LLet),
    RVx = vertex_name(RLet),

    case {Lhs, Rhs} of
        {#xqVarRef{}, #xqVarRef{}} ->
            [Where | split_where_comparisons(T, G)];
        {#xqVarRef{}, _} ->
            digraph:add_vertex(G, RVx),
            WName = {CId, comp_right},
            replace_variable_dependancies(G, WName, RVx),
            digraph:add_edge(G, RVx, WName),
            ?dbg("Splitting where comparison", RLet),
            [RLet, Where2] ++ split_where_comparisons(T, G);
        {_, #xqVarRef{}} ->
            digraph:add_vertex(G, LVx),
            WName = {CId, comp_left},
            replace_variable_dependancies(G, WName, LVx),
            digraph:add_edge(G, LVx, WName),
            ?dbg("Splitting where comparison", LLet),
            [LLet, Where3] ++ split_where_comparisons(T, G);
        _ ->
            digraph:add_vertex(G, LVx),
            digraph:add_vertex(G, RVx),
            WNameL = {CId, comp_left},
            WNameR = {CId, comp_right},
            replace_variable_dependancies(G, WNameL, LVx),
            replace_variable_dependancies(G, WNameR, RVx),
            digraph:add_edge(G, LVx, WNameL),
            digraph:add_edge(G, RVx, WNameR),
            ?dbg("Splitting where comparisons", {LLet, RLet}),
            [LLet, RLet, Where1] ++ split_where_comparisons(T, G)
    end;
split_where_comparisons([H | T], G) ->
    [H | split_where_comparisons(T, G)];
split_where_comparisons([], _) ->
    [].

%% STEP 3
%% replace empty FLWOR with its return
%% returns FLWOR :: #xqFlwor{} | any()
-spec strip_empty_flwor(xqFlwor()) -> xqFlwor() | any().
strip_empty_flwor(#xqFlwor{loop = [], return = Return}) ->
    Return;
strip_empty_flwor(#xqFlwor{} = FL) ->
    FL.

%% STEP 4
%% if last clause is 'for' loop or 'let' and 'return' is simply that variable
%% replace return with 'for'/'let' expression
%% returns {Changed :: boolean(), FLWOR :: #xqFlwor{}}
-spec replace_trailing_for_in_return(xqFlwor(), digraph:graph(), fun()) ->
    {Changed :: boolean(), Result :: xqFlwor()}.
replace_trailing_for_in_return(
    #xqFlwor{
        id = _Id,
        loop = Clauses,
        return = Return
    } = FL,
    G,
    Det
) when Clauses =/= [] ->
    case lists:last(Clauses) of
        {for, #xqVar{name = N, expr = E, type = Ty}, _} = F ->
            case Return of
                #xqVarRef{name = N0} when N0 == N ->
                    VN = vertex_name(F),
                    true = remove_dependancies(G, VN),
                    NewClauses = lists:droplast(Clauses),
                    ?dbg("Flatten last for", N),
                    {true, FL#xqFlwor{
                        loop = NewClauses,
                        return = {do_ensure, E, maybe_many_type(Ty)}
                    }};
                _ ->
                    {false, FL}
            end;
        {'let', #xqVar{name = N, expr = E, type = Ty}, _} = F ->
            case shiftable_expression(F, Det) of
                true when is_record(Return, xqVarRef) andalso Return#xqVarRef.name == N ->
                    VN = vertex_name(F),
                    true = remove_dependancies(G, VN),
                    %ok = swap_vertex(VN, 0, G),
                    NewClauses = lists:droplast(Clauses),
                    ?dbg("Flatten last let", N),
                    {true, FL#xqFlwor{
                        loop = NewClauses,
                        return = {do_ensure, E, Ty}
                    }};
                _ ->
                    {false, FL}
            end;
        _ ->
            {false, FL}
    end;
replace_trailing_for_in_return(FL, _, _) ->
    {false, FL}.

%swap_vertex(Old,New,G) ->
%   OldVerts = digraph_utils:reaching([Old], G),
%   ?dbg("OldVerts",OldVerts),
%   ok.

%% STEP 5
fold_for_count(F, G) ->
    case flatten_leading_for_flwor(F) of
        {true, F1} ->
            {true, F1};
        _ ->
            case maybe_lift_count_clause_to_position(F, G) of
                {true, F2} -> {true, F2};
                _ -> maybe_lift_count_clause_to_let(F, G)
            end
    end.

%% STEP 5.1
%% if first clause is for loop and expression is flwor
%% move flwor above for and set return as expression
%% positional variable (if any) becomes count clause
%% returns {Changed :: boolean(), FLWOR :: #xqFlwor{}}
-spec flatten_leading_for_flwor(xqFlwor()) -> {Changed :: boolean(), Result :: xqFlwor()}.
flatten_leading_for_flwor(#xqFlwor{loop = Clauses} = FL) ->
    F = fun
        (
            {for,
                #xqVar{
                    name = N,
                    position = PositionVar,
                    expr = #xqFlwor{
                        loop = Loop0,
                        return = Ret
                    }
                } = V,
                AType},
            _
        ) ->
            ?dbg("Flattening FLWOR", N),
            Rst =
                case PositionVar of
                    undefined ->
                        [{for, V#xqVar{expr = Ret}, AType}];
                    _ ->
                        [
                            {for, V#xqVar{expr = Ret, position = undefined}, AType},
                            {'count', PositionVar}
                        ]
                end,
            Loop = Loop0 ++ Rst,
            {Loop, true};
        (O, Changed0) ->
            {O, Changed0}
    end,
    case lists:mapfoldl(F, false, Clauses) of
        {C1, true} ->
            {true, FL#xqFlwor{loop = lists:flatten(C1)}};
        _ ->
            {false, FL}
    end.

%% STEP 5.2
%% if first clause is for loop without position
%% and second is count clause
%% move count clause to position
%% returns {Changed :: boolean(), FLWOR :: #xqFlwor{}}
-spec maybe_lift_count_clause_to_position(xqFlwor(), digraph:graph()) ->
    {Changed :: boolean(), Result :: xqFlwor()}.
maybe_lift_count_clause_to_position(
    #xqFlwor{
        loop = [
            {for, #xqVar{name = N, position = undefined} = F, AType},
            {count, #xqVar{id = CI, name = CN}}
            | T
        ]
    } = FL,
    _G
) ->
    ?dbg("moving count to position", N),
    Loop = [{for, F#xqVar{position = #xqPosVar{id = CI, name = CN}}, AType} | T],
    {true, FL#xqFlwor{loop = Loop}};
maybe_lift_count_clause_to_position(#xqFlwor{} = FL, _) ->
    {false, FL}.

%% STEP 5.3
%% if first clause is for loop with position
%% and second is count clause
%% move count clause to let clause set to position variable
%% returns {Changed :: boolean(), FLWOR :: #xqFlwor{}}
-spec maybe_lift_count_clause_to_let(xqFlwor(), digraph:graph()) ->
    {Changed :: boolean(), Result :: xqFlwor()}.
maybe_lift_count_clause_to_let(
    #xqFlwor{
        loop = [
            {for,
                #xqVar{
                    id = I,
                    name = N,
                    position = #xqPosVar{id = PI, name = PN}
                },
                _} = F,
            {count, #xqVar{id = CI, name = CN} = C}
            | T
        ]
    } = FL,
    G
) ->
    ?dbg("moving count to let", N),
    % add dependency
    V1 = {CI, sim_name(CN)},
    V2 = {PI, sim_name(PN)},
    V3 = {I, sim_name(N)},
    digraph:add_edge(G, V2, V1),
    digraph:add_edge(G, V3, V1),
    Loop = [
        F,
        {'let', C#xqVar{expr = #xqVarRef{name = PN}}, #xqSeqType{type = 'xs:integer', occur = one}}
        | T
    ],
    {true, FL#xqFlwor{loop = Loop}};
maybe_lift_count_clause_to_let(#xqFlwor{} = FL, _) ->
    {false, FL}.

%% STEP 6
%% if return is a simple-flwor lift body into current clauses
%% replace return with sub-return
%% returns {Changed :: boolean(), FLWOR :: #xqFlwor{}}
-spec maybe_lift_simple_return(xqFlwor(), digraph:graph(), fun()) ->
    {Changed :: boolean(), Result :: xqFlwor() | any()}.
maybe_lift_simple_return(
    #xqFlwor{
        loop = Clauses,
        return =
            #xqFlwor{
                loop = Loop0,
                return = Return0
            } = Return
    } = FL,
    G,
    Det
) ->
    case is_simple_flwor(Return) of
        true ->
            %?dbg("simplfying FLWOR",Return0),
            {true,
                optimize(
                    FL#xqFlwor{
                        loop = Clauses ++ Loop0,
                        return = Return0
                    },
                    G,
                    Det
                )};
        false ->
            {false, FL}
    end;
maybe_lift_simple_return(#xqFlwor{} = FL, _, _) ->
    {false, FL}.

%% STEP 7
%% if return is a flwor lift leading lets in body into current clauses
%% returns {Changed :: boolean(), FLWOR :: #xqFlwor{}}
-spec maybe_lift_lets_in_return(xqFlwor() | any(), digraph:graph(), fun()) ->
    {Changed :: boolean(), Result :: xqFlwor() | any()}.
maybe_lift_lets_in_return(
    #xqFlwor{
        loop = Clauses,
        return = #xqFlwor{loop = [{'let', _, _} = L | T]} = F2
    } = FL,
    G,
    Det
) ->
    case [ok || {group_by, _, _} <- T] == [] of
        true ->
            Loop = Clauses ++ [L],
            {true,
                optimize(
                    FL#xqFlwor{
                        loop = Loop,
                        return = F2#xqFlwor{loop = T}
                    },
                    G,
                    Det
                )};
        false ->
            {false, FL}
    end;
maybe_lift_lets_in_return(FL, _, _) ->
    {false, FL}.

%% STEP 8
%% combine consecutive where clauses into and statements
-spec combine_wheres([any()]) -> [any()].
combine_wheres([]) ->
    [];
combine_wheres([{where, I, A}, {where, J, B} | T]) ->
    NewA =
        {where, erlang:min(I, J), #xqLogicalExpr{
            comp = 'and',
            id = I,
            lhs = A,
            rhs = B
        }},
    combine_wheres([NewA | T]);
combine_wheres([H | T]) ->
    [H | combine_wheres(T)].

%% STEP 9
%% should the first clause be 'where', change to logical branch
-spec leading_where_as_if(xqFlwor(), digraph:graph(), fun()) ->
    {'if-then-else', _, _, _} | xqFlwor().
leading_where_as_if(
    #xqFlwor{id = Id, loop = [{where, I, A}], return = Ret},
    _,
    _
) ->
    {'if-then-else', A, {Id, Ret}, {I, 'empty-sequence'}};
leading_where_as_if(
    #xqFlwor{id = Id, loop = [{where, I, A} | Rest]} = F,
    Digraph,
    Det
) ->
    {'if-then-else', A, {Id, optimize(F#xqFlwor{loop = Rest}, Digraph, Det)},
        {I, 'empty-sequence'}};
leading_where_as_if(O, _, _) ->
    O.

sim_name(#xqQName{namespace = N, local_name = L}) -> {N, L}.

vertex_name(#xqWindow{win_variable = #xqVar{id = I, name = N}}) ->
    {I, sim_name(N)};
vertex_name({_, #xqPosVar{id = I, name = N}}) ->
    {I, sim_name(N)};
vertex_name({T, #xqVar{id = I, name = N}, _}) when T == 'for'; T == 'let' ->
    {I, sim_name(N)};
vertex_name({T, #xqVar{id = I, name = N}}) when T == 'count' ->
    {I, sim_name(N)};
vertex_name(#xqComparisonExpr{id = Id}) ->
    {Id, xqComparisonExpr};
vertex_name({Type, I, _}) when is_atom(Type) ->
    {I, Type}.

%% can this clause be moved? based on it's expression
-spec shiftable_expression(any(), any()) -> boolean().
shiftable_expression({'let', #xqVar{expr = Expr}, _}, Det) ->
    shiftable_expression_1(Expr, Det);
shiftable_expression({where, _, Expr}, Det) ->
    shiftable_expression_1(Expr, Det);
shiftable_expression(_, _) ->
    false.

shiftable_expression_1(Expr, Det) ->
    F = fun
        O([]) ->
            true;
        O(#xqFunctionCall{name = #xqQName{}} = F) ->
            O(Det(F));
        O(#xqAnnotation{
            name = #xqQName{
                namespace = <<"http://xqerl.org/xquery">>,
                local_name = <<"non-deterministic">>
            }
        }) ->
            false;
        O(#xqAnnotation{
            name = #xqQName{
                namespace = <<"http://www.w3.org/2012/xquery">>,
                local_name = <<"updating">>
            }
        }) ->
            false;
        O(T) when is_tuple(T) ->
            O(tuple_to_list(T));
        O(L) when is_list(L) ->
            lists:foldl(fun(X, A) -> A andalso O(X) end, true, L);
        O(direct_cons) ->
            false;
        O(comp_cons) ->
            false;
        O(_) ->
            true
    end,
    F(Expr).

win_vertex_names(#xqWindow{
    win_variable = W1,
    s = S1,
    spos = S2,
    sprev = S3,
    snext = S4,
    e = E1,
    epos = E2,
    eprev = E3,
    enext = E4
}) ->
    F = fun
        (undefined) -> [];
        (#xqVar{type = Typ} = V) -> [vertex_name({for, V, Typ})];
        (#xqPosVar{} = V) -> [vertex_name({for, V})]
    end,
    lists:flatmap(F, [W1, S1, S2, S3, S4, E1, E2, E3, E4]).

% relies on nothing
relies_on(This, [], G) ->
    Cn = vertex_name(This),
    Rg = [
        R
        || R <- digraph_utils:reaching([Cn], G),
           R =/= Cn
    ],
    Rg == [];
% replied upon by something
relies_on([], That, G) ->
    Vn =
        case That of
            {'for', #xqVar{position = #xqPosVar{} = P}, _} ->
                [vertex_name(That), vertex_name({for, P})];
            #xqWindow{} = W ->
                win_vertex_names(W);
            _ ->
                [vertex_name(That)]
        end,
    Upd = updating(Vn, G),
    %?dbg("Upd",Upd),
    Rg = [
        R
        || R <- digraph_utils:reachable(Vn, G),
           %ok == ?dbg("R",{R,Vn,digraph_utils:reaching(Vn, G)}),
           is_tuple(R),
           not lists:member(R, Vn) orelse Upd
    ],
    %?dbg("Rg", Rg),
    Rg;
% this relies on that
relies_on(This, That, G) ->
    Cn = vertex_name(This),
    Vn =
        case That of
            {'for', #xqVar{position = #xqPosVar{} = P}, _} ->
                [vertex_name(That), vertex_name({for, P})];
            #xqWindow{} = W ->
                win_vertex_names(W);
            _ ->
                [vertex_name(That)]
        end,
    Rg = [
        R
        || R <- digraph_utils:reaching([Cn], G),
           lists:member(R, Vn)
    ],
    Rg =/= [].

% this relies on that
relies_on_for_no_pos(This, {'for', #xqVar{}, _} = That, G) ->
    Cn = vertex_name(This),
    Vn = [vertex_name(That)],
    Rg = [
        R
        || R <- digraph_utils:reaching([Cn], G),
           lists:member(R, Vn)
    ],
    Rg =/= [].

updating(Vs, G) ->
    [ok || {_, update} <- digraph_utils:reaching(Vs, G)] =/= [].

from_pos_list(PList) ->
    [V || {_, V} <- PList].

to_pos_list(List) ->
    F = fun(V, I) ->
        {{I, V}, I + 1}
    end,
    {L1, _} = lists:mapfoldl(F, 1, List),
    L1.

remove_from(Pos, [{I, _} | T]) when Pos == I ->
    pull_forw(T);
remove_from(Pos, [H | T]) ->
    [H | remove_from(Pos, T)].

insert_at(Val, Pos, [{I, _} = H | T]) when Pos > I ->
    [H | insert_at(Val, Pos, T)];
insert_at(Val, Pos, [{I, _} = H | T]) when Pos == I ->
    [{I, Val} | push_back([H | T])].

push_back([]) -> [];
push_back([{I, V} | T]) -> [{I + 1, V} | push_back(T)].

pull_forw([]) -> [];
pull_forw([{I, V} | T]) -> [{I - 1, V} | pull_forw(T)].

-spec is_simple_flwor(any()) -> boolean().
is_simple_flwor(#xqFlwor{loop = C}) ->
    Pred = fun
        ({'for', _, _}) ->
            true;
        ({'let', _, _}) ->
            true;
        ({'where', _}) ->
            true;
        (_) ->
            false
    end,
    lists:all(Pred, C).

maybe_many_type(Type = #xqSeqType{occur = one}) ->
    Type#xqSeqType{occur = one_or_many};
maybe_many_type(Type) ->
    Type.

maybe_zero_type(Type = #xqSeqType{occur = one}) ->
    Type#xqSeqType{occur = zero_or_one};
maybe_zero_type(Type = #xqSeqType{occur = one_or_many}) ->
    Type#xqSeqType{occur = zero_or_many};
maybe_zero_type(Type) ->
    Type.

% "slides" a variable out and removes it by connecting all of
% the edges it had to up/down vertices
remove_dependancies(G, Vertex) ->
    Ins = digraph:in_neighbours(G, Vertex),
    Out = digraph:out_neighbours(G, Vertex),
    [
        digraph:add_edge(G, I, O)
        || I <- Ins,
           O <- Out,
           I =/= O
    ],
    digraph:del_vertex(G, Vertex),
    %?dbg("Vertex",Vertex),
    %?dbg("Ins   ",Ins),
    %?dbg("Out   ",Out),
    true.

replace_variable_dependancies(G, OldVertex, NewVertex) ->
    Ins = digraph:in_neighbours(G, OldVertex),
    Out = digraph:out_neighbours(G, OldVertex),
    _ = [
        begin
            digraph:add_edge(G, I, NewVertex),
            delete_edges(G, I, OldVertex)
        end
        || I <- Ins
    ],
    _ = [
        begin
            digraph:add_edge(G, NewVertex, O),
            delete_edges(G, OldVertex, O)
        end
        || O <- Out
    ],
    %   ?dbg("Vertex",OldVertex),
    %   ?dbg("Ins   ",Ins),
    %   ?dbg("Out   ",Out),

    %   ?dbg("nVertex",NewVertex),
    %   ?dbg("nIns   ",digraph:in_neighbours(G, NewVertex)),
    %   ?dbg("nOut   ",digraph:out_neighbours(G, NewVertex)),
    true.

delete_edges(G, V1, V2) ->
    [
        digraph:del_edge(G, E)
        || Ed <- digraph:edges(G, V1),
           {_, _, V3, _} = E <- [digraph:edge(G, Ed)],
           V3 == V2
    ].

%% expressions_equal(E1, E2) ->
%%    E1 == E2.

print_digraph(_G) -> ok.

%%   [?dbg("D",E) ||
%%    Edge <- digraph:edges(G),
%%    E <- [digraph:edge(G, Edge)],
%%    element(1, element(3,E)) =/= 0
%%   ].

flwor_changed(FL, Clauses, Clauses) -> {false, FL};
flwor_changed(FL, _, NewClauses) -> {true, FL#xqFlwor{loop = NewClauses}}.
