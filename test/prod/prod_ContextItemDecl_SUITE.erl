-module('prod_ContextItemDecl_SUITE').

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

-export(['contextDecl-014'/1]).
-export(['contextDecl-015'/1]).
-export(['contextDecl-016'/1]).
-export(['contextDecl-017'/1]).
-export(['contextDecl-018'/1]).
-export(['contextDecl-019'/1]).
-export(['contextDecl-020'/1]).
-export(['contextDecl-021'/1]).
-export(['contextDecl-022'/1]).
-export(['contextDecl-023'/1]).
-export(['contextDecl-028'/1]).
-export(['contextDecl-029'/1]).
-export(['contextDecl-030'/1]).
-export(['contextDecl-031'/1]).
-export(['contextDecl-032'/1]).
-export(['contextDecl-033'/1]).
-export(['contextDecl-034'/1]).
-export(['contextDecl-035'/1]).
-export(['contextDecl-036'/1]).
-export(['contextDecl-037'/1]).
-export(['contextDecl-038'/1]).
-export(['contextDecl-039'/1]).
-export(['contextDecl-040'/1]).
-export(['contextDecl-041'/1]).
-export(['contextDecl-042'/1]).
-export(['contextDecl-043'/1]).
-export(['contextDecl-044'/1]).
-export(['contextDecl-045'/1]).
-export(['contextDecl-046'/1]).
-export(['contextDecl-047'/1]).
-export(['contextDecl-048'/1]).
-export(['contextDecl-049'/1]).
-export(['contextDecl-050'/1]).
-export(['contextDecl-051'/1]).
-export(['contextDecl-052'/1]).
-export(['contextDecl-053'/1]).
-export(['contextDecl-054'/1]).
-export(['contextDecl-055'/1]).
-export(['contextDecl-056'/1]).
-export(['contextDecl-057'/1]).
-export(['contextDecl-058'/1]).

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
    __BaseDir = filename:join(TD, "prod"),
    [{base_dir, __BaseDir} | Config].

all() ->
    [
        {group, group_0}
    ].

groups() ->
    [
        {group_0, [], [
            'contextDecl-014',
            'contextDecl-015',
            'contextDecl-016',
            'contextDecl-017',
            'contextDecl-018',
            'contextDecl-019',
            'contextDecl-020',
            'contextDecl-021',
            'contextDecl-022',
            'contextDecl-023',
            'contextDecl-028',
            'contextDecl-029',
            'contextDecl-030',
            'contextDecl-031',
            'contextDecl-032',
            'contextDecl-033',
            'contextDecl-034',
            'contextDecl-035',
            'contextDecl-036',
            'contextDecl-037',
            'contextDecl-038',
            'contextDecl-039',
            'contextDecl-040',
            'contextDecl-041',
            'contextDecl-042',
            'contextDecl-043',
            'contextDecl-044',
            'contextDecl-045',
            'contextDecl-046',
            'contextDecl-047',
            'contextDecl-048',
            'contextDecl-049',
            'contextDecl-050',
            'contextDecl-051',
            'contextDecl-052',
            'contextDecl-053',
            'contextDecl-054',
            'contextDecl-055',
            'contextDecl-056',
            'contextDecl-057',
            'contextDecl-058'
        ]}
    ].

environment('empty', __BaseDir) ->
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
environment('works-mod', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "../docs/works-mod.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ].

'contextDecl-014'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare variable $x := . + 5;\n"
        "        declare context item := 17;\n"
        "        $x\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "contextDecl-014.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "22") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'contextDecl-015'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare variable $y := /works/employee;\n"
        "        declare context item := $y[9];\n"
        "        declare variable $x external := if (./*) then fn:position() else 0;\n"
        "        ($x, $y)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "contextDecl-015.xq"), Qry1),
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
                    case xqerl_test:assert_error(Res, "XQDY0054") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XQDY0054 " ++ binary_to_list(F)};
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

'contextDecl-016'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare variable $y := (<a>1</a>,<a>2</a>,<a>3</a>,<a>4</a>,<a>5</a>,<a>6</a>,<a>7</a>,<a>8</a>,<a>9</a>,<a>10</a>);\n"
        "        declare context item := $y[3];\n"
        "        declare variable $x external := fn:position();\n"
        "        $x\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "contextDecl-016.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'contextDecl-017'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare variable $y := <root><a>1</a>,<a>2</a>,<a>3</a>,<a>4</a>,<a>5</a>,<a>6</a>,<a>7</a>,<a>8</a>,<a>9</a>,<a>10</a></root>;\n"
        "        declare context item := $y;\n"
        "        declare variable $x external := fn:last();\n"
        "        $x\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "contextDecl-017.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'contextDecl-018'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = " declare context item := last() + 1; .",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "contextDecl-018.xq"), Qry1),
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
                    case xqerl_test:assert_eq(Res, "2") of
                        true -> {comment, "Equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPDY0002") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPDY0002 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XQDY0054") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XQDY0054 " ++ binary_to_list(F)};
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

'contextDecl-019'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = " declare context item := position() + 1; .",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "contextDecl-019.xq"), Qry1),
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
                    case xqerl_test:assert_eq(Res, "2") of
                        true -> {comment, "Equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPDY0002") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPDY0002 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XQDY0054") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XQDY0054 " ++ binary_to_list(F)};
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

'contextDecl-020'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = " declare context item as xs:integer external; . ",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', ["'London'"]},
        {vars, []},
        {params, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "contextDecl-020.xq"), Qry1),
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

'contextDecl-021'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = " declare context item as xs:integer := 'London'; . ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "contextDecl-021.xq"), Qry1),
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

'contextDecl-022'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = " declare context item as xs:string := 2; . ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "contextDecl-022.xq"), Qry1),
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

'contextDecl-023'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare context item as xs:integer+ := (1 to 17)[position() = 5];\n"
        "        .\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "contextDecl-023.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPST0003") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPST0003 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'contextDecl-028'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = " declare context item := 3; . + 4 ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "contextDecl-028.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "7") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'contextDecl-029'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare context item := <a>bananas</a>;\n"
        "        string-length()\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "contextDecl-029.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "7") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'contextDecl-030'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare context item := <a id=\"qwerty\">bananas</a>;\n"
        "        string-length(@id)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "contextDecl-030.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "6") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'contextDecl-031'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare context item := contains(?, \"e\");\n"
        "        .(\"raspberry\")\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "contextDecl-031.xq"), Qry1),
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

'contextDecl-032'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare context item := (1 to 17)[20]; .",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "contextDecl-032.xq"), Qry1),
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

'contextDecl-033'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare context item := (1 to 17)[position() gt 5]; .",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "contextDecl-033.xq"), Qry1),
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

'contextDecl-034'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare context item as xs:integer := (1 to 17)[position() = 5]; .",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "contextDecl-034.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "5") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'contextDecl-035'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare context item as xs:integer := (1 to 17)[position() = 5];\n"
        "        .\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "contextDecl-035.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "5") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'contextDecl-036'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare context item as xs:integer := current-date();\n"
        "        .\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "contextDecl-036.xq"), Qry1),
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

'contextDecl-037'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare context item as xs:integer := <a>23</a>;\n"
        "        .\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "contextDecl-037.xq"), Qry1),
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

'contextDecl-038'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare context item as xs:anyURI := \"http://www.w3.org/\";\n"
        "        .\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "contextDecl-038.xq"), Qry1),
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

'contextDecl-039'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare context item as xs:double := 1.234;\n"
        "        .\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "contextDecl-039.xq"), Qry1),
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

'contextDecl-040'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare context item external;\n"
        "        . instance of document-node()\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-mod', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "contextDecl-040.xq"), Qry1),
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

'contextDecl-041'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare context item as document-node() external;\n"
        "        name(/*)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-mod', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "contextDecl-041.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "\"works\"") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'contextDecl-042'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare context item external := 17;\n"
        "        . = 17\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('empty', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "contextDecl-042.xq"), Qry1),
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

'contextDecl-043'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare context item as xs:integer external := 17;\n"
        "        . = 17\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('empty', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "contextDecl-043.xq"), Qry1),
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

'contextDecl-044'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = " declare context item as xs:double external := 17; . = 17",
    {Env, Opts} = xqerl_test:handle_environment(environment('empty', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "contextDecl-044.xq"), Qry1),
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

'contextDecl-045'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = " declare context item as xs:double external; . = 17",
    {Env, Opts} = xqerl_test:handle_environment(environment('empty', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "contextDecl-045.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPDY0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPDY0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'contextDecl-046'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare context item as xs:double external;\n"
        "        declare context item as xs:integer := 15;\n"
        "        . = 17\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-mod', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "contextDecl-046.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0099") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0099 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'contextDecl-047'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	import module namespace m=\"http://www.w3.org/TestModules/libmodule2\"; \n"
        "        . gt xs:date('1900-01-01')\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', ["current-date()"]},
        {vars, []},
        {params, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, [
            {filename:join(__BaseDir, "ContextItemDecl/libmodule-2.xq"),
                "http://www.w3.org/TestModules/libmodule2"}
        ]}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Hints = [
        {filename:join(__BaseDir, "ContextItemDecl/libmodule-2.xq"),
            <<"Q{http://www.w3.org/TestModules/libmodule2}">>}
    ],
    LibList = xqerl_code_server:compile_files(Hints),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "contextDecl-047.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            Etup when is_tuple(Etup), element(1, Etup) == xqError ->
                xqerl_test:combined_error(Etup, LibList);
            D ->
                D
        catch
            _:E -> xqerl_test:combined_error(E, LibList)
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

'contextDecl-048'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	import module namespace m=\"http://www.w3.org/TestModules/libmodule1\"; \n"
        "      	. = 17\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('empty', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Hints = [
        {filename:join(__BaseDir, "ContextItemDecl/libmodule-1.xq"),
            <<"Q{http://www.w3.org/TestModules/libmodule1}">>}
    ],
    LibList = xqerl_code_server:compile_files(Hints),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "contextDecl-048.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            Etup when is_tuple(Etup), element(1, Etup) == xqError ->
                xqerl_test:combined_error(Etup, LibList);
            D ->
                D
        catch
            _:E -> xqerl_test:combined_error(E, LibList)
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0113") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0113 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'contextDecl-049'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        import module namespace m=\"http://www.w3.org/TestModules/libmodule2\"; \n"
        "        declare context item as xs:date := current-date();\n"
        "        . gt xs:date('1900-01-01')\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('empty', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Hints = [
        {filename:join(__BaseDir, "ContextItemDecl/libmodule-2.xq"),
            <<"Q{http://www.w3.org/TestModules/libmodule2}">>}
    ],
    LibList = xqerl_code_server:compile_files(Hints),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "contextDecl-049.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            Etup when is_tuple(Etup), element(1, Etup) == xqError ->
                xqerl_test:combined_error(Etup, LibList);
            D ->
                D
        catch
            _:E -> xqerl_test:combined_error(E, LibList)
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

'contextDecl-050'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	import module namespace m=\"http://www.w3.org/TestModules/libmodule2\"; \n"
        "        declare context item as xs:integer := 23;\n"
        "        . eq 23\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('empty', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Hints = [
        {filename:join(__BaseDir, "ContextItemDecl/libmodule-2.xq"),
            <<"Q{http://www.w3.org/TestModules/libmodule2}">>}
    ],
    LibList = xqerl_code_server:compile_files(Hints),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "contextDecl-050.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            Etup when is_tuple(Etup), element(1, Etup) == xqError ->
                xqerl_test:combined_error(Etup, LibList);
            D ->
                D
        catch
            _:E -> xqerl_test:combined_error(E, LibList)
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

'contextDecl-051'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        import module namespace m=\"http://www.w3.org/TestModules/libmodule2\"; \n"
        "        declare context item as node() external;\n"
        "        . instance of element()\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-mod', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Hints = [
        {filename:join(__BaseDir, "ContextItemDecl/libmodule-2.xq"),
            <<"Q{http://www.w3.org/TestModules/libmodule2}">>}
    ],
    LibList = xqerl_code_server:compile_files(Hints),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "contextDecl-051.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            Etup when is_tuple(Etup), element(1, Etup) == xqError ->
                xqerl_test:combined_error(Etup, LibList);
            D ->
                D
        catch
            _:E -> xqerl_test:combined_error(E, LibList)
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

'contextDecl-052'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        import module namespace m=\"http://www.w3.org/TestModules/libmodule3\"; \n"
        "        . eq 23\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('empty', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Hints = [
        {filename:join(__BaseDir, "ContextItemDecl/libmodule-3.xq"),
            <<"Q{http://www.w3.org/TestModules/libmodule3}">>}
    ],
    LibList = xqerl_code_server:compile_files(Hints),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "contextDecl-052.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            Etup when is_tuple(Etup), element(1, Etup) == xqError ->
                xqerl_test:combined_error(Etup, LibList);
            D ->
                D
        catch
            _:E -> xqerl_test:combined_error(E, LibList)
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0113") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0113 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'contextDecl-053'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare variable $p := \"base-uri\";\n"
        "        declare variable $f := function-lookup(xs:QName(\"fn:\"||$p), 0);\n"
        "        declare context item := $f();\n"
        "        .\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('empty', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "contextDecl-053.xq"), Qry1),
            xqerl:run(Mod, Opts)
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
                    case xqerl_test:assert_error(Res, "XQDY0054") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XQDY0054 " ++ binary_to_list(F)};
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

'contextDecl-054'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	import module namespace m=\"http://www.w3.org/TestModules/libmodule2\"; \n"
        "        xs:date(.) gt xs:date('1900-01-01')\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', ["current-dateTime()"]},
        {vars, []},
        {params, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, [
            {filename:join(__BaseDir, "ContextItemDecl/libmodule-2.xq"),
                "http://www.w3.org/TestModules/libmodule2"}
        ]}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Hints = [
        {filename:join(__BaseDir, "ContextItemDecl/libmodule-2.xq"),
            <<"Q{http://www.w3.org/TestModules/libmodule2}">>}
    ],
    LibList = xqerl_code_server:compile_files(Hints),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "contextDecl-054.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            Etup when is_tuple(Etup), element(1, Etup) == xqError ->
                xqerl_test:combined_error(Etup, LibList);
            D ->
                D
        catch
            _:E -> xqerl_test:combined_error(E, LibList)
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

'contextDecl-055'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      declare variable $f := function-lookup(xs:QName(\"fn:\"||$p), 0);\n"
        "      declare context item := <e/>;\n"
        "      declare variable $p := \"local-name\";\n"
        "      $f()\n"
        "    ",
    {Env, Opts} = xqerl_test:handle_environment(environment('empty', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "contextDecl-055.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "\"e\"") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'contextDecl-056'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'contextDecl-057'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'contextDecl-058'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      import module namespace m=\"http://www.w3.org/TestModules/libmodule5\";\n"
        "      declare context item as array(xs:string) external;\n"
        "      $m:v eq 'green'\n"
        "    ",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', ["['blue', 'green']"]},
        {vars, []},
        {params, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, [
            {filename:join(__BaseDir, "ContextItemDecl/libmodule-5.xq"),
                "http://www.w3.org/TestModules/libmodule5"}
        ]}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Hints = [
        {filename:join(__BaseDir, "ContextItemDecl/libmodule-5.xq"),
            <<"Q{http://www.w3.org/TestModules/libmodule5}">>}
    ],
    LibList = xqerl_code_server:compile_files(Hints),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "contextDecl-058.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            Etup when is_tuple(Etup), element(1, Etup) == xqError ->
                xqerl_test:combined_error(Etup, LibList);
            D ->
                D
        catch
            _:E -> xqerl_test:combined_error(E, LibList)
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
