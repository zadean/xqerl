-module('op_time_greater_than_SUITE').

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

-export(['op-time-greater-than2args-1'/1]).
-export(['op-time-greater-than2args-2'/1]).
-export(['op-time-greater-than2args-3'/1]).
-export(['op-time-greater-than2args-4'/1]).
-export(['op-time-greater-than2args-5'/1]).
-export(['op-time-greater-than2args-6'/1]).
-export(['op-time-greater-than2args-7'/1]).
-export(['op-time-greater-than2args-8'/1]).
-export(['op-time-greater-than2args-9'/1]).
-export(['op-time-greater-than2args-10'/1]).
-export(['op-time-greater-than-1'/1]).
-export(['op-time-greater-than-2'/1]).
-export(['op-time-greater-than-3'/1]).
-export(['op-time-greater-than-4'/1]).
-export(['op-time-greater-than-5'/1]).
-export(['op-time-greater-than-6'/1]).
-export(['op-time-greater-than-7'/1]).
-export(['op-time-greater-than-8'/1]).
-export(['op-time-greater-than-9'/1]).
-export(['op-time-greater-than-10'/1]).
-export(['op-time-greater-than-11'/1]).
-export(['op-time-greater-than-12'/1]).
-export(['op-time-greater-than-13'/1]).
-export(['op-time-greater-than-14'/1]).
-export(['K-TimeGT-1'/1]).
-export(['K-TimeGT-2'/1]).
-export(['K-TimeGT-3'/1]).
-export(['K-TimeGT-4'/1]).
-export(['K-TimeGT-5'/1]).
-export(['K-TimeGT-6'/1]).
-export(['cbcl-time-greater-than-001'/1]).
-export(['cbcl-time-greater-than-002'/1]).
-export(['cbcl-time-greater-than-003'/1]).
-export(['cbcl-time-greater-than-004'/1]).
-export(['cbcl-time-greater-than-005'/1]).
-export(['cbcl-time-greater-than-006'/1]).
-export(['cbcl-time-greater-than-007'/1]).
-export(['cbcl-time-greater-than-008'/1]).
-export(['cbcl-time-greater-than-009'/1]).
-export(['cbcl-time-greater-than-010'/1]).
-export(['cbcl-time-greater-than-011'/1]).
-export(['cbcl-time-greater-than-012'/1]).
-export(['cbcl-time-greater-than-013'/1]).
-export(['cbcl-time-greater-than-014'/1]).

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
            'op-time-greater-than2args-1',
            'op-time-greater-than2args-2',
            'op-time-greater-than2args-3',
            'op-time-greater-than2args-4',
            'op-time-greater-than2args-5',
            'op-time-greater-than2args-6',
            'op-time-greater-than2args-7',
            'op-time-greater-than2args-8',
            'op-time-greater-than2args-9',
            'op-time-greater-than2args-10',
            'op-time-greater-than-1',
            'op-time-greater-than-2',
            'op-time-greater-than-3',
            'op-time-greater-than-4',
            'op-time-greater-than-5',
            'op-time-greater-than-6',
            'op-time-greater-than-7',
            'op-time-greater-than-8',
            'op-time-greater-than-9',
            'op-time-greater-than-10',
            'op-time-greater-than-11',
            'op-time-greater-than-12',
            'op-time-greater-than-13'
        ]},
        {group_1, [parallel], [
            'op-time-greater-than-14',
            'K-TimeGT-1',
            'K-TimeGT-2',
            'K-TimeGT-3',
            'K-TimeGT-4',
            'K-TimeGT-5',
            'K-TimeGT-6',
            'cbcl-time-greater-than-001',
            'cbcl-time-greater-than-002',
            'cbcl-time-greater-than-003',
            'cbcl-time-greater-than-004',
            'cbcl-time-greater-than-005',
            'cbcl-time-greater-than-006',
            'cbcl-time-greater-than-007',
            'cbcl-time-greater-than-008',
            'cbcl-time-greater-than-009',
            'cbcl-time-greater-than-010',
            'cbcl-time-greater-than-011',
            'cbcl-time-greater-than-012',
            'cbcl-time-greater-than-013',
            'cbcl-time-greater-than-014'
        ]}
    ].

'op-time-greater-than2args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:time(\"00:00:00Z\") gt xs:time(\"00:00:00Z\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-time-greater-than2args-1.xq"),
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

'op-time-greater-than2args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:time(\"08:03:35Z\") gt xs:time(\"00:00:00Z\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-time-greater-than2args-2.xq"),
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

'op-time-greater-than2args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:time(\"23:59:59Z\") gt xs:time(\"00:00:00Z\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-time-greater-than2args-3.xq"),
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

'op-time-greater-than2args-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:time(\"00:00:00Z\") gt xs:time(\"08:03:35Z\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-time-greater-than2args-4.xq"),
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

'op-time-greater-than2args-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:time(\"00:00:00Z\") gt xs:time(\"23:59:59Z\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-time-greater-than2args-5.xq"),
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

'op-time-greater-than2args-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:time(\"00:00:00Z\") le xs:time(\"00:00:00Z\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-time-greater-than2args-6.xq"),
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

'op-time-greater-than2args-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:time(\"08:03:35Z\") le xs:time(\"00:00:00Z\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-time-greater-than2args-7.xq"),
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

'op-time-greater-than2args-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:time(\"23:59:59Z\") le xs:time(\"00:00:00Z\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-time-greater-than2args-8.xq"),
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

'op-time-greater-than2args-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:time(\"00:00:00Z\") le xs:time(\"08:03:35Z\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-time-greater-than2args-9.xq"),
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

'op-time-greater-than2args-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:time(\"00:00:00Z\") le xs:time(\"23:59:59Z\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-time-greater-than2args-10.xq"),
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

'op-time-greater-than-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(xs:time(\"08:00:00+09:00\") gt xs:time(\"17:00:00-06:00\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-time-greater-than-1.xq"),
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

'op-time-greater-than-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(xs:time(\"08:00:00+09:00\") ge xs:time(\"17:00:00-06:00\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-time-greater-than-2.xq"),
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

'op-time-greater-than-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:not((xs:time(\"14:00:00Z\") gt xs:time(\"13:00:00Z\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-time-greater-than-3.xq"),
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

'op-time-greater-than-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:not(xs:time(\"13:00:00Z\") ge xs:time(\"10:00:00Z\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-time-greater-than-4.xq"),
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

'op-time-greater-than-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:not(xs:time(\"13:00:00Z\") gt xs:time(\"14:00:00Z\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-time-greater-than-5.xq"),
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

'op-time-greater-than-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:not(xs:time(\"13:00:00Z\") ge xs:time(\"17:00:00Z\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-time-greater-than-6.xq"),
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

'op-time-greater-than-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(xs:time(\"13:00:00Z\") gt xs:time(\"17:00:00Z\")) and (xs:time(\"13:00:00Z\") gt xs:time(\"17:00:00Z\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-time-greater-than-7.xq"),
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

'op-time-greater-than-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(xs:time(\"13:00:00Z\") ge xs:time(\"17:00:00Z\")) and (xs:time(\"13:00:00Z\") ge xs:time(\"17:00:00Z\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-time-greater-than-8.xq"),
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

'op-time-greater-than-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(xs:time(\"13:00:00Z\") gt xs:time(\"17:00:00Z\")) or (xs:time(\"13:00:00Z\") gt xs:time(\"17:00:00Z\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-time-greater-than-9.xq"),
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

'op-time-greater-than-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(xs:time(\"13:00:00Z\") ge xs:time(\"17:00:00Z\")) or (xs:time(\"13:00:00Z\") ge xs:time(\"17:00:00Z\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-time-greater-than-10.xq"),
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

'op-time-greater-than-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(xs:time(\"13:00:00Z\") gt xs:time(\"17:00:00Z\")) or (fn:true())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-time-greater-than-11.xq"),
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

'op-time-greater-than-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(xs:time(\"13:00:00Z\") ge xs:time(\"17:00:00Z\")) or (fn:true())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-time-greater-than-12.xq"),
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

'op-time-greater-than-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(xs:time(\"13:00:00Z\") gt xs:time(\"17:00:00Z\")) or (fn:false())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-time-greater-than-13.xq"),
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

'op-time-greater-than-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(xs:time(\"13:00:00Z\") ge xs:time(\"17:00:00Z\")) or (fn:false())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-time-greater-than-14.xq"),
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

'K-TimeGT-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:time(\"23:01:03.12\") lt xs:time(\"23:01:04.12\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-TimeGT-1.xq"), Qry1),
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

'K-TimeGT-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "not(xs:time(\"23:01:04.12\") lt xs:time(\"23:01:04.12\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-TimeGT-2.xq"), Qry1),
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

'K-TimeGT-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "not(xs:time(\"23:01:05.12\") lt xs:time(\"23:01:04.12\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-TimeGT-3.xq"), Qry1),
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

'K-TimeGT-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:time(\"23:01:04.12\") le xs:time(\"23:01:04.12\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-TimeGT-4.xq"), Qry1),
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

'K-TimeGT-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:time(\"23:01:03.12\") le xs:time(\"23:01:04.12\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-TimeGT-5.xq"), Qry1),
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

'K-TimeGT-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "not(xs:time(\"23:01:05.12\") le xs:time(\"23:01:04.12\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-TimeGT-6.xq"), Qry1),
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

'cbcl-time-greater-than-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare function local:two-digit($number as xs:integer) { let $string := string($number) return if (string-length($string) lt 2) then concat('0', $string) else $string };\n"
        "        declare function local:time($hours as xs:integer, $mins as xs:integer, $seconds as xs:decimal) { let $h := local:two-digit($hours), $m := local:two-digit($mins) return xs:time(concat($h, ':', $m, ':', $seconds)) };\n"
        "        not(local:time(12, 59, 30) gt xs:time(\"12:32:05\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-time-greater-than-001.xq"),
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

'cbcl-time-greater-than-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:time(\"14:00:00-12:00\") gt xs:time(\"02:00:00\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-time-greater-than-002.xq"),
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

'cbcl-time-greater-than-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:time(\"02:00:00\") gt xs:time(\"14:00:00-12:00\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-time-greater-than-003.xq"),
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

'cbcl-time-greater-than-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "if (implicit-timezone() gt xs:dayTimeDuration('PT1H'))\n"
        "            then xs:time(\"00:00:00\") gt xs:time(\"00:00:00+01:00\")\n"
        "            else xs:time(\"00:00:00+01:01\") gt xs:time(\"00:00:00\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-time-greater-than-004.xq"),
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

'cbcl-time-greater-than-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "if (implicit-timezone() gt xs:dayTimeDuration('PT1H'))\n"
        "            then xs:time(\"00:00:01+01:00\") gt xs:time(\"00:00:00\")\n"
        "            else xs:time(\"00:00:00\") gt xs:time(\"00:00:00+01:01\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-time-greater-than-005.xq"),
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

'cbcl-time-greater-than-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare function local:two-digit($number as xs:integer) { let $string := string($number) return if (string-length($string) lt 2) then concat('0', $string) else $string };\n"
        "        declare function local:time($hours as xs:integer, $mins as xs:integer, $seconds as xs:decimal) { let $h := local:two-digit($hours), $m := local:two-digit($mins) return xs:time(concat($h, ':', $m, ':', $seconds)) };\n"
        "        not(local:time(12, 59, 30) le xs:time(\"12:32:05\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-time-greater-than-006.xq"),
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

'cbcl-time-greater-than-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:time(\"14:00:00-12:00\") le xs:time(\"02:00:00\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-time-greater-than-007.xq"),
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

'cbcl-time-greater-than-008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:time(\"02:00:00\") le xs:time(\"14:00:00-12:00\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-time-greater-than-008.xq"),
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

'cbcl-time-greater-than-009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "if (implicit-timezone() gt xs:dayTimeDuration('PT1H'))\n"
        "            then xs:time(\"00:00:00\") le xs:time(\"00:00:00+01:00\")\n"
        "            else xs:time(\"00:00:00+01:01\") le xs:time(\"00:00:00\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-time-greater-than-009.xq"),
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

'cbcl-time-greater-than-010'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "if (implicit-timezone() gt xs:dayTimeDuration('PT1H'))\n"
        "            then xs:time(\"00:00:01+01:00\") le xs:time(\"00:00:00\")\n"
        "            else xs:time(\"00:00:00\") le xs:time(\"00:00:00+01:01\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-time-greater-than-010.xq"),
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

'cbcl-time-greater-than-011'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare function local:time($time as xs:time, $null as xs:boolean) { if ($null) then () else $time };\n"
        "        exists(local:time(xs:time(\"23:58:00\"), fn:true()) gt xs:time(\"23:58:00\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-time-greater-than-011.xq"),
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

'cbcl-time-greater-than-012'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare function local:time($time as xs:time, $null as xs:boolean) { if ($null) then () else $time };\n"
        "        local:time(xs:time(\"23:58:00\"), fn:false()) gt xs:time(\"23:58:00\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-time-greater-than-012.xq"),
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

'cbcl-time-greater-than-013'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare function local:time($time as xs:time, $null as xs:boolean) { if ($null) then () else $time };\n"
        "        exists(local:time(xs:time(\"23:58:00\"), fn:true()) le xs:time(\"23:58:00\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-time-greater-than-013.xq"),
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

'cbcl-time-greater-than-014'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare function local:time($time as xs:time, $null as xs:boolean) { if ($null) then () else $time };\n"
        "        local:time(xs:time(\"23:58:00\"), fn:false()) le xs:time(\"23:58:00\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-time-greater-than-014.xq"),
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
