-module(xqldb_join).

%% ====================================================================
%% API functions
%% ====================================================================
-export([
    merge/1,
    union/1,
    iterator_to_list/1
]).

-define(UNION_SIZE, 200).
-define(RESULT_SIZE, 500).

-type iter() :: maybe_improper_list(term(), iter()) | fun(() -> iter()).

%% Sorted-merge join of multiple iterators
-spec merge([iter()]) -> iter().
merge([]) ->
    [];
merge([Iter]) ->
    Iter;
merge(Iters) when is_list(Iters) ->
    fun() -> merge_(Iters) end.

%% Sorted-union join of multiple iterators
-spec union([iter()]) -> iter().
union([]) ->
    [];
union([Iter]) ->
    Iter;
union(Iters) when is_list(Iters) ->
    fun() -> union_(Iters) end.

merge_([Iter1, Iter2]) ->
    lm(Iter1, Iter2);
merge_([Iter1, Iter2 | Rest]) ->
    merge_([lm(Iter1, Iter2) | Rest]).

union_([Iter1, Iter2]) ->
    lu(Iter1, Iter2);
union_([Iter1, Iter2 | Rest]) ->
    union_([lu(Iter1, Iter2) | Rest]).

% list-merge two iterators
lm(I1, I2) -> lm(I1, I2, []).

lm(I1, I2, Acc) when is_function(I1), is_function(I2) ->
    lm(I1(), I2(), Acc);
lm(I1, I2, Acc) when is_function(I1) ->
    lm(I1(), I2, Acc);
lm(I1, I2, Acc) when is_function(I2) ->
    lm(I1, I2(), Acc);
lm([], [], Acc) ->
    lists:reverse(Acc);
lm([], Rest, Acc) ->
    ok = iter_to_null(Rest),
    lists:reverse(Acc);
lm(Rest, [], Acc) ->
    ok = iter_to_null(Rest),
    lists:reverse(Acc);
lm(I1, I2, Acc) when length(Acc) > ?RESULT_SIZE ->
    build_result_iterator(Acc, fun() -> lm(I1, I2, []) end);
lm(I1, I2, Acc0) ->
    {R1, R2, Acc} = inter(I1, I2, Acc0),
    lm(R1, R2, Acc).

% intersection of two usorted lists
% returns {LeftRest, RightRest, ReversedAcc}
inter([H1 | T1], [H2 | T2], Acc) when H1 < H2 ->
    inter(T1, [H2 | T2], Acc);
inter([H1 | T1], [H2 | T2], Acc) when H1 > H2 ->
    inter([H1 | T1], T2, Acc);
inter([H1 | T1], [_H2 | T2], Acc) ->
    inter(T1, T2, [H1 | Acc]);
% empty or con-fun
inter(R1, R2, Acc) ->
    {R1, R2, Acc}.

% list-union two iterators
lu(I1, I2) -> lu(I1, I2, []).

lu(I1, I2, Acc) when is_function(I1), is_function(I2) ->
    lu(I1(), I2(), Acc);
lu(I1, I2, Acc) when is_function(I1) ->
    lu(I1(), I2, Acc);
lu(I1, I2, Acc) when is_function(I2) ->
    lu(I1, I2(), Acc);
lu([], [], Acc) ->
    lists:reverse(Acc);
lu([], Rest, Acc) ->
    build_result_iterator(Acc, fun() -> iterator_to_list(Rest) end);
lu(Rest, [], Acc) ->
    build_result_iterator(Acc, fun() -> iterator_to_list(Rest) end);
lu(I1, I2, Acc) when length(Acc) > ?UNION_SIZE ->
    build_result_iterator(Acc, fun() -> lu(I1, I2, []) end);
lu(I1, I2, Acc0) ->
    {R1, R2, Acc} = union(I1, I2, Acc0),
    lu(R1, R2, Acc).

% union of two usorted lists
% returns {UnsafeRestLeft, UnsafeRestRight, ReversedUnionAcc}
union([H1 | T1], [H2 | _] = S2, Acc) when H1 < H2 ->
    union(T1, S2, [H1 | Acc]);
union([H1 | _] = S1, [H2 | T2], Acc) when H1 > H2 ->
    union(S1, T2, [H2 | Acc]);
%when H1 == H2 ->
union([H1 | T1], [_ | T2], Acc) ->
    union(T1, T2, [H1 | Acc]);
% empty or con-fun
union(R1, R2, Acc) ->
    {R1, R2, Acc}.

% reverse the list to possibly improper list having Acc as last item.
% Acc is a fun when there is a continuation.
-dialyzer({no_improper_lists, build_result_iterator/2}).

build_result_iterator([H | T], Acc) ->
    build_result_iterator(T, [H | Acc]);
build_result_iterator([], Acc) ->
    Acc.

% build any/all left-overs
iterator_to_list([H | T]) ->
    [H | iterator_to_list(T)];
iterator_to_list(F) when is_function(F) ->
    iterator_to_list(F());
iterator_to_list([]) ->
    [].

% flush any left-overs
iter_to_null([_ | T]) ->
    iter_to_null(T);
iter_to_null(F) when is_function(F) ->
    iter_to_null(F());
iter_to_null([]) ->
    ok.

%% iterator_to_tree(Iter) ->
%%    gb_trees:from_orddict(iterator_to_list(Iter)).
