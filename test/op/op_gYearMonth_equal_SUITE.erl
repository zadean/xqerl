-module('op_gYearMonth_equal_SUITE').

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

-export(['op-gYearMonth-equal2args-1'/1]).
-export(['op-gYearMonth-equal2args-2'/1]).
-export(['op-gYearMonth-equal2args-3'/1]).
-export(['op-gYearMonth-equal2args-4'/1]).
-export(['op-gYearMonth-equal2args-5'/1]).
-export(['op-gYearMonth-equal2args-6'/1]).
-export(['op-gYearMonth-equal2args-7'/1]).
-export(['op-gYearMonth-equal2args-8'/1]).
-export(['op-gYearMonth-equal2args-9'/1]).
-export(['op-gYearMonth-equal2args-10'/1]).
-export(['op-gYearMonth-equalNew-1'/1]).
-export(['op-gYearMonth-equalNew-2'/1]).
-export(['op-gYearMonth-equalNew-3'/1]).
-export(['op-gYearMonth-equalNew-4'/1]).
-export(['op-gYearMonth-equalNew-5'/1]).
-export(['op-gYearMonth-equalNew-6'/1]).
-export(['op-gYearMonth-equalNew-7'/1]).
-export(['op-gYearMonth-equalNew-8'/1]).
-export(['op-gYearMonth-equalNew-9'/1]).
-export(['op-gYearMonth-equalNew-10'/1]).
-export(['op-gYearMonth-equalNew-11'/1]).
-export(['op-gYearMonth-equalNew-12'/1]).
-export(['op-gYearMonth-equalNew-13'/1]).
-export(['op-gYearMonth-equalNew-14'/1]).
-export(['K-gYearMonthEQ-1'/1]).
-export(['K-gYearMonthEQ-2'/1]).
-export(['K-gYearMonthEQ-3'/1]).
-export(['K-gYearMonthEQ-4'/1]).
-export(['K-gYearMonthEQ-5'/1]).
-export(['K-gYearMonthEQ-6'/1]).
-export(['K-gYearMonthEQ-7'/1]).
-export(['K-gYearMonthEQ-8'/1]).
-export(['cbcl-gYearMonth-equal-001'/1]).
-export(['cbcl-gYearMonth-equal-002'/1]).
-export(['cbcl-gYearMonth-equal-003'/1]).
-export(['cbcl-gYearMonth-equal-004'/1]).
-export(['cbcl-gYearMonth-equal-005'/1]).
-export(['cbcl-gYearMonth-equal-006'/1]).
-export(['cbcl-gYearMonth-equal-007'/1]).
-export(['cbcl-gYearMonth-equal-008'/1]).
-export(['cbcl-gYearMonth-equal-009'/1]).
-export(['cbcl-gYearMonth-equal-010'/1]).
-export(['cbcl-gYearMonth-equal-011'/1]).
-export(['cbcl-gYearMonth-equal-012'/1]).
-export(['cbcl-gYearMonth-equal-013'/1]).
-export(['cbcl-gYearMonth-equal-014'/1]).

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
    __BaseDir = filename:join(TD, "op"),
    [{base_dir, __BaseDir} | Config].

all() ->
    [
        {group, group_0},
        {group, group_1}
    ].

groups() ->
    [
        {group_0, [parallel], [
            'op-gYearMonth-equal2args-1',
            'op-gYearMonth-equal2args-2',
            'op-gYearMonth-equal2args-3',
            'op-gYearMonth-equal2args-4',
            'op-gYearMonth-equal2args-5',
            'op-gYearMonth-equal2args-6',
            'op-gYearMonth-equal2args-7',
            'op-gYearMonth-equal2args-8',
            'op-gYearMonth-equal2args-9',
            'op-gYearMonth-equal2args-10',
            'op-gYearMonth-equalNew-1',
            'op-gYearMonth-equalNew-2',
            'op-gYearMonth-equalNew-3',
            'op-gYearMonth-equalNew-4',
            'op-gYearMonth-equalNew-5',
            'op-gYearMonth-equalNew-6',
            'op-gYearMonth-equalNew-7',
            'op-gYearMonth-equalNew-8',
            'op-gYearMonth-equalNew-9',
            'op-gYearMonth-equalNew-10',
            'op-gYearMonth-equalNew-11',
            'op-gYearMonth-equalNew-12',
            'op-gYearMonth-equalNew-13'
        ]},
        {group_1, [parallel], [
            'op-gYearMonth-equalNew-14',
            'K-gYearMonthEQ-1',
            'K-gYearMonthEQ-2',
            'K-gYearMonthEQ-3',
            'K-gYearMonthEQ-4',
            'K-gYearMonthEQ-5',
            'K-gYearMonthEQ-6',
            'K-gYearMonthEQ-7',
            'K-gYearMonthEQ-8',
            'cbcl-gYearMonth-equal-001',
            'cbcl-gYearMonth-equal-002',
            'cbcl-gYearMonth-equal-003',
            'cbcl-gYearMonth-equal-004',
            'cbcl-gYearMonth-equal-005',
            'cbcl-gYearMonth-equal-006',
            'cbcl-gYearMonth-equal-007',
            'cbcl-gYearMonth-equal-008',
            'cbcl-gYearMonth-equal-009',
            'cbcl-gYearMonth-equal-010',
            'cbcl-gYearMonth-equal-011',
            'cbcl-gYearMonth-equal-012',
            'cbcl-gYearMonth-equal-013',
            'cbcl-gYearMonth-equal-014'
        ]}
    ].

'op-gYearMonth-equal2args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gYearMonth(\"1970-01Z\") eq xs:gYearMonth(\"1970-01Z\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-gYearMonth-equal2args-1.xq"),
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

'op-gYearMonth-equal2args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gYearMonth(\"1984-12Z\") eq xs:gYearMonth(\"1970-01Z\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-gYearMonth-equal2args-2.xq"),
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

'op-gYearMonth-equal2args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gYearMonth(\"2030-12Z\") eq xs:gYearMonth(\"1970-01Z\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-gYearMonth-equal2args-3.xq"),
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

'op-gYearMonth-equal2args-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gYearMonth(\"1970-01Z\") eq xs:gYearMonth(\"1984-12Z\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-gYearMonth-equal2args-4.xq"),
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

'op-gYearMonth-equal2args-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gYearMonth(\"1970-01Z\") eq xs:gYearMonth(\"2030-12Z\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-gYearMonth-equal2args-5.xq"),
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

'op-gYearMonth-equal2args-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gYearMonth(\"1970-01Z\") ne xs:gYearMonth(\"1970-01Z\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-gYearMonth-equal2args-6.xq"),
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

'op-gYearMonth-equal2args-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gYearMonth(\"1984-12Z\") ne xs:gYearMonth(\"1970-01Z\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-gYearMonth-equal2args-7.xq"),
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

'op-gYearMonth-equal2args-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gYearMonth(\"2030-12Z\") ne xs:gYearMonth(\"1970-01Z\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-gYearMonth-equal2args-8.xq"),
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

'op-gYearMonth-equal2args-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gYearMonth(\"1970-01Z\") ne xs:gYearMonth(\"1984-12Z\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-gYearMonth-equal2args-9.xq"),
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

'op-gYearMonth-equal2args-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gYearMonth(\"1970-01Z\") ne xs:gYearMonth(\"2030-12Z\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-gYearMonth-equal2args-10.xq"),
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

'op-gYearMonth-equalNew-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(xs:gYearMonth(\"1976-02-05:00\") eq xs:gYearMonth(\"1976-03Z\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-gYearMonth-equalNew-1.xq"),
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

'op-gYearMonth-equalNew-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(xs:gYearMonth(\"1976-03-05:00\") eq xs:gYearMonth(\"1976-03Z\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-gYearMonth-equalNew-2.xq"),
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

'op-gYearMonth-equalNew-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:not((xs:gYearMonth(\"1995-02Z\") eq xs:gYearMonth(\"1995-02Z\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-gYearMonth-equalNew-3.xq"),
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

'op-gYearMonth-equalNew-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:not(xs:gYearMonth(\"2005-02Z\") ne xs:gYearMonth(\"2006-03Z\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-gYearMonth-equalNew-4.xq"),
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

'op-gYearMonth-equalNew-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:not(xs:gYearMonth(\"2000-01Z\") eq xs:gYearMonth(\"2001-04Z\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-gYearMonth-equalNew-5.xq"),
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

'op-gYearMonth-equalNew-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:not(xs:gYearMonth(\"2005-01Z\") ne xs:gYearMonth(\"2005-01Z\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-gYearMonth-equalNew-6.xq"),
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

'op-gYearMonth-equalNew-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(xs:gYearMonth(\"2000-02Z\") eq xs:gYearMonth(\"2000-03Z\")) and (xs:gYearMonth(\"2001-01Z\") eq xs:gYearMonth(\"2001-01Z\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-gYearMonth-equalNew-7.xq"),
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

'op-gYearMonth-equalNew-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(xs:gYearMonth(\"2000-01Z\") ne xs:gYearMonth(\"2000-01Z\")) and (xs:gYearMonth(\"1975-01Z\") ne xs:gYearMonth(\"1975-03Z\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-gYearMonth-equalNew-8.xq"),
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

'op-gYearMonth-equalNew-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(xs:gYearMonth(\"2000-01Z\") eq xs:gYearMonth(\"2000-03Z\")) or (xs:gYearMonth(\"1976-06Z\") eq xs:gYearMonth(\"1976-06Z\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-gYearMonth-equalNew-9.xq"),
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

'op-gYearMonth-equalNew-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(xs:gYearMonth(\"1976-01Z\") ne xs:gYearMonth(\"1976-02Z\")) or (xs:gYearMonth(\"1980-03Z\") ne xs:gYearMonth(\"1980-04Z\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-gYearMonth-equalNew-10.xq"),
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

'op-gYearMonth-equalNew-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(xs:gYearMonth(\"1980-05Z\") eq xs:gYearMonth(\"1980-05Z\")) or (fn:true())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-gYearMonth-equalNew-11.xq"),
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

'op-gYearMonth-equalNew-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(xs:gYearMonth(\"2000-06Z\") ne xs:gYearMonth(\"2000-07Z\")) or (fn:true())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-gYearMonth-equalNew-12.xq"),
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

'op-gYearMonth-equalNew-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(xs:gYearMonth(\"1980-09Z\") eq xs:gYearMonth(\"1980-09Z\")) or (fn:false())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-gYearMonth-equalNew-13.xq"),
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

'op-gYearMonth-equalNew-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(xs:gYearMonth(\"1980-03Z\") ne xs:gYearMonth(\"1980-03Z\")) or (fn:false())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-gYearMonth-equalNew-14.xq"),
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

'K-gYearMonthEQ-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gYearMonth(\"2001-01 \") eq xs:gYearMonth(\"2001-01\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-gYearMonthEQ-1.xq"), Qry1),
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

'K-gYearMonthEQ-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "not(xs:gYearMonth(\"2001-03\") eq xs:gYearMonth(\"2000-03\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-gYearMonthEQ-2.xq"), Qry1),
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

'K-gYearMonthEQ-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gYearMonth(\"2001-12\") ne xs:gYearMonth(\"2001-11\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-gYearMonthEQ-3.xq"), Qry1),
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

'K-gYearMonthEQ-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "not(xs:gYearMonth(\"1995-11\") ne xs:gYearMonth(\"1995-11\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-gYearMonthEQ-4.xq"), Qry1),
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

'K-gYearMonthEQ-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gYearMonth(\"1999-01-00:00\") eq xs:gYearMonth(\"1999-01Z\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-gYearMonthEQ-5.xq"), Qry1),
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

'K-gYearMonthEQ-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gYearMonth(\"1999-01+00:00\") eq xs:gYearMonth(\"1999-01Z\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-gYearMonthEQ-6.xq"), Qry1),
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

'K-gYearMonthEQ-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gYearMonth(\"1999-01Z\") eq xs:gYearMonth(\"1999-01Z\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-gYearMonthEQ-7.xq"), Qry1),
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

'K-gYearMonthEQ-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gYearMonth(\"1999-01-00:00\") eq xs:gYearMonth(\"1999-01+00:00\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-gYearMonthEQ-8.xq"), Qry1),
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

'cbcl-gYearMonth-equal-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare function local:gYearMonth($year as xs:integer) { xs:gYearMonth(concat(string(2000 + $year), \"-01\")) }; not(local:gYearMonth(7) eq xs:gYearMonth(\"2008-01\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-gYearMonth-equal-001.xq"),
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

'cbcl-gYearMonth-equal-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "if (implicit-timezone() eq xs:dayTimeDuration('PT9M'))\n"
        "            then xs:gYearMonth(\"2008-01\") eq xs:gYearMonth(\"2008-01+09:01\")\n"
        "            else xs:gYearMonth(\"2008-01\") eq xs:gYearMonth(\"2008-01+09:00\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-gYearMonth-equal-002.xq"),
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

'cbcl-gYearMonth-equal-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "if (implicit-timezone() eq xs:dayTimeDuration('PT9M'))\n"
        "            then xs:gYearMonth(\"2008-01+09:01\") eq xs:gYearMonth(\"2008-01\")\n"
        "            else xs:gYearMonth(\"2008-01+09:00\") eq xs:gYearMonth(\"2008-01\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-gYearMonth-equal-003.xq"),
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

'cbcl-gYearMonth-equal-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "if (implicit-timezone() eq xs:dayTimeDuration('-PT9M'))\n"
        "            then xs:gYearMonth(\"2008-01\") eq xs:gYearMonth(\"2008-01-09:01\")\n"
        "            else xs:gYearMonth(\"2008-01\") eq xs:gYearMonth(\"2008-01-09:00\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-gYearMonth-equal-004.xq"),
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

'cbcl-gYearMonth-equal-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "if (implicit-timezone() eq xs:dayTimeDuration('-PT9M'))\n"
        "            then xs:gYearMonth(\"2008-01-09:01\") eq xs:gYearMonth(\"2008-01\")\n"
        "            else xs:gYearMonth(\"2008-01-09:00\") eq xs:gYearMonth(\"2008-01\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-gYearMonth-equal-005.xq"),
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

'cbcl-gYearMonth-equal-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare function local:gYearMonth($year as xs:integer) { xs:gYearMonth(concat(string(2000 + $year), \"-01\")) }; not(local:gYearMonth(7) ne xs:gYearMonth(\"2008-01\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-gYearMonth-equal-006.xq"),
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

'cbcl-gYearMonth-equal-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "if (implicit-timezone() eq xs:dayTimeDuration('PT9M'))\n"
        "            then xs:gYearMonth(\"2008-01\") ne xs:gYearMonth(\"2008-01+09:01\")\n"
        "            else xs:gYearMonth(\"2008-01\") ne xs:gYearMonth(\"2008-01+09:00\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-gYearMonth-equal-007.xq"),
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

'cbcl-gYearMonth-equal-008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "if (implicit-timezone() eq xs:dayTimeDuration('PT9M'))\n"
        "            then xs:gYearMonth(\"2008-01+09:01\") ne xs:gYearMonth(\"2008-01\")\n"
        "            else xs:gYearMonth(\"2008-01+09:00\") ne xs:gYearMonth(\"2008-01\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-gYearMonth-equal-008.xq"),
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

'cbcl-gYearMonth-equal-009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "if (implicit-timezone() eq xs:dayTimeDuration('-PT9M'))\n"
        "            then xs:gYearMonth(\"2008-01\") ne xs:gYearMonth(\"2008-01-09:01\")\n"
        "            else xs:gYearMonth(\"2008-01\") ne xs:gYearMonth(\"2008-01-09:00\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-gYearMonth-equal-009.xq"),
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

'cbcl-gYearMonth-equal-010'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "if (implicit-timezone() eq xs:dayTimeDuration('-PT9M'))\n"
        "            then xs:gYearMonth(\"2008-01-09:01\") ne xs:gYearMonth(\"2008-01\")\n"
        "            else xs:gYearMonth(\"2008-01-09:00\") ne xs:gYearMonth(\"2008-01\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-gYearMonth-equal-010.xq"),
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

'cbcl-gYearMonth-equal-011'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare function local:gYearMonth($gYearMonth as xs:gYearMonth, $null as xs:boolean) { if ($null) then () else $gYearMonth }; exists(local:gYearMonth(xs:gYearMonth(\"1972-12\"), fn:true()) eq xs:gYearMonth(\"1972-12\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-gYearMonth-equal-011.xq"),
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

'cbcl-gYearMonth-equal-012'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare function local:gYearMonth($gYearMonth as xs:gYearMonth, $null as xs:boolean) { if ($null) then () else $gYearMonth }; local:gYearMonth(xs:gYearMonth(\"1972-12\"), fn:false()) eq xs:gYearMonth(\"1972-12\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-gYearMonth-equal-012.xq"),
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

'cbcl-gYearMonth-equal-013'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare function local:gYearMonth($gYearMonth as xs:gYearMonth, $null as xs:boolean) { if ($null) then () else $gYearMonth }; exists(local:gYearMonth(xs:gYearMonth(\"1972-12\"), fn:true()) ne xs:gYearMonth(\"1972-12\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-gYearMonth-equal-013.xq"),
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

'cbcl-gYearMonth-equal-014'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare function local:gYearMonth($gYearMonth as xs:gYearMonth, $null as xs:boolean) { if ($null) then () else $gYearMonth }; local:gYearMonth(xs:gYearMonth(\"1972-12\"), fn:false()) ne xs:gYearMonth(\"1972-12\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-gYearMonth-equal-014.xq"),
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
