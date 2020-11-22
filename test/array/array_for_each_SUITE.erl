-module('array_for_each_SUITE').

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

-export(['array-for-each-001'/1]).
-export(['array-for-each-002'/1]).
-export(['array-for-each-003'/1]).
-export(['array-for-each-004'/1]).
-export(['array-for-each-005'/1]).
-export(['array-for-each-006'/1]).
-export(['array-for-each-007'/1]).

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
    __BaseDir = filename:join(TD, "array"),
    [{base_dir, __BaseDir} | Config].

all() ->
    [
        {group, group_0}
    ].

groups() ->
    [
        {group_0, [parallel], [
            'array-for-each-001',
            'array-for-each-002',
            'array-for-each-003',
            'array-for-each-004',
            'array-for-each-005',
            'array-for-each-006',
            'array-for-each-007'
        ]}
    ].

environment('array', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, [{"http://www.w3.org/2005/xpath-functions/array", "array"}]},
        {schemas, []},
        {resources, []},
        {modules, []}
    ].

'array-for-each-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "array:for-each([\"A\", \"B\", 1, 2], function($z) {$z instance of xs:integer})",
    {Env, Opts} = xqerl_test:handle_environment(environment('array', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "array-for-each-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:all(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_type(Res, "array(*)") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "array:size($result) eq 4") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_deep_eq(Res, "[false(), false(), true(), true()]") of
                        true -> {comment, "Deep equal"};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "all-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'array-for-each-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "array:for-each([\"the cat\", \"sat\", \"on the mat\"], tokenize(?, \" \"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('array', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "array-for-each-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:all(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_type(Res, "array(*)") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "array:size($result) eq 3") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_deep_eq(
                            Res,
                            "[(\"the\", \"cat\"), \"sat\", (\"on\", \"the\", \"mat\")]"
                        )
                    of
                        true -> {comment, "Deep equal"};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "all-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'array-for-each-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "array:for-each([], tokenize(?, \" \"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('array', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "array-for-each-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:all(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_type(Res, "array(*)") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "array:size($result) eq 0") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_deep_eq(Res, "[]") of
                        true -> {comment, "Deep equal"};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "all-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'array-for-each-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "array:for-each([[2,3],[4,5,6,7],[6,7],[],[3]], array:size(?))",
    {Env, Opts} = xqerl_test:handle_environment(environment('array', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "array-for-each-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:all(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_type(Res, "array(*)") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "array:size($result) eq 5") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_deep_eq(Res, "[2,4,2,0,1]") of
                        true -> {comment, "Deep equal"};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "all-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'array-for-each-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "array:for-each([[2,3],[4,5,6,7],[6,7],[],[3]], array:insert-before(?,1,1))",
    {Env, Opts} = xqerl_test:handle_environment(environment('array', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "array-for-each-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:all(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_type(Res, "array(*)") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "array:size($result) eq 5") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_deep_eq(Res, "[[1,2,3],[1,4,5,6,7],[1,6,7],[1],[1,3]]")
                    of
                        true -> {comment, "Deep equal"};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "all-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'array-for-each-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "array:for-each([10,20,30,40], remove#2)",
    {Env, Opts} = xqerl_test:handle_environment(environment('array', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "array-for-each-006.xq"),
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

'array-for-each-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "array:for-each([10,20,30,40], upper-case#1)",
    {Env, Opts} = xqerl_test:handle_environment(environment('array', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "array-for-each-007.xq"),
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
