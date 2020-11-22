-module('misc_HigherOrderFunctions_SUITE').

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

-export(['hof-001'/1]).
-export(['hof-002'/1]).
-export(['hof-003'/1]).
-export(['hof-004'/1]).
-export(['hof-005'/1]).
-export(['hof-006'/1]).
-export(['hof-007'/1]).
-export(['hof-008'/1]).
-export(['hof-009'/1]).
-export(['hof-010'/1]).
-export(['hof-011'/1]).
-export(['hof-012'/1]).
-export(['hof-013'/1]).
-export(['hof-014'/1]).
-export(['hof-015'/1]).
-export(['hof-016'/1]).
-export(['hof-017'/1]).
-export(['hof-018'/1]).
-export(['hof-019'/1]).
-export(['hof-020'/1]).
-export(['hof-021'/1]).
-export(['hof-022'/1]).
-export(['hof-023'/1]).
-export(['hof-024'/1]).
-export(['hof-025'/1]).
-export(['hof-026'/1]).
-export(['hof-027'/1]).
-export(['hof-028'/1]).
-export(['hof-029'/1]).
-export(['hof-030'/1]).
-export(['hof-031'/1]).
-export(['hof-032'/1]).
-export(['hof-033'/1]).
-export(['hof-034'/1]).
-export(['hof-035'/1]).
-export(['hof-036'/1]).
-export(['hof-037'/1]).
-export(['hof-038'/1]).
-export(['hof-039'/1]).
-export(['hof-040'/1]).
-export(['hof-041'/1]).
-export(['hof-042'/1]).
-export(['hof-043'/1]).
-export(['hof-044'/1]).
-export(['hof-045'/1]).
-export(['hof-046'/1]).
-export(['hof-047'/1]).
-export(['hof-048'/1]).
-export(['hof-049'/1]).
-export(['hof-050'/1]).
-export(['hof-051'/1]).
-export(['hof-052'/1]).
-export(['hof-053'/1]).
-export(['hof-901'/1]).
-export(['hof-902'/1]).
-export(['hof-903'/1]).
-export(['hof-904'/1]).
-export(['hof-905'/1]).
-export(['hof-906'/1]).
-export(['hof-907'/1]).
-export(['hof-908'/1]).
-export(['hof-909'/1]).
-export(['hof-910'/1]).
-export(['hof-911'/1]).
-export(['hof-912'/1]).
-export(['hof-913'/1]).
-export(['hof-914'/1]).
-export(['hof-915'/1]).
-export(['hof-916'/1]).
-export(['hof-917'/1]).
-export(['hof-918'/1]).
-export(['hof-919'/1]).
-export(['function-item-1'/1]).
-export(['function-item-2'/1]).
-export(['function-item-3'/1]).
-export(['function-item-4'/1]).
-export(['function-item-5'/1]).
-export(['function-item-6'/1]).
-export(['function-item-7'/1]).
-export(['function-item-8'/1]).
-export(['function-item-9'/1]).
-export(['function-item-10'/1]).
-export(['function-item-11'/1]).
-export(['function-item-12'/1]).
-export(['function-item-13'/1]).
-export(['function-item-14'/1]).
-export(['function-item-15'/1]).
-export(['function-item-16'/1]).
-export(['function-item-17'/1]).
-export(['inline-function-1'/1]).
-export(['inline-function-2'/1]).
-export(['inline-function-3'/1]).
-export(['inline-function-4'/1]).
-export(['inline-function-5'/1]).
-export(['inline-function-6'/1]).
-export(['inline-function-7'/1]).
-export(['inline-function-8'/1]).
-export(['inline-function-9'/1]).
-export(['inline-function-10'/1]).
-export(['inline-function-11'/1]).
-export(['inline-function-12'/1]).
-export(['inline-function-11a'/1]).
-export(['inline-function-12a'/1]).
-export(['inline-function-13'/1]).
-export(['inline-function-14'/1]).
-export(['inline-function-15'/1]).
-export(['inline-function-16'/1]).
-export(['xqhof1'/1]).
-export(['xqhof2'/1]).
-export(['xqhof3'/1]).
-export(['xqhof4'/1]).
-export(['xqhof5'/1]).
-export(['xqhof6'/1]).
-export(['xqhof7'/1]).
-export(['xqhof8'/1]).
-export(['xqhof9'/1]).
-export(['xqhof10'/1]).
-export(['xqhof11'/1]).
-export(['xqhof12'/1]).
-export(['xqhof13'/1]).
-export(['xqhof14'/1]).
-export(['xqhof15'/1]).
-export(['xqhof16'/1]).
-export(['xqhof17'/1]).
-export(['xqhof18'/1]).
-export(['xqhof19'/1]).
-export(['xqhof20'/1]).
-export(['xqhof21'/1]).
-export(['xqhof22'/1]).

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
    __BaseDir = filename:join(TD, "misc"),
    [{base_dir, __BaseDir} | Config].

all() ->
    [
        {group, group_0},
        {group, group_1},
        {group, group_2},
        {group, group_3},
        {group, group_4},
        {group, group_5}
    ].

groups() ->
    [
        {group_0, [parallel], [
            'hof-001',
            'hof-002',
            'hof-003',
            'hof-004',
            'hof-005',
            'hof-006',
            'hof-007',
            'hof-008',
            'hof-009',
            'hof-010',
            'hof-011',
            'hof-012',
            'hof-013',
            'hof-014',
            'hof-015',
            'hof-016',
            'hof-017',
            'hof-018',
            'hof-019',
            'hof-020',
            'hof-021',
            'hof-022',
            'hof-023'
        ]},
        {group_1, [parallel], [
            'hof-024',
            'hof-025',
            'hof-026',
            'hof-027',
            'hof-028',
            'hof-029',
            'hof-030',
            'hof-031',
            'hof-032',
            'hof-033',
            'hof-034',
            'hof-035',
            'hof-036',
            'hof-037',
            'hof-038',
            'hof-039',
            'hof-040',
            'hof-041',
            'hof-042',
            'hof-043',
            'hof-044',
            'hof-045',
            'hof-046',
            'hof-047'
        ]},
        {group_2, [parallel], [
            'hof-048',
            'hof-049',
            'hof-050',
            'hof-051',
            'hof-052',
            'hof-053',
            'hof-901',
            'hof-902',
            'hof-903',
            'hof-904',
            'hof-905',
            'hof-906',
            'hof-907',
            'hof-908',
            'hof-909',
            'hof-910',
            'hof-911',
            'hof-912',
            'hof-913',
            'hof-914',
            'hof-915',
            'hof-916',
            'hof-917',
            'hof-918'
        ]},
        {group_3, [parallel], [
            'hof-919',
            'function-item-1',
            'function-item-2',
            'function-item-3',
            'function-item-4',
            'function-item-5',
            'function-item-6',
            'function-item-7',
            'function-item-8',
            'function-item-9',
            'function-item-10',
            'function-item-11',
            'function-item-12',
            'function-item-13',
            'function-item-14',
            'function-item-15',
            'function-item-16',
            'function-item-17',
            'inline-function-1',
            'inline-function-2',
            'inline-function-3',
            'inline-function-4',
            'inline-function-5',
            'inline-function-6'
        ]},
        {group_4, [parallel], [
            'inline-function-7',
            'inline-function-8',
            'inline-function-9',
            'inline-function-10',
            'inline-function-11',
            'inline-function-12',
            'inline-function-11a',
            'inline-function-12a',
            'inline-function-13',
            'inline-function-14',
            'inline-function-15',
            'inline-function-16',
            'xqhof1',
            'xqhof2',
            'xqhof3',
            'xqhof4',
            'xqhof5',
            'xqhof6',
            'xqhof7',
            'xqhof8',
            'xqhof9',
            'xqhof10',
            'xqhof11',
            'xqhof12'
        ]},
        {group_5, [parallel], [
            'xqhof13',
            'xqhof14',
            'xqhof15',
            'xqhof16',
            'xqhof17',
            'xqhof18',
            'xqhof19',
            'xqhof20',
            'xqhof21',
            'xqhof22'
        ]}
    ].

environment('user-defined-types', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, [
            {filename:join(__BaseDir, "../docs/userdefined.xsd"),
                "http://www.w3.org/XQueryTest/userDefinedTypes"}
        ]},
        {resources, []},
        {modules, []}
    ].

'hof-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare function local:f($x as xs:integer) as xs:integer { $x + 1 }; \n"
        "        let $f := local:f#1 return $f(2)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-001.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "3") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'hof-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare function local:f() as xs:integer { 42 }; \n"
        "      	declare function local:f($x as xs:integer) as xs:integer { $x + 1 }; \n"
        "      	let $f := local:f#0 return $f()\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-002.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "42") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'hof-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        import module namespace m=\"http://example.com/hof-003\"; \n"
        "        let $f := m:f#1 return $f(17)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Hints = [
        {filename:join(__BaseDir, "HigherOrderFunctions/module-hof-003.xq"),
            <<"Q{http://example.com/hof-003}">>}
    ],
    LibList = xqerl_code_server:compile_files(Hints),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-003.xq"), Qry1),
            xqerl:run(Mod)
        of
            Etup when is_tuple(Etup), element(1, Etup) == xqError ->
                xqerl_test:combined_error(Etup, LibList);
            D ->
                D
        catch
            _:E -> xqerl_test:combined_error(E, LibList)
        end,
    Out =
        case xqerl_test:assert_eq(Res, "18") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'hof-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $f := fn:round#1 return $f(1.2345)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-004.xq"), Qry1),
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

'hof-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $f := concat#8 return $f('a','b','c','d','e','f','g','h')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-005.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "abcdefgh") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'hof-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      declare default function namespace \"http://example.com/hof-006\"; \n"
        "      declare function g($x as xs:integer) as xs:integer { $x + 1 }; \n"
        "      let $f := g#1 return $f(21)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-006.xq"), Qry1),
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

'hof-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      declare default function namespace \"http://www.w3.org/2001/XMLSchema\"; \n"
        "      let $f := date#1 return $f('2008-01-31')\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-007.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "2008-01-31") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'hof-008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $f := xs:date#1 return $f('2008-01-31')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-008.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "2008-01-31") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'hof-009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'hof-010'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      declare function local:f($x as xs:integer) as xs:integer { $x + 1 }; \n"
        "      let $f as function(*) := local:f#1 return $f(2)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-010.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "3") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'hof-011'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      declare function local:f($x as xs:integer) as xs:integer { $x + 3 }; \n"
        "      let $f as function(xs:integer) as xs:integer := local:f#1 \n"
        "      return $f(2)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-011.xq"), Qry1),
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

'hof-012'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      declare function local:f($x as xs:integer, $y as xs:long) as xs:integer { $x + $y }; \n"
        "      let $f as function(xs:integer, xs:long) as xs:integer := local:f#2 \n"
        "      return $f(2, xs:long(5))\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-012.xq"), Qry1),
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

'hof-013'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      declare function local:f($x as xs:integer) as xs:integer { $x + 3 }; \n"
        "      declare function local:g($x as xs:integer) as xs:integer { $x + 4 }; \n"
        "      declare function local:h($x as xs:integer) as xs:integer { $x + 5 }; \n"
        "      let $f as (function(xs:integer) as xs:integer)* := (local:f#1, local:g#1, local:h#1) return $f[3](2)[1]\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-013.xq"), Qry1),
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

'hof-014'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      declare function local:case($x as xs:boolean) as function(*) \n"
        "      	{ if ($x) then fn:upper-case#1 else fn:lower-case#1 }; \n"
        "      local:case(true())(\"Mike\"), local:case(false())(\"Mike\")\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-014.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "MIKE mike") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'hof-015'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      declare function local:case($x as xs:boolean) as function(xs:string?) as xs:string \n"
        "      	{ if ($x) then fn:upper-case#1 else fn:lower-case#1 }; \n"
        "      local:case(true())(\"Mike\"), local:case(false())(\"Mike\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-015.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "MIKE mike") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'hof-016'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      declare function local:case($x as function(*), $y as xs:string) as xs:string { $x($y) }; \n"
        "      local:case(upper-case#1, \"Mike\"), local:case(lower-case#1, \"Mike\")\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-016.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "MIKE mike") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'hof-017'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      declare function local:case($x as function(xs:string?) as xs:string, $y as xs:string) as xs:string { $x($y) }; \n"
        "      local:case(upper-case#1, \"Mike\"), local:case(lower-case#1, \"Mike\")\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-017.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "MIKE mike") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'hof-018'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      declare function local:scramble($x as function(xs:string) as xs:string, $y as xs:string) as xs:string \n"
        "      	{ $x($y) }; \n"
        "      declare function local:rot13($x as xs:string) as xs:string \n"
        "      	{ translate($x, \"abcdefghijklmnopqrstuvwxyz\", \"nopqrstuvwxyzabcdefghijklm\") }; \n"
        "      local:scramble(local:rot13#1, \"mike\")\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-018.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "zvxr") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'hof-019'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      declare function local:scramble($x as function(*), $y as xs:string) as xs:string { $x($y) }; \n"
        "      declare function local:rot13($x as xs:string) as xs:string { translate($x, \"abcdefghijklmnopqrstuvwxyz\", \"nopqrstuvwxyzabcdefghijklm\") }; \n"
        "      local:scramble(local:rot13#1, \"mike\")\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-019.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "zvxr") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'hof-020'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      declare function local:scramble($x as function(*), $y as xs:string) as xs:string { $x($y) }; \n"
        "      local:scramble(function($x){translate($x, \"abcdefghijklmnopqrstuvwxyz\", \"nopqrstuvwxyzabcdefghijklm\")}, \"john\")\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-020.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "wbua") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'hof-021'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      declare function local:scramble($x as function(xs:string) as xs:string, $y as xs:string) as xs:string { $x($y) }; \n"
        "      local:scramble(function($x){translate($x, \"abcdefghijklmnopqrstuvwxyz\", \"nopqrstuvwxyzabcdefghijklm\")}, \"john\")\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-021.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "wbua") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'hof-022'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      declare function local:scramble($x as function(xs:string) as xs:string, $y as xs:string) as xs:string { $x($y) }; \n"
        "      let $n := function-name(local:scramble#2) \n"
        "      return (local-name-from-QName($n), namespace-uri-from-QName($n), function-arity(local:scramble#2))\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-022.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_string_value(
                Res,
                "scramble http://www.w3.org/2005/xquery-local-functions 2"
            )
        of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'hof-023'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        let $f := fn:function-name#1, $n := function-name($f) \n"
        "        return (local-name-from-QName($n), namespace-uri-from-QName($n), function-arity($f))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-023.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_string_value(
                Res,
                "function-name http://www.w3.org/2005/xpath-functions 1"
            )
        of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'hof-024'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        let $f := xs:dateTime#1, $n := function-name($f) \n"
        "        return (local-name-from-QName($n), namespace-uri-from-QName($n), function-arity($f))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-024.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "dateTime http://www.w3.org/2001/XMLSchema 1") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'hof-025'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $f := concat#123456, $n := function-name($f) \n"
        "        return (local-name-from-QName($n), namespace-uri-from-QName($n), function-arity($f))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-025.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_string_value(
                Res,
                "concat http://www.w3.org/2005/xpath-functions 123456"
            )
        of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'hof-026'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        let $f := function($x as xs:string) as xs:string { upper-case($x) } \n"
        "        let $n := function-name($f) \n"
        "        return <a loc=\"{local-name-from-QName($n)}\" uri=\"{namespace-uri-from-QName($n)}\"\n"
        "        			arity=\"{function-arity($f)}\" eloc=\"{empty(local-name-from-QName($n))}\" euri=\"{empty(namespace-uri-from-QName($n))}\"/>\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-026.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_xml(
                Res,
                "<a uri=\"\" loc=\"\" euri=\"true\" eloc=\"true\" arity=\"1\"/>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'hof-027'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        let $f := fn:contains(?, \"e\") \n"
        "        return for $s in (\"Mike\", \"John\", \"Dave\", \"Mary\", \"Jane\") return $f($s)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-027.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "true false true false true") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'hof-028'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      declare function local:splitter() as (function(xs:string) as xs:string*) { function($x as xs:string) { tokenize($x, '\\s') } }; \n"
        "      string-join(local:splitter()(\"A nice cup of tea\"), '|')\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-028.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "A|nice|cup|of|tea") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'hof-029'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      declare function local:splitter() as (function(xs:string) as xs:string+)? \n"
        "      { function($x as xs:string) { for $i in tokenize($x, '\\s') return upper-case($i)} }; \n"
        "      string-join(local:splitter()(\"A nice cup of tea\"), '|')\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-029.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "A|NICE|CUP|OF|TEA") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'hof-030'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      declare variable $sep as xs:string := \"\\s\"; \n"
        "      declare function local:splitter() as (function(xs:string) as xs:string*)? \n"
        "      	{ function($x as xs:string) { for $i in tokenize($x, $sep) return upper-case($i)} }; \n"
        "      string-join(local:splitter()(\"A nice cup of tea\"), '|')\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-030.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "A|NICE|CUP|OF|TEA") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'hof-031'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      declare function local:splitter($sep as xs:string) as (function(xs:string) as xs:string*) \n"
        "      	{ function($x as xs:string) { for $i in tokenize($x, $sep) return upper-case($i)} }; \n"
        "      string-join(local:splitter(\"\\s\")(\"A nice cup of tea\"), '|')\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-031.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "A|NICE|CUP|OF|TEA") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'hof-032'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(if (current-date() gt xs:date('2000-12-31')) then upper-case#1 else lower-case#1)(\"Mike\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-032.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "MIKE") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'hof-033'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "local-name-from-QName(function-name((upper-case#1, lower-case#1)[.(\"Mike\") = \"MIKE\"]))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-033.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "upper-case") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'hof-034'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "local-name-from-QName(function-name((upper-case#1, lower-case#1)[ordered{.}(\"Mike\") = \"MIKE\"]))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-034.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "upper-case") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'hof-035'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "local-name-from-QName(function-name((upper-case#1, lower-case#1)[ordered{.}(\"Mike\") = \"MIKE\"]))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-035.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "upper-case") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'hof-036'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(<a b=\"3\"/>/(string(@b), upper-case#1, 17))[. instance of xs:anyAtomicType]",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-036.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "3 17") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'hof-037'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare function local:f($x as xs:long, $y as xs:NCName) as element(e) { \n"
        "            <e x=\"{$x}\" y=\"{$y}\"/> \n"
        "        }; \n"
        "        local:f#2 instance of function(*), \n"
        "        local:f#2 instance of function(xs:long, xs:NCName) as element(e), \n"
        "        local:f#2 instance of function(xs:anyAtomicType?, xs:anyAtomicType?) as element(e), \n"
        "        local:f#2 instance of function(item()*, item()*) as element(e)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-037.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "true true false false") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'hof-038'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare function local:f($x as xs:long?, $y as xs:NCName?) as element(e) { \n"
        "            <e x=\"{$x}\" y=\"{$y}\"/> \n"
        "        }; \n"
        "        local:f#2 instance of function(xs:int?, xs:NCName?) as element(e), \n"
        "        local:f#2 instance of function(xs:long?) as element(e), \n"
        "        local:f#2 instance of function(xs:long?, xs:NCName?, item()*) as element(e), \n"
        "        local:f#2 instance of function(xs:long, xs:anyAtomicType?) as element(e), \n"
        "        local:f#2 instance of function(item()+, item()+) as element(e)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-038.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "true false false false false") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'hof-039'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:typedData"}.

'hof-040'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      declare function local:apply($fns as (function(xs:string) as xs:string)*, $s as xs:string) as xs:string* { for $f in $fns return $f($s) }; \n"
        "      let $ops := (upper-case#1, lower-case#1, function($x){translate($x, 'e', 'i')}, substring-before(?, ' ')) \n"
        "      return string-join(local:apply($ops, 'Michael Kay'), '~')\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-040.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "MICHAEL KAY~michael kay~Michail Kay~Michael") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'hof-041'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      declare function local:ops() as (function(xs:string) as xs:string)*\n"
        "      	{ (upper-case#1, lower-case#1, function($x){translate($x, 'e', 'i')}, substring-before(?, ' ')) }; \n"
        "      string-join(for $f in local:ops() return $f('Michael Kay'), '~')\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-041.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "MICHAEL KAY~michael kay~Michail Kay~Michael") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'hof-042'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare function local:lower-case($x as xs:string) as xs:string { concat(\"'\", fn:lower-case($x), \"'\") }; \n"
        "        declare function local:ops() as (function(xs:string) as xs:string)* \n"
        "        	{ (upper-case#1, local:lower-case#1, function($x){translate($x, 'e', 'i')}, substring-before(?, ' ')) }; \n"
        "        string-join(for $f in local:ops() return $f(<a name=\"Michael Kay\"/>/@name), '~')\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-042.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "MICHAEL KAY~'michael kay'~Michail Kay~Michael") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'hof-043'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      declare function local:round($x as xs:double) as xs:double \n"
        "      	{ fn:floor($x) }; \n"
        "      declare function local:ops() as (function(xs:double) as xs:double)* \n"
        "      	{ (abs#1, local:round#1, function($x){$x+1}, round-half-to-even(?, 2)) }; \n"
        "      string-join(for $f in local:ops() return string($f(xs:untypedAtomic('123.456'))), '~')\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-043.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "123.456~123~124.456~123.46") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'hof-044'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      declare function local:round($x as xs:double) as xs:double { fn:floor($x) }; \n"
        "      declare function local:ops() as (function(xs:double) as xs:double)* \n"
        "      	{ (abs#1, local:round#1, function($x as xs:double){$x+1}, round-half-to-even(?, 2)) }; \n"
        "      string-join(for $f in local:ops() return string(round-half-to-even($f(xs:decimal('123.456')), 4)), '~')\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-044.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "123.456~123~124.456~123.46") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'hof-045'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      declare function local:round($x as xs:double, $algorithm as (function(xs:double) as xs:double)) as xs:double { $algorithm($x) }; \n"
        "      declare variable $roundToCeiling := local:round(?, ceiling#1); $roundToCeiling(12.4)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-045.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "13") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'hof-046'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare function local:splitter($x as xs:string) as (function() as xs:string*)* { \n"
        "            for $sep in ('\\s', ',', '!') \n"
        "            return function() { for $i in tokenize($x, $sep) return upper-case($i) } \n"
        "        }; \n"
        "        <out>{ \n"
        "            for $f as function(*) in local:splitter(\"How nice! Thank you, I enjoyed that.\") \n"
        "            return <tokens>{ for $t in $f() \n"
        "                             return <t>{$t}</t> \n"
        "                   }</tokens> \n"
        "       }</out>\n"
        "    ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-046.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_xml(
                Res,
                "<out><tokens><t>HOW</t><t>NICE!</t><t>THANK</t><t>YOU,</t><t>I</t><t>ENJOYED</t><t>THAT.</t></tokens><tokens><t>HOW NICE! THANK YOU</t><t> I ENJOYED THAT.</t></tokens><tokens><t>HOW NICE</t><t> THANK YOU, I ENJOYED THAT.</t></tokens></out>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'hof-047'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare function local:splitter($x as xs:string) as (function() as xs:string*)* { \n"
        "            for $sep in ('\\s', ',', '!') return function() { \n"
        "                for $i in tokenize($x, $sep) return \n"
        "                    let $f := function(){ concat($sep, ':', upper-case($i)) } \n"
        "                    return $f() } \n"
        "        }; \n"
        "        <out>{ \n"
        "            for $f as function(*) in local:splitter(\"How nice! Thank you, I enjoyed that.\") \n"
        "            return <tokens>{ for $t in $f() \n"
        "                             return <t>{$t}</t> }</tokens> \n"
        "        }</out>\n"
        "     ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-047.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_xml(
                Res,
                "<out><tokens><t>\\s:HOW</t><t>\\s:NICE!</t><t>\\s:THANK</t><t>\\s:YOU,</t><t>\\s:I</t><t>\\s:ENJOYED</t><t>\\s:THAT.</t></tokens><tokens><t>,:HOW NICE! THANK YOU</t><t>,: I ENJOYED THAT.</t></tokens><tokens><t>!:HOW NICE</t><t>!: THANK YOU, I ENJOYED THAT.</t></tokens></out>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'hof-048'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare function local:do() as xs:integer { (local:f#1)(5) }; \n"
        "        declare function local:f($x as xs:integer) as xs:integer { $x + 1 }; \n"
        "        local:do()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-048.xq"), Qry1),
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

'hof-049'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare function local:tf($i as xs:integer) as function () as xs:boolean { \n"
        "            if ($i) then true#0 else false#0 \n"
        "        }; \n"
        "        <out>{(local:tf(0)(), local:tf(1)())}</out>\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-049.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<out>false true</out>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'hof-050'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $f := fn:substring-before#2(?, '-') return <out>{$f('the-end-of-the-world')}</out>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-050.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<out>the</out>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'hof-051'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        let $f := function($a as xs:string, $b as xs:string) { \n"
        "            starts-with($a, $b) and ends-with($a, $b)}(?, 'a') \n"
        "        return <out>{$f('abracadabra')}</out>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-051.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<out>true</out>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'hof-052'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $f := fn:concat#3(?, '*', ?) let $g := $f('[', ?) return <out>{$g(']')}</out>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-052.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<out>[*]</out>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'hof-053'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:typedData"}.

'hof-901'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare function local:f($x as xs:integer) as xs:integer { $x + 1 }; \n"
        "      	let $f := local:g#1 return $f(2)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-901.xq"), Qry1),
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

'hof-902'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare function local:f($x as xs:integer) as xs:integer { $x + 1 }; \n"
        "      	let $f := local:f#3 return $f(2)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-902.xq"), Qry1),
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

'hof-903'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare function local:f($x as xs:integer) as xs:integer { $x + 1 }; \n"
        "      	let $f := xs:date#2 return $f('2008-03-01')\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-903.xq"), Qry1),
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

'hof-904'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare function local:f($x as xs:integer) as xs:integer { $x + 1 }; \n"
        "      	let $f := concat#1 return $f('2008-03-01')\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-904.xq"), Qry1),
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

'hof-905'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare function local:f($x as xs:integer) as xs:integer { $x + 1 }; \n"
        "      	string(local:f#1)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-905.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOTY0014") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOTY0014 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'hof-906'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare function local:f($x as xs:integer) as xs:integer { $x + 1 }; \n"
        "      	exists(data(local:f#1))\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-906.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOTY0013") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOTY0013 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'hof-907'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare function local:f($x as xs:integer) as xs:integer { $x + 1 }; \n"
        "      	deep-equal((1,2,3,4,local:f#1), (1,2,3,4,local:f#1))\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-907.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOTY0015") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOTY0015 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'hof-908'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare function local:f($x as xs:integer) as xs:integer { $x + 1 }; \n"
        "      	local:f#1 eq 3\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-908.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOTY0013") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOTY0013 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'hof-909'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare function local:f($x as xs:integer) as xs:integer { $x + 1 }; \n"
        "      	number(local:f#1)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-909.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOTY0013") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOTY0013 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'hof-910'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare function local:f($x as xs:integer) as xs:integer {\n"
        "            $x + 1\n"
        "        };\n"
        "        let $f as function(xs:integer) := local:f#1\n"
        "        return $f(3)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-910.xq"), Qry1),
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

'hof-911'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<a b=\"3\"/>/(@b, upper-case#1)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-911.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPTY0018") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPTY0018 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'hof-912'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare function local:apply($fns as (function(xs:string) as xs:string)*, $s as xs:string) as xs:string* \n"
        "        { for $f in $fns return $f($s) };\n"
        "        let $ops := (upper-case#1, lower-case#1, function($x){translate($x, 'e', 'i')}, \n"
        "            substring-before(?, ' ', ?)) \n"
        "        return string-join(local:apply($ops, 'Michael Kay'), '~')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-912.xq"), Qry1),
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

'hof-913'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare function local:apply($fns as (function(xs:string) as xs:string)*, $s as xs:string) as xs:string* \n"
        "        { for $f in $fns return $f($s) }; \n"
        "        let $ops := (upper-case#1, lower-case#1, function($x){translate($x, 'e', 'i')}, \n"
        "            string-length#1) \n"
        "        return string-join(local:apply($ops, 'Michael Kay'), '~')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-913.xq"), Qry1),
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

'hof-914'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare function local:apply($fns as (function(xs:string) as xs:string)*, $s as xs:string) as xs:string* \n"
        "        { for $f in $fns return $f($s) }; \n"
        "        let $ops := (upper-case#1, lower-case#1, function($x as xs:double){string($x)}) \n"
        "        return string-join(local:apply($ops, 'Michael Kay'), '~')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-914.xq"), Qry1),
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

'hof-915'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $ops := substring-before('abc', ' ', (), ?) return $ops('Michael Kay')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-915.xq"), Qry1),
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

'hof-916'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $ops := substring-before(?, ?) return $ops('Michael Kay')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-916.xq"), Qry1),
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

'hof-917'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $ops := substring-before(?, 2) return $ops('Michael Kay')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-917.xq"), Qry1),
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

'hof-918'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare function local:round($x as xs:double, $algorithm as (function(xs:double) as xs:double)) as xs:double \n"
        "        { $algorithm($x) }; \n"
        "        declare variable $roundToCeiling := local:round(?, upper-case#1); \n"
        "        $roundToCeiling(12.4)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-918.xq"), Qry1),
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

'hof-919'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      declare function local:round($x as xs:double) as xs:double { fn:floor($x) }; \n"
        "      declare function local:ops() as (function(xs:double) as xs:double)* \n"
        "      	{ (abs#1, local:round#1, function($x as xs:float){$x+1}, round-half-to-even(?, 2)) }; \n"
        "      string-join(for $f in local:ops() return string(round-half-to-even($f(xs:decimal('123.456')), 4)), '~')\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "hof-919.xq"), Qry1),
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

'function-item-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "concat#64 instance of function(*)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "function-item-1.xq"), Qry1),
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

'function-item-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "string-join#1((\"a\", \"b\", \"c\", \"d\", \"e\", \"f\", \"g\", \"h\", \"i\", \"j\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "function-item-2.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "abcdefghij") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'function-item-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "string-join#1 is string-join#1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "function-item-3.xq"), Qry1),
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

'function-item-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "string-join#1 eq string-join#1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "function-item-4.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOTY0013") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOTY0013 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'function-item-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "element a { avg#1 }",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "function-item-5.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQTY0105") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQTY0105 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'function-item-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "attribute a { avg#1 }",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "function-item-6.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOTY0013") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOTY0013 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'function-item-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(let $a := 92, $b := true() return function($c) { $a, $b, $c })(\"lala\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "function-item-7.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "92, true(), \"lala\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'function-item-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "function-name(function-name#1)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "function-item-8.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:QName(\"fn:function-name\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'function-item-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "function-name(let $a := 92, $b := true() return function($c) { $a, $b, $c })",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "function-item-9.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_count(Res, "0") of
            true -> {comment, "Count correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'function-item-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(let $a := 92, $b := true() return function($c) { $a, $b, $c }) instance of function(item()*) as item()*",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "function-item-10.xq"), Qry1),
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

'function-item-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(let $a := 92, $b := true() return function($c) { $a, $b, $c })((xs:QName(\"foo\"), 5.0e3))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "function-item-11.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "92, true(), fn:QName(\"\",\"foo\"), 5000") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'function-item-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "function($a as item()) as item() { $a } instance of function(*)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "function-item-12.xq"), Qry1),
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

'function-item-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "function($a as item()) as xs:integer { $a } instance of function(item()) as item()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "function-item-13.xq"), Qry1),
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

'function-item-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "function($a as item()) as item() { $a } instance of function(xs:string) as item()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "function-item-14.xq"), Qry1),
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

'function-item-15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "function($a as item()) as item() { $a } instance of function() as item()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "function-item-15.xq"), Qry1),
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

'function-item-16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "function($a as item()) as xs:integer { $a } instance of function(item(), item()) as item()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "function-item-16.xq"), Qry1),
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

'function-item-17'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "function($a as xs:string) as item() { $a } instance of function(item()) as item()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "function-item-17.xq"), Qry1),
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

'inline-function-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "function() { 5 } instance of function(*)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "inline-function-1.xq"), Qry1),
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

'inline-function-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "function-name(function() { 5 })",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "inline-function-2.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_count(Res, "0") of
            true -> {comment, "Count correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'inline-function-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "function() as xs:integer { 5 }()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "inline-function-3.xq"), Qry1),
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

'inline-function-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "function($a as xs:integer) as xs:integer { $a + 5 }(3)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "inline-function-4.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "8") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'inline-function-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "function($a as xs:integer, $b as xs:double) as xs:double { $a * $b + 5 }(3, 2)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "inline-function-5.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "11") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'inline-function-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "function($a, $b as xs:double) as xs:double { $a * $b + 5 } instance of function(item()*, xs:double) as xs:double",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "inline-function-6.xq"), Qry1),
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

'inline-function-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "function($a as node()+, $b) as xs:double { $a * $b + 5 } instance of function(node(), item()*) as xs:double",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "inline-function-7.xq"), Qry1),
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

'inline-function-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "function($a as node()+) { $a + 5 } instance of function(node()) as item()*",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "inline-function-8.xq"), Qry1),
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

'inline-function-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "function() { true() } instance of function() as item()*",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "inline-function-9.xq"), Qry1),
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

'inline-function-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "function($a) { \"lala\", $a }, $a",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "inline-function-10.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPST0008") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPST0008 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'inline-function-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $a := \"monkey\" return function($a) { \"lala\", $a }(\"gibbon\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "inline-function-11.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"lala\", \"gibbon\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'inline-function-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "$a, function($a) { \"lala\", $a }",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "inline-function-12.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPST0008") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPST0008 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'inline-function-11a'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "function($a) { let $a := \"monkey\" return (\"lala\", $a) }(\"gibbon\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "inline-function-11a.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"lala\", \"monkey\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'inline-function-12a'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "function($a, $a) { \"lala\", $a }(\"gibbon\", \"monkey\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "inline-function-12a.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0039") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0039 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'inline-function-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "function($local:foo, $local:bar, $local:foo) { \"lala\", $local:foo, $local:bar }(\"gibbon\", \"monkey\", \"ape\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "inline-function-13.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0039") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0039 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'inline-function-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "function($local:foo, $local:bar, $fn:foo) { \"lala\", $local:foo, $local:bar }(\"gibbon\", \"monkey\", \"ape\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "inline-function-14.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"lala\", \"gibbon\", \"monkey\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'inline-function-15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "function($Q{http://local/}foo, $Q{http://local/}bar, $Q{http://local/}foo) { \n"
        "              \"lala\", $Q{http://local/}foo, $Q{http://local/}bar }(\"gibbon\", \"monkey\", \"ape\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "inline-function-15.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0039") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0039 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'inline-function-16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "function($Q{http://local/}foo, $Q{http://local/}bar, $fn:foo) { \n"
        "               \"lala\", $Q{http://local/}foo, $Q{http://local/}bar }(\"gibbon\", \"monkey\", \"ape\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "inline-function-16.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"lala\", \"gibbon\", \"monkey\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'xqhof1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "declare namespace map = \"http://snelson.org.uk/functions/map\";\n"
        "\n"
        "declare function map:key($pair as function() as item()+) as item()\n"
        "{\n"
        "  $pair()[1]\n"
        "};\n"
        "\n"
        "declare function map:value($pair as function() as item()+) as item()*\n"
        "{\n"
        "  subsequence($pair(), 2)\n"
        "};\n"
        "\n"
        "declare function map:contains($map as (function() as item()+)*, $key as item())\n"
        "  as xs:boolean\n"
        "{\n"
        "  map:process($map, $key, function($a) { true() }, false(),\n"
        "    function($a) { () })\n"
        "};\n"
        "\n"
        "declare function map:get($map as (function() as item()+)*, $key as item())\n"
        "  as item()*\n"
        "{\n"
        "  map:process($map, $key, map:value#1, (), function($a) { () })\n"
        "};\n"
        "\n"
        "declare function map:process(\n"
        "  $map as (function() as item()+)*,\n"
        "  $key as item(),\n"
        "  $found as function(function() as item()+) as item()*,\n"
        "  $notfound as item()*,\n"
        "  $unused as function((function() as item()+)*) as item()*\n"
        ") as item()*\n"
        "{\n"
        "  if(empty($map)) then $notfound\n"
        "  else\n"
        "\n"
        "  let $length := count($map)\n"
        "  let $middle := $length idiv 2 + 1\n"
        "  let $pair := $map[$middle]\n"
        "  let $pair_key := $pair()[1]\n"
        "  return\n"
        "    if($pair_key eq $key) then (\n"
        "      $unused(subsequence($map, 1, $middle - 1)),\n"
        "      $found($pair),\n"
        "      $unused(subsequence($map, $middle + 1))\n"
        "    )\n"
        "    else if($pair_key gt $key) then (\n"
        "      map:process(subsequence($map, 1, $middle - 1), $key,\n"
        "        $found, $notfound, $unused),\n"
        "      $unused(subsequence($map, $middle))\n"
        "    )\n"
        "    else (\n"
        "      $unused(subsequence($map, 1, $middle)),\n"
        "      map:process(subsequence($map, $middle + 1), $key,\n"
        "        $found, $notfound, $unused)\n"
        "    )\n"
        "};\n"
        "\n"
        "declare function map:pair($key as item(), $value as item()*)\n"
        "  as function() as item()+\n"
        "{\n"
        "  function() { $key, $value }\n"
        "};\n"
        "\n"
        "declare function map:put(\n"
        "  $map as (function() as item()+)*,\n"
        "  $key as item(),\n"
        "  $value as item()*\n"
        ") as (function() as item()+)+\n"
        "{\n"
        "  let $pair := map:pair($key, $value)\n"
        "  return\n"
        "    map:process($map, $key, function($a) { $pair }, $pair,\n"
        "      function($a) { $a })\n"
        "};\n"
        "\n"
        "string-join(let $map := map:put(map:put(map:put(map:put(map:put(map:put((),\n"
        "  \"a\", \"aardvark\"),\n"
        "  \"z\", \"zebra\"),\n"
        "  \"e\", (\"elephant\", \"eagle\")),\n"
        "  \"o\", \"osterich\"),\n"
        "  \"t\", \"terrapin\"),\n"
        "  \"a\", \"antelope\")\n"
        "return (\n"
        "  map:get($map, \"o\"),\n"
        "\n"
        "  for $m in $map\n"
        "  return concat(\"key: \", map:key($m), \", value: (\",\n"
        "    string-join(map:value($m), \", \"), \")\"))\n"
        ", \"\n"
        "\")\n",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xqhof1.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_eq(
                Res,
                "\"osterich\n"
                "key: a, value: (antelope)\n"
                "key: e, value: (elephant, eagle)\n"
                "key: o, value: (osterich)\n"
                "key: t, value: (terrapin)\n"
                "key: z, value: (zebra)\""
            )
        of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'xqhof2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         import module namespace func = \"http://snelson.org.uk/functions/functional\";\n"
        "         \n"
        "         let $f := func:curry(concat#5)\n"
        "         return $f(\"foo\")(\" bar\")(\" baz\")(\" what's\")(\" next?\")\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Hints = [
        {filename:join(__BaseDir, "HigherOrderFunctions/functional.xq"),
            <<"Q{http://snelson.org.uk/functions/functional}">>}
    ],
    LibList = xqerl_code_server:compile_files(Hints),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xqhof2.xq"), Qry1),
            xqerl:run(Mod)
        of
            Etup when is_tuple(Etup), element(1, Etup) == xqError ->
                xqerl_test:combined_error(Etup, LibList);
            D ->
                D
        catch
            _:E -> xqerl_test:combined_error(E, LibList)
        end,
    Out =
        case xqerl_test:assert_eq(Res, "\"foo bar baz what's next?\"") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'xqhof3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "import module namespace func = \"http://snelson.org.uk/functions/functional\";\n"
        "\n"
        "declare function local:fib2_aux($result as xs:integer, $next as xs:integer, $n) as xs:integer*\n"
        "{\n"
        "  if($n eq 0) then () else (\n"
        "  $result, local:fib2_aux($next, $next + $result, $n - 1))\n"
        "};\n"
        "\n"
        "declare function local:fib2($n) as xs:integer*\n"
        "{\n"
        "  local:fib2_aux(0, 1, $n)\n"
        "};\n"
        "\n"
        "declare function local:map-pairs($f,$a,$b)\n"
        "{\n"
        "  for-each-pair($a,$b,$f)\n"
        "};\n"
        "\n"
        "string-join(\n"
        "for $a in subsequence(\n"
        "\n"
        "let $interleave := func:curry(local:map-pairs#3)(function($a, $b) { $a, $b })\n"
        "let $enumerate := $interleave(0 to 49)\n"
        "return\n"
        "$enumerate(local:fib2(50))\n"
        "\n"
        ", 1, 100)\n"
        "return string($a)\n"
        ", \"\n"
        "\")\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Hints = [
        {filename:join(__BaseDir, "HigherOrderFunctions/functional.xq"),
            <<"Q{http://snelson.org.uk/functions/functional}">>}
    ],
    LibList = xqerl_code_server:compile_files(Hints),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xqhof3.xq"), Qry1),
            xqerl:run(Mod)
        of
            Etup when is_tuple(Etup), element(1, Etup) == xqError ->
                xqerl_test:combined_error(Etup, LibList);
            D ->
                D
        catch
            _:E -> xqerl_test:combined_error(E, LibList)
        end,
    Out =
        case
            xqerl_test:assert_eq(
                Res,
                "\"0\n"
                "0\n"
                "1\n"
                "1\n"
                "2\n"
                "1\n"
                "3\n"
                "2\n"
                "4\n"
                "3\n"
                "5\n"
                "5\n"
                "6\n"
                "8\n"
                "7\n"
                "13\n"
                "8\n"
                "21\n"
                "9\n"
                "34\n"
                "10\n"
                "55\n"
                "11\n"
                "89\n"
                "12\n"
                "144\n"
                "13\n"
                "233\n"
                "14\n"
                "377\n"
                "15\n"
                "610\n"
                "16\n"
                "987\n"
                "17\n"
                "1597\n"
                "18\n"
                "2584\n"
                "19\n"
                "4181\n"
                "20\n"
                "6765\n"
                "21\n"
                "10946\n"
                "22\n"
                "17711\n"
                "23\n"
                "28657\n"
                "24\n"
                "46368\n"
                "25\n"
                "75025\n"
                "26\n"
                "121393\n"
                "27\n"
                "196418\n"
                "28\n"
                "317811\n"
                "29\n"
                "514229\n"
                "30\n"
                "832040\n"
                "31\n"
                "1346269\n"
                "32\n"
                "2178309\n"
                "33\n"
                "3524578\n"
                "34\n"
                "5702887\n"
                "35\n"
                "9227465\n"
                "36\n"
                "14930352\n"
                "37\n"
                "24157817\n"
                "38\n"
                "39088169\n"
                "39\n"
                "63245986\n"
                "40\n"
                "102334155\n"
                "41\n"
                "165580141\n"
                "42\n"
                "267914296\n"
                "43\n"
                "433494437\n"
                "44\n"
                "701408733\n"
                "45\n"
                "1134903170\n"
                "46\n"
                "1836311903\n"
                "47\n"
                "2971215073\n"
                "48\n"
                "4807526976\n"
                "49\n"
                "7778742049\""
            )
        of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'xqhof4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare function local:hof($s, $f as function(*)) {\n"
        "           $f($s[1], $s[2])\n"
        "         };\n"
        "         \n"
        "         local:hof(('1', '2'), concat#2)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xqhof4.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "\"12\"") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'xqhof5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         let $a := string-join(?, \"\")\n"
        "         return $a((\"foo\", \"bar\", \"baz\"))\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xqhof5.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "\"foobarbaz\"") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'xqhof6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare function local:curry($f as function(item()*, item()*) as item()*) as function(item()*) as function(item()*) as item()*\n"
        "         {\n"
        "           function($a) { $f($a, ?) }\n"
        "         };\n"
        "         \n"
        "         local:curry(substring-after#2)(\"foobar\")(\"foo\")\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xqhof6.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "\"bar\"") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'xqhof7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "concat#3(\"one\", \"two\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xqhof7.xq"), Qry1),
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

'xqhof8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "concat#4(\"one\", ?, \"three\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xqhof8.xq"), Qry1),
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

'xqhof9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "concat#2(\"one\", ?, \"three\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xqhof9.xq"), Qry1),
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

'xqhof10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         for $f in (concat(\"one \", ?, \" three\"), substring-before(\"one two three\", ?), matches(?, \"t.*o\"), xs:NCName(?))\n"
        "         return $f(\"two\")\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xqhof10.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_deep_eq(
                Res,
                "\"one two three\", \"one \", true(), xs:NCName(\"two\")"
            )
        of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'xqhof11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "()(\"two\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xqhof11.xq"), Qry1),
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

'xqhof12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(concat(\"one \", ?, \" three\"), substring-before(\"one two three\", ?), matches(?, \"t.*o\"), xs:NCName(?))(\"two\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xqhof12.xq"), Qry1),
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

'xqhof13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         let $f := function($a) { node-name(.), $a }\n"
        "         return <a/>/$f(5)\n"
        "      \n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xqhof13.xq"), Qry1),
            xqerl:run(Mod)
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

'xqhof14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         let $f := name#0\n"
        "         return <a/>/$f()\n"
        "      \n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xqhof14.xq"), Qry1),
            xqerl:run(Mod)
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

'xqhof15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         let $f := <b/>/name#0\n"
        "         return <a/>/$f()\n"
        "      \n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xqhof15.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "\"b\"") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'xqhof16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare base-uri \"main\";\n"
        "         import module namespace lib = \"lib\";\n"
        "         \n"
        "         lib:getfun()(),\n"
        "         fn:static-base-uri#0(),\n"
        "         fn:static-base-uri()\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Hints = [{filename:join(__BaseDir, "HigherOrderFunctions/module-xqhof16.xq"), <<"Q{lib}">>}],
    LibList = xqerl_code_server:compile_files(Hints),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xqhof16.xq"), Qry1),
            xqerl:run(Mod)
        of
            Etup when is_tuple(Etup), element(1, Etup) == xqError ->
                xqerl_test:combined_error(Etup, LibList);
            D ->
                D
        catch
            _:E -> xqerl_test:combined_error(E, LibList)
        end,
    Out =
        case
            lists:all(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert(Res, "fn:ends-with($result[1], \"lib\")") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "fn:ends-with($result[2], \"main\")") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "fn:ends-with($result[3], \"main\")") of
                        true -> {comment, "Correct results"};
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

'xqhof17'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         import module namespace lib = \"lib\";\n"
        "         \n"
        "         <main/>/lib:getfun2()(),\n"
        "         <main/>/name#0(),\n"
        "         <main/>/name()\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Hints = [{filename:join(__BaseDir, "HigherOrderFunctions/module-xqhof16.xq"), <<"Q{lib}">>}],
    LibList = xqerl_code_server:compile_files(Hints),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xqhof17.xq"), Qry1),
            xqerl:run(Mod)
        of
            Etup when is_tuple(Etup), element(1, Etup) == xqError ->
                xqerl_test:combined_error(Etup, LibList);
            D ->
                D
        catch
            _:E -> xqerl_test:combined_error(E, LibList)
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"lib\", \"main\", \"main\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'xqhof18'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare base-uri \"main\";\n"
        "         import module namespace lib = \"lib\";\n"
        "         \n"
        "         lib:getfun3()(xs:QName(\"fn:static-base-uri\"),0)(),\n"
        "         function-lookup#2(xs:QName(\"fn:static-base-uri\"),0)(),\n"
        "         function-lookup(xs:QName(\"fn:static-base-uri\"),0)()\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Hints = [{filename:join(__BaseDir, "HigherOrderFunctions/module-xqhof16.xq"), <<"Q{lib}">>}],
    LibList = xqerl_code_server:compile_files(Hints),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xqhof18.xq"), Qry1),
            xqerl:run(Mod)
        of
            Etup when is_tuple(Etup), element(1, Etup) == xqError ->
                xqerl_test:combined_error(Etup, LibList);
            D ->
                D
        catch
            _:E -> xqerl_test:combined_error(E, LibList)
        end,
    Out =
        case
            lists:all(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert(Res, "fn:ends-with($result[1], \"lib\")") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "fn:ends-with($result[2], \"main\")") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "fn:ends-with($result[3], \"main\")") of
                        true -> {comment, "Correct results"};
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

'xqhof19'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         import module namespace lib = \"lib\";\n"
        "         \n"
        "         <main/>/lib:getfun3()(xs:QName(\"fn:name\"),0)(),\n"
        "         <main/>/function-lookup#2(xs:QName(\"fn:name\"),0)(),\n"
        "         <main/>/function-lookup(xs:QName(\"fn:name\"),0)()\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Hints = [{filename:join(__BaseDir, "HigherOrderFunctions/module-xqhof16.xq"), <<"Q{lib}">>}],
    LibList = xqerl_code_server:compile_files(Hints),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xqhof19.xq"), Qry1),
            xqerl:run(Mod)
        of
            Etup when is_tuple(Etup), element(1, Etup) == xqError ->
                xqerl_test:combined_error(Etup, LibList);
            D ->
                D
        catch
            _:E -> xqerl_test:combined_error(E, LibList)
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"lib\", \"main\", \"main\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'xqhof20'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $m := map {\n"
        "                \"Tuesday\" : true(),\n"
        "                \"Wednesday\" : true(),\n"
        "                \"Thursday\" : false(),\n"
        "                \"Friday\" : true(),\n"
        "                \"Monday\" : true(),\n"
        "                \"Sunday\" : false(),\n"
        "                \"Saturday\" : false() }\n"
        "          let $days := (\"Monday\", \"Tuesday\", \"Wednesday\", \"Thursday\", \"Friday\", \"Saturday\", \"Sunday\")     \n"
        "          return fn:filter($days,$m)        \n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xqhof20.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"Monday\", \"Tuesday\", \"Wednesday\", \"Friday\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'xqhof21'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $m := map {\n"
        "                \"Tuesday\" : true(),\n"
        "                \"Wednesday\" : true(),\n"
        "                \"Friday\" : true(),\n"
        "                \"Monday\" : true(),\n"
        "                \"Sunday\" : false(),\n"
        "                \"Saturday\" : false() }\n"
        "          let $days := (\"Monday\", \"Tuesday\", \"Wednesday\", \"Thursday\", \"Friday\", \"Saturday\", \"Sunday\")     \n"
        "          return fn:filter($days,$m)        \n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xqhof21.xq"), Qry1),
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

'xqhof22'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $m := array {\n"
        "                true(),\n"
        "                true(),\n"
        "                false(),\n"
        "                true(),\n"
        "                true(),\n"
        "                false(),\n"
        "                false() }\n"
        "          let $indices := (1 to 7)\n"
        "          return fn:filter($indices,$m)        \n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xqhof22.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "1, 2, 4, 5") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.
