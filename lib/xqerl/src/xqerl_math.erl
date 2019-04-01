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

%% @doc Implementation of the "http://www.w3.org/2005/xpath-functions/math" 
%% namespace.
%% Pretty much just wraps the math module from Erlang and adds NaN, inf and -0.
 
-module(xqerl_math).

-include("xqerl.hrl").

-export(['acos'/2]).
-export(['asin'/2]).
-export(['atan'/2]).
-export(['atan2'/3]).
-export(['cos'/2]).
-export(['exp'/2]).
-export(['exp10'/2]).
-export(['log'/2]).
-export(['log10'/2]).
-export(['pi'/1]).
-export(['pow'/3]).
-export(['sin'/2]).
-export(['sqrt'/2]).
-export(['tan'/2]).

-define(NS,<<"http://www.w3.org/2005/xpath-functions/math">>).
-define(PX,<<"math">>).


-'module-namespace'({?NS,?PX}).
-namespaces([{"xqerl_xs", "xs"}]).
-variables([]).
-functions([
 {{qname,?NS, ?PX, <<"acos">>}, 
  {xqSeqType, 'xs:double', zero_or_one}, [], {'acos', 2}, 1, [{xqSeqType, 'xs:double', zero_or_one}]},
 {{qname, ?NS,?PX, <<"asin">>}, 
  {xqSeqType, 'xs:double', zero_or_one}, [], {'asin', 2}, 1, [{xqSeqType, 'xs:double', zero_or_one}]},
 {{qname, ?NS,?PX, <<"atan">>}, 
  {xqSeqType, 'xs:double', zero_or_one}, [], {'atan', 2}, 1, [{xqSeqType, 'xs:double', zero_or_one}]},
 {{qname, ?NS,?PX, <<"atan2">>}, 
  {xqSeqType, 'xs:double', one}, [], {'atan2', 3}, 2, [{xqSeqType, 'xs:double', one},{xqSeqType, 'xs:double', one}]},
 {{qname, ?NS,?PX, <<"cos">>}, 
  {xqSeqType, 'xs:double', zero_or_one}, [], {'cos', 2}, 1, [{xqSeqType, 'xs:double', zero_or_one}]},
 {{qname, ?NS,?PX, <<"exp">>}, 
  {xqSeqType, 'xs:double', zero_or_one}, [], {'exp', 2}, 1, [{xqSeqType, 'xs:double', zero_or_one}]},
 {{qname, ?NS,?PX, <<"exp10">>}, 
  {xqSeqType, 'xs:double', zero_or_one}, [], {'exp10', 2}, 1, [{xqSeqType, 'xs:double', zero_or_one}]},
 {{qname, ?NS,?PX, <<"log">>}, 
  {xqSeqType, 'xs:double', zero_or_one}, [], {'log', 2}, 1, [{xqSeqType, 'xs:double', zero_or_one}]},
 {{qname, ?NS,?PX, <<"log10">>}, 
  {xqSeqType, 'xs:double', zero_or_one}, [], {'log10', 2}, 1, [{xqSeqType, 'xs:double', zero_or_one}]},
 {{qname, ?NS,?PX, <<"pi">>}, 
  {xqSeqType, 'xs:double', one}, [], {'pi', 1}, 0, []},
 {{qname, ?NS,?PX, <<"pow">>}, 
  {xqSeqType, 'xs:double', zero_or_one}, [], {'pow', 3}, 2, [{xqSeqType, 'xs:double', zero_or_one},{xqSeqType, 'xs:numeric', one}]},
 {{qname, ?NS,?PX, <<"sin">>}, 
  {xqSeqType, 'xs:double', zero_or_one}, [], {'sin', 2}, 1, [{xqSeqType, 'xs:double', zero_or_one}]},
 {{qname, ?NS,?PX, <<"sqrt">>}, 
  {xqSeqType, 'xs:double', zero_or_one}, [], {'sqrt', 2}, 1, [{xqSeqType, 'xs:double', zero_or_one}]},
 {{qname, ?NS,?PX, <<"tan">>}, 
  {xqSeqType, 'xs:double', zero_or_one}, [], {'tan', 2}, 1, [{xqSeqType, 'xs:double', zero_or_one}]}]).

-define(dbl(D), D).

%% Returns the arc cosine of the argument. 
'acos'(_Ctx, []) -> [];
'acos'(_Ctx, [Seq]) -> 'acos'(_Ctx,Seq);
'acos'(_Ctx, #xqAtomicValue{value = X}) -> 'acos'(_Ctx, X);
'acos'(_Ctx, neg_zero) -> ?dbl(math:acos(0));
'acos'(_Ctx, nan) -> ?dbl(nan);
'acos'(_Ctx, X) when is_number(X), abs(X) > 1 -> ?dbl(nan);
'acos'(_Ctx, X) ->
   case catch math:acos(X) of
      {'EXIT',_} ->
         ?dbl(nan);
      Z ->
         ?dbl(Z)
   end.

%% Returns the arc sine of the argument. 
'asin'(_Ctx, []) -> [];
'asin'(_Ctx, [Arg]) -> 'asin'(_Ctx,Arg);
'asin'(_Ctx, #xqAtomicValue{value = X}) -> 'asin'(_Ctx, X);
'asin'(_Ctx, A) when A == 0 -> A;
'asin'(_Ctx, neg_zero) -> ?dbl(neg_zero);
'asin'(_Ctx, nan) -> ?dbl(nan);
'asin'(_Ctx, X) when abs(X) > 1 -> ?dbl(nan);
'asin'(_Ctx, X) ->
     case catch math:asin(X) of
        {'EXIT',_} ->
           ?dbl(nan);
        Z ->
           ?dbl(Z)
     end.

%% Returns the arc tangent of the argument. 
'atan'(_Ctx, []) -> [];
'atan'(_Ctx, [Seq]) -> 'atan'(_Ctx,Seq);
'atan'(_Ctx, #xqAtomicValue{value = X}) -> 'atan'(_Ctx, X);
'atan'(_Ctx, A) when A == 0 -> A;
'atan'(_Ctx, neg_zero) -> ?dbl(neg_zero);
'atan'(_Ctx, nan) -> ?dbl(nan);
'atan'(_Ctx, infinity) -> ?dbl(math:pi() / 2);
'atan'(_Ctx, neg_infinity) -> ?dbl(- math:pi() / 2);
'atan'(_Ctx, X) -> 
   case catch math:atan(X) of
      {'EXIT',_} ->
         ?dbl(nan);
      Z ->
         ?dbl(Z)
   end.

%% Returns the angle in radians subtended at the origin by the point on a 
%% plane with coordinates (x, y) and the positive x-axis. 
'atan2'(_Ctx, [X], Y) -> 'atan2'(_Ctx, X, Y);
'atan2'(_Ctx, X, [Y]) -> 'atan2'(_Ctx, X, Y);
'atan2'(_Ctx, #xqAtomicValue{value = X}, Y) -> 'atan2'(_Ctx, X, Y);
'atan2'(_Ctx, X, #xqAtomicValue{value = Y}) -> 'atan2'(_Ctx, X, Y);
% special values
'atan2'(_Ctx, neg_zero, V) when V == 0.0 -> ?dbl(neg_zero);
'atan2'(_Ctx, neg_zero, V) when V == -1.0 -> ?dbl(-math:pi());
'atan2'(_Ctx, V, neg_zero) when V == -1.0 -> ?dbl(math:atan2(-1.0, 0.0));
'atan2'(_Ctx, neg_zero, V) when V == 1.0 -> ?dbl(neg_zero);
'atan2'(_Ctx, V, neg_zero) when V == 0.0 -> ?dbl(math:pi());
'atan2'(_Ctx, neg_zero, neg_zero) -> ?dbl(-math:pi());
'atan2'(_Ctx, X, Y) -> 
   case catch math:atan2(X,Y) of
      {'EXIT',_} ->
         ?dbl(nan);
      Z ->
         ?dbl(Z)
   end.

%% Returns the cosine of the argument. The argument is an angle in radians. 
'cos'(_Ctx, []) -> [];
'cos'(_Ctx, [Seq]) -> 'cos'(_Ctx,Seq);
'cos'(_Ctx, #xqAtomicValue{value = X}) -> 'cos'(_Ctx, X) ;
'cos'(_Ctx, neg_zero) -> ?dbl(1.0);
'cos'(_Ctx, X) -> 
   case catch math:cos(X) of
      {'EXIT',_} ->
         ?dbl(nan);
      Z ->
         ?dbl(Z)
   end.

%% Returns the value of ex. 
'exp'(_Ctx, []) -> [];
'exp'(_Ctx, [Seq]) -> 'exp'(_Ctx,Seq);
'exp'(_Ctx, #xqAtomicValue{value = X}) -> 'exp'(_Ctx, X);
'exp'(_Ctx, nan = X) -> X;
'exp'(_Ctx, infinity = X) -> X;
'exp'(_Ctx, neg_infinity) -> ?dbl(0.0);
'exp'(_Ctx, X) ->
   case catch math:exp(X) of
      {'EXIT',_} ->
         ?dbl(nan);
      Z ->
         ?dbl(Z)
   end.

%% Returns the value of 10x. 
'exp10'(_Ctx, []) -> [];
'exp10'(_Ctx, [Seq]) -> 'exp10'(_Ctx,Seq);
'exp10'(_Ctx, #xqAtomicValue{value = X}) -> 'exp10'(_Ctx, X);
'exp10'(_Ctx, nan = X) -> X;
'exp10'(_Ctx, infinity = X) -> X;
'exp10'(_Ctx, neg_infinity) -> ?dbl(0.0);
'exp10'(_Ctx, X) ->
   case catch math:pow(10, X) of
      {'EXIT',_} ->
         ?dbl(nan);
      Z ->
         ?dbl(Z)
   end.

%% Returns the natural logarithm of the argument. 
'log'(_Ctx, []) -> [];
'log'(_Ctx, [Seq]) -> 'log'(_Ctx,Seq);
'log'(_Ctx, #xqAtomicValue{value = X}) -> 'log'(_Ctx, X);
'log'(_Ctx, nan = X) -> X;
'log'(_Ctx, infinity = X) -> X;
'log'(_Ctx, neg_infinity) -> ?dbl(nan);
'log'(_Ctx, X) when X == 0 -> ?dbl(neg_infinity);
'log'(_Ctx, X) when X < 0 -> ?dbl(nan);
'log'(_Ctx, X) ->
   case catch math:log(X) of
      {'EXIT',_} ->
         ?dbl(nan);
      Z ->
         ?dbl(Z)
   end.

%% Returns the base-ten logarithm of the argument. 
'log10'(_Ctx, []) -> [];
'log10'(_Ctx, [Seq]) -> 'log'(_Ctx,Seq);
'log10'(_Ctx, #xqAtomicValue{value = X}) -> 'log10'(_Ctx, X);
'log10'(_Ctx, nan = X) -> X;
'log10'(_Ctx, infinity = X) -> X;
'log10'(_Ctx, neg_infinity) -> ?dbl(nan);
'log10'(_Ctx, X) when X == 0 -> ?dbl(neg_infinity);
'log10'(_Ctx, X) when X < 0 -> ?dbl(nan);
'log10'(_Ctx, X) ->
   case catch math:log10(X) of
      {'EXIT',_} ->
         ?dbl(nan);
      Z ->
         ?dbl(Z)
   end.

%% Returns an approximation to the mathematical constant π. 
'pi'(_Ctx) -> ?dbl(math:pi()).

%% Returns the result of raising the first argument to the power of the second. 
'pow'(_Ctx, [],_) -> [];
'pow'(_Ctx, [X], Y) -> 'pow'(_Ctx, X, Y);
'pow'(_Ctx, X, [Y]) -> 'pow'(_Ctx, X, Y);
'pow'(_Ctx, #xqAtomicValue{value = X}, Y) -> 'pow'(_Ctx, X, Y);
'pow'(_Ctx, X, #xqAtomicValue{value = Y}) -> 'pow'(_Ctx, X, Y);
'pow'(_Ctx, infinity, Y) when Y == 0 -> ?dbl(1.0);
'pow'(_Ctx, neg_infinity, Y) when Y == 0 -> ?dbl(1.0);
'pow'(_Ctx, nan, Y) when Y == 0 -> ?dbl(1.0);
'pow'(_Ctx, X, Y) when X == 0, Y < 0 -> ?dbl(infinity); 
'pow'(_Ctx, neg_zero, Y) when Y < 0, trunc(Y) == Y ->
   if trunc(Y) rem 2 == -1 ->
         ?dbl(neg_infinity);
      true ->
         ?dbl(infinity)
   end;
'pow'(_Ctx, neg_zero, Y) when Y < 0 -> ?dbl(infinity);
'pow'(_Ctx, neg_zero, Y) when Y > 0, trunc(Y) == Y ->
   if trunc(Y) rem 2 == 1 ->
         ?dbl(neg_zero);
      true ->
         ?dbl(0.0)
   end;
'pow'(_Ctx, neg_zero, Y) when Y > 0 -> ?dbl(0.0);
'pow'(_Ctx, X, _Y) when abs(X) == 1 -> ?dbl(1.0);
'pow'(_Ctx, X, Y) ->
   case catch math:pow(X, Y) of
      {'EXIT',_} ->
         ?dbl(nan);
      Z ->
         ?dbl(Z)
   end.

%% Returns the sine of the argument. The argument is an angle in radians. 
'sin'(_Ctx, []) -> [];
'sin'(_Ctx, [Seq]) -> 'sin'(_Ctx,Seq);
'sin'(_Ctx, #xqAtomicValue{value = X}) -> 'sin'(_Ctx, X);
'sin'(_Ctx, X) when X == 0 -> X;
'sin'(_Ctx, neg_zero = X) -> X;
'sin'(_Ctx, nan = X) -> X;
'sin'(_Ctx, neg_infinity) -> ?dbl(nan);
'sin'(_Ctx, X) ->
   case catch math:sin(X) of
      {'EXIT',_} ->
         ?dbl(nan);
      Z ->
         ?dbl(Z)
   end.

%% Returns the non-negative square root of the argument. 
'sqrt'(_Ctx, []) -> [];
'sqrt'(_Ctx, [Seq]) -> 'sqrt'(_Ctx,Seq);
'sqrt'(_Ctx, #xqAtomicValue{value = X}) -> 'sqrt'(_Ctx, X);
'sqrt'(_Ctx, nan = X) -> X;
'sqrt'(_Ctx, infinity = X) -> X;
'sqrt'(_Ctx, neg_zero = X) -> X;
'sqrt'(_Ctx, neg_infinity) -> ?dbl(nan);
'sqrt'(_Ctx, X) ->
   case catch math:sqrt(X) of
      {'EXIT',_} ->
         ?dbl(nan);
      Z ->
         ?dbl(Z)
   end.

%% Returns the tangent of the argument. The argument is an angle in radians. 
'tan'(_Ctx, []) -> [];
'tan'(_Ctx, [Seq]) -> 'tan'(_Ctx,Seq);
'tan'(_Ctx, #xqAtomicValue{value = X}) -> 'tan'(_Ctx, X);
'tan'(_Ctx, neg_zero) -> ?dbl(neg_zero);
'tan'(_Ctx, X) ->
   case catch math:tan(X) of
      {'EXIT',_} ->
         ?dbl(nan);
      Z ->
         ?dbl(Z)
   end.
