-module('op_boolean_greater_than_SUITE').

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

-export(['op-boolean-greater-than2args-1'/1]).
-export(['op-boolean-greater-than2args-2'/1]).
-export(['op-boolean-greater-than2args-3'/1]).
-export(['op-boolean-greater-than2args-4'/1]).
-export(['op-boolean-greater-than2args-5'/1]).
-export(['op-boolean-greater-than2args-6'/1]).
-export(['op-boolean-greater-than2args-7'/1]).
-export(['op-boolean-greater-than2args-8'/1]).
-export(['op-boolean-greater-than2args-9'/1]).
-export(['op-boolean-greater-than2args-10'/1]).
-export(['op-boolean-greater-than-1'/1]).
-export(['op-boolean-greater-than-2'/1]).
-export(['op-boolean-greater-than-3'/1]).
-export(['op-boolean-greater-than-4'/1]).
-export(['op-boolean-greater-than-5'/1]).
-export(['op-boolean-greater-than-6'/1]).
-export(['op-boolean-greater-than-7'/1]).
-export(['op-boolean-greater-than-8'/1]).
-export(['op-boolean-greater-than-9'/1]).
-export(['op-boolean-greater-than-10'/1]).
-export(['op-boolean-greater-than-11'/1]).
-export(['op-boolean-greater-than-12'/1]).
-export(['op-boolean-greater-than-more-args-001'/1]).
-export(['op-boolean-greater-than-more-args-002'/1]).
-export(['op-boolean-greater-than-more-args-003'/1]).
-export(['op-boolean-greater-than-more-args-004'/1]).
-export(['op-boolean-greater-than-more-args-005'/1]).
-export(['op-boolean-greater-than-more-args-006'/1]).
-export(['op-boolean-greater-than-more-args-007'/1]).
-export(['op-boolean-greater-than-more-args-008'/1]).
-export(['op-boolean-greater-than-more-args-009'/1]).
-export(['op-boolean-greater-than-more-args-010'/1]).
-export(['op-boolean-greater-than-more-args-011'/1]).
-export(['op-boolean-greater-than-more-args-012'/1]).
-export(['op-boolean-greater-than-more-args-013'/1]).
-export(['op-boolean-greater-than-more-args-014'/1]).
-export(['K-BooleanGT-1'/1]).
-export(['K-BooleanGT-2'/1]).
-export(['K-BooleanGT-3'/1]).
-export(['cbcl-boolean-greater-than-001'/1]).
-export(['cbcl-boolean-greater-than-002'/1]).
-export(['cbcl-boolean-greater-than-003'/1]).
-export(['cbcl-boolean-greater-than-004'/1]).
-export(['cbcl-boolean-greater-than-005'/1]).
-export(['cbcl-boolean-greater-than-006'/1]).
-export(['cbcl-boolean-greater-than-007'/1]).
-export(['cbcl-boolean-greater-than-008'/1]).
-export(['cbcl-boolean-greater-than-009'/1]).
-export(['cbcl-boolean-greater-than-010'/1]).

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
        {group, group_1},
        {group, group_2}
    ].

groups() ->
    [
        {group_0, [parallel], [
            'op-boolean-greater-than2args-1',
            'op-boolean-greater-than2args-2',
            'op-boolean-greater-than2args-3',
            'op-boolean-greater-than2args-4',
            'op-boolean-greater-than2args-5',
            'op-boolean-greater-than2args-6',
            'op-boolean-greater-than2args-7',
            'op-boolean-greater-than2args-8',
            'op-boolean-greater-than2args-9',
            'op-boolean-greater-than2args-10',
            'op-boolean-greater-than-1',
            'op-boolean-greater-than-2',
            'op-boolean-greater-than-3',
            'op-boolean-greater-than-4',
            'op-boolean-greater-than-5',
            'op-boolean-greater-than-6',
            'op-boolean-greater-than-7',
            'op-boolean-greater-than-8',
            'op-boolean-greater-than-9',
            'op-boolean-greater-than-10',
            'op-boolean-greater-than-11',
            'op-boolean-greater-than-12',
            'op-boolean-greater-than-more-args-001'
        ]},
        {group_1, [parallel], [
            'op-boolean-greater-than-more-args-002',
            'op-boolean-greater-than-more-args-003',
            'op-boolean-greater-than-more-args-004',
            'op-boolean-greater-than-more-args-005',
            'op-boolean-greater-than-more-args-006',
            'op-boolean-greater-than-more-args-007',
            'op-boolean-greater-than-more-args-008',
            'op-boolean-greater-than-more-args-009',
            'op-boolean-greater-than-more-args-010',
            'op-boolean-greater-than-more-args-011',
            'op-boolean-greater-than-more-args-012',
            'op-boolean-greater-than-more-args-013',
            'op-boolean-greater-than-more-args-014',
            'K-BooleanGT-1',
            'K-BooleanGT-2',
            'K-BooleanGT-3',
            'cbcl-boolean-greater-than-001',
            'cbcl-boolean-greater-than-002',
            'cbcl-boolean-greater-than-003',
            'cbcl-boolean-greater-than-004',
            'cbcl-boolean-greater-than-005',
            'cbcl-boolean-greater-than-006',
            'cbcl-boolean-greater-than-007',
            'cbcl-boolean-greater-than-008'
        ]},
        {group_2, [parallel], [
            'cbcl-boolean-greater-than-009',
            'cbcl-boolean-greater-than-010'
        ]}
    ].

'op-boolean-greater-than2args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:boolean(\"false\") gt xs:boolean(\"false\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-boolean-greater-than2args-1.xq"),
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

'op-boolean-greater-than2args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:boolean(\"1\") gt xs:boolean(\"false\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-boolean-greater-than2args-2.xq"),
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

'op-boolean-greater-than2args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:boolean(\"0\") gt xs:boolean(\"false\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-boolean-greater-than2args-3.xq"),
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

'op-boolean-greater-than2args-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:boolean(\"false\") gt xs:boolean(\"1\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-boolean-greater-than2args-4.xq"),
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

'op-boolean-greater-than2args-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:boolean(\"false\") gt xs:boolean(\"0\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-boolean-greater-than2args-5.xq"),
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

'op-boolean-greater-than2args-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:boolean(\"false\") le xs:boolean(\"false\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-boolean-greater-than2args-6.xq"),
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

'op-boolean-greater-than2args-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:boolean(\"1\") le xs:boolean(\"false\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-boolean-greater-than2args-7.xq"),
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

'op-boolean-greater-than2args-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:boolean(\"0\") le xs:boolean(\"false\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-boolean-greater-than2args-8.xq"),
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

'op-boolean-greater-than2args-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:boolean(\"false\") le xs:boolean(\"1\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-boolean-greater-than2args-9.xq"),
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

'op-boolean-greater-than2args-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:boolean(\"false\") le xs:boolean(\"0\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-boolean-greater-than2args-10.xq"),
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

'op-boolean-greater-than-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:not(xs:boolean(\"true\")) gt xs:boolean(\"true\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-boolean-greater-than-1.xq"),
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

'op-boolean-greater-than-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:not(xs:boolean(\"true\")) le xs:boolean(\"true\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-boolean-greater-than-2.xq"),
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

'op-boolean-greater-than-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:not(xs:boolean(\"true\")) gt xs:boolean(\"false\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-boolean-greater-than-3.xq"),
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

'op-boolean-greater-than-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:not(xs:boolean(\"true\")) le xs:boolean(\"false\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-boolean-greater-than-4.xq"),
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

'op-boolean-greater-than-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:not(xs:boolean(\"false\")) gt xs:boolean(\"true\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-boolean-greater-than-5.xq"),
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

'op-boolean-greater-than-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:not(xs:boolean(\"false\")) le xs:boolean(\"true\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-boolean-greater-than-6.xq"),
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

'op-boolean-greater-than-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:not(xs:boolean(\"false\")) gt xs:boolean(\"false\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-boolean-greater-than-7.xq"),
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

'op-boolean-greater-than-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:not(xs:boolean(\"false\")) le xs:boolean(\"false\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-boolean-greater-than-8.xq"),
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

'op-boolean-greater-than-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(7 eq 7) gt xs:boolean(\"true\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-boolean-greater-than-9.xq"),
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

'op-boolean-greater-than-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(7 eq 7) le xs:boolean(\"true\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-boolean-greater-than-10.xq"),
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

'op-boolean-greater-than-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(7 eq 7) gt xs:boolean(\"false\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-boolean-greater-than-11.xq"),
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

'op-boolean-greater-than-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(7 eq 7) le xs:boolean(\"false\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-boolean-greater-than-12.xq"),
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

'op-boolean-greater-than-more-args-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:boolean(\"true\") gt xs:boolean(\"true\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-boolean-greater-than-more-args-001.xq"),
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

'op-boolean-greater-than-more-args-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:boolean(\"1\") gt xs:boolean(\"true\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-boolean-greater-than-more-args-002.xq"),
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

'op-boolean-greater-than-more-args-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:boolean(\"0\") gt xs:boolean(\"true\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-boolean-greater-than-more-args-003.xq"),
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

'op-boolean-greater-than-more-args-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:boolean(\"true\") gt xs:boolean(\"1\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-boolean-greater-than-more-args-004.xq"),
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

'op-boolean-greater-than-more-args-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:boolean(\"true\") gt xs:boolean(\"0\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-boolean-greater-than-more-args-005.xq"),
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

'op-boolean-greater-than-more-args-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:boolean(\"true\") gt xs:boolean(\"false\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-boolean-greater-than-more-args-006.xq"),
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

'op-boolean-greater-than-more-args-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:boolean(\"false\") gt xs:boolean(\"true\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-boolean-greater-than-more-args-007.xq"),
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

'op-boolean-greater-than-more-args-008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:boolean(\"true\") le xs:boolean(\"true\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-boolean-greater-than-more-args-008.xq"),
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

'op-boolean-greater-than-more-args-009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:boolean(\"1\") le xs:boolean(\"true\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-boolean-greater-than-more-args-009.xq"),
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

'op-boolean-greater-than-more-args-010'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:boolean(\"0\") le xs:boolean(\"true\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-boolean-greater-than-more-args-010.xq"),
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

'op-boolean-greater-than-more-args-011'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:boolean(\"true\") le xs:boolean(\"1\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-boolean-greater-than-more-args-011.xq"),
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

'op-boolean-greater-than-more-args-012'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:boolean(\"true\") le xs:boolean(\"0\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-boolean-greater-than-more-args-012.xq"),
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

'op-boolean-greater-than-more-args-013'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:boolean(\"true\") le xs:boolean(\"false\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-boolean-greater-than-more-args-013.xq"),
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

'op-boolean-greater-than-more-args-014'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:boolean(\"false\") le xs:boolean(\"true\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-boolean-greater-than-more-args-014.xq"),
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

'K-BooleanGT-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "true() gt false()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-BooleanGT-1.xq"), Qry1),
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

'K-BooleanGT-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "true() ge false()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-BooleanGT-2.xq"), Qry1),
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

'K-BooleanGT-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "true() ge true()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-BooleanGT-3.xq"), Qry1),
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

'cbcl-boolean-greater-than-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      declare function local:is-even($arg as xs:integer) as xs:boolean { (($arg mod 2) eq 0) }; \n"
        "      not(local:is-even(15) ge local:is-even(17))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-boolean-greater-than-001.xq"),
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

'cbcl-boolean-greater-than-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      declare function local:is-even($arg as xs:integer) as xs:boolean { (($arg mod 2) eq 0) }; \n"
        "      fn:true() ge local:is-even(17)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-boolean-greater-than-002.xq"),
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

'cbcl-boolean-greater-than-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      declare function local:is-even($arg as xs:integer) as xs:boolean { (($arg mod 2) eq 0) }; \n"
        "      fn:false() ge local:is-even(17)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-boolean-greater-than-003.xq"),
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

'cbcl-boolean-greater-than-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      declare function local:is-even($arg as xs:integer) as xs:boolean { (($arg mod 2) eq 0) }; \n"
        "      not(local:is-even(15) gt local:is-even(17))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-boolean-greater-than-004.xq"),
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

'cbcl-boolean-greater-than-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      declare function local:is-even($arg as xs:integer) as xs:boolean { (($arg mod 2) eq 0) }; \n"
        "      fn:true() gt local:is-even(17)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-boolean-greater-than-005.xq"),
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

'cbcl-boolean-greater-than-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      declare function local:is-even($arg as xs:integer) as xs:boolean { (($arg mod 2) eq 0) }; \n"
        "      fn:false() gt local:is-even(17)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-boolean-greater-than-006.xq"),
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

'cbcl-boolean-greater-than-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      declare function local:is-even($arg as xs:integer) as xs:boolean { (($arg mod 2) eq 0) }; \n"
        "      local:is-even(17) ge fn:true()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-boolean-greater-than-007.xq"),
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

'cbcl-boolean-greater-than-008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      declare function local:is-even($arg as xs:integer) as xs:boolean { (($arg mod 2) eq 0) }; \n"
        "      local:is-even(17) ge fn:false()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-boolean-greater-than-008.xq"),
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

'cbcl-boolean-greater-than-009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare function local:is-even($arg as xs:integer) as xs:boolean { (($arg mod 2) eq 0) }; \n"
        "      local:is-even(17) gt fn:true()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-boolean-greater-than-009.xq"),
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

'cbcl-boolean-greater-than-010'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      declare function local:is-even($arg as xs:integer) as xs:boolean { (($arg mod 2) eq 0) }; \n"
        "      local:is-even(17) gt fn:false()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-boolean-greater-than-010.xq"),
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
