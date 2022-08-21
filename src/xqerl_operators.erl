% Copyright (c) 2017-2020 Zachary N. Dean  All Rights Reserved.
% SPDX-FileCopyrightText: 2022 Zachary Dean contact@zadean.com
%
% SPDX-License-Identifier: Apache-2.0

%% @doc XQuery operator functions. the "op" functions in the spec.

-module(xqerl_operators).

-compile(inline).
-compile({inline_size, 100}).
-compile(inline_list_funcs).
-compile({no_auto_import, [float/1]}).

-define(MINFLOAT, -3.4028235e38).
-define(MAXFLOAT, 3.4028235e38).

-define(BIN(V), (V) / binary).

-define(IS_NUMERIC(V),
    (is_number(V) orelse
        V == nan orelse
        V == infinity orelse
        V == neg_infinity orelse V == neg_zero)
).

% block array:array(_) warnings
-dialyzer(no_opaque).

-define(IS_ARRAY(A), is_tuple(A), element(1, A) =:= array).

-export([
    op_and/2,
    op_or/2
]).

-export([
    is_comparable/1,
    % map
    key_val/1,
    % atomics
    add/2,
    subtract/2,
    multiply/2,
    divide/2,
    idivide/2,
    modulo/2,
    equal/3,
    equal/2,
    not_equal/2,
    greater_than/2,
    less_than/2,
    greater_than_eq/2,
    less_than_eq/2,
    unary_plus/1,
    unary_minus/1,
    % nodes
    %union/2,
    %intersect/2,
    %except/2,
    node_before/2,
    node_after/2,
    node_is/2,
    general_compare/3,
    % effective boolean value
    eff_bool_val/1,
    lookup/3
]).

-include("xqerl.hrl").

op_and([O], R) ->
    op_and(O, R);
op_and(true, R) ->
    case R() of
        [] -> false;
        O -> O
    end;
op_and([], _) ->
    false;
op_and(false, _) ->
    false.

op_or([O], R) ->
    op_or(O, R);
op_or(true, _) ->
    true;
op_or([], R) ->
    case R() of
        [] -> false;
        O -> O
    end;
op_or(false, R) ->
    case R() of
        [] -> false;
        O -> O
    end.

lookup(Ctx, Sing, #range{} = R) ->
    lookup(Ctx, Sing, xqerl_seq3:expand(R));
lookup(Ctx, Sing, [Value]) ->
    lookup(Ctx, Sing, Value);
lookup(Ctx, [Sing], Value) ->
    lookup(Ctx, Sing, Value);
lookup(_Ctx, #{nk := _}, _) ->
    ?err('XPTY0004');
lookup(_Ctx, Map, all) when is_map(Map) ->
    xqerl_mod_map:values(Map);
lookup(_Ctx, Map, Values) when is_map(Map), is_list(Values) ->
    V1 = xqerl_seq3:expand(Values),
    xqerl_mod_map:get_matched(Map, V1);
lookup(Ctx, Map, Value) when is_map(Map) ->
    xqerl_mod_map:get(Ctx, Map, Value);
lookup(_Ctx, Array, all) when ?IS_ARRAY(Array) ->
    xqerl_mod_array:values(Array);
lookup(_Ctx, Array, Values) when ?IS_ARRAY(Array), is_list(Values) ->
    V1 = xqerl_seq3:expand(Values),
    xqerl_mod_array:get_matched(Array, V1);
lookup(Ctx, Array, Value) when ?IS_ARRAY(Array), is_integer(Value) ->
    xqerl_mod_array:get(Ctx, Array, Value);
lookup(Ctx, Array, #xqAtomicValue{type = T} = Value) when ?IS_ARRAY(Array), ?xs_integer(T) ->
    xqerl_mod_array:get(Ctx, Array, Value);
lookup(Ctx, A, #{nk := _} = V) when ?IS_ARRAY(A) ->
    lookup(Ctx, A, xqerl_types:cast_as(V, 'xs:integer'));
lookup(Ctx, List, Value) when is_list(List) ->
    V1 = xqerl_seq3:expand(Value),
    L1 = lists:map(
        fun(I) ->
            lookup(Ctx, I, V1)
        end,
        List
    ),
    lists:flatten(L1);
lookup(_Ctx, _List, _Value) ->
    ?err('XPTY0004').

is_comparable('xs:base64Binary') -> true;
is_comparable('xs:boolean') -> true;
is_comparable('xs:date') -> true;
is_comparable('xs:dateTime') -> true;
is_comparable('xs:dayTimeDuration') -> true;
is_comparable('xs:hexBinary') -> true;
is_comparable('xs:string') -> true;
is_comparable('xs:time') -> true;
is_comparable('xs:yearMonthDuration') -> true;
is_comparable(Type) when ?xs_numeric(Type); ?xs_string(Type) -> true;
is_comparable(_) -> false.

add(_, []) ->
    [];
add([], _) ->
    [];
add([Arg1], Arg2) ->
    add(Arg1, Arg2);
add(Arg1, [Arg2]) ->
    add(Arg1, Arg2);
add(Arg1, Arg2) when ?IS_ARRAY(Arg1) ->
    add(array:to_list(Arg1), Arg2);
add(Arg1, Arg2) when ?IS_ARRAY(Arg2) ->
    add(Arg1, array:to_list(Arg2));
add(Arg1, #{nk := _} = Arg2) ->
    Ns = xqerl_types:atomize(Arg2),
    add(Arg1, Ns);
add(#{nk := _} = Arg1, Arg2) ->
    Ns = xqerl_types:atomize(Arg1),
    add(Ns, Arg2);
add(Arg1, #{nk := _} = Arg2) ->
    Ns = xqerl_types:atomize(Arg2),
    add(Arg1, Ns);
% common
add(ValA, ValB) when is_number(ValA), is_number(ValB) ->
    ValA + ValB;
add(#xqAtomicValue{type = 'xs:untypedAtomic'} = Arg1, Arg2) ->
    add(xqerl_types:cast_as(Arg1, 'xs:double'), Arg2);
add(Arg1, #xqAtomicValue{type = 'xs:untypedAtomic'} = Arg2) ->
    add(Arg1, xqerl_types:cast_as(Arg2, 'xs:double'));
add(
    #xqAtomicValue{type = 'xs:date'} = Arg1,
    #xqAtomicValue{type = 'xs:yearMonthDuration'} = Arg2
) ->
    add_yearMonthDuration_to_date(Arg1, Arg2);
add(
    #xqAtomicValue{type = 'xs:yearMonthDuration'} = Arg2,
    #xqAtomicValue{type = 'xs:date'} = Arg1
) ->
    add_yearMonthDuration_to_date(Arg1, Arg2);
add(
    #xqAtomicValue{type = 'xs:dateTime'} = Arg1,
    #xqAtomicValue{type = 'xs:yearMonthDuration'} = Arg2
) ->
    add_yearMonthDuration_to_dateTime(Arg1, Arg2);
add(
    #xqAtomicValue{type = 'xs:yearMonthDuration'} = Arg2,
    #xqAtomicValue{type = 'xs:dateTime'} = Arg1
) ->
    add_yearMonthDuration_to_dateTime(Arg1, Arg2);
add(
    #xqAtomicValue{type = 'xs:yearMonthDuration'} = Arg2,
    #xqAtomicValue{type = 'xs:yearMonthDuration'} = Arg1
) ->
    add_yearMonthDurations(Arg1, Arg2);
add(
    #xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg1,
    #xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg2
) ->
    add_dayTimeDurations(Arg1, Arg2);
add(
    #xqAtomicValue{type = 'xs:date'} = Arg1,
    #xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg2
) ->
    add_dayTimeDuration_to_date(Arg1, Arg2);
add(
    #xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg2,
    #xqAtomicValue{type = 'xs:date'} = Arg1
) ->
    add_dayTimeDuration_to_date(Arg1, Arg2);
add(
    #xqAtomicValue{type = 'xs:dateTime'} = Arg1,
    #xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg2
) ->
    add_dayTimeDuration_to_dateTime(Arg1, Arg2);
add(
    #xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg2,
    #xqAtomicValue{type = 'xs:dateTime'} = Arg1
) ->
    add_dayTimeDuration_to_dateTime(Arg1, Arg2);
add(
    #xqAtomicValue{type = 'xs:time'} = Arg1,
    #xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg2
) ->
    add_dayTimeDuration_to_time(Arg1, Arg2);
add(
    #xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg2,
    #xqAtomicValue{type = 'xs:time'} = Arg1
) ->
    add_dayTimeDuration_to_time(Arg1, Arg2);
add(#xqAtomicValue{type = 'xs:date'}, #xqAtomicValue{type = _}) ->
    ?err('XPTY0004');
add(#xqAtomicValue{type = 'xs:yearMonthDuration'}, #xqAtomicValue{type = _}) ->
    ?err('XPTY0004');
add(#xqAtomicValue{type = 'xs:dateTime'}, #xqAtomicValue{type = _}) ->
    ?err('XPTY0004');
add(#xqAtomicValue{type = 'xs:dayTimeDuration'}, #xqAtomicValue{type = _}) ->
    ?err('XPTY0004');
add(#xqAtomicValue{type = 'xs:duration'}, #xqAtomicValue{type = _}) ->
    ?err('XPTY0004');
add(#xqAtomicValue{type = 'xs:time'}, #xqAtomicValue{type = _}) ->
    ?err('XPTY0004');
add(Arg1, Arg2) ->
    numeric_add(Arg1, Arg2).

subtract(_, []) ->
    [];
subtract([], _) ->
    [];
subtract([Arg1], Arg2) ->
    subtract(Arg1, Arg2);
subtract(Arg1, [Arg2]) ->
    subtract(Arg1, Arg2);
subtract(Arg1, Arg2) when ?IS_ARRAY(Arg1) ->
    subtract(array:to_list(Arg1), Arg2);
subtract(Arg1, Arg2) when ?IS_ARRAY(Arg2) ->
    subtract(Arg1, array:to_list(Arg2));
% common
subtract(ValA, ValB) when is_number(ValA), is_number(ValB) ->
    ValA - ValB;
subtract(#{nk := _} = Arg1, Arg2) ->
    Ns = xqerl_types:atomize(Arg1),
    subtract(Ns, Arg2);
subtract(Arg1, #{nk := _} = Arg2) ->
    Ns = xqerl_types:atomize(Arg2),
    subtract(Arg1, Ns);
subtract(#xqAtomicValue{type = 'xs:untypedAtomic'} = Arg1, Arg2) ->
    subtract(xqerl_types:cast_as(Arg1, 'xs:double'), Arg2);
subtract(Arg1, #xqAtomicValue{type = 'xs:untypedAtomic'} = Arg2) ->
    subtract(Arg1, xqerl_types:cast_as(Arg2, 'xs:double'));
subtract(
    #xqAtomicValue{type = 'xs:date'} = Arg1,
    #xqAtomicValue{type = 'xs:date'} = Arg2
) ->
    subtract_dates(Arg1, Arg2);
subtract(
    #xqAtomicValue{type = 'xs:date'} = Arg1,
    #xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg2
) ->
    subtract_dayTimeDuration_from_date(Arg1, Arg2);
subtract(
    #xqAtomicValue{type = 'xs:date'} = Arg1,
    #xqAtomicValue{type = 'xs:yearMonthDuration'} = Arg2
) ->
    subtract_yearMonthDuration_from_date(Arg1, Arg2);
subtract(#xqAtomicValue{type = 'xs:date'}, #xqAtomicValue{type = _}) ->
    ?err('XPTY0004');
subtract(
    #xqAtomicValue{type = 'xs:dateTime'} = Arg1,
    #xqAtomicValue{type = 'xs:dateTime'} = Arg2
) ->
    subtract_dateTimes(Arg1, Arg2);
subtract(
    #xqAtomicValue{type = 'xs:dateTime'} = Arg1,
    #xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg2
) ->
    subtract_dayTimeDuration_from_dateTime(Arg1, Arg2);
subtract(
    #xqAtomicValue{type = 'xs:dateTime'} = Arg1,
    #xqAtomicValue{type = 'xs:yearMonthDuration'} = Arg2
) ->
    subtract_yearMonthDuration_from_dateTime(Arg1, Arg2);
subtract(#xqAtomicValue{type = 'xs:dateTime'}, #xqAtomicValue{type = _}) ->
    ?err('XPTY0004');
subtract(
    #xqAtomicValue{type = 'xs:time'} = Arg1,
    #xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg2
) ->
    subtract_dayTimeDuration_from_time(Arg1, Arg2);
subtract(
    #xqAtomicValue{type = 'xs:time'} = Arg1,
    #xqAtomicValue{type = 'xs:time'} = Arg2
) ->
    subtract_times(Arg1, Arg2);
subtract(#xqAtomicValue{type = 'xs:time'}, #xqAtomicValue{type = _}) ->
    ?err('XPTY0004');
subtract(
    #xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg1,
    #xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg2
) ->
    subtract_dayTimeDurations(Arg1, Arg2);
subtract(
    #xqAtomicValue{type = 'xs:dayTimeDuration'},
    #xqAtomicValue{type = _}
) ->
    ?err('XPTY0004');
subtract(
    #xqAtomicValue{type = 'xs:yearMonthDuration'} = Arg1,
    #xqAtomicValue{type = 'xs:yearMonthDuration'} = Arg2
) ->
    subtract_yearMonthDurations(Arg1, Arg2);
subtract(
    #xqAtomicValue{type = 'xs:yearMonthDuration'},
    #xqAtomicValue{type = _}
) ->
    ?err('XPTY0004');
subtract(#xqAtomicValue{type = 'xs:duration'}, #xqAtomicValue{type = _}) ->
    ?err('XPTY0004');
subtract(Arg1, Arg2) ->
    numeric_subtract(Arg1, Arg2).

multiply(_, []) ->
    [];
multiply([], _) ->
    [];
multiply(Arg1, Arg2) when ?IS_ARRAY(Arg1) ->
    multiply(array:to_list(Arg1), Arg2);
multiply(Arg1, Arg2) when ?IS_ARRAY(Arg2) ->
    multiply(Arg1, array:to_list(Arg2));
% common
multiply([Arg1], Arg2) ->
    multiply(Arg1, Arg2);
multiply(Arg1, [Arg2]) ->
    multiply(Arg1, Arg2);
multiply(ValA, ValB) when is_number(ValA), is_number(ValB) ->
    ValA * ValB;
multiply(#{nk := _} = Arg1, Arg2) ->
    Ns = xqerl_types:atomize(Arg1),
    multiply(Ns, Arg2);
multiply(Arg1, #{nk := _} = Arg2) ->
    Ns = xqerl_types:atomize(Arg2),
    multiply(Arg1, Ns);
multiply(#xqAtomicValue{type = 'xs:untypedAtomic'} = Arg1, Arg2) ->
    multiply(xqerl_types:cast_as(Arg1, 'xs:double'), Arg2);
multiply(Arg1, #xqAtomicValue{type = 'xs:untypedAtomic'} = Arg2) ->
    multiply(Arg1, xqerl_types:cast_as(Arg2, 'xs:double'));
multiply(#xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg1, Arg2) ->
    multiply_dayTimeDuration(Arg1, Arg2);
multiply(
    Arg1,
    #xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg2
) ->
    multiply_dayTimeDuration(Arg2, Arg1);
multiply(
    #xqAtomicValue{type = 'xs:yearMonthDuration'} = Arg1,
    Arg2
) ->
    multiply_yearMonthDuration(Arg1, Arg2);
multiply(
    Arg1,
    #xqAtomicValue{type = 'xs:yearMonthDuration'} = Arg2
) ->
    multiply_yearMonthDuration(Arg2, Arg1);
multiply(Arg1, Arg2) ->
    numeric_multiply(Arg1, Arg2).

divide(_, []) ->
    [];
divide([], _) ->
    [];
divide([Arg1], Arg2) ->
    divide(Arg1, Arg2);
divide(Arg1, [Arg2]) ->
    divide(Arg1, Arg2);
divide(Arg1, Arg2) when ?IS_ARRAY(Arg1) ->
    divide(array:to_list(Arg1), Arg2);
divide(Arg1, Arg2) when ?IS_ARRAY(Arg2) ->
    divide(Arg1, array:to_list(Arg2));
divide(#{nk := _} = Arg1, Arg2) ->
    Ns = xqerl_types:atomize(Arg1),
    divide(Ns, Arg2);
divide(Arg1, #{nk := _} = Arg2) ->
    Ns = xqerl_types:atomize(Arg2),
    divide(Arg1, Ns);
divide(#xqAtomicValue{type = 'xs:untypedAtomic'} = Arg1, Arg2) ->
    divide(xqerl_types:cast_as(Arg1, 'xs:double'), Arg2);
divide(Arg1, #xqAtomicValue{type = 'xs:untypedAtomic'} = Arg2) ->
    divide(Arg1, xqerl_types:cast_as(Arg2, 'xs:double'));
divide(
    #xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg1,
    #xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg2
) ->
    divide_dayTimeDuration_by_dayTimeDuration(Arg1, Arg2);
divide(#xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg1, Arg2) ->
    divide_dayTimeDuration(Arg1, Arg2);
divide(
    #xqAtomicValue{type = 'xs:yearMonthDuration'} = Arg1,
    #xqAtomicValue{type = 'xs:yearMonthDuration'} = Arg2
) ->
    divide_yearMonthDuration_by_yearMonthDuration(Arg1, Arg2);
divide(
    #xqAtomicValue{type = 'xs:yearMonthDuration'} = Arg1,
    Arg2
) ->
    divide_yearMonthDuration(Arg1, Arg2);
divide(Arg1, Arg2) ->
    numeric_divide(Arg1, Arg2).

idivide(_, []) ->
    [];
idivide([], _) ->
    [];
idivide([Arg1], Arg2) ->
    idivide(Arg1, Arg2);
idivide(Arg1, [Arg2]) ->
    idivide(Arg1, Arg2);
idivide(Arg1, Arg2) when ?IS_ARRAY(Arg1) ->
    idivide(array:to_list(Arg1), Arg2);
idivide(Arg1, Arg2) when ?IS_ARRAY(Arg2) ->
    idivide(Arg1, array:to_list(Arg2));
idivide(#{nk := _} = Arg1, Arg2) ->
    Ns = xqerl_types:atomize(Arg1),
    idivide(Ns, Arg2);
idivide(Arg1, #{nk := _} = Arg2) ->
    Ns = xqerl_types:atomize(Arg2),
    idivide(Arg1, Ns);
idivide(#xqAtomicValue{type = 'xs:untypedAtomic'} = Arg1, Arg2) ->
    idivide(xqerl_types:cast_as(Arg1, 'xs:double'), Arg2);
idivide(Arg1, #xqAtomicValue{type = 'xs:untypedAtomic'} = Arg2) ->
    idivide(Arg1, xqerl_types:cast_as(Arg2, 'xs:double'));
idivide(Arg1, Arg2) ->
    numeric_integer_divide(Arg1, Arg2).

modulo(_, []) ->
    [];
modulo([], _) ->
    [];
modulo([Arg1], Arg2) ->
    modulo(Arg1, Arg2);
modulo(Arg1, [Arg2]) ->
    modulo(Arg1, Arg2);
modulo(Arg1, Arg2) when ?IS_ARRAY(Arg1) ->
    modulo(array:to_list(Arg1), Arg2);
modulo(Arg1, Arg2) when ?IS_ARRAY(Arg2) ->
    modulo(Arg1, array:to_list(Arg2));
modulo(#{nk := _} = Arg1, Arg2) ->
    Ns = xqerl_types:atomize(Arg1),
    modulo(Ns, Arg2);
modulo(Arg1, #{nk := _} = Arg2) ->
    Ns = xqerl_types:atomize(Arg2),
    modulo(Arg1, Ns);
modulo(#xqAtomicValue{type = 'xs:untypedAtomic'} = Arg1, Arg2) ->
    modulo(xqerl_types:cast_as(Arg1, 'xs:double'), Arg2);
modulo(Arg1, #xqAtomicValue{type = 'xs:untypedAtomic'} = Arg2) ->
    modulo(Arg1, xqerl_types:cast_as(Arg2, 'xs:double'));
modulo(Arg1, Arg2) ->
    numeric_mod(Arg1, Arg2).

equal([Arg1], Arg2, Collation) ->
    equal(Arg1, Arg2, Collation);
equal(Arg1, [Arg2], Collation) ->
    equal(Arg1, Arg2, Collation);
equal(A, B, Collation) when is_tuple(Collation) ->
    Coll = xqerl_coll:parse(xqerl_types:string_value(Collation)),
    equal(A, B, Coll);
equal(
    #xqAtomicValue{type = T2, value = Val2},
    #xqAtomicValue{type = T1, value = Val1},
    Collation
) when
    ?xs_string(T1), ?xs_string(T2);
    ?xs_string(T1), T2 == 'xs:anyURI';
    ?xs_string(T1), T2 == 'xs:NCName';
    ?xs_string(T1), T2 == 'xs:untypedAtomic';
    ?xs_string(T2), T1 == 'xs:anyURI';
    ?xs_string(T2), T1 == 'xs:NCName';
    ?xs_string(T2), T1 == 'xs:untypedAtomic';
    T1 == 'xs:anyURI', T2 == 'xs:anyURI';
    T1 == 'xs:anyURI', T2 == 'xs:NCName';
    T1 == 'xs:anyURI', T2 == 'xs:untypedAtomic';
    T1 == 'xs:NCName', T2 == 'xs:anyURI';
    T1 == 'xs:NCName', T2 == 'xs:NCName';
    T1 == 'xs:NCName', T2 == 'xs:untypedAtomic';
    T1 == 'xs:untypedAtomic', T2 == 'xs:anyURI';
    T1 == 'xs:untypedAtomic', T2 == 'xs:NCName';
    T1 == 'xs:untypedAtomic', T2 == 'xs:untypedAtomic'
->
    xqerl_coll:sort_key(Val1, Collation) ==
        xqerl_coll:sort_key(Val2, Collation);
equal(
    Val1,
    #xqAtomicValue{type = T2, value = Val2},
    Collation
) when
    is_binary(Val1), T2 == 'xs:anyURI';
    is_binary(Val1), T2 == 'xs:NCName';
    is_binary(Val1), T2 == 'xs:untypedAtomic'
->
    xqerl_coll:sort_key(Val1, Collation) ==
        xqerl_coll:sort_key(Val2, Collation);
equal(#xqAtomicValue{type = T1, value = Val1}, Val2, Collation) when
    is_binary(Val2), T1 == 'xs:anyURI';
    is_binary(Val2), T1 == 'xs:NCName';
    is_binary(Val2), T1 == 'xs:untypedAtomic'
->
    xqerl_coll:sort_key(Val1, Collation) ==
        xqerl_coll:sort_key(Val2, Collation);
equal(Val1, Val2, Collation) when is_binary(Val1), is_binary(Val2) ->
    xqerl_coll:sort_key(Val1, Collation) ==
        xqerl_coll:sort_key(Val2, Collation);
equal(Arg1, Arg2, _Collation) ->
    equal(Arg1, Arg2).

equal(undefined, undefined) ->
    [];
equal([], []) ->
    [];
equal([], _) ->
    [];
equal(_, []) ->
    [];
equal(V1, V2) when is_integer(V1), is_integer(V2) ->
    % happens often so skip numeric equal
    V1 =:= V2;
equal(
    #xqAtomicValue{type = T1, value = V1},
    #xqAtomicValue{type = T2, value = V2}
) when ?xs_integer(T1), ?xs_integer(T2) ->
    % happens often so skip numeric equal
    V1 =:= V2;
equal(Arg1, Arg2) when ?IS_NUMERIC(Arg1), ?IS_NUMERIC(Arg2) ->
    numeric_equal(Arg1, Arg2);
equal(Arg1, #xqAtomicValue{type = T2} = Arg2) when ?IS_NUMERIC(Arg1), ?xs_numeric(T2) ->
    numeric_equal(Arg1, Arg2);
equal(#xqAtomicValue{type = T1} = Arg1, Arg2) when ?xs_numeric(T1), ?IS_NUMERIC(Arg2) ->
    numeric_equal(Arg1, Arg2);
equal(
    #xqAtomicValue{type = T1} = Arg1,
    #xqAtomicValue{type = T2} = Arg2
) when ?xs_numeric(T1), ?xs_numeric(T2) ->
    numeric_equal(Arg1, Arg2);
equal(#{nk := _} = Arg1, Arg2) ->
    At = xqerl_types:atomize(Arg1),
    equal(At, Arg2);
equal(Arg1, #{nk := _} = Arg2) ->
    At = xqerl_types:atomize(Arg2),
    equal(Arg1, At);
equal(Arg1, Arg2) when is_map(Arg1); is_map(Arg2) ->
    ?err('FOTY0013');
equal(Arg1, Arg2) when ?IS_ARRAY(Arg1) ->
    equal(array:to_list(Arg1), Arg2);
equal(Arg1, Arg2) when ?IS_ARRAY(Arg2) ->
    equal(Arg1, array:to_list(Arg2));
equal(
    #xqAtomicValue{type = 'xs:anyURI'} = Arg1,
    #xqAtomicValue{type = 'xs:anyURI'} = Arg2
) ->
    string_equal(Arg2, Arg1);
equal(
    #xqAtomicValue{type = 'xs:anyURI'} = Arg1,
    Arg2
) when is_binary(Arg2) ->
    string_equal(Arg2, Arg1);
equal(
    #xqAtomicValue{type = 'xs:anyURI'} = Arg1,
    #xqAtomicValue{type = Type} = Arg2
) when ?xs_string(Type) ->
    string_equal(Arg2, Arg1);
equal(
    #xqAtomicValue{type = 'xs:anyURI'} = Arg1,
    #xqAtomicValue{type = 'xs:untypedAtomic'} = Arg2
) ->
    string_equal(Arg2, Arg1);
equal(
    #xqAtomicValue{type = 'xs:NCName'} = Arg1,
    Arg2
) when is_binary(Arg2) ->
    string_equal(Arg2, Arg1);
equal(
    #xqAtomicValue{type = 'xs:NCName'} = Arg1,
    #xqAtomicValue{type = Type} = Arg2
) when ?xs_string(Type) ->
    string_equal(Arg2, Arg1);
equal(
    #xqAtomicValue{type = 'xs:NCName'} = Arg1,
    #xqAtomicValue{type = 'xs:untypedAtomic'} = Arg2
) ->
    string_equal(Arg2, Arg1);
equal(
    #xqAtomicValue{type = 'xs:base64Binary'} = Arg1,
    #xqAtomicValue{type = 'xs:base64Binary'} = Arg2
) ->
    base64Binary_equal(Arg2, Arg1);
equal(Arg1, Arg2) when is_boolean(Arg1), is_boolean(Arg2) ->
    boolean_equal(Arg2, Arg1);
equal(
    #xqAtomicValue{type = 'xs:date'} = Arg1,
    #xqAtomicValue{type = 'xs:date'} = Arg2
) ->
    date_equal(Arg2, Arg1);
equal(
    #xqAtomicValue{type = 'xs:dateTime'} = Arg1,
    #xqAtomicValue{type = 'xs:dateTime'} = Arg2
) ->
    dateTime_equal(Arg2, Arg1);
equal(
    #xqAtomicValue{type = 'xs:dateTimeStamp'} = Arg1,
    #xqAtomicValue{type = 'xs:dateTime'} = Arg2
) ->
    dateTime_equal(Arg2, Arg1);
equal(
    #xqAtomicValue{type = 'xs:dateTime'} = Arg1,
    #xqAtomicValue{type = 'xs:dateTimeStamp'} = Arg2
) ->
    dateTime_equal(Arg2, Arg1);
equal(
    #xqAtomicValue{type = 'xs:yearMonthDuration'} = Arg1,
    #xqAtomicValue{type = 'xs:yearMonthDuration'} = Arg2
) ->
    duration_equal(Arg2, Arg1);
equal(
    #xqAtomicValue{type = 'xs:yearMonthDuration'} = Arg1,
    #xqAtomicValue{type = 'xs:duration'} = Arg2
) ->
    duration_equal(Arg2, Arg1);
equal(
    #xqAtomicValue{type = 'xs:yearMonthDuration'} = Arg1,
    #xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg2
) ->
    duration_equal(Arg2, Arg1);
equal(
    #xqAtomicValue{type = 'xs:duration'} = Arg1,
    #xqAtomicValue{type = 'xs:duration'} = Arg2
) ->
    duration_equal(Arg2, Arg1);
equal(
    #xqAtomicValue{type = 'xs:duration'} = Arg1,
    #xqAtomicValue{type = 'xs:yearMonthDuration'} = Arg2
) ->
    duration_equal(Arg2, Arg1);
equal(
    #xqAtomicValue{type = 'xs:duration'} = Arg1,
    #xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg2
) ->
    duration_equal(Arg2, Arg1);
equal(
    #xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg1,
    #xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg2
) ->
    duration_equal(Arg2, Arg1);
equal(
    #xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg1,
    #xqAtomicValue{type = 'xs:duration'} = Arg2
) ->
    duration_equal(Arg2, Arg1);
equal(
    #xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg1,
    #xqAtomicValue{type = 'xs:yearMonthDuration'} = Arg2
) ->
    duration_equal(Arg2, Arg1);
equal(
    #xqAtomicValue{type = 'xs:hexBinary'} = Arg1,
    #xqAtomicValue{type = 'xs:hexBinary'} = Arg2
) ->
    hexBinary_equal(Arg2, Arg1);
equal(
    #xqAtomicValue{type = 'xs:NOTATION'} = Arg1,
    #xqAtomicValue{type = 'xs:NOTATION'} = Arg2
) ->
    nOTATION_equal(Arg2, Arg1);
equal(
    #xqAtomicValue{type = 'xs:QName'} = Arg1,
    #xqAtomicValue{type = 'xs:QName'} = Arg2
) ->
    qName_equal(Arg2, Arg1);
equal(
    #xqAtomicValue{type = 'xs:time'} = Arg1,
    #xqAtomicValue{type = 'xs:time'} = Arg2
) ->
    time_equal(Arg2, Arg1);
equal(Arg1, Arg2) when is_binary(Arg1), is_binary(Arg2) ->
    string_equal(Arg2, Arg1);
equal(
    Arg1,
    #xqAtomicValue{type = T2} = Arg2
) when is_binary(Arg1), ?xs_string(T2) ->
    string_equal(Arg2, Arg1);
equal(
    #xqAtomicValue{type = T1} = Arg1,
    Arg2
) when ?xs_string(T1), is_binary(Arg2) ->
    string_equal(Arg2, Arg1);
equal(
    #xqAtomicValue{type = T1} = Arg1,
    #xqAtomicValue{type = T2} = Arg2
) when ?xs_string(T1), ?xs_string(T2) ->
    string_equal(Arg2, Arg1);
equal(
    Arg1,
    #xqAtomicValue{type = 'xs:anyURI'} = Arg2
) when is_binary(Arg1) ->
    string_equal(Arg2, Arg1);
equal(
    #xqAtomicValue{type = T1} = Arg1,
    #xqAtomicValue{type = 'xs:anyURI'} = Arg2
) when ?xs_string(T1) ->
    string_equal(Arg2, Arg1);
equal(
    #xqAtomicValue{type = T1} = Arg1,
    #xqAtomicValue{type = 'xs:untypedAtomic'} = Arg2
) when ?xs_string(T1) ->
    string_equal(Arg2, Arg1);
equal(
    Arg1,
    #xqAtomicValue{type = 'xs:untypedAtomic'} = Arg2
) when is_binary(Arg1) ->
    string_equal(Arg2, Arg1);
equal(
    #xqAtomicValue{type = 'xs:gYearMonth'} = Arg1,
    #xqAtomicValue{type = 'xs:gYearMonth'} = Arg2
) ->
    gYearMonth_equal(Arg2, Arg1);
equal(
    #xqAtomicValue{type = 'xs:gYear'} = Arg1,
    #xqAtomicValue{type = 'xs:gYear'} = Arg2
) ->
    gYear_equal(Arg2, Arg1);
equal(
    #xqAtomicValue{type = 'xs:gMonthDay'} = Arg1,
    #xqAtomicValue{type = 'xs:gMonthDay'} = Arg2
) ->
    gMonthDay_equal(Arg2, Arg1);
equal(
    #xqAtomicValue{type = 'xs:gMonth'} = Arg1,
    #xqAtomicValue{type = 'xs:gMonth'} = Arg2
) ->
    gMonth_equal(Arg1, Arg2);
equal(
    #xqAtomicValue{type = 'xs:gDay'} = Arg1,
    #xqAtomicValue{type = 'xs:gDay'} = Arg2
) ->
    gDay_equal(Arg2, Arg1);
equal(
    #xqAtomicValue{type = 'xs:untypedAtomic'} = Arg1,
    #xqAtomicValue{type = 'xs:anyURI'} = Arg2
) ->
    string_equal(Arg2, Arg1);
equal(
    #xqAtomicValue{type = 'xs:untypedAtomic'} = Arg1,
    #xqAtomicValue{type = 'xs:NCName'} = Arg2
) ->
    string_equal(Arg2, Arg1);
equal(
    #xqAtomicValue{type = 'xs:untypedAtomic'} = Arg1,
    #xqAtomicValue{type = T2} = Arg2
) when ?xs_string(T2) ->
    string_equal(Arg2, Arg1);
equal(
    #xqAtomicValue{type = 'xs:untypedAtomic'} = Arg1,
    Arg2
) when is_binary(Arg2) ->
    string_equal(Arg2, Arg1);
equal(
    #xqAtomicValue{type = 'xs:untypedAtomic'} = Arg1,
    #xqAtomicValue{type = 'xs:untypedAtomic'} = Arg2
) ->
    string_equal(Arg2, Arg1);
equal(B, #xqAtomicValue{}) when is_boolean(B) ->
    ?err('XPTY0004');
equal(#xqAtomicValue{type = 'xs:untypedAtomic'}, #xqAtomicValue{}) ->
    ?err('XPTY0004');
equal(#xqAtomicValue{}, #xqAtomicValue{}) ->
    ?err('XPTY0004');
equal([Arg1], Arg2) ->
    equal(Arg1, Arg2);
equal(Arg1, [Arg2]) ->
    equal(Arg1, Arg2);
equal(#xqFunction{}, _) ->
    ?err('FOTY0013');
equal(_, #xqFunction{}) ->
    ?err('FOTY0013');
equal(_, _) ->
    ?err('XPTY0004').

not_equal(undefined, undefined) ->
    [];
not_equal([], []) ->
    [];
not_equal([], _) ->
    [];
not_equal(_, []) ->
    [];
not_equal(Arg1, Arg2) when ?IS_ARRAY(Arg1) ->
    not_equal(array:to_list(Arg1), Arg2);
not_equal(Arg1, Arg2) when ?IS_ARRAY(Arg2) ->
    not_equal(Arg1, array:to_list(Arg2));
not_equal([Arg1], Arg2) ->
    not_equal(Arg1, Arg2);
not_equal(Arg1, [Arg2]) ->
    not_equal(Arg1, Arg2);
not_equal(Arg1, Arg2) ->
    negate(equal(Arg1, Arg2)).

greater_than(V1, V2) when is_integer(V1), is_integer(V2) ->
    % happens often so skip numeric equal
    V1 > V2;
greater_than(
    #xqAtomicValue{type = T1, value = V1},
    #xqAtomicValue{type = T2, value = V2}
) when ?xs_integer(T1), ?xs_integer(T2) ->
    % happens often so skip numeric equal
    V1 > V2;
greater_than(
    #xqAtomicValue{type = T1} = Arg1,
    #xqAtomicValue{type = T2} = Arg2
) when ?xs_numeric(T1), ?xs_numeric(T2) ->
    numeric_greater_than(Arg1, Arg2);
greater_than(#{nk := _} = Arg1, Arg2) ->
    At = xqerl_types:atomize(Arg1),
    greater_than(At, Arg2);
greater_than(Arg1, #{nk := _} = Arg2) ->
    At = xqerl_types:atomize(Arg2),
    greater_than(Arg1, At);
greater_than(Arg1, Arg2) when is_map(Arg1); is_map(Arg2) ->
    ?err('FOTY0013');
greater_than([], _) ->
    [];
greater_than(_, []) ->
    [];
greater_than(Arg1, Arg2) when ?IS_ARRAY(Arg1) ->
    greater_than(array:to_list(Arg1), Arg2);
greater_than(Arg1, Arg2) when ?IS_ARRAY(Arg2) ->
    greater_than(Arg1, array:to_list(Arg2));
greater_than(
    #xqAtomicValue{type = 'xs:anyURI'} = Arg1,
    #xqAtomicValue{type = 'xs:anyURI'} = Arg2
) ->
    string_greater_than(Arg1, Arg2);
greater_than(
    #xqAtomicValue{type = 'xs:anyURI'} = Arg1,
    Arg2
) when is_binary(Arg2) ->
    string_greater_than(Arg1, Arg2);
greater_than(
    #xqAtomicValue{type = 'xs:anyURI'} = Arg1,
    #xqAtomicValue{type = T2} = Arg2
) when ?xs_string(T2) ->
    string_greater_than(Arg1, Arg2);
greater_than(
    #xqAtomicValue{type = 'xs:base64Binary'} = Arg1,
    #xqAtomicValue{type = 'xs:base64Binary'} = Arg2
) ->
    base64Binary_greater_than(Arg1, Arg2);
greater_than(Arg1, Arg2) when is_boolean(Arg1), is_boolean(Arg2) ->
    boolean_greater_than(Arg1, Arg2);
greater_than(
    #xqAtomicValue{type = 'xs:date'} = Arg1,
    #xqAtomicValue{type = 'xs:date'} = Arg2
) ->
    date_greater_than(Arg1, Arg2);
greater_than(
    #xqAtomicValue{type = 'xs:dateTime'} = Arg1,
    #xqAtomicValue{type = 'xs:dateTime'} = Arg2
) ->
    dateTime_greater_than(Arg1, Arg2);
greater_than(
    #xqAtomicValue{type = 'xs:yearMonthDuration'} = Arg1,
    #xqAtomicValue{type = 'xs:yearMonthDuration'} = Arg2
) ->
    yearMonthDuration_greater_than(Arg1, Arg2);
greater_than(
    #xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg1,
    #xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg2
) ->
    dayTimeDuration_greater_than(Arg1, Arg2);
greater_than(
    #xqAtomicValue{type = 'xs:hexBinary'} = Arg1,
    #xqAtomicValue{type = 'xs:hexBinary'} = Arg2
) ->
    hexBinary_greater_than(Arg1, Arg2);
greater_than(
    #xqAtomicValue{type = 'xs:time'} = Arg1,
    #xqAtomicValue{type = 'xs:time'} = Arg2
) ->
    time_greater_than(Arg1, Arg2);
greater_than(Arg1, Arg2) when is_binary(Arg1), is_binary(Arg2) ->
    string_greater_than(Arg1, Arg2);
greater_than(
    #xqAtomicValue{type = T1} = Arg1,
    Arg2
) when ?xs_string(T1), is_binary(Arg2) ->
    string_greater_than(Arg1, Arg2);
greater_than(
    Arg1,
    #xqAtomicValue{type = T2} = Arg2
) when is_binary(Arg1), ?xs_string(T2) ->
    string_greater_than(Arg1, Arg2);
greater_than(
    #xqAtomicValue{type = T1} = Arg1,
    #xqAtomicValue{type = T2} = Arg2
) when ?xs_string(T1), ?xs_string(T2) ->
    string_greater_than(Arg1, Arg2);
greater_than(
    Arg1,
    #xqAtomicValue{type = 'xs:anyURI'} = Arg2
) when is_binary(Arg1) ->
    string_greater_than(Arg1, Arg2);
greater_than(
    #xqAtomicValue{type = 'xs:untypedAtomic'} = Arg1,
    #xqAtomicValue{type = 'xs:anyURI'} = Arg2
) ->
    string_greater_than(Arg1, Arg2);
greater_than(
    #xqAtomicValue{type = 'xs:untypedAtomic'} = Arg1,
    Arg2
) when is_binary(Arg2) ->
    string_greater_than(Arg1, Arg2);
greater_than(
    #xqAtomicValue{type = 'xs:untypedAtomic'} = Arg1,
    #xqAtomicValue{type = T2} = Arg2
) when ?xs_string(T2) ->
    string_greater_than(Arg1, Arg2);
greater_than(
    #xqAtomicValue{type = 'xs:untypedAtomic'} = Arg1,
    #xqAtomicValue{type = 'xs:untypedAtomic'} = Arg2
) ->
    string_greater_than(Arg1, Arg2);
greater_than([Arg1], Arg2) ->
    greater_than(Arg1, Arg2);
greater_than(Arg1, [Arg2]) ->
    greater_than(Arg1, Arg2);
greater_than(Arg1, Arg2) ->
    numeric_greater_than(Arg1, Arg2).

less_than(V1, V2) when is_integer(V1), is_integer(V2) ->
    % happens often so skip numeric equal
    V1 < V2;
less_than(
    #xqAtomicValue{type = T1, value = V1},
    #xqAtomicValue{type = T2, value = V2}
) when ?xs_integer(T1), ?xs_integer(T2) ->
    % happens often so skip numeric equal
    V1 < V2;
less_than(
    Arg1,
    Arg2
) when ?IS_NUMERIC(Arg1), ?IS_NUMERIC(Arg2) ->
    numeric_less_than(Arg1, Arg2);
less_than(
    Arg1,
    #xqAtomicValue{type = T2} = Arg2
) when ?IS_NUMERIC(Arg1), ?xs_numeric(T2) ->
    numeric_less_than(Arg1, Arg2);
less_than(
    #xqAtomicValue{type = T1} = Arg1,
    Arg2
) when ?xs_numeric(T1), ?IS_NUMERIC(Arg2) ->
    numeric_less_than(Arg1, Arg2);
less_than(
    #xqAtomicValue{type = T1} = Arg1,
    #xqAtomicValue{type = T2} = Arg2
) when ?xs_numeric(T1), ?xs_numeric(T2) ->
    numeric_less_than(Arg1, Arg2);
less_than(#{nk := _} = Arg1, Arg2) ->
    At = xqerl_types:atomize(Arg1),
    less_than(At, Arg2);
less_than(Arg1, #{nk := _} = Arg2) ->
    At = xqerl_types:atomize(Arg2),
    less_than(Arg1, At);
less_than(Arg1, Arg2) when is_map(Arg1); is_map(Arg2) ->
    ?err('FOTY0013');
less_than([], _) ->
    [];
less_than(_, []) ->
    [];
less_than(Arg1, Arg2) when ?IS_ARRAY(Arg1) ->
    less_than(array:to_list(Arg1), Arg2);
less_than(Arg1, Arg2) when ?IS_ARRAY(Arg2) ->
    less_than(Arg1, array:to_list(Arg2));
less_than(
    #xqAtomicValue{type = 'xs:anyURI'} = Arg1,
    #xqAtomicValue{type = 'xs:anyURI'} = Arg2
) ->
    string_less_than(Arg1, Arg2);
less_than(
    #xqAtomicValue{type = 'xs:anyURI'} = Arg1,
    Arg2
) when is_binary(Arg2) ->
    string_less_than(Arg1, Arg2);
less_than(
    #xqAtomicValue{type = 'xs:anyURI'} = Arg1,
    #xqAtomicValue{type = St, value = Arg2}
) when ?xs_string(St) ->
    string_less_than(Arg1, Arg2);
less_than(
    #xqAtomicValue{type = 'xs:base64Binary'} = Arg1,
    #xqAtomicValue{type = 'xs:base64Binary'} = Arg2
) ->
    base64Binary_less_than(Arg1, Arg2);
less_than(Arg1, Arg2) when is_boolean(Arg1), is_boolean(Arg2) ->
    boolean_less_than(Arg1, Arg2);
less_than(
    #xqAtomicValue{type = 'xs:date'} = Arg1,
    #xqAtomicValue{type = 'xs:date'} = Arg2
) ->
    date_less_than(Arg1, Arg2);
less_than(
    #xqAtomicValue{type = 'xs:dateTime'} = Arg1,
    #xqAtomicValue{type = 'xs:dateTime'} = Arg2
) ->
    dateTime_less_than(Arg1, Arg2);
less_than(
    #xqAtomicValue{type = 'xs:yearMonthDuration'} = Arg1,
    #xqAtomicValue{type = 'xs:yearMonthDuration'} = Arg2
) ->
    yearMonthDuration_less_than(Arg1, Arg2);
less_than(
    #xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg1,
    #xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg2
) ->
    dayTimeDuration_less_than(Arg1, Arg2);
less_than(
    #xqAtomicValue{type = 'xs:hexBinary'} = Arg1,
    #xqAtomicValue{type = 'xs:hexBinary'} = Arg2
) ->
    hexBinary_less_than(Arg1, Arg2);
less_than(
    #xqAtomicValue{type = 'xs:time'} = Arg1,
    #xqAtomicValue{type = 'xs:time'} = Arg2
) ->
    time_less_than(Arg1, Arg2);
less_than(Arg1, Arg2) when is_binary(Arg1), is_binary(Arg2) ->
    string_less_than(Arg1, Arg2);
less_than(
    #xqAtomicValue{type = Type1} = Arg1,
    Arg2
) when ?xs_string(Type1), is_binary(Arg2) ->
    string_less_than(Arg1, Arg2);
less_than(
    Arg1,
    #xqAtomicValue{type = Type2} = Arg2
) when is_binary(Arg1), ?xs_string(Type2) ->
    string_less_than(Arg1, Arg2);
less_than(
    #xqAtomicValue{type = Type1} = Arg1,
    #xqAtomicValue{type = Type2} = Arg2
) when ?xs_string(Type1), ?xs_string(Type2) ->
    string_less_than(Arg1, Arg2);
less_than(
    Arg1,
    #xqAtomicValue{type = 'xs:anyURI'} = Arg2
) when is_binary(Arg1) ->
    string_less_than(Arg1, Arg2);
less_than(
    #xqAtomicValue{type = St, value = Arg1},
    #xqAtomicValue{type = 'xs:anyURI'} = Arg2
) when ?xs_string(St) ->
    string_less_than(Arg1, Arg2);
less_than(
    #xqAtomicValue{type = 'xs:untypedAtomic'} = Arg1,
    #xqAtomicValue{type = 'xs:anyURI'} = Arg2
) ->
    string_less_than(Arg1, Arg2);
less_than(
    #xqAtomicValue{type = 'xs:untypedAtomic'} = Arg1,
    Arg2
) when is_binary(Arg2) ->
    string_less_than(Arg1, Arg2);
less_than(
    #xqAtomicValue{type = 'xs:untypedAtomic'} = Arg1,
    #xqAtomicValue{type = St, value = Arg2}
) when ?xs_string(St) ->
    string_less_than(Arg1, Arg2);
less_than(
    #xqAtomicValue{type = 'xs:untypedAtomic'} = Arg1,
    #xqAtomicValue{type = 'xs:untypedAtomic'} = Arg2
) ->
    string_less_than(Arg1, Arg2);
less_than([Arg1], Arg2) ->
    less_than(Arg1, Arg2);
less_than(Arg1, [Arg2]) ->
    less_than(Arg1, Arg2);
less_than(_, _) ->
    ?err('XPTY0004').

greater_than_eq(V1, V2) when is_integer(V1), is_integer(V2) ->
    % happens often so skip numeric
    V1 >= V2;
greater_than_eq(
    #xqAtomicValue{type = T1, value = V1},
    #xqAtomicValue{type = T2, value = V2}
) when ?xs_integer(T1), ?xs_integer(T2) ->
    % happens often so skip numeric
    V1 >= V2;
greater_than_eq(#{nk := _} = Arg1, Arg2) ->
    At = xqerl_types:atomize(Arg1),
    greater_than_eq(At, Arg2);
greater_than_eq(Arg1, #{nk := _} = Arg2) ->
    At = xqerl_types:atomize(Arg2),
    greater_than_eq(Arg1, At);
greater_than_eq(Arg1, Arg2) when is_map(Arg1); is_map(Arg2) ->
    ?err('FOTY0013');
greater_than_eq([], _) ->
    [];
greater_than_eq(_, []) ->
    [];
greater_than_eq(Arg1, Arg2) when ?IS_ARRAY(Arg1) ->
    greater_than_eq(array:to_list(Arg1), Arg2);
greater_than_eq(Arg1, Arg2) when ?IS_ARRAY(Arg2) ->
    greater_than_eq(Arg1, array:to_list(Arg2));
greater_than_eq(
    #xqAtomicValue{type = 'xs:anyURI'} = Arg1,
    #xqAtomicValue{type = 'xs:anyURI'} = Arg2
) ->
    negate(string_less_than(Arg1, Arg2));
greater_than_eq(
    #xqAtomicValue{type = 'xs:base64Binary'} = Arg1,
    #xqAtomicValue{type = 'xs:base64Binary'} = Arg2
) ->
    negate(base64Binary_less_than(Arg1, Arg2));
greater_than_eq(Arg1, Arg2) when is_boolean(Arg1), is_boolean(Arg2) ->
    negate(boolean_less_than(Arg1, Arg2));
greater_than_eq(
    #xqAtomicValue{type = 'xs:date'} = Arg1,
    #xqAtomicValue{type = 'xs:date'} = Arg2
) ->
    negate(date_less_than(Arg1, Arg2));
greater_than_eq(
    #xqAtomicValue{type = 'xs:dateTime'} = Arg1,
    #xqAtomicValue{type = 'xs:dateTime'} = Arg2
) ->
    negate(dateTime_less_than(Arg1, Arg2));
greater_than_eq(
    #xqAtomicValue{type = 'xs:yearMonthDuration'} = Arg1,
    #xqAtomicValue{type = 'xs:yearMonthDuration'} = Arg2
) ->
    negate(yearMonthDuration_less_than(Arg1, Arg2));
greater_than_eq(
    #xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg1,
    #xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg2
) ->
    negate(dayTimeDuration_less_than(Arg1, Arg2));
greater_than_eq(
    #xqAtomicValue{type = 'xs:hexBinary'} = Arg1,
    #xqAtomicValue{type = 'xs:hexBinary'} = Arg2
) ->
    negate(hexBinary_less_than(Arg1, Arg2));
greater_than_eq(
    #xqAtomicValue{type = 'xs:time'} = Arg1,
    #xqAtomicValue{type = 'xs:time'} = Arg2
) ->
    negate(time_less_than(Arg1, Arg2));
greater_than_eq(Arg1, Arg2) when is_binary(Arg1), is_binary(Arg2) ->
    negate(string_less_than(Arg1, Arg2));
greater_than_eq(
    #xqAtomicValue{type = 'xs:untypedAtomic'} = Arg1,
    #xqAtomicValue{type = 'xs:anyURI'} = Arg2
) ->
    negate(string_less_than(Arg1, Arg2));
greater_than_eq(
    #xqAtomicValue{type = 'xs:untypedAtomic'} = Arg1,
    Arg2
) when is_binary(Arg2) ->
    negate(string_less_than(Arg1, Arg2));
greater_than_eq(
    #xqAtomicValue{type = 'xs:untypedAtomic'} = Arg1,
    #xqAtomicValue{type = 'xs:untypedAtomic'} = Arg2
) ->
    negate(string_less_than(Arg1, Arg2));
greater_than_eq([Arg1], Arg2) ->
    greater_than_eq(Arg1, Arg2);
greater_than_eq(Arg1, [Arg2]) ->
    greater_than_eq(Arg1, Arg2);
greater_than_eq(Arg1, Arg2) ->
    numeric_greater_than(Arg1, Arg2) orelse numeric_equal(Arg1, Arg2).

less_than_eq(V1, V2) when is_integer(V1), is_integer(V2) ->
    % happens often so skip numeric
    V1 =< V2;
less_than_eq(
    #xqAtomicValue{type = T1, value = V1},
    #xqAtomicValue{type = T2, value = V2}
) when ?xs_integer(T1), ?xs_integer(T2) ->
    % happens often so skip numeric
    V1 =< V2;
less_than_eq(#{nk := _} = Arg1, Arg2) ->
    At = xqerl_types:atomize(Arg1),
    less_than_eq(At, Arg2);
less_than_eq(Arg1, #{nk := _} = Arg2) ->
    At = xqerl_types:atomize(Arg2),
    less_than_eq(Arg1, At);
less_than_eq(Arg1, Arg2) when is_map(Arg1); is_map(Arg2) ->
    ?err('FOTY0013');
less_than_eq([], _) ->
    [];
less_than_eq(_, []) ->
    [];
less_than_eq(Arg1, Arg2) when ?IS_ARRAY(Arg1) ->
    less_than_eq(array:to_list(Arg1), Arg2);
less_than_eq(Arg1, Arg2) when ?IS_ARRAY(Arg2) ->
    less_than_eq(Arg1, array:to_list(Arg2));
less_than_eq(
    #xqAtomicValue{type = 'xs:anyURI'} = Arg1,
    #xqAtomicValue{type = 'xs:anyURI'} = Arg2
) ->
    negate(string_greater_than(Arg1, Arg2));
less_than_eq(
    #xqAtomicValue{type = 'xs:anyURI'} = Arg1,
    Arg2
) when is_binary(Arg2) ->
    negate(string_greater_than(Arg1, Arg2));
less_than_eq(
    #xqAtomicValue{type = 'xs:base64Binary'} = Arg1,
    #xqAtomicValue{type = 'xs:base64Binary'} = Arg2
) ->
    negate(base64Binary_greater_than(Arg1, Arg2));
less_than_eq(Arg1, Arg2) when is_boolean(Arg1), is_boolean(Arg2) ->
    negate(boolean_greater_than(Arg1, Arg2));
less_than_eq(
    #xqAtomicValue{type = 'xs:date'} = Arg1,
    #xqAtomicValue{type = 'xs:date'} = Arg2
) ->
    negate(date_greater_than(Arg1, Arg2));
less_than_eq(
    #xqAtomicValue{type = 'xs:dateTime'} = Arg1,
    #xqAtomicValue{type = 'xs:dateTime'} = Arg2
) ->
    negate(dateTime_greater_than(Arg1, Arg2));
less_than_eq(
    #xqAtomicValue{type = 'xs:yearMonthDuration'} = Arg1,
    #xqAtomicValue{type = 'xs:yearMonthDuration'} = Arg2
) ->
    negate(yearMonthDuration_greater_than(Arg1, Arg2));
less_than_eq(
    #xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg1,
    #xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg2
) ->
    negate(dayTimeDuration_greater_than(Arg1, Arg2));
less_than_eq(
    #xqAtomicValue{type = 'xs:hexBinary'} = Arg1,
    #xqAtomicValue{type = 'xs:hexBinary'} = Arg2
) ->
    negate(hexBinary_greater_than(Arg1, Arg2));
less_than_eq(
    #xqAtomicValue{type = 'xs:time'} = Arg1,
    #xqAtomicValue{type = 'xs:time'} = Arg2
) ->
    negate(time_greater_than(Arg1, Arg2));
less_than_eq(
    Arg1,
    #xqAtomicValue{type = 'xs:anyURI'} = Arg2
) when is_binary(Arg1) ->
    negate(string_greater_than(Arg1, Arg2));
less_than_eq(Arg1, Arg2) when is_binary(Arg1), is_binary(Arg2) ->
    negate(string_greater_than(Arg1, Arg2));
less_than_eq(
    #xqAtomicValue{type = 'xs:untypedAtomic'} = Arg1,
    #xqAtomicValue{type = 'xs:anyURI'} = Arg2
) ->
    negate(string_greater_than(Arg1, Arg2));
less_than_eq(
    #xqAtomicValue{type = 'xs:untypedAtomic'} = Arg1,
    Arg2
) when is_binary(Arg2) ->
    negate(string_greater_than(Arg1, Arg2));
less_than_eq(
    #xqAtomicValue{type = 'xs:untypedAtomic'} = Arg1,
    #xqAtomicValue{type = 'xs:untypedAtomic'} = Arg2
) ->
    negate(string_greater_than(Arg1, Arg2));
less_than_eq([Arg1], Arg2) ->
    less_than_eq(Arg1, Arg2);
less_than_eq(Arg1, [Arg2]) ->
    less_than_eq(Arg1, Arg2);
less_than_eq(Arg1, Arg2) ->
    numeric_less_than(Arg1, Arg2) == true orelse
        numeric_equal(Arg1, Arg2) == true.

%% unary returns sequence
unary_plus([]) ->
    [];
unary_plus([Arg1]) ->
    unary_plus(Arg1);
unary_plus(#{nk := _} = Arg1) ->
    unary_plus(atomize_list(Arg1));
unary_plus(#xqAtomicValue{type = T} = Arg1) when ?xs_numeric(T) ->
    Arg1;
unary_plus(Arg1) when ?IS_NUMERIC(Arg1) ->
    Arg1;
unary_plus(#xqAtomicValue{type = 'xs:untypedAtomic'} = Arg1) ->
    xqerl_types:cast_as(Arg1, 'xs:double');
unary_plus(_) ->
    ?err('XPTY0004').

unary_minus([]) ->
    [];
unary_minus([Arg1]) ->
    unary_minus(Arg1);
unary_minus(#{nk := _} = Arg1) ->
    unary_minus(atomize_list(Arg1));
unary_minus(Arg1) when ?IS_NUMERIC(Arg1) ->
    numeric_unary_minus(Arg1);
unary_minus(#xqAtomicValue{type = T} = Arg1) when ?xs_numeric(T) ->
    numeric_unary_minus(Arg1);
unary_minus(#xqAtomicValue{type = 'xs:untypedAtomic'} = Arg1) ->
    numeric_unary_minus(xqerl_types:cast_as(Arg1, 'xs:double'));
unary_minus(_) ->
    ?err('XPTY0004').

node_before([], _) ->
    [];
node_before(_, []) ->
    [];
node_before(
    #{nk := _, id := Id1},
    #{nk := _, id := Id2}
) ->
    Id1 < Id2;
node_before([Seq1], [Seq2]) ->
    node_before(Seq1, Seq2);
node_before([Seq1], #{nk := _} = N2) ->
    node_before(Seq1, N2);
node_before(#{nk := _} = N1, [Seq2]) ->
    node_before(N1, Seq2);
node_before(Seq1, Seq2) ->
    ?dbg("node_before(Seq1, Seq2)", {Seq1, Seq2}),
    ?err('XPTY0004').

node_after([], _) ->
    [];
node_after(_, []) ->
    [];
node_after(
    #{nk := _, id := Id1},
    #{nk := _, id := Id2}
) ->
    Id1 > Id2;
node_after([Seq1], [Seq2]) ->
    node_after(Seq1, Seq2);
node_after([Seq1], #{nk := _} = N2) ->
    node_after(Seq1, N2);
node_after(#{nk := _} = N1, [Seq2]) ->
    node_after(N1, Seq2);
node_after(Seq1, Seq2) ->
    ?dbg("node_after(Seq1, Seq2)", {Seq1, Seq2}),
    ?err('XPTY0004').

node_is([], _) ->
    [];
node_is(_, []) ->
    [];
node_is(#{nk := _} = A, #{nk := _} = A) ->
    true;
node_is(
    #{nk := _, id := Id1},
    #{nk := _, id := Id2}
) ->
    Id1 == Id2;
node_is([Seq1], [Seq2]) ->
    node_is(Seq1, Seq2);
node_is([Seq1], #{nk := _} = N2) ->
    node_is(Seq1, N2);
node_is(#{nk := _} = N1, [Seq2]) ->
    node_is(N1, Seq2);
node_is(O1, O2) ->
    ?dbg("node_is(O1, O2)", {O1, O2}),
    ?err('XPTY0004').

range_val_comp_any(Op, Val, #range{min = Min, max = Min}) ->
    value_compare(Op, Val, Min);
range_val_comp_any(Op, #range{min = Min, max = Min}, Val) ->
    value_compare(Op, Min, Val);
range_val_comp_any(Op, #range{min = Min} = Range, Val) ->
    case value_compare(Op, Min, Val) of
        true ->
            true;
        _ ->
            range_val_comp_any(Op, Range#range{min = Min + 1}, Val)
    end;
range_val_comp_any(Op, Val, #range{min = Min} = Range) ->
    case value_compare(Op, Val, Min) of
        true ->
            true;
        _ ->
            range_val_comp_any(Op, Val, Range#range{min = Min + 1})
    end.

range_range_comp_any(
    Op,
    Range1,
    #range{min = Min} = Range2
) ->
    range_range_comp_any(Op, Range1, Range2, Min).

range_range_comp_any(
    Op,
    #range{min = Min1, max = Min1},
    #range{min = Min2, max = Min2},
    _
) ->
    xqerl_types:value(value_compare(Op, Min1, Min2));
range_range_comp_any(
    Op,
    #range{min = Min} = Range1,
    #range{min = Min2, max = Min2},
    Orig
) ->
    case value_compare(Op, Min, Min2) of
        true ->
            true;
        _ ->
            range_range_comp_any(
                Op,
                Range1#range{min = Min + 1},
                #range{min = Orig, max = Min2, cnt = 1},
                Orig
            )
    end;
range_range_comp_any(
    Op,
    #range{min = Min} = Range1,
    #range{min = Min2} = Range2,
    Orig
) ->
    case value_compare(Op, Min, Min2) of
        true ->
            true;
        _ ->
            range_range_comp_any(
                Op,
                Range1,
                Range2#range{min = Min2 + 1},
                Orig
            )
    end.

-define(IS_ATOMIC(A),
    is_record(A, xqAtomicValue) orelse is_number(A) orelse is_boolean(A) orelse is_binary(A)
).

% returns xs:boolean
general_compare(_Op, [], _) ->
    false;
general_compare(_Op, _, []) ->
    false;
general_compare(Op, [A], B) ->
    general_compare(Op, A, B);
general_compare(Op, A, [B]) ->
    general_compare(Op, A, B);
general_compare(Op, Arg1, Arg2) when ?IS_ARRAY(Arg1) ->
    general_compare(Op, array:to_list(Arg1), Arg2);
general_compare(Op, Arg1, Arg2) when ?IS_ARRAY(Arg2) ->
    general_compare(Op, Arg1, array:to_list(Arg2));
general_compare(Op, A1, A2) when ?IS_ATOMIC(A1), ?IS_ATOMIC(A2) ->
    value_compare(Op, A1, A2);
general_compare(Op, #range{} = List1, A2) when ?IS_ATOMIC(A2) ->
    range_val_comp_any(Op, List1, A2);
general_compare(Op, A1, #range{} = List2) when ?IS_ATOMIC(A1) ->
    range_val_comp_any(Op, A1, List2);
general_compare(Op, #range{} = List1, #range{} = List2) ->
    range_range_comp_any(Op, List1, List2);
general_compare(Op, A1, List2) when ?IS_ATOMIC(A1), is_list(List2) ->
    general_compare_any_2(List2, Op, A1);
general_compare(Op, List1, A2) when is_list(List1), ?IS_ATOMIC(A2) ->
    general_compare_any_1(List1, Op, A2);
general_compare(Op, V1, #{nk := _} = V2) ->
    general_compare(Op, V1, xqerl_types:atomize(V2));
general_compare(Op, #{nk := _} = V1, V2) ->
    general_compare(Op, xqerl_types:atomize(V1), V2);
general_compare(Op, List1, List2) when Op =:= '>'; Op =:= '>='; Op =:= '!=' ->
    AList1 = lists:reverse(lists:usort(atomize_list(List1))),
    AList2 = lists:usort(atomize_list(List2)),
    cartesian_compare(Op, AList1, AList2);
general_compare(Op, List1, List2) when Op =:= '<'; Op =:= '<=' ->
    AList1 = lists:usort(atomize_list(List1)),
    AList2 = lists:reverse(lists:usort(atomize_list(List2))),
    cartesian_compare(Op, AList1, AList2);
general_compare(Op, List1, List2) ->
    AList1 = atomize_list(List1),
    AList2 = atomize_list(List2),
    cartesian_compare(Op, AList1, AList2).

cartesian_compare(Op, List1, List2) ->
    Bool = lists:any(
        fun
            (#range{} = V1) ->
                lists:any(
                    fun
                        (#range{} = V2) ->
                            range_range_comp_any(Op, V1, V2);
                        (V2) ->
                            range_val_comp_any(Op, V1, V2)
                    end,
                    List2
                );
            (V1) ->
                lists:any(
                    fun
                        (#range{} = V2) ->
                            range_val_comp_any(Op, V1, V2);
                        (V2) ->
                            value_compare(Op, V1, V2)
                    end,
                    List2
                )
        end,
        List1
    ),
    Bool.

general_compare_any_1([V1 | R1], Op, V2) when ?IS_ATOMIC(V1) ->
    case value_compare(Op, V1, V2) of
        true ->
            true;
        _ ->
            general_compare_any_1(R1, Op, V2)
    end;
general_compare_any_1([#range{} = V1 | R1], Op, V2) ->
    case range_val_comp_any(Op, V1, V2) of
        true ->
            true;
        _ ->
            general_compare_any_1(R1, Op, V2)
    end;
general_compare_any_1([V1 | R1], Op, V2) ->
    V3 = xqerl_types:atomize(V1),
    case value_compare(Op, V3, V2) of
        true ->
            true;
        _ ->
            general_compare_any_1(R1, Op, V2)
    end;
general_compare_any_1([], _, _) ->
    false.

general_compare_any_2([V2 | R2], Op, V1) when ?IS_ATOMIC(V2) ->
    case value_compare(Op, V1, V2) of
        true ->
            true;
        _ ->
            general_compare_any_2(R2, Op, V1)
    end;
general_compare_any_2([#range{} = V2 | R2], Op, V1) ->
    case range_val_comp_any(Op, V1, V2) of
        true ->
            true;
        _ ->
            general_compare_any_2(R2, Op, V1)
    end;
general_compare_any_2([V2 | R2], Op, V1) ->
    V3 = xqerl_types:atomize(V2),
    case value_compare(Op, V1, V3) of
        true ->
            true;
        _ ->
            general_compare_any_2(R2, Op, V1)
    end;
general_compare_any_2([], _, _) ->
    false.

-compile({inline, [{value_compare, 3}]}).

value_compare(
    Op,
    Val1,
    #xqAtomicValue{
        type = Type,
        value = Val2
    }
) when is_binary(Val1), ?xs_string(Type) ->
    value_compare(Op, Val1, Val2);
value_compare(
    Op,
    #xqAtomicValue{
        type = Type,
        value = Val1
    },
    Val2
) when is_binary(Val2), ?xs_string(Type) ->
    value_compare(Op, Val1, Val2);
%2a both are untyped
value_compare(
    Op,
    #xqAtomicValue{type = 'xs:untypedAtomic', value = Val1},
    #xqAtomicValue{type = 'xs:untypedAtomic', value = Val2}
) when is_binary(Val1), is_binary(Val2) ->
    value_compare(Op, Val1, Val2);
value_compare(
    Op,
    #xqAtomicValue{type = 'xs:untypedAtomic'} = Val1,
    #xqAtomicValue{type = 'xs:untypedAtomic'} = Val2
) ->
    S1 = xqerl_mod_xs:xs_string([], Val1),
    S2 = xqerl_mod_xs:xs_string([], Val2),
    value_compare(Op, S1, S2);
%2b one is untyped
value_compare(
    Op,
    #xqAtomicValue{type = 'xs:untypedAtomic'} = Val1,
    #xqAtomicValue{type = 'xs:QName'} = Val2
) ->
    value_compare(Op, Val1, xqerl_types:cast_as(Val2, 'xs:string'));
value_compare(
    Op,
    #xqAtomicValue{type = 'xs:untypedAtomic'} = Val1,
    Val2
) when is_boolean(Val2) ->
    value_compare(Op, xqerl_types:cast_as(Val1, 'xs:boolean'), Val2);
value_compare(
    Op,
    #xqAtomicValue{type = 'xs:untypedAtomic'} = Val1,
    #xqAtomicValue{type = Type} = Val2
) ->
    V1 =
        case Type of
            'xs:dayTimeDuration' ->
                xqerl_types:cast_as(Val1, 'xs:dayTimeDuration');
            'xs:yearMonthDuration' ->
                xqerl_types:cast_as(Val1, 'xs:yearMonthDuration');
            Type when ?xs_string(Type) ->
                xqerl_types:cast_as(Val1, 'xs:string');
            _ when ?xs_numeric(Type) ->
                xqerl_types:cast_as(Val1, 'xs:double');
            _ ->
                xqerl_types:cast_as(Val1, Type)
        end,
    value_compare(Op, V1, Val2);
value_compare(
    Op,
    #xqAtomicValue{type = 'xs:untypedAtomic'} = Val1,
    Val2
) when is_binary(Val2) ->
    V1 = xqerl_types:cast_as(Val1, 'xs:string'),
    value_compare(Op, V1, Val2);
value_compare(
    Op,
    #xqAtomicValue{type = 'xs:untypedAtomic'} = Val1,
    Val2
) when is_number(Val2) ->
    V1 = xqerl_types:cast_as(Val1, 'xs:double'),
    value_compare(Op, V1, Val2);
value_compare(
    Op,
    #xqAtomicValue{type = 'xs:QName'} = Val1,
    #xqAtomicValue{type = 'xs:untypedAtomic'} = Val2
) ->
    value_compare(Op, xqerl_types:cast_as(Val1, 'xs:string'), Val2);
value_compare(
    Op,
    Val1,
    #xqAtomicValue{type = 'xs:untypedAtomic'} = Val2
) when is_boolean(Val1) ->
    value_compare(Op, Val1, xqerl_types:cast_as(Val2, 'xs:boolean'));
value_compare(
    Op,
    #xqAtomicValue{type = Type} = Val1,
    #xqAtomicValue{type = 'xs:untypedAtomic'} = Val2
) ->
    V2 =
        case Type of
            'xs:dayTimeDuration' ->
                xqerl_types:cast_as(Val2, 'xs:dayTimeDuration');
            'xs:yearMonthDuration' ->
                xqerl_types:cast_as(Val2, 'xs:yearMonthDuration');
            Type when ?xs_string(Type) ->
                xqerl_types:cast_as(Val2, 'xs:string');
            Type when ?xs_numeric(Type) ->
                xqerl_types:cast_as(Val2, 'xs:double');
            _ ->
                xqerl_types:cast_as(Val2, Type)
        end,
    value_compare(Op, Val1, V2);
value_compare(
    Op,
    Val1,
    #xqAtomicValue{type = 'xs:untypedAtomic'} = Val2
) when is_binary(Val1) ->
    V2 = xqerl_types:cast_as(Val2, 'xs:string'),
    value_compare(Op, Val1, V2);
value_compare(
    Op,
    Val1,
    #xqAtomicValue{type = 'xs:untypedAtomic'} = Val2
) when is_number(Val1) ->
    V2 = xqerl_types:cast_as(Val2, 'xs:double'),
    value_compare(Op, Val1, V2);
% 2c do the compare
value_compare(Op, Val1, Val2) ->
    case Op of
        '=' ->
            equal(Val1, Val2);
        '!=' ->
            not_equal(Val1, Val2);
        '<' ->
            less_than(Val1, Val2);
        '<=' ->
            less_than_eq(Val1, Val2);
        '>' ->
            greater_than(Val1, Val2);
        '>=' ->
            greater_than_eq(Val1, Val2)
    end.

atomize_list(#xqAtomicValue{} = V) ->
    [V];
atomize_list(V) when is_atom(V); is_number(V); is_binary(V) ->
    [V];
atomize_list(#{nk := _} = N) ->
    [xqerl_types:atomize(N)];
atomize_list(A) when ?IS_ARRAY(A) ->
    atomize_list(array:to_list(A));
atomize_list([#xqAtomicValue{} = H | T]) ->
    [H | atomize_list(T)];
atomize_list([H | T]) when is_atom(H); is_number(H); is_binary(H) ->
    [H | atomize_list(T)];
atomize_list([#{nk := _} = H | T]) ->
    [xqerl_types:atomize(H) | atomize_list(T)];
atomize_list([A | T]) when ?IS_ARRAY(A) ->
    atomize_list(array:to_list(A)) ++ atomize_list(T);
atomize_list([H | T]) when is_list(H) ->
    atomize_list(H) ++ atomize_list(T);
atomize_list([#range{} = H | T]) ->
    [H | atomize_list(T)];
atomize_list([#xqFunction{} | _]) ->
    ?err('FOTY0013');
atomize_list(Seq) when not is_list(Seq) ->
    atomize_list([Seq]);
atomize_list([]) ->
    [].

numeric_type_val(I) when is_integer(I) ->
    {'xs:integer', I};
numeric_type_val(I) when is_float(I) ->
    {'xs:double', I};
numeric_type_val(#xqAtomicValue{type = TypeA0, value = neg_zero}) when ?xs_numeric(TypeA0) ->
    {TypeA0, 0.0};
numeric_type_val(#xqAtomicValue{type = TypeA0, value = ValA0}) when ?xs_numeric(TypeA0) ->
    {TypeA0, ValA0};
numeric_type_val(neg_zero) ->
    {'xs:double', 0.0};
numeric_type_val(At) when At == nan; At == neg_infinity; At == infinity ->
    {'xs:double', At};
numeric_type_val(_) ->
    ?err('XPTY0004').

numeric_type_val_div(I) when is_integer(I) ->
    {'xs:integer', I};
numeric_type_val_div(I) when is_float(I) ->
    {'xs:double', I};
numeric_type_val_div(#xqAtomicValue{type = TypeA0, value = ValA0}) when ?xs_numeric(TypeA0) ->
    {TypeA0, ValA0};
numeric_type_val_div(At) when At == nan; At == neg_zero; At == neg_infinity; At == infinity ->
    {'xs:double', At};
numeric_type_val_div(_) ->
    ?err('XPTY0004').

% returns: numeric
numeric_add(A, B) ->
    {TypeA, ValA} = numeric_type_val(A),
    {TypeB, ValB} = numeric_type_val(B),
    TypeC = get_numeric_type(TypeA, TypeB),
    ValC = numeric_add_1(TypeC, ValA, ValB),
    case TypeC of
        'xs:integer' ->
            ValC;
        'xs:double' ->
            ValC;
        _ ->
            #xqAtomicValue{type = TypeC, value = ValC}
    end.

numeric_add_1(TypeC, ValA, ValB) when ?xs_integer(TypeC) ->
    ValA + ValB;
numeric_add_1(_TypeC, infinity, infinity) ->
    infinity;
numeric_add_1(_TypeC, neg_infinity, neg_infinity) ->
    neg_infinity;
numeric_add_1(_TypeC, infinity, neg_infinity) ->
    nan;
numeric_add_1(_TypeC, neg_infinity, infinity) ->
    nan;
numeric_add_1(_TypeC, ValA, ValB) when ValA == nan; ValB == nan ->
    nan;
numeric_add_1(_TypeC, ValA, ValB) when ValA == infinity; ValB == infinity ->
    infinity;
numeric_add_1(_TypeC, ValA, ValB) when ValA == neg_infinity; ValB == neg_infinity ->
    neg_infinity;
numeric_add_1('xs:float', ValA, ValB) ->
    % float could be overflowed
    case xqerl_numeric:float(ValA) + xqerl_numeric:float(ValB) of
        X when X > ?MAXFLOAT ->
            infinity;
        X when X < ?MINFLOAT ->
            neg_infinity;
        X ->
            xqerl_numeric:float(X)
    end;
numeric_add_1(_TypeC, ValA, ValB) ->
    xqerl_numeric:add(ValA, ValB).

% returns: numeric
numeric_subtract(A, B) ->
    {TypeA, ValA} = numeric_type_val(A),
    {TypeB, ValB} = numeric_type_val(B),
    TypeC = get_numeric_type(TypeA, TypeB),
    ValC = numeric_subtract_1(TypeC, ValA, ValB),
    case TypeC of
        'xs:integer' ->
            ValC;
        'xs:double' ->
            ValC;
        _ ->
            #xqAtomicValue{type = TypeC, value = ValC}
    end.

numeric_subtract_1(TypeC, ValA, ValB) when ?xs_integer(TypeC) ->
    ValA - ValB;
numeric_subtract_1(_TypeC, ValA, ValB) when
    ValA == infinity, ValB == infinity; ValA == neg_infinity, ValB == neg_infinity
->
    nan;
numeric_subtract_1(_TypeC, ValA, ValB) when ValA == nan; ValB == nan ->
    nan;
numeric_subtract_1(_TypeC, infinity, _ValB) ->
    infinity;
numeric_subtract_1(_TypeC, neg_infinity, _ValB) ->
    neg_infinity;
numeric_subtract_1(_TypeC, _ValA, infinity) ->
    neg_infinity;
numeric_subtract_1(_TypeC, _ValA, neg_infinity) ->
    infinity;
numeric_subtract_1(_TypeC, ValA, ValB) when
    (is_integer(ValA) orelse trunc(ValA) == ValA) andalso
        (is_integer(ValB) orelse trunc(ValB) == ValB)
->
    ValA - ValB;
numeric_subtract_1('xs:float', ValA, ValB) ->
    % float could be overflowed
    case xqerl_numeric:float(ValA) - xqerl_numeric:float(ValB) of
        X when X > ?MAXFLOAT ->
            infinity;
        X when X < ?MINFLOAT ->
            neg_infinity;
        X ->
            xqerl_numeric:float(X)
    end;
numeric_subtract_1(_TypeC, ValA, ValB) ->
    xqerl_numeric:subtract(ValA, ValB).

% returns: numeric
numeric_multiply(A, B) ->
    {TypeA, ValA} = numeric_type_val(A),
    {TypeB, ValB} = numeric_type_val(B),
    TypeC = get_numeric_type(TypeA, TypeB),
    ValC = numeric_multiply_1(TypeC, ValA, ValB),
    case TypeC of
        'xs:integer' ->
            ValC;
        'xs:double' ->
            ValC;
        _ ->
            #xqAtomicValue{type = TypeC, value = ValC}
    end.

numeric_multiply_1(TypeC, ValA, ValB) when is_number(ValA), is_number(ValB); ?xs_integer(TypeC) ->
    ValA * ValB;
numeric_multiply_1(_TypeC, infinity, ValB) when is_number(ValB) andalso ValB > 0 ->
    infinity;
numeric_multiply_1(_TypeC, infinity, ValB) when is_number(ValB) andalso ValB < 0 ->
    neg_infinity;
numeric_multiply_1(_TypeC, ValA, infinity) when is_number(ValA) andalso ValA > 0 ->
    infinity;
numeric_multiply_1(_TypeC, ValA, infinity) when is_number(ValA) andalso ValA < 0 ->
    neg_infinity;
numeric_multiply_1(_TypeC, infinity, ValB) when ValB == 0 ->
    nan;
numeric_multiply_1(_TypeC, ValA, infinity) when ValA == 0 ->
    nan;
numeric_multiply_1(_TypeC, ValA, ValB) when ValA == nan; ValB == nan ->
    nan;
numeric_multiply_1('xs:float', ValA, ValB) ->
    % float could be overflowed
    case xqerl_numeric:float(ValA) * xqerl_numeric:float(ValB) of
        X when X > ?MAXFLOAT ->
            infinity;
        X when X < ?MINFLOAT ->
            neg_infinity;
        X ->
            xqerl_numeric:float(X)
    end;
numeric_multiply_1(_TypeC, ValA, ValB) ->
    xqerl_numeric:multiply(ValA, ValB).

% returns: numeric; but xs:decimal if both operands are xs:integer
numeric_divide(A, B) ->
    {TypeA, ValA} = numeric_type_val_div(A),
    {TypeB, ValB} = numeric_type_val_div(B),
    TypeC =
        case numtype(max(num(TypeA), num(TypeB))) of
            P when ?xs_integer(P) -> 'xs:decimal';
            P -> P
        end,
    ValC = numeric_divide_1(TypeC, ValA, ValB),
    case TypeC of
        'xs:integer' ->
            ValC;
        'xs:double' ->
            ValC;
        _ ->
            #xqAtomicValue{type = TypeC, value = ValC}
    end.

numeric_divide_1(_TypeC, neg_infinity, Vb) when is_number(Vb), Vb >= 0 ->
    neg_infinity;
numeric_divide_1(_TypeC, neg_infinity, Vb) when is_number(Vb) ->
    infinity;
numeric_divide_1(_TypeC, neg_infinity, infinity) ->
    nan;
numeric_divide_1(_TypeC, neg_infinity, neg_infinity) ->
    nan;
numeric_divide_1(_TypeC, infinity, Vb) when is_number(Vb), Vb >= 0 ->
    infinity;
numeric_divide_1(_TypeC, infinity, Vb) when is_number(Vb) ->
    neg_infinity;
numeric_divide_1(_TypeC, infinity, infinity) ->
    nan;
numeric_divide_1(_TypeC, infinity, neg_infinity) ->
    nan;
numeric_divide_1(_TypeC, neg_zero, neg_zero) ->
    nan;
numeric_divide_1(_TypeC, neg_zero, Vb) when Vb == 0 ->
    nan;
numeric_divide_1(_TypeC, Va, neg_zero) when is_number(Va), Va > 0 ->
    neg_infinity;
numeric_divide_1(_TypeC, Va, neg_zero) when is_number(Va), Va < 0 ->
    infinity;
numeric_divide_1(_TypeC, Va, neg_zero) when Va == 0 ->
    nan;
numeric_divide_1(_TypeC, Va, neg_infinity) when Va == 0 ->
    neg_zero;
numeric_divide_1(TypeC, Va, Vb) when Vb == 0, is_number(Va), Va > 0, TypeC =/= 'xs:decimal' ->
    infinity;
numeric_divide_1(TypeC, Va, Vb) when Vb == 0, is_number(Va), Va < 0, TypeC =/= 'xs:decimal' ->
    neg_infinity;
numeric_divide_1(_TypeC, Va, Vb) when Va == 0, Vb == 0 ->
    nan;
numeric_divide_1(_TypeC, Va, _) when Va == 0 ->
    0;
numeric_divide_1(_TypeC, _, Vb) when Vb == 0 ->
    ?err('FOAR0001');
numeric_divide_1(_TypeC, Va, Vb) when Va == nan; Vb == nan ->
    nan;
numeric_divide_1(TypeC, Va, Vb) when TypeC == 'xs:float' ->
    % float could be overflowed
    case xqerl_numeric:float(Va) / xqerl_numeric:float(Vb) of
        X when X > ?MAXFLOAT ->
            infinity;
        X when X < ?MINFLOAT ->
            neg_infinity;
        X ->
            xqerl_numeric:float(X)
    end;
numeric_divide_1(_TypeC, Va, Vb) ->
    case xqerl_numeric:equal(Vb, 0) of
        true ->
            ?err('FOAR0001');
        _ ->
            xqerl_numeric:divide(Va, Vb)
    end.

% returns: xs:integer
numeric_integer_divide(A, B) ->
    {TypeA, ValA} = numeric_type_val_div(A),
    {TypeB, ValB} = numeric_type_val_div(B),
    TypeC = get_numeric_type(TypeA, TypeB),
    numeric_integer_divide_1(TypeC, ValA, ValB).

numeric_integer_divide_1(_TypeC, _ValA, ValB) when ValB == 0 ->
    ?err('FOAR0001');
numeric_integer_divide_1(_TypeC, ValA, ValB) when is_integer(ValA), is_integer(ValB) ->
    ValA div ValB;
numeric_integer_divide_1(_TypeC, ValA, ValB) when
    ValA == nan; ValA == infinity; ValA == neg_infinity; ValB == nan
->
    ?err('FOAR0002');
numeric_integer_divide_1(_TypeC, _ValA, ValB) when ValB == infinity; ValB == neg_infinity ->
    0;
numeric_integer_divide_1('xs:float', ValA, ValB) ->
    % float could be overflowed
    case trunc(xqerl_numeric:float(ValA) / xqerl_numeric:float(ValB)) of
        X when X > ?MAXFLOAT ->
            ?err('FOAR0002');
        X when X < ?MINFLOAT ->
            ?err('FOAR0002');
        X ->
            X
    end;
numeric_integer_divide_1(_TypeC, ValA, ValB) ->
    case xqerl_numeric:equal(ValB, 0) of
        true ->
            ?err('FOAR0001');
        _ ->
            xqerl_numeric:integer(xqerl_numeric:divide(ValA, ValB))
    end.

% returns: numeric
numeric_mod(A, B) ->
    {TypeA, ValA} = numeric_type_val_div(A),
    {TypeB, ValB} = numeric_type_val_div(B),
    TypeC = get_numeric_type(TypeA, TypeB),
    ValC = numeric_mod_1(TypeC, ValA, ValB, A, B),
    case TypeC of
        'xs:integer' ->
            ValC;
        'xs:double' ->
            ValC;
        _ when is_record(ValC, xqAtomicValue) ->
            ValC;
        _ ->
            #xqAtomicValue{type = TypeC, value = ValC}
    end.

numeric_mod_1(_TypeC, ValA, ValB, _A, _B) when is_integer(ValA), is_integer(ValB), ValB =/= 0 ->
    ValA rem ValB;
numeric_mod_1(TypeC, _ValA, ValB, _A, _B) when
    ValB == 0, TypeC =/= 'xs:double', TypeC =/= 'xs:float'
->
    ?err('FOAR0001');
numeric_mod_1(_TypeC, ValA, ValB, _A, _B) when
    ValA == nan; ValB == nan; ValB == 0; ValA == neg_infinity; ValA == infinity; ValB == neg_zero
->
    nan;
numeric_mod_1(_TypeC, ValA, ValB, _A, _B) when
    ValB == neg_infinity; ValA == neg_zero; ValB == infinity
->
    ValA;
numeric_mod_1(_TypeC, ValA, ValB, _A, _B) when ValA == 0; abs(ValA) == abs(ValB) ->
    0.0;
numeric_mod_1(_TypeC, _ValA, _ValB, A, B) ->
    Div = numeric_integer_divide(A, B),
    Mul = numeric_multiply(Div, B),
    numeric_subtract(A, Mul).

% returns: xs:boolean
numeric_equal(ValA, ValB) when is_integer(ValA), is_integer(ValB) ->
    ValA == ValB;
numeric_equal(ValA, ValB) when is_float(ValA), is_integer(ValB) ->
    ValA == erlang:float(ValB);
numeric_equal(ValA, ValB) when is_integer(ValA), is_float(ValB) ->
    erlang:float(ValA) == ValB;
numeric_equal(ValA, ValB) when is_float(ValA), is_float(ValB) ->
    ValA == ValB;
numeric_equal(#xqAtomicValue{value = ValA}, ValB) when is_number(ValA), is_number(ValB) ->
    ValA == ValB;
numeric_equal(#xqAtomicValue{value = #xsDecimal{int = ValA, scf = 0}}, ValB) when is_number(ValB) ->
    ValA == ValB;
numeric_equal(ValA, #xqAtomicValue{value = ValB}) when is_number(ValA), is_number(ValB) ->
    ValA == ValB;
numeric_equal(ValA, #xqAtomicValue{value = #xsDecimal{int = ValB, scf = 0}}) when is_number(ValA) ->
    ValA == ValB;
numeric_equal(#xqAtomicValue{value = ValA}, #xqAtomicValue{value = ValB}) when
    is_number(ValA), is_number(ValB)
->
    ValA == ValB;
numeric_equal(nan, _) ->
    false;
numeric_equal(#xqAtomicValue{value = nan}, _) ->
    false;
numeric_equal(_, nan) ->
    false;
numeric_equal(_, #xqAtomicValue{value = nan}) ->
    false;
numeric_equal(infinity, infinity) ->
    true;
numeric_equal(infinity, #xqAtomicValue{value = infinity}) ->
    true;
numeric_equal(#xqAtomicValue{value = infinity}, infinity) ->
    true;
numeric_equal(
    #xqAtomicValue{value = infinity},
    #xqAtomicValue{value = infinity}
) ->
    true;
numeric_equal(infinity, _) ->
    false;
numeric_equal(#xqAtomicValue{value = infinity}, _) ->
    false;
numeric_equal(_, infinity) ->
    false;
numeric_equal(_, #xqAtomicValue{value = infinity}) ->
    false;
numeric_equal(neg_infinity, neg_infinity) ->
    true;
numeric_equal(neg_infinity, #xqAtomicValue{value = neg_infinity}) ->
    true;
numeric_equal(#xqAtomicValue{value = neg_infinity}, neg_infinity) ->
    true;
numeric_equal(
    #xqAtomicValue{value = neg_infinity},
    #xqAtomicValue{value = neg_infinity}
) ->
    true;
numeric_equal(neg_infinity, _) ->
    false;
numeric_equal(#xqAtomicValue{value = neg_infinity}, _) ->
    false;
numeric_equal(_, neg_infinity) ->
    false;
numeric_equal(_, #xqAtomicValue{value = neg_infinity}) ->
    false;
numeric_equal(neg_zero, neg_zero) ->
    true;
numeric_equal(neg_zero, #xqAtomicValue{value = neg_zero}) ->
    true;
numeric_equal(neg_zero, #xqAtomicValue{value = V}) ->
    V == 0;
numeric_equal(neg_zero, V) ->
    V == 0;
numeric_equal(#xqAtomicValue{value = neg_zero}, neg_zero) ->
    true;
numeric_equal(
    #xqAtomicValue{value = neg_zero},
    #xqAtomicValue{value = neg_zero}
) ->
    true;
numeric_equal(
    #xqAtomicValue{value = neg_zero},
    #xqAtomicValue{value = V}
) ->
    V == 0;
numeric_equal(#xqAtomicValue{value = neg_zero}, V) ->
    V == 0;
numeric_equal(_, neg_zero) ->
    false;
numeric_equal(_, #xqAtomicValue{value = neg_zero}) ->
    false;
numeric_equal(
    #xqAtomicValue{type = TypeA, value = ValA},
    ValB
) when ?xs_decimal(TypeA), is_number(ValB) ->
    xqerl_numeric:double(ValA) == ValB;
numeric_equal(
    #xqAtomicValue{type = TypeA, value = ValA},
    ValB
) when ?xs_numeric(TypeA), is_number(ValB) ->
    xqerl_numeric:equal(ValA, ValB);
numeric_equal(
    ValA,
    #xqAtomicValue{type = TypeB, value = ValB}
) when ?xs_decimal(TypeB), is_number(ValA) ->
    xqerl_numeric:double(ValB) == ValA;
numeric_equal(
    ValA,
    #xqAtomicValue{type = TypeB, value = ValB}
) when ?xs_numeric(TypeB), is_number(ValA) ->
    xqerl_numeric:equal(ValA, ValB);
numeric_equal(
    #xqAtomicValue{type = TypeA, value = ValA},
    #xqAtomicValue{type = TypeB, value = ValB}
) when ?xs_integer(TypeA) andalso ?xs_integer(TypeB) ->
    ValA =:= ValB;
numeric_equal(
    #xqAtomicValue{type = TypeA, value = ValA},
    #xqAtomicValue{type = TypeB, value = ValB}
) when ?xs_decimal(TypeA) andalso TypeB == 'xs:float' ->
    xqerl_numeric:float(ValA) == ValB;
numeric_equal(
    #xqAtomicValue{type = TypeA, value = ValA},
    #xqAtomicValue{type = TypeB, value = ValB}
) when ?xs_decimal(TypeA) andalso TypeB == 'xs:double' ->
    xqerl_numeric:double(ValA) == ValB;
numeric_equal(
    #xqAtomicValue{type = TypeA, value = ValA},
    #xqAtomicValue{type = TypeB, value = ValB}
) when ?xs_decimal(TypeB) andalso TypeA == 'xs:float' ->
    xqerl_numeric:float(ValB) == ValA;
numeric_equal(
    #xqAtomicValue{type = TypeA, value = ValA},
    #xqAtomicValue{type = TypeB, value = ValB}
) when ?xs_decimal(TypeB) andalso TypeA == 'xs:double' ->
    xqerl_numeric:double(ValB) == ValA;
numeric_equal(
    #xqAtomicValue{type = TypeA, value = ValA},
    #xqAtomicValue{type = TypeB, value = ValB}
) when ?xs_numeric(TypeA), ?xs_numeric(TypeB) ->
    xqerl_numeric:equal(ValA, ValB);
numeric_equal(_, _) ->
    ?err('XPTY0004').

% returns: xs:boolean
numeric_less_than(
    #xqAtomicValue{type = _, value = ValA},
    #xqAtomicValue{type = _, value = ValB}
) when is_integer(ValA), is_integer(ValB) ->
    ValA < ValB;
numeric_less_than(
    #xqAtomicValue{type = TypeA, value = ValA},
    #xqAtomicValue{type = TypeB, value = ValB}
) when ?xs_numeric(TypeA), ?xs_numeric(TypeB) ->
    numeric_less_than(ValA, ValB);
numeric_less_than(
    ValA,
    #xqAtomicValue{type = TypeB, value = ValB}
) when ?xs_numeric(TypeB) ->
    numeric_less_than(ValA, ValB);
numeric_less_than(
    #xqAtomicValue{type = TypeA, value = ValA},
    ValB
) when ?xs_numeric(TypeA) ->
    numeric_less_than(ValA, ValB);
numeric_less_than(ValA, ValB) when
    ?IS_NUMERIC(ValA) orelse is_record(ValA, xsDecimal),
    ?IS_NUMERIC(ValB) orelse is_record(ValB, xsDecimal)
->
    numeric_less_than_1(ValA, ValB);
numeric_less_than(_, _) ->
    ?err('XPTY0004').

numeric_less_than_1(ValA, ValB) when ValA == nan; ValB == nan -> false;
numeric_less_than_1(infinity, _ValB) -> false;
numeric_less_than_1(_ValA, infinity) -> true;
numeric_less_than_1(neg_infinity, _ValB) -> true;
numeric_less_than_1(_ValA, neg_infinity) -> false;
numeric_less_than_1(neg_zero, neg_zero) -> false;
numeric_less_than_1(neg_zero, ValB) when ValB >= 0 -> true;
numeric_less_than_1(neg_zero, ValB) when ValB < 0 -> false;
numeric_less_than_1(ValA, neg_zero) when ValA < 0 -> true;
numeric_less_than_1(ValA, neg_zero) when ValA >= 0 -> false;
numeric_less_than_1(ValA, ValB) -> xqerl_numeric:less_than(ValA, ValB).

% returns: xs:boolean
numeric_greater_than(
    #xqAtomicValue{type = _, value = ValA},
    #xqAtomicValue{type = _, value = ValB}
) when is_integer(ValA), is_integer(ValB) ->
    ValA > ValB;
numeric_greater_than(
    #xqAtomicValue{type = TypeA, value = ValA},
    #xqAtomicValue{type = TypeB, value = ValB}
) when ?xs_numeric(TypeA), ?xs_numeric(TypeB) ->
    numeric_greater_than(ValA, ValB);
numeric_greater_than(
    ValA,
    #xqAtomicValue{type = TypeB, value = ValB}
) when ?xs_numeric(TypeB) ->
    numeric_greater_than(ValA, ValB);
numeric_greater_than(
    #xqAtomicValue{type = TypeA, value = ValA},
    ValB
) when ?xs_numeric(TypeA) ->
    numeric_greater_than(ValA, ValB);
numeric_greater_than(ValA, ValB) when
    ?IS_NUMERIC(ValA) orelse is_record(ValA, xsDecimal),
    ?IS_NUMERIC(ValB) orelse is_record(ValB, xsDecimal)
->
    numeric_greater_than_1(ValA, ValB);
numeric_greater_than(_, _) ->
    ?err('XPTY0004').

numeric_greater_than_1(ValA, ValB) when ValA == nan; ValB == nan -> false;
numeric_greater_than_1(infinity, _ValB) -> true;
numeric_greater_than_1(_ValA, infinity) -> false;
numeric_greater_than_1(neg_infinity, _ValB) -> false;
numeric_greater_than_1(_ValA, neg_infinity) -> true;
numeric_greater_than_1(neg_zero, neg_zero) -> false;
numeric_greater_than_1(neg_zero, ValB) when ValB >= 0 -> false;
numeric_greater_than_1(neg_zero, ValB) when ValB < 0 -> true;
numeric_greater_than_1(ValA, neg_zero) when ValA < 0 -> false;
numeric_greater_than_1(ValA, neg_zero) when ValA >= 0 -> true;
numeric_greater_than_1(ValA, ValB) -> xqerl_numeric:greater_than(ValA, ValB).

% returns: xs:boolean
boolean_equal(ValA, ValB) -> ValA =:= ValB.

% returns: xs:boolean
boolean_less_than(false, true) -> true;
boolean_less_than(_A, _B) -> false.

% returns: xs:boolean
boolean_greater_than(true, false) -> true;
boolean_greater_than(_A, _B) -> false.

% returns: xs:boolean
yearMonthDuration_less_than(
    #xqAtomicValue{
        type = 'xs:yearMonthDuration',
        value = #xsDateTime{
            sign = SnA,
            year = YrA,
            month = MoA
        }
    },
    #xqAtomicValue{
        type = 'xs:yearMonthDuration',
        value = #xsDateTime{
            sign = SnB,
            year = YrB,
            month = MoB
        }
    }
) ->
    MonA = (YrA * 12 + MoA) * unary_sign(SnA),
    MonB = (YrB * 12 + MoB) * unary_sign(SnB),
    MonA < MonB.

% returns: xs:boolean
yearMonthDuration_greater_than(
    #xqAtomicValue{
        type = 'xs:yearMonthDuration',
        value = #xsDateTime{
            sign = SnA,
            year = YrA,
            month = MoA
        }
    },
    #xqAtomicValue{
        type = 'xs:yearMonthDuration',
        value = #xsDateTime{
            sign = SnB,
            year = YrB,
            month = MoB
        }
    }
) ->
    MonA = (YrA * 12 + MoA) * unary_sign(SnA),
    MonB = (YrB * 12 + MoB) * unary_sign(SnB),
    MonA > MonB.

date_time_to_seconds(#xsDateTime{
    sign = SnA,
    day = DyA,
    hour = HrA,
    minute = MiA,
    second = SdA
}) ->
    xqerl_numeric:multiply(
        xqerl_numeric:add(SdA, (MiA * 60) + (HrA * 3600) + (DyA * 86400)),
        unary_sign(SnA)
    ).

% returns: xs:boolean
dayTimeDuration_less_than(
    #xqAtomicValue{type = 'xs:dayTimeDuration', value = DtA},
    #xqAtomicValue{type = 'xs:dayTimeDuration', value = DtB}
) ->
    SecA = date_time_to_seconds(DtA),
    SecB = date_time_to_seconds(DtB),
    xqerl_numeric:less_than(SecA, SecB).

% returns: xs:boolean
dayTimeDuration_greater_than(
    #xqAtomicValue{type = 'xs:dayTimeDuration', value = DtA},
    #xqAtomicValue{type = 'xs:dayTimeDuration', value = DtB}
) ->
    SecA = date_time_to_seconds(DtA),
    SecB = date_time_to_seconds(DtB),
    xqerl_numeric:greater_than(SecA, SecB).

% returns: xs:boolean
duration_equal(
    #xqAtomicValue{
        value =
            #xsDateTime{
                sign = SnA,
                year = YrA,
                month = MoA
            } = DtA
    },
    #xqAtomicValue{
        value =
            #xsDateTime{
                sign = SnB,
                year = YrB,
                month = MoB
            } = DtB
    }
) ->
    MonA = (YrA * 12 + MoA) * unary_sign(SnA),
    MonB = (YrB * 12 + MoB) * unary_sign(SnB),
    SecA = date_time_to_seconds(DtA),
    SecB = date_time_to_seconds(DtB),
    MonA == MonB andalso xqerl_numeric:equal(SecA, SecB);
duration_equal(_A, _B) ->
    false.

% returns: xs:yearMonthDuration
add_yearMonthDurations(
    #xqAtomicValue{
        type = 'xs:yearMonthDuration',
        value = #xsDateTime{
            sign = SnA,
            year = YrA,
            month = MoA
        }
    },
    #xqAtomicValue{
        type = 'xs:yearMonthDuration',
        value = #xsDateTime{
            sign = SnB,
            year = YrB,
            month = MoB
        }
    }
) ->
    MonA = (YrA * 12 + MoA) * unary_sign(SnA),
    MonB = (YrB * 12 + MoB) * unary_sign(SnB),
    MonC = MonA + MonB,
    SnC =
        case MonC < 0 of
            true -> '-';
            false -> '+'
        end,
    {Mon, Year} = {abs(MonC) rem 12, abs(MonC) div 12},
    RecDt = #xsDateTime{sign = SnC, year = Year, month = Mon, day = 0},
    Str = xqerl_datetime:to_string(RecDt, 'xs:yearMonthDuration'),
    #xqAtomicValue{
        type = 'xs:yearMonthDuration',
        value = RecDt#xsDateTime{string_value = Str}
    }.

% returns: xs:yearMonthDuration
subtract_yearMonthDurations(
    #xqAtomicValue{
        type = 'xs:yearMonthDuration',
        value = #xsDateTime{
            sign = SnA,
            year = YrA,
            month = MoA
        }
    },
    #xqAtomicValue{
        type = 'xs:yearMonthDuration',
        value = #xsDateTime{
            sign = SnB,
            year = YrB,
            month = MoB
        }
    }
) ->
    MonA = (YrA * 12 + MoA) * unary_sign(SnA),
    MonB = (YrB * 12 + MoB) * unary_sign(SnB),
    MonC = MonA - MonB,
    SnC =
        case MonC < 0 of
            true -> '-';
            false -> '+'
        end,
    {Mon, Year} = {abs(MonC) rem 12, abs(MonC) div 12},
    RecDt = #xsDateTime{sign = SnC, year = Year, month = Mon, day = 0},
    Str = xqerl_datetime:to_string(RecDt, 'xs:yearMonthDuration'),
    #xqAtomicValue{
        type = 'xs:yearMonthDuration',
        value = RecDt#xsDateTime{string_value = Str}
    }.

% returns: xs:yearMonthDuration
multiply_yearMonthDuration(A, #xqAtomicValue{
    type = T,
    value = V
}) when ?xs_numeric(T) ->
    multiply_yearMonthDuration(A, V);
multiply_yearMonthDuration(_A, nan) ->
    ?err('FOCA0005');
multiply_yearMonthDuration(_A, infinity) ->
    ?err('FODT0002');
multiply_yearMonthDuration(_A, neg_infinity) ->
    ?err('FODT0002');
multiply_yearMonthDuration(A, neg_zero) ->
    multiply_yearMonthDuration(A, 0);
multiply_yearMonthDuration(
    #xqAtomicValue{
        type = 'xs:yearMonthDuration',
        value = #xsDateTime{
            sign = SnA,
            year = YrA,
            month = MoA
        }
    },
    Dbl
) when ?IS_NUMERIC(Dbl); is_record(Dbl, xsDecimal) ->
    MonA = (YrA * 12 + MoA) * unary_sign(SnA),
    MonC = xqerl_numeric:truncate(
        xqerl_numeric:round_half(
            xqerl_numeric:multiply(MonA, Dbl),
            0
        )
    ),
    SnC =
        case xqerl_numeric:less_than(MonC, 0) of
            true -> '-';
            _ -> '+'
        end,
    AbsMon = xqerl_numeric:abs_val(MonC),
    {Mon, Year} = {AbsMon rem 12, AbsMon div 12},
    RecDt = #xsDateTime{sign = SnC, year = Year, month = Mon, day = 0},
    Str = xqerl_datetime:to_string(RecDt, 'xs:yearMonthDuration'),
    #xqAtomicValue{
        type = 'xs:yearMonthDuration',
        value = RecDt#xsDateTime{string_value = Str}
    }.

% returns: xs:yearMonthDuration
divide_yearMonthDuration(_A, nan) ->
    ?err('FOCA0005');
divide_yearMonthDuration(_A, #xqAtomicValue{value = nan}) ->
    ?err('FOCA0005');
divide_yearMonthDuration(_A, Inf) when Inf =:= infinity; Inf =:= neg_infinity ->
    xqerl_types:cast_as(<<"P0M">>, 'xs:yearMonthDuration');
divide_yearMonthDuration(_A, #xqAtomicValue{value = Inf}) when
    Inf =:= infinity; Inf =:= neg_infinity
->
    xqerl_types:cast_as(<<"P0M">>, 'xs:yearMonthDuration');
divide_yearMonthDuration(_A, Val) when Val == 0; Val == neg_zero ->
    ?err('FODT0002');
divide_yearMonthDuration(_A, #xqAtomicValue{value = Val}) when Val == 0; Val == neg_zero ->
    ?err('FODT0002');
divide_yearMonthDuration(
    #xqAtomicValue{type = 'xs:yearMonthDuration'} = A,
    #xqAtomicValue{type = Type, value = Dbl}
) when ?xs_numeric(Type) ->
    divide_yearMonthDuration(A, Dbl);
divide_yearMonthDuration(
    #xqAtomicValue{
        type = 'xs:yearMonthDuration',
        value = #xsDateTime{
            sign = SnA,
            year = YrA,
            month = MoA
        }
    },
    Dbl
) when ?IS_NUMERIC(Dbl); is_record(Dbl, xsDecimal) ->
    MonA = (YrA * 12 + MoA) * unary_sign(SnA),
    MonT = xqerl_numeric:divide(MonA, Dbl),
    MonC =
        case MonT < 0 of
            true -> xqerl_numeric:truncate(MonA / Dbl);
            false -> xqerl_numeric:truncate(xqerl_numeric:round_half(MonT, 0))
        end,
    SnC =
        case xqerl_numeric:less_than(MonC, 0) of
            true -> '-';
            _ -> '+'
        end,
    AbsMon = xqerl_numeric:abs_val(MonC),
    {Mon, Year} = {AbsMon rem 12, AbsMon div 12},
    RecDt = #xsDateTime{sign = SnC, year = Year, month = Mon, day = 0},
    Str = xqerl_datetime:to_string(RecDt, 'xs:yearMonthDuration'),
    #xqAtomicValue{
        type = 'xs:yearMonthDuration',
        value = RecDt#xsDateTime{string_value = Str}
    };
divide_yearMonthDuration(_, _) ->
    ?err('XPTY0004').

% returns: xs:decimal
divide_yearMonthDuration_by_yearMonthDuration(
    #xqAtomicValue{
        type = 'xs:yearMonthDuration',
        value = #xsDateTime{sign = SnA, year = YrA, month = MoA}
    },
    #xqAtomicValue{
        type = 'xs:yearMonthDuration',
        value = #xsDateTime{sign = SnB, year = YrB, month = MoB}
    }
) ->
    MonA = (YrA * 12 + MoA) * unary_sign(SnA),
    case (YrB * 12 + MoB) * unary_sign(SnB) of
        0 ->
            ?err('FOAR0001');
        MonB ->
            MonC = MonA / MonB,
            #xqAtomicValue{type = 'xs:decimal', value = MonC}
    end.

% returns: xs:dayTimeDuration
add_dayTimeDurations(
    #xqAtomicValue{
        type = 'xs:dayTimeDuration',
        value = DtA
    },
    #xqAtomicValue{
        type = 'xs:dayTimeDuration',
        value = DtB
    }
) ->
    SecA = date_time_to_seconds(DtA),
    SecB = date_time_to_seconds(DtB),
    SecC = xqerl_numeric:add(SecA, SecB),
    Sgn =
        case xqerl_numeric:less_than(SecC, 0) of
            true -> <<"-">>;
            _ -> <<>>
        end,
    Str = <<Sgn/binary, $P, $T, ?BIN(xqerl_numeric:string(xqerl_numeric:abs_val(SecC))), $S>>,
    xqerl_types:cast_as(Str, 'xs:dayTimeDuration').

% returns: xs:dayTimeDuration
subtract_dayTimeDurations(
    #xqAtomicValue{
        type = 'xs:dayTimeDuration',
        value = DtA
    },
    #xqAtomicValue{
        type = 'xs:dayTimeDuration',
        value = DtB
    }
) ->
    SecA = date_time_to_seconds(DtA),
    SecB = date_time_to_seconds(DtB),
    SecC = xqerl_numeric:subtract(SecA, SecB),
    Sgn =
        case xqerl_numeric:less_than(SecC, 0) of
            true -> <<"-">>;
            _ -> <<>>
        end,
    Str = <<Sgn/binary, $P, $T, ?BIN(xqerl_numeric:string(xqerl_numeric:abs_val(SecC))), $S>>,
    xqerl_types:cast_as(Str, 'xs:dayTimeDuration').

% returns: xs:dayTimeDuration
multiply_dayTimeDuration(A, #xqAtomicValue{
    type = T,
    value = V
}) when ?xs_numeric(T) ->
    multiply_dayTimeDuration(A, V);
multiply_dayTimeDuration(A, neg_zero) ->
    multiply_dayTimeDuration(A, 0.0);
multiply_dayTimeDuration(_A, nan) ->
    ?err('FOCA0005');
multiply_dayTimeDuration(_A, infinity) ->
    ?err('FODT0002');
multiply_dayTimeDuration(_A, neg_infinity) ->
    ?err('FODT0002');
multiply_dayTimeDuration(
    #xqAtomicValue{
        type = 'xs:dayTimeDuration',
        value = DtA
    },
    Dbl
) when ?IS_NUMERIC(Dbl); is_record(Dbl, xsDecimal) ->
    SecA = date_time_to_seconds(DtA),
    SecC = xqerl_numeric:multiply(SecA, Dbl),
    Sgn =
        case xqerl_numeric:less_than(SecC, 0) of
            true -> <<"-">>;
            _ -> <<>>
        end,
    Str =
        <<
            ?BIN(Sgn),
            "PT",
            ?BIN(
                (if
                    is_integer(SecC) ->
                        integer_to_binary(erlang:abs(SecC));
                    true ->
                        xqerl_numeric:string(xqerl_numeric:abs_val(SecC))
                end)
            ),
            "S"
        >>,
    xqerl_types:cast_as(Str, 'xs:dayTimeDuration');
multiply_dayTimeDuration(_, _) ->
    ?err('XPTY0004').

% returns: xs:dayTimeDuration
divide_dayTimeDuration(A, #xqAtomicValue{
    type = T,
    value = V
}) when ?xs_numeric(T) ->
    divide_dayTimeDuration(A, V);
divide_dayTimeDuration(_A, Val) when Val == 0; Val == neg_zero ->
    ?err('FODT0002');
divide_dayTimeDuration(_A, nan) ->
    ?err('FOCA0005');
divide_dayTimeDuration(_A, Inf) when Inf =:= infinity; Inf =:= neg_infinity ->
    xqerl_types:cast_as(<<"PT0S">>, 'xs:dayTimeDuration');
divide_dayTimeDuration(
    #xqAtomicValue{
        type = 'xs:dayTimeDuration',
        value = DtA
    },
    Dbl
) when ?IS_NUMERIC(Dbl); is_record(Dbl, xsDecimal) ->
    SecA = date_time_to_seconds(DtA),
    SecC = xqerl_numeric:decimal(xqerl_numeric:divide(SecA, Dbl)),
    Sgn =
        case xqerl_numeric:less_than(SecC, 0) of
            true -> <<"-">>;
            _ -> <<>>
        end,
    Str = <<?BIN(Sgn), "PT", ?BIN((xqerl_numeric:string(xqerl_numeric:abs_val(SecC)))), "S">>,
    xqerl_types:cast_as(Str, 'xs:dayTimeDuration');
divide_dayTimeDuration(_, _) ->
    ?err('XPTY0004').

% returns: xs:decimal
divide_dayTimeDuration_by_dayTimeDuration(
    #xqAtomicValue{
        type = 'xs:dayTimeDuration',
        value = DtA
    },
    #xqAtomicValue{
        type = 'xs:dayTimeDuration',
        value = DtB
    }
) ->
    try
        SecA = date_time_to_seconds(DtA),
        SecB = date_time_to_seconds(DtB),
        SecC = xqerl_numeric:divide(SecA, SecB),
        #xqAtomicValue{type = 'xs:decimal', value = SecC}
    catch
        _:_ ->
            ?err('FODT0002')
    end.

dec_seconds(Date, Seconds, OffsetSeconds, Sign) ->
    DSec = calendar:datetime_to_gregorian_seconds(Date),
    TSec = xqerl_numeric:add(DSec, Seconds),
    SSec = xqerl_numeric:subtract(TSec, OffsetSeconds),
    xqerl_numeric:multiply(SSec, unary_sign(Sign)).

% returns: xs:boolean

%type = 'xs:dateTime',
dateTime_equal(
    #xqAtomicValue{
        value = #xsDateTime{
            sign = SnA,
            year = YrA,
            month = MoA,
            day = DyA,
            hour = HrA,
            minute = MiA,
            second = SdA,
            offset = OfA
        }
    },
    %type = 'xs:dateTime',
    #xqAtomicValue{
        value = #xsDateTime{
            sign = SnB,
            year = YrB,
            month = MoB,
            day = DyB,
            hour = HrB,
            minute = MiB,
            second = SdB,
            offset = OfB
        }
    }
) ->
    DtA = {{YrA, MoA, DyA}, {HrA, MiA, 0}},
    DtB = {{YrB, MoB, DyB}, {HrB, MiB, 0}},

    {OffSecA, OffSecB} =
        case {OfA, OfB} of
            {[], []} ->
                ImpTzSec = offset_to_seconds(xqerl_context:get_implicit_timezone()),
                {ImpTzSec, ImpTzSec};
            {[], _} ->
                ImpTzSec = offset_to_seconds(xqerl_context:get_implicit_timezone()),
                {ImpTzSec, offset_to_seconds(OfB)};
            {_, []} ->
                ImpTzSec = offset_to_seconds(xqerl_context:get_implicit_timezone()),
                {offset_to_seconds(OfA), ImpTzSec};
            _ ->
                {offset_to_seconds(OfA), offset_to_seconds(OfB)}
        end,
    SecA = dec_seconds(DtA, SdA, OffSecA, SnA),
    SecB = dec_seconds(DtB, SdB, OffSecB, SnB),
    xqerl_numeric:equal(SecA, SecB).

% returns: xs:boolean
dateTime_less_than(
    #xqAtomicValue{
        type = 'xs:dateTime',
        value = #xsDateTime{
            sign = SnA,
            year = YrA,
            month = MoA,
            day = DyA,
            hour = HrA,
            minute = MiA,
            second = SdA,
            offset = OfA
        }
    },
    #xqAtomicValue{
        type = 'xs:dateTime',
        value = #xsDateTime{
            sign = SnB,
            year = YrB,
            month = MoB,
            day = DyB,
            hour = HrB,
            minute = MiB,
            second = SdB,
            offset = OfB
        }
    }
) ->
    DtA = {{YrA, MoA, DyA}, {HrA, MiA, 0}},
    DtB = {{YrB, MoB, DyB}, {HrB, MiB, 0}},

    {OffSecA, OffSecB} =
        case {OfA, OfB} of
            {[], []} ->
                ImpTzSec = offset_to_seconds(xqerl_context:get_implicit_timezone()),
                {ImpTzSec, ImpTzSec};
            {[], _} ->
                ImpTzSec = offset_to_seconds(xqerl_context:get_implicit_timezone()),
                {ImpTzSec, offset_to_seconds(OfB)};
            {_, []} ->
                ImpTzSec = offset_to_seconds(xqerl_context:get_implicit_timezone()),
                {offset_to_seconds(OfA), ImpTzSec};
            _ ->
                {offset_to_seconds(OfA), offset_to_seconds(OfB)}
        end,
    SecA = dec_seconds(DtA, SdA, OffSecA, SnA),
    SecB = dec_seconds(DtB, SdB, OffSecB, SnB),
    xqerl_numeric:less_than(SecA, SecB).

% returns: xs:boolean
dateTime_greater_than(
    #xqAtomicValue{
        type = 'xs:dateTime',
        value = #xsDateTime{
            sign = SnA,
            year = YrA,
            month = MoA,
            day = DyA,
            hour = HrA,
            minute = MiA,
            second = SdA,
            offset = OfA
        }
    },
    #xqAtomicValue{
        type = 'xs:dateTime',
        value = #xsDateTime{
            sign = SnB,
            year = YrB,
            month = MoB,
            day = DyB,
            hour = HrB,
            minute = MiB,
            second = SdB,
            offset = OfB
        }
    }
) ->
    DtA = {{YrA, MoA, DyA}, {HrA, MiA, 0}},
    DtB = {{YrB, MoB, DyB}, {HrB, MiB, 0}},

    {OffSecA, OffSecB} =
        case {OfA, OfB} of
            {[], []} ->
                ImpTzSec = offset_to_seconds(xqerl_context:get_implicit_timezone()),
                {ImpTzSec, ImpTzSec};
            {[], _} ->
                ImpTzSec = offset_to_seconds(xqerl_context:get_implicit_timezone()),
                {ImpTzSec, offset_to_seconds(OfB)};
            {_, []} ->
                ImpTzSec = offset_to_seconds(xqerl_context:get_implicit_timezone()),
                {offset_to_seconds(OfA), ImpTzSec};
            _ ->
                {offset_to_seconds(OfA), offset_to_seconds(OfB)}
        end,
    SecA = dec_seconds(DtA, SdA, OffSecA, SnA),
    SecB = dec_seconds(DtB, SdB, OffSecB, SnB),
    xqerl_numeric:greater_than(SecA, SecB).

% returns: xs:boolean
date_equal(
    #xqAtomicValue{type = 'xs:date'} = A,
    #xqAtomicValue{type = 'xs:date'} = B
) ->
    equal(
        xqerl_types:cast_as(A, 'xs:dateTime'),
        xqerl_types:cast_as(B, 'xs:dateTime')
    ).

% returns: xs:boolean
date_less_than(
    #xqAtomicValue{type = 'xs:date'} = A,
    #xqAtomicValue{type = 'xs:date'} = B
) ->
    less_than(
        xqerl_types:cast_as(A, 'xs:dateTime'),
        xqerl_types:cast_as(B, 'xs:dateTime')
    ).

% returns: xs:boolean
date_greater_than(
    #xqAtomicValue{type = 'xs:date'} = A,
    #xqAtomicValue{type = 'xs:date'} = B
) ->
    greater_than(
        xqerl_types:cast_as(A, 'xs:dateTime'),
        xqerl_types:cast_as(B, 'xs:dateTime')
    ).

% returns: xs:boolean
time_equal(
    #xqAtomicValue{type = 'xs:time'} = A,
    #xqAtomicValue{type = 'xs:time'} = B
) ->
    RefDt = xqerl_mod_xs:xs_date([], <<"1972-12-31">>),
    equal(
        xqerl_mod_fn:dateTime(#{}, RefDt, A),
        xqerl_mod_fn:dateTime(#{}, RefDt, B)
    ).

% returns: xs:boolean
time_less_than(
    #xqAtomicValue{type = 'xs:time'} = A,
    #xqAtomicValue{type = 'xs:time'} = B
) ->
    RefDt = xqerl_mod_xs:xs_date([], <<"1972-12-31">>),
    less_than(
        xqerl_mod_fn:dateTime(#{}, RefDt, A),
        xqerl_mod_fn:dateTime(#{}, RefDt, B)
    ).

% returns: xs:boolean
time_greater_than(
    #xqAtomicValue{type = 'xs:time'} = A,
    #xqAtomicValue{type = 'xs:time'} = B
) ->
    RefDt = xqerl_mod_xs:xs_date([], <<"1972-12-31">>),
    greater_than(
        xqerl_mod_fn:dateTime(#{}, RefDt, A),
        xqerl_mod_fn:dateTime(#{}, RefDt, B)
    ).

% returns: xs:boolean
gYearMonth_equal(
    #xqAtomicValue{
        type = 'xs:gYearMonth',
        value = #xsDateTime{
            sign = SnA,
            year = YrA,
            month = MoA,
            offset = OfA
        }
    },
    #xqAtomicValue{
        type = 'xs:gYearMonth',
        value = #xsDateTime{
            sign = SnB,
            year = YrB,
            month = MoB,
            offset = OfB
        }
    }
) ->
    DtA = {{YrA, MoA, 1}, {0, 0, 0}},
    DtB = {{YrB, MoB, 1}, {0, 0, 0}},

    {OffSecA, OffSecB} =
        case {OfA, OfB} of
            {[], []} ->
                ImpTzSec = offset_to_seconds(xqerl_context:get_implicit_timezone()),
                {ImpTzSec, ImpTzSec};
            {[], _} ->
                ImpTzSec = offset_to_seconds(xqerl_context:get_implicit_timezone()),
                {ImpTzSec, offset_to_seconds(OfB)};
            {_, []} ->
                ImpTzSec = offset_to_seconds(xqerl_context:get_implicit_timezone()),
                {offset_to_seconds(OfA), ImpTzSec};
            _ ->
                {offset_to_seconds(OfA), offset_to_seconds(OfB)}
        end,

    SecA = dec_seconds(DtA, 0, OffSecA, SnA),
    SecB = dec_seconds(DtB, 0, OffSecB, SnB),
    xqerl_numeric:equal(SecA, SecB).

% returns: xs:boolean
gYear_equal(
    #xqAtomicValue{
        type = 'xs:gYear',
        value = #xsDateTime{
            sign = SnA,
            year = YrA,
            offset = OfA
        }
    },
    #xqAtomicValue{
        type = 'xs:gYear',
        value = #xsDateTime{
            sign = SnB,
            year = YrB,
            offset = OfB
        }
    }
) ->
    DtA = {{YrA, 1, 1}, {0, 0, 0}},
    DtB = {{YrB, 1, 1}, {0, 0, 0}},

    {OffSecA, OffSecB} =
        case {OfA, OfB} of
            {[], []} ->
                ImpTzSec = offset_to_seconds(xqerl_context:get_implicit_timezone()),
                {ImpTzSec, ImpTzSec};
            {[], _} ->
                ImpTzSec = offset_to_seconds(xqerl_context:get_implicit_timezone()),
                {ImpTzSec, offset_to_seconds(OfB)};
            {_, []} ->
                ImpTzSec = offset_to_seconds(xqerl_context:get_implicit_timezone()),
                {offset_to_seconds(OfA), ImpTzSec};
            _ ->
                {offset_to_seconds(OfA), offset_to_seconds(OfB)}
        end,
    SecA = dec_seconds(DtA, 0, OffSecA, SnA),
    SecB = dec_seconds(DtB, 0, OffSecB, SnB),
    xqerl_numeric:equal(SecA, SecB).

% returns: xs:boolean
gMonthDay_equal(
    #xqAtomicValue{
        type = 'xs:gMonthDay',
        value = #xsDateTime{
            sign = SnA,
            month = MoA,
            day = DyA,
            offset = OfA
        }
    },
    #xqAtomicValue{
        type = 'xs:gMonthDay',
        value = #xsDateTime{
            sign = SnB,
            month = MoB,
            day = DyB,
            offset = OfB
        }
    }
) ->
    DtA = {{1972, MoA, DyA}, {0, 0, 0}},
    DtB = {{1972, MoB, DyB}, {0, 0, 0}},

    {OffSecA, OffSecB} =
        case {OfA, OfB} of
            {[], []} ->
                ImpTzSec = offset_to_seconds(xqerl_context:get_implicit_timezone()),
                {ImpTzSec, ImpTzSec};
            {[], _} ->
                ImpTzSec = offset_to_seconds(xqerl_context:get_implicit_timezone()),
                {ImpTzSec, offset_to_seconds(OfB)};
            {_, []} ->
                ImpTzSec = offset_to_seconds(xqerl_context:get_implicit_timezone()),
                {offset_to_seconds(OfA), ImpTzSec};
            _ ->
                {offset_to_seconds(OfA), offset_to_seconds(OfB)}
        end,
    SecA = dec_seconds(DtA, 0, OffSecA, SnA),
    SecB = dec_seconds(DtB, 0, OffSecB, SnB),
    xqerl_numeric:equal(SecA, SecB).

% returns: xs:boolean
gMonth_equal(
    #xqAtomicValue{
        type = 'xs:gMonth',
        value = #xsDateTime{
            sign = SnA,
            month = MoA,
            offset = OfA
        }
    },
    #xqAtomicValue{
        type = 'xs:gMonth',
        value = #xsDateTime{
            sign = SnB,
            month = MoB,
            offset = OfB
        }
    }
) ->
    DtA = {{1972, MoA, 1}, {0, 0, 0}},
    DtB = {{1972, MoB, 1}, {0, 0, 0}},

    {OffSecA, OffSecB} =
        case {OfA, OfB} of
            {[], []} ->
                ImpTzSec = offset_to_seconds(xqerl_context:get_implicit_timezone()),
                {ImpTzSec, ImpTzSec};
            {[], _} ->
                ImpTzSec = offset_to_seconds(xqerl_context:get_implicit_timezone()),
                {ImpTzSec, offset_to_seconds(OfB)};
            {_, []} ->
                ImpTzSec = offset_to_seconds(xqerl_context:get_implicit_timezone()),
                {offset_to_seconds(OfA), ImpTzSec};
            _ ->
                {offset_to_seconds(OfA), offset_to_seconds(OfB)}
        end,
    SecA = dec_seconds(DtA, 0, OffSecA, SnA),
    SecB = dec_seconds(DtB, 0, OffSecB, SnB),
    xqerl_numeric:equal(SecA, SecB).

% returns: xs:boolean
gDay_equal(
    #xqAtomicValue{
        type = 'xs:gDay',
        value = #xsDateTime{
            sign = SnA,
            day = DyA,
            offset = OfA
        }
    },
    #xqAtomicValue{
        type = 'xs:gDay',
        value = #xsDateTime{
            sign = SnB,
            day = DyB,
            offset = OfB
        }
    }
) ->
    DtA = {{1972, 12, DyA}, {0, 0, 0}},
    DtB = {{1972, 12, DyB}, {0, 0, 0}},

    {OffSecA, OffSecB} =
        case {OfA, OfB} of
            {[], []} ->
                ImpTzSec = offset_to_seconds(xqerl_context:get_implicit_timezone()),
                {ImpTzSec, ImpTzSec};
            {[], _} ->
                ImpTzSec = offset_to_seconds(xqerl_context:get_implicit_timezone()),
                {ImpTzSec, offset_to_seconds(OfB)};
            {_, []} ->
                ImpTzSec = offset_to_seconds(xqerl_context:get_implicit_timezone()),
                {offset_to_seconds(OfA), ImpTzSec};
            _ ->
                {offset_to_seconds(OfA), offset_to_seconds(OfB)}
        end,
    SecA = dec_seconds(DtA, 0, OffSecA, SnA),
    SecB = dec_seconds(DtB, 0, OffSecB, SnB),
    xqerl_numeric:equal(SecA, SecB).

% returns: xs:dayTimeDuration
subtract_dateTimes(
    #xqAtomicValue{
        type = 'xs:dateTime',
        value = #xsDateTime{
            sign = SnA,
            year = YrA,
            month = MoA,
            day = DyA,
            hour = HrA,
            minute = MiA,
            second = SdA,
            offset = OfA
        }
    },
    #xqAtomicValue{
        type = 'xs:dateTime',
        value = #xsDateTime{
            sign = SnB,
            year = YrB,
            month = MoB,
            day = DyB,
            hour = HrB,
            minute = MiB,
            second = SdB,
            offset = OfB
        }
    }
) ->
    DtA = {{YrA, MoA, DyA}, {HrA, MiA, 0}},
    DtB = {{YrB, MoB, DyB}, {HrB, MiB, 0}},

    {OffSecA, OffSecB} =
        case {OfA, OfB} of
            {[], []} ->
                ImpTzSec = offset_to_seconds(xqerl_context:get_implicit_timezone()),
                {ImpTzSec, ImpTzSec};
            {[], _} ->
                ImpTzSec = offset_to_seconds(xqerl_context:get_implicit_timezone()),
                {ImpTzSec, offset_to_seconds(OfB)};
            {_, []} ->
                ImpTzSec = offset_to_seconds(xqerl_context:get_implicit_timezone()),
                {offset_to_seconds(OfA), ImpTzSec};
            _ ->
                {offset_to_seconds(OfA), offset_to_seconds(OfB)}
        end,
    SecA = dec_seconds(DtA, SdA, OffSecA, SnA),
    SecB = dec_seconds(DtB, SdB, OffSecB, SnB),
    SecC = xqerl_numeric:subtract(SecA, SecB),
    AbsSec = xqerl_numeric:abs_val(SecC),
    IntSec = xqerl_numeric:truncate(AbsSec),
    FraSec = xqerl_numeric:subtract(AbsSec, IntSec),
    {Days, {Hour, Min, Secs}} = calendar:seconds_to_daystime(IntSec),
    Sgn =
        case xqerl_numeric:less_than(SecC, 0) of
            true -> <<"-">>;
            false -> <<>>
        end,
    Str =
        <<
            ?BIN(Sgn),
            "P",
            ?BIN((integer_to_binary(Days))),
            "T",
            ?BIN((integer_to_binary(Hour))),
            "H",
            ?BIN((integer_to_binary(Min))),
            "M",
            ?BIN((xqerl_numeric:string(xqerl_numeric:decimal(xqerl_numeric:add(Secs, FraSec))))),
            "S"
        >>,
    xqerl_types:cast_as(Str, 'xs:dayTimeDuration').

% returns: xs:dayTimeDuration
subtract_dates(
    #xqAtomicValue{type = 'xs:date'} = A,
    #xqAtomicValue{type = 'xs:date'} = B
) ->
    subtract(
        xqerl_types:cast_as(A, 'xs:dateTime'),
        xqerl_types:cast_as(B, 'xs:dateTime')
    ).

% returns: xs:dayTimeDuration
subtract_times(
    #xqAtomicValue{type = 'xs:time'} = A,
    #xqAtomicValue{type = 'xs:time'} = B
) ->
    RefDt = xqerl_mod_xs:xs_date([], <<"1972-12-31">>),
    subtract(
        xqerl_mod_fn:dateTime(#{}, RefDt, A),
        xqerl_mod_fn:dateTime(#{}, RefDt, B)
    ).

% returns: xs:dateTime
add_yearMonthDuration_to_dateTime(
    #xqAtomicValue{
        type = 'xs:dateTime',
        value = #xsDateTime{}
    } = A,
    #xqAtomicValue{
        type = 'xs:yearMonthDuration',
        value = #xsDateTime{}
    } = B
) ->
    #xqAtomicValue{type = 'xs:dateTime', value = NewDt} =
        add_duration_to_dateTime(A, B),
    Str = xqerl_datetime:to_string(NewDt, 'xs:dateTime'),
    #xqAtomicValue{
        type = 'xs:dateTime',
        value = NewDt#xsDateTime{string_value = Str}
    }.

% returns: xs:dateTime
add_dayTimeDuration_to_dateTime(
    #xqAtomicValue{
        type = 'xs:dateTime',
        value = #xsDateTime{}
    } = A,
    #xqAtomicValue{
        type = 'xs:dayTimeDuration',
        value = #xsDateTime{}
    } = B
) ->
    %?dbg("A,B",{A,B}),
    #xqAtomicValue{type = 'xs:dateTime', value = NewDt} =
        add_duration_to_dateTime(A, B),
    %?dbg("NewDt",NewDt),
    Str = xqerl_datetime:to_string(NewDt, 'xs:dateTime'),
    #xqAtomicValue{
        type = 'xs:dateTime',
        value = NewDt#xsDateTime{string_value = Str}
    }.

% returns: xs:dateTime
subtract_yearMonthDuration_from_dateTime(
    #xqAtomicValue{
        type = 'xs:dateTime',
        value = #xsDateTime{}
    } = A,
    #xqAtomicValue{
        type = 'xs:yearMonthDuration',
        value = #xsDateTime{sign = S} = D
    } = B
) ->
    NewSign = reverse_sign(S),
    #xqAtomicValue{type = 'xs:dateTime', value = NewDt} =
        add_duration_to_dateTime(
            A,
            B#xqAtomicValue{value = D#xsDateTime{sign = NewSign}}
        ),
    Str = xqerl_datetime:to_string(NewDt, 'xs:dateTime'),
    #xqAtomicValue{
        type = 'xs:dateTime',
        value = NewDt#xsDateTime{string_value = Str}
    }.

% returns: xs:dateTime
subtract_dayTimeDuration_from_dateTime(
    #xqAtomicValue{
        type = 'xs:dateTime',
        value = #xsDateTime{}
    } = A,
    #xqAtomicValue{
        type = 'xs:dayTimeDuration',
        value = #xsDateTime{sign = S} = D
    } = B
) ->
    NewSign = reverse_sign(S),
    #xqAtomicValue{type = 'xs:dateTime', value = NewDt} =
        add_duration_to_dateTime(
            A,
            B#xqAtomicValue{value = D#xsDateTime{sign = NewSign}}
        ),
    Str = xqerl_datetime:to_string(NewDt, 'xs:dateTime'),
    #xqAtomicValue{
        type = 'xs:dateTime',
        value = NewDt#xsDateTime{string_value = Str}
    }.

% returns: xs:date
add_yearMonthDuration_to_date(A, B) ->
    Dt = xqerl_types:cast_as(A, 'xs:dateTime'),
    Ad = add_yearMonthDuration_to_dateTime(Dt, B),
    xqerl_mod_xs:xs_date([], Ad).

% returns: xs:date
add_dayTimeDuration_to_date(A, B) ->
    Dt = xqerl_types:cast_as(A, 'xs:dateTime'),
    Ad = add_dayTimeDuration_to_dateTime(Dt, B),
    xqerl_mod_xs:xs_date([], Ad).

% returns: xs:date
subtract_yearMonthDuration_from_date(A, B) ->
    Dt = xqerl_types:cast_as(A, 'xs:dateTime'),
    Ad = subtract_yearMonthDuration_from_dateTime(Dt, B),
    xqerl_mod_xs:xs_date([], Ad).

% returns: xs:date
subtract_dayTimeDuration_from_date(A, B) ->
    Dt = xqerl_types:cast_as(A, 'xs:dateTime'),
    Ad = subtract_dayTimeDuration_from_dateTime(Dt, B),
    xqerl_mod_xs:xs_date([], Ad).

% returns: xs:time
add_dayTimeDuration_to_time(
    #xqAtomicValue{
        type = 'xs:time',
        value = #xsDateTime{} = T
    } = A,
    #xqAtomicValue{
        type = 'xs:dayTimeDuration',
        value = #xsDateTime{}
    } = B
) ->
    NewT = T#xsDateTime{year = 1972, month = 1, day = 1},
    Ad = add_duration_to_dateTime(
        A#xqAtomicValue{
            type = 'xs:dateTime',
            value = NewT
        },
        B
    ),
    xqerl_mod_xs:xs_time([], Ad).

% returns: xs:time
subtract_dayTimeDuration_from_time(
    #xqAtomicValue{
        type = 'xs:time',
        value = #xsDateTime{} = T
    } = A,
    #xqAtomicValue{
        type = 'xs:dayTimeDuration',
        value = #xsDateTime{sign = S} = D
    } = B
) ->
    NewSign = reverse_sign(S),
    NewT = T#xsDateTime{year = 1972, month = 12, day = 31},
    Ad = add_duration_to_dateTime(
        A#xqAtomicValue{
            type = 'xs:dateTime',
            value = NewT
        },
        B#xqAtomicValue{value = D#xsDateTime{sign = NewSign}}
    ),
    xqerl_mod_xs:xs_time([], Ad).

% returns: xs:boolean
qName_equal(
    #xqAtomicValue{
        type = 'xs:QName',
        value = #qname{
            namespace = NsA,
            local_name = LnA
        }
    } = _At1,
    #xqAtomicValue{
        type = 'xs:QName',
        value = #qname{
            namespace = NsB,
            local_name = LnB
        }
    } = _At2
) ->
    NsA == NsB andalso LnA == LnB;
qName_equal(#xqAtomicValue{}, #xqAtomicValue{}) ->
    false.

% returns: xs:boolean
string_equal(#xqAtomicValue{value = A}, B) ->
    string_equal(A, B);
string_equal(A, #xqAtomicValue{value = B}) ->
    string_equal(A, B);
string_equal(A, B) ->
    A == B.

% returns: xs:boolean
string_less_than(#xqAtomicValue{value = A}, B) ->
    string_less_than(A, B);
string_less_than(A, #xqAtomicValue{value = B}) ->
    string_less_than(A, B);
string_less_than(A, B) ->
    A < B.

% returns: xs:boolean
string_greater_than(#xqAtomicValue{value = A}, B) ->
    string_greater_than(A, B);
string_greater_than(A, #xqAtomicValue{value = B}) ->
    string_greater_than(A, B);
string_greater_than(A, B) ->
    A > B.

% returns: xs:boolean
hexBinary_equal(A, B) ->
    A =:= B.

% returns: xs:boolean
hexBinary_less_than(A, B) ->
    A < B.

% returns: xs:boolean
hexBinary_greater_than(A, B) ->
    A > B.

% returns: xs:boolean
base64Binary_equal(A, B) ->
    A =:= B.

% returns: xs:boolean
base64Binary_less_than(A, B) ->
    A < B.

% returns: xs:boolean
base64Binary_greater_than(A, B) ->
    A > B.

% returns: xs:boolean
nOTATION_equal(
    #xqAtomicValue{
        type = 'xs:NOTATION',
        value = #qname{
            namespace = NsA,
            local_name = LnA
        }
    },
    #xqAtomicValue{
        type = 'xs:NOTATION',
        value = #qname{
            namespace = NsB,
            local_name = LnB
        }
    }
) ->
    NsA == NsB andalso LnA == LnB.

%% % returns: xs:numeric
%% numeric_unary_plus([]) -> [];
%% numeric_unary_plus([#xqAtomicValue{} = Arg]) -> numeric_unary_plus(Arg);
%% numeric_unary_plus(#xqAtomicValue{type = Type} = Arg) when ?xs_numeric(Type) ->
%%    Arg;
%% numeric_unary_plus(_) ->
%%    ?err('XPTY0004').

% returns: xs:numeric
numeric_unary_minus([]) ->
    [];
numeric_unary_minus([#xqAtomicValue{} = Arg]) ->
    numeric_unary_minus(Arg);
numeric_unary_minus(#xqAtomicValue{type = 'xs:float', value = 0.0} = Arg) ->
    Arg#xqAtomicValue{value = neg_zero};
numeric_unary_minus(0.0) ->
    neg_zero;
numeric_unary_minus(#xqAtomicValue{type = Type, value = infinity} = Arg) when ?xs_numeric(Type) ->
    Arg#xqAtomicValue{value = neg_infinity};
numeric_unary_minus(infinity) ->
    neg_infinity;
numeric_unary_minus(#xqAtomicValue{type = Type, value = neg_infinity} = Arg) when
    ?xs_numeric(Type)
->
    Arg#xqAtomicValue{value = infinity};
numeric_unary_minus(neg_infinity) ->
    infinity;
numeric_unary_minus(#xqAtomicValue{type = Type, value = nan} = Arg) when ?xs_numeric(Type) ->
    Arg#xqAtomicValue{value = nan};
numeric_unary_minus(nan) ->
    nan;
numeric_unary_minus(#xqAtomicValue{type = Type, value = Val} = Arg) when ?xs_numeric(Type) ->
    Arg#xqAtomicValue{value = xqerl_numeric:unary_minus(Val)};
numeric_unary_minus(Arg) when ?IS_NUMERIC(Arg) ->
    xqerl_numeric:unary_minus(Arg);
numeric_unary_minus(_) ->
    ?err('XPTY0004').

offset_to_seconds(#off_set{sign = '-', hour = OH, min = OM}) ->
    Secs = (OM * 60) + (OH * 3600) * -1,
    xqerl_numeric:decimal(Secs);
offset_to_seconds(#off_set{hour = OH, min = OM}) ->
    Secs = (OM * 60) + (OH * 3600),
    xqerl_numeric:decimal(Secs).

unary_sign('-') -> -1;
unary_sign(_) -> 1.

reverse_sign('-') -> '+';
reverse_sign(_) -> '-'.

negate(Bool) -> not Bool.

%% time calculations with day remainders
loc_quotient(A, B) ->
    Fract = xqerl_numeric:divide(A, B),
    TFract = xqerl_numeric:truncate(Fract),
    case xqerl_numeric:double(Fract) of
        DFract when DFract == -1 -> TFract;
        DFract when DFract < 0 -> TFract - 1;
        _ -> TFract
    end.

loc_quotient(A, Low, High) ->
    loc_quotient(
        xqerl_numeric:subtract(A, Low),
        xqerl_numeric:subtract(High, Low)
    ).

loc_modulo(A, B) ->
    xqerl_numeric:subtract(A, xqerl_numeric:multiply(loc_quotient(A, B), B)).

loc_modulo(A, Low, High) ->
    xqerl_numeric:add(
        loc_modulo(
            xqerl_numeric:subtract(A, Low),
            xqerl_numeric:subtract(High, Low)
        ),
        Low
    ).

loc_ldom(Year, Month) ->
    % abs() hack probably not right with BC leap years...
    calendar:last_day_of_the_month(abs(Year), Month).

add_duration_to_dateTime(
    #xqAtomicValue{
        type = 'xs:dateTime',
        value = #xsDateTime{
            sign = SnA,
            year = YrA,
            month = MoA,
            day = DyA,
            hour = HrA,
            minute = MiA,
            second = SdA,
            offset = OfA
        }
    },
    #xqAtomicValue{
        value = #xsDateTime{
            sign = SnB,
            year = YrB,
            month = MoB,
            day = DyB,
            hour = HrB,
            minute = MiB,
            second = SdB
        }
    }
) ->
    UA = unary_sign(SnA),
    UB = unary_sign(SnB),
    % months
    MonTemp = MoA * UA + MoB * UB,
    OutMon = loc_modulo(MonTemp, 1, 13),
    MonCarry = loc_quotient(MonTemp, 1, 13),
    % years
    OutYears = YrA * UA + YrB * UB + MonCarry,
    % zone
    OutZone = OfA,
    % seconds
    SecTemp = xqerl_numeric:add(
        xqerl_numeric:multiply(SdA, UA),
        xqerl_numeric:multiply(SdB, UB)
    ),
    OutSec = loc_modulo(SecTemp, 60),
    SecCarry = loc_quotient(SecTemp, 60),
    % minutes
    MinTemp = MiA * UA + MiB * UB + SecCarry,
    OutMin = loc_modulo(MinTemp, 60),
    MinCarry = loc_quotient(MinTemp, 60),
    % hours
    HrsTemp = HrA * UA + HrB * UB + MinCarry,
    OutHrs = loc_modulo(HrsTemp, 24),
    HrsCarry = loc_quotient(HrsTemp, 24),
    % days
    DayTemp =
        case DyA > loc_ldom(OutYears, OutMon) of
            true -> loc_ldom(OutYears, OutMon);
            _ when (DyA * UA) < 1 -> 1;
            _ -> DyA * UA
        end,
    OutDay = DayTemp + DyB * UB + HrsCarry,
    {OutYear1, OutMonth1, OutDay1} = duration_loop(OutYears, OutMon, OutDay),
    SnC =
        case OutYear1 < 0 orelse OutDay1 < 0 of
            true -> '-';
            false -> '+'
        end,
    #xqAtomicValue{
        type = 'xs:dateTime',
        value = #xsDateTime{
            sign = SnC,
            year = abs(OutYear1),
            month = OutMonth1,
            day = abs(OutDay1),
            hour = OutHrs,
            minute = OutMin,
            second = OutSec,
            offset = OutZone
        }
    }.

duration_loop(Year, Month, Day) ->
    {OutDay, Carry} =
        case Day < 1 of
            true ->
                case Month == 1 of
                    true ->
                        {Day + loc_ldom(Year - 1, 12), -1};
                    _ ->
                        {Day + loc_ldom(Year, Month - 1), -1}
                end;
            _ ->
                Max = loc_ldom(Year, Month),
                case Day > Max of
                    true ->
                        {Day - Max, 1};
                    _ ->
                        {Day, 0}
                end
        end,
    case Carry of
        0 ->
            {Year, Month, OutDay};
        _ ->
            Temp = Month + Carry,
            OutMonth = loc_modulo(Temp, 1, 13),
            OutYear = Year + loc_quotient(Temp, 1, 13),
            duration_loop(OutYear, OutMonth, OutDay)
    end.

% at top, common
key_val(V) when is_binary(V) ->
    V;
key_val(V) when is_number(V) ->
    {number, xqerl_numeric:sortable_decimal(V)};
key_val(V) when V == neg_zero; V == nan; V == infinity; V == neg_infinity ->
    {number, V};
key_val([Val]) ->
    key_val(Val);
key_val(#{nk := _} = Val) ->
    key_val(xqerl_types:atomize(Val));
key_val(#xqAtomicValue{type = 'xs:decimal', value = V}) ->
    {number, xqerl_numeric:sortable_decimal(V)};
key_val(#xqAtomicValue{type = 'xs:float', value = V}) when
    V == neg_zero; V == nan; V == infinity; V == neg_infinity
->
    {number, V};
key_val(#xqAtomicValue{type = 'xs:float', value = V}) ->
    {number, xqerl_numeric:sortable_decimal(V)};
key_val(#xqAtomicValue{type = Type, value = V}) when
    ?xs_string(Type); Type == 'xs:anyURI'; Type == 'xs:untypedAtomic'
->
    V;
key_val(#xqAtomicValue{type = 'xs:yearMonthDuration', value = V}) ->
    {duration, V};
key_val(#xqAtomicValue{type = 'xs:dayTimeDuration', value = V}) ->
    {duration, V};
key_val(#xqAtomicValue{type = 'xs:duration', value = V}) ->
    {duration, V};
key_val(#xqAtomicValue{type = 'xs:date'} = Val) ->
    S = #off_set{sign = '+', hour = 0, min = 0},
    #xqAtomicValue{type = 'xs:date', value = V} =
        xqerl_datetime:align_to_timezone(Val, S),
    {time, V};
key_val(#xqAtomicValue{type = 'xs:dateTime'} = Val) ->
    S = #off_set{sign = '+', hour = 0, min = 0},
    #xqAtomicValue{type = 'xs:dateTime', value = V} =
        xqerl_datetime:align_to_timezone(Val, S),
    {time, V};
key_val(#xqAtomicValue{type = 'xs:time'} = Val) ->
    S = #off_set{sign = '+', hour = 0, min = 0},
    #xqAtomicValue{type = 'xs:time', value = V} =
        xqerl_datetime:align_to_timezone(Val, S),
    {time, V};
key_val(#xqAtomicValue{
    type = 'xs:QName',
    value = #qname{namespace = N, local_name = L}
}) ->
    {N, L};
key_val(#xqAtomicValue{type = Type, value = Value}) ->
    {Type, Value};
key_val(true) ->
    {'xs:boolean', true};
key_val(false) ->
    {'xs:boolean', false};
key_val(_) ->
    ?err('XPTY0004').

%% Computes the effective boolean value of the sequence $arg.
% 3
eff_bool_val([true]) ->
    true;
eff_bool_val([false]) ->
    false;
% 1
eff_bool_val(true) ->
    true;
eff_bool_val(false) ->
    false;
eff_bool_val([]) ->
    false;
% 2
eff_bool_val(#{nk := _}) ->
    true;
eff_bool_val([#{nk := _} | _]) ->
    true;
eff_bool_val([A]) ->
    eff_bool_val(A);
% 4
eff_bool_val(<<>>) ->
    false;
eff_bool_val(Val) when is_binary(Val) ->
    true;
eff_bool_val(#xqAtomicValue{type = Type, value = <<>>}) when
    ?xs_string(Type); Type == 'xs:anyURI'; Type == 'xs:untypedAtomic'
->
    false;
eff_bool_val(#xqAtomicValue{type = Type}) when
    ?xs_string(Type); Type == 'xs:anyURI'; Type == 'xs:untypedAtomic'
->
    true;
% 5 + 6
eff_bool_val(Val) when is_integer(Val) ->
    Val =/= 0;
eff_bool_val(nan) ->
    false;
eff_bool_val(neg_zero) ->
    false;
eff_bool_val(infinity) ->
    true;
eff_bool_val(neg_infinity) ->
    true;
eff_bool_val(Val) when is_float(Val), Val == 0 ->
    false;
eff_bool_val(Val) when is_float(Val) ->
    true;
eff_bool_val(#xqAtomicValue{type = Type, value = {xsDecimal, 0, 0}}) when ?xs_numeric(Type) ->
    false;
eff_bool_val(#xqAtomicValue{type = Type, value = Val}) when ?xs_numeric(Type), Val == 0 ->
    false;
eff_bool_val(#xqAtomicValue{type = Type, value = neg_zero}) when ?xs_numeric(Type) ->
    false;
eff_bool_val(#xqAtomicValue{type = Type, value = nan}) when ?xs_numeric(Type) ->
    false;
eff_bool_val(#xqAtomicValue{type = Type, value = _}) when ?xs_numeric(Type) ->
    true;
eff_bool_val(#xqAtomicValue{} = A) ->
    ?dbg("boolean", {?LINE, A}),
    ?err('FORG0006');
eff_bool_val(Seq) ->
    ?dbg("boolean", Seq),
    ?err('FORG0006').

get_numeric_type(TypeA, TypeA) -> TypeA;
get_numeric_type('xs:double', _) -> 'xs:double';
get_numeric_type(_, 'xs:double') -> 'xs:double';
get_numeric_type('xs:float', _) -> 'xs:float';
get_numeric_type(_, 'xs:float') -> 'xs:float';
get_numeric_type('xs:decimal', _) -> 'xs:decimal';
get_numeric_type(_, 'xs:decimal') -> 'xs:decimal';
get_numeric_type('xs:integer', _) -> 'xs:integer';
get_numeric_type(_, 'xs:integer') -> 'xs:integer';
get_numeric_type(TypeA, TypeB) -> numtype(max(num(TypeA), num(TypeB))).

num('xs:double') -> 16;
num('xs:float') -> 15;
num('xs:decimal') -> 14;
num('xs:integer') -> 13;
num('xs:nonNegativeInteger') -> 12;
num('xs:positiveInteger') -> 11;
num('xs:nonPositiveInteger') -> 10;
num('xs:negativeInteger') -> 9;
num('xs:int') -> 8;
num('xs:unsignedInt') -> 7;
num('xs:long') -> 6;
num('xs:unsignedLong') -> 5;
num('xs:short') -> 4;
num('xs:unsignedShort') -> 3;
num('xs:byte') -> 2;
num('xs:unsignedByte') -> 1;
num(_) -> 99.

numtype(16) -> 'xs:double';
numtype(15) -> 'xs:float';
numtype(14) -> 'xs:decimal';
numtype(13) -> 'xs:integer';
numtype(12) -> 'xs:nonNegativeInteger';
numtype(11) -> 'xs:positiveInteger';
numtype(10) -> 'xs:nonPositiveInteger';
numtype(9) -> 'xs:negativeInteger';
numtype(8) -> 'xs:int';
numtype(7) -> 'xs:unsignedInt';
numtype(6) -> 'xs:long';
numtype(5) -> 'xs:unsignedLong';
numtype(4) -> 'xs:short';
numtype(3) -> 'xs:unsignedShort';
numtype(2) -> 'xs:byte';
numtype(1) -> 'xs:unsignedByte';
numtype(_) -> undefined.
