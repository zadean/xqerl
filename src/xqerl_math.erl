%% -------------------------------------------------------------------
%%
%% xqerl - XQuery processor
%%
%% Copyright (c) 2017-2018 Zachary N. Dean  All Rights Reserved.
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

%% @doc Implementation of the "http://www.w3.org/2005/xpath-functions/math" namespace.
%% Pretty much just wraps the math module from Erlang.
 
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

-'module-namespace'({"http://www.w3.org/2005/xpath-functions/math","math"}).
-namespaces([{"xqerl_xs", "xs"}]).
-variables([]).
-functions([
 {{qname,"http://www.w3.org/2005/xpath-functions/math", "math","acos"}, 
  {xqSeqType, 'xs:double', zero_or_one}, [], {'acos', 2}, 1, [{xqSeqType, 'xs:double', zero_or_one}]},
 {{qname, "http://www.w3.org/2005/xpath-functions/math","math", "asin"}, 
  {xqSeqType, 'xs:double', zero_or_one}, [], {'asin', 2}, 1, [{xqSeqType, 'xs:double', zero_or_one}]},
 {{qname, "http://www.w3.org/2005/xpath-functions/math","math", "atan"}, 
  {xqSeqType, 'xs:double', zero_or_one}, [], {'atan', 2}, 1, [{xqSeqType, 'xs:double', zero_or_one}]},
 {{qname, "http://www.w3.org/2005/xpath-functions/math","math", "atan2"}, 
  {xqSeqType, 'xs:double', one}, [], {'atan2', 3}, 2, [{xqSeqType, 'xs:double', one},{xqSeqType, 'xs:double', one}]},
 {{qname, "http://www.w3.org/2005/xpath-functions/math","math", "cos"}, 
  {xqSeqType, 'xs:double', zero_or_one}, [], {'cos', 2}, 1, [{xqSeqType, 'xs:double', zero_or_one}]},
 {{qname, "http://www.w3.org/2005/xpath-functions/math","math", "exp"}, 
  {xqSeqType, 'xs:double', zero_or_one}, [], {'exp', 2}, 1, [{xqSeqType, 'xs:double', zero_or_one}]},
 {{qname, "http://www.w3.org/2005/xpath-functions/math","math", "exp10"}, 
  {xqSeqType, 'xs:double', zero_or_one}, [], {'exp10', 2}, 1, [{xqSeqType, 'xs:double', zero_or_one}]},
 {{qname, "http://www.w3.org/2005/xpath-functions/math","math", "log"}, 
  {xqSeqType, 'xs:double', zero_or_one}, [], {'log', 2}, 1, [{xqSeqType, 'xs:double', zero_or_one}]},
 {{qname, "http://www.w3.org/2005/xpath-functions/math","math", "log10"}, 
  {xqSeqType, 'xs:double', zero_or_one}, [], {'log10', 2}, 1, [{xqSeqType, 'xs:double', zero_or_one}]},
 {{qname, "http://www.w3.org/2005/xpath-functions/math","math", "pi"}, 
  {xqSeqType, 'xs:double', one}, [], {'pi', 1}, 0, []},
 {{qname, "http://www.w3.org/2005/xpath-functions/math","math", "pow"}, 
  {xqSeqType, 'xs:double', zero_or_one}, [], {'pow', 3}, 2, [{xqSeqType, 'xs:double', zero_or_one},{xqSeqType, 'xs:numeric', one}]},
 {{qname, "http://www.w3.org/2005/xpath-functions/math","math", "sin"}, 
  {xqSeqType, 'xs:double', zero_or_one}, [], {'sin', 2}, 1, [{xqSeqType, 'xs:double', zero_or_one}]},
 {{qname, "http://www.w3.org/2005/xpath-functions/math","math", "sqrt"}, 
  {xqSeqType, 'xs:double', zero_or_one}, [], {'sqrt', 2}, 1, [{xqSeqType, 'xs:double', zero_or_one}]},
 {{qname, "http://www.w3.org/2005/xpath-functions/math","math", "tan"}, 
  {xqSeqType, 'xs:double', zero_or_one}, [], {'tan', 2}, 1, [{xqSeqType, 'xs:double', zero_or_one}]}]).


%% Returns the arc cosine of the argument. 
'acos'(_Ctx,[]) -> [];
'acos'(_Ctx,[Seq]) -> 
   'acos'(_Ctx,Seq);
'acos'(_Ctx,#xqAtomicValue{value = neg_zero}) -> 
   #xqAtomicValue{type = 'xs:double', value = math:acos(0)};
'acos'(_Ctx,#xqAtomicValue{value = nan}) -> 
   #xqAtomicValue{type = 'xs:double', value = nan};
'acos'(_Ctx,#xqAtomicValue{value = X}) when abs(X) > 1 -> 
   #xqAtomicValue{type = 'xs:double', value = nan};
'acos'(_Ctx,#xqAtomicValue{value = X}) ->
   case catch math:acos(X) of
      {'EXIT',_} ->
         #xqAtomicValue{type = 'xs:double', value = nan};
      Z ->
         #xqAtomicValue{type = 'xs:double', value = Z}
   end.

%% Returns the arc sine of the argument. 
'asin'(_Ctx,[]) -> [];
'asin'(_Ctx,[Arg]) -> 
   'asin'(_Ctx,Arg);
'asin'(_Ctx,#xqAtomicValue{value = X} = A) when X == 0 -> 
   A;
'asin'(_Ctx,#xqAtomicValue{value = neg_zero}) -> 
   #xqAtomicValue{type = 'xs:double', value = neg_zero};
'asin'(_Ctx,#xqAtomicValue{value = nan}) -> 
   #xqAtomicValue{type = 'xs:double', value = nan};
'asin'(_Ctx,#xqAtomicValue{value=X}) when abs(X) > 1 -> 
   #xqAtomicValue{type = 'xs:double', value=nan};
'asin'(_Ctx,#xqAtomicValue{value = X}) ->
     case catch math:asin(X) of
        {'EXIT',_} ->
           #xqAtomicValue{type = 'xs:double', value = nan};
        Z ->
           #xqAtomicValue{type = 'xs:double', value = Z}
     end.

%% Returns the arc tangent of the argument. 
'atan'(_Ctx,[]) -> [];
'atan'(_Ctx,[Seq]) ->
   'atan'(_Ctx,Seq);
'atan'(_Ctx,#xqAtomicValue{value = V} = A) when V == 0 ->
   A;
'atan'(_Ctx,#xqAtomicValue{value = neg_zero}) -> 
   #xqAtomicValue{type = 'xs:double', value = neg_zero};
'atan'(_Ctx,#xqAtomicValue{value = nan}) -> 
   #xqAtomicValue{type = 'xs:double', value = nan};
'atan'(_Ctx,#xqAtomicValue{value = infinity}) -> 
   #xqAtomicValue{type = 'xs:double', value = math:pi() / 2 };
'atan'(_Ctx,#xqAtomicValue{value = neg_infinity}) -> 
   #xqAtomicValue{type = 'xs:double', value = - math:pi() / 2 };
'atan'(_Ctx,#xqAtomicValue{value = X}) -> 
   case catch math:atan(X) of
      {'EXIT',_} ->
         #xqAtomicValue{type = 'xs:double', value = nan};
      Z ->
         #xqAtomicValue{type = 'xs:double', value = Z}
   end.

%% Returns the angle in radians subtended at the origin by the point on a plane with coordinates (x, y) and the positive x-axis. 
'atan2'(_Ctx,[X],Y) -> 'atan2'(_Ctx,X,Y);
'atan2'(_Ctx,X,[Y]) -> 'atan2'(_Ctx,X,Y);
% special values
'atan2'(_Ctx,#xqAtomicValue{value = neg_zero},#xqAtomicValue{value = V}) when V == 0.0 ->
   #xqAtomicValue{type = 'xs:double', value = neg_zero};
'atan2'(_Ctx,#xqAtomicValue{value = neg_zero},#xqAtomicValue{value = V}) when V == -1.0 ->
   #xqAtomicValue{type = 'xs:double', value = -math:pi()};
'atan2'(_Ctx,#xqAtomicValue{value = V},#xqAtomicValue{value = neg_zero}) when V == -1.0 ->
   #xqAtomicValue{type = 'xs:double', value = math:atan2(-1.0,0.0)};
'atan2'(_Ctx,#xqAtomicValue{value = neg_zero},#xqAtomicValue{value = V}) when V == 1.0 ->
   #xqAtomicValue{type = 'xs:double', value = neg_zero};
'atan2'(_Ctx,#xqAtomicValue{value = V},#xqAtomicValue{value = neg_zero}) when V == 0.0 ->
   #xqAtomicValue{type = 'xs:double', value = math:pi()};
'atan2'(_Ctx,#xqAtomicValue{value = neg_zero},#xqAtomicValue{value = neg_zero}) ->
   #xqAtomicValue{type = 'xs:double', value = -math:pi()};
'atan2'(_Ctx,#xqAtomicValue{value = X},#xqAtomicValue{value = Y}) -> 
   case catch math:atan2(X,Y) of
      {'EXIT',_} ->
         #xqAtomicValue{type = 'xs:double', value = nan};
      Z ->
         #xqAtomicValue{type = 'xs:double', value = Z}
   end.

%% Returns the cosine of the argument. The argument is an angle in radians. 
'cos'(_Ctx,[]) -> [];
'cos'(_Ctx,[Seq]) -> 'cos'(_Ctx,Seq);
'cos'(_Ctx,#xqAtomicValue{value = neg_zero}) ->
   #xqAtomicValue{type = 'xs:double', value = 1.0};
'cos'(_Ctx,#xqAtomicValue{value = X}) -> 
   case catch math:cos(X) of
      {'EXIT',_} ->
         #xqAtomicValue{type = 'xs:double', value = nan};
      Z ->
         #xqAtomicValue{type = 'xs:double', value = Z}
   end.

%% Returns the value of ex. 
'exp'(_Ctx,[]) -> [];
'exp'(_Ctx,[Seq]) -> 'exp'(_Ctx,Seq);
'exp'(_Ctx,#xqAtomicValue{value = nan} = X) -> X;
'exp'(_Ctx,#xqAtomicValue{value = infinity} = X) -> X;
'exp'(_Ctx,#xqAtomicValue{value = neg_infinity}) ->
   #xqAtomicValue{type = 'xs:double', value = 0.0};
'exp'(_Ctx,#xqAtomicValue{value = X}) ->
   case catch math:exp(X) of
      {'EXIT',_} ->
         #xqAtomicValue{type = 'xs:double', value = nan};
      Z ->
         #xqAtomicValue{type = 'xs:double', value = Z}
   end.

%% Returns the value of 10x. 
'exp10'(_Ctx,[]) -> [];
'exp10'(_Ctx,[Seq]) -> 'exp10'(_Ctx,Seq);
'exp10'(_Ctx,#xqAtomicValue{value = nan} = X) -> X;
'exp10'(_Ctx,#xqAtomicValue{value = infinity} = X) -> X;
'exp10'(_Ctx,#xqAtomicValue{value = neg_infinity}) ->
   #xqAtomicValue{type = 'xs:double', value = 0.0};
'exp10'(_Ctx,#xqAtomicValue{value = X}) ->
   case catch math:pow(10, X) of
      {'EXIT',_} ->
         #xqAtomicValue{type = 'xs:double', value = nan};
      Z ->
         #xqAtomicValue{type = 'xs:double', value = Z}
   end.

%% Returns the natural logarithm of the argument. 
'log'(_Ctx,[]) -> [];
'log'(_Ctx,[Seq]) -> 'log'(_Ctx,Seq);
'log'(_Ctx,#xqAtomicValue{value = nan} = X) -> X;
'log'(_Ctx,#xqAtomicValue{value = infinity} = X) -> X;
'log'(_Ctx,#xqAtomicValue{value = neg_infinity}) -> 
   #xqAtomicValue{type = 'xs:double', value = nan};
'log'(_Ctx,#xqAtomicValue{value = X}) when X == 0 ->
   #xqAtomicValue{type = 'xs:double', value = neg_infinity};
'log'(_Ctx,#xqAtomicValue{value = X}) when X < 0 ->
   #xqAtomicValue{type = 'xs:double', value = nan};
'log'(_Ctx,#xqAtomicValue{value = X}) ->
   case catch math:log(X) of
      {'EXIT',_} ->
         #xqAtomicValue{type = 'xs:double', value = nan};
      Z ->
         #xqAtomicValue{type = 'xs:double', value = Z}
   end.

%% Returns the base-ten logarithm of the argument. 
'log10'(_Ctx,[]) -> [];
'log10'(_Ctx,[Seq]) -> 'log'(_Ctx,Seq);
'log10'(_Ctx,#xqAtomicValue{value = nan} = X) -> X;
'log10'(_Ctx,#xqAtomicValue{value = infinity} = X) -> X;
'log10'(_Ctx,#xqAtomicValue{value = neg_infinity}) -> 
   #xqAtomicValue{type = 'xs:double', value = nan};
'log10'(_Ctx,#xqAtomicValue{value = X}) when X == 0 ->
   #xqAtomicValue{type = 'xs:double', value = neg_infinity};
'log10'(_Ctx,#xqAtomicValue{value = X}) when X < 0 ->
   #xqAtomicValue{type = 'xs:double', value = nan};
'log10'(_Ctx,#xqAtomicValue{value = X}) ->
   case catch math:log10(X) of
      {'EXIT',_} ->
         #xqAtomicValue{type = 'xs:double', value = nan};
      Z ->
         #xqAtomicValue{type = 'xs:double', value = Z}
   end.

%% Returns an approximation to the mathematical constant π. 
'pi'(_Ctx) -> 
   #xqAtomicValue{type = 'xs:double', value = math:pi()}.

%% Returns the result of raising the first argument to the power of the second. 
'pow'(_Ctx,[],_) -> [];
'pow'(_Ctx,[X],Y) -> 'pow'(_Ctx,X,Y);
'pow'(_Ctx,X,[Y]) -> 'pow'(_Ctx,X,Y);
'pow'(_Ctx,#xqAtomicValue{value = infinity},#xqAtomicValue{value = Y}) when Y == 0 ->
   #xqAtomicValue{type = 'xs:double', value = 1.0};
'pow'(_Ctx,#xqAtomicValue{value = neg_infinity},#xqAtomicValue{value = Y}) when Y == 0 ->
   #xqAtomicValue{type = 'xs:double', value = 1.0};
'pow'(_Ctx,#xqAtomicValue{value = nan},#xqAtomicValue{value = Y}) when Y == 0 ->
   #xqAtomicValue{type = 'xs:double', value = 1.0};
'pow'(_Ctx,#xqAtomicValue{value = X},#xqAtomicValue{value = Y}) when X == 0, Y < 0 ->
   #xqAtomicValue{type = 'xs:double', value = infinity}; 
'pow'(_Ctx,#xqAtomicValue{value = neg_zero},#xqAtomicValue{value = Y}) when Y < 0, trunc(Y) == Y ->
   if trunc(Y) rem 2 == -1 ->
         #xqAtomicValue{type = 'xs:double', value = neg_infinity};
      true ->
         #xqAtomicValue{type = 'xs:double', value = infinity}
   end;
'pow'(_Ctx,#xqAtomicValue{value = neg_zero},#xqAtomicValue{value = Y}) when Y < 0 ->
   #xqAtomicValue{type = 'xs:double', value = infinity};
'pow'(_Ctx,#xqAtomicValue{value = neg_zero},#xqAtomicValue{value = Y}) when Y > 0, trunc(Y) == Y ->
   if trunc(Y) rem 2 == 1 ->
         #xqAtomicValue{type = 'xs:double', value = neg_zero};
      true ->
         #xqAtomicValue{type = 'xs:double', value = 0.0}
   end;
'pow'(_Ctx,#xqAtomicValue{value = neg_zero},#xqAtomicValue{value = Y}) when Y > 0 ->
   #xqAtomicValue{type = 'xs:double', value = 0.0};
'pow'(_Ctx,#xqAtomicValue{value = X},#xqAtomicValue{value = _Y}) when abs(X) == 1 ->
   #xqAtomicValue{type = 'xs:double', value = 1.0};
'pow'(_Ctx,#xqAtomicValue{value = X},#xqAtomicValue{value = Y}) ->
   case catch math:pow(X, Y) of
      {'EXIT',_} ->
         #xqAtomicValue{type = 'xs:double', value = nan};
      Z ->
         #xqAtomicValue{type = 'xs:double', value = Z}
   end.

%% Returns the sine of the argument. The argument is an angle in radians. 
'sin'(_Ctx,[]) -> [];
'sin'(_Ctx,[Seq]) -> 'sin'(_Ctx,Seq);
'sin'(_Ctx,#xqAtomicValue{value = V} = X) when V == 0 -> X;
'sin'(_Ctx,#xqAtomicValue{value = neg_zero} = X) -> X;
'sin'(_Ctx,#xqAtomicValue{value = nan} = X) -> X;
'sin'(_Ctx,#xqAtomicValue{value = neg_infinity}) ->
   #xqAtomicValue{type = 'xs:double', value = nan};
'sin'(_Ctx,#xqAtomicValue{value = X}) ->
   case catch math:sin(X) of
      {'EXIT',_} ->
         #xqAtomicValue{type = 'xs:double', value = nan};
      Z ->
         #xqAtomicValue{type = 'xs:double', value = Z}
   end.

%% Returns the non-negative square root of the argument. 
'sqrt'(_Ctx,[]) -> [];
'sqrt'(_Ctx,[Seq]) -> 'sqrt'(_Ctx,Seq);
'sqrt'(_Ctx,#xqAtomicValue{value = nan} = X) -> X;
'sqrt'(_Ctx,#xqAtomicValue{value = infinity} = X) -> X;
'sqrt'(_Ctx,#xqAtomicValue{value = neg_zero}) ->
   #xqAtomicValue{type = 'xs:double', value = 0.0};
'sqrt'(_Ctx,#xqAtomicValue{value = neg_infinity}) ->
   #xqAtomicValue{type = 'xs:double', value = nan};
'sqrt'(_Ctx,#xqAtomicValue{value = X}) ->
   case catch math:sqrt(X) of
      {'EXIT',_} ->
         #xqAtomicValue{type = 'xs:double', value = nan};
      Z ->
         #xqAtomicValue{type = 'xs:double', value = Z}
   end.

%% Returns the tangent of the argument. The argument is an angle in radians. 
'tan'(_Ctx,[]) -> [];
'tan'(_Ctx,[Seq]) -> 'tan'(_Ctx,Seq);
'tan'(_Ctx,#xqAtomicValue{value = neg_zero}) ->
   #xqAtomicValue{type = 'xs:double', value = neg_zero};
'tan'(_Ctx,#xqAtomicValue{value = X}) ->
   case catch math:tan(X) of
      {'EXIT',_} ->
         #xqAtomicValue{type = 'xs:double', value = nan};
      Z ->
         #xqAtomicValue{type = 'xs:double', value = Z}
   end.
