-module('prod_GroupByClause_SUITE').

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

-export(['group-001'/1]).
-export(['group-001a'/1]).
-export(['group-002'/1]).
-export(['group-002a'/1]).
-export(['group-003'/1]).
-export(['group-003a'/1]).
-export(['group-004'/1]).
-export(['group-005'/1]).
-export(['group-006'/1]).
-export(['group-007'/1]).
-export(['group-008'/1]).
-export(['group-009'/1]).
-export(['group-009a'/1]).
-export(['group-010'/1]).
-export(['group-011'/1]).
-export(['group-012'/1]).
-export(['group-013'/1]).
-export(['group-014'/1]).
-export(['group-015'/1]).
-export(['group-016'/1]).
-export(['group-017'/1]).
-export(['group-018'/1]).
-export(['group-019'/1]).
-export(['group-020'/1]).
-export(['use-case-groupby-Q1'/1]).
-export(['use-case-groupby-Q2'/1]).
-export(['use-case-groupby-Q3'/1]).
-export(['use-case-groupby-Q4'/1]).
-export(['use-case-groupby-Q5'/1]).
-export(['use-case-groupby-Q6'/1]).
-export(['use-case-groupby-Q7'/1]).
-export(['use-case-groupby-Q8'/1]).

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
        {group, group_0},
        {group, group_1}
    ].

groups() ->
    [
        {group_0, [parallel], [
            'group-001',
            'group-001a',
            'group-002',
            'group-002a',
            'group-003',
            'group-003a',
            'group-004',
            'group-005',
            'group-006',
            'group-007',
            'group-008',
            'group-009',
            'group-009a',
            'group-010',
            'group-011',
            'group-012',
            'group-013',
            'group-014',
            'group-015',
            'group-016',
            'group-017',
            'group-018',
            'group-019'
        ]},
        {group_1, [parallel], [
            'group-020',
            'use-case-groupby-Q1',
            'use-case-groupby-Q2',
            'use-case-groupby-Q3',
            'use-case-groupby-Q4',
            'use-case-groupby-Q5',
            'use-case-groupby-Q6',
            'use-case-groupby-Q7',
            'use-case-groupby-Q8'
        ]}
    ].

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
    ];
environment('GroupByUseCases', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [
            {filename:join(__BaseDir, "GroupByClause/products.xml"), "$products-doc", []},
            {filename:join(__BaseDir, "GroupByClause/sales-records.xml"), "$sales-records-doc", []},
            {filename:join(__BaseDir, "GroupByClause/stores.xml"), "$stores-doc", []},
            {filename:join(__BaseDir, "GroupByClause/books.xml"), "$books-doc", []}
        ]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ].

'group-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        " \n"
        "            for $x in 1 to 100 \n"
        "            let $key := $x mod 10 \n"
        "            group by $key \n"
        "            return string(text{$x})\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "group-001.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_permutation(
                Res,
                "\"1 11 21 31 41 51 61 71 81 91\", \"2 12 22 32 42 52 62 72 82 92\", \"3 13 23 33 43 53 63 73 83 93\", \n"
                "            \"4 14 24 34 44 54 64 74 84 94\", \"5 15 25 35 45 55 65 75 85 95\", \"6 16 26 36 46 56 66 76 86 96\", \n"
                "            \"7 17 27 37 47 57 67 77 87 97\", \"8 18 28 38 48 58 68 78 88 98\", \"9 19 29 39 49 59 69 79 89 99\", \n"
                "            \"10 20 30 40 50 60 70 80 90 100\""
            )
        of
            true -> {comment, "Correct permutation"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'group-001a'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        " \n"
        "            for $x in 1 to 100 \n"
        "            group by $key := $x mod 10 \n"
        "            return string(text{$x})\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "group-001a.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_permutation(
                Res,
                "\"1 11 21 31 41 51 61 71 81 91\", \"2 12 22 32 42 52 62 72 82 92\", \"3 13 23 33 43 53 63 73 83 93\", \n"
                "            \"4 14 24 34 44 54 64 74 84 94\", \"5 15 25 35 45 55 65 75 85 95\", \"6 16 26 36 46 56 66 76 86 96\", \n"
                "            \"7 17 27 37 47 57 67 77 87 97\", \"8 18 28 38 48 58 68 78 88 98\", \"9 19 29 39 49 59 69 79 89 99\", \n"
                "            \"10 20 30 40 50 60 70 80 90 100\""
            )
        of
            true -> {comment, "Correct permutation"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'group-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        " \n"
        "            for $x in //employee \n"
        "            let $key := $x/@gender \n"
        "            group by $key \n"
        "            return concat($key, ':',  \n"
        "                   string-join(for $e in $x return $e/@name/string(), ',')) \n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-mod', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "group-002.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_permutation(
                Res,
                "\n"
                "            \"female:Jane Doe 1,Jane Doe 3,Jane Doe 5,Jane Doe 7,Jane Doe 9,Jane Doe 11,Jane Doe 13\",\n"
                "            \"male:John Doe 2,John Doe 4,John Doe 6,John Doe 8,John Doe 10,John Doe 12\"\n"
                "         "
            )
        of
            true -> {comment, "Correct permutation"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'group-002a'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        " \n"
        "            for $x in //employee \n"
        "            group by $key := $x/@gender \n"
        "            return concat($key, ':',  \n"
        "                   string-join(for $e in $x return $e/@name/string(), ',')) \n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-mod', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "group-002a.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_permutation(
                Res,
                "\n"
                "            \"female:Jane Doe 1,Jane Doe 3,Jane Doe 5,Jane Doe 7,Jane Doe 9,Jane Doe 11,Jane Doe 13\",\n"
                "            \"male:John Doe 2,John Doe 4,John Doe 6,John Doe 8,John Doe 10,John Doe 12\"\n"
                "         "
            )
        of
            true -> {comment, "Correct permutation"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'group-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        " \n"
        "            for $x in //employee \n"
        "            let $key := ($x/@gender = 'male') \n"
        "            group by $key \n"
        "            return concat($key, ':',  \n"
        "                   string-join(for $e in $x return $e/@name/string(), ',')) \n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-mod', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "group-003.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_permutation(
                Res,
                "\n"
                "            \"false:Jane Doe 1,Jane Doe 3,Jane Doe 5,Jane Doe 7,Jane Doe 9,Jane Doe 11,Jane Doe 13\",\n"
                "            \"true:John Doe 2,John Doe 4,John Doe 6,John Doe 8,John Doe 10,John Doe 12\"\n"
                "         "
            )
        of
            true -> {comment, "Correct permutation"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'group-003a'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        " \n"
        "            for $x in //employee \n"
        "            group by $key := ($x/@gender = 'male') \n"
        "            return concat($key, ':',  \n"
        "                   string-join(for $e in $x return $e/@name/string(), ',')) \n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-mod', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "group-003a.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_permutation(
                Res,
                "\n"
                "            \"false:Jane Doe 1,Jane Doe 3,Jane Doe 5,Jane Doe 7,Jane Doe 9,Jane Doe 11,Jane Doe 13\",\n"
                "            \"true:John Doe 2,John Doe 4,John Doe 6,John Doe 8,John Doe 10,John Doe 12\"\n"
                "         "
            )
        of
            true -> {comment, "Correct permutation"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'group-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        " \n"
        "            for $x in //employee \n"
        "            let $key := $x/@gender \n"
        "            group by $key \n"
        "            return concat($key, ':', avg($x/hours)) \n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-mod', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "group-004.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_permutation(Res, "\"female:41.25\", \"male:37.75\"") of
            true -> {comment, "Correct permutation"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'group-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "            for $x in //employee \n"
        "            let $key := $x/hours \n"
        "            group by $key \n"
        "            return <group hours=\"{$key}\" avHours=\"{avg($x/hours)}\"/> \n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-mod', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "group-005.xq"), Qry1),
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

'group-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        <out>{ \n"
        "            for $x in //employee \n"
        "            group by $key := $x/status \n"
        "            return <group status=\"{$key}\" count=\"{count($x)}\"/> \n"
        "        }</out>\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-mod', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "group-006.xq"), Qry1),
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
                    case
                        xqerl_test:assert_xml(
                            Res,
                            "<out><group status=\"\" count=\"12\"/><group status=\"active\" count=\"1\"/></out>"
                        )
                    of
                        true -> {comment, "XML Deep equal"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_xml(
                            Res,
                            "<out><group status=\"active\" count=\"1\"/><group status=\"\" count=\"12\"/></out>"
                        )
                    of
                        true -> {comment, "XML Deep equal"};
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

'group-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        " \n"
        "            for $x in //employee \n"
        "            let $key := $x/hours[1] \n"
        "            group by $key \n"
        "            where count($x) gt 2 \n"
        "            return concat($key, ':', count($x)) \n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-mod', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "group-007.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_permutation(Res, "\"40:3\", \"80:3\", \"20:5\"") of
            true -> {comment, "Correct permutation"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'group-008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        <out>{ \n"
        "            for $x in //employee \n"
        "            let $key := $x/empnum \n"
        "            group by $key \n"
        "            order by count($x), $key \n"
        "            return <group count=\"{count($x)}\"> {string-join($x/@name, '|')} </group> \n"
        "        }</out>\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-mod', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "group-008.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_xml(
                Res,
                "<out><group count=\"2\">Jane Doe 7|John Doe 8</group><group count=\"2\">Jane Doe 9|John Doe 10</group><group count=\"3\">Jane Doe 11|John Doe 12|Jane Doe 13</group><group count=\"6\">Jane Doe 1|John Doe 2|Jane Doe 3|John Doe 4|Jane Doe 5|John Doe 6</group></out>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'group-009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        <out>{ \n"
        "            for $x in //employee \n"
        "            let $key := $x/empnum \n"
        "            group by $key collation \"http://www.w3.org/2005/xpath-functions/collation/codepoint\" \n"
        "            order by $key \n"
        "            return <group count=\"{count($x)}\" key=\"{$key}\"> {string-join($x/pnum, '|')} </group> \n"
        "        }</out>\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-mod', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "group-009.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_xml(
                Res,
                "<out><group count=\"6\" key=\"E1\">P1|P2|P3|P4|P5|P6</group><group count=\"2\" key=\"E2\">P1|P2</group><group count=\"2\" key=\"E3\">P2|P2</group><group count=\"3\" key=\"E4\">P2|P4|P5</group></out>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'group-009a'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        <out>{ \n"
        "            for $x in //employee \n"
        "            group by $key := $x/empnum collation \"http://www.w3.org/2005/xpath-functions/collation/codepoint\" \n"
        "            order by $key \n"
        "            return <group count=\"{count($x)}\" key=\"{$key}\"> {string-join($x/pnum, '|')} </group> \n"
        "        }</out>\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-mod', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "group-009a.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_xml(
                Res,
                "<out><group count=\"6\" key=\"E1\">P1|P2|P3|P4|P5|P6</group><group count=\"2\" key=\"E2\">P1|P2</group><group count=\"2\" key=\"E3\">P2|P2</group><group count=\"3\" key=\"E4\">P2|P4|P5</group></out>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'group-010'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        <out>{ \n"
        "            for $x in //employee \n"
        "            let $key := if ($x/@gender='male') then number('NaN') else 42 \n"
        "            group by $key \n"
        "            return <group key=\"{$key}\" count=\"{count($x)}\"/> \n"
        "        }</out>\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-mod', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "group-010.xq"), Qry1),
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
                    case
                        xqerl_test:assert_xml(
                            Res,
                            "<out><group key=\"NaN\" count=\"6\"/><group key=\"42\" count=\"7\"/></out>"
                        )
                    of
                        true -> {comment, "XML Deep equal"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_xml(
                            Res,
                            "<out><group key=\"42\" count=\"7\"/><group key=\"NaN\" count=\"6\"/></out>"
                        )
                    of
                        true -> {comment, "XML Deep equal"};
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

'group-011'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        for $a at $p in 1 to 10\n"
        "        let $g := $p mod 2\n"
        "        group by $g\n"
        "        return string-join($p!string(), ' ')  \n"
        "     ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "group-011.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_permutation(Res, "\"1 3 5 7 9\", \"2 4 6 8 10\"") of
            true -> {comment, "Correct permutation"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'group-012'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        <out>{ \n"
        "            for $x in //employee[age > 300] \n"
        "            let $key := @gender \n"
        "            group by $key \n"
        "            return <group gender=\"{$key}\"> { \n"
        "                        for $e in $x return <person>{$e/@name/string()}</person> \n"
        "                   } </group> \n"
        "        }</out>\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-mod', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "group-012.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<out/>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'group-013'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "       for $x in 1 to 10, $y in 1 to 4\n"
        "       let $org_y := $y\n"
        "       group by $y, $y := $x mod 2\n"
        "       return <grp y=\"{$org_y[1]}\" even=\"{$y}\">{$x}</grp>\n"
        "     ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "group-013.xq"), Qry1),
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
                    case
                        xqerl_test:assert_xml(
                            Res,
                            "<grp even=\"1\" y=\"1\">1 1 1 1 3 3 3 3 5 5 5 5 7 7 7 7 9 9 9 9</grp><grp even=\"0\" y=\"1\">2 2 2 2 4 4 4 4 6 6 6 6 8 8 8 8 10 10 10 10</grp>"
                        )
                    of
                        true -> {comment, "XML Deep equal"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_xml(
                            Res,
                            "<grp even=\"0\" y=\"1\">2 2 2 2 4 4 4 4 6 6 6 6 8 8 8 8 10 10 10 10</grp><grp even=\"1\" y=\"1\">1 1 1 1 3 3 3 3 5 5 5 5 7 7 7 7 9 9 9 9</grp>"
                        )
                    of
                        true -> {comment, "XML Deep equal"};
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

'group-014'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         let $x := 1\n"
        "         return\n"
        "           for $i in (\"a\", \"b\")\n"
        "           group by $x\n"
        "           return\n"
        "             ($x, count($i))\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "group-014.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0094") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0094 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'group-015'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for $x in (true(), \"true\", xs:QName(\"true\"))\n"
        "          group by $x\n"
        "          return $x\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "group-015.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_permutation(Res, "true(), \"true\", xs:QName(\"true\")") of
            true -> {comment, "Correct permutation"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'group-016'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "       count(\n"
        "         for $y in 1 to 10\n"
        "         group by $y := $y, $y := $y mod 2\n"
        "         return $y\n"
        "       )\n"
        "     ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "group-016.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "2") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'group-017'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      count(\n"
        "         for $y in (\"ax\", \"bx\", \"cx\", \"Ay\", \"By\", \"Cy\")\n"
        "         group by $k := substring($y, 1, 1) collation \"http://www.w3.org/2010/09/qt-fots-catalog/collation/caseblind\"\n"
        "         return <group>{$y}</group>\n"
        "       )\n"
        "       ",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
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
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "group-017.xq"), Qry1),
            xqerl:run(Mod, Opts)
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

'group-018'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      count(\n"
        "         for $y in (\"ax\", \"bx\", \"cx\", \"Ay\", \"By\", \"Cy\")\n"
        "         group by $k := substring($y, 1, 1) collation \"http://www.w3.org/2005/xpath-functions/collation/html-ascii-case-insensitive\"\n"
        "         return <group>{$y}</group>\n"
        "       )\n"
        "       ",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
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
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "group-018.xq"), Qry1),
            xqerl:run(Mod, Opts)
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

'group-019'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "           let $without_tz := xs:dateTime('2015-04-08T01:30:00') \n"
        "           let $with_tz := adjust-dateTime-to-timezone($without_tz, implicit-timezone())\n"
        "           let $keys := (xs:dateTime('2015-04-08T02:30:00'), $without_tz, $with_tz)\n"
        "           return count(for $k in $keys group by $k return $k)\n"
        "       ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "group-019.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert(Res, "$result lt 3") of
            true -> {comment, "Correct results"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'group-020'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      declare variable $in :=\n"
        "      <Folder Name=\"root\">\n"
        "        <Folder Name=\"user\">\n"
        "          <File Name=\"Fred\"/>\n"
        "          <File Name=\"Bill\"/>\n"
        "          <File Name=\"Fred\"/>\n"
        "        </Folder>\n"
        "        <Folder Name=\"manager\">\n"
        "          <File Name=\"Jane\"/>\n"
        "          <File Name=\"Mary\"/>\n"
        "          <File Name=\"Jane\"/>\n"
        "        </Folder>\n"
        "      </Folder>;\n"
        "      \n"
        "      declare function local:pathName($resource as element()) as xs:string {\n"
        "        string-join($resource/ancestor-or-self::*/@Name, '/')\n"
        "      };\n"
        "      \n"
        "      for $resource in $in//(Folder | File)\n"
        "      let $path := local:pathName($resource)\n"
        "      group by $path\n"
        "      where count($resource) gt 1\n"
        "      return $path\n"
        "    ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "group-020.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_permutation(Res, "\"root/manager/Jane\", \"root/user/Fred\"") of
            true -> {comment, "Correct permutation"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'use-case-groupby-Q1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "               <sales-qty-by-product>{\n"
        "                 for $sales in $sales-records-doc/*/record\n"
        "                 let $pname := $sales/product-name\n"
        "                 group by $pname\n"
        "                 order by $pname\n"
        "                 return\n"
        "                   <product name=\"{$pname}\">{\n"
        "                     sum($sales/qty)\n"
        "                   }</product>\n"
        "               }</sales-qty-by-product> \n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('GroupByUseCases', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "use-case-groupby-Q1.xq"),
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
            xqerl_test:assert_xml(
                Res,
                "<sales-qty-by-product><product name=\"blender\">250</product><product name=\"broiler\">20</product><product name=\"shirt\">10</product><product name=\"socks\">510</product><product name=\"toaster\">200</product></sales-qty-by-product>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'use-case-groupby-Q2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "               <result>{\n"
        "                 for $sales in $sales-records-doc/*/record\n"
        "                 let $state := $stores-doc/*/store[store-number = $sales/store-number]/state\n"
        "                 let $category := $products-doc/*/product[name = $sales/product-name]/category\n"
        "                 group by $state, $category\n"
        "                 order by $state, $category\n"
        "                 return\n"
        "                   <group>\n"
        "                     <state>{$state}</state>\n"
        "                     <category>{$category}</category>\n"
        "                     <total-qty>{sum($sales/qty)}</total-qty>\n"
        "                   </group>\n"
        "               }</result>\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('GroupByUseCases', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "use-case-groupby-Q2.xq"),
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
            xqerl_test:assert_xml(
                Res,
                "<result><group><state>CA</state><category>clothes</category><total-qty>510</total-qty></group><group><state>CA</state><category>kitchen</category><total-qty>170</total-qty></group><group><state>MA</state><category>clothes</category><total-qty>10</total-qty></group><group><state>MA</state><category>kitchen</category><total-qty>300</total-qty></group></result>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'use-case-groupby-Q3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "               <result>{\n"
        "                 for $sales in $sales-records-doc/*/record\n"
        "                 let $state := $stores-doc/*/store[store-number = $sales/store-number]/state,\n"
        "                   $product := $products-doc/*/product[name = $sales/product-name],\n"
        "                   $category := $product/category,\n"
        "                   $revenue := $sales/qty * $product/price\n"
        "                 group by $state, $category\n"
        "                 order by $state, $category\n"
        "                 return\n"
        "                   <group>\n"
        "                     <state>{$state}</state>\n"
        "                     <category>{$category}</category>\n"
        "                     <total-revenue>{sum($revenue)}</total-revenue>\n"
        "                   </group>\n"
        "               }</result>\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('GroupByUseCases', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "use-case-groupby-Q3.xq"),
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
            xqerl_test:assert_xml(
                Res,
                "<result><group><state>CA</state><category>clothes</category><total-revenue>2550</total-revenue></group><group><state>CA</state><category>kitchen</category><total-revenue>6500</total-revenue></group><group><state>MA</state><category>clothes</category><total-revenue>100</total-revenue></group><group><state>MA</state><category>kitchen</category><total-revenue>14000</total-revenue></group></result>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'use-case-groupby-Q4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "               <result>{\n"
        "                 for $store in $stores-doc/*/store\n"
        "                 let $state := $store/state\n"
        "                 group by $state\n"
        "                 order by $state\n"
        "                 return\n"
        "                   <state name=\"{$state}\">{\n"
        "                     for $product in $products-doc/*/product\n"
        "                     let $category := $product/category\n"
        "                     group by $category\n"
        "                     order by $category\n"
        "                     return\n"
        "                       <category name=\"{$category}\">{\n"
        "                         for $sales in $sales-records-doc/*/record[store-number = $store/store-number\n"
        "                           and product-name = $product/name]\n"
        "                         let $pname := $sales/product-name\n"
        "                         group by $pname\n"
        "                         order by $pname\n"
        "                         return\n"
        "                           <product name=\"{$pname}\" total-qty=\"{sum($sales/qty)}\" />\n"
        "                         }</category>\n"
        "                   }</state>\n"
        "               }</result>\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('GroupByUseCases', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "use-case-groupby-Q4.xq"),
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
            xqerl_test:assert_xml(
                Res,
                "<result><state name=\"CA\"><category name=\"clothes\"><product name=\"socks\" total-qty=\"510\"/></category><category name=\"kitchen\"><product name=\"broiler\" total-qty=\"20\"/><product name=\"toaster\" total-qty=\"150\"/></category></state><state name=\"MA\"><category name=\"clothes\"><product name=\"shirt\" total-qty=\"10\"/></category><category name=\"kitchen\"><product name=\"blender\" total-qty=\"250\"/><product name=\"toaster\" total-qty=\"50\"/></category></state><state name=\"WA\"><category name=\"clothes\"/><category name=\"kitchen\"/></state></result>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'use-case-groupby-Q5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "               <result>{\n"
        "                 for $sales in $sales-records-doc/*/record\n"
        "                 let $storeno := $sales/store-number\n"
        "                 group by $storeno\n"
        "                 order by $storeno\n"
        "                 return\n"
        "                   <store number = \"{$storeno}\">{\n"
        "                     for $s in $sales\n"
        "                     order by xs:int($s/qty) descending\n"
        "                     return\n"
        "                       <product name = \"{$s/product-name}\" qty = \"{$s/qty}\"/>\n"
        "                   }</store>\n"
        "               }</result>\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('GroupByUseCases', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "use-case-groupby-Q5.xq"),
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
            xqerl_test:assert_xml(
                Res,
                "<result><store number=\"1\"><product name=\"socks\" qty=\"500\"/><product name=\"broiler\" qty=\"20\"/></store><store number=\"2\"><product name=\"toaster\" qty=\"100\"/><product name=\"toaster\" qty=\"50\"/><product name=\"socks\" qty=\"10\"/></store><store number=\"3\"><product name=\"blender\" qty=\"150\"/><product name=\"blender\" qty=\"100\"/><product name=\"toaster\" qty=\"50\"/><product name=\"shirt\" qty=\"10\"/></store></result>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'use-case-groupby-Q6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "               <result>{\n"
        "                 for $sales in $sales-records-doc/*/record\n"
        "                 let $storeno := $sales/store-number,\n"
        "                   $product := $products-doc/*/product[name = $sales/product-name],\n"
        "                   $prd := $product,\n"
        "                   $profit := $sales/qty * ($prd/price - $prd/cost)\n"
        "                 group by $storeno\n"
        "                 let $total-store-profit := sum($profit)\n"
        "                 where $total-store-profit > 100\n"
        "                 order by $total-store-profit descending\n"
        "                 return\n"
        "                   <store number = \"{$storeno}\" total-profit = \"{$total-store-profit}\"/>\n"
        "                }</result>\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('GroupByUseCases', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "use-case-groupby-Q6.xq"),
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
            xqerl_test:assert_xml(
                Res,
                "<result><store number=\"3\" total-profit=\"7320\"/><store number=\"2\" total-profit=\"3030\"/><store number=\"1\" total-profit=\"2100\"/></result>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'use-case-groupby-Q7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "               <result>{\n"
        "                 for $book in $books-doc/*/book\n"
        "                 for $author in $book/author\n"
        "                 group by $author\n"
        "                 order by $author\n"
        "                 return\n"
        "                 <author name=\"{$author}\">{\n"
        "                   for $b in $book\n"
        "                   order by $b/title\n"
        "                   return\n"
        "                     <title> {fn:data($b/title)} </title>\n"
        "                 }</author>\n"
        "               }</result>\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('GroupByUseCases', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "use-case-groupby-Q7.xq"),
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
            xqerl_test:assert_xml(
                Res,
                "<result><author name=\"Alan Simon\"><title>SQL:1999</title><title>Strategic Database Technology</title></author><author name=\"Andrew Eisenberg\"><title>Understanding SQL and Java Together</title></author><author name=\"Jim Melton\"><title>Advanced SQL:1999</title><title>Querying XML</title><title>SQL:1999</title><title>Understanding SQL and Java Together</title></author><author name=\"Stephen Buxton\"><title>Querying XML</title></author></result>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'use-case-groupby-Q8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "               <result>{\n"
        "                 for $book in $books-doc/*/book\n"
        "                 let $author-list := fn:string-join($book/author, ', ')\n"
        "                 group by $author-list\n"
        "                 order by $author-list\n"
        "                 return\n"
        "                   <author-list names=\"{$author-list}\">{\n"
        "                     for $b in $book\n"
        "                     order by $b/title\n"
        "                     return\n"
        "                       <title> {fn:data($b/title)} </title>\n"
        "                   }</author-list>\n"
        "               }</result>\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('GroupByUseCases', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "use-case-groupby-Q8.xq"),
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
            xqerl_test:assert_xml(
                Res,
                "<result><author-list names=\"Alan Simon\"><title>Strategic Database Technology</title></author-list><author-list names=\"Jim Melton\"><title>Advanced SQL:1999</title></author-list><author-list names=\"Jim Melton, Alan Simon\"><title>SQL:1999</title></author-list><author-list names=\"Jim Melton, Andrew Eisenberg\"><title>Understanding SQL and Java Together</title></author-list><author-list names=\"Jim Melton, Stephen Buxton\"><title>Querying XML</title></author-list></result>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.
