-module('fn_dateTime_SUITE').

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

-export(['fn-dateTime-1'/1]).
-export(['fn-dateTime-2'/1]).
-export(['fn-dateTime-3'/1]).
-export(['fn-dateTime-4'/1]).
-export(['fn-dateTime-5'/1]).
-export(['fn-dateTime-6'/1]).
-export(['fn-dateTime-7'/1]).
-export(['fn-dateTime-8'/1]).
-export(['fn-dateTime-9'/1]).
-export(['fn-dateTime-10'/1]).
-export(['fn-dateTime-11'/1]).
-export(['fn-dateTime-12'/1]).
-export(['fn-dateTime-13'/1]).
-export(['fn-dateTime-14'/1]).
-export(['fn-dateTime-15'/1]).
-export(['fn-dateTime-16'/1]).
-export(['fn-dateTime-17'/1]).
-export(['fn-dateTime-18'/1]).
-export(['fn-dateTime-19'/1]).
-export(['fn-dateTime-20'/1]).
-export(['fn-dateTime-21'/1]).
-export(['fn-dateTime-22'/1]).
-export(['fn-dateTime-23'/1]).
-export(['fn-dateTime-24'/1]).
-export(['fn-dateTime-25'/1]).
-export(['fn-dateTime-26'/1]).
-export(['fn-dateTime-27'/1]).
-export(['fn-dateTime-28'/1]).
-export(['fn-dateTime-29'/1]).
-export(['fn-dateTime-30'/1]).
-export(['forg0008-1'/1]).
-export(['K-DateTimeFunc-1'/1]).
-export(['K-DateTimeFunc-2'/1]).
-export(['K-DateTimeFunc-3'/1]).
-export(['K-DateTimeFunc-4'/1]).
-export(['K-DateTimeFunc-5'/1]).
-export(['K-DateTimeFunc-6'/1]).
-export(['K-DateTimeFunc-7'/1]).
-export(['K-DateTimeFunc-8'/1]).
-export(['K-DateTimeFunc-9'/1]).
-export(['K-DateTimeFunc-10'/1]).
-export(['K-DateTimeFunc-11'/1]).
-export(['K-DateTimeFunc-12'/1]).
-export(['K-DateTimeFunc-13'/1]).
-export(['K-DateTimeFunc-14'/1]).
-export(['K-DateTimeFunc-15'/1]).
-export(['K-DateTimeFunc-16'/1]).
-export(['K-DateTimeFunc-17'/1]).
-export(['K-DateTimeFunc-18'/1]).
-export(['K2-DateTimeFunc-1'/1]).
-export(['cbcl-dateTime-001'/1]).
-export(['cbcl-dateTime-002'/1]).

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
        {group, group_1},
        {group, group_2}
    ].

groups() ->
    [
        {group_0, [parallel], [
            'fn-dateTime-1',
            'fn-dateTime-2',
            'fn-dateTime-3',
            'fn-dateTime-4',
            'fn-dateTime-5',
            'fn-dateTime-6',
            'fn-dateTime-7',
            'fn-dateTime-8',
            'fn-dateTime-9',
            'fn-dateTime-10',
            'fn-dateTime-11',
            'fn-dateTime-12',
            'fn-dateTime-13',
            'fn-dateTime-14',
            'fn-dateTime-15',
            'fn-dateTime-16',
            'fn-dateTime-17',
            'fn-dateTime-18',
            'fn-dateTime-19',
            'fn-dateTime-20',
            'fn-dateTime-21',
            'fn-dateTime-22',
            'fn-dateTime-23'
        ]},
        {group_1, [parallel], [
            'fn-dateTime-24',
            'fn-dateTime-25',
            'fn-dateTime-26',
            'fn-dateTime-27',
            'fn-dateTime-28',
            'fn-dateTime-29',
            'fn-dateTime-30',
            'forg0008-1',
            'K-DateTimeFunc-1',
            'K-DateTimeFunc-2',
            'K-DateTimeFunc-3',
            'K-DateTimeFunc-4',
            'K-DateTimeFunc-5',
            'K-DateTimeFunc-6',
            'K-DateTimeFunc-7',
            'K-DateTimeFunc-8',
            'K-DateTimeFunc-9',
            'K-DateTimeFunc-10',
            'K-DateTimeFunc-11',
            'K-DateTimeFunc-12',
            'K-DateTimeFunc-13',
            'K-DateTimeFunc-14',
            'K-DateTimeFunc-15',
            'K-DateTimeFunc-16'
        ]},
        {group_2, [parallel], [
            'K-DateTimeFunc-17',
            'K-DateTimeFunc-18',
            'K2-DateTimeFunc-1',
            'cbcl-dateTime-001',
            'cbcl-dateTime-002'
        ]}
    ].

'fn-dateTime-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:dateTime(xs:date(\"1999-12-31\"), xs:time(\"12:00:00\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-dateTime-1.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1999-12-31T12:00:00") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-dateTime-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:dateTime(xs:date(\"1999-12-31\"), xs:time(\"24:00:00\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-dateTime-2.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1999-12-31T00:00:00") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-dateTime-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:dateTime(xs:date(\"1999-12-31Z\"), xs:time(\"23:00:00\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-dateTime-3.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1999-12-31T23:00:00Z") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-dateTime-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:dateTime(xs:date(\"1999-12-31\"), xs:time(\"23:00:00Z\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-dateTime-4.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1999-12-31T23:00:00Z") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-dateTime-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:dateTime(xs:date(\"1999-12-31Z\"), xs:time(\"23:00:00Z\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-dateTime-5.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1999-12-31T23:00:00Z") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-dateTime-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:dateTime(xs:date(\"1999-12-31+10:00\"), xs:time(\"23:00:00+10:00\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-dateTime-6.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1999-12-31T23:00:00+10:00") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-dateTime-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:dateTime(xs:date(\"1999-12-31+10:00\"), xs:time(\"23:00:00+10:00\")) eq fn:dateTime(xs:date(\"1999-12-31+10:00\"), xs:time(\"23:00:00+10:00\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-dateTime-7.xq"), Qry1),
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

'fn-dateTime-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:dateTime(xs:date(\"1999-12-31+10:00\"), xs:time(\"23:00:00+10:00\")) ne fn:dateTime(xs:date(\"1999-12-31+10:00\"), xs:time(\"23:00:00+10:00\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-dateTime-8.xq"), Qry1),
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

'fn-dateTime-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:dateTime(xs:date(\"1999-12-31+10:00\"), xs:time(\"23:00:00+10:00\")) le fn:dateTime(xs:date(\"1999-12-31+10:00\"), xs:time(\"23:00:00+10:00\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-dateTime-9.xq"), Qry1),
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

'fn-dateTime-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:dateTime(xs:date(\"1999-12-31+10:00\"), xs:time(\"23:00:00+10:00\")) ge fn:dateTime(xs:date(\"1999-12-31+10:00\"), xs:time(\"23:00:00+10:00\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-dateTime-10.xq"), Qry1),
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

'fn-dateTime-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:dateTime(xs:date(\"1999-12-31+10:00\"), xs:time(\"23:00:00+10:00\")) lt fn:dateTime(xs:date(\"1999-12-31+10:00\"), xs:time(\"23:00:00+10:00\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-dateTime-11.xq"), Qry1),
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

'fn-dateTime-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:dateTime(xs:date(\"1999-12-31+10:00\"), xs:time(\"23:00:00+10:00\")) le fn:dateTime(xs:date(\"1999-12-31+10:00\"), xs:time(\"23:00:00+10:00\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-dateTime-12.xq"), Qry1),
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

'fn-dateTime-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:dateTime(xs:date(\"1999-12-31+10:00\"), xs:time(\"23:00:00+10:00\")) gt fn:dateTime(xs:date(\"1999-12-31+10:00\"), xs:time(\"23:00:00+10:00\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-dateTime-13.xq"), Qry1),
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

'fn-dateTime-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:dateTime(xs:date(\"1999-12-31+10:00\"), xs:time(\"23:00:00+10:00\")) ge fn:dateTime(xs:date(\"1999-12-31+10:00\"), xs:time(\"23:00:00+10:00\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-dateTime-14.xq"), Qry1),
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

'fn-dateTime-15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:year-from-dateTime(fn:dateTime(xs:date(\"1999-12-31+10:00\"), xs:time(\"23:00:00+10:00\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-dateTime-15.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1999") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-dateTime-16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:month-from-dateTime(fn:dateTime(xs:date(\"1999-12-31+10:00\"), xs:time(\"23:00:00+10:00\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-dateTime-16.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "12") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-dateTime-17'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:day-from-dateTime(fn:dateTime(xs:date(\"1999-12-31+10:00\"), xs:time(\"23:00:00+10:00\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-dateTime-17.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "31") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-dateTime-18'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:hours-from-dateTime(fn:dateTime(xs:date(\"1999-12-31+10:00\"), xs:time(\"23:00:00+10:00\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-dateTime-18.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "23") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-dateTime-19'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:minutes-from-dateTime(fn:dateTime(xs:date(\"1999-12-31+10:00\"), xs:time(\"23:00:00+10:00\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-dateTime-19.xq"), Qry1),
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

'fn-dateTime-20'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:seconds-from-dateTime(fn:dateTime(xs:date(\"1999-12-31+10:00\"), xs:time(\"23:00:00+10:00\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-dateTime-20.xq"), Qry1),
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

'fn-dateTime-21'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:timezone-from-dateTime(fn:dateTime(xs:date(\"1999-12-31+10:00\"), xs:time(\"23:00:00+10:00\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-dateTime-21.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "PT10H") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-dateTime-22'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:adjust-dateTime-to-timezone(fn:dateTime(xs:date(\"1999-12-31+10:00\"), xs:time(\"23:00:00+10:00\")),xs:dayTimeDuration(\"PT10H\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-dateTime-22.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1999-12-31T23:00:00+10:00") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-dateTime-23'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:dateTime(xs:date(\"1999-12-31+10:00\"), xs:time(\"23:00:00+10:00\")) - fn:dateTime(xs:date(\"1999-12-31+10:00\"), xs:time(\"22:00:00+10:00\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-dateTime-23.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "PT1H") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-dateTime-24'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        " fn:dateTime(xs:date(\"1999-12-31+10:00\"), xs:time(\"23:00:00+10:00\")) + xs:yearMonthDuration(\"P1Y2M\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-dateTime-24.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "2001-02-28T23:00:00+10:00") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-dateTime-25'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        " fn:dateTime(xs:date(\"1999-12-31+10:00\"), xs:time(\"23:00:00+10:00\")) + xs:dayTimeDuration(\"P3DT1H15M\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-dateTime-25.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "2000-01-04T00:15:00+10:00") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-dateTime-26'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        " fn:dateTime(xs:date(\"1999-12-31+10:00\"), xs:time(\"23:00:00+10:00\")) - xs:yearMonthDuration(\"P1Y2M\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-dateTime-26.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1998-10-31T23:00:00+10:00") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-dateTime-27'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        " fn:dateTime(xs:date(\"1999-12-31+10:00\"), xs:time(\"23:00:00+10:00\")) - xs:dayTimeDuration(\"P3DT1H15M\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-dateTime-27.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1999-12-28T21:45:00+10:00") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-dateTime-28'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = " fn:count(fn:dateTime((), xs:time(\"23:00:00+10:00\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-dateTime-28.xq"), Qry1),
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

'fn-dateTime-29'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = " fn:count(fn:dateTime(xs:date(\"1999-12-31+10:00\"), ()))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-dateTime-29.xq"), Qry1),
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

'fn-dateTime-30'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = " fn:count(fn:dateTime((),()))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-dateTime-30.xq"), Qry1),
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

'forg0008-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = " fn:dateTime(xs:date(\"1999-12-31Z\"), xs:time(\"12:00:00+10:00\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "forg0008-1.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORG0008") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORG0008 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-DateTimeFunc-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "dateTime()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateTimeFunc-1.xq"), Qry1),
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

'K-DateTimeFunc-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "dateTime(xs:date(\"2004-03-04\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateTimeFunc-2.xq"), Qry1),
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

'K-DateTimeFunc-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "dateTime(xs:date(\"2004-03-04\"), xs:time(\"08:05:23\"), ())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateTimeFunc-3.xq"), Qry1),
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

'K-DateTimeFunc-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(dateTime(xs:date(\"2004-03-04\"), ()))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateTimeFunc-4.xq"), Qry1),
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

'K-DateTimeFunc-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(dateTime((), xs:time(\"08:05:23\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateTimeFunc-5.xq"), Qry1),
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

'K-DateTimeFunc-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "dateTime(xs:date(\"2004-03-04-00:01\"), xs:time(\"08:05:23+00:01\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateTimeFunc-6.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORG0008") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORG0008 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-DateTimeFunc-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "dateTime(xs:date(\"2004-03-04-00:01\"), xs:time(\"08:05:23Z\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateTimeFunc-7.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORG0008") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORG0008 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-DateTimeFunc-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "dateTime(xs:date(\"2004-03-04-00:00\"), xs:time(\"08:05:23+00:00\")) eq xs:dateTime(\"2004-03-04T08:05:23Z\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateTimeFunc-8.xq"), Qry1),
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

'K-DateTimeFunc-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "dateTime(xs:date(\"2004-03-04+11:00\"), xs:time(\"08:05:23+11:00\")) eq xs:dateTime(\"2004-03-04T08:05:23+11:00\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateTimeFunc-9.xq"), Qry1),
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

'K-DateTimeFunc-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "dateTime(xs:date(\"2004-03-04\"), xs:time(\"08:05:23-05:00\")) eq xs:dateTime(\"2004-03-04T08:05:23-05:00\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateTimeFunc-10.xq"), Qry1),
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

'K-DateTimeFunc-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "dateTime(xs:date(\"2004-03-04+11:00\"), xs:time(\"08:05:23\")) eq xs:dateTime(\"2004-03-04T08:05:23+11:00\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateTimeFunc-11.xq"), Qry1),
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

'K-DateTimeFunc-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "xs:string(dateTime(xs:date(\"1999-12-31\"), xs:time(\"24:00:00\"))) eq \"1999-12-31T00:00:00\"",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateTimeFunc-12.xq"), Qry1),
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

'K-DateTimeFunc-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "dateTime(xs:date(\"2004-03-04Z\"), xs:time(\"08:05:23Z\")) eq xs:dateTime(\"2004-03-04T08:05:23Z\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateTimeFunc-13.xq"), Qry1),
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

'K-DateTimeFunc-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "dateTime(xs:date(\"2004-03-04Z\"), xs:time(\"08:05:23\")) eq xs:dateTime(\"2004-03-04T08:05:23Z\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateTimeFunc-14.xq"), Qry1),
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

'K-DateTimeFunc-15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "dateTime(xs:date(\"2004-03-04+13:07\"), xs:time(\"08:05:23\")) eq xs:dateTime(\"2004-03-04T08:05:23+13:07\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateTimeFunc-15.xq"), Qry1),
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

'K-DateTimeFunc-16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "dateTime(xs:date(\"2004-03-04\"), xs:time(\"08:05:23+13:07\")) eq xs:dateTime(\"2004-03-04T08:05:23+13:07\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateTimeFunc-16.xq"), Qry1),
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

'K-DateTimeFunc-17'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "dateTime(xs:date(\"2004-03-04\"), xs:time(\"08:05:23\")) eq xs:dateTime(\"2004-03-04T08:05:23\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateTimeFunc-17.xq"), Qry1),
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

'K-DateTimeFunc-18'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "dateTime(xs:date(\"2004-03-04\"), xs:time(\"08:05:23Z\")) eq xs:dateTime(\"2004-03-04T08:05:23Z\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateTimeFunc-18.xq"), Qry1),
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

'K2-DateTimeFunc-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(dateTime((), ()))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DateTimeFunc-1.xq"), Qry1),
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

'cbcl-dateTime-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:index-of( ( 'A', fn:current-dateTime(), 'B' ), fn:dateTime(fn:current-date(), fn:current-time()) )",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-dateTime-001.xq"), Qry1),
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

'cbcl-dateTime-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:index-of( ( 'A', fn:current-dateTime(), 'B' ), fn:dateTime(adjust-date-to-timezone(fn:current-date(), xs:dayTimeDuration(\"PT1H\")), adjust-time-to-timezone(fn:current-time(), xs:dayTimeDuration(\"PT2H\"))))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-dateTime-002.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORG0008") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORG0008 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.
