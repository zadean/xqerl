%% -------------------------------------------------------------------
%%
%% xqerl - XQuery processor
%%
%% Copyright (c) 2017 Zachary N. Dean  All Rights Reserved.
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
'acos'(_Ctx,Seq) ->
   case ?seq:is_empty(Seq) of
      true ->
         Seq;
      _ ->
         Av = case ?seq:singleton_value(Seq) of
                 #xqAtomicValue{value="NaN"} ->
                    #xqAtomicValue{type='xs:double', value="NaN"};
                 #xqAtomicValue{value=X} when abs(X) > 1 ->
                    #xqAtomicValue{type='xs:double', value="NaN"};
                 #xqAtomicValue{value=X} ->
                       case catch math:acos(X) of
                          {'EXIT',_} ->
                             #xqAtomicValue{type='xs:double', value="NaN"};
                          Z ->
                             #xqAtomicValue{type='xs:double', value=Z}
                       end
              end,
         ?seq:singleton(Av)
   end.

%% Returns the arc sine of the argument. 
'asin'(_Ctx,Seq) -> 
   case ?seq:is_empty(Seq) of
      true ->
         Seq;
      _ ->
         Av = case ?seq:singleton_value(Seq) of
                 #xqAtomicValue{value=0} = X ->
                    X;
                 #xqAtomicValue{value="NaN"} ->
                    #xqAtomicValue{type='xs:double', value="NaN"};
                 #xqAtomicValue{value=X} when abs(X) > 1 ->
                    #xqAtomicValue{type='xs:double', value="NaN"};
                 #xqAtomicValue{value=X} ->
                       case catch math:asin(X) of
                          {'EXIT',_} ->
                             #xqAtomicValue{type='xs:double', value="NaN"};
                          Z ->
                             #xqAtomicValue{type='xs:double', value=Z}
                       end
              end,
         ?seq:singleton(Av)
   end.

%% Returns the arc tangent of the argument. 
'atan'(_Ctx,Seq) -> 
   case ?seq:is_empty(Seq) of
      true ->
         Seq;
      _ ->
         Av = case ?seq:singleton_value(Seq) of
                 #xqAtomicValue{value=0} = X ->
                    X;
                 #xqAtomicValue{value="NaN"} ->
                    #xqAtomicValue{type='xs:double', value="NaN"};
                 #xqAtomicValue{value="INF"} ->
                    #xqAtomicValue{type='xs:double', value=math:pi() / 2 };
                 #xqAtomicValue{value="-INF"} ->
                    #xqAtomicValue{type='xs:double', value= - math:pi() / 2 };
                 #xqAtomicValue{value=X} ->
                       case catch math:atan(X) of
                          {'EXIT',_} ->
                             #xqAtomicValue{type='xs:double', value="NaN"};
                          Z ->
                             #xqAtomicValue{type='xs:double', value=Z}
                       end
              end,
         ?seq:singleton(Av)
   end.

%% Returns the angle in radians subtended at the origin by the point on a plane with coordinates (x, y) and the positive x-axis. 
'atan2'(_Ctx,X,Y) -> 
   #xqAtomicValue{value = X1} = ?seq:singleton_value(X),
   #xqAtomicValue{value = Y1} = ?seq:singleton_value(Y),
   Av = case catch math:atan2(X1,Y1) of
           {'EXIT',_} ->
              #xqAtomicValue{type='xs:double', value="NaN"};
           Z ->
              #xqAtomicValue{type='xs:double', value=Z}
        end,
   ?seq:singleton(Av).

%% Returns the cosine of the argument. The argument is an angle in radians. 
'cos'(_Ctx,Seq) -> 
   case ?seq:is_empty(Seq) of
      true ->
         Seq;
      _ ->
         #xqAtomicValue{value = X1} = ?seq:singleton_value(Seq),
         Av = case catch math:cos(X1) of
                 {'EXIT',_} ->
                    #xqAtomicValue{type='xs:double', value="NaN"};
                 Z ->
                    #xqAtomicValue{type='xs:double', value=Z}
              end,
         ?seq:singleton(Av)
   end.

%% Returns the value of ex. 
'exp'(_Ctx,Seq) ->
   case ?seq:is_empty(Seq) of
      true ->
         Seq;
      _ ->
         Av = case ?seq:singleton_value(Seq) of
                 #xqAtomicValue{value="NaN"} = X ->
                    X;
                 #xqAtomicValue{value="INF"} = X ->
                    X;
                 #xqAtomicValue{value="-INF"} ->
                    #xqAtomicValue{type='xs:double', value=0.0};
                 #xqAtomicValue{value=X} ->
                    case catch math:exp(X) of
                       {'EXIT',_} ->
                          #xqAtomicValue{type='xs:double', value="NaN"};
                       Z ->
                          #xqAtomicValue{type='xs:double', value=Z}
                    end
              end,
         ?seq:singleton(Av)
   end.

%% Returns the value of 10x. 
'exp10'(_Ctx,Seq) ->
   case ?seq:is_empty(Seq) of
      true ->
         Seq;
      _ ->
         Av = case ?seq:singleton_value(Seq) of
                 #xqAtomicValue{value="NaN"} = X ->
                    X;
                 #xqAtomicValue{value="INF"} = X ->
                    X;
                 #xqAtomicValue{value="-INF"} ->
                    #xqAtomicValue{type='xs:double', value=0.0};
                 #xqAtomicValue{value=X} ->
                    case catch math:pow(10, X) of
                       {'EXIT',_} ->
                          #xqAtomicValue{type='xs:double', value="NaN"};
                       Z ->
                          #xqAtomicValue{type='xs:double', value=Z}
                    end
              end,
         ?seq:singleton(Av)
   end.

%% Returns the natural logarithm of the argument. 
'log'(_Ctx,Seq) ->
   case ?seq:is_empty(Seq) of
      true ->
         Seq;
      _ ->
         Av = case ?seq:singleton_value(Seq) of
                 #xqAtomicValue{value="NaN"} = X ->
                    X;
                 #xqAtomicValue{value="INF"} = X ->
                    X;
                 #xqAtomicValue{value="-INF"} ->
                    #xqAtomicValue{type='xs:double', value="NaN"};
                 #xqAtomicValue{value=X} when X == 0 ->
                    #xqAtomicValue{type='xs:double', value="-INF"};
                 #xqAtomicValue{value=X} when X < 0 ->
                    #xqAtomicValue{type='xs:double', value="NaN"};
                 #xqAtomicValue{value=X} ->
                    case catch math:log(X) of
                       {'EXIT',_} ->
                          #xqAtomicValue{type='xs:double', value="NaN"};
                       Z ->
                          #xqAtomicValue{type='xs:double', value=Z}
                    end
              end,
         ?seq:singleton(Av)
   end.

%% Returns the base-ten logarithm of the argument. 
'log10'(_Ctx,Seq) ->
   case ?seq:is_empty(Seq) of
      true ->
         Seq;
      _ ->
         Av = case ?seq:singleton_value(Seq) of
                 #xqAtomicValue{value="NaN"} = X ->
                    X;
                 #xqAtomicValue{value="INF"} = X ->
                    X;
                 #xqAtomicValue{value="-INF"} ->
                    #xqAtomicValue{type='xs:double', value="NaN"};
                 #xqAtomicValue{value=X} when X == 0 ->
                    #xqAtomicValue{type='xs:double', value="-INF"};
                 #xqAtomicValue{value=X} when X < 0 ->
                    #xqAtomicValue{type='xs:double', value="NaN"};
                 #xqAtomicValue{value=X} ->
                    case catch math:log10(X) of
                       {'EXIT',_} ->
                          #xqAtomicValue{type='xs:double', value="NaN"};
                       Z ->
                          #xqAtomicValue{type='xs:double', value=Z}
                    end
              end,
         ?seq:singleton(Av)
   end.

%% Returns an approximation to the mathematical constant π. 
'pi'(_Ctx) -> 
   ?seq:singleton(#xqAtomicValue{type='xs:double', value=math:pi()}).

%% Returns the result of raising the first argument to the power of the second. 
'pow'(_Ctx,X,Y) ->
   case ?seq:is_empty(X) of
      true ->
         X;
      _ ->
         #xqAtomicValue{value = X1} = ?seq:singleton_value(X),
         #xqAtomicValue{value = Y1} = ?seq:singleton_value(Y),
         Av =case {X1,Y1} of
               {"INF",Y1} when Y1 == 0 ->
                  #xqAtomicValue{type='xs:double', value= 1.0};
               {"-INF",Y1} when Y1 == 0 ->
                  #xqAtomicValue{type='xs:double', value= 1.0};
               {"NaN",Y1} when Y1 == 0 ->
                  #xqAtomicValue{type='xs:double', value= 1.0};
               {X1,Y1} when X1 == 0, Y1 <0 ->
                  #xqAtomicValue{type='xs:double', value= "INF"}; % -0 missing should give -INF
               {X1,_} when abs(X1) == 1 ->
                  #xqAtomicValue{type='xs:double', value= 1.0};
               _ ->
                  %?dbg("{X1,Y1}",{X1,Y1}),
                  case catch math:pow(X1, Y1) of
                     {'EXIT',_} ->
                        #xqAtomicValue{type='xs:double', value="NaN"};
                     Z ->
                        #xqAtomicValue{type='xs:double', value=Z}
                  end
            end,
         ?seq:singleton(Av)
   end.

%% Returns the sine of the argument. The argument is an angle in radians. 
'sin'(_Ctx,Seq) ->
   case ?seq:is_empty(Seq) of
      true ->
         Seq;
      _ ->
         Av = case ?seq:singleton_value(Seq) of
                 #xqAtomicValue{value=0} = X ->
                    X;
                 #xqAtomicValue{value="NaN"} = X ->
                    X;
                 #xqAtomicValue{value="-INF"} ->
                    #xqAtomicValue{type='xs:double', value="NaN"};
                 #xqAtomicValue{value=X} ->
                    case catch math:sin(X) of
                       {'EXIT',_} ->
                          #xqAtomicValue{type='xs:double', value="NaN"};
                       Z ->
                          #xqAtomicValue{type='xs:double', value=Z}
                    end
              end,
         ?seq:singleton(Av)
   end.


%% Returns the non-negative square root of the argument. 
'sqrt'(_Ctx,Seq) ->
   case ?seq:is_empty(Seq) of
      true ->
         Seq;
      _ ->
         Av = case ?seq:singleton_value(Seq) of
                 #xqAtomicValue{value="NaN"} = X ->
                    X;
                 #xqAtomicValue{value="INF"} = X ->
                    X;
                 #xqAtomicValue{value="-INF"} ->
                    #xqAtomicValue{type='xs:double', value="NaN"};
                 #xqAtomicValue{value=X} ->
                    case catch math:sqrt(X) of
                       {'EXIT',_} ->
                          #xqAtomicValue{type='xs:double', value="NaN"};
                       Z ->
                          #xqAtomicValue{type='xs:double', value=Z}
                    end
              end,
         ?seq:singleton(Av)
   end.

%% Returns the tangent of the argument. The argument is an angle in radians. 
'tan'(_Ctx,Seq) -> 
   case ?seq:is_empty(Seq) of
      true ->
         Seq;
      _ ->
         Av = case ?seq:singleton_value(Seq) of
                 #xqAtomicValue{value=X} ->
                    case catch math:tan(X) of
                       {'EXIT',_} ->
                          #xqAtomicValue{type='xs:double', value="NaN"};
                       Z ->
                          #xqAtomicValue{type='xs:double', value=Z}
                    end
              end,
         ?seq:singleton(Av)
   end.




