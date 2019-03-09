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

%% @doc Helper functions for parsing dateTime values to/from string 

-module(xqerl_datetime).

-export([get_from_now/1]).
-export([get_from_now_local/1]).

-export([ymd_is_valid/3]).

% string parsers
-export([string_to_date/1,
         string_to_dateTime/1,
         string_to_dateTimeStamp/1,
         string_to_dayTimeDuration/1,
         string_to_duration/1,
         string_to_gDay/1,
         string_to_gMonth/1,
         string_to_gMonthDay/1,
         string_to_gYear/1,
         string_to_gYearMonth/1,
         string_to_time/1,
         string_to_yearMonthDuration/1
        ]).

-export([to_string/2]).
-export([align_to_timezone/2]).

-define(digit(H), H >= $0, H =< $9).
-define(xav(T,V),  #xqAtomicValue{type = T, value = V}).
-define(str(Val), ?xav('xs:string',Val)).
-define(THROW(E), _:#xqError{} = E -> throw(E)).

-define(MAXYEAR, (1 bsl 32) - 1).
-define(MAXDAY, (?MAXYEAR * 365)).

-include("xqerl.hrl").

%-define(T(A,B),io:format("~p: ~p~n",[A,B])).


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
   <<"PT0S">>;
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
   <<"PT0S">>;
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
   <<"P0M">>;
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
   <<"PT0S">>;
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
   try calendar:date_to_gregorian_days(abs(Y), M, D) of
      _ -> true         
   catch _:_ -> false
   end.

align_to_timezone(Arg1,[]) ->
   #xqAtomicValue{type = Type, 
                  value = #xsDateTime{} = Val
                 } = xqerl_seq3:singleton_value(Arg1),
   NewDtTmWOs = Val#xsDateTime{offset = []},
   Str = to_string(NewDtTmWOs, Type),
   #xqAtomicValue{type = Type, 
                  value = NewDtTmWOs#xsDateTime{string_value = Str}};
align_to_timezone(Arg1,Arg2) ->
   #xqAtomicValue{type = Type, 
                  value = #xsDateTime{offset = Os} = Val
                 } = xqerl_seq3:singleton_value(Arg1),
   ArgDurStr  = case Os of
                   [] -> <<>>;
                   _ -> to_string(Os,'xs:dayTimeDuration')
                end,
   AdjDurStr = case xqerl_seq3:singleton_value(Arg2) of
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
   if ArgDurStr =:= <<>> ->
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
         <<$0,Str/binary>>;
      _ ->
         Str
   end.


year_fmt(Year) when Year =< 9999, Year >= -9999 -> {b4,Year};
year_fmt(Year) -> {b,Year}.

sign_fmt('+') -> i;
sign_fmt('-') -> {c,$-};
sign_fmt($+) -> i;
sign_fmt($-) -> {c,$-}.

offset_str([]) -> <<>>;
offset_str(#off_set{hour = 0, min = 0}) -> <<"Z">>;
offset_str(#xqAtomicValue{type = 'xs:dayTimeDuration',
                          value = #xsDateTime{hour = 0, minute = 0}}) -> <<"Z">>;
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
      <<$0,R/binary>> -> R;
      R -> R
   end.

offset_fmt(_,  0,0) -> [{c,$Z}];
offset_fmt('-',H,M) -> [{c,$-},{b2,H},{c,$:},{b2,M}];
offset_fmt('+',H,M) -> [{c,$+},{b2,H},{c,$:},{b2,M}].
   

time_dur_fmt(0,0,<<"0">>) ->
   [i];
time_dur_fmt(H,M,Sec) when H > 0, M > 0, Sec =/= <<"0">> ->
   [{c,$T},{b,H},{c,$H},{b,M},{c,$M},{s,Sec},{c,$S}];
time_dur_fmt(H,M,_) when H > 0, M > 0 ->
   [{c,$T},{b,H},{c,$H},{b,M},{c,$M}];
time_dur_fmt(H,_,Sec) when H > 0, Sec =/= <<"0">> ->
   [{c,$T},{b,H},{c,$H},{s,Sec},{c,$S}];
time_dur_fmt(_,M,Sec) when M > 0, Sec =/= <<"0">> ->
   [{c,$T},{b,M},{c,$M},{s,Sec},{c,$S}];
time_dur_fmt(H,_,_) when H > 0 ->
   [{c,$T},{b,H},{c,$H}];
time_dur_fmt(_,M,_) when M > 0 ->
   [{c,$T},{b,M},{c,$M}];
time_dur_fmt(_,_,Sec) when Sec =/= <<"0">> ->
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
      undefined ->
         V1 = build_string_from_format_1(F),
         xqerl_lib:lput({build_string_from_format,F}, V1),
         V1;
      V ->
         V
   end.

-define(BIN(V), (V)/binary).


% TODO flip binary to append operation
build_string_from_format_1([]) -> <<>>;
build_string_from_format_1([i|Rest]) ->
   build_string_from_format_1(Rest);
build_string_from_format_1([{c,C}|Rest]) ->
   <<C,?BIN(build_string_from_format_1(Rest))>>;
build_string_from_format_1([{b,Int}|Rest]) -> 
   <<?BIN(integer_to_binary(Int)), ?BIN(build_string_from_format_1(Rest)) >>;
build_string_from_format_1([{b2,Int}|Rest]) when Int < 10 -> 
   <<$0,?BIN(integer_to_binary(Int)), ?BIN(build_string_from_format_1(Rest))>>;
build_string_from_format_1([{b2,Int}|Rest]) when Int < 100 -> 
   <<?BIN(integer_to_binary(Int)), ?BIN(build_string_from_format_1(Rest))>>;
build_string_from_format_1([{b4,Int}|Rest]) when Int < 10 -> 
   <<$0,$0,$0,?BIN(integer_to_binary(Int)), ?BIN(build_string_from_format_1(Rest))>>;
build_string_from_format_1([{b4,Int}|Rest]) when Int < 100 -> 
   <<$0,$0,?BIN(integer_to_binary(Int)), ?BIN(build_string_from_format_1(Rest))>>;
build_string_from_format_1([{b4,Int}|Rest]) when Int < 1000 -> 
   <<$0,?BIN(integer_to_binary(Int)), ?BIN(build_string_from_format_1(Rest))>>;
build_string_from_format_1([{b4,Int}|Rest]) when Int < 10000 -> 
   <<?BIN(integer_to_binary(Int)), ?BIN(build_string_from_format_1(Rest))>>;
build_string_from_format_1([{s,Str}|Rest]) when is_list(Str) -> 
   <<?BIN(list_to_binary(Str)), ?BIN(build_string_from_format_1(Rest))>>;
build_string_from_format_1([{s,Str}|Rest]) when is_integer(Str) ->
   <<Str, ?BIN(build_string_from_format_1(Rest))>>;
build_string_from_format_1([{s,Str}|Rest]) ->
   <<?BIN(Str), ?BIN(build_string_from_format_1(Rest))>>.



string_to_date(String) ->
   try
      Bin = xqerl_lib:trim(String),
      {Sign,Year,Mon,Day,Rest} = date_bin_to_ymd(Bin),
      Offset = tz_bin_to_offset(Rest),
      Rec = #xsDateTime{sign = Sign,
                        year = Year, 
                        month = Mon, 
                        day = Day, 
                        offset = Offset},
      Str = xqerl_datetime:to_string(Rec,'xs:date'),
      Dt = ?xav('xs:date', set_date_string(Rec, Str)),
      if Year > ?MAXYEAR -> ?err('FODT0001');
         Offset == [] ->
            Dt;
         true ->
            #off_set{hour = Hour, min = Min} = Offset,
            if Hour >= 24 -> ?err('FORG0001'); % only no min/sec is okay with hour 24
               Min  >= 60 -> ?err('FORG0001'); % only no min/sec is okay with hour 24
               true ->
                  Dt
            end
      end
   catch
      ?THROW(E);
      _:_ -> ?err('FORG0001')
   end.


string_to_dateTime(String) ->
   try
      Bin = xqerl_lib:trim(String),
      {Sign,Year,Mon,Day,Rest} = date_bin_to_ymd(Bin),
      %io:format("~p~n",[Rest]),
      {Hour,Min,Sec,Rest1} = time_bin_to_hms(Rest),
      Offset = tz_bin_to_offset(Rest1),
      Rec = #xsDateTime{sign   = Sign,
                        year   = Year, 
                        month  = Mon, 
                        day    = Day,
                        hour   = Hour,
                        minute = Min,
                        second = Sec, 
                        offset = Offset},
      SecFlt = xqerl_numeric:double(Sec),
      if Hour   == 24 andalso Min == 0 andalso SecFlt == 0 -> 
            ZeroDur = string_to_dayTimeDuration(<<"PT0S">>),
            Str = xqerl_datetime:to_string(Rec,'xs:dateTime'),
            Dt = ?xav('xs:dateTime', set_date_string(Rec, Str)),
            xqerl_operators:add(Dt, ZeroDur);
         Hour   >= 24 -> ?err('FORG0001'); % only no min/sec is okay with hour 24
         Min    >= 60 -> ?err('FORG0001'); % only no min/sec is okay with hour 24
         SecFlt >= 60 -> ?err('FORG0001'); % only no min/sec is okay with hour 24
         Year > ?MAXYEAR -> ?err('FODT0001');
         true ->
            Str = xqerl_datetime:to_string(Rec,'xs:dateTime'),
            ?xav('xs:dateTime', set_date_string(Rec, Str))
      end
   catch ?THROW(E);
         _:_ ->
            ?err('FORG0001')
   end.

string_to_dateTimeStamp(String) ->
   Bin = xqerl_lib:trim(String),
   {Sign,Year,Mon,Day,Rest} = date_bin_to_ymd(Bin),
   {Hour,Min,Sec,Rest1} = time_bin_to_hms(Rest),
   Offset = tz_bin_to_offset(Rest1),
   if Offset == [] -> ?err('FORG0001');
      true ->
         Rec = #xsDateTime{sign   = Sign,
                           year   = Year, 
                           month  = Mon, 
                           day    = Day,
                           hour   = Hour,
                           minute = Min,
                           second = Sec, 
                           offset = Offset},
         Str = xqerl_datetime:to_string(Rec,'xs:dateTime'),
         Dt = ?xav('xs:dateTime', set_date_string(Rec, Str)),
         if Hour == 24 ->
               OneDur = string_to_dayTimeDuration(<<"P1D">>),
               xqerl_operators:add(Dt, OneDur);
            Hour >= 24 -> ?err('FORG0001'); % only no min/sec is okay with hour 24
            Min  >= 60 -> ?err('FORG0001'); % only no min/sec is okay with hour 24
            Sec  >= 60 -> ?err('FORG0001'); % only no min/sec is okay with hour 24
            Year > ?MAXYEAR -> ?err('FODT0001');
            true ->
               Dt
         end
   end.

string_to_dayTimeDuration(String) ->
   try
      Bin = xqerl_lib:trim(String),
      {Sign,Day,Hour,Min,Sec} = daytimedur_bin_to_dhms(Bin),
      Rec = #xsDateTime{sign   = Sign,
                        year   = 0, 
                        month  = 0, 
                        day    = Day,
                        hour   = Hour,
                        minute = Min,
                        second = Sec},
      if Day > ?MAXDAY ->
            ?err('FODT0002');
         true ->
            Str = xqerl_datetime:to_string(Rec,'xs:dayTimeDuration'),
            ?xav('xs:dayTimeDuration', set_date_string(Rec, Str))
      end
   catch
      ?THROW(E);
      _:_:ST ->
         io:format("~p~n",[ST]),
         ?err('FORG0001')
   end.

string_to_duration(String) -> 
   try
      Bin = xqerl_lib:trim(String),
      {Sign,Year,Mon,Day,Hour,Min,Sec} = dur_bin_to_ymdhms(Bin),
      Rec = #xsDateTime{sign   = Sign,
                        year   = Year, 
                        month  = Mon, 
                        day    = Day,
                        hour   = Hour,
                        minute = Min,
                        second = Sec},
      Str = xqerl_datetime:to_string(Rec,'xs:duration'),
      ?xav('xs:duration', set_date_string(Rec, Str))
   catch
      ?THROW(E);
      _:_ -> ?err('FORG0001')
   end.

string_to_gDay(String) ->
   try
      Bin = xqerl_lib:trim(String),
      <<$-,$-,$-,D1,D2,Rest/binary>> = Bin,
      Offset = tz_bin_to_offset(Rest),
      Day = list_to_integer([D1,D2]),
      if Day < 32 andalso Day > 0 ->
         Rec = #xsDateTime{year   = 0, 
                           month  = 0, 
                           day    = Day,
                           hour   = 0,
                           minute = 0,
                           second = xqerl_numeric:decimal(0), 
                           offset = Offset},
         Str = xqerl_datetime:to_string(Rec,'xs:gDay'),
         ?xav('xs:gDay', set_date_string(Rec, Str));
         true ->
            throw({error,bad_date})
      end
   catch ?THROW(E);
         _:_ -> ?err('FORG0001')
   end.

string_to_gMonth(String) ->
   try
      Bin = xqerl_lib:trim(String),
      <<$-,$-,M1,M2,Rest/binary>> = Bin,
      Offset = tz_bin_to_offset(Rest),
      Mon = list_to_integer([M1,M2]),
      if Mon < 13 andalso Mon > 0 ->
         Rec = #xsDateTime{year   = 0, 
                           month  = Mon, 
                           day    = 0,
                           hour   = 0,
                           minute = 0,
                           second = xqerl_numeric:decimal(0), 
                           offset = Offset},
         Str = xqerl_datetime:to_string(Rec,'xs:gMonth'),
         ?xav('xs:gMonth', set_date_string(Rec, Str));
         true ->
            throw({error,bad_date})
      end
   catch ?THROW(E);
         _:_ -> ?err('FORG0001')
   end.

string_to_gMonthDay(String) ->
   try
      Bin = xqerl_lib:trim(String),
      <<$-,$-,M1,M2,$-,D1,D2,Rest/binary>> = Bin,
      Offset = tz_bin_to_offset(Rest),
      Mon = list_to_integer([M1,M2]),
      Day = list_to_integer([D1,D2]),
      case is_valid_month_day(Mon,Day) of
         true ->
            Rec = #xsDateTime{year   = 0, 
                              month  = Mon, 
                              day    = Day,
                              hour   = 0,
                              minute = 0,
                              second = xqerl_numeric:decimal(0), 
                              offset = Offset},
            Str = xqerl_datetime:to_string(Rec,'xs:gMonthDay'),
            ?xav('xs:gMonthDay', set_date_string(Rec, Str));
         _ ->
            throw({error,bad_date})
      end
   catch ?THROW(E);
         _:_ -> ?err('FORG0001')
   end.

%In casting to xs:date, xs:dateTime, xs:gYear, or xs:gYearMonth (or types derived from these), 
%% if the value is too large or too small to be represented by the implementation, 
%% a dynamic error [err:FODT0001] is raised.
string_to_gYear(String) ->
   try
      Bin = xqerl_lib:trim(String),
      {Sign, Rest} = get_sign(Bin),
      {Year, Rest1} = get_gyear(Rest),
      Offset = tz_bin_to_offset(Rest1),
      Rec = #xsDateTime{sign   = Sign,
                        year   = Year, 
                        month  = 0, 
                        day    = 0,
                        hour   = 0,
                        minute = 0,
                        second = xqerl_numeric:decimal(0), 
                        offset = Offset},
      if Year == 0 ->
            ?err('FORG0001');
         Year > ?MAXYEAR ->
            ?err('FODT0001');
         true ->
            Str = xqerl_datetime:to_string(Rec,'xs:gYear'),
            ?xav('xs:gYear', set_date_string(Rec, Str))
      end
   catch ?THROW(E);
         _:_ -> 
            ?err('FORG0001')
   end.

string_to_gYearMonth(String) -> % MAYBE castable
   try
      Bin = xqerl_lib:trim(String),
      {Sign, Rest} = get_sign(Bin),
      {Year, Rest1} = get_year(Rest),
      <<M1,M2,Rest2/binary>> = Rest1,
      Offset = tz_bin_to_offset(Rest2),
      Mon  = list_to_integer([M1,M2]),
      if Mon < 1 orelse Mon > 12 orelse Year == 0 ->
            ?err('FORG0001');
         Year > ?MAXYEAR ->
            ?err('FODT0001');
         true ->
            Rec = #xsDateTime{sign   = Sign,
                              year   = Year, 
                              month  = Mon, 
                              day    = 0,
                              hour   = 0,
                              minute = 0,
                              second = xqerl_numeric:decimal(0), 
                              offset = Offset},
            Str = xqerl_datetime:to_string(Rec,'xs:gYearMonth'),
            ?xav('xs:gYearMonth', set_date_string(Rec, Str))
      end
   catch
      ?THROW(E);
      _:_ -> ?err('FORG0001')
   end.

string_to_time(String) ->
   try
      %24:00:00
      Bin = <<"T", (xqerl_lib:trim(String))/binary >>,
      {Hour,Min,Sec,Rest} = time_bin_to_hms(Bin),
      Offset = tz_bin_to_offset(Rest),
      SecFlt = xqerl_numeric:float(Sec),
      Hour1 = if Hour == 24 andalso Min == 0 andalso SecFlt == 0 ->
                    0;
                 Hour >= 24 -> ?err('FORG0001'); % only no min/sec is okay with hour 24
                 true ->
                    Hour
              end,
      Rec = #xsDateTime{hour   = Hour1,
                        minute = Min,
                        second = Sec, 
                        offset = Offset},
      if Hour1  >= 24 ; % only no min/sec is okay with hour 24
         Min    >= 60 ; % only no min/sec is okay with hour 24
         SecFlt >= 60 -> ?err('FORG0001'); % only no min/sec is okay with hour 24
         true ->
            Str = xqerl_datetime:to_string(Rec,'xs:time'),
            ?xav('xs:time', set_date_string(Rec, Str))
      end
   catch
      ?THROW(E);
      _:_ -> ?err('FORG0001')
   end.

string_to_yearMonthDuration(String) ->
   try
      Bin = xqerl_lib:trim(String),
      {Sign, Bin1} = case Bin of
                        <<$-,$P,R/binary>> ->
                           {'-', <<R/binary>>};
                        <<$P,R/binary>> ->
                           {'+', <<R/binary>>}
                       end,
      {Year,Mon,<<>>} = ymdur_bin_to_ym(Bin1),
      % push up the ladder
      Rec = #xsDateTime{sign   = Sign,
                        year   = Year, 
                        month  = Mon, 
                        day    = 0,
                        hour   = 0,
                        minute = 0,
                        second = xqerl_numeric:decimal(0)},
      Str = xqerl_datetime:to_string(Rec,'xs:yearMonthDuration'),
      ?xav('xs:yearMonthDuration', set_date_string(Rec, Str))
   catch
      ?THROW(E);
      _:_ -> ?err('FORG0001')
   end.

set_date_string(Rec, Str) ->
   Rec#xsDateTime{string_value = Str}.






tz_bin_to_offset(Bin) ->
   try
      case Bin of
         <<>> ->
            [];
         <<"Z">> ->
            #off_set{};
         <<P,Ho1,Ho2,$:,Mio1,Mio2>> when Mio1 >= $0, Mio1 =< $9,
                                         Mio2 >= $0, Mio2 =< $9,
                                         Ho1 >= $0, Ho1 =< $9,
                                         Ho2 >= $0, Ho2 =< $9 ->
            Ho  = list_to_integer([P,Ho1,Ho2]), 
            Mio = list_to_integer([Mio1,Mio2]), 
            if Mio =< 59 ->
                  Sign = if P == $- andalso Ho == 0 andalso Mio == 0 -> '+';
                            P == $- -> '-';
                            P == $+ -> '+'
                         end,
                  if abs(Ho) < 14 orelse (abs(Ho) == 14 andalso Mio == 00) ->
                        #off_set{sign = Sign, hour = abs(Ho), min = Mio};
                     true ->
                        throw({error,bad_offset})
                  end;
               true ->
                  throw({error,bad_offset})
            end;
         _ ->
            throw({error,bad_offset})
      end
   catch
      ?THROW(E);
      _:_ -> 
         throw({error,bad_offset})
   end.  




time_bin_to_hms(Bin) ->
   try
      case Bin of
         <<$T,H1,H2,$:,M1,M2,$:,S1,S2,Rest/binary>> 
            when (H1 >= $0 andalso H1 =< $9),
                 (H2 >= $0 andalso H2 =< $9),
                 (M1 >= $0 andalso M1 =< $9),
                 (M2 >= $0 andalso M2 =< $9),
                 (S1 >= $0 andalso S1 =< $9),
                 (S2 >= $0 andalso S2 =< $9) ->
            Hour = list_to_integer([H1,H2]),
            Min  = list_to_integer([M1,M2]),
            Sec  = [S1,S2],
            case Rest of
               <<$.,R/binary>> ->
                  L = binary_to_list(R),
                  Tk = fun(E) -> E >= $0 andalso E =< $9 end,
                  Fract = lists:takewhile(Tk, L),
                  RestL = lists:subtract(L, Fract),
                  Sec1 = list_to_binary(Sec ++ "." ++ Fract),
                  {Hour,Min,xqerl_numeric:decimal(Sec1),list_to_binary(RestL)};
               _ ->
                  {Hour,Min,xqerl_numeric:decimal(list_to_binary(Sec)),Rest}
            end;
         _ ->
            ?err('FORG0001')
      end
   catch
      ?THROW(E);
      _:{badmatch,_} -> ?err('FORG0001');
      _:badarg -> ?err('FORG0001');
      _:_ ->  
         ?err('FODT0001')
   end.

timedur_bin_to_hms(Bin) ->
   {Hour,Rest} = case binary:split(Bin, <<"H">>) of
                    [HourBin,R] ->
                       {binary_to_integer(HourBin),R};
                    [R] ->
                       {0,R}
                 end,
   {Min,Rest1} = case binary:split(Rest, <<"M">>) of
                    [MinBin,R1] ->
                       {binary_to_integer(MinBin),R1};
                    [R1] ->
                       {0,R1}
                 end,
   Sec =   case binary:split(Rest1, <<"S">>) of
              [SecBin,<<>>] ->
                 xqerl_numeric:decimal(SecBin);
              [_,_] ->
                 ?err('FORG0001');
              [<<>>] ->
                 xqerl_numeric:decimal(0);
              [_R2] -> % timezone not allowed
                 ?err('FORG0001')
           end,
   %?dbg("{Bin,Hour,Min,Sec}",{Bin,Hour,Min,Sec}),
   {Hour,Min,Sec}.

ymdur_bin_to_ym(<<>>) -> ?err('FORG0001');
ymdur_bin_to_ym(Bin) ->
   {Year,Rest} = case binary:split(Bin, <<"Y">>) of
                    [YearBin,R] ->
                       {binary_to_integer(YearBin),R};
                    [R] ->
                       {0,R}
                 end,
   {Mon,Rest1} = case binary:split(Rest, <<"M">>) of
                    [MonBin,R1] ->
                       {binary_to_integer(MonBin),R1};
                    [R1] ->
                       {0,R1}
                 end,
   {Mon1, Year1} = shift_units(Mon, Year, 12),
   _ = if Year1 > ?MAXYEAR -> 
             ?err('FODT0002');
          true ->
             ok
       end,      
   {Year1,Mon1,Rest1}.

daytimedur_bin_to_dhms(Bin) ->
   %?dbg("Bin",Bin),
   % negative duration
   {Sign, Bin1} = case Bin of
                     <<$-,$P,R/binary>> ->
                        {'-', <<R/binary>>};
                     <<$P,R/binary>> ->
                        {'+', <<R/binary>>}
                    end,
   {DayPart,TimePart} = get_day_time_parts(Bin1),
   Day = if DayPart == <<>> -> 0;
            true ->
               [DayNum] = binary:split(DayPart, <<"D">>, [trim]),
               binary_to_integer(DayNum)
         end,
   {Hour,Min,Sec} = timedur_bin_to_hms(TimePart),
   % push values up the ladder
   SecTotal = xqerl_numeric:add(Sec, Min * 60),
   MI1 = xqerl_numeric:truncate(SecTotal) div 60,
   SS1 = xqerl_numeric:subtract(SecTotal, MI1 * 60),
   {MI2, HH1} = shift_units(MI1, Hour, 60),
   {HH2, D1}  = shift_units(HH1, Day, 24),
   {Sign,D1,HH2,MI2,SS1}.

dur_bin_to_ymdhms(Bin) ->
   % negative duration
   {Sign, Bin1} = case Bin of
                     <<$-,$P,R/binary>> ->
                        {'-', <<R/binary>>};
                     <<$P,R/binary>> ->
                        {'+', <<R/binary>>}
                    end,
   {DayPart,TimePart} = get_day_time_parts(Bin1),
   {Year,Mon,Rest} = if DayPart == <<>> ->
                           {0,0,<<>>};
                        true ->
                           ymdur_bin_to_ym(DayPart)
                     end,
   Day = if Rest == <<>> -> 0;
            true ->
               [DayNum] = binary:split(Rest, <<"D">>, [trim]),
               binary_to_integer(DayNum)
         end,
   {Hour,Min,Sec} = timedur_bin_to_hms(TimePart),
   % push values up the ladder
   {Mon1, Year1} = shift_units(Mon, Year, 12),
   % push values up the ladder
   SecTotal = xqerl_numeric:add(Sec, Min * 60),
   MI1 = xqerl_numeric:truncate(SecTotal) div 60,
   SS1 = xqerl_numeric:subtract(SecTotal, MI1 * 60),
   {MI2, HH1} = shift_units(MI1, Hour, 60),
   {HH2, D1}  = shift_units(HH1, Day, 24),
   _ = if Year1 > ?MAXYEAR;
          D1 > ?MAXDAY ->
             ?err('FODT0002');
          true ->
             ok
       end,      
   {Sign,Year1,Mon1,D1,HH2,MI2,SS1}.

% returns {NewSmall, NewLarge}
shift_units(Small, Large, Size) ->
   {Small rem Size, Large + Small div Size}.

get_day_time_parts(<<>>) -> ?err('FORG0001');
get_day_time_parts(Bin) ->
   case binary:split(Bin,<<"T">>) of
      [_D,<<>>] ->
         ?err('FORG0001');
      [D,T] ->
         {D,T};
      [D] ->
         {D,<<>>}
   end.

is_valid_month_day(1,Day) when Day >= 1, Day =< 31 -> true;
is_valid_month_day(2,Day) when Day >= 1, Day =< 29 -> true;
is_valid_month_day(3,Day) when Day >= 1, Day =< 31 -> true;
is_valid_month_day(4,Day) when Day >= 1, Day =< 30 -> true;
is_valid_month_day(5,Day) when Day >= 1, Day =< 31 -> true;
is_valid_month_day(6,Day) when Day >= 1, Day =< 30 -> true;
is_valid_month_day(7,Day) when Day >= 1, Day =< 31 -> true;
is_valid_month_day(8,Day) when Day >= 1, Day =< 31 -> true;
is_valid_month_day(9,Day) when Day >= 1, Day =< 30 -> true;
is_valid_month_day(10,Day) when Day >= 1, Day =< 31 -> true;
is_valid_month_day(11,Day) when Day >= 1, Day =< 30 -> true;
is_valid_month_day(12,Day) when Day >= 1, Day =< 31 -> true;
is_valid_month_day(_Mon,_Day) -> false.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

date_bin_to_ymd(Bin) ->
   try
      {Sign,Bin1} = get_sign(Bin),
      {Year,Bin2} = get_year(Bin1),
      {Mon, Bin3} = get_month(Bin2),
      {Day, Bin4} = get_day(Bin3),
      true = ymd_is_valid(Year,Mon,Day),
      {Sign,Year,Mon,Day,Bin4}
   catch
      _:_ -> 
         throw({error,bad_ymd})
   end.

get_sign(<<$-,Rest/binary>>) ->
   {'-',Rest};
get_sign(Rest) ->
   {'+',Rest}.

get_year(Bin1) ->
   {YearDigits,Bin2} = get_digits_til_minus(Bin1,[]),
   case YearDigits of
      [$0|R] when length(R) >= 4 ->
         throw({error,bad_year});
      R when length(R) < 4 ->
         throw({error,bad_year});
      _ ->
         {list_to_integer(YearDigits), Bin2}
   end.

get_gyear(Bin1) ->
   {YearDigits,Bin2} = get_digits_with_minus(Bin1,[]),
   case YearDigits of
      [$0|R] when length(R) >= 4 ->
         throw({error,bad_gyear});
      R when length(R) < 4 ->
         throw({error,bad_gyear});
      _ ->
         {list_to_integer(YearDigits), Bin2}
   end.

get_month(<<M1,M2,$-,Rest/binary>>) when ?digit(M1), ?digit(M2) ->
   {list_to_integer([M1,M2]), Rest};
get_month(_) ->
   throw({error,bad_month}).

get_day(<<D1,D2,Rest/binary>>) when ?digit(D1), ?digit(D2) ->
   {list_to_integer([D1,D2]), Rest};
get_day(_) ->
   throw({error,bad_day}). % must be Monday
   


get_digits_with_minus(<<C,$-,Rest/binary>>, Acc) when ?digit(C)->
   {lists:reverse([C|Acc]), <<$-,Rest/binary>>};
get_digits_with_minus(<<C,Rest/binary>>, Acc) when ?digit(C)->
   get_digits_with_minus(Rest,[C|Acc]);
get_digits_with_minus(<<Rest/binary>>, Acc) ->
   {lists:reverse(Acc), Rest};
get_digits_with_minus(_,_) ->
   throw({error,bad_digits}).

get_digits_til_minus(<<C,$-,Rest/binary>>, Acc) when ?digit(C)->
   {lists:reverse([C|Acc]), Rest};
get_digits_til_minus(<<C,Rest/binary>>, Acc) when ?digit(C)->
   get_digits_til_minus(Rest,[C|Acc]);
get_digits_til_minus(_,_) ->
   throw({error,bad_digits}).
