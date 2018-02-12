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
   SN = sign_str(Sign),
   Offset = offset_str(OS),
   flat_form("~s~s-~2..0b-~2..0bT~2..0b:~2..0b:~s~s",
             [SN,year_str(Y),M,D,HH,MI,sec_str(SS),Offset]);

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
   SN = sign_str(Sign),
   DT = date_dur_str(0,0,D),
   TM = time_dur_str(HH,MI,SS),
   lists:append([SN, DT, TM]);

to_string(#off_set{sign = _,
                   hour = 0,
                   min  = 0},
          'xs:dayTimeDuration') ->
   "PT0S";
to_string(#off_set{sign = Sign,
                   hour = HH,
                   min  = MI},
          'xs:dayTimeDuration') ->
   SN = sign_str(Sign),
   TM = time_dur_str(HH,MI,0),
   lists:append([SN, "P", TM]);

to_string(#xsDateTime{sign     = _,
                      year     = 0,
                      month    = 0},
          'xs:yearMonthDuration') ->
   "P0M";
to_string(#xsDateTime{sign     = Sign,
                      year     = Y,
                      month    = M},
          'xs:yearMonthDuration') ->
   SN = sign_str(Sign),
   DT = date_dur_str(Y,M,0),
   lists:append([SN, DT]);

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
   SN = sign_str(Sign),
   DT = date_dur_str(Y,M,D),
   TM = time_dur_str(HH,MI,SS),
   lists:append([SN, DT, TM]);

to_string(#xsDateTime{hour     = Hour,
                      minute   = Min,
                      second   = Sec,
                      offset   = OS},
          'xs:time') ->
   Offset = offset_str(OS),
   flat_form( "~2..0b:~2..0b:~s~s",[Hour,Min,sec_str(Sec),Offset]);

to_string(#xsDateTime{sign     = Sign,
                      year     = Y,
                      month    = M,
                      day      = D,
                      offset   = OS},
          'xs:date') ->
   Offset = offset_str(OS),
   flat_form("~s~s-~2..0b-~2..0b~s", [sign_str(Sign),year_str(Y),M,D,Offset]);

to_string(#xsDateTime{day      = D,
                      offset   = OS},
          'xs:gDay') ->
   Offset = offset_str(OS),
   flat_form("---~2..0b~s", [D,Offset]);

to_string(#xsDateTime{month    = M,
                      offset   = OS},
          'xs:gMonth') ->
   Offset = offset_str(OS),
   flat_form("--~2..0b~s", [M,Offset]);

to_string(#xsDateTime{sign   = Sign,
                      year   = Y,
                      offset = OS},
          'xs:gYear') ->
   Offset = offset_str(OS),
   SN = sign_str(Sign),
   flat_form("~s~s~s", [SN,year_str(Y),Offset]);

to_string(#xsDateTime{sign   = Sign,
                      year   = Y,
                      month  = M,
                      offset = OS},
          'xs:gYearMonth') ->
   Offset = offset_str(OS),
   SN = sign_str(Sign),
   flat_form("~s~s-~2..0b~s", [SN,year_str(Y),M,Offset]);

to_string(#xsDateTime{day      = D,
                      month    = M,
                      offset   = OS},
          'xs:gMonthDay') ->
   Offset = offset_str(OS),
   flat_form("--~2..0b-~2..0b~s", [M,D,Offset]).


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

year_str(Year) when abs(Year) > 9999 ->
   io_lib:format("~b",[Year]);
year_str(Year) ->
   io_lib:format("~4..0b",[abs(Year)]).

sign_str($+) ->
  "";
sign_str($-) ->
  "-";
sign_str('+') ->
  "";
sign_str('-') ->
  "-".

offset_str([]) ->
   "";
offset_str(#off_set{hour = 0, min = 0}) -> "Z";
offset_str(#xqAtomicValue{type = 'xs:dayTimeDuration',
                          value = #xsDateTime{hour = 0, minute = 0}}) -> "Z";
offset_str(#off_set{sign = OS, hour = OH, min = OM}) ->
   if (OH * 60 + OM) > 840 ->
         ?err('FODT0003');
      true ->
         flat_form("~s~2..0b:~2..0b",[atom_to_list(OS), OH,OM])
   end;
offset_str(#xqAtomicValue{type = 'xs:dayTimeDuration',
                          value = #xsDateTime{sign = OS, 
                                              hour = OH, 
                                              minute = OM}}) ->
   flat_form("~s~2..0b:~2..0b", [atom_to_list(OS), OH,OM]).

time_dur_str(H,M,S) ->
   SStr = case sec_str(S) of
             [$0|R] ->
                R;
             R ->
                R
          end,
   if H =:= 0 andalso M =:= 0 andalso SStr == "0" -> "";
      true -> 
         Hf = if H > 0 -> "~bH";
                 true -> "~i"
              end,
         Mf = if M > 0 -> "~bM";
                 true -> "~i"
              end,
         Sf = if SStr == "0" -> "";
                 true -> SStr ++ "S"
              end,
         F = lists:append(["T", Hf, Mf, Sf]),
         flat_form(F, [H,M])
   end.

date_dur_str(Y,M,D) ->
   Yf = if Y > 0 -> "~bY";
           true -> "~i"
        end,
   Mf = if M > 0 -> "~bM";
           true -> "~i"
        end,
   Df = if D > 0 -> "~bD";
           true -> "~i"
        end, 
   F = lists:append(["P", Yf, Mf, Df]),
   flat_form(F, [Y,M,D]).

flat_form(Format,Things) ->
   lists:flatten(io_lib:format(Format, Things)).
