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

%% @doc Helper functions for parsing dateTime values from string and outputting to string 

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
   #xqAtomicValue{type = 'xs:dateTime', value = Ret#xsDateTime{string_value = to_string(Ret,'xs:dateTime')}}
   .

get_from_now_local(Now) ->
   {_,_,Micro} = Now,
   Millis =  Micro div 1000,
   {{Y,M,D}, {HH,MI,SS}} = calendar:now_to_local_time(Now),
   Loc = calendar:datetime_to_gregorian_seconds({{Y,M,D}, {HH,MI,SS}}),
   Utc = calendar:datetime_to_gregorian_seconds(calendar:now_to_universal_time(Now)),
   Dif = Loc - Utc,
   {{_,_,_},{Hd,Md,_}} = calendar:gregorian_seconds_to_datetime(Dif),
   Ret = #xsDateTime{
            year = Y,
            month = M,
            day = D,
            hour = HH,
            minute = MI,
            second = SS + (Millis / 1000),
            offset = #off_set{hour = Hd, min = Md}
         },
   #xqAtomicValue{type = 'xs:dateTime', value = Ret#xsDateTime{string_value = to_string(Ret,'xs:dateTime')}}.



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
   lists:flatten(io_lib:format("~s~s-~2..0b-~2..0bT~2..0b:~2..0b:~s~s", [SN,year_str(Y),M,D,HH,MI,sec_str(SS),Offset]));

to_string(#xsDateTime{sign     = Sign,
                      day      = D,
                      hour     = HH,
                      minute   = MI,
                      second   = SS},
          'xs:dayTimeDuration') ->
   if D =:= 0 andalso HH =:= 0 andalso MI =:= 0 andalso SS == 0 ->
         "PT0S";
      true ->
         SN = sign_str(Sign),
         DT = date_dur_str(0,0,D),
         TM = time_dur_str(HH,MI,SS),
         SN ++ DT ++ TM
   end;

to_string(#off_set{sign = Sign,
                   hour = HH,
                   min  = MI},
          'xs:dayTimeDuration') ->
   if HH =:= 0 andalso MI =:= 0 ->
         "PT0S";
      true ->
         SN = sign_str(Sign),
         TM = time_dur_str(HH,MI,0),
         SN ++ "P" ++ TM
   end;

to_string(#xsDateTime{sign     = Sign,
                      year     = Y,
                      month    = M},
          'xs:yearMonthDuration') ->
   if Y =:= 0 andalso M =:= 0 ->
         "P0M";
      true ->
         SN = sign_str(Sign),
         DT = date_dur_str(Y,M,0),
         SN ++ DT
   end;

to_string(#xsDateTime{sign     = Sign,
                      year     = Y,
                      month    = M,
                      day      = D,
                      hour     = HH,
                      minute   = MI,
                      second   = SS},
          'xs:duration') ->
   if Y =:= 0 andalso M =:= 0 andalso D =:= 0 andalso HH =:= 0 andalso MI =:= 0 andalso SS == 0 ->
         "PT0S";
      true ->
         SN = sign_str(Sign),
         DT = date_dur_str(Y,M,D),
         TM = time_dur_str(HH,MI,SS),
         SN ++ DT ++ TM
   end;

to_string(#xsDateTime{hour     = Hour,
                      minute   = Min,
                      second   = Sec,
                      offset   = OS},
          'xs:time') ->
   Offset = offset_str(OS),
   lists:flatten(io_lib:format( "~2..0b:~2..0b:~s~s",  [Hour,Min,sec_str(Sec),Offset]));

to_string(#xsDateTime{sign     = Sign,
                      year     = Y,
                      month    = M,
                      day      = D,
                      offset   = OS},
          'xs:date') ->
   Offset = offset_str(OS),
   List = io_lib:format("~s~s-~2..0b-~2..0b~s", [sign_str(Sign),year_str(Y),M,D,Offset]),
   lists:flatten(List);

to_string(#xsDateTime{day      = D,
                      offset   = OS},
          'xs:gDay') ->
   Offset = offset_str(OS),
   lists:flatten(io_lib:format("---~2..0b~s", [D,Offset]));

to_string(#xsDateTime{month    = M,
                      offset   = OS},
          'xs:gMonth') ->
   Offset = offset_str(OS),
   lists:flatten(io_lib:format("--~2..0b~s", [M,Offset]));

to_string(#xsDateTime{sign   = Sign,
                      year   = Y,
                      offset = OS},
          'xs:gYear') ->
   Offset = offset_str(OS),
   SN = sign_str(Sign),
   lists:flatten(io_lib:format("~s~s~s", [SN,year_str(Y),Offset]));

to_string(#xsDateTime{sign   = Sign,
                      year   = Y,
                      month  = M,
                      offset = OS},
          'xs:gYearMonth') ->
   Offset = offset_str(OS),
   SN = sign_str(Sign),
   lists:flatten(io_lib:format("~s~s-~2..0b~s", [SN,year_str(Y),M,Offset]));

to_string(#xsDateTime{day      = D,
                      month    = M,
                      offset   = OS},
          'xs:gMonthDay') ->
   Offset = offset_str(OS),
   lists:flatten(io_lib:format("--~2..0b-~2..0b~s", [M,D,Offset])).




ymd_is_valid(Y,M,D) ->
   try
      calendar:date_to_gregorian_days(abs(Y), M, D)
   catch _:_ ->
            xqerl_error:error('FORG0001')
   end.

align_to_timezone(Arg1,Arg2) ->
   #xqAtomicValue{type = Type, value = #xsDateTime{offset = Os} = Val} = ?seq:singleton_value(Arg1),
   case ?seq:is_empty(Arg2) of
      true ->
         NewDtTmWOs = Val#xsDateTime{offset = []},
         %?dbg("adjust-dateTime-to-timezone NewDtTmWOs",NewDtTmWOs),
         Str = xqerl_datetime:to_string(NewDtTmWOs, Type),
         %?dbg("adjust-dateTime-to-timezone Str",Str),
         #xqAtomicValue{type = Type, value = NewDtTmWOs#xsDateTime{string_value = Str}};
   _ ->
      ArgDurStr  = case Os of 
                     [] ->
                        [];
                     _ ->
                        xqerl_datetime:to_string(Os,'xs:dayTimeDuration')
                  end,
      AdjDurStr = case ?seq:singleton_value(Arg2) of
                     #xqAtomicValue{type = 'xs:dayTimeDuration', value = #xsDateTime{second = Sec}} when Sec > 0 ->
                        xqerl_error:error('FODT0003');
                     #xqAtomicValue{type = 'xs:dayTimeDuration', value = #xsDateTime{string_value = DStr}} ->
                        ?str(DStr);
                     O ->
                        ?str(xqerl_datetime:to_string(O,'xs:dayTimeDuration'))
                  end,
      %?dbg("ArgDurStr",ArgDurStr),
      %?dbg("AdjDurStr",AdjDurStr),
      %?dbg("Arg2",Arg2),
      if ArgDurStr == [] andalso AdjDurStr == [] ->
            Arg1;
         ArgDurStr == [] ->
            AdjDur = xqerl_types:cast_as(AdjDurStr, 'xs:dayTimeDuration'),
            #xsDateTime{sign = S, hour = H, minute = M} = xqerl_types:value(AdjDur),
            NewOffset = #off_set{sign = S, hour = H, min = M},
            NewDtTmWOs = Val#xsDateTime{offset = NewOffset},
            Str = xqerl_datetime:to_string(NewDtTmWOs, Type),
            #xqAtomicValue{type = Type, value = NewDtTmWOs#xsDateTime{string_value = Str}};
         true ->
            DtDur  = xqerl_types:cast_as(?str(ArgDurStr), 'xs:dayTimeDuration'),
            %?dbg("adjust-dateTime-to-timezone DtDur",DtDur),
            AdjDur = xqerl_types:cast_as(AdjDurStr, 'xs:dayTimeDuration'),
            %?dbg("adjust-dateTime-to-timezone AdjDur",AdjDur),
            #xsDateTime{sign = S, hour = H, minute = M} = xqerl_types:value(AdjDur),
            Diff = xqerl_operators:subtract(AdjDur, DtDur),
            %?dbg("adjust-dateTime-to-timezone Diff",Diff),
            #xqAtomicValue{value = NewDtTm} = ?seq:singleton_value(xqerl_operators:add(Arg1, Diff)),
            %?dbg("adjust-dateTime-to-timezone NewDtTm",NewDtTm),
            NewOffset = #off_set{sign = S, hour = H, min = M},
            NewDtTmWOs = NewDtTm#xsDateTime{offset = NewOffset},
            %?dbg("adjust-dateTime-to-timezone NewDtTmWOs",NewDtTmWOs),
            Str = xqerl_datetime:to_string(NewDtTmWOs, Type),
            %?dbg("adjust-dateTime-to-timezone Str",Str),
            #xqAtomicValue{type = Type, value = NewDtTmWOs#xsDateTime{string_value = Str}}
      end
   end.
   



sec_str(Secs) when is_integer(Secs) ->
   io_lib:format("~2..0b",[Secs]);
sec_str(Secs) when Secs == trunc(Secs) ->
   io_lib:format("~2..0b",[trunc(Secs)]);
sec_str(Secs) when Secs < 10 ->
   io_lib:format("0~w",[Secs]);
sec_str(Secs)  ->
   io_lib:format("~w",[Secs]).

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
offset_str(#off_set{sign = OS, hour = OH, min = OM}) ->
   if OH == 0 andalso OM == 0 ->
         "Z";
      (OH * 60 + OM) > 840 ->
         xqerl_error:error('FODT0003');
      true ->
         lists:flatten(io_lib:format("~s~2..0b:~2..0b", [atom_to_list(OS), OH,OM]))
   end;
offset_str(#xqAtomicValue{type = 'xs:dayTimeDuration',
                          value = #xsDateTime{sign = OS, hour = OH, minute = OM}}) ->
   case OH == 0 andalso OM == 0 of
      true ->
         "Z";
      _ ->
         lists:flatten(io_lib:format("~s~2..0b:~2..0b", [atom_to_list(OS), OH,OM]))
   end.

time_dur_str(H,M,S) ->
   if H =:= 0 andalso M =:= 0 andalso S == 0 -> "";
      true -> 
         S1 = if S == trunc(S) ->
                    trunc(S);
                 true ->
                    S
              end,
         F = "T" ++ 
               if H > 0 -> "~bH";
                  true -> "~i"
               end ++
               if M > 0 -> "~bM";
                  true -> "~i"
               end ++
               if S1 > 0 andalso is_integer(S1) -> "~bS";
                  S1 > 0 -> "~wS";
                  true -> "~i"
               end,
         lists:flatten(io_lib:format(F, [H,M,S1]))
   end.

date_dur_str(Y,M,D) ->
   F = "P" ++
    if Y > 0 -> "~bY";
       true -> "~i"
    end ++
    if M > 0 -> "~bM";
       true -> "~i"
    end ++
    if D > 0 -> "~bD";
       true -> "~i"
    end,
   lists:flatten(io_lib:format(F, [Y,M,D])).
%% date_dur_str(Y,M,D) ->
%%    lists:concat(["P",
%%     if Y > 0 -> io_lib:format("~pY", [Y]);
%%        true -> "~i"
%%     end,
%%     if M > 0 -> io_lib:format("~p~s", [M,"M"]);
%%        true -> ""
%%     end,
%%     if D > 0 -> io_lib:format("~p~s", [D,"D"]);
%%        true -> ""
%%     end
%%    ]).

