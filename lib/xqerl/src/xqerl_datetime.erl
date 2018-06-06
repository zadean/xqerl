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

%% @doc Helper functions for parsing dateTime values to/from string 

-module(xqerl_datetime).

-export([get_from_now/1]).
-export([get_from_now_local/1]).

-export([ymd_is_valid/3]).

-export([to_string/2]).
-export([align_to_timezone/2]).

-define(digit(H), H >= $0; H =< $9).
-define(str(Val), #xqAtomicValue{type = 'xs:string', value = Val}).

-include("xqerl.hrl").

%% -record(off_set, {hour = 0, 
%%                   min = 0}).
%% 
%% -record(xsDateTime, {
%%                    year     = 0,
%%                    month    = 1,
%%                    day      = 1,
%%                    hour     = 0,
%%                    minute   = 0,
%%                    second   = 0.000,
%%                    offset   = #off_set{}
%%                    }).

get_from_now(Now) ->
   {_,_,Micro} = Now,
   Millis =  Micro div 1000,
   {{Y,M,D}, {HH,MI,SS}} = calendar:now_to_universal_time(Now),
   Ret = #xsDateTime{
            year = Y,
            month = M,
            day = D,
            hour = HH,
            minute = MI,
            second = SS + (Millis / 1000)
         },
   Str = to_string(Ret,'xs:dateTime'),
   #xqAtomicValue{type = 'xs:dateTime', 
                  value = Ret#xsDateTime{string_value = Str}}.

get_from_now_local(Now) ->
   {_,_,Micro} = Now,
   Millis =  Micro div 1000,
   {{Y,M,D}, {HH,MI,SS}} = calendar:now_to_local_time(Now),
   Loc = calendar:datetime_to_gregorian_seconds({{Y,M,D}, {HH,MI,SS}}),
   Ut = calendar:now_to_universal_time(Now),
   Utc = calendar:datetime_to_gregorian_seconds(Ut),
   Dif = Loc - Utc,
   {{_,_,_},{Hd,Md,_}} = calendar:gregorian_seconds_to_datetime(Dif),
   Ret = #xsDateTime{
            year = Y,
            month = M,
            day = D,
            hour = HH,
            minute = MI,
            second = xqerl_numeric:decimal(SS + (Millis / 1000)),
            offset = #off_set{hour = Hd, min = Md}
         },
   Str = to_string(Ret,'xs:dateTime'),
   #xqAtomicValue{type = 'xs:dateTime', 
                  value = Ret#xsDateTime{string_value = Str}}.

to_string(#xsDateTime{sign     = Sign,
                      year     = Y,
                      month    = M,
                      day      = D,
                      hour     = HH,
                      minute   = MI,
                      second   = SS,
                      offset   = OS},
          'xs:dateTime') ->
   Offset = offset_str(OS),
   SecStr = sec_str(SS),
   F = [sign_fmt(Sign),year_fmt(Y),{c,$-},{b2,M},{c,$-},{b2,D},
        {c,$T},{b2,HH},{c,$:},{b2,MI},{c,$:},{s,SecStr},{s,Offset}],
   build_string_from_format(F);

to_string(#xsDateTime{sign     = _,
                      day      = 0,
                      hour     = 0,
                      minute   = 0,
                      second   = #xsDecimal{int = 0, scf = 0}},
          'xs:dayTimeDuration') ->
   "PT0S";
to_string(#xsDateTime{sign     = Sign,
                      day      = D,
                      hour     = HH,
                      minute   = MI,
                      second   = SS},
          'xs:dayTimeDuration') ->
   SN = sign_fmt(Sign),
   DT = date_dur_fmt(0,0,D),
   TM = time_dur_fmt(HH,MI,sec_dur_str(SS)),
   F = [SN|DT] ++ TM,
   build_string_from_format(F);

to_string(#off_set{sign = _,
                   hour = 0,
                   min  = 0},
          'xs:dayTimeDuration') ->
   "PT0S";
to_string(#off_set{sign = Sign,
                   hour = HH,
                   min  = MI},
          'xs:dayTimeDuration') ->
   F = [sign_fmt(Sign),{c,$P}|time_dur_fmt(HH,MI,sec_dur_str(0))],
   build_string_from_format(F);

to_string(#xsDateTime{sign     = _,
                      year     = 0,
                      month    = 0},
          'xs:yearMonthDuration') ->
   "P0M";
to_string(#xsDateTime{sign     = Sign,
                      year     = Y,
                      month    = M},
          'xs:yearMonthDuration') ->
   F = [sign_fmt(Sign)|date_dur_fmt(Y,M,0)],
   build_string_from_format(F);

to_string(#xsDateTime{sign     = _,
                      year     = 0,
                      month    = 0,
                      day      = 0,
                      hour     = 0,
                      minute   = 0,
                      second   = #xsDecimal{int = 0, scf = 0}},
          'xs:duration') ->
   "PT0S";
to_string(#xsDateTime{sign     = Sign,
                      year     = Y,
                      month    = M,
                      day      = D,
                      hour     = HH,
                      minute   = MI,
                      second   = SS},
          'xs:duration') ->
   SN = sign_fmt(Sign),
   DT = date_dur_fmt(Y,M,D),
   TM = time_dur_fmt(HH,MI,sec_dur_str(SS)),
   F = [SN|DT] ++ TM,
   build_string_from_format(F);

to_string(#xsDateTime{hour     = Hour,
                      minute   = Min,
                      second   = Sec,
                      offset   = OS},
          'xs:time') ->
   Offset = offset_str(OS),
   SecStr = sec_str(Sec),
   F = [{b2,Hour},{c,$:},{b2,Min},{c,$:},{s,SecStr},{s,Offset}],
   build_string_from_format(F);

to_string(#xsDateTime{sign     = Sign,
                      year     = Y,
                      month    = M,
                      day      = D,
                      offset   = OS},
          'xs:date') ->
   Offset = offset_str(OS),
   F = [sign_fmt(Sign),year_fmt(Y),{c,$-},{b2,M},{c,$-},{b2,D},{s,Offset}],
   build_string_from_format(F);

to_string(#xsDateTime{day      = D,
                      offset   = OS},
          'xs:gDay') ->
   Offset = offset_str(OS),
   F = [{c,$-},{c,$-},{c,$-},{b2,D},{s,Offset}],
   build_string_from_format(F);

to_string(#xsDateTime{month    = M,
                      offset   = OS},
          'xs:gMonth') ->
   Offset = offset_str(OS),
   F = [{c,$-},{c,$-},{b2,M},{s,Offset}],
   build_string_from_format(F);

to_string(#xsDateTime{sign   = Sign,
                      year   = Y,
                      offset = OS},
          'xs:gYear') ->
   Offset = offset_str(OS),
   F = [sign_fmt(Sign),year_fmt(Y),{s,Offset}],
   build_string_from_format(F);

to_string(#xsDateTime{sign   = Sign,
                      year   = Y,
                      month  = M,
                      offset = OS},
          'xs:gYearMonth') ->
   Offset = offset_str(OS),
   F = [sign_fmt(Sign),year_fmt(Y),{c,$-},{b2,M},{s,Offset}],
   build_string_from_format(F);

to_string(#xsDateTime{day      = D,
                      month    = M,
                      offset   = OS},
          'xs:gMonthDay') ->
   Offset = offset_str(OS),
   F = [{c,$-},{c,$-},{b2,M},{c,$-},{b2,D},{s,Offset}],
   build_string_from_format(F).

ymd_is_valid(Y,M,D) ->
   try
      calendar:date_to_gregorian_days(abs(Y), M, D)
   catch 
      _:_ ->
         ?err('FORG0001')
   end.

align_to_timezone(Arg1,[]) ->
   #xqAtomicValue{type = Type, 
                  value = #xsDateTime{} = Val
                 } = ?seq:singleton_value(Arg1),
   NewDtTmWOs = Val#xsDateTime{offset = []},
   Str = to_string(NewDtTmWOs, Type),
   #xqAtomicValue{type = Type, 
                  value = NewDtTmWOs#xsDateTime{string_value = Str}};
align_to_timezone(Arg1,Arg2) ->
   #xqAtomicValue{type = Type, 
                  value = #xsDateTime{offset = Os} = Val
                 } = ?seq:singleton_value(Arg1),
   ArgDurStr  = case Os of
                   [] -> [];
                   _ -> to_string(Os,'xs:dayTimeDuration')
                end,
   AdjDurStr = case ?seq:singleton_value(Arg2) of
                  #xqAtomicValue{type = 'xs:dayTimeDuration', 
                                 value = #xsDateTime{second = Sec,
                                                     string_value = DStr}} ->
                     Gt = xqerl_numeric:greater_than(Sec, 0),
                     if Gt ->
                           ?err('FODT0003');
                        true ->
                           ?str(DStr)
                     end;
                  O ->
                     ?str(xqerl_datetime:to_string(O,'xs:dayTimeDuration'))
               end,
   if ArgDurStr =:= [] ->
         AdjDur = xqerl_types:cast_as(AdjDurStr, 'xs:dayTimeDuration'),
         #xsDateTime{sign = S, 
                     hour = H, 
                     minute = M} = xqerl_types:value(AdjDur),
         NewOffset = #off_set{sign = S, hour = H, min = M},
         NewDtTmWOs = Val#xsDateTime{offset = NewOffset},
         Str = xqerl_datetime:to_string(NewDtTmWOs, Type),
         #xqAtomicValue{type = Type, 
                        value = NewDtTmWOs#xsDateTime{string_value = Str}};
      true ->
         DtDur  = xqerl_types:cast_as(?str(ArgDurStr), 'xs:dayTimeDuration'),
         AdjDur = xqerl_types:cast_as(AdjDurStr, 'xs:dayTimeDuration'),
         #xsDateTime{sign = S, 
                     hour = H, 
                     minute = M} = xqerl_types:value(AdjDur),
         Diff = xqerl_operators:subtract(AdjDur, DtDur),
         #xqAtomicValue{value = NewDtTm} = xqerl_operators:add(Arg1, Diff),
         NewOffset = #off_set{sign = S, hour = H, min = M},
         NewDtTmWOs = NewDtTm#xsDateTime{offset = NewOffset},
         Str = xqerl_datetime:to_string(NewDtTmWOs, Type),
         #xqAtomicValue{type = Type, 
                        value = NewDtTmWOs#xsDateTime{string_value = Str}}
   end.

sec_str(Secs) ->
   Str = xqerl_numeric:string(Secs),
   case xqerl_numeric:less_than(Secs, 10) of
      true ->
         [$0|Str];
      _ ->
         Str
   end.


year_fmt(Year) when abs(Year) > 9999 -> {b,Year};
year_fmt(Year) -> {b4,Year}.

sign_fmt('+') -> i;
sign_fmt('-') -> {c,$-};
sign_fmt($+) -> i;
sign_fmt($-) -> {c,$-}.

offset_str([]) ->
   "";
offset_str(#off_set{hour = 0, min = 0}) -> "Z";
offset_str(#xqAtomicValue{type = 'xs:dayTimeDuration',
                          value = #xsDateTime{hour = 0, minute = 0}}) -> "Z";
offset_str(#off_set{sign = OS, hour = OH, min = OM}) ->
   if (OH * 60 + OM) > 840 ->
         ?err('FODT0003');
      true ->
         F = offset_fmt(OS,OH,OM),
         build_string_from_format(F)
   end;
offset_str(#xqAtomicValue{type = 'xs:dayTimeDuration',
                          value = #xsDateTime{sign = OS, 
                                              hour = OH, 
                                              minute = OM}}) ->
   F = offset_fmt(OS,OH,OM),
   build_string_from_format(F).

sec_dur_str(S) ->
   case sec_str(S) of
      [$0|R] -> R;
      R -> R
   end.

offset_fmt(_,  0,0) -> [{c,$Z}];
offset_fmt('-',H,M) -> [{c,$-},{b2,H},{c,$:},{b2,M}];
offset_fmt('+',H,M) -> [{c,$+},{b2,H},{c,$:},{b2,M}].
   

time_dur_fmt(0,0,"0") ->
   [i];
time_dur_fmt(H,M,Sec) when H > 0, M > 0, Sec =/= "0" ->
   [{c,$T},{b,H},{c,$H},{b,M},{c,$M},{s,Sec},{c,$S}];
time_dur_fmt(H,M,_) when H > 0, M > 0 ->
   [{c,$T},{b,H},{c,$H},{b,M},{c,$M}];
time_dur_fmt(H,_,Sec) when H > 0, Sec =/= "0" ->
   [{c,$T},{b,H},{c,$H},{s,Sec},{c,$S}];
time_dur_fmt(_,M,Sec) when M > 0, Sec =/= "0" ->
   [{c,$T},{b,M},{c,$M},{s,Sec},{c,$S}];
time_dur_fmt(H,_,_) when H > 0 ->
   [{c,$T},{b,H},{c,$H}];
time_dur_fmt(_,M,_) when M > 0 ->
   [{c,$T},{b,M},{c,$M}];
time_dur_fmt(_,_,Sec) when Sec =/= "0" ->
   [{c,$T},{s,Sec},{c,$S}];
time_dur_fmt(_,_,_) ->
   [{c,$T}].  

date_dur_fmt(Y,M,D) when Y > 0, M > 0, D > 0 ->
   [{c,$P},{b,Y},{c,$Y},{b,M},{c,$M},{b,D},{c,$D}];
date_dur_fmt(Y,M,_) when Y > 0, M > 0 ->
   [{c,$P},{b,Y},{c,$Y},{b,M},{c,$M}];
date_dur_fmt(Y,_,D) when Y > 0, D > 0 ->
   [{c,$P},{b,Y},{c,$Y},{b,D},{c,$D}];
date_dur_fmt(_,M,D) when M > 0, D > 0 ->
   [{c,$P},{b,M},{c,$M},{b,D},{c,$D}];
date_dur_fmt(Y,_,_) when Y > 0 ->
   [{c,$P},{b,Y},{c,$Y}];
date_dur_fmt(_,M,_) when M > 0 ->
   [{c,$P},{b,M},{c,$M}];
date_dur_fmt(_,_,D) when D > 0 ->
   [{c,$P},{b,D},{c,$D}];
date_dur_fmt(_,_,_) ->
   [{c,$P}].

%% flat_form(Format,Things) ->
%%    L = io_lib:format(Format, Things),
%%    lists:flatten(L).

%%    i,
%%    {c,Char},
%%    {b,Int},
%%    {b2,Int},
%%    {b4,Int},
%%    {s,Str},

build_string_from_format(F) ->
   case xqerl_lib:lget({build_string_from_format,F}) of
      [] ->
         V1 = build_string_from_format_1(F),
         xqerl_lib:lput({build_string_from_format,F}, V1),
         V1;
      V ->
         V
   end.

build_string_from_format_1([]) -> [];
build_string_from_format_1([i|Rest]) ->
   build_string_from_format_1(Rest);
build_string_from_format_1([{c,C}|Rest]) ->
   [C|build_string_from_format_1(Rest)];
build_string_from_format_1([{b,Int}|Rest]) -> 
   integer_to_list(Int) ++ build_string_from_format_1(Rest);
build_string_from_format_1([{b2,Int}|Rest]) when Int < 10 -> 
   [$0|integer_to_list(Int)] ++ build_string_from_format_1(Rest);
build_string_from_format_1([{b2,Int}|Rest]) when Int < 100 -> 
   integer_to_list(Int) ++ build_string_from_format_1(Rest);
build_string_from_format_1([{b4,Int}|Rest]) when Int < 10 -> 
   [$0,$0,$0|integer_to_list(Int)] ++ build_string_from_format_1(Rest);
build_string_from_format_1([{b4,Int}|Rest]) when Int < 100 -> 
   [$0,$0|integer_to_list(Int)] ++ build_string_from_format_1(Rest);
build_string_from_format_1([{b4,Int}|Rest]) when Int < 1000 -> 
   [$0|integer_to_list(Int)] ++ build_string_from_format_1(Rest);
build_string_from_format_1([{b4,Int}|Rest]) when Int < 10000 -> 
   integer_to_list(Int) ++ build_string_from_format_1(Rest);
build_string_from_format_1([{s,Str}|Rest]) -> 
   Str ++ build_string_from_format_1(Rest).
