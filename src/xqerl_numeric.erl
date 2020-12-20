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

%% @doc Number handling (decimal,double,float,etc.)

-module(xqerl_numeric).

-include("xqerl.hrl").

-define(MAXDEC, 20).
-define(INT_DEC(I), #xsDecimal{int = I, scf = 0}).

-type decimal_rec() :: #xsDecimal{}.

%% ====================================================================
%% API functions
%% ====================================================================
-export([
    decimal/1,
    sortable_decimal/1
]).

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

-spec float_to_decimal(float()) -> decimal_rec().
float_to_decimal(Float) when is_float(Float) ->
    String = string(Float),
    [MantStr, ExpStr] =
        case string:split(String, [$E]) of
            [M, E] ->
                [M, E];
            [M] ->
                [M, <<"0">>]
        end,
    Exp = binary_to_integer(ExpStr),
    {Sign, AbsMantStr} =
        case MantStr of
            <<$-, R/binary>> ->
                {<<"-">>, R};
            _ ->
                {<<"">>, MantStr}
        end,
    [Int, Fract] =
        case split_on_dot(AbsMantStr, <<>>) of
            [I, F] ->
                [I, F];
            [I] ->
                [I, <<"0">>]
        end,
    Shift = size(Fract),
    case (Exp - Shift) * -1 of
        TotalShift when TotalShift > 0 ->
            #xsDecimal{
                int = binary_to_integer(<<Sign/binary, Int/binary, Fract/binary>>),
                scf = max(0, TotalShift)
            };
        TotalShift ->
            #xsDecimal{
                int = binary_to_integer(
                    <<Sign/binary, Int/binary, Fract/binary,
                        (binary:copy(<<"0">>, -TotalShift))/binary>>
                ),
                scf = max(0, TotalShift)
            }
    end.

-spec sortable_decimal(number() | decimal_rec() | binary()) ->
    {0 | 1, pos_integer(), pos_integer()}.
sortable_decimal(Num) when is_integer(Num), Num < 0 ->
    {0, abs(Num), 1};
sortable_decimal(Num) when is_integer(Num) ->
    {1, Num, 1};
sortable_decimal(Num) ->
    #xsDecimal{int = Int, scf = Scf} = decimal(Num),
    Bin = integer_to_binary(Int),
    Bs = byte_size(Bin),
    Bo =
        case binary:first(Bin) of
            $- ->
                Bs - Scf - 1;
            _ ->
                Bs - Scf
        end,
    %?dbg("All",{Bo,Bs,Bin,Int,Scf}),
    case Bin of
        <<T:Scf/bytes>> when Bo >= 0 ->
            {1, 0, binary_to_integer(<<$1, T/binary>>)};
        <<$-, T:Scf/bytes>> when Bo >= 0 ->
            {0, 0, binary_to_integer(<<$1, T/binary>>)};
        <<$-, H:Bo/bytes>> when Bo >= 0 ->
            H1 = binary_to_integer(H),
            {0, H1, 1};
        <<H:Bo/bytes, T:Scf/bytes>> when Bo >= 0 ->
            case binary_to_integer(H) of
                H1 when H1 < 0 ->
                    {0, abs(H1), binary_to_integer(<<$1, T/binary>>)};
                H1 ->
                    {1, H1, binary_to_integer(<<$1, T/binary>>)}
            end;
        <<$-, T/binary>> when Bo < 0 ->
            % negative less than 1
            Pad = binary:copy(<<$0>>, abs(Bo)),
            {0, 0, binary_to_integer(<<$1, Pad/binary, T/binary>>)};
        _ when Bo < 0 ->
            Pad = binary:copy(<<$0>>, abs(Bo)),
            {1, 0, binary_to_integer(<<$1, Pad/binary, Bin/binary>>)}
    end.

-spec decimal(number() | decimal_rec() | binary()) -> decimal_rec().
decimal(0.0) ->
    ?INT_DEC(0);
decimal(0) ->
    ?INT_DEC(0);
decimal(1.0) ->
    ?INT_DEC(1);
decimal(1) ->
    ?INT_DEC(1);
decimal(-1.0) ->
    ?INT_DEC(-1);
decimal(-1) ->
    ?INT_DEC(-1);
decimal(Float) when is_float(Float) ->
    try
        decimal_from_float(Float)
    catch
        _:_ ->
            ?err('FOCA0001')
    end;
decimal(Int) when is_integer(Int) ->
    #xsDecimal{int = Int, scf = 0};
decimal(#xsDecimal{scf = 0} = D) ->
    D;
decimal(#xsDecimal{} = D) ->
    simplify(D);
decimal(String) ->
    case split_on_dot(String, <<>>) of
        [Int, Fract] ->
            Scf = byte_size(Fract),
            Num = binary_to_integer(<<Int/binary, Fract/binary>>),
            simplify(#xsDecimal{int = Num, scf = Scf});
        [Int] ->
            #xsDecimal{int = binary_to_integer(Int), scf = 0}
    end.

decimal_from_float(Float) when abs(Float) < 1 andalso Float < 0 ->
    decimal(float_to_binary(Float, [{decimals, 25}, compact]));
decimal_from_float(Float) when abs(Float) < 1 ->
    decimal(float_to_binary(Float, [{decimals, 25}, compact]));
decimal_from_float(Float) when abs(Float) > 100000000000000000000000000 ->
    ?INT_DEC(trunc(Float));
decimal_from_float(Float) when trunc(Float) == Float ->
    ?INT_DEC(trunc(Float));
decimal_from_float(Float) ->
    decimal(float_to_binary(Float, [{decimals, 20}, compact])).

-spec double(number() | decimal_rec() | binary()) ->
    'infinity'
    | 'nan'
    | 'neg_infinity'
    | 'neg_zero'
    | float()
    | decimal_rec().
double(Float) when is_float(Float) ->
    Float;
double(Int) when is_integer(Int) andalso abs(Int) < 9999999999999999999999 ->
    erlang:float(Int);
double(Int) when is_integer(Int) ->
    double(?INT_DEC(Int));
double(#xsDecimal{int = 0, scf = 0}) ->
    0.0;
double(#xsDecimal{scf = Scf} = D) when Scf > 6 ->
    #xsDecimal{int = Int, scf = Scf1} = simplify(D),
    try
        double(
            <<(integer_to_binary(Int))/binary, $., $0, $E, $-, (integer_to_binary(Scf1))/binary>>
        )
    catch
        _:_ ->
            D
    end;
double(#xsDecimal{int = Int, scf = Scf}) ->
    try
        Int / math:pow(10, Scf)
    catch
        _:_ ->
            double(
                <<(integer_to_binary(Int))/binary, $., $0, $E, $-, (integer_to_binary(Scf))/binary>>
            )
    end;
double(String) ->
    Val =
        case xqerl_lib:trim(String) of
            <<$., T/binary>> ->
                <<$0, $., T/binary>>;
            <<>> ->
                ?err('FORG0001');
            V ->
                V
        end,
    double_from_string(Val).

double_from_string(<<"-0">>) ->
    neg_zero;
double_from_string(<<"NaN">>) ->
    nan;
%<<"+INF">> -> infinity; % schema 1.1
double_from_string(<<"-INF">>) ->
    neg_infinity;
double_from_string(<<"INF">>) ->
    infinity;
double_from_string(<<First, _/binary>> = Val) ->
    Flt = (catch binary_to_float(Val)),
    double_from_string(Flt, First, Val).

double_from_string(Flt, $-, Val) when Flt == 0 ->
    ok = check_double_dash(Val),
    neg_zero;
double_from_string(Flt, _, _) when is_float(Flt) ->
    Flt;
double_from_string(_, _, Val) ->
    case catch binary_to_integer(Val) of
        Int when is_integer(Int) ->
            erlang:float(Int);
        _ ->
            try
                double_from_string_1(Val)
            catch
                _:_:Stack ->
                    ?dbg("Stack", Stack),
                    ?err('FORG0001')
            end
    end.

double_from_string_1(Val) ->
    {Sign, Rest} =
        case Val of
            <<"-", R/binary>> -> {'-', R};
            <<"+", R/binary>> -> {'+', R};
            R -> {'+', R}
        end,
    Rest1 =
        case binary:first(Rest) == $. of
            true -> <<$0, Rest/binary>>;
            _ -> Rest
        end,
    {Man, Exp} =
        case split_on_e(Rest1, <<>>) of
            [M, E] -> {M, binary_to_integer(E)};
            [M] -> {M, 0}
        end,
    Num =
        case xqerl_lib:contains(Man, $.) of
            false ->
                erlang:float(binary_to_integer(Man));
            _ ->
                case binary:last(Man) of
                    $. ->
                        Bin1 = binary:part(Man, {0, byte_size(Man) - 1}),
                        erlang:float(binary_to_integer(Bin1));
                    _ ->
                        binary_to_float(Man)
                end
        end,
    NNum =
        case Sign of
            '-' ->
                ok = check_double_dash(Val),
                -Num;
            _ ->
                Num
        end,
    try
        Str = float_to_list(NNum, [{decimals, 18}]) ++ "e" ++ integer_to_list(Exp),
        case list_to_float(Str) of
            ENum when ENum == 0 andalso Sign == '-' -> neg_zero;
            ENum -> ENum
        end
    catch
        _:_ ->
            case Sign of
                '-' -> neg_infinity;
                _ -> infinity
            end
    end.

-spec float(number() | decimal_rec()) -> float().
float(Float) when is_float(Float) ->
    % take the float from 64 to 32 bit
    try
        <<New:32/float>> = <<Float:32/float>>,
        New
    catch
        _:_ ->
            ?err('FOAR0002')
    end;
float(Int) when is_integer(Int) ->
    ?MODULE:float(erlang:float(Int));
float(#xsDecimal{} = D) ->
    ?MODULE:float(double(D)).

-spec integer(number() | decimal_rec()) -> integer().
integer(Int) when is_integer(Int) -> Int;
integer(Float) when is_float(Float) -> trunc(Float);
integer(#xsDecimal{int = Int, scf = 0}) -> Int;
integer(#xsDecimal{int = Int, scf = Scf}) -> Int div pow10(Scf).

-spec float_string(float()) -> binary().
float_string(Float) when is_float(Float) ->
    format_float(Float).

-spec string(number() | decimal_rec()) -> binary().
string(Float) when is_float(Float) ->
    format_double(Float);
string(Int) when is_integer(Int) ->
    integer_to_binary(Int);
string(#xsDecimal{int = Int, scf = Scf}) ->
    decimal_to_string(Int, Scf).

-spec add(
    number() | decimal_rec(),
    number() | decimal_rec()
) -> number() | decimal_rec().
add(#xsDecimal{int = IntA, scf = ScfA}, #xsDecimal{int = IntB, scf = ScfB}) when ScfA < ScfB ->
    IntA1 = IntA * pow10(ScfB - ScfA),
    #xsDecimal{int = IntA1 + IntB, scf = ScfB};
add(#xsDecimal{int = IntA, scf = ScfA}, #xsDecimal{int = IntB, scf = ScfB}) when ScfA > ScfB ->
    IntB1 = IntB * pow10(ScfA - ScfB),
    #xsDecimal{int = IntA + IntB1, scf = ScfA};
add(#xsDecimal{int = IntA, scf = ScfA}, #xsDecimal{int = IntB}) ->
    #xsDecimal{int = IntA + IntB, scf = ScfA};
add(#xsDecimal{} = A, B) when is_integer(B) ->
    add(A, ?INT_DEC(B));
add(A, #xsDecimal{} = B) when is_integer(A) ->
    add(?INT_DEC(A), B);
add(#xsDecimal{} = A, B) when is_float(B) ->
    add(double(A), B);
add(A, #xsDecimal{} = B) when is_float(A) ->
    add(A, double(B));
add(A, B) ->
    A + B.

-spec subtract(
    number() | decimal_rec(),
    number() | decimal_rec()
) -> number() | decimal_rec().
subtract(
    #xsDecimal{int = IntA, scf = ScfA},
    #xsDecimal{int = IntB, scf = ScfB}
) when ScfA < ScfB ->
    IntA1 = IntA * pow10(ScfB - ScfA),
    #xsDecimal{int = IntA1 - IntB, scf = ScfB};
subtract(
    #xsDecimal{int = IntA, scf = ScfA},
    #xsDecimal{int = IntB, scf = ScfB}
) when ScfA > ScfB ->
    IntB1 = IntB * pow10(ScfA - ScfB),
    #xsDecimal{int = IntA - IntB1, scf = ScfA};
subtract(
    #xsDecimal{int = IntA, scf = ScfA},
    #xsDecimal{int = IntB}
) ->
    #xsDecimal{int = IntA - IntB, scf = ScfA};
subtract(#xsDecimal{} = A, B) when is_integer(B) ->
    subtract(A, ?INT_DEC(B));
subtract(A, #xsDecimal{} = B) when is_integer(A) ->
    subtract(?INT_DEC(A), B);
subtract(#xsDecimal{} = A, B) when is_float(B) ->
    subtract(double(A), B);
subtract(A, #xsDecimal{} = B) when is_float(A) ->
    subtract(A, double(B));
subtract(A, B) ->
    A - B.

-spec multiply(
    number() | decimal_rec(),
    number() | decimal_rec()
) -> number() | decimal_rec().
multiply(
    #xsDecimal{int = IntA, scf = ScfA},
    #xsDecimal{int = IntB, scf = ScfB}
) ->
    #xsDecimal{int = IntA * IntB, scf = ScfA + ScfB};
multiply(#xsDecimal{} = A, B) when is_integer(B) ->
    multiply(A, ?INT_DEC(B));
multiply(A, #xsDecimal{} = B) when is_integer(A) ->
    multiply(?INT_DEC(A), B);
multiply(#xsDecimal{} = A, B) when is_float(B) ->
    multiply(double(A), B);
multiply(A, #xsDecimal{} = B) when is_float(A) ->
    multiply(A, double(B));
multiply(A, 1) ->
    A;
multiply(1, B) ->
    B;
multiply(A, B) ->
    A * B.

-spec divide(
    number() | decimal_rec(),
    number() | decimal_rec()
) -> number() | decimal_rec().
divide(
    #xsDecimal{int = IntA, scf = ScfA},
    #xsDecimal{int = IntB, scf = ScfB}
) when ScfA < ScfB ->
    IntA1 = IntA * pow10(ScfB - ScfA),
    IntA2 = IntA1 * pow10(?MAXDEC + 1),
    simplify(round1(#xsDecimal{int = IntA2 div IntB, scf = ?MAXDEC + 1}));
divide(
    #xsDecimal{int = IntA, scf = ScfA},
    #xsDecimal{int = IntB, scf = ScfB}
) when ScfA > ScfB ->
    IntB1 = IntB * pow10(ScfA - ScfB),
    IntA2 = IntA * pow10(?MAXDEC + 1),
    simplify(round1(#xsDecimal{int = IntA2 div IntB1, scf = ?MAXDEC + 1}));
divide(
    #xsDecimal{int = IntA},
    #xsDecimal{int = IntB}
) ->
    IntA2 = IntA * pow10(?MAXDEC + 1),
    simplify(round1(#xsDecimal{int = IntA2 div IntB, scf = ?MAXDEC + 1}));
divide(#xsDecimal{} = A, B) when is_integer(B) ->
    divide(A, ?INT_DEC(B));
divide(A, #xsDecimal{} = B) when is_integer(A) ->
    divide(?INT_DEC(A), B);
divide(A, B) when is_integer(A), is_integer(B) ->
    divide(?INT_DEC(A), ?INT_DEC(B));
divide(#xsDecimal{} = A, B) when is_float(B) ->
    divide(double(A), B);
divide(A, #xsDecimal{} = B) when is_float(A) ->
    divide(A, double(B));
divide(A, B) ->
    A / B.

-spec equal(
    number() | decimal_rec(),
    number() | decimal_rec()
) -> boolean().
equal(A, B) when is_integer(A), is_integer(B) ->
    A =:= B;
equal(A, B) when is_number(A), is_number(B) ->
    A == B;
equal(#xsDecimal{} = IntA, IntB) when is_integer(IntB) ->
    equal(IntA, ?INT_DEC(IntB));
equal(IntA, #xsDecimal{} = IntB) when is_integer(IntA) ->
    equal(?INT_DEC(IntA), IntB);
equal(
    #xsDecimal{int = IntA, scf = ScfA},
    #xsDecimal{int = IntB, scf = ScfB}
) when ScfA < ScfB ->
    IntA1 = IntA * pow10(ScfB - ScfA),
    IntA1 == IntB;
equal(
    #xsDecimal{int = IntA, scf = ScfA},
    #xsDecimal{int = IntB, scf = ScfB}
) when ScfA > ScfB ->
    IntB1 = IntB * pow10(ScfA - ScfB),
    IntA == IntB1;
equal(#xsDecimal{int = IntA}, #xsDecimal{int = IntB}) ->
    IntA == IntB;
equal(A, B) ->
    double(A) == double(B).

-spec greater_than(
    number() | decimal_rec(),
    number() | decimal_rec()
) -> boolean().
greater_than(A, B) when is_number(A), is_number(B) ->
    A > B;
greater_than(#xsDecimal{} = IntA, IntB) when is_integer(IntB) ->
    greater_than(IntA, ?INT_DEC(IntB));
greater_than(IntA, #xsDecimal{} = IntB) when is_integer(IntA) ->
    greater_than(?INT_DEC(IntA), IntB);
greater_than(
    #xsDecimal{int = IntA, scf = ScfA},
    #xsDecimal{int = IntB, scf = ScfB}
) when ScfA < ScfB ->
    IntA1 = IntA * pow10(ScfB - ScfA),
    IntA1 > IntB;
greater_than(
    #xsDecimal{int = IntA, scf = ScfA},
    #xsDecimal{int = IntB, scf = ScfB}
) when ScfA > ScfB ->
    IntB1 = IntB * pow10(ScfA - ScfB),
    IntA > IntB1;
greater_than(#xsDecimal{int = IntA}, #xsDecimal{int = IntB}) ->
    IntA > IntB;
greater_than(A, B) ->
    double(A) > double(B).

-spec greater_than_equal(
    number() | decimal_rec(),
    number() | decimal_rec()
) -> boolean().
greater_than_equal(A, B) when is_number(A), is_number(B) ->
    A >= B;
greater_than_equal(#xsDecimal{} = IntA, IntB) when is_integer(IntB) ->
    greater_than_equal(IntA, ?INT_DEC(IntB));
greater_than_equal(IntA, #xsDecimal{} = IntB) when is_integer(IntA) ->
    greater_than_equal(?INT_DEC(IntA), IntB);
greater_than_equal(
    #xsDecimal{int = IntA, scf = ScfA},
    #xsDecimal{int = IntB, scf = ScfB}
) when ScfA < ScfB ->
    IntA1 = IntA * pow10(ScfB - ScfA),
    IntA1 >= IntB;
greater_than_equal(
    #xsDecimal{int = IntA, scf = ScfA},
    #xsDecimal{int = IntB, scf = ScfB}
) when ScfA > ScfB ->
    IntB1 = IntB * pow10(ScfA - ScfB),
    IntA >= IntB1;
greater_than_equal(#xsDecimal{int = IntA}, #xsDecimal{int = IntB}) ->
    IntA >= IntB;
greater_than_equal(A, B) ->
    double(A) >= double(B).

-spec less_than(
    number() | decimal_rec(),
    number() | decimal_rec()
) -> boolean().
less_than(A, B) when is_number(A), is_number(B) ->
    A < B;
less_than(#xsDecimal{} = IntA, IntB) when is_integer(IntB) ->
    less_than(IntA, ?INT_DEC(IntB));
less_than(IntA, #xsDecimal{} = IntB) when is_integer(IntA) ->
    less_than(?INT_DEC(IntA), IntB);
less_than(
    #xsDecimal{int = IntA, scf = ScfA},
    #xsDecimal{int = IntB, scf = ScfB}
) when ScfA < ScfB ->
    IntA1 = IntA * pow10(ScfB - ScfA),
    IntA1 < IntB;
less_than(
    #xsDecimal{int = IntA, scf = ScfA},
    #xsDecimal{int = IntB, scf = ScfB}
) when ScfA > ScfB ->
    IntB1 = IntB * pow10(ScfA - ScfB),
    IntA < IntB1;
less_than(#xsDecimal{int = IntA}, #xsDecimal{int = IntB}) ->
    IntA < IntB;
less_than(A, B) ->
    double(A) < double(B).

-spec less_than_equal(
    number() | decimal_rec(),
    number() | decimal_rec()
) -> boolean().
less_than_equal(A, B) when is_number(A), is_number(B) ->
    A =< B;
less_than_equal(#xsDecimal{} = IntA, IntB) when is_integer(IntB) ->
    less_than_equal(IntA, ?INT_DEC(IntB));
less_than_equal(IntA, #xsDecimal{} = IntB) when is_integer(IntA) ->
    less_than_equal(?INT_DEC(IntA), IntB);
less_than_equal(
    #xsDecimal{int = IntA, scf = ScfA},
    #xsDecimal{int = IntB, scf = ScfB}
) when ScfA < ScfB ->
    IntA1 = IntA * pow10(ScfB - ScfA),
    IntA1 =< IntB;
less_than_equal(
    #xsDecimal{int = IntA, scf = ScfA},
    #xsDecimal{int = IntB, scf = ScfB}
) when ScfA > ScfB ->
    IntB1 = IntB * pow10(ScfA - ScfB),
    IntA =< IntB1;
less_than_equal(#xsDecimal{int = IntA}, #xsDecimal{int = IntB}) ->
    IntA =< IntB;
less_than_equal(A, B) ->
    double(A) =< double(B).

-spec unary_minus(number() | decimal_rec()) -> number() | decimal_rec().
unary_minus(#xsDecimal{int = IntA} = D) ->
    D#xsDecimal{int = IntA * -1};
unary_minus(Val) ->
    Val * -1.

-spec abs_val(number() | decimal_rec()) -> number() | decimal_rec().
abs_val(#xsDecimal{int = Int} = D) when Int >= 0 ->
    D;
abs_val(#xsDecimal{int = Int} = D) ->
    D#xsDecimal{int = abs(Int)};
abs_val(D) ->
    abs(D).

-spec floor(number() | decimal_rec()) -> integer().
floor(#xsDecimal{int = Int, scf = 0}) ->
    Int;
floor(#xsDecimal{} = D) ->
    floor_1(simplify(D));
floor(Int) when is_integer(Int) ->
    Int;
floor(Float) ->
    case trunc(Float) of
        T when Float == T -> T;
        T when Float < 0 -> T - 1;
        T -> T
    end.

floor_1(#xsDecimal{int = Int1, scf = 0}) ->
    Int1;
floor_1(#xsDecimal{int = Int1, scf = Scf1}) when Int1 < 0 ->
    (Int1 div pow10(Scf1)) - 1;
floor_1(#xsDecimal{int = Int1, scf = Scf1}) ->
    Int1 div pow10(Scf1).

-spec ceiling(number() | decimal_rec()) -> integer().
ceiling(#xsDecimal{int = Int, scf = 0}) ->
    Int;
ceiling(#xsDecimal{} = D) ->
    ceiling_1(simplify(D));
ceiling(Int) when is_integer(Int) ->
    Int;
ceiling(Float) ->
    case trunc(Float) of
        T when Float == T -> T;
        _ when Float > -1, Float < 0 -> neg_zero;
        T when Float < 0 -> T;
        T -> T + 1
    end.

ceiling_1(#xsDecimal{int = Int1, scf = 0}) ->
    Int1;
ceiling_1(#xsDecimal{int = Int1, scf = Scf1}) when Int1 < 0 ->
    Int1 div pow10(Scf1);
ceiling_1(#xsDecimal{int = Int1, scf = Scf1}) ->
    (Int1 div pow10(Scf1)) + 1.

-spec truncate(number() | decimal_rec()) -> integer().
truncate(#xsDecimal{int = Int, scf = 0}) ->
    Int;
truncate(#xsDecimal{int = Int, scf = Scf}) ->
    Int div pow10(Scf);
truncate(Float) when is_float(Float) ->
    trunc(Float);
truncate(D) ->
    D.

-spec round_half_even(decimal_rec(), integer()) -> decimal_rec().
round_half_even(#xsDecimal{scf = Scf} = D, Prec) when Prec >= Scf ->
    D;
round_half_even(#xsDecimal{int = Int, scf = Scf} = D, Prec) when Prec < 0 ->
    Prec1 = pow10(abs(Prec)),
    case Int div pow10(Scf) div Prec1 of
        0 ->
            #xsDecimal{int = 0, scf = 0};
        Low ->
            High = high_value_round(Int, Low),
            LowVal = #xsDecimal{int = Low * Prec1, scf = 0},
            HighVal = #xsDecimal{int = High * Prec1, scf = 0},
            #xsDecimal{int = Diff, scf = P} = simplify(subtract(D, LowVal)),
            case abs(Diff) == Prec1 div 2 andalso Prec1 rem 2 == 0 of
                true when Low rem 2 == 0 ->
                    LowVal;
                true ->
                    HighVal;
                false ->
                    high_low_round(Diff, P, Prec, HighVal, LowVal)
            end
    end;
round_half_even(#xsDecimal{int = Int, scf = Scf} = D, Prec) when Prec >= 0 ->
    Low = Int div pow10(Scf - Prec),
    High = high_value_round(Int, Low),
    LowVal = simplify(#xsDecimal{int = Low, scf = Prec}),
    HighVal = simplify(#xsDecimal{int = High, scf = Prec}),
    #xsDecimal{int = Diff, scf = P} = simplify(subtract(D, LowVal)),
    case (P - Prec) == 1 andalso abs(Diff) == 5 of
        true when Low rem 2 == 0 ->
            LowVal;
        true ->
            HighVal;
        false when P == 0, Diff == 0 ->
            LowVal;
        false ->
            high_low_round(Diff, P, Prec, HighVal, LowVal)
    end.

-spec round_half(number() | decimal_rec(), integer()) -> integer() | decimal_rec().
round_half(#xsDecimal{scf = Scf} = D, Prec) when Prec >= Scf ->
    D;
round_half(#xsDecimal{int = Int, scf = Scf} = D, Prec) when Prec < 0 ->
    Prec1 = pow10(abs(Prec)),
    case Int div pow10(Scf) div Prec1 of
        0 ->
            #xsDecimal{int = 0, scf = 0};
        Low ->
            High = high_value_round(Int, Low),
            LowVal = #xsDecimal{int = Low * Prec1, scf = 0},
            HighVal = #xsDecimal{int = High * Prec1, scf = 0},
            #xsDecimal{int = Diff, scf = P} = simplify(subtract(D, LowVal)),
            case abs(Diff) == Prec1 div 2 andalso Prec1 rem 2 == 0 of
                true when Int < 0 ->
                    LowVal;
                true ->
                    HighVal;
                false ->
                    high_low_round(Diff, P, Prec, HighVal, LowVal)
            end
    end;
round_half(#xsDecimal{int = Int, scf = Scf} = D, Prec) when Prec >= 0 ->
    Low = Int div pow10(Scf - Prec),
    High = high_value_round(Int, Low),
    LowVal = #xsDecimal{int = Low, scf = Prec},
    HighVal = #xsDecimal{int = High, scf = Prec},
    #xsDecimal{int = Diff, scf = P} = simplify(subtract(D, LowVal)),
    case (P - Prec) == 1 andalso abs(Diff) == 5 of
        true when Int < 0 ->
            LowVal;
        true ->
            HighVal;
        false ->
            high_low_round(Diff, P, Prec, HighVal, LowVal)
    end;
round_half(Flt, 0) ->
    round(Flt).

%% ====================================================================
%% Internal functions
%% ====================================================================

round1(#xsDecimal{int = Int, scf = Scf}) ->
    Int1 =
        case Int rem 10 of
            Rem when Rem > -5, Rem < 5 ->
                Int div 10;
            _ when Int < 0 ->
                (Int div 10) - 1;
            _ ->
                (Int div 10) + 1
        end,
    #xsDecimal{int = Int1, scf = Scf - 1}.

simplify(#xsDecimal{scf = 0} = D) ->
    D;
simplify(#xsDecimal{int = Int, scf = Scf}) when Scf > 4, Int rem 100000 =:= 0 ->
    simplify(#xsDecimal{int = Int div 100000, scf = Scf - 5});
simplify(#xsDecimal{int = Int, scf = Scf}) when Scf > 3, Int rem 10000 =:= 0 ->
    simplify(#xsDecimal{int = Int div 10000, scf = Scf - 4});
simplify(#xsDecimal{int = Int, scf = Scf}) when Scf > 2, Int rem 1000 =:= 0 ->
    simplify(#xsDecimal{int = Int div 1000, scf = Scf - 3});
simplify(#xsDecimal{int = Int, scf = Scf}) when Scf > 1, Int rem 100 =:= 0 ->
    simplify(#xsDecimal{int = Int div 100, scf = Scf - 2});
simplify(#xsDecimal{int = Int, scf = Scf}) when Scf > 0, Int rem 10 =:= 0 ->
    simplify(#xsDecimal{int = Int div 10, scf = Scf - 1});
simplify(#xsDecimal{} = D) ->
    D.

pow10(0) ->
    1;
pow10(1) ->
    10;
pow10(2) ->
    100;
pow10(3) ->
    1000;
pow10(4) ->
    10000;
pow10(5) ->
    100000;
pow10(6) ->
    1000000;
pow10(7) ->
    10000000;
pow10(8) ->
    100000000;
pow10(9) ->
    1000000000;
pow10(N) when N > 9 ->
    10000000000 * pow10(N - 10).

decimal_to_string(Int, Scf) when Int < 0 ->
    List = lists:reverse(integer_to_list(abs(Int))),
    Bin = list_to_binary(decimal_to_string(List, Scf, [])),
    <<$-, Bin/binary>>;
decimal_to_string(Int, Scf) ->
    List = lists:reverse(integer_to_list(abs(Int))),
    list_to_binary(decimal_to_string(List, Scf, [])).

% trailing zeroes
decimal_to_string([$0 | T], Scf, []) when Scf > 0 ->
    decimal_to_string(T, Scf - 1, []);
% no more data, pad 0 on right-side of decimal
decimal_to_string([], Scf, Acc) when Scf > 0 ->
    decimal_to_string([], Scf - 1, [$0 | Acc]);
decimal_to_string([H | T], Scf, Acc) when Scf > 0 ->
    decimal_to_string(T, Scf - 1, [H | Acc]);
% no more data, end of number - int
decimal_to_string([], 0, []) ->
    [$0];
decimal_to_string([H | T], 0, []) ->
    decimal_to_string(T, -1, [H]);
decimal_to_string([], 0, Acc) ->
    [$0, $. | Acc];
decimal_to_string([H | T], 0, Acc) ->
    decimal_to_string(T, -1, [H, $. | Acc]);
% no more data, end of number
decimal_to_string([], _, Acc) ->
    Acc;
decimal_to_string([H | T], Scf, Acc) ->
    decimal_to_string(T, Scf - 1, [H | Acc]).

format_double(Val) when abs(Val) < 1000000 andalso trunc(Val) == Val ->
    integer_to_binary(trunc(Val));
format_double(Val) when abs(Val) >= 0.000001, abs(Val) < 1000000 ->
    %string(decimal(Val));
    W = lists:flatten(io_lib:format("~w", [Val])),
    case lists:member($e, W) of
        true ->
            list_to_binary(string:trim(lists:flatten(io_lib:format("~f", [Val])), trailing, "0"));
        _ ->
            list_to_binary(string:trim(W, trailing, "0"))
    end;
format_double(0.0) ->
    <<"0.0">>;
format_double(Float) when is_float(Float) ->
    {Frac, Exp} = mantissa_exponent_d(Float),
    {Place, Digits} = format_double_1(Float, Exp, Frac),
    R = insert_decimal(Place, [$0 + D || D <- Digits]),
    list_to_binary([[$- || true <- [Float < 0.0]], R]).

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% parts taken from io_lib_format 'g' flag and changed for 32bit float
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

format_float(Val) when abs(Val) < 1000000 andalso trunc(Val) == Val ->
    format_double(Val);
format_float(Val) when abs(Val) >= 9.999999974752427e-7, abs(Val) < 1000000 ->
    S1 = lists:flatten(io_lib:format("~.6e", [Val])),
    S2 = list_to_float(S1),
    S3 = lists:flatten(io_lib:format("~.6f", [S2])),
    list_to_binary(string:trim(S3, trailing, "0"));
format_float(0.0) ->
    <<"0.0">>;
format_float(Float) when is_float(Float) ->
    {Frac, Exp} = mantissa_exponent(Float),
    {Place, Digits} = format_float_1(Float, Exp, Frac),
    R = insert_decimal(Place, [$0 + D || D <- Digits]),
    list_to_binary([$- || true <- [Float < 0.0]] ++ R).

-define(BIG_POW, (1 bsl 23)).
-define(MIN_EXP, (-149)).
-define(BIG_POW_D, (1 bsl 52)).
-define(MIN_EXP_D, (-1074)).

mantissa_exponent(F) ->
    case <<F:32/float>> of
        % denormalized
        <<_S:1, 0:8, M:23>> ->
            E = log2floor(M),
            {M bsl (24 - E), E - 23 - 150};
        <<_S:1, BE:8, M:23>> when BE < 255 ->
            {M + ?BIG_POW, BE - 150}
    end.

mantissa_exponent_d(F) ->
    case <<F:64/float>> of
        % denormalized
        <<_S:1, 0:11, M:52>> ->
            %?dbg("M",M),
            E = log2floor(M),
            {M bsl (53 - E), E - 52 - 1075};
        <<_S:1, BE:11, M:52>> when BE < 2047 ->
            %?dbg("M",M),
            {M + ?BIG_POW_D, BE - 1075}
    end.

format_float_1(Float, Exp, Frac) ->
    Round = (Frac band 1) =:= 0,
    format_float_1(Float, Exp, Frac, Round).

format_float_1(Float, Exp, Frac, Round) when Exp >= 0, Frac =:= ?BIG_POW ->
    BExp = 1 bsl Exp,
    scale(
        Frac * BExp * 4,
        4,
        BExp * 2,
        BExp,
        Round,
        Round,
        Float
    );
format_float_1(Float, Exp, Frac, Round) when Exp >= 0 ->
    BExp = 1 bsl Exp,
    scale(
        Frac * BExp * 2,
        2,
        BExp,
        BExp,
        Round,
        Round,
        Float
    );
format_float_1(Float, Exp, Frac, Round) when Exp < ?MIN_EXP ->
    BExp = 1 bsl (?MIN_EXP - Exp),
    scale(
        Frac * 2,
        1 bsl (1 - Exp),
        BExp,
        BExp,
        Round,
        Round,
        Float
    );
format_float_1(Float, Exp, Frac, Round) when Exp > ?MIN_EXP, Frac =:= ?BIG_POW ->
    scale(
        Frac * 4,
        1 bsl (2 - Exp),
        2,
        1,
        Round,
        Round,
        Float
    );
format_float_1(Float, Exp, Frac, Round) ->
    scale_norm(Float, Exp, Frac, Round).

format_double_1(Float, Exp, Frac) ->
    Round = (Frac band 1) =:= 0,
    format_double_1(Float, Exp, Frac, Round).

format_double_1(Float, Exp, Frac, Round) when Exp >= 0, Frac =:= ?BIG_POW_D ->
    BExp = 1 bsl Exp,
    scale(
        Frac * BExp * 4,
        4,
        BExp * 2,
        BExp,
        Round,
        Round,
        Float
    );
format_double_1(Float, Exp, Frac, Round) when Exp >= 0 ->
    BExp = 1 bsl Exp,
    scale(
        Frac * BExp * 2,
        2,
        BExp,
        BExp,
        Round,
        Round,
        Float
    );
format_double_1(Float, Exp, Frac, Round) when Exp < ?MIN_EXP_D ->
    BExp = 1 bsl (?MIN_EXP_D - Exp),
    scale(
        Frac * 2,
        1 bsl (1 - Exp),
        BExp,
        BExp,
        Round,
        Round,
        Float
    );
format_double_1(Float, Exp, Frac, Round) when Exp > ?MIN_EXP_D, Frac =:= ?BIG_POW_D ->
    scale(
        Frac * 4,
        1 bsl (2 - Exp),
        2,
        1,
        Round,
        Round,
        Float
    );
format_double_1(Float, Exp, Frac, Round) ->
    scale_norm(Float, Exp, Frac, Round).

scale_norm(Float, Exp, Frac, Round) ->
    scale(
        Frac * 2,
        1 bsl (1 - Exp),
        1,
        1,
        Round,
        Round,
        Float
    ).

scale(R, S, MPlus, MMinus, LowOk, HighOk, Float) ->
    %% Note that the scheme implementation uses a 326 element look-up
    %% table for int_pow(10, N) where we do not.
    case int_ceil(math:log10(abs(Float)) - 1.0e-10) of
        Est when Est >= 0 ->
            fixup(
                R,
                S * int_pow(10, Est),
                MPlus,
                MMinus,
                Est,
                LowOk,
                HighOk
            );
        Est ->
            Scale = int_pow(10, -Est),
            fixup(
                R * Scale,
                S,
                MPlus * Scale,
                MMinus * Scale,
                Est,
                LowOk,
                HighOk
            )
    end.

fixup(R, S, MPlus, MMinus, K, LowOk, HighOk) ->
    TooLow =
        case HighOk of
            true -> R + MPlus >= S;
            false -> R + MPlus > S
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
    {TC1, TC2} =
        case {LowOk, HighOk} of
            {true, true} -> {R =< MMinus, R + MPlus >= S};
            {true, false} -> {R =< MMinus, R + MPlus > S};
            {false, false} -> {R < MMinus, R + MPlus > S};
            {false, true} -> {R < MMinus, R + MPlus >= S}
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
    int_pow(
        X * X,
        N bsr 1,
        case N band 1 of
            1 -> R * X;
            0 -> R
        end
    ).

log2floor(Int) when is_integer(Int), Int > 0 -> log2floor(Int, 0).

log2floor(0, N) -> N;
log2floor(Int, N) -> log2floor(Int bsr 1, 1 + N).

split_on_dot(<<>>, Acc) -> [Acc];
split_on_dot(<<".", T/binary>>, Acc) -> [Acc, T];
split_on_dot(<<H/utf8, T/binary>>, Acc) -> split_on_dot(T, <<Acc/binary, H/utf8>>).

split_on_e(<<>>, Acc) -> [Acc];
split_on_e(<<"e", T/binary>>, Acc) -> [Acc, T];
split_on_e(<<"E", T/binary>>, Acc) -> [Acc, T];
split_on_e(<<H/utf8, T/binary>>, Acc) -> split_on_e(T, <<Acc/binary, H/utf8>>).

check_double_dash(Val) ->
    case binary:match(Val, <<"--">>) of
        nomatch -> ok;
        _ -> ?err('FORG0001')
    end.

high_value_round(Int, Low) when Int < 0 -> Low - 1;
high_value_round(_, Low) -> Low + 1.

high_low_round(Diff, P, Prec, HighVal, LowVal) ->
    case abs(round(Diff / pow10(P - Prec))) of
        1 -> HighVal;
        _ -> LowVal
    end.
