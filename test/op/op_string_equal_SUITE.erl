-module('op_string_equal_SUITE').

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

-export(['K-StringEqual-1'/1]).
-export(['K-StringEqual-2'/1]).
-export(['K-StringEqual-3'/1]).
-export(['K-StringEqual-4'/1]).
-export(['K-StringEqual-5'/1]).
-export(['K2-StringEqual-1'/1]).
-export(['K2-StringEqual-2'/1]).
-export(['K2-StringEqual-3'/1]).
-export(['K2-StringEqual-4'/1]).
-export(['K2-StringEqual-5'/1]).
-export(['K2-StringEqual-6'/1]).
-export(['cbcl-string-equal-001'/1]).
-export(['cbcl-string-equal-002'/1]).
-export(['cbcl-string-equal-003'/1]).
-export(['cbcl-string-equal-004'/1]).

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
        {group, group_0}
    ].

groups() ->
    [
        {group_0, [parallel], [
            'K-StringEqual-1',
            'K-StringEqual-2',
            'K-StringEqual-3',
            'K-StringEqual-4',
            'K-StringEqual-5',
            'K2-StringEqual-1',
            'K2-StringEqual-2',
            'K2-StringEqual-3',
            'K2-StringEqual-4',
            'K2-StringEqual-5',
            'K2-StringEqual-6',
            'cbcl-string-equal-001',
            'cbcl-string-equal-002',
            'cbcl-string-equal-003',
            'cbcl-string-equal-004'
        ]}
    ].

'K-StringEqual-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "'equals' eq 'equals'",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-StringEqual-1.xq"), Qry1),
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

'K-StringEqual-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "'' eq ''",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-StringEqual-2.xq"), Qry1),
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

'K-StringEqual-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "not('nada' eq 'equalness')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-StringEqual-3.xq"), Qry1),
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

'K-StringEqual-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "'not' ne 'equal'",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-StringEqual-4.xq"), Qry1),
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

'K-StringEqual-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "not('equal' ne 'equal')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-StringEqual-5.xq"), Qry1),
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

'K2-StringEqual-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare variable $vA as xs:string := (\"B STRING\", current-time(), string(<e>content</e>))[1] treat as xs:string; declare variable $vB as xs:string := (\"b string\", current-time(), string(<e>content</e>))[1] treat as xs:string; (lower-case($vA) eq lower-case($vB))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-StringEqual-1.xq"), Qry1),
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

'K2-StringEqual-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare variable $vA as xs:string := (\"B STRING\", current-time(), string(<e>content</e>))[1] treat as xs:string; declare variable $vB as xs:string := (\"b string\", current-time(), string(<e>content</e>))[1] treat as xs:string; (upper-case($vA) eq upper-case($vB))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-StringEqual-2.xq"), Qry1),
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

'K2-StringEqual-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare variable $vA as xs:string := (\"B STRING\", current-time(), string(<e>content</e>))[1] treat as xs:string; declare variable $vB as xs:string := (\"no match\", current-time(), string(<e>content</e>))[1] treat as xs:string; (lower-case($vA) eq lower-case($vB))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-StringEqual-3.xq"), Qry1),
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

'K2-StringEqual-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare variable $vA as xs:string := (\"B STRING\", current-time(), string(<e>content</e>))[1] treat as xs:string; declare variable $vB as xs:string := (\"no match\", current-time(), string(<e>content</e>))[1] treat as xs:string; (upper-case($vA) eq upper-case($vB))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-StringEqual-4.xq"), Qry1),
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

'K2-StringEqual-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare variable $vA as xs:string := (\"B STRING\", current-time(), string(<e>content</e>))[1] treat as xs:string; declare variable $vB as xs:string := (\"b string\", current-time(), string(<e>content</e>))[1] treat as xs:string; (upper-case($vA) eq lower-case($vB))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-StringEqual-5.xq"), Qry1),
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

'K2-StringEqual-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare variable $vA as xs:string := (\"B STRING\", current-time(), string(<e>content</e>))[1] treat as xs:string; \n"
        "        declare variable $vB as xs:string := (\"b string\", current-time(), string(<e>content</e>))[1] treat as xs:string; \n"
        "        (lower-case($vA) eq upper-case($vB))\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-StringEqual-6.xq"), Qry1),
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

'cbcl-string-equal-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "not(string(current-time()) eq \"now\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-string-equal-001.xq"),
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

'cbcl-string-equal-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "not(string(current-time()) ne \"now\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-string-equal-002.xq"),
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

'cbcl-string-equal-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        not(xs:untypedAtomic(current-time()) eq xs:untypedAtomic(\"now\"))\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-string-equal-003.xq"),
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

'cbcl-string-equal-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        not(xs:untypedAtomic(current-time()) ne xs:untypedAtomic(\"now\"))\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-string-equal-004.xq"),
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
