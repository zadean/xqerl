% Copyright (c) 2017-2020 Zachary N. Dean  All Rights Reserved.
% SPDX-FileCopyrightText: 2022 Zachary Dean contact@zadean.com
%
% SPDX-License-Identifier: Apache-2.0

%% @doc Functions that handle XQuery sequences.

-module(xqerl_seq3).

-compile({inline_size, 100}).
-compile(inline_list_funcs).

% functions *not* called directly from XQuery

% used in array and fn
-export([
    foldl/4,
    % used in types
    get_seq_type/1
]).

% functions called directly from XQuery and elsewhere
-export([
    size/1,
    flatten/1,
    expand/1,
    % can fail
    range/2,
    to_list/1,
    % can fail
    singleton_value/1
]).

% functions *only* called directly from XQuery, some can fail
-export([
    ensure_one/1,
    ensure_one_or_more/1,
    ensure_zero_or_one/1,
    ensure_zero_or_more/1,
    % can fail
    map/3,
    union/1, union/2,
    intersect/2,
    except/2,
    path_map/2,
    sequence/1,
    % parallel, not reporting error line
    pmap/3,
    % parallel, not reporting error line
    pmap/2,
    formap/2,
    % parallel, not reporting error line
    pformap/2,
    forposmap/3,
    position_filter/3,
    last/1,
    filter/3,
    do_call/3,
    val_map/2
]).

-include("xqerl.hrl").

% block array:array(_) warnings
-dialyzer(no_opaque).

-define(IS_ARRAY(A), is_tuple(A), element(1, A) =:= array).

-define(TIMEOUT, 90000).

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Functions called from XQuery modules directly
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

ensure_one([A]) -> A;
ensure_one([]) -> {error, 'XPTY0004'};
ensure_one([_ | _]) -> {error, 'XPTY0004'};
ensure_one(A) -> A.

ensure_one_or_more([]) -> {error, 'XPTY0004'};
ensure_one_or_more([A]) -> A;
ensure_one_or_more(A) -> A.

ensure_zero_or_one([]) -> [];
ensure_zero_or_one([A]) -> A;
ensure_zero_or_one([_ | _]) -> {error, 'XPTY0004'};
ensure_zero_or_one(A) -> A.

ensure_zero_or_more(A) -> A.

size(#range{cnt = Size}) ->
    Size;
size(List) when is_list(List) ->
    size_1(List, 0);
size(_) ->
    1.

map(Ctx, Fun, Seq) when not is_list(Seq) ->
    map(Ctx, Fun, [Seq]);
map(_Ctx, Fun, []) when is_function(Fun) ->
    [];
map(Ctx, Fun, Seq) when is_function(Fun, 4) ->
    Size = fun() -> ?MODULE:size(Seq) end,
    map1(Ctx, Fun, Seq, 1, Size);
map(Ctx, Fun, Seq) ->
    case singleton_value(Fun) of
        Fun1 when is_function(Fun1) ->
            map(Ctx, Fun1, Seq);
        _ ->
            ?err('XPTY0004')
    end.

flatten([[] | T]) ->
    flatten(T);
flatten([[H] | T]) ->
    flatten([H | T]);
flatten([[H1, H2] | T]) ->
    flatten([H1, H2 | T]);
flatten([[H1, H2, H3] | T]) ->
    flatten([H1, H2, H3 | T]);
flatten([H | T]) when is_list(H) ->
    flatten(H) ++ flatten(T);
flatten([H1, H2, H3, H4 | T]) when
    not is_list(H1), not is_list(H2), not is_list(H3), not is_list(H4)
->
    [H1, H2, H3, H4 | flatten(T)];
flatten([H1, H2, H3 | T]) when not is_list(H1), not is_list(H2), not is_list(H3) ->
    [H1, H2, H3 | flatten(T)];
flatten([H1, H2 | T]) when not is_list(H1), not is_list(H2) ->
    [H1, H2 | flatten(T)];
flatten([H | T]) ->
    [H | flatten(T)];
flatten([]) ->
    [];
flatten(E) ->
    [E].

expand(#range{} = R) ->
    expand1(R);
expand([#range{} = R]) ->
    expand1(R);
expand(L) when is_list(L) ->
    case lists:any(fun has_range/1, L) of
        true -> expand1(L);
        false -> L
    end;
expand(L) ->
    [L].

has_range(#range{}) -> true;
has_range(L) -> is_list(L).

range(_, []) ->
    [];
range([], _) ->
    [];
range(A, A) when is_integer(A) ->
    A;
range(#xqAtomicValue{value = A}, #xqAtomicValue{value = A}) when is_integer(A) ->
    A;
range(#xqAtomicValue{value = From}, #xqAtomicValue{value = To}) when
    is_integer(From), is_integer(To)
->
    range1(From, To);
range(#xqAtomicValue{value = From}, To) when is_integer(From), is_integer(To) ->
    range1(From, To);
range(From, #xqAtomicValue{value = To}) when is_integer(From), is_integer(To) ->
    range1(From, To);
range(From, To) when is_integer(From), is_integer(To) ->
    range1(From, To);
range(From, To) ->
    case
        (xqerl_types:type(From) == node orelse
            xqerl_types:subtype_of(xqerl_types:type(From), 'xs:integer')) andalso
            (xqerl_types:type(To) == node orelse
                xqerl_types:subtype_of(xqerl_types:type(To), 'xs:integer'))
    of
        true ->
            To1 = xqerl_types:value(xqerl_types:cast_as(To, 'xs:integer')),
            From1 = xqerl_types:value(xqerl_types:cast_as(From, 'xs:integer')),
            R = range1(From1, To1),
            case ?MODULE:size(R) of
                0 -> [];
                _ -> R
            end;
        _ ->
            ?err('XPTY0004')
    end.

to_list([]) ->
    [];
to_list(#range{min = Min, max = Max}) ->
    range_2(Min, Max);
to_list(A) when ?IS_ARRAY(A) ->
    xqerl_mod_array:flatten([], A);
to_list([#range{} = H | T]) ->
    to_list(H) ++ to_list(T);
to_list([A | T]) when ?IS_ARRAY(A) ->
    to_list(array:to_list(A)) ++ to_list(T);
to_list([H | T]) when is_list(H) ->
    to_list(H) ++ to_list(T);
to_list([H | T]) ->
    [H | to_list(T)];
to_list(S) when not is_list(S) ->
    [S].

union([S]) -> [S];
union([S1, S2]) -> union(S1, S2);
union([S1, S2 | T]) -> union(union(S1, S2), T).

union(Seq1, []) when is_list(Seq1) ->
    xqldb_xpath:document_order(Seq1);
union([], Seq2) when is_list(Seq2) ->
    xqldb_xpath:document_order(Seq2);
union(Seq1, Seq2) when is_list(Seq1), is_list(Seq2) ->
    union_1(
        xqldb_xpath:document_order(Seq1),
        xqldb_xpath:document_order(Seq2)
    );
union(Seq1, Seq2) when is_list(Seq1) ->
    union_1(xqldb_xpath:document_order(Seq1), [Seq2]);
union(Seq1, Seq2) when is_list(Seq2) ->
    union_1([Seq1], xqldb_xpath:document_order(Seq2));
union(Seq1, Seq2) ->
    union_1([Seq1], [Seq2]).

intersect(_, []) ->
    [];
intersect([], _) ->
    [];
intersect(Seq1, Seq2) when is_list(Seq1), is_list(Seq2) ->
    intersect_1(
        xqldb_xpath:document_order(Seq1),
        xqldb_xpath:document_order(Seq2)
    );
intersect(Seq1, Seq2) when is_list(Seq1) ->
    intersect_1(xqldb_xpath:document_order(Seq1), [Seq2]);
intersect(Seq1, Seq2) when is_list(Seq2) ->
    intersect_1([Seq1], xqldb_xpath:document_order(Seq2));
intersect(Seq1, Seq2) ->
    intersect_1([Seq1], [Seq2]).

except([], _) ->
    [];
except(Seq1, []) ->
    Seq1;
except(Seq1, Seq2) when is_list(Seq1), is_list(Seq2) ->
    except_1(
        xqldb_xpath:document_order(Seq1),
        xqldb_xpath:document_order(Seq2)
    );
except(Seq1, Seq2) when is_list(Seq1) ->
    except_1(xqldb_xpath:document_order(Seq1), [Seq2]);
except(Seq1, Seq2) when is_list(Seq2) ->
    except_1([Seq1], xqldb_xpath:document_order(Seq2));
except(Seq1, Seq2) ->
    except([Seq1], [Seq2]).

singleton_value([]) -> [];
singleton_value([V]) -> V;
singleton_value([_ | _]) -> ?err('XPTY0004');
singleton_value(#xqFunction{body = V}) -> V;
singleton_value(V) -> V.

path_map(Fun, []) when is_function(Fun, 3) ->
    [];
path_map(Fun, List) when is_function(Fun, 3), is_list(List) ->
    Size = fun() -> length(List) end,
    try do_path_map(Fun, List, 1, Size) of
        Mapped ->
            case Mapped of
                [#{nk := _} | _] ->
                    U = xqldb_xpath:document_order(Mapped),
                    check(U, node);
                _ ->
                    check(Mapped, nonnode)
            end
    catch
        _:function_clause:Stack ->
            ?dbg("Stack", Stack),
            ?err('XPTY0020')
    end;
path_map(Fun, List) when is_function(Fun, 3) ->
    path_map(Fun, [List]);
path_map(#xqFunction{body = Fun}, List) ->
    path_map(Fun, List).

sequence(L) when is_list(L) -> L;
sequence(L) -> [L].

formap({_, _, _} = FCT, Seq) ->
    formap_1(FCT, Seq).

formap_1(_, []) ->
    [];
formap_1({F, Ctx, Tuple} = FCT, [#range{min = Min, max = Max} = R | T]) when
    Min =< Max, is_function(F, 3)
->
    [F(Ctx, Tuple, Min) | formap_1(FCT, [R#range{min = Min + 1} | T])];
formap_1(F, [#range{} | T]) ->
    formap_1(F, T);
formap_1({F, Ctx, Tuple} = FCT, [H | T]) when is_function(F, 3) ->
    [F(Ctx, Tuple, H) | formap_1(FCT, T)];
formap_1(F, L) when not is_list(L) ->
    formap_1(F, [L]).

forposmap({_, _, _} = FCT, Seq, P) ->
    forposmap_1(FCT, Seq, P).

forposmap_1(_, [], _) ->
    [];
forposmap_1({F, Ctx, Tuple} = FCT, [#range{min = Min, max = Max} = R | T], P) when
    Min =< Max, is_function(F, 4)
->
    [F(Ctx, Tuple, Min, P) | forposmap_1(FCT, [R#range{min = Min + 1} | T], P + 1)];
forposmap_1(F, [#range{} | T], P) ->
    forposmap_1(F, T, P);
forposmap_1({F, Ctx, Tuple} = FCT, [H | T], P) when is_function(F, 4) ->
    [F(Ctx, Tuple, H, P) | forposmap_1(FCT, T, P + 1)];
forposmap_1(F, L, P) when not is_list(L) ->
    forposmap_1(F, [L], P).

pformap(Fun, List) ->
    pformap(self(), List, Fun, 8, 8, [], []),
    receive
        {done, Acc2} ->
            lists:reverse(Acc2)
    after ?TIMEOUT -> error
    end.

pmap(FCT, List) ->
    pmap(FCT, List, 32).

pmap(FCT, List, Limit) ->
    pmap(self(), List, FCT, Limit, Limit, [], []),
    receive
        {done, Acc2} ->
            lists:reverse(Acc2)
    after ?TIMEOUT -> error
    end.

position_filter(_Ctx, I, Seq) when is_list(Seq), is_integer(I) ->
    nth(I, Seq);
position_filter(_Ctx, #xqAtomicValue{value = I}, Seq) when is_list(Seq), is_integer(I) ->
    nth(I, Seq);
position_filter(Ctx, Fun, Seq0) when is_list(Seq0), is_function(Fun) ->
    Seq = expand(Seq0),
    try
        % fails when context item is needed
        Pos = Fun(Ctx),
        UniquePos = get_unique_values(lists:usort(Pos)),
        position_filter1(UniquePos, 1, Seq)
    catch
        _:_ ->
            Size = fun() ->
                ?MODULE:size(Seq0)
            end,
            Ctx0 = xqerl_context:set_context_size(Ctx, Size),
            {Positions, _} =
                lists:mapfoldl(
                    fun(Item, Pos) ->
                        Ctx1 = xqerl_context:set_context_item(Ctx0, Item, Pos),
                        Resp = Fun(Ctx1),
                        {Resp, Pos + 1}
                    end,
                    1,
                    Seq
                ),
            UniquePosC = get_unique_values(lists:usort(Positions)),
            position_filter1(UniquePosC, 1, Seq)
    end;
position_filter(_Ctx, Positions, Seq0) when is_list(Seq0), is_list(Positions) ->
    Seq = expand(Seq0),
    UniquePos = get_unique_values(lists:usort(Positions)),
    position_filter1(UniquePos, 1, Seq);
position_filter(_Ctx, Positions, Seq) when is_list(Seq) ->
    case get_unique_values(Positions) of
        [] -> [];
        [N] -> nth(N, Seq)
    end;
position_filter(Ctx, Positions, Seq) ->
    position_filter(Ctx, Positions, [Seq]).

last([]) ->
    [];
last([#range{max = Max}]) ->
    Max;
last(#range{max = Max}) ->
    Max;
last(List) when is_list(List) ->
    case lists:last(List) of
        #range{max = Max} -> Max;
        L -> L
    end;
last(S) ->
    S.

filter(Ctx, Fun, [#range{} = Range]) ->
    filter(Ctx, Fun, to_list(Range));
filter(Ctx, Fun, #range{} = Range) ->
    filter(Ctx, Fun, to_list(Range));
filter(Ctx, #xqAtomicValue{} = Pos, Seq) ->
    position_filter(Ctx, [Pos], Seq);
filter(Ctx, Pos, Seq) when is_integer(Pos) ->
    position_filter(Ctx, [Pos], Seq);
filter(Ctx, [Pos], Seq) when is_integer(Pos) ->
    position_filter(Ctx, [Pos], Seq);
filter(Ctx, [#xqAtomicValue{}] = Pos, Seq) ->
    position_filter(Ctx, Pos, Seq);
filter(Ctx, Fun, Seq) when not is_list(Seq) ->
    filter(Ctx, Fun, [Seq]);
filter(Ctx, Fun, Seq2) when is_function(Fun, 4) ->
    Size = fun() ->
        ?MODULE:size(Seq2)
    end,
    try
        filter1(Ctx, Fun, Seq2, 1, Size)
    catch
        _:#xqError{name = #xqAtomicValue{value = #qname{local_name = <<"XPTY0019">>}}} ->
            % context was not a node when one was expected
            ?err('XPTY0020');
        _:function_clause:StackTrace ->
            ?dbg("H", StackTrace),
            % context was not a node when one was expected
            ?err('XPTY0020');
        _:#xqError{} = E:_StackTrace ->
            ?err(E)
    end.

do_call(Ctx, MapArrayOrFun, Args) ->
    do_call_1(Ctx, MapArrayOrFun, Args).

do_call_1(Ctx, MapArrayOrFun, Args) when is_function(MapArrayOrFun) ->
    build_call(Ctx, MapArrayOrFun, Args);
do_call_1(
    Ctx,
    #xqFunction{
        arity = A,
        body = F
    },
    Args
) when A == erlang:size(Args) ->
    case F == fun xqerl_mod_fn:concat/2 of
        true ->
            build_call(Ctx, F, {tuple_to_list(Args)});
        false ->
            build_call(Ctx, F, Args)
    end;
do_call_1(_, #xqFunction{}, _) ->
    ?err('XPTY0004');
do_call_1(Ctx, MapArray, {Arg}) ->
    xqerl_operators:lookup(Ctx, MapArray, Arg);
do_call_1(_, M, A) ->
    ?dbg("do_call", {M, A}),
    ?err('XPTY0004').

val_map(Fun, []) ->
    Fun([]);
val_map(Fun, H) when not is_list(H) ->
    val_map(Fun, [H]);
val_map(Fun, [[H] | T]) ->
    val_map(Fun, [H | T]);
val_map(Fun, [#range{} = H | T]) ->
    val_map(Fun, expand(H) ++ T);
val_map(Fun, [H | T]) ->
    try Fun(H) of
        Val when is_list(Val) andalso T == [] ->
            Val;
        Val when is_list(Val) ->
            Val ++ val_map(Fun, T);
        Val when T == [] ->
            [Val];
        Val ->
            [Val | val_map(Fun, T)]
    catch
        _:#xqError{} = E:_Stack ->
            %?dbg("H  ",H),
            %?dbg("Err",Stack),
            ?err(E);
        % This happens when a variable is not yet
        _:{badkey, Err} ->
            % initialized, so there must have been a cycle
            % missed at static time.
            ?dbg("Err", Err),
            ?err('XQDY0054');
        _:Err:Stack ->
            ?dbg("Err", Err),
            ?dbg("Err", Stack),
            ?err('XPTY0004')
    end.

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Helpers for functions called directly from XQuery modules
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

size_1([#range{cnt = C} | T], Sum) ->
    size_1(T, Sum + C);
size_1([H | T], Sum) when is_list(H) ->
    size_1(T, Sum + size_1(H, 0));
size_1([_ | T], Sum) ->
    size_1(T, Sum + 1);
size_1([], Sum) ->
    Sum.

map1(_Ctx, _Fun, [], _Pos, _Size) ->
    [];
map1(Ctx, Fun, [#range{} = H | T], Pos, Size) ->
    map1(Ctx, Fun, to_list(H) ++ T, Pos, Size);
map1(Ctx, Fun, [H | T], Pos, Size) ->
    try Fun(Ctx, H, Pos, Size) of
        Output when is_list(Output) ->
            Output ++ map1(Ctx, Fun, T, Pos + 1, Size);
        Output ->
            [Output | map1(Ctx, Fun, T, Pos + 1, Size)]
    catch
        _:#xqError{} = E:StackTrace ->
            ?dbg("error", StackTrace),
            ?dbg("FUNINFO", erlang:fun_info(Fun)),
            ?err(E);
        _:E:StackTrace ->
            ?dbg("E", E),
            ?dbg("error", StackTrace),
            ?err('XPTY0004')
    end.

expand1(#range{min = Min, max = Max, cnt = Cnt}) when Cnt < 100 ->
    lists:seq(Min, Max);
expand1(#range{min = Min, max = Max}) ->
    range_2(Min, Max);
expand1([]) ->
    [];
expand1([#range{min = Min, max = Max} | T]) ->
    range_2(Min, Max) ++ expand1(T);
expand1([H | T]) when is_list(H) ->
    expand1(H) ++ expand1(T);
expand1([H | T]) ->
    [H | expand1(T)].

range1(Min, Max) when Min =< Max ->
    case Max - Min + 1 of
        Cnt when Cnt > 100 ->
            #range{min = Min, max = Max, cnt = Cnt};
        _ ->
            lists:seq(Min, Max)
    end;
range1(_Curr, _Max) ->
    [].

range_2(Curr, Max) when Curr =< Max ->
    [Curr | range_2(Curr + 1, Max)];
range_2(_Curr, _Max) ->
    [].

union_1([#{id := Id1} = N1 | Ns1], [#{id := Id2} | _] = S2) when Id1 < Id2 ->
    [N1 | union_1(Ns1, S2)];
union_1([#{id := Id1} | _] = S1, [#{id := Id2} = N2 | Ns2]) when Id1 > Id2 ->
    % switch arguments to maybe catch 1st next
    [N2 | union_1(Ns2, S1)];
% equal Ids
union_1([N1 | Ns1], [_N2 | Ns2]) ->
    [N1 | union_1(Ns1, Ns2)];
union_1([], Ns2) ->
    Ns2;
union_1(Ns1, []) ->
    Ns1.

intersect_1([#{id := Id1} | Ns1], [#{id := Id2} | _] = S2) when Id1 < Id2 ->
    intersect_1(Ns1, S2);
intersect_1([#{id := Id1} | _] = S1, [#{id := Id2} | Ns2]) when Id1 > Id2 ->
    % switch arguments to maybe catch 1st next
    intersect_1(Ns2, S1);
% equal Ids
intersect_1([N1 | Ns1], [_N2 | Ns2]) ->
    [N1 | intersect_1(Ns1, Ns2)];
intersect_1([], _) ->
    [];
intersect_1(_, []) ->
    [].

except_1([#{id := Id1} = N1 | Ns1], [#{id := Id2} | _] = S2) when Id1 < Id2 ->
    [N1 | except_1(Ns1, S2)];
except_1([#{id := Id1} | _] = S1, [#{id := Id2} | Ns2]) when Id1 > Id2 ->
    except_1(S1, Ns2);
% equal ids
except_1([_ | Ns1], [_ | Ns2]) ->
    except_1(Ns1, Ns2);
except_1([], _) ->
    [];
except_1(Ns1, []) ->
    Ns1.

do_path_map(_, [], _, _) ->
    [];
do_path_map(F, [H | T], P, S) ->
    case F(H, P, S) of
        L when is_list(L) ->
            lists:flatten(L) ++ do_path_map(F, T, P + 1, S);
        I ->
            [I | do_path_map(F, T, P + 1, S)]
    end.

check({error, non_node}, node) ->
    ?err('XPTY0018');
check(List, node) ->
    Fun = fun
        (#{nk := _}) -> ok;
        (_) -> ?err('XPTY0018')
    end,
    lists:foreach(Fun, List),
    List;
check(List, nonnode) ->
    Fun = fun
        (#{nk := _}) -> ?err('XPTY0018');
        (_) -> ok
    end,
    lists:foreach(Fun, List),
    List.

pmap_spawn(Self, Fun, Ctx, Tuple, Item) ->
    F = fun() ->
        Self ! {self(), catch Fun(Ctx#{parent => Self}, Tuple, Item)}
    end,
    erlang:spawn_link(F).

pformap(From, [], FCT, Limit, Left, [P | Ps], Acc) when Left < Limit ->
    receive
        {P, {'EXIT', Ex}} ->
            throw(Ex);
        {P, X} ->
            pformap(From, [], FCT, Limit, Left + 1, Ps, [X | Acc])
    after 60000 -> error
    end;
pformap(From, [], _FCT, _Limit, _Left, [], Acc) ->
    From ! {done, Acc};
pformap(From, List, FCT, Limit, 0, [P | Ps], Acc) ->
    receive
        {P, X} ->
            pformap(From, List, FCT, Limit, 1, Ps, [X | Acc])
    after 60000 -> error
    end;
pformap(
    From,
    [#range{min = Min, max = Max} = R | T],
    {Fun, Ctx, Tuple} = FCT,
    Limit,
    Left,
    Pids,
    Acc
) when Min =< Max, is_function(Fun, 3) ->
    Self = self(),
    Pid = pmap_spawn(Self, Fun, Ctx, Tuple, Min),
    pformap(
        From,
        [R#range{min = Min + 1} | T],
        FCT,
        Limit,
        Left - 1,
        Pids ++ [Pid],
        Acc
    );
pformap(From, [#range{} | T], FCT, Limit, Left, Pids, Acc) ->
    pformap(From, T, FCT, Limit, Left, Pids, Acc);
pformap(From, [H | T], {Fun, Ctx, Tuple} = FCT, Limit, Left, Pids, Acc) ->
    Self = self(),
    Pid = pmap_spawn(Self, Fun, Ctx, Tuple, H),
    pformap(From, T, FCT, Limit, Left - 1, Pids ++ [Pid], Acc);
pformap(From, NL, FCT, Limit, Left, Pids, Acc) when not is_list(NL) ->
    pformap(From, [NL], FCT, Limit, Left, Pids, Acc).

pmap(From, #range{} = L, FCT, Limit, Left, Ps, Acc) ->
    pmap(From, expand(L), FCT, Limit, Left, Ps, Acc);
pmap(From, [], _FCT, _Limit, _Left, [], Acc) ->
    From ! {done, Acc};
pmap(From, List, FCT, Limit, 0, Ps, Acc) ->
    receive
        {Py, X} ->
            NewPs = lists:delete(Py, Ps),
            pmap(From, List, FCT, Limit, 1, NewPs, [X | Acc])
    after 60000 -> error
    end;
pmap(From, [], FCT, Limit, Left, Ps, Acc) ->
    %when Left < Limit ->
    receive
        {_, #xqError{} = Ex} ->
            throw(Ex);
        {Py, X} ->
            NewPs = lists:delete(Py, Ps),
            pmap(From, [], FCT, Limit, Left + 1, NewPs, [X | Acc])
    after ?TIMEOUT -> error
    end;
pmap(From, [H | T], {Fun, Ctx, Tuple} = FCT, Limit, Left, Pids, Acc) ->
    Self = self(),
    Pid = pmap_spawn(Self, Fun, Ctx, Tuple, H),
    pmap(From, T, FCT, Limit, Left - 1, [Pid | Pids], Acc).

position_filter1([], _CurrPos, _Seq) ->
    [];
position_filter1(_, _CurrPos, []) ->
    [];
position_filter1([Pos | Rest], CurrPos, Seq) when Pos < 1 ->
    position_filter1(Rest, CurrPos, Seq);
position_filter1([Pos | Rest], CurrPos, [H | T]) when Pos == CurrPos ->
    [H | position_filter1(Rest, CurrPos + 1, T)];
position_filter1([Pos | Rest], CurrPos, [_ | T]) when Pos > CurrPos ->
    position_filter1([Pos | Rest], CurrPos + 1, T);
% fractional
position_filter1([_ | Rest], CurrPos, [H | T]) ->
    position_filter1(Rest, CurrPos, [H | T]).

nth(_, []) ->
    [];
nth(N, [#range{cnt = C} | T]) when N > C ->
    nth(N - C, T);
nth(N, [#range{max = M, cnt = C} | _]) when N == C ->
    M;
nth(N, [#range{min = M} | _]) ->
    M + N - 1;
nth(1, [H | _]) ->
    H;
nth(2, [_, H | _]) ->
    H;
nth(3, [_, _, H | _]) ->
    H;
nth(4, [_, _, _, H | _]) ->
    H;
nth(5, [_, _, _, _, H | _]) ->
    H;
nth(6, [_, _, _, _, _, H | _]) ->
    H;
nth(7, [_, _, _, _, _, _, H | _]) ->
    H;
nth(8, [_, _, _, _, _, _, _, H | _]) ->
    H;
nth(9, [_, _, _, _, _, _, _, _, H | _]) ->
    H;
nth(10, [_, _, _, _, _, _, _, _, _, H | _]) ->
    H;
nth(11, [_, _, _, _, _, _, _, _, _, _, H | _]) ->
    H;
nth(12, [_, _, _, _, _, _, _, _, _, _, _, H | _]) ->
    H;
nth(13, [_, _, _, _, _, _, _, _, _, _, _, _, H | _]) ->
    H;
nth(14, [_, _, _, _, _, _, _, _, _, _, _, _, _, H | _]) ->
    H;
nth(15, [_, _, _, _, _, _, _, _, _, _, _, _, _, _, H | _]) ->
    H;
nth(16, [_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, H | _]) ->
    H;
nth(17, [_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, H | _]) ->
    H;
nth(18, [_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, H | _]) ->
    H;
nth(19, [_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, H | _]) ->
    H;
nth(20, [_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, H | _]) ->
    H;
nth(21, [_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, H | _]) ->
    H;
nth(22, [_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, H | _]) ->
    H;
nth(23, [_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, H | _]) ->
    H;
nth(24, [_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, H | _]) ->
    H;
nth(N, [_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _ | T]) when N > 24 ->
    nth(N - 24, T);
nth(_, _) ->
    [].

filter1(_Ctx, _Fun, [], _Pos, _Size) ->
    [];
filter1(Ctx, Fun, [H | T], Pos, Size) ->
    NextPos = Pos + 1,
    case Fun(Ctx, H, Pos, Size) of
        true ->
            [H | filter1(Ctx, Fun, T, NextPos, Size)];
        false ->
            filter1(Ctx, Fun, T, NextPos, Size);
        [FPos] when is_number(FPos), FPos == Pos ->
            [H | filter1(Ctx, Fun, T, NextPos, Size)];
        [FPos] when is_number(FPos) ->
            filter1(Ctx, Fun, T, NextPos, Size);
        FPos when is_number(FPos), FPos == Pos ->
            [H | filter1(Ctx, Fun, T, NextPos, Size)];
        FPos when is_number(FPos) ->
            filter1(Ctx, Fun, T, NextPos, Size);
        [#xqAtomicValue{type = NType, value = FPos}] when ?xs_numeric(NType), FPos == Pos ->
            [H | filter1(Ctx, Fun, T, NextPos, Size)];
        [#xqAtomicValue{type = NType}] when ?xs_numeric(NType) ->
            filter1(Ctx, Fun, T, NextPos, Size);
        #xqAtomicValue{type = NType, value = FPos} when ?xs_numeric(NType), FPos == Pos ->
            [H | filter1(Ctx, Fun, T, NextPos, Size)];
        #xqAtomicValue{type = NType} when ?xs_numeric(NType) ->
            filter1(Ctx, Fun, T, NextPos, Size);
        Resp ->
            case xqerl_operators:eff_bool_val(Resp) of
                true -> [H | filter1(Ctx, Fun, T, NextPos, Size)];
                false -> filter1(Ctx, Fun, T, NextPos, Size)
            end
    end.

-define(P1, P1).
-define(P2, ?P1, P2).
-define(P3, ?P2, P3).
-define(P4, ?P3, P4).
-define(P5, ?P4, P5).
-define(P6, ?P5, P6).
-define(P7, ?P6, P7).
-define(P8, ?P7, P8).
-define(P9, ?P8, P9).
-define(P10, ?P9, P10).
-define(P11, ?P10, P11).
-define(P12, ?P11, P12).
-define(P13, ?P12, P13).
-define(P14, ?P13, P14).
-define(P15, ?P14, P15).
-define(P16, ?P15, P16).
-define(P17, ?P16, P17).
-define(P18, ?P17, P18).
-define(P19, ?P18, P19).
-define(P20, ?P19, P20).
-define(P21, ?P20, P21).
-define(P22, ?P21, P22).
-define(P23, ?P22, P23).
-define(P24, ?P23, P24).
-define(P25, ?P24, P25).
-define(P26, ?P25, P26).
-define(P27, ?P26, P27).
-define(P28, ?P27, P28).
-define(P29, ?P28, P29).
-define(P30, ?P29, P30).
-define(P31, ?P30, P31).
-define(P32, ?P31, P32).
-define(P33, ?P32, P33).
-define(P34, ?P33, P34).
-define(P35, ?P34, P35).
-define(P36, ?P35, P36).
-define(P37, ?P36, P37).
-define(P38, ?P37, P38).
-define(P39, ?P38, P39).
-define(P40, ?P39, P40).
-define(P41, ?P40, P41).
-define(P42, ?P41, P42).
-define(P43, ?P42, P43).
-define(P44, ?P43, P44).
-define(P45, ?P44, P45).
-define(P46, ?P45, P46).
-define(P47, ?P46, P47).
-define(P48, ?P47, P48).
-define(P49, ?P48, P49).
-define(P50, ?P49, P50).

build_call(C, F, {}) -> F(C);
build_call(C, F, {?P1}) -> F(C, ?P1);
build_call(C, F, {?P2}) -> F(C, ?P2);
build_call(C, F, {?P3}) -> F(C, ?P3);
build_call(C, F, {?P4}) -> F(C, ?P4);
build_call(C, F, {?P5}) -> F(C, ?P5);
build_call(C, F, {?P6}) -> F(C, ?P6);
build_call(C, F, {?P7}) -> F(C, ?P7);
build_call(C, F, {?P8}) -> F(C, ?P8);
build_call(C, F, {?P9}) -> F(C, ?P9);
build_call(C, F, {?P10}) -> F(C, ?P10);
build_call(C, F, {?P11}) -> F(C, ?P11);
build_call(C, F, {?P12}) -> F(C, ?P12);
build_call(C, F, {?P13}) -> F(C, ?P13);
build_call(C, F, {?P14}) -> F(C, ?P14);
build_call(C, F, {?P15}) -> F(C, ?P15);
build_call(C, F, {?P16}) -> F(C, ?P16);
build_call(C, F, {?P17}) -> F(C, ?P17);
build_call(C, F, {?P18}) -> F(C, ?P18);
build_call(C, F, {?P19}) -> F(C, ?P19);
build_call(C, F, {?P20}) -> F(C, ?P20);
build_call(C, F, {?P21}) -> F(C, ?P21);
build_call(C, F, {?P22}) -> F(C, ?P22);
build_call(C, F, {?P23}) -> F(C, ?P23);
build_call(C, F, {?P24}) -> F(C, ?P24);
build_call(C, F, {?P25}) -> F(C, ?P25);
build_call(C, F, {?P26}) -> F(C, ?P26);
build_call(C, F, {?P27}) -> F(C, ?P27);
build_call(C, F, {?P28}) -> F(C, ?P28);
build_call(C, F, {?P29}) -> F(C, ?P29);
build_call(C, F, {?P30}) -> F(C, ?P30);
build_call(C, F, {?P31}) -> F(C, ?P31);
build_call(C, F, {?P32}) -> F(C, ?P32);
build_call(C, F, {?P33}) -> F(C, ?P33);
build_call(C, F, {?P34}) -> F(C, ?P34);
build_call(C, F, {?P35}) -> F(C, ?P35);
build_call(C, F, {?P36}) -> F(C, ?P36);
build_call(C, F, {?P37}) -> F(C, ?P37);
build_call(C, F, {?P38}) -> F(C, ?P38);
build_call(C, F, {?P39}) -> F(C, ?P39);
build_call(C, F, {?P40}) -> F(C, ?P40);
build_call(C, F, {?P41}) -> F(C, ?P41);
build_call(C, F, {?P42}) -> F(C, ?P42);
build_call(C, F, {?P43}) -> F(C, ?P43);
build_call(C, F, {?P44}) -> F(C, ?P44);
build_call(C, F, {?P45}) -> F(C, ?P45);
build_call(C, F, {?P46}) -> F(C, ?P46);
build_call(C, F, {?P47}) -> F(C, ?P47);
build_call(C, F, {?P48}) -> F(C, ?P48);
build_call(C, F, {?P49}) -> F(C, ?P49);
build_call(C, F, {?P50}) -> F(C, ?P50).

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Functions *NOT* called from XQuery modules directly
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

foldl(Ctx, Fun, Acc, Seq) when is_function(Fun) ->
    foldl1(Ctx, Fun, Acc, expand(Seq));
foldl(Ctx, Fun, Acc, Seq) ->
    case singleton_value(Fun) of
        Fun1 when is_function(Fun1) ->
            foldl(Ctx, Fun1, Acc, Seq);
        _ ->
            ?err('XPTY0004')
    end.

foldl1(_Ctx, _Fun, Acc, []) ->
    Acc;
foldl1(Ctx, Fun, Acc, [H | T]) ->
    foldl1(Ctx, Fun, Fun(Ctx, Acc, H), T).

get_unique_values(Seq) when is_list(Seq) ->
    Vals = get_unique_values1(?MODULE:flatten(Seq)),
    lists:usort(Vals);
get_unique_values(Seq) ->
    get_unique_values1([Seq]).

get_unique_values1([]) ->
    [];
get_unique_values1([#xqAtomicValue{value = {xsDecimal, H, 0}} | T]) ->
    [H | get_unique_values1(T)];
get_unique_values1([#xqAtomicValue{value = {xsDecimal, _, _}} | T]) ->
    get_unique_values1(T);
get_unique_values1([F | T]) when is_float(F) ->
    case trunc(F) of
        Tf when Tf == F ->
            [Tf | get_unique_values1(T)];
        _ ->
            get_unique_values1(T)
    end;
get_unique_values1([#xqAtomicValue{value = F} | T]) when is_float(F) ->
    case trunc(F) of
        Tf when Tf == F ->
            [Tf | get_unique_values1(T)];
        _ ->
            get_unique_values1(T)
    end;
get_unique_values1([H | T]) when is_integer(H) ->
    [H | get_unique_values1(T)];
get_unique_values1([#xqAtomicValue{value = H} | T]) ->
    [H | get_unique_values1(T)].

get_seq_type([]) ->
    #seqType{type = 'empty-sequence', occur = zero};
get_seq_type(#range{}) ->
    #seqType{type = 'xs:integer', occur = one_or_many};
get_seq_type([Singleton]) ->
    Type = get_item_type(Singleton),
    #seqType{type = Type, occur = one};
get_seq_type([Hd]) ->
    HType = get_item_type(Hd),
    Type = get_seq_type1([], xqerl_btypes:get_type(HType)),
    #seqType{type = Type, occur = one};
get_seq_type([Hd | Tl]) ->
    HType = get_item_type(Hd),
    Type = get_seq_type1(Tl, xqerl_btypes:get_type(HType)),
    #seqType{type = Type, occur = one_or_many};
get_seq_type(List) ->
    get_seq_type([List]).

get_seq_type1([], Curr) ->
    xqerl_btypes:get_type(Curr);
% TODO this is slow when called often
get_seq_type1([H | T], Curr) ->
    HType = get_item_type(H),
    case xqerl_btypes:get_type(HType) of
        HBType when HBType == Curr ->
            get_seq_type1(T, Curr);
        HBType when HType == 'xs:double'; HType == 'xs:float'; ?xs_decimal(HType) ->
            case xqerl_btypes:is_numeric(Curr) of
                true ->
                    New = HBType band Curr,
                    case xqerl_btypes:is_numeric(New) of
                        true -> get_seq_type1(T, New);
                        false -> get_seq_type1(T, xqerl_btypes:get_type('xs:numeric'))
                    end;
                _ ->
                    get_seq_type1(T, HBType band Curr)
            end;
        HBType ->
            get_seq_type1(T, HBType band Curr)
    end.

get_item_type([Item]) ->
    get_item_type(Item);
get_item_type(#xqAtomicValue{type = Type}) ->
    Type;
get_item_type(Item) when is_boolean(Item) ->
    'xs:boolean';
get_item_type(Item) when is_binary(Item) ->
    'xs:string';
get_item_type(Item) when is_integer(Item) ->
    'xs:integer';
get_item_type(Item) when
    is_float(Item); Item == neg_zero; Item == infinity; Item == nan; Item == neg_infinity
->
    'xs:double';
get_item_type(Item) when is_function(Item) ->
    function;
get_item_type(#xqFunction{}) ->
    function;
get_item_type(#{nk := _} = Node) ->
    xqerl_node:get_node_type(Node);
get_item_type(Item) when is_map(Item) ->
    map;
get_item_type(A) when is_tuple(A), element(1, A) =:= array ->
    array;
get_item_type(#qname{}) ->
    'xs:QName'.
