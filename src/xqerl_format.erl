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

%% @doc Formatting functions for use with fn:format-integer, date fomat functions, and format-number. 
%% @TODO use the modifier markers for ordinals and 'traditional'. 
%% @TODO Complete the implementation

-module(xqerl_format).
-include("xqerl.hrl").

%-export([test/2]).
-export([parse_picture/2]).
-export([parse_picture_string/2]).


%% test(Int, Picture) ->
%%    Dt = xqerl_types:cast_as(#xqAtomicValue{type = 'xs:string',value = "2003-09-07T12:45:12.3456"}, 'xs:dateTime'),
%%    parse_picture(Dt, Picture).


%% used for fn:format-number
%% takes (PictureString,#dec_format{})
%% returns {PosFun,NegFun}
parse_picture_string(String, #dec_format{} = DF) ->
   try
      Format = dec_format_to_map(DF),
      Tokens = tokenize_picture_string(String, Format),
      {Positive, Negative} = case split_with(Tokens, pattern_separator) of
                                {Val,[]} ->
                                   {build_format(Val,picture_string_variable_map(Val, positive),Format),
                                    build_format(Val,picture_string_variable_map(Val, negative),Format)};
                                {P,N} ->
                                   % N has seperator in hd
                                   {build_format(P,picture_string_variable_map(P, positive),Format),
                                    build_format(N,picture_string_variable_map(N, positive),Format)}
                             end,
      {Positive,Negative}
   catch _:_ -> ?err('FODF1310')
   end.

% tokenizes the picture string based on the format map,
% unknown characters are {passive, Codepoint}
tokenize_picture_string(String, #{decimal  := [D],
                                  grouping := [G],
                                  minus    := [M],
                                  percent  := [P],
                                  per_mille:= [Pm],
                                  zero     := [Z],
                                  digit    := [I],
                                  pattern  := [Pn],
                                  exponent := [E]
                                 }) ->
   Zero = zero_base_by_family(Z),
   Nine = Zero + 9,
   Fun = fun(C) when C >= Zero, C =< Nine ->
               digit;
            (D1) when D == D1 ->
               decimal_separator;
            (G1) when G == G1 ->
               grouping_separator;
            (M1) when M == M1 ->
               {minus,M};
            (P1) when P == P1 ->
               {percent,P};
            (Pm1) when Pm == Pm1 ->
               {per_mille,Pm};
            (I1) when I == I1 ->
               optional_digit;
            (Pn1) when Pn == Pn1 ->
               pattern_separator;
            (E1) when E == E1 ->
               {exponent,E};
            (C) ->
               {passive,C}
         end,
   List = lists:map(Fun, String),
   ensure_exp(List).

validate_tokens([],exponent) -> ok;
validate_tokens(List,mantissa) ->
   true = length([ok||N<-List, N == digit orelse N == optional_digit]) > 0;
validate_tokens(List,exponent) ->
   true = hd(List) == digit;
validate_tokens([],integer) -> ok;
validate_tokens(List,integer) ->
   true = lists:last(List) =/= grouping_separator,
   ok = opt_mand_ord(List,0);
validate_tokens([],fraction) -> ok;
validate_tokens(List,fraction) ->
   validate_tokens(lists:reverse(List),integer);
validate_tokens(List,subpicture) ->
   true = length([ok||decimal_separator<-List]) =< 1,
   true = length([ok||{percent,_}<-List]) =< 1,
   true = length([ok||{per_mille,_}<-List]) =< 1,
   true = length([ok||{N,_}<-List, N == per_mille orelse N == percent orelse N == exponent]) =< 1,
   ok   = nest_passive(List),
   ok.

opt_mand_ord([],_) -> ok;
opt_mand_ord([optional_digit|T],0) ->
   opt_mand_ord(T,0);
opt_mand_ord([optional_digit|_],1) ->
   ?err('FODF1310');
opt_mand_ord([digit|T],0) ->
   opt_mand_ord(T,1);
opt_mand_ord([_|T],N) ->
   opt_mand_ord(T,N).

  

nest_passive([]) -> ok;
nest_passive([_,{passive,_},{passive,_}|T]) ->
   nest_passive(T);
nest_passive([{passive,_},{passive,_}|T]) ->
   nest_passive(T);
nest_passive([_,{passive,_},_|_]) ->
   ?err('FODF1310');
nest_passive([grouping_separator,grouping_separator|_]) ->
   ?err('FODF1310');
nest_passive([grouping_separator,decimal_separator|_]) ->
   ?err('FODF1310');
nest_passive([decimal_separator,grouping_separator|_]) ->
   ?err('FODF1310');
nest_passive([_|T]) ->
   nest_passive(T).


ensure_exp([]) -> [];
ensure_exp([A1,{exponent,E},A2|T]) when is_atom(A1), is_atom(A2) ->
   [A1,{exponent,E},A2|ensure_exp(T)];
ensure_exp([{exponent,E}|T]) ->
   [{passive,E}|ensure_exp(T)];
ensure_exp([H|T]) ->
   [H|ensure_exp(T)].

split_with(List,Atom) ->
   F = fun(A) when A == Atom ->
             false;
          ({A,_}) when A == Atom ->
             false;
          (_) ->
             true
       end,
   {L1,L2} = lists:splitwith(F, List),
   if L2 == [] ->
         {L1,L2};
      true ->
         case lists:member(Atom, tl(L2)) of
            true ->
               {L1,tl(L2),[]};
            _ ->
               {L1,tl(L2)}
         end
   end.

exponent_integer_fractional(Tokens) ->
   _ = validate_tokens(Tokens,subpicture),
   {Mantissa, Exponent} = split_with(Tokens, exponent),
   _ = validate_tokens(Mantissa,mantissa),
   _ = validate_tokens(Exponent,exponent),
   {Integer, Fraction} = case split_with(Mantissa, decimal_separator) of
                            {Val1,[]} ->
                               {Val1,passive_tail(Val1)};
                            O ->
                               O
                          end,
   _ = validate_tokens(Integer,integer),
   _ = validate_tokens(Fraction,fraction),
   {Exponent,Integer, Fraction}.

passive_tail(Tokens) ->
   Rev = lists:reverse(Tokens),
   Passive = lists:takewhile(fun({_,_}) ->
                                   true;
                                (_) ->
                                   false
                             end, Rev),
   lists:reverse(Passive).

passive_head(Tokens) ->
   lists:takewhile(fun({minus,_}) ->
                         false;
                      ({_,_}) ->
                         true;
                      (_) ->
                         false
                   end, Tokens).

% {irreg,IntegerList} | {regular,Integer}
get_grouping_positions(Tokens) ->
   Rev = lists:reverse(Tokens),
   Locs = char_locs(Rev,grouping_separator),
   case Locs of
      [] ->
         {irreg,[]};
      _ ->
         Hd = hd(Locs),
         Even = lists:all(fun(N) ->
                                N rem Hd == 0
                          end, tl(Locs)),
         NotOdd = (length(Tokens) - length(Locs)) =< (lists:last(Locs) + Hd),
         if Even andalso NotOdd ->
               {regular, Hd};
            true ->
               {irreg,Locs}
         end
   end.

mandatory_length(Tokens) ->
   length([ok || digit <- Tokens]).

optional_length(Tokens) ->
   length([ok || optional_digit <- Tokens]).

picture_string_variable_map(SubPicture, PosNeg) ->
   {Exponent,Integer, Fraction} = exponent_integer_fractional(SubPicture),
   P = #{integer_part_grouping_positions     => get_grouping_positions(Integer),
         minimum_integer_part_size           => mandatory_length(Integer),
         scaling_factor                      => mandatory_length(Integer),
         prefix                              => if PosNeg == positive ->
                                                      passive_head(SubPicture);
                                                   true ->
                                                      [minus|passive_head(SubPicture)]
                                                end,
         fractional_part_grouping_positions  => char_locs(Fraction,grouping_separator),
         minimum_fractional_part_size        => mandatory_length(Fraction),
         maximum_fractional_part_size        => mandatory_length(Fraction) + optional_length(Fraction),
         suffix                              => passive_tail(SubPicture)     
        },
   P1 = case maps:get(minimum_integer_part_size,P) == 0 andalso 
                maps:get(maximum_fractional_part_size,P) == 0 of
            true when Exponent =/= [] ->
               P#{minimum_fractional_part_size => 1,
                  maximum_fractional_part_size => 1};
            true ->
               P#{minimum_integer_part_size => 1};
            _ ->
               P
         end,
   P2 = case Exponent =/= [] andalso
              maps:get(minimum_integer_part_size,P1) == 0 andalso
              optional_length(Integer) > 0 of
           true ->
              P1#{minimum_integer_part_size => 1};
           _ ->
              P1
        end,
   P3 =  case maps:get(minimum_integer_part_size,P2) == 0 andalso 
                maps:get(minimum_fractional_part_size,P2) == 0 of
            true ->
               P2#{minimum_fractional_part_size => 1};
            _ ->
               P2
         end,
   P3#{minimum_exponent_size => mandatory_length(Exponent)}.

build_format(SubPicture,
             #{integer_part_grouping_positions     := IntGrpPos,
               minimum_integer_part_size           := MinIntSize,
               scaling_factor                      := ScalingFactor,
               prefix                              := Prefix,
               fractional_part_grouping_positions  := FractGrpPos,
               minimum_fractional_part_size        := MinFractSize,
               maximum_fractional_part_size        := MaxFractSize,
               suffix                              := Suffix,
               minimum_exponent_size               := MinExpSize},
             #{decimal   := Decimal,
               grouping  := Grouping,
               infinity  := Infinity,
               minus     := Minus,
               nan       := Nan,
               %percent   := Percent,
               %per_mille := PerMille,
               zero      := Zero,
               %digit     := Digit,
               %pattern   := Pattern,
               exponent  := Exponent}) ->
   S = fun({_,C}) ->
             C;
          (minus) ->
             hd(Minus)
       end,
   PrefStr = lists:map(S, Prefix),
   SuffStr = lists:map(S, Suffix),
   MinuStr = [C || {minus,C} <- SubPicture],
   
   Fun = fun([],_) ->
               Nan;
            (nan,_) ->
               Nan;
            (infinity,_) ->
               PrefStr ++ Infinity ++ SuffStr;
            (neg_infinity,_) ->
               PrefStr ++ MinuStr ++ Infinity ++ SuffStr;
            (Num,_Type) ->
               IsPerc = [ok || {percent,_} <- SubPicture] =/= [],
               IsPerMille = [ok || {per_mille,_} <- SubPicture] =/= [],
               AdjNum = try
                           if IsPerc ->
                                 xqerl_numeric:multiply(Num, 100);
                              IsPerMille ->
                                 xqerl_numeric:multiply(Num, 1000);
                              true ->
                                 Num
                           end
                        catch _:_ ->
                           infinity
                        end,
               if AdjNum == infinity ->
                     PrefStr ++ Infinity ++ SuffStr;
                  AdjNum == neg_infinity ->
                     PrefStr ++ Minus ++ Infinity ++ SuffStr;
                  true -> % not overflowed
                     {Mant,Exp} = scale_number(AdjNum, MinExpSize, ScalingFactor),
                     RoundedMant = xqerl_numeric:round_half_even(Mant, MaxFractSize),
                     AbsRounded = xqerl_numeric:abs_val(RoundedMant),
                     AbsString = xqerl_numeric:string(AbsRounded),
                     ConvString = convert_dec_string(AbsString,Decimal,Zero),
                     PadL = pad_char_from_dec(lists:reverse(ConvString), Zero, Decimal, MinIntSize),
                     PadR = pad_char_from_dec(lists:reverse(PadL), Zero, Decimal, MinFractSize),
                     Grouped = insert_groupings(PadR,Decimal,IntGrpPos,FractGrpPos,Grouping),
                     if Exp == [] ->
                           MinuStr ++ PrefStr ++ Grouped ++ SuffStr;
                        true ->
                           Rev = lists:reverse(integer_to_list(abs(Exp))),
                           ExpStr = lists:reverse(pad_char_from_dec(Rev,hd(Zero),Decimal,MinExpSize,1)),
                           ExpStr1 = adj_to_zero(ExpStr,Zero,Decimal),
                           MinuStr ++ PrefStr ++ Grouped ++ Exponent ++ if Exp < 0 ->
                                                                   Minus;
                                                                true ->
                                                                   []
                                                             end ++
                             ExpStr1 ++ SuffStr
                     end
               end
         end,
   Fun.

insert_groupings(String,Dec,Left,Right,Char) ->
   [L,R] = case string:split(String, Dec) of
              [L1,R1] ->
                 [L1,R1];
              [L1] ->
                 [L1,[]]
           end,
   LPos = case Left of
             {irreg,LList} ->
                LList;
             {_,Int} ->
                Amt = length(L) div Int,
                if Amt == 0 ->
                      [];
                   true ->
                      lists:map(fun(N) -> N * Int end, lists:seq(1, Amt))
                end
          end,
   NewL = lists:reverse(insert_char(lists:reverse(L),LPos,Char,1)),
   NewR = insert_char(R,Right,Char,1),
   if NewR == [] ->
         NewL;
      true ->
         NewL ++ Dec ++ NewR
   end.


convert_dec_string(AbsString0,[Decimal],[Zero]) ->
   AbsString = case AbsString0 of
                  "0" ->
                     ".";
                  _ ->
                     AbsString0
               end,
   LTrim = trim_char(AbsString, $0),
   RTrim = case lists:member(Decimal, LTrim) of
              true ->
                 lists:reverse(trim_char(lists:reverse(LTrim), $0));
              _ ->
                 LTrim
           end,
   RTrim2 = case lists:member($., RTrim) of
               true ->
                  RTrim;
               _ ->
                  RTrim ++ "."
            end,
   adj_to_zero(RTrim2,[Zero],[Decimal]).

adj_to_zero(Str,[Zero],[Decimal]) ->
   NewZero = zero_base_by_family(Zero),
   Adj = NewZero - $0,
   lists:map(fun($.) ->
                   Decimal;
                (I) ->
                   I + Adj
             end, Str).


trim_char([H|T],C) when H =:= C ->
   trim_char(T,C);
trim_char(T,_C) ->
   T.


insert_char([],_,_Char,_Pos) -> [];
insert_char([H|T],[],_Char,_Pos) -> [H|insert_char(T,[],[],[])];
insert_char([H|T],[HPos|TPos],[Char],Pos) when HPos == Pos, length(T) > 0 ->
   [H,Char|insert_char(T,TPos,[Char],Pos+1)];
insert_char([H|T],[HPos|TPos],Char,Pos) ->
   [H|insert_char(T,[HPos|TPos],Char,Pos+1)].
   

% pads to the right
pad_char_from_dec(Str,[Zero],[Dec],Len) ->
   pad_char_from_dec(Str,Zero,Dec,Len,0).

pad_char_from_dec([],Zero,Dec,Len,Pos) when Pos =< Len, Pos =/= 0 ->
   [Zero|pad_char_from_dec([],Zero,Dec,Len,Pos+1)];
pad_char_from_dec([],_Zero,_Dec,_Len,_Pos) -> [];
pad_char_from_dec([H|T],Zero,Dec,Len,0) when H == Dec ->
   [H|pad_char_from_dec(T,Zero,Dec,Len,1)];
pad_char_from_dec([H|T],Zero,Dec,Len,0) ->
   [H|pad_char_from_dec(T,Zero,Dec,Len,0)];
pad_char_from_dec([H|T],Zero,Dec,Len,Pos) ->
   [H|pad_char_from_dec(T,Zero,Dec,Len,Pos+1)].


scale_number(Num, 0, _ScalingFactor) when is_float(Num) ->
   {xqerl_numeric:float_to_decimal(Num),[]};
scale_number(Num, 0, _ScalingFactor) ->
   {xqerl_numeric:decimal(Num),[]};
scale_number(AdjNum, _MinExpSize, ScalingFactor) ->
   Max = trunc(math:pow(10, ScalingFactor)),
   Min = trunc(math:pow(10, ScalingFactor - 1)),
   Num = if is_float(AdjNum) ->
               xqerl_numeric:float_to_decimal(AdjNum);
            true ->
               xqerl_numeric:decimal(AdjNum)
         end,
   shift(xqerl_numeric:abs_val(Num),Min,Max,0).

shift(Dec,Min,Max,A) ->
   case xqerl_numeric:greater_than_equal(Dec, Max) of
      true ->
         shift(xqerl_numeric:divide(Dec,10),Min,Max,A+1);
      _ ->
         case xqerl_numeric:less_than(Dec, Min) of
            true ->
               case xqerl_numeric:equal(Dec, 0) of
                  true ->
                     {Dec,A};
                  _ ->
                     shift(xqerl_numeric:multiply(Dec,10),Min,Max,A-1)
               end;
            _ ->
               case xqerl_numeric:less_than(xqerl_numeric:multiply(Dec,10), Max) of
                  true ->
                     shift(xqerl_numeric:multiply(Dec,10),Min,Max,A-1);
                  _ ->
                     {Dec,A}
               end
         end
   end.


  


char_locs(List,Atom) ->
   char_locs(List,Atom,0,[]).
   
char_locs([],_C,_P,Acc) ->
   lists:reverse(Acc);
char_locs([C|T],C,P,Acc) ->
   char_locs(T,C,P,[P|Acc]);
char_locs([_|T],C,P,Acc) ->
   char_locs(T,C,P+1,Acc).

dec_format_to_map(#dec_format{ decimal   = Decimal,%".",
                               grouping  = Grouping,%",",
                               infinity  = Infinity,%"Infinity",
                               minus     = Minus,%"-",
                               nan       = Nan,%"NaN",
                               percent   = Percent,%"%",
                               per_mille = PerMille,%[2030],
                               zero      = Zero,%"0",
                               digit     = Digit,%"#",
                               pattern   = Pattern,%";",
                               exponent  = Exponent%"e"                                         
                             }) ->
   #{decimal   => Decimal,%".",
     grouping  => Grouping,%",",
     infinity  => Infinity,%"Infinity",
     minus     => Minus,%"-",
     nan       => Nan,%"NaN",
     percent   => Percent,%"%",
     per_mille => PerMille,%[2030],
     zero      => Zero,%"0",
     digit     => Digit,%"#",
     pattern   => Pattern,%";",
     exponent  => Exponent%"e"                                         
    }.

parse_picture(Int, Picture) when is_integer(Int) ->
   Sign = if Int < 0 ->
                "-";
             true ->
                []
          end,
   Int1 = abs(Int),
   {PrimaryToken, Modifier} = case string:split(Picture,";",trailing) of
                                 [H,T] ->
                                    {H,T};
                                 [H] ->
                                    {H,[]}
                              end,
   PatternType = pattern_type(PrimaryToken),
   ModifierType = modifier_type(Modifier),
   %?dbg("Picture",Picture),
   %?dbg("PrimaryToken",PrimaryToken),
   %?dbg("Modifier",Modifier),
   %?dbg("PatternType",PatternType),
   %?dbg("ModifierType",ModifierType),
   if PatternType == decimal_digit_pattern, ModifierType == cardinal ->
         Str = integer_to_list(Int1),
         Format = parse_decimal_digit_pattern(PrimaryToken),
         Sign ++ format_decimal(Str, Format);
      PatternType == decimal_digit_pattern ->
         Format = parse_decimal_digit_pattern(PrimaryToken),
         Sign ++ format_integer(Int1, Format, ModifierType);
      PatternType == roman_upper ->
         Sign ++int_to_upper_roman(Int1);
      PatternType == roman_lower ->
         Sign ++ int_to_lower_roman(Int1);
      PatternType == alpha_lower ->
         Sign ++ int_to_alpha(Int1, lower);
      PatternType == alpha_upper ->
         Sign ++ int_to_alpha(Int1, upper);
      PatternType == words_lower, ModifierType == cardinal;
      PatternType == words_lower, ModifierType == alpha  ->
         Sign ++ string:lowercase(num_to_text(Int1, en));
      PatternType == words_lower ->
         Sign ++ string:lowercase(num_to_text(Int1, en, ModifierType));
      PatternType == words_upper, ModifierType == cardinal;
      PatternType == words_upper, ModifierType == alpha  ->
         Sign ++ string:uppercase(num_to_text(Int1, en));
      PatternType == words_upper ->
         Sign ++ string:uppercase(num_to_text(Int1, en, ModifierType));
      PatternType == words_title, ModifierType == cardinal;
      PatternType == words_title, ModifierType == alpha -> % as-is is titlecase
         Sign ++ num_to_text(Int1, en);
      PatternType == words_title -> % as-is is titlecase
         Sign ++ num_to_text(Int1, en, ModifierType);
      PatternType == one, ModifierType == cardinal ->
         Str = integer_to_list(Int1),
         Format = case is_nondecimal_digit(PrimaryToken) of
                     true ->
                        parse_decimal_digit_pattern(PrimaryToken);
                     _ ->
                        parse_decimal_digit_pattern("1")
                  end,
         Sign ++ format_decimal(Str, Format);
      PatternType == one ->
         Format = case is_nondecimal_digit(PrimaryToken) of
                     true ->
                        parse_decimal_digit_pattern(PrimaryToken);
                     _ ->
                        parse_decimal_digit_pattern("1")
                  end,
         Sign ++ format_integer(Int1, Format, ModifierType);
      true ->
         []
   end;

parse_picture(#xqAtomicValue{type = Type,value = #xsDateTime{} = Date}, Picture) ->
%% 9.8.4.1 The picture string
%% 
%% The picture consists of a sequence of variable markers and literal substrings. 
%% A substring enclosed in square brackets is interpreted as a variable marker; 
%% substrings not enclosed in square brackets are taken as literal substrings. 
%% The literal substrings are optional and if present are rendered unchanged, including any whitespace. 
%% If an opening or closing square bracket is required within a literal substring, it must be doubled. 
%% The variable markers are replaced in the result by strings representing aspects of the date and/or time to be formatted. 
%% These are described in detail below.
%% 
%% A variable marker consists of a component specifier followed optionally by one or two presentation 
%% modifiers and/or optionally by a width modifier. Whitespace within a variable marker is ignored.
%% 
%% The variable marker may be separated into its components by applying the following rules:
%% 
%% The component specifier is always present and is always a single letter.
%% The width modifier may be recognized by the presence of a comma.
%% The substring between the component specifier and the comma (if present) or 
%% the end of the string (if there is no comma) contains the first and second presentation modifiers, 
%% both of which are optional. If this substring contains a single character, this is interpreted as the 
%% first presentation modifier. If it contains more than one character, the last character is examined: 
%% if it is valid as a second presentation modifier then it is treated as such, and the preceding part of the 
%% substring constitutes the first presentation modifier. Otherwise, the second presentation modifier is presumed 
%% absent and the whole substring is interpreted as the first presentation modifier.
%% The component specifier indicates the component of the date or time that is required, and takes the following values:
%% 
%% Specifier   Meaning  Default Presentation Modifier
%% Y  year (absolute value)   1
%% M  month in year  1
%% D  day in month   1
%% d  day in year 1
%% F  day of week n
%% W  week in year   1
%% w  week in month  1
%% H  hour in day (24 hours)  1
%% h  hour in half-day (12 hours)   1
%% P  am/pm marker   n
%% m  minute in hour 01
%% s  second in minute  01
%% f  fractional seconds   1
%% Z  timezone 01:01
%% z  timezone (same as Z, but modified where appropriate to include a prefix as a time offset using GMT, for example GMT+1 or GMT-05:00. For this component there is a fixed prefix of GMT, or a localized variation thereof for the chosen language, and the remainder of the value is formatted as for specifier Z.  01:01
%% C  calendar: the name or abbreviation of a calendar name n
%% E  era: the name of a baseline for the numbering of years, for example the reign of a monarch   n
%% A dynamic error is reported [err:FOFD1340] if the syntax of the picture is incorrect.
%% 
%% A dynamic error is reported [err:FOFD1350] if a component specifier within the picture refers to components that are not available in the given type of $value, for example if the picture supplied to the fn:format-time refers to the year, month, or day component.
%% 
%% It is not an error to include a timezone component when the supplied value has no timezone. In these circumstances the timezone component will be ignored.
   Pattern = parse_datetime_pattern(Picture),
   %?dbg("Pattern",Pattern),
   S = lists:map(fun({marker,M}) ->
                       format_datetime_part(Date, Type, M);
                    ({literal,L}) ->
                       L
                 end, Pattern),
   %?dbg("S",S),
   lists:flatten(S).

modifier_type([$c|T]) -> ok = check_mod_tail(T), cardinal;
modifier_type([$o|T]) -> ok = check_mod_tail(T), ordinal;
modifier_type([$a|T]) -> ok = check_mod_tail(T), alpha;
modifier_type([$t|T]) -> ok = check_mod_tail(T), alpha; %traditional; alpha for now
modifier_type(_)      -> cardinal.

check_mod_tail([$a|T]) -> check_mod_tail(T) ;
check_mod_tail([$t|T]) -> check_mod_tail(T) ;
check_mod_tail([$(|T]) -> 
   Ending = lists:dropwhile(fun(C) ->
                                  C =/= $)
                            end, T),
   if Ending == [] ->
         ?err('FODF1310');
      true ->
         check_mod_tail(tl(Ending))
   end;
check_mod_tail([]) -> ok;
check_mod_tail(_) -> ?err('FODF1310').

pattern_type([])  -> xqerl_error:error('FODF1310');
pattern_type("A") -> alpha_upper;%
pattern_type("a") -> alpha_lower;%
pattern_type("I") -> roman_upper;%
pattern_type("i") -> roman_lower;%
pattern_type("W") -> words_upper;%
pattern_type("w") -> words_lower;%
pattern_type("Ww") -> words_title;%
pattern_type("N") -> name_upper;
pattern_type("n") -> name_lower;
pattern_type("Nn") -> name_title;
pattern_type(Token) ->
   case contains_digit(Token) of
      true ->
         _ = is_valid_pattern(Token),
         decimal_digit_pattern;
      _ ->
         one
   end.

%% If the primary format token contains at least one Unicode digit then it is taken as a decimal digit pattern, 
%% and in this case it must match the regular expression ^((\p{Nd}|#|[^\p{N}\p{L}])+?)$. 
%% If it contains a digit but does not match this pattern, a dynamic error is raised [err:FODF1310].
is_valid_pattern(Token) ->
   Pat = "^((\\p{Nd}|#|[^\\p{N}\\p{L}])+?)$",
   {ok,RE} = re:compile(Pat, [unicode, ucp]),
   case re:run(Token, RE) of
      nomatch ->
         xqerl_error:error('FODF1310');
      {match,_} ->
         true
   end.

contains_digit(Token) ->
   Pat = "\\p{Nd}",
   {ok,RE} = re:compile(Pat, [unicode, ucp]),
   is_match(Token, RE).

is_nondecimal_digit(Token) ->
   Pat = "\\p{N}",
   {ok,RE} = re:compile(Pat, [unicode, ucp]),
   is_match(Token, RE).

parse_datetime_pattern(Pattern) ->
   P = parse_datetime_pattern1(Pattern, {literal, []}, []),
   lists:reverse(P).

parse_datetime_pattern1([], {_, []}, Acc) ->
   Acc;
parse_datetime_pattern1([], {Type, TmpAcc}, Acc) ->
   G = lists:reverse(TmpAcc),
   [{Type,G}|Acc];
parse_datetime_pattern1("[[" ++ Pattern, {literal, TmpAcc}, Acc) ->
   parse_datetime_pattern1(Pattern, {literal, [$[|TmpAcc]}, Acc);
parse_datetime_pattern1("[" ++ Pattern, {literal, TmpAcc}, Acc) ->
   if TmpAcc == [] ->
         parse_datetime_pattern1(Pattern, {marker, []}, Acc);
      true ->
         G = lists:reverse(TmpAcc),
         parse_datetime_pattern1(Pattern, {marker, []}, [{literal,G}|Acc])
   end;
parse_datetime_pattern1("]]" ++ Pattern, {literal, TmpAcc}, Acc) ->
   parse_datetime_pattern1(Pattern, {literal, [$]|TmpAcc]}, Acc);
parse_datetime_pattern1([H|Pattern], {literal, TmpAcc}, Acc) ->
   parse_datetime_pattern1(Pattern, {literal, [H|TmpAcc]}, Acc);

parse_datetime_pattern1("]" ++ Pattern, {marker, TmpAcc}, Acc) ->
   Marker = lists:reverse(TmpAcc),
   M = parse_datetime_marker(Marker),
   parse_datetime_pattern1(Pattern, {literal, []}, [{marker,M}|Acc]);
parse_datetime_pattern1([H|Pattern], {marker, TmpAcc}, Acc) when H == 9;
                                                                 H == 10;
                                                                 H == 13;
                                                                 H == 32 ->
   parse_datetime_pattern1(Pattern, {marker, TmpAcc}, Acc);
parse_datetime_pattern1([H|Pattern], {marker, TmpAcc}, Acc) ->
   parse_datetime_pattern1(Pattern, {marker, [H|TmpAcc]}, Acc).

parse_datetime_marker([$Y|Rest]) -> {year,      parse_datetime_modifiers(Rest,"1")};
parse_datetime_marker([$M|Rest]) -> {month,     parse_datetime_modifiers(Rest,"1")};
parse_datetime_marker([$D|Rest]) -> {day,       parse_datetime_modifiers(Rest,"1")};
parse_datetime_marker([$d|Rest]) -> {doy,       parse_datetime_modifiers(Rest,"1")};
parse_datetime_marker([$F|Rest]) -> {dow,       parse_datetime_modifiers(Rest,"n")};
parse_datetime_marker([$W|Rest]) -> {woy,       parse_datetime_modifiers(Rest,"1")};
parse_datetime_marker([$w|Rest]) -> {wom,       parse_datetime_modifiers(Rest,"1")};
parse_datetime_marker([$H|Rest]) -> {hour24,    parse_datetime_modifiers(Rest,"1")};
parse_datetime_marker([$h|Rest]) -> {hour12,    parse_datetime_modifiers(Rest,"1")};
parse_datetime_marker([$P|Rest]) -> {ampm,      parse_datetime_modifiers(Rest,"n")};
parse_datetime_marker([$m|Rest]) -> {minute,    parse_datetime_modifiers(Rest,"01")};
parse_datetime_marker([$s|Rest]) -> {secint,    parse_datetime_modifiers(Rest,"01")};
parse_datetime_marker([$f|Rest]) -> {secfract,  parse_datetime_modifiers(Rest,"1")};
parse_datetime_marker([$Z|Rest]) -> {tz,        parse_datetime_modifiers(Rest,"01:01")};
parse_datetime_marker([$z|Rest]) -> {tzpre,     parse_datetime_modifiers(Rest,"01:01")};
parse_datetime_marker([$C|Rest]) -> {calendar,  parse_datetime_modifiers(Rest,"n")};
parse_datetime_marker([$E|Rest]) -> {era,       parse_datetime_modifiers(Rest,"n")};
parse_datetime_marker(_) ->
   xqerl_error:error('FOFD1340').

parse_datetime_modifiers(Mods,Default) ->
   case string:split(Mods,[$,],trailing) of
      [[]] ->
         {Default,[],{none, none}};
      [PresMods] ->
         {O,T} = parse_datetime_presentation_modifiers(PresMods),
         {O,T,{none, none}};
      [[],Width] ->
         {Default,[],parse_width_modifier(Width)};
      [PresMods,[]] ->
         {O,T} = parse_datetime_presentation_modifiers(PresMods),
         {O,T,{none, none}};
      [PresMods,Width] ->
         {O,T} = parse_datetime_presentation_modifiers(PresMods),
         {O,T,parse_width_modifier(Width)}
   end.

parse_datetime_presentation_modifiers(PresMods) ->
   Len = length(PresMods),
   if Len == 1 ->
         {PresMods,[]};
      true ->
         Last = lists:last(PresMods),
         if Last == $a;
            Last == $t;
            Last == $c;
            Last == $o ->
               First = lists:sublist(PresMods, Len - 1),
               {First, [Last]};
            true ->
               {PresMods,[]}
         end
   end.

parse_width_modifier(WMod) ->
   case string:split(WMod, [$-]) of
      [[],_] -> xqerl_error:error('FOFD1340');
      [_,[]] -> xqerl_error:error('FOFD1340');
      ["*","*"] ->
         {none, none};
      ["*",Max] ->
         Max1 = list_to_integer(Max),
         if Max1 == 0 -> xqerl_error:error('FOFD1340');
            true ->
               {none, Max1}
         end;
      [Min,"*"] ->
         Min1 = list_to_integer(Min),
         if Min1 == 0 -> xqerl_error:error('FOFD1340');
            true ->
               {Min1, none}
         end;
      [Min,Max] ->
         Min1 = list_to_integer(Min),
         Max1 = list_to_integer(Max),
         if Max1 < Min1;
            Min1 == 0;
            Max1 == 0 -> xqerl_error:error('FOFD1340');
            true ->
               {Min1, Max1}
         end;
      ["*"] ->
         {none, none};
      [Min] ->
         Min1 = list_to_integer(Min),
         if Min1 == 0 -> xqerl_error:error('FOFD1340');
            true ->
               {Min1, none}
         end
   end.
     


%% Y  year (absolute value)   1
%% M  month in year  1
%% D  day in month   1
%% d  day in year 1
%% F  day of week n
%% W  week in year   1
%% w  week in month  1
%% H  hour in day (24 hours)  1
%% h  hour in half-day (12 hours)   1
%% P  am/pm marker   n
%% m  minute in hour 01
%% s  second in minute  01
%% f  fractional seconds   1
%% Z  timezone 01:01
%% z  timezone (same as Z, but modified where appropriate to include a prefix as a time offset using GMT, for example GMT+1 or GMT-05:00. For this component there is a fixed prefix of GMT, or a localized variation thereof for the chosen language, and the remainder of the value is formatted as for specifier Z.  01:01
%% C  calendar: the name or abbreviation of a calendar name n
%% E  era: the name of a baseline for the numbering of years, for example the reign of a monarch   n

% integer parts (M D d F W w H h m s)
format_datetime_part(#xsDateTime{month = X}, Type, {month, _} = Part) -> 
   if Type == 'xs:time' -> xqerl_error:error('FOFD1350');
      true -> format_datetime_part_as_int(X,Part)
   end;
format_datetime_part(#xsDateTime{day = X}, Type, {day, _} = Part) -> 
   if Type == 'xs:time' -> xqerl_error:error('FOFD1350');
      true -> format_datetime_part_as_int(X,Part)
   end;
format_datetime_part(#xsDateTime{year = Y,month = M, day = D}, Type, {doy, _} = Part) ->
   if Type == 'xs:time' -> xqerl_error:error('FOFD1350');
      true -> 
         MonDays = lists:foldl(fun(Mo, Acc) ->
                                     if M == Mo ->
                                          Acc;
                                        true ->
                                           Acc + calendar:last_day_of_the_month(Y, Mo)
                                     end
                               end, 0, lists:seq(1, M)),
         X = MonDays + D,
         format_datetime_part_as_int(X,Part)
   end;
format_datetime_part(#xsDateTime{year = Y,month = M, day = D}, Type, {dow, _} = Part) ->
   if Type == 'xs:time' -> xqerl_error:error('FOFD1350');
      true -> 
         X = calendar:day_of_the_week(Y, M, D),
         format_datetime_part_as_int(X,Part)
   end;
format_datetime_part(#xsDateTime{year = Y,month = M, day = D}, Type, {woy, _} = Part) ->
   if Type == 'xs:time' -> xqerl_error:error('FOFD1350');
      true -> 
         {_IY,X} = calendar:iso_week_number({Y, M, D}),
         format_datetime_part_as_int(X,Part)
   end;
format_datetime_part(#xsDateTime{year = Y,month = M, day = D}, Type, {wom, _} = Part) ->
   if Type == 'xs:time' -> xqerl_error:error('FOFD1350');
      true -> 
         % count of Thursdays in a month
         Date = {Y,M,D},
         FDom = calendar:day_of_the_week(Y, M, 1),
         FThurs = if FDom =< 4 ->
                        {Y, M, 1 + 4 - FDom};
                     true ->
                        {Y, M, 1 + 11 - FDom}
                  end,
         %?dbg("FThurs",FThurs),
         GDate = calendar:date_to_gregorian_days(Date),
         GFThurs = calendar:date_to_gregorian_days(FThurs),
         GFMon = GFThurs - 3,
         if GDate >= GFMon -> % in this month
               W = ((GDate - GFMon) div 7) + 1,
               format_datetime_part_as_int(W,Part);
            true ->
               GLMon = GFMon - 7,
               {PY,PM,_} = calendar:gregorian_days_to_date(GLMon),
               PFDom = calendar:day_of_the_week(PY, PM, 1),
               PFThurs = if PFDom =< 4 ->
                              {PY, PM, 1 + 4 - PFDom};
                           true ->
                              {PY, PM, 1 + 11 - PFDom}
                        end,
               PGFThurs = calendar:date_to_gregorian_days(PFThurs),
               PGFMon = PGFThurs - 3,
               GDiff = GDate - PGFMon - 1,
               W = if GDiff >= 28 ->
                         5;
                      true ->
                         4
                   end,
               %?dbg("Date",Date),
               %?dbg("PFDom",PFDom),
               %?dbg("PFThurs",PFThurs),
               %?dbg("PGFThurs",PGFThurs),
               %?dbg("PGFMon",PGFMon),
               %?dbg("PGFMon",calendar:gregorian_days_to_date(PGFMon)),
               %?dbg("GDate",GDate),
               %?dbg("W",W),
               format_datetime_part_as_int(W,Part)
         end
   end;
format_datetime_part(#xsDateTime{hour = X}, Type, {hour24, _} = Part) ->
   if Type == 'xs:date' -> xqerl_error:error('FOFD1350');
      true -> 
         format_datetime_part_as_int(X,Part)
   end;
format_datetime_part(#xsDateTime{hour = H}, Type, {hour12, _} = Part) ->
   if Type == 'xs:date' -> xqerl_error:error('FOFD1350');
      true -> 
         X = case H rem 12 of 0 -> 12; R -> R end,
         format_datetime_part_as_int(X,Part)
   end;
format_datetime_part(#xsDateTime{minute = X}, Type, {minute, _} = Part) ->
   if Type == 'xs:date' -> xqerl_error:error('FOFD1350');
      true -> 
         format_datetime_part_as_int(X,Part)
   end;
format_datetime_part(#xsDateTime{second = S}, Type, {secint, _} = Part) -> 
   if Type == 'xs:date' -> xqerl_error:error('FOFD1350');
      true -> 
         X = xqerl_numeric:truncate(S),
         format_datetime_part_as_int(X,Part)
   end;

format_datetime_part(#xsDateTime{year = Y}, Type, {year, {First,_Second,{_MinLen,MaxLen}}} = Part) ->
   if Type == 'xs:time' -> xqerl_error:error('FOFD1350');
      true ->
         N = if MaxLen =/= none ->
                  MaxLen;
                First == [] ->
                   length(integer_to_list(Y));
                true ->
                   case pattern_type(First) of
                      decimal_digit_pattern ->
                         Format = parse_decimal_digit_pattern(First),
                         %?dbg("Format",Format),
                         W = length(Format) - length([S || {separator, _} = S <- Format]),
                         if W >= 2 ->
                               W;
                            true ->
                               length(integer_to_list(Y))
                         end;
                      _ ->
                         length(integer_to_list(Y))
                   end
             end,
         %?dbg("N",{?LINE,N}),
         X = Y rem trunc(math:pow(10, N)),
         %?dbg("First",{X,Part}),
         format_datetime_part_as_int(X,Part)
   end;

format_datetime_part(#xsDateTime{second = S}, Type, {secfract, Part}) -> 
   if Type == 'xs:date' -> xqerl_error:error('FOFD1350');
      true -> 
         X = xqerl_numeric:subtract(S, xqerl_numeric:truncate(S)),
         format_datetime_part_as_fract(X,Part)
   end;

format_datetime_part(#xsDateTime{hour = H}, Type, {ampm, {Primary,_,_}}) ->
   if Type == 'xs:date' -> xqerl_error:error('FOFD1350');
      true ->
         P = pattern_type(Primary),
         T = if H < 12 -> "am"; true -> "pm" end,
         case P of
            name_lower ->
               T;
            name_upper ->
               string:uppercase(T);
            name_title ->
               string:titlecase(T);
            _ ->
               T
         end
   end;

format_datetime_part(#xsDateTime{}, Type, {calendar, _Part}) -> 
   if Type == 'xs:time' -> xqerl_error:error('FOFD1350');
      true -> 
         ""
   end;
format_datetime_part(#xsDateTime{sign = Sign, year = Year}, Type, {era, _} = Part) -> 
   if Type == 'xs:time' -> xqerl_error:error('FOFD1350');
      true ->
         X = if Sign == '-' ->
                   -Year;
                true ->
                   Year
             end,
         format_datetime_part_as_int(X,Part)
   end;

format_datetime_part(Dt, Type, {tzpre, Part}) ->
   "GMT" ++ format_datetime_part(Dt, Type, {tz, Part});

format_datetime_part(#xsDateTime{offset = Offset}, _Type, {tz, {First,Second,{_,_}}}) ->
   %?dbg("First", First),
   case Offset of
      #off_set{sign = S, hour = H, min = M} ->
         Sign = if S == '-' -> "-"; true -> "+" end, 
         Pat = "^\\p{Nd}(\\p{Nd})?$",
         {ok,RE} = re:compile(Pat, [unicode, ucp]),
         case is_match(First, RE) of
            true ->
               if H == 0 andalso M == 0 andalso Second == "t" -> %"traditional"
                     "Z";
                  true ->
                     O = parse_picture(H, First),
                     if M > 0 ->
                           Sign ++ O ++ ":" ++ parse_picture(M, "11");
                        true ->
                           Sign ++ O
                     end
               end;
            _ ->
               if First == "Z", H =< 12, M == 0 ->
                     % military time (Zulu) -12(Y) <0(Z)> +12(M) A = 1 Z = 0 
                     % J (Juliet) time is missing from the time zones == local time
                     Hour = if S == '-' -> -H; true -> H end,
                     zulu_zone(Hour);
                  First == "Z" ->
                     Format = parse_decimal_digit_pattern("01:01"),
                     Str = string:pad(integer_to_list(H),1,leading,[$0]) ++ string:pad(integer_to_list(M),2,leading,[$0]), 
                     Out = format_decimal(Str, Format),
                     Sign ++ Out;
                  true ->
                     Format = parse_decimal_digit_pattern(First),
                     Str = string:pad(integer_to_list(H),1,leading,[$0]) ++ string:pad(integer_to_list(M),2,leading,[$0]), 
                     Out = format_decimal(Str, Format),
                     %?dbg("Out", Out),
                     Sign ++ Out
               end
          end;
      [] ->
         if First == "Z" ->
               "J";
            true ->
               []
         end
   end;

format_datetime_part(_Date, _Type, {_Other, _Part}) -> not_ok.

format_datetime_part_as_fract(Fract,{First,_Second,{MinLen,MaxLen}}) ->
   %?dbg("Fract,{First,Second,{MinLen,MaxLen}}",{Fract,{First,_Second,{MinLen,MaxLen}}}),
   Format = lists:reverse(parse_decimal_digit_pattern(lists:reverse(First))),
   FormLen = length(Format),
   OptLen = length([S || {optional_digit} = S <- Format]),
   ManLen = length([S || {digit, _} = S <- Format]),
   Format1 = if MaxLen == none, MinLen == none, FormLen == 1 ->
                   Dif = 8 - length(Format),
                   if Dif < 1 ->
                         Format;
                      true ->
                         Format ++ lists:duplicate(Dif, {optional_digit})
                   end;
                MaxLen == none, FormLen == 1 ->
                   Dif = 8 - MinLen,
                   if Dif < 1 ->
                         Format;
                      true ->
                         Format ++ lists:duplicate(Dif, {optional_digit})
                   end;
                true ->
                   F2 = if MinLen =/= none, MinLen > ManLen ->
                              ToChange = MinLen - ManLen,
                              OptToChange = min(OptLen, ToChange),
                              ManToAdd = ToChange - OptToChange,
                              {_,C} = lists:keyfind(digit, 1, Format), % character to use
                              F1 = optional_to_mandatory(Format,OptToChange,C),
                              F1 ++ lists:duplicate(ManToAdd, {digit, C});
                           true ->
                              Format
                        end,
                     if MaxLen =/= none, MaxLen > length(F2) ->
                           % add the missing optionals
                           OptToAdd = MaxLen - length(F2),
                           F2 ++ lists:duplicate(OptToAdd, {optional_digit});
                        true ->
                           F2
                     end
             end,
   %?dbg("Format1",Format1),
   W1 = length([S || {digit, _} = S <- Format1]),
   W2 = W1 + length([S || {optional_digit} = S <- Format1]),
   Str1 = xqerl_numeric:string(Fract) -- "0.",
   %?dbg("Str1",Str1),
   SList = if is_integer(MaxLen), length(Str1) > MaxLen, W1 =< MaxLen ->
                 lists:sublist(Str1, MaxLen);
              is_integer(MinLen), length(Str1) < MinLen ->
                 lists:flatten(string:pad(Str1, MinLen, trailing, $0));
              length(Str1) < W1 ->
                 lists:flatten(string:pad(Str1, W1, trailing, $0));
              length(Str1) > W1 ->
                 lists:sublist(Str1, W2);
              true ->
                 Str1
           end,
   lists:reverse(format_decimal(lists:reverse(SList),lists:reverse(Format1))).
                         
optional_to_mandatory([],_Cnt,_ManChar) ->
   [];
optional_to_mandatory(T,0,_ManChar) ->
   T;
optional_to_mandatory([{optional_digit}|T],Cnt,ManChar) ->
   [{digit,ManChar}|optional_to_mandatory(T,Cnt-1,ManChar)];
optional_to_mandatory([H|T],Cnt,ManChar) ->
   [H|optional_to_mandatory(T,Cnt,ManChar)].

maybe_truncate(String,none,none) ->
   String;
maybe_truncate(String,none,Max) when is_integer(Max) ->
   string:slice(String, 0, Max);
maybe_truncate(String,Min,none) when is_integer(Min) ->
   string:pad(String, Min, trailing);
maybe_truncate(String,Min,Max) when is_integer(Min),is_integer(Max) ->
   string:pad(string:slice(String, 0, Max), Min, trailing).


% Second variable has the modifiers a = alpha, t = traditional, c = cardinal, o = ordinal
format_datetime_part_as_int(Int1,{Part,{PrimaryToken,Second,{MinLen,MaxLen}}}) ->
   if PrimaryToken == [] ->
         integer_to_list(Int1);
      true ->
         PatternType = pattern_type(PrimaryToken),
         ModifierType = modifier_type(Second),
         %?dbg("Part",Part),
         %?dbg("PrimaryToken",PrimaryToken),
         %?dbg("Second",Second),
         %?dbg("PatternType",PatternType),
         %?dbg("ModifierType",ModifierType),
         if PatternType == decimal_digit_pattern, ModifierType == cardinal ->
               Str = integer_to_list(Int1),
               Format = parse_decimal_digit_pattern(PrimaryToken),
               {_,C} = lists:keyfind(digit, 1, Format), % character to use
               F1 = if is_integer(MinLen) andalso MinLen > length(Format) ->
                          ManToAdd = MinLen - length(Format),
                          lists:duplicate(ManToAdd, {digit,C}) ++ Format;
                       true ->
                          Format
                    end,
               F2 = if is_integer(MaxLen) andalso MaxLen > length(F1) ->
                          OptToAdd = MaxLen - length(F1),
                          lists:duplicate(OptToAdd, {optional_digit}) ++ F1;
                       true ->
                          F1
                    end,
               format_decimal(Str, F2);
            PatternType == decimal_digit_pattern ->
               Format = parse_decimal_digit_pattern(PrimaryToken),
               {_,C} = lists:keyfind(digit, 1, Format), % character to use
               F1 = if is_integer(MinLen) andalso MinLen > length(Format) ->
                          ManToAdd = MinLen - length(Format),
                          lists:duplicate(ManToAdd, {digit,C}) ++ Format;
                       true ->
                          Format
                    end,
               F2 = if is_integer(MaxLen) andalso MaxLen > length(F1) ->
                          OptToAdd = MaxLen - length(F1),
                          lists:duplicate(OptToAdd, {optional_digit}) ++ F1;
                       true ->
                          F1
                    end,
               format_integer(Int1, F2, ModifierType);
            PatternType == roman_upper ->
               V1 = int_to_upper_roman(Int1),
               maybe_truncate(V1,MinLen,none);
            PatternType == roman_lower ->
               V1 = int_to_lower_roman(Int1),
               maybe_truncate(V1,MinLen,none);
            PatternType == alpha_lower ->
               V1 = int_to_alpha(Int1, lower),
               maybe_truncate(V1,MinLen,none);
            PatternType == alpha_upper ->
               V1 = int_to_alpha(Int1, upper),
               maybe_truncate(V1,MinLen,none);
            PatternType == words_lower, ModifierType == cardinal;
            PatternType == words_lower, ModifierType == alpha  ->
               string:lowercase(num_to_text(Int1, en));
            PatternType == words_lower ->
               string:lowercase(num_to_text(Int1, en, ModifierType));
            PatternType == words_upper, ModifierType == cardinal;
            PatternType == words_upper, ModifierType == alpha  ->
               string:uppercase(num_to_text(Int1, en));
            PatternType == words_upper ->
               string:uppercase(num_to_text(Int1, en, ModifierType));
            PatternType == words_title, ModifierType == cardinal;
            PatternType == words_title, ModifierType == alpha -> % as-is is titlecase
               num_to_text(Int1, en);
            PatternType == words_title -> % as-is is titlecase
               num_to_text(Int1, en, ModifierType);
            PatternType == one, ModifierType == cardinal ->
               Str = integer_to_list(Int1),
               Format = case is_nondecimal_digit(PrimaryToken) of
                           true ->
                              parse_decimal_digit_pattern(PrimaryToken);
                           _ ->
                              parse_decimal_digit_pattern("1")
                        end,
               format_decimal(Str, Format);
            PatternType == one ->
               Format = case is_nondecimal_digit(PrimaryToken) of
                           true ->
                              parse_decimal_digit_pattern(PrimaryToken);
                           _ ->
                              parse_decimal_digit_pattern("1")
                        end,
               format_integer(Int1, Format, ModifierType);
            PatternType == name_upper -> 
               V1 = string:uppercase(integer_name(Int1,en,Part)),
               maybe_truncate(V1,MinLen,MaxLen);
            PatternType == name_lower -> 
               V1 = string:lowercase(integer_name(Int1,en,Part)),
               maybe_truncate(V1,MinLen,MaxLen);
            PatternType == name_title -> 
               V1 = integer_name(Int1,en,Part),
               maybe_truncate(V1,MinLen,MaxLen);
            true ->
               []
         end
   end.

%% A decimal-digit-pattern made up of optional-digit-signs, mandatory-digit-signs, and grouping-separator-signs.
%% The optional-digit-sign is the character "#".
%% A mandatory-digit-sign is a character in Unicode category Nd. All mandatory-digit-signs within the format 
%%    token must be from the same digit family, where a digit family is a sequence of ten consecutive characters 
%%    in Unicode category Nd, having digit values 0 through 9. Within the format token, these digits are 
%%    interchangeable: a three-digit number may thus be indicated equivalently by 000, 001, or 999.
%% a grouping-separator-sign is a non-alphanumeric character, that is a character whose 
%%    Unicode category is other than Nd, Nl, No, Lu, Ll, Lt, Lm or Lo.
parse_decimal_digit_pattern(Pattern) ->
   {ok,Dig} = re:compile("(\\p{Nd}|\\p{Nl}|\\p{No})", [unicode, ucp]),
   {ok,Sep} = re:compile("(\\p{^Nd}|\\p{^Nl}|\\p{^No}|\\p{^Lu}|\\p{^Ll}|\\p{^Lt}|\\p{^Lm}|\\p{^Lo})", [unicode, ucp]),
   parse_decimal_digit_pattern1(Pattern,{Dig,Sep},[]).

parse_decimal_digit_pattern1([],{_DP,_SP},Acc) ->
   valid_decimal_digit_pattern(lists:reverse(Acc));
parse_decimal_digit_pattern1(Str,{DP,SP},Acc) ->
   [H|T] = string:next_codepoint(Str),
   Curr = if H == $# ->
                {optional_digit};
             true ->
                case is_match([H], DP) of
                   true ->
                      {digit, H};
                   _ ->
                      case is_match([H], SP) of
                         true ->
                            {separator, H};
                         _ ->
                            xqerl_error:error('FODF1310')
                      end
                end
          end,
   parse_decimal_digit_pattern1(T,{DP,SP},[Curr|Acc]).

is_match(Str,Pat) ->
   case re:run(Str, Pat) of
      nomatch ->
         false;
      {match,_} ->
         true
   end.

%% There must be at least one mandatory-digit-sign. 
%% There may be zero or more optional-digit-signs, and (if present) these must precede all mandatory-digit-signs. 
%% There may be zero or more grouping-separator-signs. 
%% A grouping-separator-sign must not appear at the start or end of the decimal-digit-pattern, 
%% nor adjacent to another grouping-separator-sign.
valid_decimal_digit_pattern(List) ->
   HasMand = lists:keyfind(digit, 1, List) =/= false, % true == good
   DropOpt = lists:dropwhile(fun({digit, _}) ->
                                   false;
                                (_) ->
                                   true
                             end, List),
   NoBadOpt = lists:keyfind(optional_digit, 1, DropOpt) == false, % true == good
   NoBadHead = case hd(List) of
                  {separator, _} -> false;
                  _ -> true
               end,  
   NoBadLast = case lists:last(List) of
                  {separator, _} -> false;
                  _ -> true
               end,  
   NoConsSep = has_consecutive_seps(List) == false,
   SameFamily = length(lists:usort([zero_base_by_family(D) ||{digit,D} <- List])) == 1,

   if HasMand andalso NoBadOpt andalso NoBadHead andalso NoBadLast andalso NoConsSep andalso SameFamily ->
         List;
      true ->
         xqerl_error:error('FODF1310')
   end.

has_consecutive_seps([]) -> false;
has_consecutive_seps([{separator, _},{separator, _}|_T]) ->
   true;
has_consecutive_seps([_H|T]) ->
   has_consecutive_seps(T).

% return false | {width,Char}
is_separator_template(List) ->
   List1 = lists:reverse(List),
   is_separator_template(List1,0,{0,[]}).

is_separator_template([],Cnt,{P,S}) ->
   if P == 0;
      Cnt > P ->
         false;
      true ->
        {P,S}
   end;
is_separator_template([{separator, C}|T],Cnt,{P,S}) ->
   if Cnt == P andalso C == S ->
         is_separator_template(T,0,{P,S});
      P == 0 ->
         is_separator_template(T,0,{Cnt,C});
      true ->
         false
   end;
is_separator_template([_|T],Cnt,{P,S}) ->
   is_separator_template(T,Cnt + 1,{P,S}).

format_decimal({xsDecimal,_,_} = Dec, Format) ->
   Str = xqerl_numeric:string(Dec),
   format_decimal(Str, Format);
format_decimal(Str1, Format) ->
   %?dbg("Str1",Str1),
   %?dbg("Format",Format),
   Digits = lists:filter(fun({digit, _}) ->
                                 true;
                              (_) ->
                                 false
                           end, Format),
   MinLen = length(Digits),
   Str2 = lists:flatten(string:pad(Str1, MinLen, leading, $0)),
   %?dbg("Str2",Str2),
   {_,C} = hd(Digits),
   %?dbg("C",C),
   FamilyZero = zero_base_by_family(C),
   %?dbg("FamilyZero",FamilyZero),
   Str3 = [(Ch - $0 + FamilyZero) || 
           Ch <- Str2],
   %?dbg("Str3",Str3),
   case is_separator_template(Format) of
      false ->
         %?dbg("PatternType",irreg),
         format_decimal(Str3, Format, irreg);
      {Width,Char} ->
         %?dbg("PatternType",{Width,Char}),
         format_decimal(Str3, {Width,Char}, regular)
   end.



format_decimal(Str3, Format, irreg) ->
   Str4 = lists:reverse(Str3),
   Format1 = lists:reverse(Format),
   %?dbg("Str4",Str4),
   %?dbg("Format1",Format1),
   build_irregular_pattern(Str4,Format1, []);

format_decimal(Str3, {Width,Char}, regular) ->
   Str4 = lists:reverse(Str3),
   %?dbg("Str4",Str4),
   build_regular_pattern(Str4,0,{Width,Char}, []).

build_regular_pattern([],_Pos,{_Width,_Char}, Acc) ->
   Acc;
build_regular_pattern([H|T],Pos,{Width,Char}, Acc) ->
   if Pos == Width ->
         build_regular_pattern([H|T],0,{Width,Char}, [Char|Acc]);
      true ->
         build_regular_pattern(T,Pos + 1,{Width,Char}, [H|Acc])
   end.

build_irregular_pattern([],[], Acc) ->
   %?dbg("Acc",Acc),
   Acc;
build_irregular_pattern([],[{optional_digit}|_], Acc) ->
   Acc;
build_irregular_pattern([],[{separator, C}|_], Acc) ->
   [C|Acc];
build_irregular_pattern([H|T],[], Acc) ->
   build_irregular_pattern(T,[], [H|Acc]);
build_irregular_pattern([H|T],[{separator, C}|FT], Acc) ->
   build_irregular_pattern([H|T],FT, [C|Acc]);
build_irregular_pattern([H|T],[_|FT], Acc) ->
   build_irregular_pattern(T,FT, [H|Acc]).

int_to_alpha(Num, lower) ->
   Shift = $a - 1,
   lists:reverse(int_to_alpha(Num, Shift));
int_to_alpha(Num, upper) ->
   Shift = $A - 1,
   lists:reverse(int_to_alpha(Num, Shift));
int_to_alpha(0, _Shift) -> [$0];
int_to_alpha(Num, Shift) ->
   Mod = Num rem 26,
   Num1 = Num div 26,
   if Mod == 0, Num1 - 1 == 0 ->
         [(26 + Shift)];
      Mod == 0 ->
         [(26 + Shift)|int_to_alpha(Num1 - 1, Shift)];
      Mod < 26 andalso Mod > 0 andalso Num1 == 0 ->
         [(Mod + Shift)];
      Mod < 26 andalso Mod > 0 ->
         [(Mod + Shift)|int_to_alpha(Num1, Shift)];
      true ->
         int_to_alpha(Num1, Shift)
   end.

int_to_lower_roman(Num) ->
   string:lowercase(int_to_upper_roman(Num)).

int_to_upper_roman(Num) ->
   DecList = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1],
   RomList = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"], 
   int_to_upper_roman1(Num, "", DecList, RomList).
 
int_to_upper_roman1(0,   Acc, _DecList, _RomList) -> 
   Acc;
int_to_upper_roman1(Num, Acc, DecList, RomList) ->
    First = hd(DecList),
    if First =< Num ->
          int_to_upper_roman1(Num - First,
                             Acc ++ hd(RomList),
                             DecList, RomList);
       true -> 
          int_to_upper_roman1(Num, Acc, tl(DecList), tl(RomList))
    end.

%% 16#0030 - 16#0039 LATIN numerals
zero_base_by_family(C) when C >= $0,
                            C =< $9 ->
  $0;
zero_base_by_family(C) when C >= $a,
                            C =< $z ->
  $a;
zero_base_by_family(C) when C >= $A,
                            C =< $Z ->
  $A;
%% 16#0660 - 16#0669 ARABIC-INDIC  numerals
zero_base_by_family(C) when C >= 16#0660,
                            C =< 16#0669 ->
  16#0660;
%% 16#06F0 - 16#06F9 EXTENDED ARABIC-INDIC  numerals
zero_base_by_family(C) when C >= 16#06F0,
                            C =< 16#06F9 ->
  16#06F0;
%% 16#07C0 - 16#07C9 NKO  numerals
zero_base_by_family(C) when C >= 16#07C0,
                            C =< 16#07C9 ->
  16#07C0;
%% 16#0966 - 16#096F DEVANAGARI  numerals
zero_base_by_family(C) when C >= 16#0966,
                            C =< 16#096F ->
  16#0966;
%% 16#09E6 - 16#09EF BENGALI  numerals
zero_base_by_family(C) when C >= 16#09E6,
                            C =< 16#09EF ->
  16#09E6;
%% 16#0A66 - 16#0A6F GURMUKHI  numerals
zero_base_by_family(C) when C >= 16#0A66,
                            C =< 16#0A6F ->
  16#0A66;
%% 16#0AE6 - 16#0AEF GUJARATI  numerals
zero_base_by_family(C) when C >= 16#0AE6,
                            C =< 16#0AEF ->
  16#0AE6;
%% 16#0B66 - 16#0B6F ORIYA  numerals
zero_base_by_family(C) when C >= 16#0B66,
                            C =< 16#0B6F ->
  16#0B66;
%% 16#0BE6 - 16#0BEF TAMIL  numerals
zero_base_by_family(C) when C >= 16#0BE6,
                            C =< 16#0BEF ->
  16#0BE6;
%% 16#0C66 - 16#0C6F TELUGU  numerals
zero_base_by_family(C) when C >= 16#0C66,
                            C =< 16#0C6F ->
  16#0C66;
%% 16#0CE6 - 16#0CEF KANNADA  numerals
zero_base_by_family(C) when C >= 16#0CE6,
                            C =< 16#0CEF ->
  16#0CE6;
%% 16#0D66 - 16#0D6F MALAYALAM  numerals
zero_base_by_family(C) when C >= 16#0D66,
                            C =< 16#0D6F ->
  16#0D66;
%% 16#0DE6 - 16#0DEF SINHALA LITH  numerals
zero_base_by_family(C) when C >= 16#0DE6,
                            C =< 16#0DEF ->
  16#0DE6;
%% 16#0E50 - 16#0E59 THAI  numerals
zero_base_by_family(C) when C >= 16#0E50,
                            C =< 16#0E59 ->
  16#0E50;
%% 16#0ED0 - 16#0ED9 LAO  numerals
zero_base_by_family(C) when C >= 16#0ED0,
                            C =< 16#0ED9 ->
  16#0ED0;
%% 16#0F20 - 16#0F29 TIBETAN  numerals
zero_base_by_family(C) when C >= 16#0F20,
                            C =< 16#0F29 ->
  16#0F20;
%% 16#1040 - 16#1049 MYANMAR  numerals
zero_base_by_family(C) when C >= 16#1040,
                            C =< 16#1049 ->
  16#1040;
%% 16#1090 - 16#1099 MYANMAR SHAN  numerals
zero_base_by_family(C) when C >= 16#1090,
                            C =< 16#1099 ->
  16#1090;
%% 16#17E0 - 16#17E9 KHMER  numerals
zero_base_by_family(C) when C >= 16#17E0,
                            C =< 16#17E9 ->
  16#17E0;
%% 16#1810 - 16#1819 MONGOLIAN  numerals
zero_base_by_family(C) when C >= 16#1810,
                            C =< 16#1819 ->
  16#1810;
%% 16#1946 - 16#194F LIMBU  numerals
zero_base_by_family(C) when C >= 16#1946,
                            C =< 16#194F ->
  16#1946;
%% 16#19D0 - 16#19D9 NEW TAI LUE  numerals
zero_base_by_family(C) when C >= 16#19D0,
                            C =< 16#19D9 ->
  16#19D0;
%% 16#1A80 - 16#1A89 TAI THAM HORA  numerals
zero_base_by_family(C) when C >= 16#1A80,
                            C =< 16#1A89 ->
  16#1A80;
%% 16#1A90 - 16#1A99 TAI THAM THAM  numerals
zero_base_by_family(C) when C >= 16#1A90,
                            C =< 16#1A99 ->
  16#1A90;
%% 16#1B50 - 16#1B59 BALINESE  numerals
zero_base_by_family(C) when C >= 16#1B50,
                            C =< 16#1B59 ->
  16#1B50;
%% 16#1BB0 - 16#1BB9 SUNDANESE  numerals
zero_base_by_family(C) when C >= 16#1BB0,
                            C =< 16#1BB9 ->
  16#1BB0;
%% 16#1C40 - 16#1C49 LEPCHA  numerals
zero_base_by_family(C) when C >= 16#1C40,
                            C =< 16#1C49 ->
  16#1C40;
%% 16#1C50 - 16#1C59 OL CHIKI  numerals
zero_base_by_family(C) when C >= 16#1C50,
                            C =< 16#1C59 ->
  16#1C50;
%% 16#A620 - 16#A629 VAI  numerals
zero_base_by_family(C) when C >= 16#A620,
                            C =< 16#A629 ->
  16#A620;

%% %% 16#2460 - 16#24F9 Enclosed Alphanumerics 100 of them.... no zeroes?? so minus one
zero_base_by_family(C) when C >= 16#2460,C =< 16#2468 ->16#245F;%
zero_base_by_family(C) when C >= 16#2474,C =< 16#247C ->16#2473;%
zero_base_by_family(C) when C >= 16#2488,C =< 16#2490 ->16#2487;
zero_base_by_family(C) when C >= 16#249C,C =< 16#24A4 ->16#249B;
zero_base_by_family(C) when C >= 16#24B6,C =< 16#24BE ->16#24B5;
zero_base_by_family(C) when C >= 16#24D0,C =< 16#24D8 ->16#24CF;
zero_base_by_family(C) when C >= 16#24F5,C =< 16#24FD ->16#24F4;

%% 16#A8D0 - 16#A8D9 SAURASHTRA  numerals
zero_base_by_family(C) when C >= 16#A8D0,
                            C =< 16#A8D9 ->
  16#A8D0;
%% 16#A900 - 16#A909 KAYAH LI  numerals
zero_base_by_family(C) when C >= 16#A900,
                            C =< 16#A909 ->
  16#A900;
%% 16#A9D0 - 16#A9D9 JAVANESE  numerals
zero_base_by_family(C) when C >= 16#A9D0,
                            C =< 16#A9D9 ->
  16#A9D0;
%% 16#A9F0 - 16#A9F9 MYANMAR TAI LAING  numerals
zero_base_by_family(C) when C >= 16#A9F0,
                            C =< 16#A9F9 ->
  16#A9F0;
%% 16#AA50 - 16#AA59 CHAM  numerals
zero_base_by_family(C) when C >= 16#AA50,
                            C =< 16#AA59 ->
  16#AA50;
%% 16#ABF0 - 16#ABF9 MEETEI MAYEK  numerals
zero_base_by_family(C) when C >= 16#ABF0,
                            C =< 16#ABF9 ->
  16#ABF0;
%% 16#FF10 - 16#FF19 FULLWIDTH  numerals
zero_base_by_family(C) when C >= 16#FF10,
                            C =< 16#FF19 ->
  16#FF10;
%% 16#104A0 - 16#104A9 OSMANYA  numerals
zero_base_by_family(C) when C >= 16#104A0,
                            C =< 16#104A9 ->
  16#104A0;
%% 16#11066 - 16#1106F BRAHMI  numerals
zero_base_by_family(C) when C >= 16#11066,
                            C =< 16#1106F ->
  16#11066;
%% 16#110F0 - 16#110F9 SORA SOMPENG  numerals
zero_base_by_family(C) when C >= 16#110F0,
                            C =< 16#110F9 ->
  16#110F0;
%% 16#11136 - 16#1113F CHAKMA  numerals
zero_base_by_family(C) when C >= 16#11136,
                            C =< 16#1113F ->
  16#11136;
%% 16#111D0 - 16#111D9 SHARADA  numerals
zero_base_by_family(C) when C >= 16#111D0,
                            C =< 16#111D9 ->
  16#111D0;
%% 16#112F0 - 16#112F9 KHUDAWADI  numerals
zero_base_by_family(C) when C >= 16#112F0,
                            C =< 16#112F9 ->
  16#112F0;
%% 16#11450 - 16#11459 NEWA  numerals
zero_base_by_family(C) when C >= 16#11450,
                            C =< 16#11459 ->
  16#11450;
%% 16#114D0 - 16#114D9 TIRHUTA  numerals
zero_base_by_family(C) when C >= 16#114D0,
                            C =< 16#114D9 ->
  16#114D0;
%% 16#11650 - 16#11659 MODI  numerals
zero_base_by_family(C) when C >= 16#11650,
                            C =< 16#11659 ->
  16#11650;
%% 16#116C0 - 16#116C9 TAKRI  numerals
zero_base_by_family(C) when C >= 16#116C0,
                            C =< 16#116C9 ->
  16#116C0;
%% 16#11730 - 16#11739 AHOM  numerals
zero_base_by_family(C) when C >= 16#11730,
                            C =< 16#11739 ->
  16#11730;
%% 16#118E0 - 16#118E9 WARANG CITI  numerals
zero_base_by_family(C) when C >= 16#118E0,
                            C =< 16#118E9 ->
  16#118E0;
%% 16#11C50 - 16#11C59 BHAIKSUKI  numerals
zero_base_by_family(C) when C >= 16#11C50,
                            C =< 16#11C59 ->
  16#11C50;
%% 16#11D50 - 16#11D59 MASARAM GONDI  numerals
zero_base_by_family(C) when C >= 16#11D50,
                            C =< 16#11D59 ->
  16#11D50;
%% 16#16A60 - 16#16A69 MRO  numerals
zero_base_by_family(C) when C >= 16#16A60,
                            C =< 16#16A69 ->
  16#16A60;
%% 16#16B50 - 16#16B59 PAHAWH HMONG  numerals
zero_base_by_family(C) when C >= 16#16B50,
                            C =< 16#16B59 ->
  16#16B50;
%% 16#1D7CE - 16#1D7D7 MATHEMATICAL BOLD  numerals
zero_base_by_family(C) when C >= 16#1D7CE,
                            C =< 16#1D7D7 ->
  16#1D7CE;
%% 16#1D7D8 - 16#1D7E1 MATHEMATICAL DOUBLE-STRUCK  numerals
zero_base_by_family(C) when C >= 16#1D7D8,
                            C =< 16#1D7E1 ->
  16#1D7D8;
%% 16#1D7E2 - 16#1D7EB MATHEMATICAL SANS-SERIF  numerals
zero_base_by_family(C) when C >= 16#1D7E2,
                            C =< 16#1D7EB ->
  16#1D7E2;
%% 16#1D7EC - 16#1D7F5 MATHEMATICAL SANS-SERIF BOLD  numerals
zero_base_by_family(C) when C >= 16#1D7EC,
                            C =< 16#1D7F5 ->
  16#1D7EC;
%% 16#1D7F6 - 16#1D7FF MATHEMATICAL MONOSPACE  numerals
zero_base_by_family(C) when C >= 16#1D7F6,
                            C =< 16#1D7FF ->
  16#1D7F6;
%% 16#1E950 - 16#1E959 ADLAM  numerals
zero_base_by_family(C) when C >= 16#1E950,
                            C =< 16#1E959 ->
  16#1E950;

zero_base_by_family(_) -> % all others
  $1.

% can be ordinal|alpha for now and for English
format_integer(Int, Format, ordinal) ->
   Str = integer_to_list(Int),
   Formatted = format_decimal(Str, Format),
   OrdEnd = ordinal_ending(Int,en),
   Formatted ++ OrdEnd.

ordinal_ending(3,en) ->
   "rd";
ordinal_ending(2,en) ->
   "nd";
ordinal_ending(1,en) ->
   "st";
ordinal_ending(0,en) ->
   "th";
ordinal_ending(N,en) when N >= 4, N =< 20 ->
   "th";
ordinal_ending(N,en) when N >= 100 ->
   ordinal_ending(N rem 100,en);
ordinal_ending(N,en) when N < 100 ->
   ordinal_ending(N rem 10,en);
ordinal_ending(_,en) ->
   "th".

num_to_text(Num,en,ordinal) when Num >= 1000000000000000000000,
                         Num <  1000000000000000000000000 ->
   num_to_text1(Num, 1000000000000000000000, "Sextillion",ordinal);
num_to_text(Num,en,ordinal) when Num >= 1000000000000000000,
                         Num <  1000000000000000000000 ->
   num_to_text1(Num, 1000000000000000000, "Quintillion",ordinal);
num_to_text(Num,en,ordinal) when Num >= 1000000000000000,
                         Num <  1000000000000000000 ->
   num_to_text1(Num, 1000000000000000, "Quadrillion",ordinal);
num_to_text(Num,en,ordinal) when Num >= 1000000000000,
                         Num <  1000000000000000 ->
   num_to_text1(Num, 1000000000000, "Trillion",ordinal);
num_to_text(Num,en,ordinal) when Num >= 1000000000,
                         Num <  1000000000000 ->
   num_to_text1(Num, 1000000000, "Billion",ordinal);
num_to_text(Num,en,ordinal) when Num >= 1000000,
                         Num <  1000000000 ->
   num_to_text1(Num, 1000000, "Million",ordinal);
num_to_text(Num,en,ordinal) when Num >= 1000,
                         Num <  1000000 ->
   num_to_text1(Num, 1000, "Thousand",ordinal);
num_to_text(Num,en,ordinal) when Num >= 100,
                         Num <  1000 ->
   num_to_text1(Num, 100, "Hundred",ordinal);
num_to_text(Num,en,ordinal) when Num >= 90,
                         Num <  100 ->
   Pre = "Ninety",
   Next = Num - 90,
   if Next == 0 ->
         "Ninetieth";
      true ->
         Pre ++ "-" ++ num_to_text(Next,en,ordinal)
   end;
num_to_text(Num,en,ordinal) when Num >= 80,
                         Num <  90 ->
   Pre = "Eighty",
   Next = Num - 80,
   if Next == 0 ->
         "Eightieth";
      true ->
         Pre ++ "-" ++ num_to_text(Next,en,ordinal)
   end;
num_to_text(Num,en,ordinal) when Num >= 70,
                         Num <  80 ->
   Pre = "Seventy",
   Next = Num - 70,
   if Next == 0 ->
         "Seventieth";
      true ->
         Pre ++ "-" ++ num_to_text(Next,en,ordinal)
   end;
num_to_text(Num,en,ordinal) when Num >= 60,
                         Num <  70 ->
   Pre = "Sixty",
   Next = Num - 60,
   if Next == 0 ->
         "Sixtieth";
      true ->
         Pre ++ "-" ++ num_to_text(Next,en,ordinal)
   end;
num_to_text(Num,en,ordinal) when Num >= 50,
                         Num <  60 ->
   Pre = "Fifty",
   Next = Num - 50,
   if Next == 0 ->
         "Fiftieth";
      true ->
         Pre ++ "-" ++ num_to_text(Next,en,ordinal)
   end;
num_to_text(Num,en,ordinal) when Num >= 40,
                         Num <  50 ->
   Pre = "Forty",
   Next = Num - 40,
   if Next == 0 ->
         "Fortieth";
      true ->
         Pre ++ "-" ++ num_to_text(Next,en,ordinal)
   end;
num_to_text(Num,en,ordinal) when Num >= 30,
                         Num <  40 ->
   Pre = "Thirty",
   Next = Num - 30,
   if Next == 0 ->
         "Thirtieth";
      true ->
         Pre ++ "-" ++ num_to_text(Next,en,ordinal)
   end;
num_to_text(Num,en,ordinal) when Num >= 20,
                         Num <  30 ->
   Pre = "Twenty",
   Next = Num - 20,
   if Next == 0 ->
         "Twentieth";
      true ->
         Pre ++ "-" ++ num_to_text(Next,en,ordinal)
   end;
num_to_text(19,en,ordinal) ->
   "Nineteenth";
num_to_text(18,en,ordinal) ->
   "Eighteenth";
num_to_text(17,en,ordinal) ->
   "Seventeenth";
num_to_text(16,en,ordinal) ->
   "Sixteenth";
num_to_text(15,en,ordinal) ->
   "Fifteenth";
num_to_text(14,en,ordinal) ->
   "Fourteenth";
num_to_text(13,en,ordinal) ->
   "Thirteenth";
num_to_text(12,en,ordinal) ->
   "Twelfth";
num_to_text(11,en,ordinal) ->
   "Eleventh";
num_to_text(10,en,ordinal) ->
   "Tenth";
num_to_text(9,en,ordinal) ->
   "Ninth";
num_to_text(8,en,ordinal) ->
   "Eighth";
num_to_text(7,en,ordinal) ->
   "Seventh";
num_to_text(6,en,ordinal) ->
   "Sixth";
num_to_text(5,en,ordinal) ->
   "Fifth";
num_to_text(4,en,ordinal) ->
   "Fourth";
num_to_text(3,en,ordinal) ->
   "Third";
num_to_text(2,en,ordinal) ->
   "Second";
num_to_text(1,en,ordinal) ->
   "First";
num_to_text(0,en,ordinal) ->
   "Zeroth".


num_to_text(Num,en) when Num >= 1000000000000000000000,
                         Num <  1000000000000000000000000 ->
   num_to_text1(Num, 1000000000000000000000, "Sextillion");
num_to_text(Num,en) when Num >= 1000000000000000000,
                         Num <  1000000000000000000000 ->
   num_to_text1(Num, 1000000000000000000, "Quintillion");
num_to_text(Num,en) when Num >= 1000000000000000,
                         Num <  1000000000000000000 ->
   num_to_text1(Num, 1000000000000000, "Quadrillion");
num_to_text(Num,en) when Num >= 1000000000000,
                         Num <  1000000000000000 ->
   num_to_text1(Num, 1000000000000, "Trillion");
num_to_text(Num,en) when Num >= 1000000000,
                         Num <  1000000000000 ->
   num_to_text1(Num, 1000000000, "Billion");
num_to_text(Num,en) when Num >= 1000000,
                         Num <  1000000000 ->
   num_to_text1(Num, 1000000, "Million");
num_to_text(Num,en) when Num >= 1000,
                         Num <  1000000 ->
   num_to_text1(Num, 1000, "Thousand");
num_to_text(Num,en) when Num >= 100,
                         Num <  1000 ->
   num_to_text1(Num, 100, "Hundred");
num_to_text(Num,en) when Num >= 90,
                         Num <  100 ->
   Pre = "Ninety",
   Next = Num - 90,
   if Next == 0 ->
         Pre;
      true ->
         Pre ++ "-" ++ num_to_text(Next,en)
   end;
num_to_text(Num,en) when Num >= 80,
                         Num <  90 ->
   Pre = "Eighty",
   Next = Num - 80,
   if Next == 0 ->
         Pre;
      true ->
         Pre ++ "-" ++ num_to_text(Next,en)
   end;
num_to_text(Num,en) when Num >= 70,
                         Num <  80 ->
   Pre = "Seventy",
   Next = Num - 70,
   if Next == 0 ->
         Pre;
      true ->
         Pre ++ "-" ++ num_to_text(Next,en)
   end;
num_to_text(Num,en) when Num >= 60,
                         Num <  70 ->
   Pre = "Sixty",
   Next = Num - 60,
   if Next == 0 ->
         Pre;
      true ->
         Pre ++ "-" ++ num_to_text(Next,en)
   end;
num_to_text(Num,en) when Num >= 50,
                         Num <  60 ->
   Pre = "Fifty",
   Next = Num - 50,
   if Next == 0 ->
         Pre;
      true ->
         Pre ++ "-" ++ num_to_text(Next,en)
   end;
num_to_text(Num,en) when Num >= 40,
                         Num <  50 ->
   Pre = "Forty",
   Next = Num - 40,
   if Next == 0 ->
         Pre;
      true ->
         Pre ++ "-" ++ num_to_text(Next,en)
   end;
num_to_text(Num,en) when Num >= 30,
                         Num <  40 ->
   Pre = "Thirty",
   Next = Num - 30,
   if Next == 0 ->
         Pre;
      true ->
         Pre ++ "-" ++ num_to_text(Next,en)
   end;
num_to_text(Num,en) when Num >= 20,
                         Num <  30 ->
   Pre = "Twenty",
   Next = Num - 20,
   if Next == 0 ->
         Pre;
      true ->
         Pre ++ "-" ++ num_to_text(Next,en)
   end;
num_to_text(19,en) ->
   "Nineteen";
num_to_text(18,en) ->
   "Eighteen";
num_to_text(17,en) ->
   "Seventeen";
num_to_text(16,en) ->
   "Sixteen";
num_to_text(15,en) ->
   "Fifteen";
num_to_text(14,en) ->
   "Fourteen";
num_to_text(13,en) ->
   "Thirteen";
num_to_text(12,en) ->
   "Twelve";
num_to_text(11,en) ->
   "Eleven";
num_to_text(10,en) ->
   "Ten";
num_to_text(9,en) ->
   "Nine";
num_to_text(8,en) ->
   "Eight";
num_to_text(7,en) ->
   "Seven";
num_to_text(6,en) ->
   "Six";
num_to_text(5,en) ->
   "Five";
num_to_text(4,en) ->
   "Four";
num_to_text(3,en) ->
   "Three";
num_to_text(2,en) ->
   "Two";
num_to_text(1,en) ->
   "One";
num_to_text(0,en) ->
   "Zero".

% english textual numbers
num_to_text1(Num, Min, Name,ordinal) ->
   Hun = Num div Min,
   Rest = Num rem Min,
   HunStr = num_to_text(Hun,en) ++ " " ++ Name,
   if Rest == 0 ->
         HunStr ++ "th";
      true ->
         HunStr ++ " " ++ num_to_text(Rest,en,ordinal)
   end.

num_to_text1(Num, Min, Name) ->
   Hun = Num div Min,
   Rest = Num rem Min,
   HunStr = num_to_text(Hun,en) ++ " " ++ Name,
   if Rest == 0 ->
         HunStr;
      true ->
         HunStr ++ " " ++ num_to_text(Rest,en)
   end.

% return all as title case
integer_name( 1,en,month) -> "January";
integer_name( 2,en,month) -> "February";
integer_name( 3,en,month) -> "March";
integer_name( 4,en,month) -> "April";
integer_name( 5,en,month) -> "May";
integer_name( 6,en,month) -> "June";
integer_name( 7,en,month) -> "July";
integer_name( 8,en,month) -> "August";
integer_name( 9,en,month) -> "September";
integer_name(10,en,month) -> "October";
integer_name(11,en,month) -> "November";
integer_name(12,en,month) -> "December";

integer_name( 1,en,dow) -> "Monday";
integer_name( 2,en,dow) -> "Tuesday";
integer_name( 3,en,dow) -> "Wednesday";
integer_name( 4,en,dow) -> "Thursday";
integer_name( 5,en,dow) -> "Friday";
integer_name( 6,en,dow) -> "Saturday";
integer_name( 7,en,dow) -> "Sunday";

integer_name( I,en,era) when I < 0 -> "BC";
integer_name( I,en,era) when I > 0 -> "AD";
integer_name( _,en,era) -> "";

integer_name(_Int1,en,_Part) -> ok.

   



%% language(_) -> "en".
%% 
%% % should do ISO and AD at minimum
%% calendar("ISO") -> "ISO";
%% calendar("AD") -> "AD";
%% calendar(_) -> "AD".
%% 
%% place(_) -> []. % ignored for now

zulu_zone(0) -> "Z";
zulu_zone(1) -> "A";
zulu_zone(2) -> "B";
zulu_zone(3) -> "C";
zulu_zone(4) -> "D";
zulu_zone(5) -> "E";
zulu_zone(6) -> "F";
zulu_zone(7) -> "G";
zulu_zone(8) -> "H";
zulu_zone(9) -> "I";
zulu_zone(10) -> "K";
zulu_zone(11) -> "L";
zulu_zone(12) -> "M";
zulu_zone(-1) -> "N";
zulu_zone(-2) -> "O";
zulu_zone(-3) -> "P";
zulu_zone(-4) -> "Q";
zulu_zone(-5) -> "R";
zulu_zone(-6) -> "S";
zulu_zone(-7) -> "T";
zulu_zone(-8) -> "U";
zulu_zone(-9) -> "V";
zulu_zone(-10) -> "W";
zulu_zone(-11) -> "X";
zulu_zone(-12) -> "Y".






