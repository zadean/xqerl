-module('fn_timezone_from_dateTime_SUITE').

-include_lib("common_test/include/ct.hrl").

-export([
    all/0,
    groups/0,
    suite/0
]).

-export([
    init_per_suite/1,
    init_per_group/2,
    end_per_group/2,
    end_per_suite/1
]).

-export(['fn-timezone-from-dateTimealt-1'/1]).
-export(['fn-timezone-from-dateTimealt-2'/1]).
-export(['fn-timezone-from-dateTimealt-3'/1]).
-export(['fn-timezone-from-dateTimealt-4'/1]).
-export(['fn-timezone-from-dateTimealt-5'/1]).
-export(['fn-timezone-from-dateTimealt-6'/1]).
-export(['fn-timezone-from-dateTimealt-7'/1]).
-export(['fn-timezone-from-dateTimealt-8'/1]).
-export(['fn-timezone-from-dateTimealt-9'/1]).
-export(['fn-timezone-from-dateTimealt-10'/1]).
-export(['fn-timezone-from-dateTimealt-11'/1]).
-export(['fn-timezone-from-dateTimealt-12'/1]).
-export(['fn-timezone-from-dateTimealt-13'/1]).
-export(['fn-timezone-from-dateTimealt-14'/1]).
-export(['fn-timezone-from-dateTimealt-15'/1]).
-export(['fn-timezone-from-dateTimealt-16'/1]).
-export(['fn-timezone-from-dateTimealt-17'/1]).
-export(['fn-timezone-from-dateTimealt-18'/1]).
-export(['fn-timezone-from-dateTimealt-19'/1]).
-export(['fn-timezone-from-dateTimealt-20'/1]).
-export(['K-TimezoneFromDateTimeFunc-1'/1]).
-export(['K-TimezoneFromDateTimeFunc-2'/1]).
-export(['K-TimezoneFromDateTimeFunc-3'/1]).
-export(['K-TimezoneFromDateTimeFunc-4'/1]).
-export(['K-TimezoneFromDateTimeFunc-5'/1]).
-export(['K-TimezoneFromDateTimeFunc-6'/1]).
-export(['K-TimezoneFromDateTimeFunc-7'/1]).

suite() -> [{timetrap, {seconds, 180}}].

init_per_group(_, Config) -> Config.

end_per_group(_, _Config) ->
    xqerl_code_server:unload(all).

end_per_suite(_Config) ->
    ct:timetrap({seconds, 60}),
    xqerl_code_server:unload(all).

init_per_suite(Config) ->
    {ok, _} = application:ensure_all_started(xqerl),
    DD = filename:dirname(filename:dirname(filename:dirname(?config(data_dir, Config)))),
    TD = filename:join(DD, "QT3-test-suite"),
    __BaseDir = filename:join(TD, "fn"),
    [{base_dir, __BaseDir} | Config].

all() ->
    [
        {group, group_0},
        {group, group_1}
    ].

groups() ->
    [
        {group_0, [parallel], [
            'fn-timezone-from-dateTimealt-1',
            'fn-timezone-from-dateTimealt-2',
            'fn-timezone-from-dateTimealt-3',
            'fn-timezone-from-dateTimealt-4',
            'fn-timezone-from-dateTimealt-5',
            'fn-timezone-from-dateTimealt-6',
            'fn-timezone-from-dateTimealt-7',
            'fn-timezone-from-dateTimealt-8',
            'fn-timezone-from-dateTimealt-9',
            'fn-timezone-from-dateTimealt-10',
            'fn-timezone-from-dateTimealt-11',
            'fn-timezone-from-dateTimealt-12',
            'fn-timezone-from-dateTimealt-13',
            'fn-timezone-from-dateTimealt-14',
            'fn-timezone-from-dateTimealt-15',
            'fn-timezone-from-dateTimealt-16',
            'fn-timezone-from-dateTimealt-17',
            'fn-timezone-from-dateTimealt-18',
            'fn-timezone-from-dateTimealt-19',
            'fn-timezone-from-dateTimealt-20',
            'K-TimezoneFromDateTimeFunc-1',
            'K-TimezoneFromDateTimeFunc-2',
            'K-TimezoneFromDateTimeFunc-3'
        ]},
        {group_1, [parallel], [
            'K-TimezoneFromDateTimeFunc-4',
            'K-TimezoneFromDateTimeFunc-5',
            'K-TimezoneFromDateTimeFunc-6',
            'K-TimezoneFromDateTimeFunc-7'
        ]}
    ].

'fn-timezone-from-dateTimealt-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:timezone-from-dateTime(xs:dateTime(\"1999-05-31T13:20:00-05:00\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-timezone-from-dateTimealt-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-PT5H") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-timezone-from-dateTimealt-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:timezone-from-dateTime(xs:dateTime(\"2000-06-12T13:20:00Z\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-timezone-from-dateTimealt-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "PT0S") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-timezone-from-dateTimealt-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(fn:timezone-from-dateTime(xs:dateTime(\"2004-08-27T00:00:00\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-timezone-from-dateTimealt-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "0") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-timezone-from-dateTimealt-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:timezone-from-dateTime(xs:dateTime(\"1999-12-31T12:00:00+02:00\")) le fn:timezone-from-dateTime(xs:dateTime(\"1999-12-30T12:00:00+03:00\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-timezone-from-dateTimealt-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-timezone-from-dateTimealt-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(fn:timezone-from-dateTime(()))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-timezone-from-dateTimealt-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "0") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-timezone-from-dateTimealt-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:timezone-from-dateTime(xs:dateTime(\"1999-05-31T00:20:00+00:00\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-timezone-from-dateTimealt-6.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "PT0S") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-timezone-from-dateTimealt-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:timezone-from-dateTime(xs:dateTime(\"1999-05-31T23:20:00-00:00\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-timezone-from-dateTimealt-7.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "PT0S") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-timezone-from-dateTimealt-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:timezone-from-dateTime(xs:dateTime(\"1970-01-01T00:02:00Z\")) + fn:timezone-from-dateTime(xs:dateTime(\"1970-01-01T10:03:00Z\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-timezone-from-dateTimealt-8.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "PT0S") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-timezone-from-dateTimealt-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:timezone-from-dateTime(xs:dateTime(\"1970-01-01T00:00:00+04:00\")) - fn:timezone-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00+02:00\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-timezone-from-dateTimealt-9.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "PT2H") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-timezone-from-dateTimealt-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:min(fn:timezone-from-dateTime(xs:dateTime(\"1970-01-01T02:00:00Z\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-timezone-from-dateTimealt-10.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "PT0S") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-timezone-from-dateTimealt-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:timezone-from-dateTime(xs:dateTime(\"1970-01-01T02:00:00+10:00\")) div fn:timezone-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00+05:00\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-timezone-from-dateTimealt-11.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "2") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-timezone-from-dateTimealt-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:number(fn:timezone-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-timezone-from-dateTimealt-12.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "NaN") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-timezone-from-dateTimealt-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:max(fn:timezone-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-timezone-from-dateTimealt-13.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "PT0S") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-timezone-from-dateTimealt-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:string(fn:timezone-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-timezone-from-dateTimealt-14.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "PT0S") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-timezone-from-dateTimealt-15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:string(fn:timezone-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\"))) and fn:string(fn:timezone-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-timezone-from-dateTimealt-15.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-timezone-from-dateTimealt-16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:timezone-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\")) eq fn:timezone-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-timezone-from-dateTimealt-16.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-timezone-from-dateTimealt-17'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:timezone-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\")) ne fn:timezone-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-timezone-from-dateTimealt-17.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-timezone-from-dateTimealt-18'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:timezone-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\")) le fn:timezone-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-timezone-from-dateTimealt-18.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-timezone-from-dateTimealt-19'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:timezone-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\")) ge fn:timezone-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-timezone-from-dateTimealt-19.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-timezone-from-dateTimealt-20'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:string(fn:timezone-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\"))) or fn:string(fn:timezone-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-timezone-from-dateTimealt-20.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-TimezoneFromDateTimeFunc-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "timezone-from-dateTime()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-TimezoneFromDateTimeFunc-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPST0017") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPST0017 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-TimezoneFromDateTimeFunc-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "timezone-from-dateTime((), \"Wrong param\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-TimezoneFromDateTimeFunc-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPST0017") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPST0017 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-TimezoneFromDateTimeFunc-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(timezone-from-dateTime(()))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-TimezoneFromDateTimeFunc-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-TimezoneFromDateTimeFunc-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "timezone-from-dateTime(()) instance of xs:dayTimeDuration?",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-TimezoneFromDateTimeFunc-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-TimezoneFromDateTimeFunc-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "timezone-from-dateTime(xs:dateTime(\"2004-10-12T23:43:12Z\")) eq xs:dayTimeDuration(\"PT0S\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-TimezoneFromDateTimeFunc-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-TimezoneFromDateTimeFunc-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "timezone-from-dateTime(xs:dateTime(\"2004-10-12T23:43:12-08:23\")) eq xs:dayTimeDuration(\"-PT8H23M\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-TimezoneFromDateTimeFunc-6.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-TimezoneFromDateTimeFunc-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(timezone-from-dateTime(xs:dateTime(\"2004-12-10T23:43:41.965\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-TimezoneFromDateTimeFunc-7.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.
