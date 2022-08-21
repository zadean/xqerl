% Copyright (c) 2017-2020 Zachary N. Dean  All Rights Reserved.
% SPDX-FileCopyrightText: 2022 Zachary Dean contact@zadean.com
%
% SPDX-License-Identifier: Apache-2.0

%% @doc Helper functions for parsing dateTime values to/from string

-module(xqerl_datetime).

-include("xqerl.hrl").

%-export([get_from_now/1]).
-export([get_from_now_local/2]).

-export([ymd_is_valid/3]).

% string parsers
-export([
    string_to_date/1,
    string_to_dateTime/1,
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

-define(DIGIT(H), H >= $0, H =< $9).
-define(XAV(T, V), #xqAtomicValue{type = T, value = V}).

% -define(THROW(E), _:#xqError{} = E -> throw(E)).

-define(MAXYEAR, (1 bsl 32) - 1).
-define(MAXDAY, (?MAXYEAR * 365)).

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

%% get_from_now(Now) ->
%%    {_,_,Micro} = Now,
%%    Millis =  Micro div 1000,
%%    {{Y,M,D}, {HH,MI,SS}} = calendar:now_to_universal_time(Now),
%%    Ret = #xsDateTime{
%%             year = Y,
%%             month = M,
%%             day = D,
%%             hour = HH,
%%             minute = MI,
%%             second = SS + (Millis / 1000)
%%          },
%%    Str = to_string(Ret,'xs:dateTime'),
%%    #xqAtomicValue{type = 'xs:dateTime',
%%                   value = Ret#xsDateTime{string_value = Str}}.

get_from_now_local(Now, Tz) ->
    {_, _, Micro} = Now,
    Millis = Micro div 1000,
    {{Y, M, D}, {HH, MI, SS}} = calendar:now_to_local_time(Now),
    Ret = #xsDateTime{
        year = Y,
        month = M,
        day = D,
        hour = HH,
        minute = MI,
        second = xqerl_numeric:decimal(SS + (Millis / 1000)),
        offset = Tz
    },
    Str = to_string(Ret, 'xs:dateTime'),
    #xqAtomicValue{
        type = 'xs:dateTime',
        value = Ret#xsDateTime{string_value = Str}
    }.

to_string(
    #xsDateTime{
        sign = Sign,
        year = Y,
        month = M,
        day = D,
        hour = HH,
        minute = MI,
        second = SS,
        offset = OS
    },
    'xs:dateTime'
) ->
    F = [
        sign_fmt(Sign),
        year_fmt(Y),
        $-,
        fmt_b2(M),
        $-,
        fmt_b2(D),
        $T,
        fmt_b2(HH),
        $:,
        fmt_b2(MI),
        $:,
        sec_str(SS),
        offset_str(OS)
    ],
    iolist_to_binary(F);
to_string(
    #xsDateTime{
        sign = _,
        day = 0,
        hour = 0,
        minute = 0,
        second = #xsDecimal{int = 0, scf = 0}
    },
    'xs:dayTimeDuration'
) ->
    <<"PT0S">>;
to_string(
    #xsDateTime{
        sign = Sign,
        day = D,
        hour = HH,
        minute = MI,
        second = SS
    },
    'xs:dayTimeDuration'
) ->
    F = [sign_fmt(Sign), date_dur_fmt(0, 0, D), time_dur_fmt(HH, MI, sec_dur_str(SS))],
    iolist_to_binary(F);
to_string(
    #off_set{
        sign = _,
        hour = 0,
        min = 0
    },
    'xs:dayTimeDuration'
) ->
    <<"PT0S">>;
to_string(
    #off_set{
        sign = Sign,
        hour = HH,
        min = MI
    },
    'xs:dayTimeDuration'
) ->
    F = [sign_fmt(Sign), $P, time_dur_fmt(HH, MI, sec_dur_str(0))],
    iolist_to_binary(F);
to_string(
    #xsDateTime{
        sign = _,
        year = 0,
        month = 0
    },
    'xs:yearMonthDuration'
) ->
    <<"P0M">>;
to_string(
    #xsDateTime{
        sign = Sign,
        year = Y,
        month = M
    },
    'xs:yearMonthDuration'
) ->
    F = [sign_fmt(Sign), date_dur_fmt(Y, M, 0)],
    iolist_to_binary(F);
to_string(
    #xsDateTime{
        sign = _,
        year = 0,
        month = 0,
        day = 0,
        hour = 0,
        minute = 0,
        second = #xsDecimal{int = 0, scf = 0}
    },
    'xs:duration'
) ->
    <<"PT0S">>;
to_string(
    #xsDateTime{
        sign = Sign,
        year = Y,
        month = M,
        day = D,
        hour = HH,
        minute = MI,
        second = SS
    },
    'xs:duration'
) ->
    F = [sign_fmt(Sign), date_dur_fmt(Y, M, D), time_dur_fmt(HH, MI, sec_dur_str(SS))],
    iolist_to_binary(F);
to_string(
    #xsDateTime{
        hour = Hour,
        minute = Min,
        second = Sec,
        offset = OS
    },
    'xs:time'
) ->
    F = [fmt_b2(Hour), $:, fmt_b2(Min), $:, sec_str(Sec), offset_str(OS)],
    iolist_to_binary(F);
to_string(
    #xsDateTime{
        sign = Sign,
        year = Y,
        month = M,
        day = D,
        offset = OS
    },
    'xs:date'
) ->
    F = [sign_fmt(Sign), year_fmt(Y), dash_2_2_o(M, D, OS)],
    iolist_to_binary(F);
to_string(
    #xsDateTime{
        day = D,
        offset = OS
    },
    'xs:gDay'
) ->
    F = [$-, $-, dash_2_o(D, OS)],
    iolist_to_binary(F);
to_string(
    #xsDateTime{
        month = M,
        offset = OS
    },
    'xs:gMonth'
) ->
    F = [$-, dash_2_o(M, OS)],
    iolist_to_binary(F);
to_string(
    #xsDateTime{
        sign = Sign,
        year = Y,
        offset = OS
    },
    'xs:gYear'
) ->
    F = [sign_fmt(Sign), year_fmt(Y), offset_str(OS)],
    iolist_to_binary(F);
to_string(
    #xsDateTime{
        sign = Sign,
        year = Y,
        month = M,
        offset = OS
    },
    'xs:gYearMonth'
) ->
    F = [sign_fmt(Sign), year_fmt(Y), dash_2_o(M, OS)],
    iolist_to_binary(F);
to_string(
    #xsDateTime{
        day = D,
        month = M,
        offset = OS
    },
    'xs:gMonthDay'
) ->
    F = [$-, dash_2_2_o(M, D, OS)],
    iolist_to_binary(F).

dash_2_o(D, O) ->
    [$-, fmt_b2(D), offset_str(O)].

dash_2_2_o(M, D, O) ->
    [$-, fmt_b2(M), $-, fmt_b2(D), offset_str(O)].

ymd_is_valid(Y, M, D) ->
    try calendar:date_to_gregorian_days(abs(Y), M, D) of
        _ -> true
    catch
        _:_ -> false
    end.

align_to_timezone(Arg1, []) ->
    #xqAtomicValue{
        type = Type,
        value = #xsDateTime{} = Val
    } = xqerl_seq3:singleton_value(Arg1),
    NewDtTmWOs = Val#xsDateTime{offset = []},
    Str = to_string(NewDtTmWOs, Type),
    #xqAtomicValue{
        type = Type,
        value = NewDtTmWOs#xsDateTime{string_value = Str}
    };
align_to_timezone(Arg1, Arg2) ->
    #xqAtomicValue{
        type = Type,
        value = #xsDateTime{offset = Os} = Val
    } = xqerl_seq3:singleton_value(Arg1),
    ArgDurStr =
        case Os of
            [] -> <<>>;
            _ -> to_string(Os, 'xs:dayTimeDuration')
        end,
    AdjDurStr =
        case xqerl_seq3:singleton_value(Arg2) of
            #xqAtomicValue{
                type = 'xs:dayTimeDuration',
                value = #xsDateTime{
                    second = Sec,
                    string_value = DStr
                }
            } ->
                case xqerl_numeric:greater_than(Sec, 0) of
                    true -> ?err('FODT0003');
                    false -> DStr
                end;
            O ->
                xqerl_datetime:to_string(O, 'xs:dayTimeDuration')
        end,
    case ArgDurStr of
        <<>> ->
            AdjDur = xqerl_types:cast_as(AdjDurStr, 'xs:dayTimeDuration'),
            #xsDateTime{
                sign = S,
                hour = H,
                minute = M
            } = xqerl_types:value(AdjDur),
            NewOffset = #off_set{sign = S, hour = H, min = M},
            NewDtTmWOs = Val#xsDateTime{offset = NewOffset},
            Str = xqerl_datetime:to_string(NewDtTmWOs, Type),
            #xqAtomicValue{
                type = Type,
                value = NewDtTmWOs#xsDateTime{string_value = Str}
            };
        _ ->
            DtDur = xqerl_types:cast_as(ArgDurStr, 'xs:dayTimeDuration'),
            AdjDur = xqerl_types:cast_as(AdjDurStr, 'xs:dayTimeDuration'),
            #xsDateTime{
                sign = S,
                hour = H,
                minute = M
            } = xqerl_types:value(AdjDur),
            Diff = xqerl_operators:subtract(AdjDur, DtDur),
            #xqAtomicValue{value = NewDtTm} = xqerl_operators:add(Arg1, Diff),
            NewOffset = #off_set{sign = S, hour = H, min = M},
            NewDtTmWOs = NewDtTm#xsDateTime{offset = NewOffset},
            Str = xqerl_datetime:to_string(NewDtTmWOs, Type),
            #xqAtomicValue{
                type = Type,
                value = NewDtTmWOs#xsDateTime{string_value = Str}
            }
    end.

sec_str(Secs) ->
    Str = xqerl_numeric:string(Secs),
    case xqerl_numeric:less_than(Secs, 10) of
        true ->
            <<$0, Str/binary>>;
        _ ->
            Str
    end.

year_fmt(Year) when Year =< 9999, Year >= -9999 -> fmt_b4(Year);
year_fmt(Year) -> fmt_b(Year).

sign_fmt('+') -> <<>>;
sign_fmt('-') -> $-;
sign_fmt($+) -> <<>>;
sign_fmt($-) -> $-.

offset_str([]) ->
    <<>>;
offset_str(#off_set{hour = 0, min = 0}) ->
    <<"Z">>;
offset_str(#xqAtomicValue{
    type = 'xs:dayTimeDuration',
    value = #xsDateTime{hour = 0, minute = 0}
}) ->
    <<"Z">>;
offset_str(#off_set{hour = OH, min = OM}) when (OH * 60 + OM) > 840 ->
    ?err('FODT0003');
offset_str(#off_set{sign = OS, hour = OH, min = OM}) ->
    F = offset_fmt(OS, OH, OM),
    iolist_to_binary(F);
offset_str(#xqAtomicValue{
    type = 'xs:dayTimeDuration',
    value = #xsDateTime{
        sign = OS,
        hour = OH,
        minute = OM
    }
}) ->
    F = offset_fmt(OS, OH, OM),
    iolist_to_binary(F).

sec_dur_str(S) ->
    case sec_str(S) of
        <<$0, R/binary>> -> R;
        R -> R
    end.

offset_fmt(_, 0, 0) -> [$Z];
offset_fmt('-', H, M) -> [$-, fmt_b2(H), $:, fmt_b2(M)];
offset_fmt('+', H, M) -> [$+, fmt_b2(H), $:, fmt_b2(M)].

time_dur_fmt(0, 0, <<"0">>) ->
    <<>>;
time_dur_fmt(H, M, S) when H > 0, M > 0, S =/= <<"0">> ->
    [$T, dur_h(H), dur_m(M), dur_s(S)];
time_dur_fmt(H, M, _) when H > 0, M > 0 ->
    [$T, dur_h(H), dur_m(M)];
time_dur_fmt(H, _, S) when H > 0, S =/= <<"0">> ->
    [$T, dur_h(H), dur_s(S)];
time_dur_fmt(_, M, S) when M > 0, S =/= <<"0">> ->
    [$T, dur_m(M), dur_s(S)];
time_dur_fmt(H, _, _) when H > 0 ->
    [$T, dur_h(H)];
time_dur_fmt(_, M, _) when M > 0 ->
    [$T, dur_m(M)];
time_dur_fmt(_, _, S) when S =/= <<"0">> ->
    [$T, dur_s(S)];
time_dur_fmt(_, _, _) ->
    [$T].

date_dur_fmt(Y, M, D) when Y > 0, M > 0, D > 0 ->
    [$P, dur_y(Y), dur_m(M), dur_d(D)];
date_dur_fmt(Y, M, _) when Y > 0, M > 0 ->
    [$P, dur_y(Y), dur_m(M)];
date_dur_fmt(Y, _, D) when Y > 0, D > 0 ->
    [$P, dur_y(Y), dur_d(D)];
date_dur_fmt(_, M, D) when M > 0, D > 0 ->
    [$P, dur_m(M), dur_d(D)];
date_dur_fmt(Y, _, _) when Y > 0 ->
    [$P, dur_y(Y)];
date_dur_fmt(_, M, _) when M > 0 ->
    [$P, dur_m(M)];
date_dur_fmt(_, _, D) when D > 0 ->
    [$P, fmt_b(D), $D];
date_dur_fmt(_, _, _) ->
    $P.

dur_y(Y) -> [fmt_b(Y), $Y].

dur_m(M) -> [fmt_b(M), $M].

dur_d(D) -> [fmt_b(D), $D].

dur_h(H) -> [fmt_b(H), $H].

dur_s(S) -> [S, $S].

fmt_b(Int) -> integer_to_binary(Int).

fmt_b2(Int) when Int < 10 -> [$0, integer_to_binary(Int)];
fmt_b2(Int) -> integer_to_binary(Int).

fmt_b4(Int) when Int < 10 -> [$0, $0, $0, integer_to_binary(Int)];
fmt_b4(Int) when Int < 100 -> [$0, $0, integer_to_binary(Int)];
fmt_b4(Int) when Int < 1000 -> [$0, integer_to_binary(Int)];
fmt_b4(Int) when Int < 10000 -> integer_to_binary(Int).

string_to_date(String) ->
    try
        Bin = xqerl_lib:trim(String),
        {Sign, Year, Mon, Day, Rest} = date_bin_to_ymd(Bin),
        Offset = tz_bin_to_offset(Rest),
        Rec = #xsDateTime{
            sign = Sign,
            year = Year,
            month = Mon,
            day = Day,
            offset = Offset
        },
        ok = check_date_year(Year),
        case Offset of
            #off_set{hour = Hour} when Hour >= 24 ->
                ?err('FORG0001');
            #off_set{min = Min} when Min >= 60 ->
                ?err('FORG0001');
            _ ->
                Str = xqerl_datetime:to_string(Rec, 'xs:date'),
                ?XAV('xs:date', set_date_string(Rec, Str))
        end
    catch
        _:#xqError{} = E -> throw(E);
        _:_ -> ?err('FORG0001')
    end.

string_to_dateTime(String) ->
    try
        Bin = xqerl_lib:trim(String),
        {Sign, Year, Mon, Day, Rest} = date_bin_to_ymd(Bin),
        {Hour, Min, Sec, Rest1} = time_bin_to_hms(Rest),
        Offset = tz_bin_to_offset(Rest1),
        Rec = #xsDateTime{
            sign = Sign,
            year = Year,
            month = Mon,
            day = Day,
            hour = Hour,
            minute = Min,
            second = Sec,
            offset = Offset
        },
        SecFlt = xqerl_numeric:double(Sec),
        ok = check_date_year(Year),
        case Rec of
            % only no min/sec is okay with hour 24
            #xsDateTime{hour = 24, minute = 0} when SecFlt == 0 ->
                ZeroDur = string_to_dayTimeDuration(<<"PT0S">>),
                Str = xqerl_datetime:to_string(Rec, 'xs:dateTime'),
                Dt = ?XAV('xs:dateTime', set_date_string(Rec, Str)),
                xqerl_operators:add(Dt, ZeroDur);
            _ when Hour >= 24; Min >= 60; SecFlt >= 60 ->
                ?err('FORG0001');
            _ ->
                Str = xqerl_datetime:to_string(Rec, 'xs:dateTime'),
                ?XAV('xs:dateTime', set_date_string(Rec, Str))
        end
    catch
        _:#xqError{} = E -> throw(E);
        _:_ -> ?err('FORG0001')
    end.

string_to_dayTimeDuration(String) ->
    try
        Bin = xqerl_lib:trim(String),
        {Sign, Day, Hour, Min, Sec} = daytimedur_bin_to_dhms(Bin),
        Rec = #xsDateTime{
            sign = Sign,
            year = 0,
            month = 0,
            day = Day,
            hour = Hour,
            minute = Min,
            second = Sec
        },
        _ = check_duration_day(Day),
        Str = xqerl_datetime:to_string(Rec, 'xs:dayTimeDuration'),
        ?XAV('xs:dayTimeDuration', set_date_string(Rec, Str))
    catch
        _:#xqError{} = E ->
            throw(E);
        _:_:_ST ->
            %io:format("~p~n",[ST]),
            ?err('FORG0001')
    end.

string_to_duration(String) ->
    try
        Bin = xqerl_lib:trim(String),
        {Sign, Year, Mon, Day, Hour, Min, Sec} = dur_bin_to_ymdhms(Bin),
        Rec = #xsDateTime{
            sign = Sign,
            year = Year,
            month = Mon,
            day = Day,
            hour = Hour,
            minute = Min,
            second = Sec
        },
        Str = xqerl_datetime:to_string(Rec, 'xs:duration'),
        ?XAV('xs:duration', set_date_string(Rec, Str))
    catch
        _:#xqError{} = E -> throw(E);
        _:_ -> ?err('FORG0001')
    end.

string_to_gDay(String) ->
    try
        Bin = xqerl_lib:trim(String),
        <<$-, $-, $-, D1, D2, Rest/binary>> = Bin,
        Offset = tz_bin_to_offset(Rest),
        case list_to_integer([D1, D2]) of
            Day when Day < 32 andalso Day > 0 ->
                Rec = #xsDateTime{
                    year = 0,
                    month = 0,
                    day = Day,
                    hour = 0,
                    minute = 0,
                    second = xqerl_numeric:decimal(0),
                    offset = Offset
                },
                Str = xqerl_datetime:to_string(Rec, 'xs:gDay'),
                ?XAV('xs:gDay', set_date_string(Rec, Str));
            _ ->
                throw({error, bad_date})
        end
    catch
        _:#xqError{} = E -> throw(E);
        _:_ -> ?err('FORG0001')
    end.

string_to_gMonth(String) ->
    try
        Bin = xqerl_lib:trim(String),
        <<$-, $-, M1, M2, Rest/binary>> = Bin,
        Offset = tz_bin_to_offset(Rest),
        case list_to_integer([M1, M2]) of
            Mon when Mon < 13 andalso Mon > 0 ->
                Rec = #xsDateTime{
                    year = 0,
                    month = Mon,
                    day = 0,
                    hour = 0,
                    minute = 0,
                    second = xqerl_numeric:decimal(0),
                    offset = Offset
                },
                Str = xqerl_datetime:to_string(Rec, 'xs:gMonth'),
                ?XAV('xs:gMonth', set_date_string(Rec, Str));
            _ ->
                throw({error, bad_date})
        end
    catch
        _:#xqError{} = E -> throw(E);
        _:_ -> ?err('FORG0001')
    end.

string_to_gMonthDay(String) ->
    try
        Bin = xqerl_lib:trim(String),
        <<$-, $-, M1, M2, $-, D1, D2, Rest/binary>> = Bin,
        Offset = tz_bin_to_offset(Rest),
        Mon = list_to_integer([M1, M2]),
        Day = list_to_integer([D1, D2]),
        case is_valid_month_day(Mon, Day) of
            true ->
                Rec = #xsDateTime{
                    year = 0,
                    month = Mon,
                    day = Day,
                    hour = 0,
                    minute = 0,
                    second = xqerl_numeric:decimal(0),
                    offset = Offset
                },
                Str = xqerl_datetime:to_string(Rec, 'xs:gMonthDay'),
                ?XAV('xs:gMonthDay', set_date_string(Rec, Str));
            _ ->
                throw({error, bad_date})
        end
    catch
        _:#xqError{} = E -> throw(E);
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
        Rec = #xsDateTime{
            sign = Sign,
            year = Year,
            month = 0,
            day = 0,
            hour = 0,
            minute = 0,
            second = xqerl_numeric:decimal(0),
            offset = Offset
        },
        ok = check_date_year(Year),
        ok = check_gyear(Year),
        Str = xqerl_datetime:to_string(Rec, 'xs:gYear'),
        ?XAV('xs:gYear', set_date_string(Rec, Str))
    catch
        _:#xqError{} = E -> throw(E);
        _:_ -> ?err('FORG0001')
    end.

% MAYBE castable
string_to_gYearMonth(String) ->
    try
        Bin = xqerl_lib:trim(String),
        {Sign, Rest} = get_sign(Bin),
        {Year, Rest1} = get_year(Rest),
        <<M1, M2, Rest2/binary>> = Rest1,
        Offset = tz_bin_to_offset(Rest2),
        Mon = list_to_integer([M1, M2]),
        ok = check_date_year(Year),
        ok = check_gyear(Year),
        ok = check_gmonth(Mon),
        Rec = #xsDateTime{
            sign = Sign,
            year = Year,
            month = Mon,
            day = 0,
            hour = 0,
            minute = 0,
            second = xqerl_numeric:decimal(0),
            offset = Offset
        },
        Str = xqerl_datetime:to_string(Rec, 'xs:gYearMonth'),
        ?XAV('xs:gYearMonth', set_date_string(Rec, Str))
    catch
        _:#xqError{} = E -> throw(E);
        _:_ -> ?err('FORG0001')
    end.

string_to_time(String) ->
    try
        %24:00:00
        Bin = <<"T", (xqerl_lib:trim(String))/binary>>,
        {Hour, Min, Sec, Rest} = time_bin_to_hms(Bin),
        Offset = tz_bin_to_offset(Rest),
        SecFlt = xqerl_numeric:float(Sec),
        % only no min/sec is okay with hour 24
        Hour1 =
            case Hour of
                24 when Min == 0 andalso SecFlt == 0 -> 0;
                _ when Hour >= 24; Min >= 60; SecFlt >= 60 -> ?err('FORG0001');
                _ -> Hour
            end,
        Rec = #xsDateTime{
            hour = Hour1,
            minute = Min,
            second = Sec,
            offset = Offset
        },
        Str = xqerl_datetime:to_string(Rec, 'xs:time'),
        ?XAV('xs:time', set_date_string(Rec, Str))
    catch
        _:#xqError{} = E -> throw(E);
        _:_ -> ?err('FORG0001')
    end.

string_to_yearMonthDuration(String) ->
    try
        Bin = xqerl_lib:trim(String),
        {Sign, Bin1} =
            case Bin of
                <<$-, $P, R/binary>> ->
                    {'-', <<R/binary>>};
                <<$P, R/binary>> ->
                    {'+', <<R/binary>>}
            end,
        {Year, Mon, <<>>} = ymdur_bin_to_ym(Bin1),
        % push up the ladder
        Rec = #xsDateTime{
            sign = Sign,
            year = Year,
            month = Mon,
            day = 0,
            hour = 0,
            minute = 0,
            second = xqerl_numeric:decimal(0)
        },
        Str = xqerl_datetime:to_string(Rec, 'xs:yearMonthDuration'),
        ?XAV('xs:yearMonthDuration', set_date_string(Rec, Str))
    catch
        _:#xqError{} = E -> throw(E);
        _:_ -> ?err('FORG0001')
    end.

set_date_string(Rec, Str) ->
    Rec#xsDateTime{string_value = Str}.

tz_bin_to_offset(<<>>) ->
    [];
tz_bin_to_offset(<<"Z">>) ->
    #off_set{};
tz_bin_to_offset(<<P, Ho1, Ho2, $:, Mio1, Mio2>>) when
    Mio1 >= $0, Mio1 =< $9, Mio2 >= $0, Mio2 =< $9, Ho1 >= $0, Ho1 =< $9, Ho2 >= $0, Ho2 =< $9
->
    try
        Ho = list_to_integer([P, Ho1, Ho2]),
        Mio = list_to_integer([Mio1, Mio2]),
        build_offset(Mio, Ho, P)
    catch
        _:_ -> throw({error, bad_offset})
    end;
tz_bin_to_offset(_) ->
    throw({error, bad_offset}).

build_offset(0, 0, $-) ->
    #off_set{sign = '+', hour = 0, min = 0};
build_offset(M, H, P) when M =< 59, abs(H) < 14 orelse (abs(H) == 14 andalso M == 0) ->
    Sign =
        case P of
            $- -> '-';
            $+ -> '+'
        end,
    #off_set{sign = Sign, hour = abs(H), min = M};
build_offset(_, _, _) ->
    throw({error, bad_offset}).

time_bin_to_hms(<<$T, H1, H2, $:, M1, M2, $:, S1, S2, Rest/binary>>) when
    (H1 >= $0 andalso H1 =< $9),
    (H2 >= $0 andalso H2 =< $9),
    (M1 >= $0 andalso M1 =< $9),
    (M2 >= $0 andalso M2 =< $9),
    (S1 >= $0 andalso S1 =< $9),
    (S2 >= $0 andalso S2 =< $9)
->
    try
        Hour = list_to_integer([H1, H2]),
        Min = list_to_integer([M1, M2]),
        Sec = [S1, S2],
        case Rest of
            <<$., R/binary>> ->
                L = binary_to_list(R),
                Tk = fun(E) -> E >= $0 andalso E =< $9 end,
                Fract = lists:takewhile(Tk, L),
                RestL = lists:subtract(L, Fract),
                Sec1 = list_to_binary(Sec ++ "." ++ Fract),
                {Hour, Min, xqerl_numeric:decimal(Sec1), list_to_binary(RestL)};
            _ ->
                {Hour, Min, xqerl_numeric:decimal(list_to_binary(Sec)), Rest}
        end
    catch
        _:#xqError{} = E -> throw(E);
        _:{badmatch, _} -> ?err('FORG0001');
        _:badarg -> ?err('FORG0001');
        _:_ -> ?err('FODT0001')
    end;
time_bin_to_hms(_) ->
    ?err('FORG0001').

timedur_bin_to_hms(Bin) ->
    {Hour, Rest} =
        case binary:split(Bin, <<"H">>) of
            [HourBin, R] ->
                {binary_to_integer(HourBin), R};
            [R] ->
                {0, R}
        end,
    {Min, Rest1} =
        case binary:split(Rest, <<"M">>) of
            [MinBin, R1] ->
                {binary_to_integer(MinBin), R1};
            [R1] ->
                {0, R1}
        end,
    Sec =
        case binary:split(Rest1, <<"S">>) of
            [SecBin, <<>>] ->
                xqerl_numeric:decimal(SecBin);
            [_, _] ->
                ?err('FORG0001');
            [<<>>] ->
                xqerl_numeric:decimal(0);
            % timezone not allowed
            [_R2] ->
                ?err('FORG0001')
        end,
    %?dbg("{Bin,Hour,Min,Sec}",{Bin,Hour,Min,Sec}),
    {Hour, Min, Sec}.

ymdur_bin_to_ym(<<>>) ->
    ?err('FORG0001');
ymdur_bin_to_ym(Bin) ->
    {Year, Rest} =
        case binary:split(Bin, <<"Y">>) of
            [YearBin, R] ->
                {binary_to_integer(YearBin), R};
            [R] ->
                {0, R}
        end,
    {Mon, Rest1} =
        case binary:split(Rest, <<"M">>) of
            [MonBin, R1] ->
                {binary_to_integer(MonBin), R1};
            [R1] ->
                {0, R1}
        end,
    {Mon1, Year1} = shift_units(Mon, Year, 12),
    _ = check_duration_year(Year1),
    {Year1, Mon1, Rest1}.

daytimedur_bin_to_dhms(Bin) ->
    %?dbg("Bin",Bin),
    % negative duration
    {Sign, Bin1} =
        case Bin of
            <<$-, $P, R/binary>> ->
                {'-', <<R/binary>>};
            <<$P, R/binary>> ->
                {'+', <<R/binary>>}
        end,

    {DayPart, TimePart} = get_day_time_parts(Bin1),
    Day =
        case DayPart of
            <<>> ->
                0;
            _ ->
                DayNum = day_from_day_part(DayPart),
                binary_to_integer(DayNum)
        end,
    {Hour, Min, Sec} = timedur_bin_to_hms(TimePart),
    % push values up the ladder
    SecTotal = xqerl_numeric:add(Sec, Min * 60),
    MI1 = xqerl_numeric:truncate(SecTotal) div 60,
    SS1 = xqerl_numeric:subtract(SecTotal, MI1 * 60),
    {MI2, HH1} = shift_units(MI1, Hour, 60),
    {HH2, D1} = shift_units(HH1, Day, 24),
    {Sign, D1, HH2, MI2, SS1}.

day_from_day_part(DayPart) ->
    [DayNum] = binary:split(DayPart, <<"D">>, [trim]),
    DayNum.

dur_bin_to_ymdhms(Bin) ->
    % negative duration
    {Sign, Bin1} =
        case Bin of
            <<$-, $P, R/binary>> ->
                {'-', <<R/binary>>};
            <<$P, R/binary>> ->
                {'+', <<R/binary>>}
        end,
    {DayPart, TimePart} = get_day_time_parts(Bin1),
    {Year, Mon, Day} =
        case DayPart of
            <<>> ->
                {0, 0, 0};
            _ ->
                case ymdur_bin_to_ym(DayPart) of
                    {Year0, Mon0, <<>>} ->
                        {Year0, Mon0, 0};
                    {Year0, Mon0, Day0} ->
                        DayNum = day_from_day_part(Day0),
                        {Year0, Mon0, binary_to_integer(DayNum)}
                end
        end,
    {Hour, Min, Sec} = timedur_bin_to_hms(TimePart),
    % push values up the ladder
    {Mon1, Year1} = shift_units(Mon, Year, 12),
    % push values up the ladder
    SecTotal = xqerl_numeric:add(Sec, Min * 60),
    MI1 = xqerl_numeric:truncate(SecTotal) div 60,
    SS1 = xqerl_numeric:subtract(SecTotal, MI1 * 60),
    {MI2, HH1} = shift_units(MI1, Hour, 60),
    {HH2, D1} = shift_units(HH1, Day, 24),
    _ = check_duration_day(D1),
    _ = check_duration_year(Year1),
    {Sign, Year1, Mon1, D1, HH2, MI2, SS1}.

% returns {NewSmall, NewLarge}
shift_units(Small, Large, Size) ->
    {Small rem Size, Large + Small div Size}.

get_day_time_parts(<<>>) ->
    ?err('FORG0001');
get_day_time_parts(Bin) ->
    case binary:split(Bin, <<"T">>) of
        [_D, <<>>] ->
            ?err('FORG0001');
        [D, T] ->
            {D, T};
        [D] ->
            {D, <<>>}
    end.

is_valid_month_day(1, Day) when Day >= 1, Day =< 31 -> true;
is_valid_month_day(2, Day) when Day >= 1, Day =< 29 -> true;
is_valid_month_day(3, Day) when Day >= 1, Day =< 31 -> true;
is_valid_month_day(4, Day) when Day >= 1, Day =< 30 -> true;
is_valid_month_day(5, Day) when Day >= 1, Day =< 31 -> true;
is_valid_month_day(6, Day) when Day >= 1, Day =< 30 -> true;
is_valid_month_day(7, Day) when Day >= 1, Day =< 31 -> true;
is_valid_month_day(8, Day) when Day >= 1, Day =< 31 -> true;
is_valid_month_day(9, Day) when Day >= 1, Day =< 30 -> true;
is_valid_month_day(10, Day) when Day >= 1, Day =< 31 -> true;
is_valid_month_day(11, Day) when Day >= 1, Day =< 30 -> true;
is_valid_month_day(12, Day) when Day >= 1, Day =< 31 -> true;
is_valid_month_day(_Mon, _Day) -> false.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

date_bin_to_ymd(Bin) ->
    try
        {Sign, Bin1} = get_sign(Bin),
        {Year, Bin2} = get_year(Bin1),
        {Mon, Bin3} = get_month(Bin2),
        {Day, Bin4} = get_day(Bin3),
        true = ymd_is_valid(Year, Mon, Day),
        {Sign, Year, Mon, Day, Bin4}
    catch
        _:_ ->
            throw({error, bad_ymd})
    end.

get_sign(<<$-, Rest/binary>>) ->
    {'-', Rest};
get_sign(Rest) ->
    {'+', Rest}.

get_year(Bin1) ->
    {YearDigits, Bin2} = get_digits_til_minus(Bin1, []),
    case YearDigits of
        [$0 | R] when length(R) >= 4 ->
            throw({error, bad_year});
        R when length(R) < 4 ->
            throw({error, bad_year});
        _ ->
            {list_to_integer(YearDigits), Bin2}
    end.

get_gyear(Bin1) ->
    {YearDigits, Bin2} = get_digits_with_minus(Bin1, []),
    case YearDigits of
        [$0 | R] when length(R) >= 4 ->
            throw({error, bad_gyear});
        R when length(R) < 4 ->
            throw({error, bad_gyear});
        _ ->
            {list_to_integer(YearDigits), Bin2}
    end.

get_month(<<M1, M2, $-, Rest/binary>>) when ?DIGIT(M1), ?DIGIT(M2) ->
    {list_to_integer([M1, M2]), Rest};
get_month(_) ->
    throw({error, bad_month}).

get_day(<<D1, D2, Rest/binary>>) when ?DIGIT(D1), ?DIGIT(D2) ->
    {list_to_integer([D1, D2]), Rest};
get_day(_) ->
    % must be Monday
    throw({error, bad_day}).

get_digits_with_minus(<<C, $-, Rest/binary>>, Acc) when ?DIGIT(C) ->
    {lists:reverse([C | Acc]), <<$-, Rest/binary>>};
get_digits_with_minus(<<C, Rest/binary>>, Acc) when ?DIGIT(C) ->
    get_digits_with_minus(Rest, [C | Acc]);
get_digits_with_minus(<<Rest/binary>>, Acc) ->
    {lists:reverse(Acc), Rest};
get_digits_with_minus(_, _) ->
    throw({error, bad_digits}).

get_digits_til_minus(<<C, $-, Rest/binary>>, Acc) when ?DIGIT(C) ->
    {lists:reverse([C | Acc]), Rest};
get_digits_til_minus(<<C, Rest/binary>>, Acc) when ?DIGIT(C) ->
    get_digits_til_minus(Rest, [C | Acc]);
get_digits_til_minus(_, _) ->
    throw({error, bad_digits}).

check_gmonth(Month) when Month < 1; Month > 12 -> ?err('FORG0001');
check_gmonth(_) -> ok.

check_gyear(0) -> ?err('FORG0001');
check_gyear(_) -> ok.

check_date_year(Year) when Year > ?MAXYEAR -> ?err('FODT0001');
check_date_year(_) -> ok.

check_duration_year(Year) when Year > ?MAXYEAR -> ?err('FODT0002');
check_duration_year(_) -> ok.

check_duration_day(Day) when Day > ?MAXDAY -> ?err('FODT0002');
check_duration_day(_) -> ok.
