-module('fn_floor_SUITE').

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

-export(['fn-floorint1args-1'/1]).
-export(['fn-floorint1args-2'/1]).
-export(['fn-floorint1args-3'/1]).
-export(['fn-floorintg1args-1'/1]).
-export(['fn-floorintg1args-2'/1]).
-export(['fn-floorintg1args-3'/1]).
-export(['fn-floordec1args-1'/1]).
-export(['fn-floordec1args-2'/1]).
-export(['fn-floordec1args-3'/1]).
-export(['fn-floordbl1args-1'/1]).
-export(['fn-floordbl1args-2'/1]).
-export(['fn-floordbl1args-3'/1]).
-export(['fn-floorflt1args-1'/1]).
-export(['fn-floorflt1args-2'/1]).
-export(['fn-floorflt1args-3'/1]).
-export(['fn-floorlng1args-1'/1]).
-export(['fn-floorlng1args-2'/1]).
-export(['fn-floorlng1args-3'/1]).
-export(['fn-floorusht1args-1'/1]).
-export(['fn-floorusht1args-2'/1]).
-export(['fn-floorusht1args-3'/1]).
-export(['fn-floornint1args-1'/1]).
-export(['fn-floornint1args-2'/1]).
-export(['fn-floornint1args-3'/1]).
-export(['fn-floorpint1args-1'/1]).
-export(['fn-floorpint1args-2'/1]).
-export(['fn-floorpint1args-3'/1]).
-export(['fn-floorulng1args-1'/1]).
-export(['fn-floorulng1args-2'/1]).
-export(['fn-floorulng1args-3'/1]).
-export(['fn-floornpi1args-1'/1]).
-export(['fn-floornpi1args-2'/1]).
-export(['fn-floornpi1args-3'/1]).
-export(['fn-floornni1args-1'/1]).
-export(['fn-floornni1args-2'/1]).
-export(['fn-floornni1args-3'/1]).
-export(['fn-floorsht1args-1'/1]).
-export(['fn-floorsht1args-2'/1]).
-export(['fn-floorsht1args-3'/1]).
-export(['K-FloorFunc-1'/1]).
-export(['K-FloorFunc-2'/1]).
-export(['K-FloorFunc-3'/1]).
-export(['K-FloorFunc-4'/1]).
-export(['K-FloorFunc-5'/1]).
-export(['K-FloorFunc-6'/1]).
-export(['K2-FloorFunc-1'/1]).
-export(['K2-FloorFunc-2'/1]).
-export(['K2-FloorFunc-3'/1]).
-export(['K2-FloorFunc-4'/1]).
-export(['K2-FloorFunc-5'/1]).
-export(['K2-FloorFunc-6'/1]).
-export(['K2-FloorFunc-7'/1]).
-export(['K2-FloorFunc-8'/1]).
-export(['K2-FloorFunc-9'/1]).
-export(['K2-FloorFunc-10'/1]).
-export(['K2-FloorFunc-11'/1]).
-export(['K2-FloorFunc-12'/1]).
-export(['K2-FloorFunc-13'/1]).
-export(['fn-floor-1'/1]).
-export(['fn-floor-decimal-1'/1]).
-export(['fn-floor-decimal-2'/1]).
-export(['fn-floor-decimal-3'/1]).
-export(['fn-floor-decimal-4'/1]).
-export(['fn-floor-decimal-5'/1]).
-export(['fn-floor-decimal-6'/1]).
-export(['fn-floor-decimal-7'/1]).
-export(['fn-floor-double-1'/1]).
-export(['fn-floor-double-2'/1]).
-export(['fn-floor-double-3'/1]).
-export(['fn-floor-double-4'/1]).
-export(['fn-floor-double-5'/1]).
-export(['fn-floor-double-6'/1]).
-export(['fn-floor-double-7'/1]).
-export(['fn-floor-double-8'/1]).
-export(['fn-floor-double-9'/1]).
-export(['fn-floor-double-10'/1]).
-export(['fn-floor-double-11'/1]).
-export(['fn-floor-float-1'/1]).
-export(['fn-floor-float-2'/1]).
-export(['fn-floor-float-3'/1]).
-export(['fn-floor-float-4'/1]).
-export(['fn-floor-float-5'/1]).
-export(['fn-floor-float-6'/1]).
-export(['fn-floor-float-7'/1]).
-export(['fn-floor-float-8'/1]).
-export(['fn-floor-float-9'/1]).
-export(['fn-floor-float-10'/1]).
-export(['fn-floor-float-11'/1]).

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
        {group, group_2},
        {group, group_3}
    ].

groups() ->
    [
        {group_0, [parallel], [
            'fn-floorint1args-1',
            'fn-floorint1args-2',
            'fn-floorint1args-3',
            'fn-floorintg1args-1',
            'fn-floorintg1args-2',
            'fn-floorintg1args-3',
            'fn-floordec1args-1',
            'fn-floordec1args-2',
            'fn-floordec1args-3',
            'fn-floordbl1args-1',
            'fn-floordbl1args-2',
            'fn-floordbl1args-3',
            'fn-floorflt1args-1',
            'fn-floorflt1args-2',
            'fn-floorflt1args-3',
            'fn-floorlng1args-1',
            'fn-floorlng1args-2',
            'fn-floorlng1args-3',
            'fn-floorusht1args-1',
            'fn-floorusht1args-2',
            'fn-floorusht1args-3',
            'fn-floornint1args-1',
            'fn-floornint1args-2'
        ]},
        {group_1, [parallel], [
            'fn-floornint1args-3',
            'fn-floorpint1args-1',
            'fn-floorpint1args-2',
            'fn-floorpint1args-3',
            'fn-floorulng1args-1',
            'fn-floorulng1args-2',
            'fn-floorulng1args-3',
            'fn-floornpi1args-1',
            'fn-floornpi1args-2',
            'fn-floornpi1args-3',
            'fn-floornni1args-1',
            'fn-floornni1args-2',
            'fn-floornni1args-3',
            'fn-floorsht1args-1',
            'fn-floorsht1args-2',
            'fn-floorsht1args-3',
            'K-FloorFunc-1',
            'K-FloorFunc-2',
            'K-FloorFunc-3',
            'K-FloorFunc-4',
            'K-FloorFunc-5',
            'K-FloorFunc-6',
            'K2-FloorFunc-1',
            'K2-FloorFunc-2'
        ]},
        {group_2, [parallel], [
            'K2-FloorFunc-3',
            'K2-FloorFunc-4',
            'K2-FloorFunc-5',
            'K2-FloorFunc-6',
            'K2-FloorFunc-7',
            'K2-FloorFunc-8',
            'K2-FloorFunc-9',
            'K2-FloorFunc-10',
            'K2-FloorFunc-11',
            'K2-FloorFunc-12',
            'K2-FloorFunc-13',
            'fn-floor-1',
            'fn-floor-decimal-1',
            'fn-floor-decimal-2',
            'fn-floor-decimal-3',
            'fn-floor-decimal-4',
            'fn-floor-decimal-5',
            'fn-floor-decimal-6',
            'fn-floor-decimal-7',
            'fn-floor-double-1',
            'fn-floor-double-2',
            'fn-floor-double-3',
            'fn-floor-double-4',
            'fn-floor-double-5'
        ]},
        {group_3, [parallel], [
            'fn-floor-double-6',
            'fn-floor-double-7',
            'fn-floor-double-8',
            'fn-floor-double-9',
            'fn-floor-double-10',
            'fn-floor-double-11',
            'fn-floor-float-1',
            'fn-floor-float-2',
            'fn-floor-float-3',
            'fn-floor-float-4',
            'fn-floor-float-5',
            'fn-floor-float-6',
            'fn-floor-float-7',
            'fn-floor-float-8',
            'fn-floor-float-9',
            'fn-floor-float-10',
            'fn-floor-float-11'
        ]}
    ].

environment('emptydoc', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ];
environment('e0', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "abs/e0.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ];
environment('e1', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "abs/e1.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ];
environment('e-1', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "abs/e-1.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ].

'fn-floorint1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:floor(xs:int(\"-2147483648\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('emptydoc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-floorint1args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-2147483648") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-floorint1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:floor(xs:int(\"-1873914410\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('emptydoc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-floorint1args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-1873914410") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-floorint1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:floor(xs:int(\"2147483647\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('emptydoc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-floorint1args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "2147483647") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-floorintg1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:floor(xs:integer(\"-999999999999999999\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('emptydoc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-floorintg1args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-999999999999999999") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-floorintg1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:floor(xs:integer(\"830993497117024304\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('emptydoc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-floorintg1args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "830993497117024304") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-floorintg1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:floor(xs:integer(\"999999999999999999\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('emptydoc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-floorintg1args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "999999999999999999") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-floordec1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:floor(xs:decimal(\"-999999999999999999\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('emptydoc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-floordec1args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-999999999999999999") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-floordec1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:floor(xs:decimal(\"617375191608514839\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('emptydoc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-floordec1args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "617375191608514839") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-floordec1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:floor(xs:decimal(\"999999999999999999\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('emptydoc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-floordec1args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "999999999999999999") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-floordbl1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:floor(xs:double(\"-1.7976931348623157E308\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('emptydoc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-floordbl1args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-1.7976931348623157E308") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-floordbl1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:floor(xs:double(\"0\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('emptydoc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-floordbl1args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'fn-floordbl1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:floor(xs:double(\"1.7976931348623157E308\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('emptydoc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-floordbl1args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1.7976931348623157E308") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-floorflt1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:floor(xs:float(\"-3.4028235E38\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('emptydoc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-floorflt1args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-3.4028235E38") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-floorflt1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:floor(xs:float(\"0\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('emptydoc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-floorflt1args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'fn-floorflt1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:floor(xs:float(\"3.4028235E38\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('emptydoc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-floorflt1args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "3.4028235E38") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-floorlng1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:floor(xs:long(\"-92233720368547758\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('emptydoc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-floorlng1args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-92233720368547758") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-floorlng1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:floor(xs:long(\"-47175562203048468\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('emptydoc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-floorlng1args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-47175562203048468") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-floorlng1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:floor(xs:long(\"92233720368547758\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('emptydoc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-floorlng1args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "92233720368547758") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-floorusht1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:floor(xs:unsignedShort(\"0\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('emptydoc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-floorusht1args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'fn-floorusht1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:floor(xs:unsignedShort(\"44633\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('emptydoc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-floorusht1args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "44633") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-floorusht1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:floor(xs:unsignedShort(\"65535\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('emptydoc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-floorusht1args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "65535") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-floornint1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:floor(xs:negativeInteger(\"-999999999999999999\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('emptydoc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-floornint1args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-999999999999999999") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-floornint1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:floor(xs:negativeInteger(\"-297014075999096793\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('emptydoc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-floornint1args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-297014075999096793") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-floornint1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:floor(xs:negativeInteger(\"-1\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('emptydoc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-floornint1args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-1") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-floorpint1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:floor(xs:positiveInteger(\"1\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('emptydoc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-floorpint1args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-floorpint1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:floor(xs:positiveInteger(\"52704602390610033\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('emptydoc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-floorpint1args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "52704602390610033") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-floorpint1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:floor(xs:positiveInteger(\"999999999999999999\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('emptydoc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-floorpint1args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "999999999999999999") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-floorulng1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:floor(xs:unsignedLong(\"0\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('emptydoc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-floorulng1args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'fn-floorulng1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:floor(xs:unsignedLong(\"130747108607674654\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('emptydoc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-floorulng1args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "130747108607674654") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-floorulng1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:floor(xs:unsignedLong(\"184467440737095516\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('emptydoc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-floorulng1args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "184467440737095516") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-floornpi1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:floor(xs:nonPositiveInteger(\"-999999999999999999\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('emptydoc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-floornpi1args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-999999999999999999") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-floornpi1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:floor(xs:nonPositiveInteger(\"-475688437271870490\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('emptydoc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-floornpi1args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-475688437271870490") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-floornpi1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:floor(xs:nonPositiveInteger(\"0\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('emptydoc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-floornpi1args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'fn-floornni1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:floor(xs:nonNegativeInteger(\"0\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('emptydoc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-floornni1args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'fn-floornni1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:floor(xs:nonNegativeInteger(\"303884545991464527\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('emptydoc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-floornni1args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "303884545991464527") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-floornni1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:floor(xs:nonNegativeInteger(\"999999999999999999\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('emptydoc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-floornni1args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "999999999999999999") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-floorsht1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:floor(xs:short(\"-32768\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('emptydoc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-floorsht1args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-32768") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-floorsht1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:floor(xs:short(\"-5324\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('emptydoc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-floorsht1args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-5324") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-floorsht1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:floor(xs:short(\"32767\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('emptydoc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-floorsht1args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "32767") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-FloorFunc-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "floor()",
    {Env, Opts} = xqerl_test:handle_environment(environment('emptydoc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-FloorFunc-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
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

'K-FloorFunc-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "floor(1, 2)",
    {Env, Opts} = xqerl_test:handle_environment(environment('emptydoc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-FloorFunc-2.xq"), Qry1),
            xqerl:run(Mod, Opts)
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

'K-FloorFunc-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(floor(()))",
    {Env, Opts} = xqerl_test:handle_environment(environment('emptydoc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-FloorFunc-3.xq"), Qry1),
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

'K-FloorFunc-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "floor(10.5) eq 10",
    {Env, Opts} = xqerl_test:handle_environment(environment('emptydoc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-FloorFunc-4.xq"), Qry1),
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

'K-FloorFunc-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "floor(-10.5) eq -11",
    {Env, Opts} = xqerl_test:handle_environment(environment('emptydoc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-FloorFunc-5.xq"), Qry1),
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

'K-FloorFunc-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "floor(\"a string\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('emptydoc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-FloorFunc-6.xq"), Qry1),
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

'K2-FloorFunc-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "floor(xs:unsignedShort(.)) instance of xs:integer",
    {Env, Opts} = xqerl_test:handle_environment(environment('e1', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-FloorFunc-1.xq"), Qry1),
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

'K2-FloorFunc-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "floor(xs:unsignedShort(.)) instance of xs:integer",
    {Env, Opts} = xqerl_test:handle_environment(environment('e0', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-FloorFunc-2.xq"), Qry1),
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

'K2-FloorFunc-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "floor(xs:unsignedLong(.)) instance of xs:integer",
    {Env, Opts} = xqerl_test:handle_environment(environment('e0', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-FloorFunc-3.xq"), Qry1),
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

'K2-FloorFunc-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "floor(xs:unsignedInt(.)) instance of xs:integer",
    {Env, Opts} = xqerl_test:handle_environment(environment('e0', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-FloorFunc-4.xq"), Qry1),
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

'K2-FloorFunc-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "floor(xs:unsignedByte(.)) instance of xs:integer",
    {Env, Opts} = xqerl_test:handle_environment(environment('e0', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-FloorFunc-5.xq"), Qry1),
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

'K2-FloorFunc-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "floor(xs:positiveInteger(.)) instance of xs:integer",
    {Env, Opts} = xqerl_test:handle_environment(environment('e1', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-FloorFunc-6.xq"), Qry1),
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

'K2-FloorFunc-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "floor(xs:nonPositiveInteger(.)) instance of xs:integer",
    {Env, Opts} = xqerl_test:handle_environment(environment('e0', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-FloorFunc-7.xq"), Qry1),
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

'K2-FloorFunc-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "floor(xs:nonNegativeInteger(.)) instance of xs:integer",
    {Env, Opts} = xqerl_test:handle_environment(environment('e0', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-FloorFunc-8.xq"), Qry1),
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

'K2-FloorFunc-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "floor(xs:negativeInteger(.)) instance of xs:integer",
    {Env, Opts} = xqerl_test:handle_environment(environment('e-1', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-FloorFunc-9.xq"), Qry1),
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

'K2-FloorFunc-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "floor(xs:long(.)) instance of xs:integer",
    {Env, Opts} = xqerl_test:handle_environment(environment('e0', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-FloorFunc-10.xq"), Qry1),
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

'K2-FloorFunc-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "floor(xs:int(.)) instance of xs:integer",
    {Env, Opts} = xqerl_test:handle_environment(environment('e0', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-FloorFunc-11.xq"), Qry1),
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

'K2-FloorFunc-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "floor(xs:short(.)) instance of xs:integer",
    {Env, Opts} = xqerl_test:handle_environment(environment('e0', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-FloorFunc-12.xq"), Qry1),
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

'K2-FloorFunc-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "floor(xs:byte(.)) instance of xs:integer",
    {Env, Opts} = xqerl_test:handle_environment(environment('e0', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-FloorFunc-13.xq"), Qry1),
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

'fn-floor-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "for $x in (1, xs:decimal(2), xs:float(3), xs:double(4)) return \n"
        "           if ((floor($x)) instance of xs:integer) then \"integer\" \n"
        "           else if ((floor($x)) instance of xs:decimal) then \"decimal\" \n"
        "           else if ((floor($x)) instance of xs:float) then \"float\"\n"
        "           else if ((floor($x)) instance of xs:double) then \"double\" \n"
        "           else error()\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-floor-1.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"integer\", \"decimal\", \"float\", \"double\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-floor-decimal-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "floor(12.5)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-floor-decimal-1.xq"),
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
            lists:all(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_eq(Res, "12.0") of
                        true -> {comment, "Equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_type(Res, "xs:decimal") of
                        true -> {comment, "Correct type"};
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

'fn-floor-decimal-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "floor(12.9)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-floor-decimal-2.xq"),
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
            lists:all(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_eq(Res, "12.0") of
                        true -> {comment, "Equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_type(Res, "xs:decimal") of
                        true -> {comment, "Correct type"};
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

'fn-floor-decimal-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "floor(0.000000001)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-floor-decimal-3.xq"),
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
            lists:all(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_eq(Res, "0.0") of
                        true -> {comment, "Equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_type(Res, "xs:decimal") of
                        true -> {comment, "Correct type"};
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

'fn-floor-decimal-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "floor(0.0)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-floor-decimal-4.xq"),
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
            lists:all(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_eq(Res, "0.0") of
                        true -> {comment, "Equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_type(Res, "xs:decimal") of
                        true -> {comment, "Correct type"};
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

'fn-floor-decimal-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "floor(-0.1)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-floor-decimal-5.xq"),
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
            lists:all(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_eq(Res, "-1.0") of
                        true -> {comment, "Equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_type(Res, "xs:decimal") of
                        true -> {comment, "Correct type"};
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

'fn-floor-decimal-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "floor(-12345678.567890)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-floor-decimal-6.xq"),
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
            lists:all(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_eq(Res, "-12345679") of
                        true -> {comment, "Equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_type(Res, "xs:decimal") of
                        true -> {comment, "Correct type"};
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

'fn-floor-decimal-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "floor(-1234567891234567.2)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-floor-decimal-7.xq"),
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
            lists:all(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_eq(Res, "-1234567891234568.0") of
                        true -> {comment, "Equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_type(Res, "xs:decimal") of
                        true -> {comment, "Correct type"};
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

'fn-floor-double-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "floor(12.5e0)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-floor-double-1.xq"), Qry1),
            xqerl:run(Mod)
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
                    case xqerl_test:assert_eq(Res, "12.0e0") of
                        true -> {comment, "Equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_type(Res, "xs:double") of
                        true -> {comment, "Correct type"};
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

'fn-floor-double-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "floor(12.9e0)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-floor-double-2.xq"), Qry1),
            xqerl:run(Mod)
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
                    case xqerl_test:assert_eq(Res, "12.0e0") of
                        true -> {comment, "Equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_type(Res, "xs:double") of
                        true -> {comment, "Correct type"};
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

'fn-floor-double-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "floor(0.000000001e0)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-floor-double-3.xq"), Qry1),
            xqerl:run(Mod)
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
                    case xqerl_test:assert_eq(Res, "0.0e0") of
                        true -> {comment, "Equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_type(Res, "xs:double") of
                        true -> {comment, "Correct type"};
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

'fn-floor-double-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "floor(0.0e0)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-floor-double-4.xq"), Qry1),
            xqerl:run(Mod)
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
                    case xqerl_test:assert_eq(Res, "0.0e0") of
                        true -> {comment, "Equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_type(Res, "xs:double") of
                        true -> {comment, "Correct type"};
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

'fn-floor-double-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "floor(-0.1e0)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-floor-double-5.xq"), Qry1),
            xqerl:run(Mod)
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
                    case xqerl_test:assert_eq(Res, "-1.0e0") of
                        true -> {comment, "Equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_type(Res, "xs:double") of
                        true -> {comment, "Correct type"};
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

'fn-floor-double-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "floor(-12345678.567890e0)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-floor-double-6.xq"), Qry1),
            xqerl:run(Mod)
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
                    case xqerl_test:assert_eq(Res, "-12345679e0") of
                        true -> {comment, "Equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_type(Res, "xs:double") of
                        true -> {comment, "Correct type"};
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

'fn-floor-double-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "floor(-1234567891234567.2e0)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-floor-double-7.xq"), Qry1),
            xqerl:run(Mod)
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
                    case xqerl_test:assert_eq(Res, "-1234567891234568.0e0") of
                        true -> {comment, "Equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_type(Res, "xs:double") of
                        true -> {comment, "Correct type"};
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

'fn-floor-double-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "floor(xs:double('NaN'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-floor-double-8.xq"), Qry1),
            xqerl:run(Mod)
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
                    case xqerl_test:assert_string_value(Res, "NaN") of
                        true -> {comment, "String correct"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_type(Res, "xs:double") of
                        true -> {comment, "Correct type"};
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

'fn-floor-double-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "floor(xs:double('INF'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-floor-double-9.xq"), Qry1),
            xqerl:run(Mod)
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
                    case xqerl_test:assert_string_value(Res, "INF") of
                        true -> {comment, "String correct"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_type(Res, "xs:double") of
                        true -> {comment, "Correct type"};
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

'fn-floor-double-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "floor(xs:double('-INF'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-floor-double-10.xq"),
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
            lists:all(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_string_value(Res, "-INF") of
                        true -> {comment, "String correct"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_type(Res, "xs:double") of
                        true -> {comment, "Correct type"};
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

'fn-floor-double-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "floor(xs:double('-0'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-floor-double-11.xq"),
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
            lists:all(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_string_value(Res, "-0") of
                        true -> {comment, "String correct"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_type(Res, "xs:double") of
                        true -> {comment, "Correct type"};
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

'fn-floor-float-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "floor(xs:float(12.5e0))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-floor-float-1.xq"), Qry1),
            xqerl:run(Mod)
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
                    case xqerl_test:assert_eq(Res, "12.0e0") of
                        true -> {comment, "Equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_type(Res, "xs:float") of
                        true -> {comment, "Correct type"};
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

'fn-floor-float-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "floor(xs:float(12.9e0))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-floor-float-2.xq"), Qry1),
            xqerl:run(Mod)
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
                    case xqerl_test:assert_eq(Res, "12.0e0") of
                        true -> {comment, "Equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_type(Res, "xs:float") of
                        true -> {comment, "Correct type"};
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

'fn-floor-float-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "floor(xs:float(0.000000001e0))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-floor-float-3.xq"), Qry1),
            xqerl:run(Mod)
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
                    case xqerl_test:assert_eq(Res, "0.0e0") of
                        true -> {comment, "Equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_type(Res, "xs:float") of
                        true -> {comment, "Correct type"};
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

'fn-floor-float-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "floor(xs:float(0.0e0))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-floor-float-4.xq"), Qry1),
            xqerl:run(Mod)
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
                    case xqerl_test:assert_eq(Res, "0.0e0") of
                        true -> {comment, "Equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_type(Res, "xs:float") of
                        true -> {comment, "Correct type"};
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

'fn-floor-float-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "floor(xs:float(-0.1e0))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-floor-float-5.xq"), Qry1),
            xqerl:run(Mod)
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
                    case xqerl_test:assert_eq(Res, "-1.0e0") of
                        true -> {comment, "Equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_type(Res, "xs:float") of
                        true -> {comment, "Correct type"};
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

'fn-floor-float-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "floor(xs:float(-12345678.567890e0))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-floor-float-6.xq"), Qry1),
            xqerl:run(Mod)
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
                    case xqerl_test:assert_eq(Res, "-12345679e0") of
                        true -> {comment, "Equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_type(Res, "xs:float") of
                        true -> {comment, "Correct type"};
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

'fn-floor-float-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "floor(xs:float(-1234567.2e0))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-floor-float-7.xq"), Qry1),
            xqerl:run(Mod)
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
                    case xqerl_test:assert_eq(Res, "-1234568e0") of
                        true -> {comment, "Equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_type(Res, "xs:float") of
                        true -> {comment, "Correct type"};
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

'fn-floor-float-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "floor(xs:float(xs:float('NaN')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-floor-float-8.xq"), Qry1),
            xqerl:run(Mod)
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
                    case xqerl_test:assert_string_value(Res, "NaN") of
                        true -> {comment, "String correct"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_type(Res, "xs:float") of
                        true -> {comment, "Correct type"};
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

'fn-floor-float-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "floor(xs:float(xs:float('INF')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-floor-float-9.xq"), Qry1),
            xqerl:run(Mod)
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
                    case xqerl_test:assert_string_value(Res, "INF") of
                        true -> {comment, "String correct"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_type(Res, "xs:float") of
                        true -> {comment, "Correct type"};
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

'fn-floor-float-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "floor(xs:float(xs:float('-INF')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-floor-float-10.xq"), Qry1),
            xqerl:run(Mod)
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
                    case xqerl_test:assert_string_value(Res, "-INF") of
                        true -> {comment, "String correct"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_type(Res, "xs:float") of
                        true -> {comment, "Correct type"};
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

'fn-floor-float-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "floor(xs:float(xs:float('-0')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-floor-float-11.xq"), Qry1),
            xqerl:run(Mod)
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
                    case xqerl_test:assert_string_value(Res, "-0") of
                        true -> {comment, "String correct"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_type(Res, "xs:float") of
                        true -> {comment, "Correct type"};
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
