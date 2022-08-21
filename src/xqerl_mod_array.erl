% Copyright (c) 2017-2020 Zachary N. Dean  All Rights Reserved.
% SPDX-FileCopyrightText: 2022 Zachary Dean contact@zadean.com
%
% SPDX-License-Identifier: Apache-2.0

%% @doc Implements the "http://www.w3.org/2005/xpath-functions/array" namespace.

-module(xqerl_mod_array).

-include("xqerl.hrl").

-define(NS, <<"http://www.w3.org/2005/xpath-functions/array">>).
-define(PX, <<"array">>).

-'module-namespace'({?NS, ?PX}).

-functions([
    {
        {qname, ?NS, ?PX, <<"append">>},
        {seqType, {funTest, array, [], undefined, any, any}, one},
        [],
        {'append', 3},
        2,
        [
            {seqType, {funTest, array, [], undefined, any, any}, one},
            {seqType, item, zero_or_many}
        ]
    },
    {
        {qname, ?NS, ?PX, <<"filter">>},
        {seqType, {funTest, array, [], undefined, any, any}, one},
        [],
        {'filter', 3},
        2,
        [
            {seqType, {funTest, array, [], undefined, any, any}, one},
            {seqType,
                {funTest, function, [], undefined, [{seqType, item, zero_or_many}],
                    {seqType, 'xs:boolean', one}},
                one}
        ]
    },
    {{qname, ?NS, ?PX, <<"flatten">>}, {seqType, item, zero_or_many}, [], {'flatten', 2}, 1, [
        {seqType, item, zero_or_many}
    ]},
    {{qname, ?NS, ?PX, <<"fold-left">>}, {seqType, item, zero_or_many}, [], {'fold-left', 4}, 3, [
        {seqType, {funTest, array, [], undefined, any, any}, one},
        {seqType, item, zero_or_many},
        {seqType,
            {funTest, function, [], undefined,
                [{seqType, item, zero_or_many}, {seqType, item, zero_or_many}],
                {seqType, item, zero_or_many}},
            one}
    ]},
    {
        {qname, ?NS, ?PX, <<"fold-right">>},
        {seqType, item, zero_or_many},
        [],
        {'fold-right', 4},
        3,
        [
            {seqType, {funTest, array, [], undefined, any, any}, one},
            {seqType, item, zero_or_many},
            {seqType,
                {funTest, function, [], undefined,
                    [{seqType, item, zero_or_many}, {seqType, item, zero_or_many}],
                    {seqType, item, zero_or_many}},
                one}
        ]
    },
    {
        {qname, ?NS, ?PX, <<"for-each">>},
        {seqType, {funTest, array, [], undefined, any, any}, one},
        [],
        {'for-each', 3},
        2,
        [
            {seqType, {funTest, array, [], undefined, any, any}, one},
            {seqType,
                {funTest, function, [], undefined, [{seqType, item, zero_or_many}],
                    {seqType, item, zero_or_many}},
                one}
        ]
    },
    {
        {qname, ?NS, ?PX, <<"for-each-pair">>},
        {seqType, {funTest, array, [], undefined, any, any}, one},
        [],
        {'for-each-pair', 4},
        3,
        [
            {seqType, {funTest, array, [], undefined, any, any}, one},
            {seqType, {funTest, array, [], undefined, any, any}, one},
            {seqType,
                {funTest, function, [], undefined,
                    [{seqType, item, zero_or_many}, {seqType, item, zero_or_many}],
                    {seqType, item, zero_or_many}},
                one}
        ]
    },
    {{qname, ?NS, ?PX, <<"get">>}, {seqType, item, zero_or_many}, [], {'get', 3}, 2, [
        {seqType, {funTest, array, [], undefined, any, any}, one},
        {seqType, 'xs:integer', one}
    ]},
    {{qname, ?NS, ?PX, <<"head">>}, {seqType, item, zero_or_many}, [], {'head', 2}, 1, [
        {seqType, {funTest, array, [], undefined, any, any}, one}
    ]},
    {
        {qname, ?NS, ?PX, <<"insert-before">>},
        {seqType, {funTest, array, [], undefined, any, any}, one},
        [],
        {'insert-before', 4},
        3,
        [
            {seqType, {funTest, array, [], undefined, any, any}, one},
            {seqType, 'xs:integer', one},
            {seqType, item, zero_or_many}
        ]
    },
    {
        {qname, ?NS, ?PX, <<"join">>},
        {seqType, {funTest, array, [], undefined, any, any}, one},
        [],
        {'join', 2},
        1,
        [{seqType, {funTest, array, [], undefined, any, any}, zero_or_many}]
    },
    {
        {qname, ?NS, ?PX, <<"put">>},
        {seqType, {funTest, array, [], undefined, any, any}, one},
        [],
        {'put', 4},
        3,
        [
            {seqType, {funTest, array, [], undefined, any, any}, one},
            {seqType, 'xs:integer', one},
            {seqType, item, zero_or_many}
        ]
    },
    {
        {qname, ?NS, ?PX, <<"remove">>},
        {seqType, {funTest, array, [], undefined, any, any}, one},
        [],
        {'remove', 3},
        2,
        [
            {seqType, {funTest, array, [], undefined, any, any}, one},
            {seqType, 'xs:integer', zero_or_many}
        ]
    },
    {
        {qname, ?NS, ?PX, <<"reverse">>},
        {seqType, {funTest, array, [], undefined, any, any}, one},
        [],
        {'reverse', 2},
        1,
        [{seqType, {funTest, array, [], undefined, any, any}, one}]
    },
    {{qname, ?NS, ?PX, <<"size">>}, {seqType, 'xs:integer', one}, [], {'size', 2}, 1, [
        {seqType, {funTest, array, [], undefined, any, any}, one}
    ]},
    {
        {qname, ?NS, ?PX, <<"sort">>},
        {seqType, {funTest, array, [], undefined, any, any}, one},
        [],
        {'sort', 2},
        1,
        [{seqType, {funTest, array, [], undefined, any, any}, one}]
    },
    {
        {qname, ?NS, ?PX, <<"sort">>},
        {seqType, {funTest, array, [], undefined, any, any}, one},
        [],
        {'sort', 3},
        2,
        [
            {seqType, {funTest, array, [], undefined, any, any}, one},
            {seqType, 'xs:string', zero_or_one}
        ]
    },
    {
        {qname, ?NS, ?PX, <<"sort">>},
        {seqType, {funTest, array, [], undefined, any, any}, one},
        [],
        {'sort', 4},
        3,
        [
            {seqType, {funTest, array, [], undefined, any, any}, one},
            {seqType, 'xs:string', zero_or_one},
            {seqType,
                {funTest, function, [], undefined, [{seqType, item, zero_or_many}],
                    {seqType, 'xs:anyAtomicType', zero_or_many}},
                one}
        ]
    },
    {
        {qname, ?NS, ?PX, <<"subarray">>},
        {seqType, {funTest, array, [], undefined, any, any}, one},
        [],
        {'subarray', 3},
        2,
        [
            {seqType, {funTest, array, [], undefined, any, any}, one},
            {seqType, 'xs:integer', one}
        ]
    },
    {
        {qname, ?NS, ?PX, <<"subarray">>},
        {seqType, {funTest, array, [], undefined, any, any}, one},
        [],
        {'subarray', 4},
        3,
        [
            {seqType, {funTest, array, [], undefined, any, any}, one},
            {seqType, 'xs:integer', one},
            {seqType, 'xs:integer', one}
        ]
    },
    {
        {qname, ?NS, ?PX, <<"tail">>},
        {seqType, {funTest, array, [], undefined, any, any}, one},
        [],
        {'tail', 2},
        1,
        [{seqType, {funTest, array, [], undefined, any, any}, one}]
    }
]).

-export(['append'/3]).
-export(['filter'/3]).
-export(['flatten'/2]).
-export(['fold-left'/4]).
-export(['fold-right'/4]).
-export(['for-each'/3]).
-export(['for-each-pair'/4]).
-export(['get'/3]).
-export(['head'/2]).
-export(['insert-before'/4]).
-export(['join'/2]).
-export(['put'/4]).
-export(['remove'/3]).
-export(['reverse'/2]).
-export(['size'/2]).
-export(['sort'/2, 'sort'/3, 'sort'/4]).
-export(['subarray'/3, 'subarray'/4]).
-export(['tail'/2]).

%internal use
-export(['from_list'/1]).
-export([values/1]).
-export([get_matched/2]).

%% Returns an array containing all the members of a supplied array,
%% plus one additional member at the end.
'append'(_Ctx, Array, Appendage) ->
    case array:is_array(Array) of
        false ->
            ?err('FORG0006');
        true ->
            S = array:size(Array),
            array:set(S, Appendage, Array)
    end.

%% Returns an array containing those members of the
%% $array for which $function returns true.
'filter'(Ctx, Array, #xqFunction{body = Function}) when is_function(Function) ->
    'filter'(Ctx, Array, Function);
'filter'(Ctx, Array, Function) when is_function(Function) ->
    try
        Fx = fun(I) ->
            case Function(Ctx, I) of
                [B] -> B;
                B -> B
            end
        end,
        List = array:to_list(Array),
        Data = lists:filter(Fx, List),
        array:from_list(Data)
    catch
        _:{badarity, _} ->
            ?err('XPTY0004');
        _:E ->
            throw(E)
    end.

%% Replaces any array appearing in a supplied sequence with the
%% members of the array, recursively.
'flatten'(_Ctx, Seq) when is_list(Seq) ->
    flatten1(Seq);
'flatten'(Ctx, Seq) ->
    'flatten'(Ctx, [Seq]).

flatten1([]) ->
    [];
flatten1([H | T]) when is_list(H) ->
    flatten1(H) ++ flatten1(T);
flatten1([H | T]) ->
    case array:is_array(H) of
        true ->
            L = array:to_list(H),
            flatten1(L) ++ flatten1(T);
        false ->
            [H | flatten1(T)]
    end.

%% Evaluates the supplied function cumulatively on successive
%% members of the supplied array.
'fold-left'(Ctx, Array, Zero, #xqFunction{body = Function}) when is_function(Function) ->
    'fold-left'(Ctx, Array, Zero, Function);
'fold-left'(Ctx, Array, Zero, Function) when is_function(Function) ->
    Fx = fun(_, I, Acc) ->
        Function(Ctx, Acc, I)
    end,
    array:foldl(Fx, Zero, Array).

%% Evaluates the supplied function cumulatively on successive
%% values of the supplied array.
'fold-right'(Ctx, Array, Zero, #xqFunction{body = Function}) when is_function(Function) ->
    'fold-right'(Ctx, Array, Zero, Function);
'fold-right'(Ctx, Array, Zero, Function) when is_function(Function) ->
    Fx = fun(_, I, Acc) ->
        Function(Ctx, I, Acc)
    end,
    array:foldr(Fx, Zero, Array).

%% Returns an array whose size is the same as array:size($array), in which each
%% member is computed by applying $function to the corresponding
%% member of $array.
'for-each'(Ctx, Array, #xqFunction{body = Function}) when is_function(Function) ->
    'for-each'(Ctx, Array, Function);
'for-each'(Ctx, Array, Function) when is_function(Function) ->
    try
        Fx = fun(_, I) ->
            V = Function(Ctx, I),
            singleton(V)
        end,
        array:map(Fx, Array)
    catch
        _:{badarity, _} ->
            ?err('XPTY0004');
        _:badarg ->
            ?err('XPTY0004');
        _:E ->
            throw(E)
    end.

%% Returns an array obtained by evaluating the supplied function once
%% for each pair of members at the same position in the two supplied arrays.
'for-each-pair'(
    Ctx,
    Array1,
    Array2,
    #xqFunction{body = Function}
) when is_function(Function) ->
    'for-each-pair'(Ctx, Array1, Array2, Function);
'for-each-pair'(Ctx, Array1, Array2, Function) when is_function(Function) ->
    try
        D1 = array:to_list(Array1),
        D2 = array:to_list(Array2),
        case Function == fun xqerl_mod_fn:concat/2 of
            true ->
                array:from_list(for_each_pair2(Ctx, D1, D2, Function));
            false ->
                array:from_list(for_each_pair1(Ctx, D1, D2, Function))
        end
    catch
        _:{badarity, _} ->
            ?err('XPTY0004');
        _:badarg ->
            ?err('XPTY0004');
        _:function_clause ->
            ?err('XPTY0004');
        _:E ->
            throw(E)
    end.

for_each_pair1(_Ctx, [], _, _) ->
    [];
for_each_pair1(_Ctx, _, [], _) ->
    [];
for_each_pair1(Ctx, [H1 | T1], [H2 | T2], Fun) ->
    V = Fun(Ctx, H1, H2),
    R = singleton(V),
    [R | for_each_pair1(Ctx, T1, T2, Fun)].

for_each_pair2(_Ctx, [], _, _) ->
    [];
for_each_pair2(_Ctx, _, [], _) ->
    [];
for_each_pair2(Ctx, [H1 | T1], [H2 | T2], Fun) ->
    V = Fun(Ctx, [H1, H2]),
    R = singleton(V),
    [R | for_each_pair2(Ctx, T1, T2, Fun)].

%% Returns the value at the specified position in the
%% supplied array (counting from 1).
'get'(Ctx, Seq, [Position]) ->
    'get'(Ctx, Seq, Position);
'get'(Ctx, [Seq], Position) ->
    'get'(Ctx, Seq, Position);
'get'(_Ctx, Array, I) when is_integer(I), I > 0 ->
    case array:get(I - 1, Array) of
        undefined ->
            ?err('FOAY0001');
        V ->
            V
    end;
'get'(_Ctx, _Array, I) when is_integer(I) ->
    ?err('FOAY0001');
'get'(Ctx, Array, #xqAtomicValue{type = T, value = I}) when ?xs_integer(T) ->
    'get'(Ctx, Array, I);
'get'(_Ctx, _Seq, #xqAtomicValue{type = T}) when ?xs_numeric(T) ->
    ?err('XPTY0004');
'get'(Ctx, Array, V) ->
    'get'(Ctx, Array, xqerl_types:cast_as(V, 'xs:integer')).

%% Returns the first member of an array, that is $array(1).
'head'(_Ctx, Array) ->
    case array:is_array(Array) of
        false ->
            ?err('FORG0006');
        true ->
            case array:get(0, Array) of
                undefined ->
                    ?err('FOAY0001');
                V ->
                    V
            end
    end.

%% Returns an array containing all the members of the supplied array,
%% with one additional member at a specified position.
'insert-before'(Ctx, Array, Position, [Member]) ->
    'insert-before'(Ctx, Array, Position, Member);
'insert-before'(Ctx, Array, [Position], Member) ->
    'insert-before'(Ctx, Array, Position, Member);
'insert-before'(Ctx, [Array], Position, Member) ->
    'insert-before'(Ctx, Array, Position, Member);
'insert-before'(_Ctx, Array, Position, Member) ->
    I = xqerl_types:value(Position),
    S = array:size(Array),
    ok = check_insertion_point(I, S + 1),
    List = array:to_list(Array),
    Hd = lists:sublist(List, I - 1),
    Tl = lists:nthtail(I - 1, List),
    array:from_list(Hd ++ [Member | Tl]).

check_insertion_point(Index, Size) when Index > Size -> ?err('FOAY0001');
check_insertion_point(Index, _) when Index < 1 -> ?err('FOAY0001');
check_insertion_point(_, _) -> ok.

%% Concatenates the contents of several arrays into a single array.
'join'(_Ctx, Arrays) when is_list(Arrays) ->
    Fun = fun(Array, Acc) ->
        case array:is_array(Array) of
            false ->
                ?err('XPTY0004');
            true ->
                array:to_list(Array) ++ Acc
        end
    end,
    Data = lists:foldr(Fun, [], Arrays),
    array:from_list(Data);
'join'(Ctx, Arrays) ->
    'join'(Ctx, [Arrays]).

%% Returns an array containing all the members of a supplied array,
%% except for one member which is replaced with a new value.
'put'(Ctx, Array, Position, [Member]) ->
    'put'(Ctx, Array, Position, Member);
'put'(Ctx, Array, [Position], Member) ->
    'put'(Ctx, Array, Position, Member);
'put'(Ctx, [Array], Position, Member) ->
    'put'(Ctx, Array, Position, Member);
'put'(_Ctx, Array, Position, Member) ->
    case array:is_array(Array) of
        false ->
            ?err('FORG0006');
        true ->
            I = xqerl_types:value(Position),
            S = array:size(Array),
            ok = check_insertion_point(I, S),
            array:set(I - 1, Member, Array)
    end.

%% Returns an array containing all the members of the supplied array,
%% except for the members at specified positions.
'remove'(Ctx, [Array], Positions) ->
    'remove'(Ctx, Array, Positions);
'remove'(_Ctx, Array, Positions) ->
    case array:is_array(Array) of
        false ->
            ?err('FORG0006');
        true ->
            IntList = [
                xqerl_types:value(V)
             || V <- xqerl_seq3:to_list(Positions)
            ],
            SortPos = ordsets:from_list(IntList),
            RevPos = lists:reverse(ordsets:to_list(SortPos)),
            Fx = fun(P, A) ->
                ok = check_insertion_point(P, array:size(A)),
                array:reset(P - 1, A)
            end,
            Array1 = lists:foldl(Fx, Array, RevPos),
            Dat = array:sparse_to_list(Array1),
            array:from_list(Dat)
    end.

%% Returns an array containing all the members of a supplied array,
%% but in reverse order.
'reverse'(Ctx, [Array]) ->
    'reverse'(Ctx, Array);
'reverse'(_Ctx, Array) ->
    case array:is_array(Array) of
        false ->
            ?err('FORG0006');
        true ->
            List = array:to_list(Array),
            array:from_list(lists:reverse(List))
    end.

%% Returns the number of members in the supplied array.
'size'(Ctx, [Array]) ->
    'size'(Ctx, Array);
'size'(_Ctx, Array) ->
    case array:is_array(Array) of
        false ->
            ?err('FORG0006');
        true ->
            array:size(Array)
    end.

%% Returns an array containing all the members of the supplied array,
%% sorted according to the value of a sort key supplied as a function.
'sort'(Ctx, Array) ->
    Collation = xqerl_context:get_default_collation(Ctx),
    sort(Ctx, Array, Collation).

'sort'(Ctx, Array, []) ->
    Collation = xqerl_context:get_default_collation(Ctx),
    'sort'(Ctx, Array, Collation, fun xqerl_mod_fn:data/2);
'sort'(Ctx, Array, Collation) ->
    'sort'(Ctx, Array, Collation, fun xqerl_mod_fn:data/2).

'sort'(Ctx, Array, [], Function) ->
    Collation = xqerl_context:get_default_collation(Ctx),
    'sort'(Ctx, Array, Collation, Function);
'sort'(Ctx, Array, Collation, #xqFunction{body = Function}) when is_function(Function) ->
    'sort'(Ctx, Array, Collation, Function);
'sort'(Ctx, Array, Collation, Function) when is_function(Function) ->
    case array:is_array(Array) of
        false ->
            ?err('FORG0006');
        true ->
            List = array:to_list(Array),
            SortFun = fun(A, B) ->
                KeyA = Function(Ctx, A),
                KeyB = Function(Ctx, B),
                sort1(Ctx, KeyA, KeyB, Collation)
            end,
            SortedList = lists:sort(SortFun, List),
            array:from_list(SortedList)
    end.

sort1(_, [], [], _Coll) ->
    true;
sort1(_, [], _B, _Coll) ->
    true;
sort1(_, _A, [], _Coll) ->
    false;
sort1(Ctx, [A | As], [B | Bs], Coll) ->
    case xqerl_mod_fn:'deep-equal'(Ctx, A, B, Coll) of
        true ->
            sort1(Ctx, As, Bs, Coll);
        false ->
            case xqerl_operators:not_equal(A, A) of
                true ->
                    true;
                false ->
                    sort2(Ctx, A, B, Coll)
            end
    end;
sort1(Ctx, A, B, Coll) when is_list(A) ->
    sort1(Ctx, A, [B], Coll);
sort1(Ctx, A, B, Coll) when is_list(B) ->
    sort1(Ctx, [A], B, Coll);
sort1(Ctx, A, B, Coll) ->
    sort1(Ctx, [A], [B], Coll).

sort2(Ctx, A, B, Coll) ->
    TypeA = xqerl_types:type(A),
    TypeB = xqerl_types:type(B),
    case
        (?xs_string(TypeA) orelse
            TypeA =:= 'xs:anyURI' orelse
            TypeA =:= 'xs:untypedAtomic') andalso
            (?xs_string(TypeB) orelse
                TypeB =:= 'xs:anyURI' orelse
                TypeB =:= 'xs:untypedAtomic')
    of
        true ->
            xqerl_mod_fn:compare(Ctx, A, B, Coll) =< 0;
        false ->
            xqerl_operators:less_than_eq(A, B)
    end.

%% Returns an array containing all members from a supplied array
%% starting at a supplied position, up to a specified length.
'subarray'(Ctx, [Array], Start) ->
    'subarray'(Ctx, Array, Start);
'subarray'(_Ctx, Array, Start) ->
    case array:is_array(Array) of
        false ->
            ?err('FORG0006');
        true ->
            I = xqerl_types:value(Start),
            List = array:to_list(Array),
            subarray1(List, I)
    end.

'subarray'(Ctx, [Array], Start, Length) ->
    'subarray'(Ctx, Array, Start, Length);
'subarray'(_Ctx, Array, Start, Length) ->
    case array:is_array(Array) of
        false ->
            ?err('FORG0006');
        true ->
            I = xqerl_types:value(Start),
            N = xqerl_types:value(Length),
            List = array:to_list(Array),
            subarray1(List, I, N)
    end.

subarray1(_, Start) when Start < 1 ->
    ?err('FOAY0001');
subarray1(List, Start) when Start > length(List) + 1 ->
    ?err('FOAY0001');
subarray1(List, Start) ->
    Sl = lists:nthtail(Start - 1, List),
    array:from_list(Sl).

subarray1(_, _, Length) when Length < 0 ->
    ?err('FOAY0002');
subarray1(List, Start, Length) when (Start + Length) > length(List) + 1 ->
    ?err('FOAY0001');
subarray1(List, Start, Length) ->
    Sl = lists:sublist(List, Start, Length),
    array:from_list(Sl).

%% Returns an array containing all members except the first from a
%% supplied array.
'tail'(Ctx, [Array]) ->
    'tail'(Ctx, Array);
'tail'(_Ctx, Array) ->
    case array:is_array(Array) of
        false ->
            ?err('FORG0006');
        true ->
            case array:size(Array) of
                0 ->
                    ?err('FOAY0001');
                _ ->
                    tail1(Array)
            end
    end.

tail1(Array) ->
    [_ | T] = array:to_list(Array),
    array:from_list(T).

from_list([]) ->
    array:new();
from_list(List) when is_list(List) ->
    List1 = [
        case xqerl_seq3:expand(L) of
            [X] -> X;
            X -> X
        end
     || L <- List
    ],
    array:from_list(List1);
from_list(List) ->
    from_list([List]).

% used in unary lookup
values(Array) ->
    array:to_list(Array).

% used in unary lookup
get_matched(Array, Keys) ->
    lists:map(
        fun(Key) ->
            ?MODULE:get([], Array, Key)
        end,
        Keys
    ).

singleton([L]) -> L;
singleton(L) -> L.
