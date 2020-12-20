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

%% @doc Implementation of the "http://www.w3.org/2005/xpath-functions/math"
%% namespace.
%% Pretty much just wraps the math module from Erlang and adds NaN, inf and -0.

-module(xqerl_mod_math).

-include("xqerl.hrl").

-export([acos/2]).
-export([asin/2]).
-export([atan/2]).
-export([atan2/3]).
-export([cos/2]).
-export([exp/2]).
-export([exp10/2]).
-export([log/2]).
-export([log10/2]).
-export(['pi'/1]).
-export([pow/3]).
-export([sin/2]).
-export([sqrt/2]).
-export([tan/2]).

-define(NS, <<"http://www.w3.org/2005/xpath-functions/math">>).
-define(PX, <<"math">>).

-'module-namespace'({?NS, ?PX}).

-namespaces([{"xqerl_mod_xs", "xs"}]).

-variables([]).

-functions([
    {{qname, ?NS, ?PX, <<"acos">>}, {seqType, 'xs:double', zero_or_one}, [], {acos, 2}, 1, [
        {seqType, 'xs:double', zero_or_one}
    ]},
    {{qname, ?NS, ?PX, <<"asin">>}, {seqType, 'xs:double', zero_or_one}, [], {asin, 2}, 1, [
        {seqType, 'xs:double', zero_or_one}
    ]},
    {{qname, ?NS, ?PX, <<"atan">>}, {seqType, 'xs:double', zero_or_one}, [], {atan, 2}, 1, [
        {seqType, 'xs:double', zero_or_one}
    ]},
    {{qname, ?NS, ?PX, <<"atan2">>}, {seqType, 'xs:double', one}, [], {atan2, 3}, 2, [
        {seqType, 'xs:double', one},
        {seqType, 'xs:double', one}
    ]},
    {{qname, ?NS, ?PX, <<"cos">>}, {seqType, 'xs:double', zero_or_one}, [], {cos, 2}, 1, [
        {seqType, 'xs:double', zero_or_one}
    ]},
    {{qname, ?NS, ?PX, <<"exp">>}, {seqType, 'xs:double', zero_or_one}, [], {exp, 2}, 1, [
        {seqType, 'xs:double', zero_or_one}
    ]},
    {{qname, ?NS, ?PX, <<"exp10">>}, {seqType, 'xs:double', zero_or_one}, [], {exp10, 2}, 1, [
        {seqType, 'xs:double', zero_or_one}
    ]},
    {{qname, ?NS, ?PX, <<"log">>}, {seqType, 'xs:double', zero_or_one}, [], {log, 2}, 1, [
        {seqType, 'xs:double', zero_or_one}
    ]},
    {{qname, ?NS, ?PX, <<"log10">>}, {seqType, 'xs:double', zero_or_one}, [], {log10, 2}, 1, [
        {seqType, 'xs:double', zero_or_one}
    ]},
    {{qname, ?NS, ?PX, <<"pi">>}, {seqType, 'xs:double', one}, [], {'pi', 1}, 0, []},
    {{qname, ?NS, ?PX, <<"pow">>}, {seqType, 'xs:double', zero_or_one}, [], {pow, 3}, 2, [
        {seqType, 'xs:double', zero_or_one},
        {seqType, 'xs:numeric', one}
    ]},
    {{qname, ?NS, ?PX, <<"sin">>}, {seqType, 'xs:double', zero_or_one}, [], {sin, 2}, 1, [
        {seqType, 'xs:double', zero_or_one}
    ]},
    {{qname, ?NS, ?PX, <<"sqrt">>}, {seqType, 'xs:double', zero_or_one}, [], {sqrt, 2}, 1, [
        {seqType, 'xs:double', zero_or_one}
    ]},
    {{qname, ?NS, ?PX, <<"tan">>}, {seqType, 'xs:double', zero_or_one}, [], {tan, 2}, 1, [
        {seqType, 'xs:double', zero_or_one}
    ]}
]).

%% Returns the arc cosine of the argument.
acos(_, Arg) -> acos(Arg).

acos([]) ->
    [];
acos([Seq]) ->
    acos(Seq);
acos(#xqAtomicValue{value = X}) ->
    acos(X);
acos(neg_zero) ->
    math:acos(0);
acos(nan) ->
    nan;
acos(X) when is_number(X), abs(X) > 1 ->
    nan;
acos(X) ->
    case catch math:acos(X) of
        {'EXIT', _} -> nan;
        Z -> Z
    end.

%% Returns the arc sine of the argument.
asin(_, Arg) -> asin(Arg).

asin([]) ->
    [];
asin([Arg]) ->
    asin(Arg);
asin(#xqAtomicValue{value = X}) ->
    asin(X);
asin(A) when A == 0 ->
    A;
asin(neg_zero) ->
    neg_zero;
asin(nan) ->
    nan;
asin(X) when abs(X) > 1 ->
    nan;
asin(X) ->
    case catch math:asin(X) of
        {'EXIT', _} ->
            nan;
        Z ->
            Z
    end.

%% Returns the arc tangent of the argument.
atan(_, Arg) -> atan(Arg).

atan([]) ->
    [];
atan([Seq]) ->
    atan(Seq);
atan(#xqAtomicValue{value = X}) ->
    atan(X);
atan(A) when A == 0 ->
    A;
atan(neg_zero) ->
    neg_zero;
atan(nan) ->
    nan;
atan(infinity) ->
    math:pi() / 2;
atan(neg_infinity) ->
    -math:pi() / 2;
atan(X) ->
    case catch math:atan(X) of
        {'EXIT', _} ->
            nan;
        Z ->
            Z
    end.

%% Returns the angle in radians subtended at the origin by the point on a
%% plane with coordinates (x, y) and the positive x-axis.
atan2(_, Arg1, Arg2) -> atan2(Arg1, Arg2).

atan2([X], Y) ->
    atan2(X, Y);
atan2(X, [Y]) ->
    atan2(X, Y);
atan2(#xqAtomicValue{value = X}, Y) ->
    atan2(X, Y);
atan2(X, #xqAtomicValue{value = Y}) ->
    atan2(X, Y);
% special values
atan2(neg_zero, V) when V == 0.0 ->
    neg_zero;
atan2(neg_zero, V) when V == -1.0 ->
    -math:pi();
atan2(V, neg_zero) when V == -1.0 ->
    math:atan2(-1.0, 0.0);
atan2(neg_zero, V) when V == 1.0 ->
    neg_zero;
atan2(V, neg_zero) when V == 0.0 ->
    math:pi();
atan2(neg_zero, neg_zero) ->
    -math:pi();
atan2(X, Y) ->
    case catch math:atan2(X, Y) of
        {'EXIT', _} ->
            nan;
        Z ->
            Z
    end.

%% Returns the cosine of the argument. The argument is an angle in radians.
cos(_, Arg) -> cos(Arg).

cos([]) ->
    [];
cos([Seq]) ->
    cos(Seq);
cos(#xqAtomicValue{value = X}) ->
    cos(X);
cos(neg_zero) ->
    1.0;
cos(X) ->
    case catch math:cos(X) of
        {'EXIT', _} ->
            nan;
        Z ->
            Z
    end.

%% Returns the value of ex.
exp(_, Arg) -> exp(Arg).

exp([]) ->
    [];
exp([Seq]) ->
    exp(Seq);
exp(#xqAtomicValue{value = X}) ->
    exp(X);
exp(nan = X) ->
    X;
exp(infinity = X) ->
    X;
exp(neg_infinity) ->
    0.0;
exp(X) ->
    case catch math:exp(X) of
        {'EXIT', _} ->
            nan;
        Z ->
            Z
    end.

%% Returns the value of 10x.
exp10(_, Arg) -> exp10(Arg).

exp10([]) ->
    [];
exp10([Seq]) ->
    exp10(Seq);
exp10(#xqAtomicValue{value = X}) ->
    exp10(X);
exp10(nan = X) ->
    X;
exp10(infinity = X) ->
    X;
exp10(neg_infinity) ->
    0.0;
exp10(X) ->
    case catch math:pow(10, X) of
        {'EXIT', _} ->
            nan;
        Z ->
            Z
    end.

%% Returns the natural logarithm of the argument.
log(_, Arg) -> log(Arg).

log([]) ->
    [];
log([Seq]) ->
    log(Seq);
log(#xqAtomicValue{value = X}) ->
    log(X);
log(nan = X) ->
    X;
log(infinity = X) ->
    X;
log(neg_infinity) ->
    nan;
log(X) when X == 0 ->
    neg_infinity;
log(X) when X < 0 ->
    nan;
log(X) ->
    case catch math:log(X) of
        {'EXIT', _} ->
            nan;
        Z ->
            Z
    end.

%% Returns the base-ten logarithm of the argument.
log10(_, Arg) -> log10(Arg).

log10([]) ->
    [];
log10([Seq]) ->
    log10(Seq);
log10(#xqAtomicValue{value = X}) ->
    log10(X);
log10(nan = X) ->
    X;
log10(infinity = X) ->
    X;
log10(neg_infinity) ->
    nan;
log10(X) when X == 0 ->
    neg_infinity;
log10(X) when X < 0 ->
    nan;
log10(X) ->
    case catch math:log10(X) of
        {'EXIT', _} ->
            nan;
        Z ->
            Z
    end.

%% Returns an approximation to the mathematical constant π.
pi(_Ctx) -> math:pi().

%% Returns the result of raising the first argument to the power of the second.
pow(_, Arg1, Arg2) -> pow(Arg1, Arg2).

pow([], _) ->
    [];
pow([X], Y) ->
    pow(X, Y);
pow(X, [Y]) ->
    pow(X, Y);
pow(#xqAtomicValue{value = X}, Y) ->
    pow(X, Y);
pow(X, #xqAtomicValue{value = Y}) ->
    pow(X, Y);
pow(infinity, Y) when Y == 0 ->
    1.0;
pow(neg_infinity, Y) when Y == 0 ->
    1.0;
pow(nan, Y) when Y == 0 ->
    1.0;
pow(X, Y) when X == 0, Y < 0 ->
    infinity;
pow(neg_zero, Y) when Y < 0, trunc(Y) == Y, trunc(Y) rem 2 == -1 ->
    neg_infinity;
pow(neg_zero, Y) when Y < 0, trunc(Y) == Y ->
    infinity;
pow(neg_zero, Y) when Y < 0 ->
    infinity;
pow(neg_zero, Y) when Y > 0, trunc(Y) == Y, trunc(Y) rem 2 == 1 ->
    neg_zero;
pow(neg_zero, Y) when Y > 0, trunc(Y) == Y ->
    0.0;
pow(neg_zero, Y) when Y > 0 ->
    0.0;
pow(X, _Y) when abs(X) == 1 ->
    1.0;
pow(X, Y) ->
    case catch math:pow(X, Y) of
        {'EXIT', _} ->
            nan;
        Z ->
            Z
    end.

%% Returns the sine of the argument. The argument is an angle in radians.
sin(_, Arg) -> sin(Arg).

sin([]) ->
    [];
sin([Seq]) ->
    sin(Seq);
sin(#xqAtomicValue{value = X}) ->
    sin(X);
sin(X) when X == 0 ->
    X;
sin(neg_zero = X) ->
    X;
sin(nan = X) ->
    X;
sin(neg_infinity) ->
    nan;
sin(X) ->
    case catch math:sin(X) of
        {'EXIT', _} ->
            nan;
        Z ->
            Z
    end.

%% Returns the non-negative square root of the argument.
sqrt(_, Arg) -> sqrt(Arg).

sqrt([]) ->
    [];
sqrt([Seq]) ->
    sqrt(Seq);
sqrt(#xqAtomicValue{value = X}) ->
    sqrt(X);
sqrt(nan = X) ->
    X;
sqrt(infinity = X) ->
    X;
sqrt(neg_zero = X) ->
    X;
sqrt(neg_infinity) ->
    nan;
sqrt(X) ->
    case catch math:sqrt(X) of
        {'EXIT', _} ->
            nan;
        Z ->
            Z
    end.

%% Returns the tangent of the argument. The argument is an angle in radians.
tan(_, Arg) -> tan(Arg).

tan([]) ->
    [];
tan([Seq]) ->
    tan(Seq);
tan(#xqAtomicValue{value = X}) ->
    tan(X);
tan(neg_zero) ->
    neg_zero;
tan(X) ->
    case catch math:tan(X) of
        {'EXIT', _} ->
            nan;
        Z ->
            Z
    end.
