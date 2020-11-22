-module('fn_has_children_SUITE').

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

-export(['fn-has-children-001'/1]).
-export(['fn-has-children-002'/1]).
-export(['fn-has-children-003'/1]).
-export(['fn-has-children-004'/1]).
-export(['fn-has-children-005'/1]).
-export(['fn-has-children-006'/1]).
-export(['fn-has-children-007'/1]).
-export(['fn-has-children-008'/1]).
-export(['fn-has-children-009'/1]).
-export(['fn-has-children-010'/1]).
-export(['fn-has-children-011'/1]).
-export(['fn-has-children-012'/1]).
-export(['fn-has-children-013'/1]).
-export(['fn-has-children-014'/1]).
-export(['fn-has-children-015'/1]).
-export(['fn-has-children-016'/1]).
-export(['fn-has-children-017'/1]).
-export(['fn-has-children-018'/1]).
-export(['fn-has-children-019'/1]).
-export(['fn-has-children-020'/1]).
-export(['fn-has-children-021'/1]).
-export(['fn-has-children-022'/1]).
-export(['fn-has-children-023'/1]).
-export(['fn-has-children-024'/1]).
-export(['fn-has-children-025'/1]).
-export(['fn-has-children-026'/1]).
-export(['fn-has-children-027'/1]).
-export(['fn-has-children-028'/1]).
-export(['fn-has-children-029'/1]).
-export(['fn-has-children-030'/1]).
-export(['fn-has-children-031'/1]).
-export(['fn-has-children-032'/1]).
-export(['fn-has-children-033'/1]).
-export(['fn-has-children-034'/1]).
-export(['fn-has-children-035'/1]).
-export(['fn-has-children-036'/1]).
-export(['fn-has-children-037'/1]).

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
            'fn-has-children-001',
            'fn-has-children-002',
            'fn-has-children-003',
            'fn-has-children-004',
            'fn-has-children-005',
            'fn-has-children-006',
            'fn-has-children-007',
            'fn-has-children-008',
            'fn-has-children-009',
            'fn-has-children-010',
            'fn-has-children-011',
            'fn-has-children-012',
            'fn-has-children-013',
            'fn-has-children-014',
            'fn-has-children-015',
            'fn-has-children-016',
            'fn-has-children-017',
            'fn-has-children-018',
            'fn-has-children-019',
            'fn-has-children-020',
            'fn-has-children-021',
            'fn-has-children-022',
            'fn-has-children-023'
        ]},
        {group_1, [parallel], [
            'fn-has-children-024',
            'fn-has-children-025',
            'fn-has-children-026',
            'fn-has-children-027',
            'fn-has-children-028',
            'fn-has-children-029',
            'fn-has-children-030',
            'fn-has-children-031',
            'fn-has-children-032',
            'fn-has-children-033',
            'fn-has-children-034',
            'fn-has-children-035',
            'fn-has-children-036',
            'fn-has-children-037'
        ]}
    ].

environment('has-children', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "has-children/has-children.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ].

'fn-has-children-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:exists( fn:has-children#0 )",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-has-children-001.xq"),
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

'fn-has-children-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:exists( fn:has-children#1 )",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-has-children-002.xq"),
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

'fn-has-children-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:has-children( fn:contains#2, fn:contains#2 )",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-has-children-003.xq"),
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

'fn-has-children-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:has-children#2",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-has-children-004.xq"),
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

'fn-has-children-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:has-children()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-has-children-005.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_error(Res, "XPDY0002") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPDY0002 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPTY0004") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-has-children-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:has-children(.)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-has-children-006.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_error(Res, "XPDY0002") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPDY0002 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPTY0004") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-has-children-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(1)[fn:has-children()]",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-has-children-007.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_error(Res, "XPTY0004") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-has-children-008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(fn:concat#2)[fn:has-children()]",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-has-children-008.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_error(Res, "XPTY0004") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-has-children-009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:has-children(1)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-has-children-009.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPTY0004") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-has-children-010'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:has-children(fn:concat#2)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-has-children-010.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPTY0004") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-has-children-011'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:has-children( (.,.) )",
    {Env, Opts} = xqerl_test:handle_environment(environment('has-children', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-has-children-011.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPTY0004") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-has-children-012'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:staticTyping"}.

'fn-has-children-013'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:staticTyping"}.

'fn-has-children-014'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(., 1) ! fn:has-children()",
    {Env, Opts} = xqerl_test:handle_environment(environment('has-children', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-has-children-014.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPTY0004") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-has-children-015'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(., 1) ! fn:has-children(.)",
    {Env, Opts} = xqerl_test:handle_environment(environment('has-children', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-has-children-015.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPTY0004") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-has-children-016'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:has-children()",
    {Env, Opts} = xqerl_test:handle_environment(environment('has-children', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-has-children-016.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_type(Res, "xs:boolean") of
            true -> {comment, "Correct type"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-has-children-017'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:has-children(.)",
    {Env, Opts} = xqerl_test:handle_environment(environment('has-children', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-has-children-017.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_type(Res, "xs:boolean") of
            true -> {comment, "Correct type"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-has-children-018'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "/root/@attribute/fn:has-children()",
    {Env, Opts} = xqerl_test:handle_environment(environment('has-children', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-has-children-018.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'fn-has-children-019'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:has-children( /root/@attribute )",
    {Env, Opts} = xqerl_test:handle_environment(environment('has-children', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-has-children-019.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'fn-has-children-020'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XP30+, feature:namespace-axis"}.

'fn-has-children-021'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XP30+, feature:namespace-axis"}.

'fn-has-children-022'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "/root/comment()/fn:has-children()",
    {Env, Opts} = xqerl_test:handle_environment(environment('has-children', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-has-children-022.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'fn-has-children-023'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:has-children( /root/comment() )",
    {Env, Opts} = xqerl_test:handle_environment(environment('has-children', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-has-children-023.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'fn-has-children-024'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "/root/processing-instruction()/fn:has-children()",
    {Env, Opts} = xqerl_test:handle_environment(environment('has-children', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-has-children-024.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'fn-has-children-025'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:has-children( /root/processing-instruction() )",
    {Env, Opts} = xqerl_test:handle_environment(environment('has-children', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-has-children-025.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'fn-has-children-026'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "/root/text()/fn:has-children()",
    {Env, Opts} = xqerl_test:handle_environment(environment('has-children', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-has-children-026.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'fn-has-children-027'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:has-children( /root/text() )",
    {Env, Opts} = xqerl_test:handle_environment(environment('has-children', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-has-children-027.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'fn-has-children-028'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "/root/empty/fn:has-children()",
    {Env, Opts} = xqerl_test:handle_environment(environment('has-children', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-has-children-028.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'fn-has-children-029'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:has-children( /root/empty )",
    {Env, Opts} = xqerl_test:handle_environment(environment('has-children', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-has-children-029.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'fn-has-children-030'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "/root/fn:has-children()",
    {Env, Opts} = xqerl_test:handle_environment(environment('has-children', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-has-children-030.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'fn-has-children-031'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:has-children( /root )",
    {Env, Opts} = xqerl_test:handle_environment(environment('has-children', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-has-children-031.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'fn-has-children-032'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "/root/non-empty/fn:has-children()",
    {Env, Opts} = xqerl_test:handle_environment(environment('has-children', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-has-children-032.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'fn-has-children-033'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:has-children( /root/non-empty )",
    {Env, Opts} = xqerl_test:handle_environment(environment('has-children', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-has-children-033.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'fn-has-children-034'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "/fn:has-children()",
    {Env, Opts} = xqerl_test:handle_environment(environment('has-children', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-has-children-034.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'fn-has-children-035'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:has-children( / )",
    {Env, Opts} = xqerl_test:handle_environment(environment('has-children', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-has-children-035.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'fn-has-children-036'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "/root/node()/fn:has-children()",
    {Env, Opts} = xqerl_test:handle_environment(environment('has-children', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-has-children-036.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "false false false false true") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-has-children-037'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "/root/node()/fn:has-children(.)",
    {Env, Opts} = xqerl_test:handle_environment(environment('has-children', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-has-children-037.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "false false false false true") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.
