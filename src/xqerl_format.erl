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

%% @doc Formatting functions for use with fn:format-integer, date fomat functions, and format-number. 
%% @TODO use the modifier markers for ordinals and 'traditional'. 
%% @TODO Complete the implementation

-module(xqerl_format).
-include("xqerl.hrl").

%-export([test/2]).
-export([parse_picture/2]).

%% test(Int, Picture) ->
%%    Dt = xqerl_types:cast_as(#xqAtomicValue{type = 'xs:string',value = "2003-09-07T12:45:12.3456"}, 'xs:dateTime'),
%%    parse_picture(Dt, Picture).

parse_picture(Int, Picture) when is_integer(Int) ->
   Sign = if Int < 0 ->
                "-";
             true ->
                []
          end,
   Int1 = abs(Int),
   {PrimaryToken, _Modifier} = case string:split(Picture,";",trailing) of
                                 [H,T] ->
                                    {H,T};
                                 [H] ->
                                    {H,[]}
                              end,
   PatternType = pattern_type(PrimaryToken),
   %?dbg("Picture",Picture),
   %?dbg("PrimaryToken",PrimaryToken),
   %?dbg("Modifier",Modifier),
   %?dbg("PatternType",PatternType),
   if PatternType == decimal_digit_pattern ->
         Str = integer_to_list(Int1),
         Format = parse_decimal_digit_pattern(PrimaryToken),
         Sign ++ format_decimal(Str, Format);
      PatternType == roman_upper ->
         Sign ++int_to_upper_roman(Int1);
      PatternType == roman_lower ->
         Sign ++ int_to_lower_roman(Int1);
      PatternType == alpha_lower ->
         Sign ++ int_to_alpha(Int1, lower);
      PatternType == alpha_upper ->
         Sign ++ int_to_alpha(Int1, upper);
      PatternType == words_lower ->
         Sign ++ num_to_text(Int1, en);
      PatternType == words_upper ->
         Sign ++ string:uppercase(num_to_text(Int1, en));
      PatternType == words_title ->
         Sign ++ string:titlecase(num_to_text(Int1, en));
      PatternType == one ->
         Str = integer_to_list(Int1),
         Format = parse_decimal_digit_pattern("1"),
         Sign ++ format_decimal(Str, Format);
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
   case string:split(Mods,[$,]) of
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
         {none, Max1};
      [Min,"*"] ->
         Min1 = list_to_integer(Min),
         {Min1, none};
      [Min,Max] ->
         Min1 = list_to_integer(Min),
         Max1 = list_to_integer(Max),
         if Max1 < Min1 -> xqerl_error:error('FOFD1340');
            true ->
               {Min1, Max1}
         end;
      ["*"] ->
         {none, none};
      [Min] ->
         Min1 = list_to_integer(Min),
         {Min1, none}
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
format_datetime_part(#xsDateTime{month = X}, Type, {month, Part}) -> 
   if Type == 'xs:time' -> xqerl_error:error('FOFD1350');
      true -> format_datetime_part_as_int(X,Part)
   end;
format_datetime_part(#xsDateTime{day = X}, Type, {day, Part}) -> 
   if Type == 'xs:time' -> xqerl_error:error('FOFD1350');
      true -> format_datetime_part_as_int(X,Part)
   end;
format_datetime_part(#xsDateTime{year = Y,month = M, day = D}, Type, {doy, Part}) ->
   if Type == 'xs:time' -> xqerl_error:error('FOFD1350');
      true -> 
         MonDays = lists:foldl(fun(Mo, Acc) ->
                                     Acc + calendar:last_day_of_the_month(Y, Mo)
                               end, 0, lists:seq(1, M)),
         X = MonDays + D,
         format_datetime_part_as_int(X,Part)
   end;
format_datetime_part(#xsDateTime{year = Y,month = M, day = D}, Type, {dow, Part}) ->
   if Type == 'xs:time' -> xqerl_error:error('FOFD1350');
      true -> 
         X = calendar:day_of_the_week(Y, M, D),
         format_datetime_part_as_int(X,Part)
   end;
format_datetime_part(#xsDateTime{year = Y,month = M, day = D}, Type, {woy, Part}) ->
   if Type == 'xs:time' -> xqerl_error:error('FOFD1350');
      true -> 
         {_IY,X} = calendar:iso_week_number({Y, M, D}),
         format_datetime_part_as_int(X,Part)
   end;
format_datetime_part(#xsDateTime{year = Y,month = M, day = D}, Type, {wom, Part}) ->
   if Type == 'xs:time' -> xqerl_error:error('FOFD1350');
      true -> 
         % iso week with 4+ days in month
         FDom = calendar:day_of_the_week(Y, M, 1),
         if FDom =< 4 ->
               W = if ((D + ( FDom - 1)) rem 7) == 0 ->
                         ((D + ( FDom - 1)) div 7);
                      true ->
                         ((D + ( FDom - 1)) div 7) + 1
                   end,
               format_datetime_part_as_int(W,Part);
            true ->
               Dow = calendar:day_of_the_week(Y, M, D),
               if D >= 3 orelse Dow == 1 ->
                     W = if ((D + ( FDom - 1)) rem 7) == 0 ->
                               ((D + ( FDom - 1)) div 7) - 1;
                            true ->
                               ((D + ( FDom - 1)) div 7)
                         end,
                     format_datetime_part_as_int(W,Part);
                  true ->
                     % in previous month
                     Mon = calendar:date_to_gregorian_days(Y, M, 1) - (FDom - 1),
                     {PY,PM,PD} = calendar:gregorian_days_to_date(Mon),
                     %?dbg("{PY,PM,PD}",{PY,PM,PD}),
                     PFDom = calendar:day_of_the_week(PY, PM, 1),
                     PW = if ((PD + ( PFDom - 1)) rem 7) == 0 ->
                               ((PD + ( PFDom - 1)) div 7);
                            true ->
                               ((PD + ( PFDom - 1)) div 7) + 1
                         end,
                     format_datetime_part_as_int(PW,Part)
               end
         end
   end;
format_datetime_part(#xsDateTime{hour = X}, Type, {hour24, Part}) ->
   if Type == 'xs:date' -> xqerl_error:error('FOFD1350');
      true -> 
         format_datetime_part_as_int(X,Part)
   end;
format_datetime_part(#xsDateTime{hour = H}, Type, {hour12, Part}) ->
   if Type == 'xs:date' -> xqerl_error:error('FOFD1350');
      true -> 
         X = H rem 12,
         format_datetime_part_as_int(X,Part)
   end;
format_datetime_part(#xsDateTime{minute = X}, Type, {minute, Part}) ->
   if Type == 'xs:date' -> xqerl_error:error('FOFD1350');
      true -> 
         format_datetime_part_as_int(X,Part)
   end;
format_datetime_part(#xsDateTime{second = S}, Type, {secint, Part}) -> 
   if Type == 'xs:date' -> xqerl_error:error('FOFD1350');
      true -> 
         X = trunc(S),
         format_datetime_part_as_int(X,Part)
   end;

format_datetime_part(#xsDateTime{year = Y}, Type, {year, {First,_Second,{_MinLen,MaxLen}} = Part}) ->
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
                         ?dbg("Format",Format),
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
         ?dbg("N",{?LINE,N}),
         X = Y rem trunc(math:pow(10, N)),
         ?dbg("First",{X,Part}),
         format_datetime_part_as_int(X,Part)
   end;

format_datetime_part(#xsDateTime{second = S}, Type, {secfract, Part}) -> 
   if Type == 'xs:date' -> xqerl_error:error('FOFD1350');
      true -> 
         X = S - trunc(S),
         format_datetime_part_as_fract(X,Part)
   end;

format_datetime_part(#xsDateTime{hour = H}, Type, {ampm, _Part}) -> 
   if Type == 'xs:date' -> xqerl_error:error('FOFD1350');
      true -> 
         if H < 12 ->
               "AM";
            true ->
               "PM"
         end
   end;

format_datetime_part(#xsDateTime{}, Type, {calendar, _Part}) -> 
   if Type == 'xs:time' -> xqerl_error:error('FOFD1350');
      true -> 
         ""
   end;
format_datetime_part(#xsDateTime{}, Type, {era, _Part}) -> 
   if Type == 'xs:time' -> xqerl_error:error('FOFD1350');
      true -> 
         ""
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

format_datetime_part_as_fract(Fract,{First,Second,{MinLen,MaxLen}}) ->
   ?dbg("Fract,{First,Second,{MinLen,MaxLen}}",{Fract,{First,Second,{MinLen,MaxLen}}}),
   Format = parse_decimal_digit_pattern(First),
   FormLen = length(Format),
   SepLen = length([S || {separator, _} = S <- Format]),
   OptLen = length([S || {optional_digit} = S <- Format]),
   ManLen = length([S || {digit, _} = S <- Format]),
   W = length(Format) - length([S || {separator, _} = S <- Format]),
   Format1 = if MaxLen == none, MinLen == none, FormLen == 1 ->
                   Dif = 8 - length(Format),
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
   ?dbg("Format1",Format1),
   Format1.
                         
optional_to_mandatory([],_Cnt,_ManChar) ->
   [];
optional_to_mandatory(T,0,_ManChar) ->
   T;
optional_to_mandatory([{optional_digit}|T],Cnt,ManChar) ->
   [{digit,ManChar}|optional_to_mandatory(T,Cnt-1,ManChar)];
optional_to_mandatory([H|T],Cnt,ManChar) ->
   [H|optional_to_mandatory(T,Cnt,ManChar)].

% Unused Second variable has the modifiers
format_datetime_part_as_int(Int1,{PrimaryToken,_Second,{MinLen,MaxLen}}) ->
   if PrimaryToken == [] ->
         integer_to_list(Int1);
      true ->
         PatternType = pattern_type(PrimaryToken),
         NonTrunc = 
            if PatternType == decimal_digit_pattern ->
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
                  ?dbg("F2",F2),
                  ?dbg("Str",Str),
                  format_decimal(Str, F2);
               PatternType == roman_upper ->
                  int_to_upper_roman(Int1);
               PatternType == roman_lower ->
                  int_to_lower_roman(Int1);
               PatternType == alpha_lower ->
                  int_to_alpha(Int1, lower);
               PatternType == alpha_upper ->
                  int_to_alpha(Int1, upper);
               PatternType == words_lower ->
                  num_to_text(Int1, en);
               PatternType == words_upper ->
                  string:uppercase(num_to_text(Int1, en));
               PatternType == words_title ->
                  string:titlecase(num_to_text(Int1, en));
               PatternType == one ->
                  Str = integer_to_list(Int1),
                  Format = parse_decimal_digit_pattern("1"),
                  format_decimal(Str, Format);
               PatternType == name_upper -> ok;
               PatternType == name_lower -> ok;
               PatternType == name_title -> ok;
               true ->
                  ok
            end,
         NonTrunc
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
   {ok,Dig} = re:compile("\\p{Nd}", [unicode, ucp]),
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

   if HasMand andalso NoBadOpt andalso NoBadHead andalso NoBadLast andalso NoConsSep ->
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

is_separator_template([],_Cnt,{P,S}) ->
   if P == 0 ->
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

format_decimal(Str1, Format) ->
   ?dbg("Str1",Str1),
   ?dbg("Format",Format),
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
   %?dbg("FamilyZero",($0 - $0 + FamilyZero)),
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
int_to_alpha(0, _Shift) -> [];
int_to_alpha(Num, Shift) ->
   Mod = Num rem 26,
   Num1 = Num div 26,
   if Mod == 0 ->
         [(26 + Shift)];
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

%% %% 16#2460 - 16#24F9 Enclosed Alphanumerics 100 of them.... not correct and not in the regex for numerics
%% zero_base_by_family(C) when C >= 16#2460,C =< 16#2469 ->16#2460;
%% zero_base_by_family(C) when C >= 16#2470,C =< 16#2479 ->16#2470;
%% zero_base_by_family(C) when C >= 16#2480,C =< 16#2489 ->16#2480;
%% zero_base_by_family(C) when C >= 16#2490,C =< 16#2499 ->16#2490;
%% zero_base_by_family(C) when C >= 16#24A0,C =< 16#24A9 ->16#24A0;
%% zero_base_by_family(C) when C >= 16#24B0,C =< 16#24B9 ->16#24B0;
%% zero_base_by_family(C) when C >= 16#24C0,C =< 16#24C9 ->16#24C0;
%% zero_base_by_family(C) when C >= 16#24D0,C =< 16#24D9 ->16#24D0;
%% zero_base_by_family(C) when C >= 16#24E0,C =< 16#24E9 ->16#24E0;
%% zero_base_by_family(C) when C >= 16#24F0,C =< 16#24F9 ->16#24F0;

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

num_to_text(Num,en) when Num >= 1000000000000000000000,
                         Num <  1000000000000000000000000 ->
   num_to_text1(Num, 1000000000000000000000, "sextillion");
num_to_text(Num,en) when Num >= 1000000000000000000,
                         Num <  1000000000000000000000 ->
   num_to_text1(Num, 1000000000000000000, "quintillion");
num_to_text(Num,en) when Num >= 1000000000000000,
                         Num <  1000000000000000000 ->
   num_to_text1(Num, 1000000000000000, "quadrillion");
num_to_text(Num,en) when Num >= 1000000000000,
                         Num <  1000000000000000 ->
   num_to_text1(Num, 1000000000000, "trillion");
num_to_text(Num,en) when Num >= 1000000000,
                         Num <  1000000000000 ->
   num_to_text1(Num, 1000000000, "billion");
num_to_text(Num,en) when Num >= 1000000,
                         Num <  1000000000 ->
   num_to_text1(Num, 1000000, "million");
num_to_text(Num,en) when Num >= 1000,
                         Num <  1000000 ->
   num_to_text1(Num, 1000, "thousand");
num_to_text(Num,en) when Num >= 100,
                         Num <  1000 ->
   num_to_text1(Num, 100, "hundred");
num_to_text(Num,en) when Num >= 90,
                         Num <  100 ->
   Pre = "ninety",
   Next = Num - 90,
   if Next == 0 ->
         Pre;
      true ->
         Pre ++ "-" ++ num_to_text(Next,en)
   end;
num_to_text(Num,en) when Num >= 80,
                         Num <  90 ->
   Pre = "eighty",
   Next = Num - 80,
   if Next == 0 ->
         Pre;
      true ->
         Pre ++ "-" ++ num_to_text(Next,en)
   end;
num_to_text(Num,en) when Num >= 70,
                         Num <  80 ->
   Pre = "seventy",
   Next = Num - 70,
   if Next == 0 ->
         Pre;
      true ->
         Pre ++ "-" ++ num_to_text(Next,en)
   end;
num_to_text(Num,en) when Num >= 60,
                         Num <  70 ->
   Pre = "sixty",
   Next = Num - 60,
   if Next == 0 ->
         Pre;
      true ->
         Pre ++ "-" ++ num_to_text(Next,en)
   end;
num_to_text(Num,en) when Num >= 50,
                         Num <  60 ->
   Pre = "fifty",
   Next = Num - 50,
   if Next == 0 ->
         Pre;
      true ->
         Pre ++ "-" ++ num_to_text(Next,en)
   end;
num_to_text(Num,en) when Num >= 40,
                         Num <  50 ->
   Pre = "forty",
   Next = Num - 40,
   if Next == 0 ->
         Pre;
      true ->
         Pre ++ "-" ++ num_to_text(Next,en)
   end;
num_to_text(Num,en) when Num >= 30,
                         Num <  40 ->
   Pre = "thirty",
   Next = Num - 30,
   if Next == 0 ->
         Pre;
      true ->
         Pre ++ "-" ++ num_to_text(Next,en)
   end;
num_to_text(Num,en) when Num >= 20,
                         Num <  30 ->
   Pre = "twenty",
   Next = Num - 20,
   if Next == 0 ->
         Pre;
      true ->
         Pre ++ "-" ++ num_to_text(Next,en)
   end;
num_to_text(19,en) ->
   "nineteen";
num_to_text(18,en) ->
   "eighteen";
num_to_text(17,en) ->
   "seventeen";
num_to_text(16,en) ->
   "sixteen";
num_to_text(15,en) ->
   "fifteen";
num_to_text(14,en) ->
   "fourteen";
num_to_text(13,en) ->
   "thirteen";
num_to_text(12,en) ->
   "twelve";
num_to_text(11,en) ->
   "eleven";
num_to_text(10,en) ->
   "ten";
num_to_text(9,en) ->
   "nine";
num_to_text(8,en) ->
   "eight";
num_to_text(7,en) ->
   "seven";
num_to_text(6,en) ->
   "six";
num_to_text(5,en) ->
   "five";
num_to_text(4,en) ->
   "four";
num_to_text(3,en) ->
   "three";
num_to_text(2,en) ->
   "two";
num_to_text(1,en) ->
   "one";
num_to_text(0,en) ->
   "zero".

% english textual numbers
num_to_text1(Num, Min, Name) ->
   Hun = Num div Min,
   Rest = Num rem Min,
   HunStr = num_to_text(Hun,en) ++ " " ++ Name,
   if Rest == 0 ->
         HunStr;
      true ->
         HunStr ++ " " ++ num_to_text(Rest,en)
   end.

language(_) -> "en".

% should do ISO and AD at minimum
calendar("ISO") -> "ISO";
calendar("AD") -> "AD";
calendar(_) -> "AD".

place(_) -> []. % ignored for now

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






