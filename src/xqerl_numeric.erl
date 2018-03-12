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

%% @doc Number handling (decimal,double,float,etc.) 

-module(xqerl_numeric).

-include("xqerl.hrl").

-define(MAXDEC, 20).

%% ====================================================================
%% API functions
%% ====================================================================
-export([decimal/1]).
-export([double/1]).
-export([float/1]).
-export([integer/1]).
-export([string/1]).
-export([float_string/1]).
-export([float_to_decimal/1]).

-export([add/2]).
-export([subtract/2]).
-export([multiply/2]).
-export([divide/2]).

-export([equal/2]).
-export([greater_than/2]).
-export([greater_than_equal/2]).
-export([less_than/2]).
-export([less_than_equal/2]).

-export([unary_minus/1]).

-export([round_half_even/2]).
-export([round_half/2]).
-export([truncate/1]).
-export([ceiling/1]).
-export([floor/1]).
-export([abs_val/1]).


float_to_decimal(Float) when is_float(Float) ->
   String = string(Float),
   [MantStr,ExpStr] = case string:split(String, [$E]) of
                         [M,E] ->
                            [M,E];
                         [M] ->
                            [M,"0"]
                      end,
   Exp = list_to_integer(ExpStr),
   {Sign,AbsMantStr} = case MantStr of
                          [$-|R] ->
                             {"-",R};
                          _ ->
                             {"",MantStr}
                       end,
   [Int,Fract] = case string:split(AbsMantStr, [$.]) of
                    [I,F] ->
                       [I,F];
                    [I] ->
                       [I,"0"]
                 end,
   Shift = length(Fract),
   TotalShift = (Exp - Shift) * -1,
   IntPart = if TotalShift > 0 ->
                   list_to_integer(Sign ++ Int ++ Fract);
                true ->
                   list_to_integer(Sign ++ Int ++ Fract ++ 
                                     lists:duplicate(-TotalShift, $0))
             end,
   #xsDecimal{int = IntPart, scf = max(0,TotalShift)}.

decimal(0.0) ->
   #xsDecimal{int = 0, scf = 0};
decimal(Float) when is_float(Float) ->
   try 
      if abs(Float) < 1 andalso Float < 0 ->
            decimal(float_to_list(Float,[{decimals, 25},compact]));
         abs(Float) < 1 ->
            decimal(float_to_list(Float,[{decimals, 25},compact]));
         abs(Float) > 100000000000000000000000000 ->
            decimal(trunc(Float));
         trunc(Float) == Float ->
            decimal(trunc(Float));
         true ->
            decimal(float_to_list(Float,[{decimals, 20},compact]))
      end
   catch
      _:_ ->
         ?err('FOCA0001')
   end;
decimal(Int) when is_integer(Int) ->
   #xsDecimal{int = Int, scf = 0};
decimal(#xsDecimal{} = D) -> D;
decimal(String) ->
   case string:split(String, [$.]) of
      [Int,Fract] ->
         Scf = length(Fract),
         Num = list_to_integer(Int ++ Fract),
         simplify(#xsDecimal{int = Num, scf = Scf});
      [Int] ->
         #xsDecimal{int = list_to_integer(Int), scf = 0}
   end.

double(Float) when is_float(Float) ->
   Float;
double(Int) when is_integer(Int) andalso abs(Int) < 9999999999999999999999 ->
   erlang:float(Int);
double(Int) when is_integer(Int) ->
   double(decimal(Int));
double(#xsDecimal{int = 0, scf = 0}) -> 0.0;
double(#xsDecimal{scf = Scf} = D) when Scf > 6 ->
   #xsDecimal{int = Int, scf = Scf1} = simplify(D) ,
   try 
      list_to_float(integer_to_list(Int) ++ ".0E-" ++ integer_to_list(Scf1))
   catch 
      _:_ ->
         D
   end;
double(#xsDecimal{int = Int, scf = Scf} = D) ->
   try 
      list_to_float(integer_to_list(Int) ++ ".0E-" ++ integer_to_list(Scf))
   catch 
      _:_ ->
         D
   end;
double(String) ->
   Val = case string:trim(String) of
            [$.|T] ->
               [$0,$.|T];
            V ->
               V
         end,
   case string:find(Val, "--") of
      nomatch ->
         ok;
      _ ->
         ?err('FORG0001')
   end,
   if Val == "-0"  -> neg_zero;
      Val == "NaN"  -> nan;
      Val == "-INF" -> neg_infinity;
      %Val == "+INF" -> infinity; % schema 1.1 
      Val == "INF"  -> infinity;
      true ->
         case catch list_to_float(Val) of
            Flt when is_float(Flt) ->
               if Flt == 0 andalso hd(Val) == $- ->
                     neg_zero;
                  true ->
                     Flt
               end;
            _ ->
               case catch list_to_integer(Val) of
                  Int when is_integer(Int) ->
                     erlang:float(Int);
                  _ ->
                     try
                        Bin = list_to_binary(Val),
                        {Sign, Rest} = case Bin of
                                          <<"-",R/binary>> ->
                                             {'-', R};
                                          <<"+",R/binary>> ->
                                             {'+', R};
                                          R ->
                                             {'+', R}
                                       end,
                        Rest1 = case binary:first(Rest) == $.  of
                                   true -> <<$0,Rest/binary>>;
                                   _ -> Rest
                                end,
                        {Man, Exp} = case binary:split(Rest1, 
                                                       [<<"e">>,<<"E">>]) of
                                        [M,E] ->
                                           {M,binary_to_integer(E)};
                                        [M] ->
                                           {M,0}
                                     end,
                        Num = case binary:match(Man, <<".">>) of
                                       nomatch ->
                                          erlang:float(binary_to_integer(Man));
                                       _ ->
                                          case binary:last(Man) of
                                             $. ->
                                                Bin1 = binary:part(Man,{0, byte_size(Man) -1}),
                                                erlang:float(binary_to_integer(Bin1));
                                             _ ->
                                                binary_to_float(Man)
                                          end
                                    end,
                        NNum = if Sign == '-' -> - Num;
                                  true -> Num
                               end,
                        try
                           Str = float_to_list(NNum, [{decimals,18}]) ++ 
                                   "e" ++ integer_to_list(Exp),
                           ENum = list_to_float(Str),
                           if ENum == 0 andalso hd(Val) == $- ->
                                 neg_zero;
                              true ->
                                 ENum
                           end
                        catch
                           _:_ -> 
                              case Sign of
                                 '-' -> neg_infinity;
                                 _ -> infinity
                              end
                        end
                     catch
                        _:_ -> ?err('FORG0001')
                     end
               end
         end
   end.


float(Float) when is_float(Float) ->
   % take the float from 64 to 32 bit
   <<New:32/float>> = <<Float:32/float>>,
   New;
float(Int) when is_integer(Int) ->
   ?MODULE:float(erlang:float(Int));
float(#xsDecimal{int = Int, scf = Scf}) ->
   ?MODULE:float(list_to_float(integer_to_list(Int) ++ ".0E-" ++ 
                                 integer_to_list(Scf))).

integer(Int) when is_integer(Int) -> Int;
integer(Float) when is_float(Float) -> trunc(Float);
integer(#xsDecimal{int = Int, scf = 0}) -> Int;
integer(#xsDecimal{int = Int, scf = Scf}) -> 
   Int div pow10(Scf).

float_string(Float) when is_float(Float) ->
   format_float(Float).

string(Float) when is_float(Float) ->
   format_double(Float);
string(Int) when is_integer(Int) ->
   integer_to_list(Int);
string(#xsDecimal{int = Int, scf = Scf}) ->
   decimal_to_string(Int,Scf).

add(#xsDecimal{int = IntA, scf = ScfA},#xsDecimal{int = IntB, scf = ScfB})
   when ScfA < ScfB ->
   IntA1 = IntA * pow10(ScfB - ScfA),
   #xsDecimal{int = IntA1 + IntB, scf = ScfB};
add(#xsDecimal{int = IntA, scf = ScfA},#xsDecimal{int = IntB, scf = ScfB}) 
   when ScfA > ScfB ->
   IntB1 = IntB * pow10(ScfA - ScfB),
   #xsDecimal{int = IntA + IntB1, scf = ScfA};
add(#xsDecimal{int = IntA, scf = ScfA},#xsDecimal{int = IntB}) ->
   #xsDecimal{int = IntA + IntB, scf = ScfA};
add(#xsDecimal{} = A, B) when is_integer(B) ->
   add(A, decimal(B));
add(A, #xsDecimal{} = B) when is_integer(A) ->
   add(decimal(A), B);
add(#xsDecimal{} = A, B) when is_float(B) ->
   add(double(A), B);
add(A, #xsDecimal{} = B) when is_float(A) ->
   add(A, double(B));
add(A,B) ->
   A + B.

subtract(#xsDecimal{int = IntA, scf = ScfA}, 
         #xsDecimal{int = IntB, scf = ScfB}) when ScfA < ScfB ->
   IntA1 = IntA * pow10(ScfB - ScfA),
   #xsDecimal{int = IntA1 - IntB, scf = ScfB};
subtract(#xsDecimal{int = IntA, scf = ScfA}, 
         #xsDecimal{int = IntB, scf = ScfB}) when ScfA > ScfB ->
   IntB1 = IntB * pow10(ScfA - ScfB),
   #xsDecimal{int = IntA - IntB1, scf = ScfA};
subtract(#xsDecimal{int = IntA, scf = ScfA}, 
         #xsDecimal{int = IntB}) ->
   #xsDecimal{int = IntA - IntB, scf = ScfA};
subtract(#xsDecimal{} = A, B) when is_integer(B) ->
   subtract(A, decimal(B));
subtract(A, #xsDecimal{} = B) when is_integer(A) ->
   subtract(decimal(A), B);
subtract(#xsDecimal{} = A, B) when is_float(B) ->
   subtract(double(A), B);
subtract(A, #xsDecimal{} = B) when is_float(A) ->
   subtract(A, double(B));
subtract(A,B) ->
   A - B.

multiply(#xsDecimal{int = IntA, scf = ScfA}, 
         #xsDecimal{int = IntB, scf = ScfB}) ->
   #xsDecimal{int = IntA * IntB, scf = ScfA + ScfB};
multiply(#xsDecimal{} = A, B) when is_integer(B) ->
   multiply(A, decimal(B));
multiply(A, #xsDecimal{} = B) when is_integer(A) ->
   multiply(decimal(A), B);
multiply(#xsDecimal{} = A, B) when is_float(B) ->
   multiply(double(A), B);
multiply(A, #xsDecimal{} = B) when is_float(A) ->
   multiply(A, double(B));
multiply(A,1) -> A;
multiply(1,B) -> B;
multiply(A,B) ->
   A * B.

divide(#xsDecimal{int = IntA, scf = ScfA}, 
       #xsDecimal{int = IntB, scf = ScfB}) when ScfA < ScfB ->
   IntA1 = IntA * pow10(ScfB - ScfA),
   IntA2 = IntA1 * pow10(?MAXDEC + 1),
   simplify(round1(#xsDecimal{int = IntA2 div IntB, scf = ?MAXDEC + 1}));
divide(#xsDecimal{int = IntA, scf = ScfA}, 
       #xsDecimal{int = IntB, scf = ScfB}) when ScfA > ScfB ->
   IntB1 = IntB * pow10(ScfA - ScfB),
   IntA2 = IntA * pow10(?MAXDEC + 1),
   simplify(round1(#xsDecimal{int = IntA2 div IntB1, scf = ?MAXDEC + 1}));
divide(#xsDecimal{int = IntA}, 
       #xsDecimal{int = IntB}) ->
   IntA2 = IntA * pow10(?MAXDEC + 1),
   simplify(round1(#xsDecimal{int = IntA2 div IntB, scf = ?MAXDEC + 1}));
divide(#xsDecimal{} = A, B) when is_integer(B) ->
   divide(A, decimal(B));
divide(A, #xsDecimal{} = B) when is_integer(A) ->
   divide(decimal(A), B);
divide(A, B) when is_integer(A),is_integer(B) ->
   divide(decimal(A), decimal(B));
divide(#xsDecimal{} = A, B) when is_float(B) ->
   divide(double(A), B);
divide(A, #xsDecimal{} = B) when is_float(A) ->
   divide(A, double(B));
divide(A,B) ->
   A / B.

equal(A, B) when is_integer(A), is_integer(B) ->
   A =:= B;
equal(#xsDecimal{int = IntA, scf = ScfA}, 
      #xsDecimal{int = IntB, scf = ScfB}) when ScfA < ScfB ->
   IntA1 = IntA * pow10(ScfB - ScfA),
   IntA1 == IntB;
equal(#xsDecimal{int = IntA, scf = ScfA}, 
      #xsDecimal{int = IntB, scf = ScfB}) when ScfA > ScfB ->
   IntB1 = IntB * pow10(ScfA - ScfB),
   IntA == IntB1;
equal(#xsDecimal{int = IntA}, #xsDecimal{int = IntB}) ->
   IntA == IntB;
equal(A, B) ->
   double(A) == double(B).

greater_than(#xsDecimal{int = IntA, scf = ScfA}, 
             #xsDecimal{int = IntB, scf = ScfB}) when ScfA < ScfB ->
   IntA1 = IntA * pow10(ScfB - ScfA),
   IntA1 > IntB;
greater_than(#xsDecimal{int = IntA, scf = ScfA}, 
             #xsDecimal{int = IntB, scf = ScfB}) when ScfA > ScfB ->
   IntB1 = IntB * pow10(ScfA - ScfB),
   IntA > IntB1;
greater_than(#xsDecimal{int = IntA}, #xsDecimal{int = IntB}) ->
   IntA > IntB;
greater_than(A, B) ->
   double(A) > double(B).

greater_than_equal(#xsDecimal{int = IntA, scf = ScfA}, 
                   #xsDecimal{int = IntB, scf = ScfB}) when ScfA < ScfB ->
   IntA1 = IntA * pow10(ScfB - ScfA),
   IntA1 >= IntB;
greater_than_equal(#xsDecimal{int = IntA, scf = ScfA}, 
                   #xsDecimal{int = IntB, scf = ScfB}) when ScfA > ScfB ->
   IntB1 = IntB * pow10(ScfA - ScfB),
   IntA >= IntB1;
greater_than_equal(#xsDecimal{int = IntA}, #xsDecimal{int = IntB}) ->
   IntA >= IntB;
greater_than_equal(A, B) ->
   double(A) >= double(B).

less_than(#xsDecimal{int = IntA, scf = ScfA}, 
          #xsDecimal{int = IntB, scf = ScfB}) when ScfA < ScfB ->
   IntA1 = IntA * pow10(ScfB - ScfA),
   IntA1 < IntB;
less_than(#xsDecimal{int = IntA, scf = ScfA}, 
          #xsDecimal{int = IntB, scf = ScfB}) when ScfA > ScfB ->
   IntB1 = IntB * pow10(ScfA - ScfB),
   IntA < IntB1;
less_than(#xsDecimal{int = IntA}, #xsDecimal{int = IntB}) ->
   IntA < IntB;
less_than(A, B) ->
   double(A) < double(B).

less_than_equal(#xsDecimal{int = IntA, scf = ScfA}, 
                #xsDecimal{int = IntB, scf = ScfB}) when ScfA < ScfB ->
   IntA1 = IntA * pow10(ScfB - ScfA),
   IntA1 =< IntB;
less_than_equal(#xsDecimal{int = IntA, scf = ScfA}, 
                #xsDecimal{int = IntB, scf = ScfB}) when ScfA > ScfB ->
   IntB1 = IntB * pow10(ScfA - ScfB),
   IntA =< IntB1;
less_than_equal(#xsDecimal{int = IntA}, #xsDecimal{int = IntB}) ->
   IntA =< IntB;
less_than_equal(A, B) ->
   double(A) =< double(B).

unary_minus(#xsDecimal{int = IntA} = D) ->
   D#xsDecimal{int = IntA * -1};
unary_minus(Val) -> Val * -1.

abs_val(#xsDecimal{int = Int} = D) when Int >= 0 ->
   D;
abs_val(#xsDecimal{int = Int} = D) ->
   D#xsDecimal{int = abs(Int)};
abs_val(D) ->
   abs(D).

floor(#xsDecimal{int = Int, scf = 0}) ->
   Int;
floor(#xsDecimal{} = D) ->
   floor_1(simplify(D));
floor(Int) when is_integer(Int) ->
   Int;
floor(Float) ->
   T = trunc(Float),
   if Float == T ->
         T;
      Float < 0 ->
         T - 1;
      true ->
         T
   end.

floor_1(#xsDecimal{int = Int1, scf = 0}) ->
   Int1;
floor_1(#xsDecimal{int = Int1, scf = Scf1}) when Int1 < 0 ->
   (Int1 div pow10(Scf1)) - 1;
floor_1(#xsDecimal{int = Int1, scf = Scf1}) ->
   Int1 div pow10(Scf1).

ceiling(#xsDecimal{int = Int, scf = 0}) ->
   Int;
ceiling(#xsDecimal{} = D) ->
   ceiling_1(simplify(D));
ceiling(Int) when is_integer(Int) ->
   Int;
ceiling(Float) ->
   T = trunc(Float),
   if Float == T ->
         T;
      Float < 0 ->
         T;
      true ->
         T + 1
   end.

ceiling_1(#xsDecimal{int = Int1, scf = 0}) -> Int1;
ceiling_1(#xsDecimal{int = Int1, scf = Scf1}) when Int1 < 0 ->
   Int1 div pow10(Scf1);
ceiling_1(#xsDecimal{int = Int1, scf = Scf1}) ->
   (Int1 div pow10(Scf1)) + 1.

truncate(#xsDecimal{int = Int, scf = 0}) -> Int;
truncate(#xsDecimal{int = Int, scf = Scf}) ->
   Int div pow10(Scf);
truncate(Float) when is_float(Float) ->
   trunc(Float);
truncate(D) -> D.

round_half_even(#xsDecimal{scf = Scf} = D, Prec) when Prec >= Scf ->
   D;
round_half_even(#xsDecimal{int = Int, scf = Scf} = D, Prec) when Prec < 0 ->
   Prec1 = pow10(abs(Prec)),
   Low = Int div pow10(Scf) div Prec1,
   if Low == 0 ->
         #xsDecimal{int = 0, scf = 0};
      true ->
         High = if Int < 0 ->
                      Low - 1;
                   true ->
                      Low + 1
                end,
         LowVal  = #xsDecimal{int = Low * Prec1, scf = 0},
         HighVal = #xsDecimal{int = High * Prec1, scf = 0},
         #xsDecimal{int = Diff, scf = P} = simplify(subtract(D, LowVal)),
         if abs(Diff) == Prec1 div 2 andalso Prec1 rem 2 == 0 ->
               if Low rem 2 == 0 ->
                     LowVal;
                  true ->
                     HighVal
               end;
            true ->
               Rnd = abs(round(Diff / pow10(P - Prec))),
               if Rnd == 1 ->
                     HighVal;
                  true ->
                     LowVal
               end
         end
   end;
round_half_even(#xsDecimal{int = Int, scf = Scf} = D, Prec) when Prec >= 0 ->
   Low = Int div pow10(Scf - Prec),
   High = if Int < 0 ->
                Low - 1;
             true ->
                Low + 1
          end,
   LowVal = simplify(#xsDecimal{int = Low, scf = Prec}),
   HighVal = simplify(#xsDecimal{int = High, scf = Prec}),
   #xsDecimal{int = Diff, scf = P} = simplify(subtract(D, LowVal)),
   if (P - Prec) == 1, abs(Diff) == 5 ->
         if Low rem 2 == 0 ->
               LowVal;
            true ->
               HighVal
         end;
      P == 0, Diff == 0 ->
         LowVal;
      true ->
         Rnd = abs(round(Diff / pow10(P - Prec))),
         if Rnd == 1 ->
               HighVal;
            true ->
               LowVal
         end
   end.

round_half(#xsDecimal{scf = Scf} = D, Prec) when Prec >= Scf ->
   D;
round_half(#xsDecimal{int = Int, scf = Scf} = D, Prec) when Prec < 0 ->
   Prec1 = pow10(abs(Prec)),
   Low = Int div pow10(Scf) div Prec1,
   if Low == 0 ->
         #xsDecimal{int = 0, scf = 0};
      true ->
         High = if Int < 0 ->
                      Low - 1;
                   true ->
                      Low + 1
                end,
         LowVal  = #xsDecimal{int = Low * Prec1, scf = 0},
         HighVal = #xsDecimal{int = High * Prec1, scf = 0},
         #xsDecimal{int = Diff, scf = P} = simplify(subtract(D, LowVal)),
         if abs(Diff) == Prec1 div 2 andalso Prec1 rem 2 == 0 ->
               if Int < 0 ->
                     LowVal;
                  true ->
                     HighVal
               end;
            true ->
               Rnd = abs(round(Diff / pow10(P - Prec))),
               if Rnd == 1 ->
                     HighVal;
                  true ->
                     LowVal
               end
         end
   end;
round_half(#xsDecimal{int = Int, scf = Scf} = D, Prec) when Prec >= 0 ->
   Low = Int div pow10(Scf - Prec),
   High = if Int < 0 ->
                Low - 1;
             true ->
                Low + 1
          end,
   LowVal = #xsDecimal{int = Low, scf = Prec},
   HighVal = #xsDecimal{int = High, scf = Prec},
   #xsDecimal{int = Diff, scf = P} = simplify(subtract(D, LowVal)),
   if (P - Prec) == 1, abs(Diff) == 5 ->
         if Int < 0 ->
               LowVal;
            true ->
               HighVal
         end;
      true ->
         Rnd = abs(round(Diff / pow10(P - Prec))),
         if Rnd == 1 ->
               HighVal;
            true ->
               LowVal
         end
   end;
round_half(Flt,0) ->
   round(Flt).

%% ====================================================================
%% Internal functions
%% ====================================================================

round1(#xsDecimal{int = Int, scf = Scf}) ->
   Rem = Int rem 10,
   Int1 = if Rem > -5, Rem < 5 ->
                  Int div 10;
               Int < 0 ->
                  (Int div 10) - 1;
               true ->
                  (Int div 10) + 1
           end,
   #xsDecimal{int = Int1, scf = Scf - 1}.

simplify(#xsDecimal{int = Int, scf = Scf}) when Scf > 0, Int rem 10 =:= 0 ->
   simplify(#xsDecimal{int = Int div 10, scf = Scf - 1});
simplify(#xsDecimal{} = D) -> D.


pow10(0) -> 1;
pow10(1) -> 10;
pow10(2) -> 100;
pow10(3) -> 1000;
pow10(4) -> 10000;
pow10(5) -> 100000;
pow10(6) -> 1000000;
pow10(7) -> 10000000;
pow10(8) -> 100000000;
pow10(9) -> 1000000000;
pow10(N) when N > 9 -> 
   10000000000 * pow10(N - 10).

decimal_to_string(Int,Scf) when Int < 0 ->
   List = lists:reverse(integer_to_list(abs(Int))),
   [$-|decimal_to_string(List,Scf,[])];
decimal_to_string(Int,Scf) ->
   List = lists:reverse(integer_to_list(abs(Int))),
   decimal_to_string(List,Scf,[]).

% trailing zeroes
decimal_to_string([$0|T], Scf, []) when Scf > 0 ->
   decimal_to_string(T, Scf - 1, []);
% no more data, pad 0 on right-side of decimal
decimal_to_string([], Scf, Acc) when Scf > 0 ->
   decimal_to_string([], Scf - 1, [$0|Acc]);
decimal_to_string([H|T], Scf, Acc) when Scf > 0 ->
   decimal_to_string(T, Scf - 1, [H|Acc]);
% no more data, end of number - int
decimal_to_string([], 0, []) ->
   [$0];
decimal_to_string([H|T], 0, []) ->
   decimal_to_string(T, -1, [H]);
decimal_to_string([], 0, Acc) ->
   [$0,$.|Acc];
decimal_to_string([H|T], 0, Acc) ->
   decimal_to_string(T, -1, [H,$.|Acc]);
% no more data, end of number
decimal_to_string([], _, Acc) ->
   Acc;
decimal_to_string([H|T], Scf, Acc) ->
   decimal_to_string(T, Scf - 1, [H|Acc]).

format_double(Val) when abs(Val) < 1000000 andalso trunc(Val) == Val ->
   integer_to_list(trunc(Val));
format_double(Val) when abs(Val) >= 0.000001, abs(Val) < 1000000 ->
   %string(decimal(Val));
   W = lists:flatten(io_lib:format("~w",[Val])),
   case lists:member($e, W) of
      true ->
         string:trim(lists:flatten(io_lib:format("~f",[Val])), trailing, "0");
      _ ->
         string:trim(W, trailing, "0")
   end;
format_double(0.0) ->
    "0.0";
format_double(Float) when is_float(Float) ->
    {Frac, Exp} = mantissa_exponent_d(Float),
    {Place, Digits} = format_double_1(Float, Exp, Frac),
    R = insert_decimal(Place, [$0 + D || D <- Digits]),
    [$- || true <- [Float < 0.0]] ++ R.


%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% parts taken from io_lib_format 'g' flag and changed for 32bit float
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

format_float(Val) when abs(Val) < 1000000 andalso trunc(Val) == Val ->
   format_double(Val);
format_float(Val) when abs(Val) >= 9.999999974752427e-7, abs(Val) < 1000000 ->
   S1 = lists:flatten(io_lib:format("~.6e",[Val])),
   S2 = list_to_float(S1),
   S3 = lists:flatten(io_lib:format("~.6f",[S2])),
   string:trim(S3, trailing, "0");
format_float(0.0) ->
    "0.0";
format_float(Float) when is_float(Float) ->
    {Frac, Exp} = mantissa_exponent(Float),
    {Place, Digits} = format_float_1(Float, Exp, Frac),
    R = insert_decimal(Place, [$0 + D || D <- Digits]),
    [$- || true <- [Float < 0.0]] ++ R.

-define(BIG_POW, (1 bsl 23)).
-define(MIN_EXP, (-149)).
-define(BIG_POW_D, (1 bsl 52)).
-define(MIN_EXP_D, (-1074)).

mantissa_exponent(F) ->
    case <<F:32/float>> of
        <<_S:1, 0:8, M:23>> -> % denormalized
            E = log2floor(M),
            {M bsl (24 - E), E - 23 - 150};
        <<_S:1, BE:8, M:23>> when BE < 255 ->
            {M + ?BIG_POW, BE - 150}
    end.
mantissa_exponent_d(F) ->
    case <<F:64/float>> of
        <<_S:1, 0:11, M:52>> -> % denormalized
           %?dbg("M",M), 
           E = log2floor(M),
           {M bsl (53 - E), E - 52 - 1075};
        <<_S:1, BE:11, M:52>> when BE < 2047 ->
           %?dbg("M",M), 
           {M + ?BIG_POW_D, BE - 1075}
    end.

format_float_1(Float, Exp, Frac) ->
    Round = (Frac band 1) =:= 0,
    if 
        Exp >= 0  ->
            BExp = 1 bsl Exp,
            if
                Frac =:= ?BIG_POW ->
                    scale(Frac * BExp * 4, 4, BExp * 2, BExp,
                          Round, Round, Float);
                true ->
                    scale(Frac * BExp * 2, 2, BExp, BExp,
                          Round, Round, Float)
            end;
        Exp < ?MIN_EXP ->
            BExp = 1 bsl (?MIN_EXP - Exp),
            scale(Frac * 2, 1 bsl (1 - Exp), BExp, BExp,
                  Round, Round, Float);
        Exp > ?MIN_EXP, Frac =:= ?BIG_POW ->
            scale(Frac * 4, 1 bsl (2 - Exp), 2, 1,
                  Round, Round, Float);
        true ->
            scale(Frac * 2, 1 bsl (1 - Exp), 1, 1,
                  Round, Round, Float)
    end.
format_double_1(Float, Exp, Frac) ->
    Round = (Frac band 1) =:= 0,
    if 
        Exp >= 0  ->
            BExp = 1 bsl Exp,
            if
                Frac =:= ?BIG_POW_D ->
                    scale(Frac * BExp * 4, 4, BExp * 2, BExp,
                          Round, Round, Float);
                true ->
                    scale(Frac * BExp * 2, 2, BExp, BExp,
                          Round, Round, Float)
            end;
        Exp < ?MIN_EXP_D ->
            BExp = 1 bsl (?MIN_EXP_D - Exp),
            scale(Frac * 2, 1 bsl (1 - Exp), BExp, BExp,
                  Round, Round, Float);
        Exp > ?MIN_EXP_D, Frac =:= ?BIG_POW_D ->
            scale(Frac * 4, 1 bsl (2 - Exp), 2, 1,
                  Round, Round, Float);
        true ->
            scale(Frac * 2, 1 bsl (1 - Exp), 1, 1,
                  Round, Round, Float)
    end.

scale(R, S, MPlus, MMinus, LowOk, HighOk, Float) ->
   Est = int_ceil(math:log10(abs(Float)) - 1.0e-10),
    %% Note that the scheme implementation uses a 326 element look-up
    %% table for int_pow(10, N) where we do not.
    if
        Est >= 0 ->
            fixup(R, S * int_pow(10, Est), MPlus, MMinus, Est,
                  LowOk, HighOk);
        true ->
            Scale = int_pow(10, -Est),
            fixup(R * Scale, S, MPlus * Scale, MMinus * Scale, Est,
                  LowOk, HighOk)
    end.

fixup(R, S, MPlus, MMinus, K, LowOk, HighOk) ->
    TooLow = if 
                 HighOk ->  R + MPlus >= S;
                 true -> R + MPlus > S
             end,
    case TooLow of
        true ->
            {K + 1, generate(R, S, MPlus, MMinus, LowOk, HighOk)};
        false ->
            {K, generate(R * 10, S, MPlus * 10, MMinus * 10, LowOk, HighOk)}
    end.

generate(R0, S, MPlus, MMinus, LowOk, HighOk) ->
    D = R0 div S,
    R = R0 rem S,
    TC1 = if
              LowOk -> R =< MMinus;
              true -> R < MMinus
          end,
    TC2 = if
              HighOk -> R + MPlus >= S;
              true -> R + MPlus > S
          end,
    case {TC1, TC2} of
        {false, false} -> 
            [D | generate(R * 10, S, MPlus * 10, MMinus * 10, LowOk, HighOk)];
        {false, true} ->
            [D + 1];
        {true, false} -> 
            [D];
        {true, true} when R * 2 < S ->
            [D];
        {true, true} ->
            [D + 1]
    end.

insert_decimal(0, S) ->
    "0." ++ S;
insert_decimal(Place, S) ->
    ExpL = integer_to_list(Place - 1),
    insert_exp(ExpL, S).

insert_exp(ExpL, [C]) ->
    [C] ++ ".0E" ++ ExpL;
insert_exp(ExpL, [C | S]) ->
    [C] ++ "." ++ S ++ "E" ++ ExpL.

int_ceil(X) when is_float(X) ->
    T = trunc(X),
    case (X - T) of
        Neg when Neg < 0 -> T;
        Pos when Pos > 0 -> T + 1;
        _ -> T
    end.

int_pow(X, 0) when is_integer(X) ->
    1;
int_pow(X, N) when is_integer(X), is_integer(N), N > 0 ->
    int_pow(X, N, 1).

int_pow(X, N, R) when N < 2 ->
    R * X;
int_pow(X, N, R) ->
    int_pow(X * X, N bsr 1, case N band 1 of 1 -> R * X; 0 -> R end).

log2floor(Int) when is_integer(Int), Int > 0 ->
    log2floor(Int, 0).

log2floor(0, N) ->
    N;
log2floor(Int, N) ->
    log2floor(Int bsr 1, 1 + N).

