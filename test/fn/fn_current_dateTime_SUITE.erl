-module('fn_current_dateTime_SUITE').

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

-export(['fn-current-dateTime-1'/1]).
-export(['fn-current-dateTime-2'/1]).
-export(['fn-current-dateTime-3'/1]).
-export(['fn-current-dateTime-4'/1]).
-export(['fn-current-dateTime-5'/1]).
-export(['fn-current-dateTime-6'/1]).
-export(['fn-current-datetime-7'/1]).
-export(['fn-current-dateTime-8'/1]).
-export(['fn-current-dateTime-9'/1]).
-export(['fn-current-dateTime-10'/1]).
-export(['fn-current-dateTime-11'/1]).
-export(['fn-current-dateTime-12'/1]).
-export(['fn-current-dateTime-13'/1]).
-export(['fn-current-dateTime-14'/1]).
-export(['fn-current-dateTime-15'/1]).
-export(['fn-current-dateTime-16'/1]).
-export(['fn-current-dateTime-17'/1]).
-export(['fn-current-dateTime-18'/1]).
-export(['fn-current-dateTime-19'/1]).
-export(['fn-current-dateTime-20'/1]).
-export(['fn-current-dateTime-21'/1]).
-export(['fn-current-dateTime-22'/1]).
-export(['fn-current-dateTime-23'/1]).
-export(['fn-current-dateTime-24'/1]).
-export(['fn-current-dateTime-25'/1]).
-export(['K-ContextCurrentDatetimeFunc-1'/1]).
-export(['K-ContextCurrentDatetimeFunc-2'/1]).

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
            'fn-current-dateTime-1',
            'fn-current-dateTime-2',
            'fn-current-dateTime-3',
            'fn-current-dateTime-4',
            'fn-current-dateTime-5',
            'fn-current-dateTime-6',
            'fn-current-datetime-7',
            'fn-current-dateTime-8',
            'fn-current-dateTime-9',
            'fn-current-dateTime-10',
            'fn-current-dateTime-11',
            'fn-current-dateTime-12',
            'fn-current-dateTime-13',
            'fn-current-dateTime-14',
            'fn-current-dateTime-15',
            'fn-current-dateTime-16',
            'fn-current-dateTime-17',
            'fn-current-dateTime-18',
            'fn-current-dateTime-19',
            'fn-current-dateTime-20',
            'fn-current-dateTime-21',
            'fn-current-dateTime-22',
            'fn-current-dateTime-23'
        ]},
        {group_1, [parallel], [
            'fn-current-dateTime-24',
            'fn-current-dateTime-25',
            'K-ContextCurrentDatetimeFunc-1',
            'K-ContextCurrentDatetimeFunc-2'
        ]}
    ].

'fn-current-dateTime-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:current-dateTime()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-current-dateTime-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_type(Res, "xs:dateTime") of
            true -> {comment, "Correct type"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-current-dateTime-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:year-from-dateTime(fn:current-dateTime())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-current-dateTime-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_type(Res, "xs:integer") of
            true -> {comment, "Correct type"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-current-dateTime-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:month-from-dateTime(fn:current-dateTime())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-current-dateTime-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_type(Res, "xs:integer") of
            true -> {comment, "Correct type"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-current-dateTime-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:day-from-dateTime(fn:current-dateTime())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-current-dateTime-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_type(Res, "xs:integer") of
            true -> {comment, "Correct type"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-current-dateTime-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:current-dateTime() - fn:current-dateTime()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-current-dateTime-5.xq"),
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

'fn-current-dateTime-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:current-dateTime() + xs:dayTimeDuration(\"P3DT1H15M\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-current-dateTime-6.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_type(Res, "xs:dateTime") of
            true -> {comment, "Correct type"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-current-datetime-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:current-dateTime() - xs:dayTimeDuration(\"P3DT1H15M\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-current-datetime-7.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_type(Res, "xs:dateTime") of
            true -> {comment, "Correct type"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-current-dateTime-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:current-dateTime(\"Argument 1\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-current-dateTime-8.xq"),
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

'fn-current-dateTime-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:current-dateTime() - fn:current-dateTime()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-current-dateTime-9.xq"),
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

'fn-current-dateTime-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(fn:current-dateTime())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-current-dateTime-10.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_type(Res, "xs:string") of
            true -> {comment, "Correct type"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-current-dateTime-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:timezone-from-dateTime(current-dateTime())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-current-dateTime-11.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_type(Res, "xs:dayTimeDuration") of
            true -> {comment, "Correct type"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-current-dateTime-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:string(fn:current-dateTime()) eq fn:string(fn:current-dateTime())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-current-dateTime-12.xq"),
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

'fn-current-dateTime-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:string(fn:current-dateTime()) ne fn:string(fn:current-dateTime())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-current-dateTime-13.xq"),
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

'fn-current-dateTime-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:string(fn:current-dateTime()) le fn:string(fn:current-dateTime())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-current-dateTime-14.xq"),
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

'fn-current-dateTime-15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:string(fn:current-dateTime()) ge fn:string(fn:current-dateTime())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-current-dateTime-15.xq"),
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

'fn-current-dateTime-16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:string(fn:current-dateTime()) and fn:true()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-current-dateTime-16.xq"),
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

'fn-current-dateTime-17'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:string(fn:current-dateTime()) and fn:false()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-current-dateTime-17.xq"),
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

'fn-current-dateTime-18'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:string(fn:current-dateTime()) or fn:true()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-current-dateTime-18.xq"),
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

'fn-current-dateTime-19'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:string(fn:current-dateTime()) or fn:false()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-current-dateTime-19.xq"),
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

'fn-current-dateTime-20'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:not(fn:string(fn:current-dateTime()))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-current-dateTime-20.xq"),
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

'fn-current-dateTime-21'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:current-dateTime() - xs:yearMonthDuration(\"P1Y2M\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-current-dateTime-21.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_type(Res, "xs:dateTime") of
            true -> {comment, "Correct type"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-current-dateTime-22'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:hours-from-dateTime(fn:current-dateTime())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-current-dateTime-22.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_type(Res, "xs:integer") of
            true -> {comment, "Correct type"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-current-dateTime-23'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:minutes-from-dateTime(fn:current-dateTime())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-current-dateTime-23.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_type(Res, "xs:integer") of
            true -> {comment, "Correct type"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-current-dateTime-24'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:seconds-from-dateTime(fn:current-dateTime())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-current-dateTime-24.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_type(Res, "xs:decimal") of
            true -> {comment, "Correct type"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-current-dateTime-25'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "exists(timezone-from-dateTime(current-dateTime()))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-current-dateTime-25.xq"),
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

'K-ContextCurrentDatetimeFunc-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "current-dateTime(\"WRONG PARAM\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ContextCurrentDatetimeFunc-1.xq"),
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

'K-ContextCurrentDatetimeFunc-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "current-dateTime() eq current-dateTime()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ContextCurrentDatetimeFunc-2.xq"),
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
