-module('xs_float_SUITE').

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

-export(['xs-float-001'/1]).
-export(['xs-float-002'/1]).
-export(['xs-float-003'/1]).
-export(['xs-float-004'/1]).
-export(['cbcl-float-001'/1]).
-export(['cbcl-float-002'/1]).

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
    __BaseDir = filename:join(TD, "xs"),
    [{base_dir, __BaseDir} | Config].

all() ->
    [
        {group, group_0}
    ].

groups() ->
    [
        {group_0, [parallel], [
            'xs-float-001',
            'xs-float-002',
            'xs-float-003',
            'xs-float-004',
            'cbcl-float-001',
            'cbcl-float-002'
        ]}
    ].

'xs-float-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "xsd-version:1.1"}.

'xs-float-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "xsd-version:1.1"}.

'xs-float-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "xsd-version:1.1"}.

'xs-float-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "exists(xs:float(\"+INF\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xs-float-004.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORG0001") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORG0001 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-float-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "count(xs:float(()))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-float-001.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-float-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:float(xs:double('-INF')),xs:float(xs:double('INF'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-float-002.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-INF INF") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.
