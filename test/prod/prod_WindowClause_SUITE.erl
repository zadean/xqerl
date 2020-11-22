-module('prod_WindowClause_SUITE').

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

-export(['SlidingWindowExpr501'/1]).
-export(['SlidingWindowExpr502'/1]).
-export(['SlidingWindowExpr503'/1]).
-export(['TumblingWindowExpr503'/1]).
-export(['WindowingUseCase01'/1]).
-export(['WindowingUseCase01S'/1]).
-export(['WindowingUseCase02'/1]).
-export(['WindowingUseCase02S'/1]).
-export(['WindowingUseCase03'/1]).
-export(['WindowingUseCase03S'/1]).
-export(['WindowingUseCase04'/1]).
-export(['WindowingUseCase04S'/1]).
-export(['WindowingUseCase05'/1]).
-export(['WindowingUseCase05S'/1]).
-export(['WindowingUseCase06'/1]).
-export(['WindowingUseCase06S'/1]).
-export(['WindowingUseCase07'/1]).
-export(['WindowingUseCase07S'/1]).
-export(['WindowingUseCase08'/1]).
-export(['WindowingUseCase08S'/1]).
-export(['WindowingUseCase09'/1]).
-export(['WindowingUseCase09S'/1]).
-export(['WindowingUseCase10'/1]).
-export(['WindowingUseCase10S'/1]).
-export(['WindowingUseCase11'/1]).
-export(['WindowingUseCase11S'/1]).
-export(['WindowingUseCase12'/1]).
-export(['WindowingUseCase12S'/1]).
-export(['WindowingUseCase13'/1]).
-export(['WindowingUseCase13S'/1]).
-export(['WindowingUseCase14'/1]).
-export(['WindowingUseCase14S'/1]).
-export(['WindowingUseCase15'/1]).
-export(['WindowingUseCase15S'/1]).
-export(['WindowingUseCase16'/1]).
-export(['WindowingUseCase16S'/1]).
-export(['WindowingUseCase17'/1]).
-export(['WindowingUseCase17S'/1]).
-export(['WindowingUseCase18'/1]).
-export(['WindowingUseCase18S'/1]).
-export(['WindowingUseCase19'/1]).
-export(['WindowingUseCase19S'/1]).
-export(['TumblingWindowExpr504'/1]).
-export(['SlidingWindowExpr504'/1]).
-export(['SlidingWindowExpr505'/1]).
-export(['TumblingWindowExpr505'/1]).
-export(['SlidingWindowExpr506'/1]).
-export(['SlidingWindowExpr507'/1]).
-export(['TumblingWindowExpr507'/1]).
-export(['SlidingWindowExpr508'/1]).
-export(['TumblingWindowExpr508'/1]).
-export(['SlidingWindowExpr509'/1]).
-export(['TumblingWindowExpr509'/1]).
-export(['TumblingWindowExpr510'/1]).
-export(['SlidingWindowExpr510'/1]).
-export(['TumblingWindowExpr511'/1]).
-export(['SlidingWindowExpr511'/1]).
-export(['TumblingWindowExpr512'/1]).
-export(['SlidingWindowExpr512'/1]).
-export(['TumblingWindowExpr513'/1]).
-export(['SlidingWindowExpr513'/1]).
-export(['TumblingWindowExpr514'/1]).
-export(['SlidingWindowExpr514'/1]).
-export(['TumblingWindowExpr515'/1]).
-export(['SlidingWindowExpr515'/1]).
-export(['TumblingWindowExpr516'/1]).
-export(['TumblingWindowExpr517'/1]).
-export(['SlidingWindowExpr517'/1]).
-export(['TumblingWindowExpr518'/1]).
-export(['TumblingWindowExpr518a'/1]).
-export(['SlidingWindowExpr518'/1]).
-export(['TumblingWindowExpr519'/1]).
-export(['SlidingWindowExpr519'/1]).
-export(['TumblingWindowExpr520'/1]).
-export(['TumblingWindowExpr521'/1]).
-export(['TumblingWindowExpr522'/1]).
-export(['TumblingWindowExpr523'/1]).
-export(['TumblingWindowExpr524'/1]).
-export(['TumblingWindowExpr525'/1]).
-export(['TumblingWindowExpr526'/1]).
-export(['TumblingWindowExpr527'/1]).
-export(['TumblingWindowExpr528'/1]).
-export(['TumblingWindowExpr529'/1]).
-export(['SlidingWindowExpr529'/1]).
-export(['TumblingWindowExpr530'/1]).
-export(['TumblingWindowExpr531'/1]).
-export(['TumblingWindowExpr531a'/1]).
-export(['TumblingWindowExpr532'/1]).
-export(['TumblingWindowExpr533'/1]).
-export(['TumblingWindowExpr534'/1]).
-export(['SlidingWindowExpr534'/1]).
-export(['TumblingWindowExpr535a'/1]).
-export(['TumblingWindowExpr535b'/1]).
-export(['TumblingWindowExpr536'/1]).
-export(['TumblingWindowExpr537'/1]).
-export(['TumblingWindowExpr538'/1]).
-export(['SlidingWindowExpr538'/1]).
-export(['TumblingWindowExpr539'/1]).
-export(['SlidingWindowExpr539'/1]).
-export(['TumblingWindowExpr540'/1]).
-export(['SlidingWindowExpr540'/1]).
-export(['TumblingWindowExpr541'/1]).
-export(['TumblingWindowExpr542'/1]).
-export(['TumblingWindowExpr544'/1]).
-export(['SlidingWindowExpr544'/1]).
-export(['TumblingWindowExpr545'/1]).
-export(['TumblingWindowExpr546'/1]).
-export(['TumblingWindowExpr547'/1]).
-export(['TumblingWindowExpr549'/1]).
-export(['TumblingWindowExpr550'/1]).
-export(['SlidingWindowExpr550'/1]).
-export(['TumblingWindowExpr551'/1]).
-export(['TumblingWindowExpr552'/1]).
-export(['TumblingWindowExpr553'/1]).
-export(['TumblingWindowExpr554'/1]).
-export(['TumblingWindowExpr555'/1]).
-export(['TumblingWindowExpr556'/1]).
-export(['SlidingWindowExpr556'/1]).
-export(['TumblingWindowExpr557'/1]).
-export(['SlidingWindowExpr557'/1]).
-export(['TumblingWindowExpr558'/1]).
-export(['SlidingWindowExpr558'/1]).
-export(['TumblingWindowExpr559'/1]).
-export(['SlidingWindowExpr559'/1]).
-export(['WindowExpr500'/1]).

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
        {group, group_1},
        {group, group_2},
        {group, group_3},
        {group, group_4},
        {group, group_5}
    ].

groups() ->
    [
        {group_0, [parallel], [
            'SlidingWindowExpr501',
            'SlidingWindowExpr502',
            'SlidingWindowExpr503',
            'TumblingWindowExpr503',
            'WindowingUseCase01',
            'WindowingUseCase01S',
            'WindowingUseCase02',
            'WindowingUseCase02S',
            'WindowingUseCase03',
            'WindowingUseCase03S',
            'WindowingUseCase04',
            'WindowingUseCase04S',
            'WindowingUseCase05',
            'WindowingUseCase05S',
            'WindowingUseCase06',
            'WindowingUseCase06S',
            'WindowingUseCase07',
            'WindowingUseCase07S',
            'WindowingUseCase08',
            'WindowingUseCase08S',
            'WindowingUseCase09',
            'WindowingUseCase09S',
            'WindowingUseCase10'
        ]},
        {group_1, [parallel], [
            'WindowingUseCase10S',
            'WindowingUseCase11',
            'WindowingUseCase11S',
            'WindowingUseCase12',
            'WindowingUseCase12S',
            'WindowingUseCase13',
            'WindowingUseCase13S',
            'WindowingUseCase14',
            'WindowingUseCase14S',
            'WindowingUseCase15',
            'WindowingUseCase15S',
            'WindowingUseCase16',
            'WindowingUseCase16S',
            'WindowingUseCase17',
            'WindowingUseCase17S',
            'WindowingUseCase18',
            'WindowingUseCase18S',
            'WindowingUseCase19',
            'WindowingUseCase19S',
            'TumblingWindowExpr504',
            'SlidingWindowExpr504',
            'SlidingWindowExpr505',
            'TumblingWindowExpr505',
            'SlidingWindowExpr506'
        ]},
        {group_2, [parallel], [
            'SlidingWindowExpr507',
            'TumblingWindowExpr507',
            'SlidingWindowExpr508',
            'TumblingWindowExpr508',
            'SlidingWindowExpr509',
            'TumblingWindowExpr509',
            'TumblingWindowExpr510',
            'SlidingWindowExpr510',
            'TumblingWindowExpr511',
            'SlidingWindowExpr511',
            'TumblingWindowExpr512',
            'SlidingWindowExpr512',
            'TumblingWindowExpr513',
            'SlidingWindowExpr513',
            'TumblingWindowExpr514',
            'SlidingWindowExpr514',
            'TumblingWindowExpr515',
            'SlidingWindowExpr515',
            'TumblingWindowExpr516',
            'TumblingWindowExpr517',
            'SlidingWindowExpr517',
            'TumblingWindowExpr518',
            'TumblingWindowExpr518a',
            'SlidingWindowExpr518'
        ]},
        {group_3, [parallel], [
            'TumblingWindowExpr519',
            'SlidingWindowExpr519',
            'TumblingWindowExpr520',
            'TumblingWindowExpr521',
            'TumblingWindowExpr522',
            'TumblingWindowExpr523',
            'TumblingWindowExpr524',
            'TumblingWindowExpr525',
            'TumblingWindowExpr526',
            'TumblingWindowExpr527',
            'TumblingWindowExpr528',
            'TumblingWindowExpr529',
            'SlidingWindowExpr529',
            'TumblingWindowExpr530',
            'TumblingWindowExpr531',
            'TumblingWindowExpr531a',
            'TumblingWindowExpr532',
            'TumblingWindowExpr533',
            'TumblingWindowExpr534',
            'SlidingWindowExpr534',
            'TumblingWindowExpr535a',
            'TumblingWindowExpr535b',
            'TumblingWindowExpr536',
            'TumblingWindowExpr537'
        ]},
        {group_4, [parallel], [
            'TumblingWindowExpr538',
            'SlidingWindowExpr538',
            'TumblingWindowExpr539',
            'SlidingWindowExpr539',
            'TumblingWindowExpr540',
            'SlidingWindowExpr540',
            'TumblingWindowExpr541',
            'TumblingWindowExpr542',
            'TumblingWindowExpr544',
            'SlidingWindowExpr544',
            'TumblingWindowExpr545',
            'TumblingWindowExpr546',
            'TumblingWindowExpr547',
            'TumblingWindowExpr549',
            'TumblingWindowExpr550',
            'SlidingWindowExpr550',
            'TumblingWindowExpr551',
            'TumblingWindowExpr552',
            'TumblingWindowExpr553',
            'TumblingWindowExpr554',
            'TumblingWindowExpr555',
            'TumblingWindowExpr556',
            'SlidingWindowExpr556',
            'TumblingWindowExpr557'
        ]},
        {group_5, [parallel], [
            'SlidingWindowExpr557',
            'TumblingWindowExpr558',
            'SlidingWindowExpr558',
            'TumblingWindowExpr559',
            'SlidingWindowExpr559',
            'WindowExpr500'
        ]}
    ].

environment('WindowingUseCases01', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "WindowClause/arrange_rows.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ];
environment('WindowingUseCases01S', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "WindowClause/arrange_rows.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, [{filename:join(__BaseDir, "WindowClause/arrange_rows.xsd"), ""}]},
        {resources, []},
        {modules, []}
    ];
environment('WindowingUseCases02', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "WindowClause/head_para.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ];
environment('WindowingUseCases02S', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "WindowClause/head_para.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, [{filename:join(__BaseDir, "WindowClause/head_para.xsd"), ""}]},
        {resources, []},
        {modules, []}
    ];
environment('WindowingUseCases03', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "WindowClause/term_def_list.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ];
environment('WindowingUseCases03S', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "WindowClause/term_def_list.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, [{filename:join(__BaseDir, "WindowClause/term_def_list.xsd"), ""}]},
        {resources, []},
        {modules, []}
    ];
environment('WindowingUseCases04', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "WindowClause/temp_events.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ];
environment('WindowingUseCases04S', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "WindowClause/temp_events.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, [{filename:join(__BaseDir, "WindowClause/temp_events.xsd"), ""}]},
        {resources, []},
        {modules, []}
    ];
environment('WindowingUseCases05', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "WindowClause/person_events.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ];
environment('WindowingUseCases05S', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "WindowClause/person_events.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, [{filename:join(__BaseDir, "WindowClause/person_events.xsd"), ""}]},
        {resources, []},
        {modules, []}
    ];
environment('WindowingUseCases06', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "WindowClause/rss.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ];
environment('WindowingUseCases06S', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "WindowClause/rss.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, [{filename:join(__BaseDir, "WindowClause/rss.xsd"), ""}]},
        {resources, []},
        {modules, []}
    ];
environment('WindowingUseCases07', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "WindowClause/cxml.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ];
environment('WindowingUseCases07S', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "WindowClause/cxml.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, [{filename:join(__BaseDir, "WindowClause/cxml.xsd"), ""}]},
        {resources, []},
        {modules, []}
    ].

'SlidingWindowExpr501'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "for sliding window $w in (1, 2, 3, 4) \n"
        "      start at $s when fn:true()\n"
        "      end at $e when $e - $s eq 1\n"
        "      return $w",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "SlidingWindowExpr501.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "(1, 2, 2, 3, 3, 4, 4)") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'SlidingWindowExpr502'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "for sliding window $w in (1, 2, 3, 4) \n"
        "      start at $s when fn:true()\n"
        "      only end at $e when $e - $s eq 1\n"
        "      return $w",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "SlidingWindowExpr502.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "(1, 2, 2, 3, 3, 4)") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'SlidingWindowExpr503'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "for sliding window $w in (1, 2, 3, 4) \n"
        "      start $s at $s previous $s when fn:true()\n"
        "      only end $s at $s previous $s when $s - $s eq 1\n"
        "      return $w",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "SlidingWindowExpr503.xq"),
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
                    case xqerl_test:assert_error(Res, "XQST0089") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XQST0089 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XQST0103") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XQST0103 " ++ binary_to_list(F)};
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

'TumblingWindowExpr503'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "for tumbling window $w in (1, 2, 3, 4) \n"
        "      start $s at $s previous $s when fn:true()\n"
        "      only end $s at $s previous $s when $s - $s eq 1\n"
        "      return $w",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "TumblingWindowExpr503.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0103") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0103 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'WindowingUseCase01'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "<table>{\n"
        "  for tumbling window $w in ./doc/*\n"
        "    start at $x when fn:true()\n"
        "    end at $y when $y - $x = 2\n"
        "  return\n"
        "    <tr>{\n"
        "      for $i in $w\n"
        "      return\n"
        "        <td>{data($i)}</td>\n"
        "    }</tr>\n"
        "}</table>\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('WindowingUseCases01', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "WindowingUseCase01.xq"),
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
                "<table><tr><td>Green</td><td>Pink</td><td>Lilac</td></tr><tr><td>Turquoise</td><td>Peach</td><td>Opal</td></tr><tr><td>Champagne</td></tr></table>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'WindowingUseCase01S'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'WindowingUseCase02'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "<chapter>{\n"
        "  for tumbling window $w in ./body/*\n"
        "    start previous $s when $s[self::h2]\n"
        "    end next $e when $e[self::h2]\n"
        "  return\n"
        "    <section title=\"{data($s)}\">{\n"
        "       for $x in $w\n"
        "       return\n"
        "         <para>{data($x)}</para>\n"
        "  }</section>\n"
        "}</chapter>\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('WindowingUseCases02', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "WindowingUseCase02.xq"),
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
                "<chapter><section title=\"heading1\"><para>para1</para><para>para2</para></section><section title=\"heading2\"><para>para3</para><para>para4</para><para>para5</para></section></chapter>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'WindowingUseCase02S'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'WindowingUseCase03'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "<doc>{\n"
        "for tumbling window $w in ./doc/*\n"
        "  start $x when $x[self::dt]\n"
        "  end $y next $z when $y[self::dd] and $z[self::dt]\n"
        "return\n"
        "  <term>{\n"
        "    $w\n"
        "  }</term>\n"
        "}</doc>\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('WindowingUseCases03', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "WindowingUseCase03.xq"),
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
                "<doc><term><dt>XML</dt><dd>Extensible Markup Language</dd></term><term><dt>XSLT</dt><dt>XSL Transformations</dt><dd>A language for transforming XML</dd><dd>A specification produced by W3C</dd></term></doc>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'WindowingUseCase03S'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'WindowingUseCase04'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "let $MAX_DIFF := 2\n"
        "\n"
        "for sliding window $w in ./stream/event\n"
        "  start  $s_curr at $s_pos previous $s_prev\n"
        "    when ($s_curr/@time ne $s_prev/@time) or (empty($s_prev))\n"
        "  only end next $e_next\n"
        "    when $e_next/@time - $s_curr/@time gt $MAX_DIFF\n"
        "return\n"
        "  avg( $w/@temp )\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('WindowingUseCases04', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "WindowingUseCase04.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "8, 9, 17, 18") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'WindowingUseCase04S'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'WindowingUseCase05'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "let $SMOOTH_CONST := 0.2\n"
        "\n"
        "for sliding window $w in ./stream/event\n"
        "  start at $s_pos when true()\n"
        "  only end at $e_pos when $e_pos - $s_pos eq 2\n"
        "return\n"
        "  round-half-to-even($SMOOTH_CONST * data($w[3]/@temp) + (1 - $SMOOTH_CONST) *\n"
        "    ( $SMOOTH_CONST * data($w[2]/@temp) +\n"
        "      (1 - $SMOOTH_CONST) * data($w[1]/@temp) ), 2)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('WindowingUseCases04', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "WindowingUseCase05.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "8.88, 8.68, 12.32, 15.24, 23.92") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'WindowingUseCase05S'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'WindowingUseCase06'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "for sliding window $w in ./stream/event\n"
        "  start  $s_curr when fn:true()\n"
        "  only end next $next when $next/@time > $s_curr/@time + 3\n"
        "return\n"
        "  let $avg := fn:avg($w/@temp)\n"
        "  where $avg * 2 lt xs:double($next/@temp) or $avg div 2 gt xs:double($next/@temp)\n"
        "  return <alarm>Outlier detected. Event id:{data($next/@time)}</alarm>\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('WindowingUseCases04', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "WindowingUseCase06.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<alarm>Outlier detected. Event id:5</alarm>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'WindowingUseCase06S'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'WindowingUseCase07'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "<result>{\n"
        "  for tumbling window $w in ./stream/event\n"
        "    start  $s when $s/person eq \"Anton\" and $s/direction eq \"in\"\n"
        "    only end $e next $n when  xs:dateTime($n/@time) - xs:dateTime($s/@time) gt\n"
        "      xs:dayTimeDuration(\"PT1H\")\n"
        "      or  ($e/person eq \"Barbara\" and $e/direction eq \"in\")\n"
        "      or ($e/person eq \"Anton\" and $e/direction eq \"out\")\n"
        "  where $e/person eq \"Barbara\" and $e/direction eq \"in\"\n"
        "  return\n"
        "    <warning time=\"{ $e/@time }\">Barbara: Anton arrived 1h ago</warning>\n"
        "}</result>\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('WindowingUseCases05', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "WindowingUseCase07.xq"),
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
                "<result><warning time=\"2006-01-01T11:00:00-00:00\">Barbara: Anton arrived 1h ago</warning></result>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'WindowingUseCase07S'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'WindowingUseCase08'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "<result>{\n"
        "for sliding window $w in ./stream/event\n"
        "  start  $s when $s/direction eq \"in\"\n"
        "  only end  $e when $s/person eq $e/person and\n"
        "    $e/direction eq \"out\"\n"
        "return\n"
        "  <working-time>\n"
        "      {$s/person}\n"
        "      <time>{ xs:dateTime($e/@time) - xs:dateTime($s/@time)}</time>\n"
        "  </working-time>\n"
        "}</result>\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('WindowingUseCases05', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "WindowingUseCase08.xq"),
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
                "<result><working-time><person>Anton</person><time>PT4H30M</time></working-time><working-time><person>Barbara</person><time>PT3H</time></working-time><working-time><person>Clara</person><time>PT1H</time></working-time><working-time><person>Anton</person><time>PT5H</time></working-time><working-time><person>Clara</person><time>PT10M</time></working-time><working-time><person>Clara</person><time>PT5M</time></working-time><working-time><person>Clara</person><time>PT15M</time></working-time><working-time><person>Clara</person><time>PT2H15M</time></working-time></result>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'WindowingUseCase08S'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'WindowingUseCase09'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "<result>{\n"
        "for sliding window $w in ./stream/event\n"
        "  start  $s when $s/direction eq \"in\"\n"
        "  only end  $e when $s/person eq $e/person and\n"
        "    $e/direction eq \"out\"\n"
        "let $person := $s/person\n"
        "let $workingTime := xs:dateTime($e/@time) - xs:dateTime($s/@time)\n"
        "group by $person\n"
        "order by $person\n"
        "return\n"
        "  <working-time>\n"
        "    <person>{ $person }</person>\n"
        "    <time>{ sum($workingTime) }</time>\n"
        "  </working-time>\n"
        "}</result>\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('WindowingUseCases05', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "WindowingUseCase09.xq"),
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
                "<result><working-time><person>Anton</person><time>PT9H30M</time></working-time><working-time><person>Barbara</person><time>PT3H</time></working-time><working-time><person>Clara</person><time>PT3H45M</time></working-time></result>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'WindowingUseCase09S'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'WindowingUseCase10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "<result>{\n"
        "  for tumbling window $w in ./stream/event[direction eq \"in\"]\n"
        "    start  $s when fn:true()\n"
        "    end next $e when xs:date( xs:dateTime($s/@time) ) ne xs:date( xs:dateTime($e/@time) )\n"
        "  let $date := xs:date(xs:dateTime($s/@time))\n"
        "  where not($w[person eq \"Barbara\"])\n"
        "  return <alert date=\"{ $date }\">Barbara did not come to work</alert>\n"
        "}</result>\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('WindowingUseCases05', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "WindowingUseCase10.xq"),
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
                "<result><alert date=\"2006-01-02Z\">Barbara did not come to work</alert></result>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'WindowingUseCase10S'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'WindowingUseCase11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "<results>{\n"
        "  for tumbling window $w in ./stream/event[direction eq \"in\"]\n"
        "    start when true()\n"
        "    only end next $x when  $x/person eq \"Clara\"\n"
        "  return\n"
        "    <result time=\"{ $x/@time }\">{\n"
        "      distinct-values(for $y in $w\n"
        "        where (xs:dateTime($y/@time) + xs:dayTimeDuration(\"PT15M\") ) ge xs:dateTime($x/@time)\n"
        "        return $y/person)\n"
        "    }</result>\n"
        "}</results>\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('WindowingUseCases05', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "WindowingUseCase11.xq"),
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
                "<results><result time=\"2006-01-01T11:15:00-00:00\">Barbara</result><result time=\"2006-01-02T12:00:00-00:00\"/><result time=\"2006-01-02T12:15:00-00:00\">Clara</result><result time=\"2006-01-02T12:25:00-00:00\">Clara</result><result time=\"2006-01-02T14:00:00-00:00\"/></results>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'WindowingUseCase11S'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'WindowingUseCase12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "<result>{\n"
        "        for tumbling window $w in ./stream/event[direction eq \"in\"]\n"
        "                start  $x when $x/person = (\"Barbara\", \"Anton\")\n"
        "                end next $y when xs:dateTime($y/@time) - xs:dateTime($x/@time) gt xs:dayTimeDuration(\"PT30M\")\n"
        "        where $w[person eq \"Anton\"] and $w[person eq \"Barbara\"]\n"
        "        return\n"
        "                <alert time=\"{ xs:dateTime($y/@time) }\">Anton and Barbara just arrived</alert>\n"
        "}</result>\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('WindowingUseCases05', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "WindowingUseCase12.xq"),
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
                "<result><alert time=\"2006-01-01T11:15:00Z\">Anton and Barbara just arrived</alert></result>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'WindowingUseCase12S'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'WindowingUseCase13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "<result>{\n"
        "  for sliding window $w in ./stream/event\n"
        "    start  $s when true()\n"
        "    end next $e when xs:dateTime($e/@time) - xs:dateTime($s/@time) gt\n"
        "      xs:dayTimeDuration(\"PT1H\")\n"
        "  where count($w[person eq $s/person and direction eq \"in\"]) ge 3\n"
        "  return\n"
        "    <alert time=\"{ $e/@time }\">{fn:data($s/person)} is suspicious</alert>\n"
        "}</result>\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('WindowingUseCases05', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "WindowingUseCase13.xq"),
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
                "<result><alert time=\"2006-01-02T14:00:00-00:00\">Clara is suspicious</alert></result>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'WindowingUseCase13S'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'WindowingUseCase14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "<result>{\n"
        "  for tumbling window $w in ./rss/channel/item\n"
        "    start  $first when fn:true()\n"
        "    end next $lookAhead when $first/author ne $lookAhead/author\n"
        "  where count($w) ge 3\n"
        "  return <annoying-author>{\n"
        "      $w[1]/author\n"
        "    }</annoying-author>\n"
        "}</result>\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('WindowingUseCases06', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "WindowingUseCase14.xq"),
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
                "<result><annoying-author><author>rokas@e-mail.de</author></annoying-author></result>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'WindowingUseCase14S'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'WindowingUseCase15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "<result>{\n"
        "  for tumbling window $w in ./rss/channel/item\n"
        "    start  $s_curr when true()\n"
        "    end next $e_next when\n"
        "      fn:day-from-dateTime(xs:dateTime($e_next/pubDate)) ne\n"
        "      fn:day-from-dateTime(xs:dateTime($s_curr/pubDate))\n"
        "  return\n"
        "    <item>\n"
        "        <date>{xs:date(xs:dateTime($s_curr/pubDate))}</date>\n"
        "        {  for $item in $w\n"
        "                   where fn:contains( xs:string($item/title), 'XQuery')\n"
        "                   return $item/title   }\n"
        "      </item>\n"
        "}</result>\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('WindowingUseCases06', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "WindowingUseCase15.xq"),
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
                "<result><item><date>2003-06-03</date><title>Extending XQuery with Window Functions</title><title>XQueryP: A new programming language is born</title></item><item><date>2003-06-04</date></item></result>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'WindowingUseCase15S'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'WindowingUseCase16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "<result>{\n"
        "  for tumbling window $w in ./rss/channel/item\n"
        "    start  $s_curr when true()\n"
        "    end next $e_next when\n"
        "      fn:day-from-dateTime(xs:dateTime($e_next/pubDate)) ne\n"
        "      fn:day-from-dateTime(xs:dateTime($s_curr/pubDate))\n"
        "  return\n"
        "    <item>\n"
        "      <date>{xs:date(xs:dateTime($s_curr/pubDate))}</date>\n"
        "       {  for $a in fn:distinct-values($w/author)\n"
        "           return\n"
        "             <author name=\"{$a}\">\n"
        "               <titles>\n"
        "                 { $w[author eq $a]/title }\n"
        "               </titles>\n"
        "             </author>\n"
        "            }\n"
        "          </item>\n"
        "}</result>\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('WindowingUseCases06', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "WindowingUseCase16.xq"),
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
                "<result><item><date>2003-06-03</date><author name=\"rokas@e-mail.de\"><titles><title>Why use cases are important Part 1.</title><title>Why use cases are important Part 2.</title><title>Why use cases are important Part 3.</title></titles></author><author name=\"tim@e-mail.de\"><titles><title>Extending XQuery with Window Functions</title></titles></author><author name=\"david@e-mail.de\"><titles><title>XQueryP: A new programming language is born</title></titles></author></item><item><date>2003-06-04</date><author name=\"rokas@e-mail.de\"><titles><title>Why use cases are annoying to write.</title></titles></author></item></result>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'WindowingUseCase16S'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'WindowingUseCase17'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "<result>{\n"
        "for sliding window $w in ./sequence/*\n"
        "  start  $cur previous $prev\n"
        "   when day-from-dateTime($cur/@date) ne day-from-dateTime($prev/@date) or empty($prev)\n"
        "  end $end next $next\n"
        "   when day-from-dateTime(xs:dateTime($end/@date)) ne\n"
        "day-from-dateTime(xs:dateTime($next/@date))\n"
        "return\n"
        "  <mostValuableCustomer endOfDay=\"{xs:dateTime($cur/@date)}\">{\n"
        "    let $companies :=   for $x in distinct-values($w/@billTo )\n"
        "                        return <amount company=\"{$x}\">{sum($w[@billTo eq $x]/@total)}</amount>\n"
        "    let $max := max($companies)\n"
        "    for $company in $companies\n"
        "    where $company eq xs:untypedAtomic($max)\n"
        "    return $company\n"
        "  }</mostValuableCustomer>\n"
        "}</result>\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('WindowingUseCases07', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "WindowingUseCase17.xq"),
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
                "<result><mostValuableCustomer endOfDay=\"2006-01-01T00:00:00Z\"><amount company=\"ACME1\">1100</amount></mostValuableCustomer><mostValuableCustomer endOfDay=\"2006-01-02T00:00:00Z\"><amount company=\"ACME1\">10000</amount></mostValuableCustomer><mostValuableCustomer endOfDay=\"2006-01-03T00:00:00Z\"/><mostValuableCustomer endOfDay=\"2006-01-04T00:00:00Z\"/><mostValuableCustomer endOfDay=\"2006-01-05T00:00:00Z\"/><mostValuableCustomer endOfDay=\"2006-01-06T00:00:00Z\"><amount company=\"ACME2\">100</amount></mostValuableCustomer><mostValuableCustomer endOfDay=\"2006-01-07T00:00:00Z\"/></result>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'WindowingUseCase17S'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'WindowingUseCase18'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "<result>{\n"
        "  for sliding window $w in ./sequence/*\n"
        "    start $s when $s[self::OrderRequest]\n"
        "    end   $e when $e/@orderID eq  $s/@orderID\n"
        "             and ($e[self::ConfirmationRequest] and $e/@status eq \"reject\"\n"
        "                  or $e[self::ShipNotice])\n"
        "  where $e[self::ShipNotice]\n"
        "  return\n"
        "    <timeToShip orderID=\"{ $s/@orderID}\">{xs:dateTime($e/@date) - xs:dateTime($s/@date) }</timeToShip>\n"
        "}</result>\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('WindowingUseCases07', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "WindowingUseCase18.xq"),
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
                "<result><timeToShip orderID=\"OID01\">P3DT22H</timeToShip><timeToShip orderID=\"OID03\">P2DT19H</timeToShip></result>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'WindowingUseCase18S'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'WindowingUseCase19'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "<result>{\n"
        "  for sliding window $w in ./sequence/*\n"
        "    start previous $wSPrev when $wSPrev[self::OrderRequest]\n"
        "    end next $wENext when $wENext/@orderID eq  $wSPrev/@orderID\n"
        "        and ($wENext[self::ConfirmationRequest] and $wENext/@status eq \"reject\"\n"
        "                 or $wENext[self::ShipNotice])\n"
        "  where $wENext[self::ShipNotice]\n"
        "  return\n"
        "    <bundleWith orderId=\"{$wSPrev/@orderID}\">{\n"
        "        for sliding window $bundle in $w\n"
        "          start  $bSCur\n"
        "            when $bSCur[self::OrderRequest] and $bSCur/@shipTo eq $wSPrev/@shipTo\n"
        "          end  $bECur next $bENext\n"
        "            when $bECur/@orderID eq  $bSCur/@orderID\n"
        "             and ($bECur[self::ConfirmationRequest] and $bECur/@status eq \"reject\"\n"
        "              or $bECur[self::ShipNotice])\n"
        "          where empty($bENext)\n"
        "          return $bSCur\n"
        "    }</bundleWith>\n"
        "}</result>\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('WindowingUseCases07', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "WindowingUseCase19.xq"),
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
                "<result><bundleWith orderId=\"OID01\"><OrderRequest billTo=\"ACME1\" date=\"2006-01-02T14:00:00-00:00\" orderID=\"OID03\" shipTo=\"ACME1\" total=\"10000\" type=\"new\">\n"
                "    <Item partID=\"ID3\" quantity=\"100\" unitPrice=\"100\"/>\n"
                "  </OrderRequest></bundleWith><bundleWith orderId=\"OID03\"/></result>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'WindowingUseCase19S'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'TumblingWindowExpr504'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "for tumbling window $w in (1, 2, 3, 4) \n"
        "      start $s at $ps previous $pps when fn:true()\n"
        "      only end $s at $ps previous $pps when $ps - $ps eq 1\n"
        "      return $w",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "TumblingWindowExpr504.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0103") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0103 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'SlidingWindowExpr504'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "for sliding window $w in (1, 2, 3, 4) \n"
        "      start $s at $ps previous $pps when fn:true()\n"
        "      only end $s at $ps previous $pps when $ps - $ps eq 1\n"
        "      return $w",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "SlidingWindowExpr504.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0103") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0103 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'SlidingWindowExpr505'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "for sliding window $w in (1, 2, 3, 4) \n"
        "      start at $s when fn:true()\n"
        "      end at $e  when $s - $e eq 1\n"
        "      return $s",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "SlidingWindowExpr505.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert(Res, "$result[1] instance of xs:integer") of
            true -> {comment, "Correct results"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'TumblingWindowExpr505'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "for tumbling window $w in (1, 2, 3, 4) \n"
        "      start at $s when fn:true()\n"
        "      end at $e  when $s - $e eq 1\n"
        "      return $s",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "TumblingWindowExpr505.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert(Res, "$result[1] instance of xs:integer") of
            true -> {comment, "Correct results"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'SlidingWindowExpr506'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for sliding window $w in (1, 2, 3, 4, 14, 13, 12, 11) \n"
        "          start $s when fn:true()\n"
        "          only end $e when $e eq $s + 10\n"
        "          return string-join($w!string(), ' ')\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "SlidingWindowExpr506.xq"),
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
            xqerl_test:assert_deep_eq(
                Res,
                "\"1 2 3 4 14 13 12 11\", \"2 3 4 14 13 12\", \"3 4 14 13\", \"4 14\""
            )
        of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'SlidingWindowExpr507'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for sliding window $w as xs:integer+ in (1, 2, \"london\", 3, 4, \"paris\")\n"
        "          start $start when $start instance of xs:integer\n"
        "          only end next $beyond when $beyond instance of xs:string\n"
        "          return string-join($w!string(), ' ')\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "SlidingWindowExpr507.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"1 2\", \"2\", \"3 4\", \"4\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'TumblingWindowExpr507'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for tumbling window $w as xs:integer+ in (1, 2, \"london\", 3, 4, \"paris\")\n"
        "          start $start when $start instance of xs:integer\n"
        "          only end next $beyond when $beyond instance of xs:string\n"
        "          return string-join($w!string(), ' ')\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "TumblingWindowExpr507.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"1 2\", \"3 4\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'SlidingWindowExpr508'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for sliding window $w as xs:integer+ in (1, 2, \"london\", 3, 4.1, \"paris\")\n"
        "          start $start when $start instance of xs:integer\n"
        "          only end next $beyond when $beyond instance of xs:string\n"
        "          return string-join($w!string(), ' ')\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "SlidingWindowExpr508.xq"),
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

'TumblingWindowExpr508'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for tumbling window $w as xs:integer+ in (1, 2, \"london\", 3, 4.1, \"paris\")\n"
        "          start $start when $start instance of xs:integer\n"
        "          only end next $beyond when $beyond instance of xs:string\n"
        "          return string-join($w!string(), ' ')\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "TumblingWindowExpr508.xq"),
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

'SlidingWindowExpr509'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "            avg(\n"
        "              for sliding window $w in (1, 2, \"london\", 3, 4, \"paris\")\n"
        "              start $start when $start instance of xs:integer\n"
        "              only end next $beyond when $beyond instance of xs:string\n"
        "              return count($w)\n"
        "            )\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "SlidingWindowExpr509.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1.5") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'TumblingWindowExpr509'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          avg(\n"
        "              for tumbling window $w in (1, 2, \"london\", 3, 4, \"paris\")\n"
        "              start $start when $start instance of xs:integer\n"
        "              only end next $beyond when $beyond instance of xs:string\n"
        "              return count($w)\n"
        "            )\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "TumblingWindowExpr509.xq"),
                Qry1
            ),
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

'TumblingWindowExpr510'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for tumbling window $w in (1 to 10)\n"
        "          start $s when true()\n"
        "          end $e when true()\n"
        "          return <window>{$w}</window>\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "TumblingWindowExpr510.xq"),
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
            xqerl_test:assert_xml(
                Res,
                "<window>1</window><window>2</window><window>3</window><window>4</window><window>5</window><window>6</window><window>7</window><window>8</window><window>9</window><window>10</window>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'SlidingWindowExpr510'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for sliding window $w in (1 to 10)\n"
        "          start $s when true()\n"
        "          end $e when true()\n"
        "          return <window>{$w}</window>\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "SlidingWindowExpr510.xq"),
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
            xqerl_test:assert_xml(
                Res,
                "<window>1</window><window>2</window><window>3</window><window>4</window><window>5</window><window>6</window><window>7</window><window>8</window><window>9</window><window>10</window>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'TumblingWindowExpr511'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for tumbling window $w in (1 to 10)\n"
        "          start $s when true()\n"
        "          end $e when $e - $s eq 2\n"
        "          return <window>{$w}</window>\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "TumblingWindowExpr511.xq"),
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
            xqerl_test:assert_xml(
                Res,
                "<window>1 2 3</window><window>4 5 6</window><window>7 8 9</window><window>10</window>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'SlidingWindowExpr511'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for sliding window $w in (1 to 10)\n"
        "          start $s when true()\n"
        "          end $e when $e - $s eq 2\n"
        "          return <window>{$w}</window>\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "SlidingWindowExpr511.xq"),
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
            xqerl_test:assert_xml(
                Res,
                "<window>1 2 3</window><window>2 3 4</window><window>3 4 5</window><window>4 5 6</window><window>5 6 7</window><window>6 7 8</window><window>7 8 9</window><window>8 9 10</window><window>9 10</window><window>10</window>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'TumblingWindowExpr512'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for tumbling window $w in (1 to 10)\n"
        "          start $s at $x when true()\n"
        "          end $e at $y when $y - $x eq 2\n"
        "          return <window>{$w}</window>\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "TumblingWindowExpr512.xq"),
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
            xqerl_test:assert_xml(
                Res,
                "<window>1 2 3</window><window>4 5 6</window><window>7 8 9</window><window>10</window>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'SlidingWindowExpr512'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for sliding window $w in (1 to 10)\n"
        "          start $s at $x when true()\n"
        "          end $e at $y when $y - $x eq 2\n"
        "          return <window>{$w}</window>\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "SlidingWindowExpr512.xq"),
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
            xqerl_test:assert_xml(
                Res,
                "<window>1 2 3</window><window>2 3 4</window><window>3 4 5</window><window>4 5 6</window><window>5 6 7</window><window>6 7 8</window><window>7 8 9</window><window>8 9 10</window><window>9 10</window><window>10</window>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'TumblingWindowExpr513'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for tumbling window $w in (1 to 10)\n"
        "          start $s at $x when true()\n"
        "          only end $e at $y when $y - $x eq 2\n"
        "          return <window>{$w}</window>\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "TumblingWindowExpr513.xq"),
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
            xqerl_test:assert_xml(
                Res,
                "<window>1 2 3</window><window>4 5 6</window><window>7 8 9</window>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'SlidingWindowExpr513'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for sliding window $w in (1 to 10)\n"
        "          start $s at $x when true()\n"
        "          only end $e at $y when $y - $x eq 2\n"
        "          return <window>{$w}</window>\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "SlidingWindowExpr513.xq"),
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
            xqerl_test:assert_xml(
                Res,
                "<window>1 2 3</window><window>2 3 4</window><window>3 4 5</window><window>4 5 6</window><window>5 6 7</window><window>6 7 8</window><window>7 8 9</window><window>8 9 10</window>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'TumblingWindowExpr514'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for tumbling window $w in (1 to 10)\n"
        "          start $s when true()\n"
        "          only end $e when false() \n"
        "          return <window>{$w}</window>\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "TumblingWindowExpr514.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_empty(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'SlidingWindowExpr514'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for sliding window $w in (1 to 10)\n"
        "          start $s when true()\n"
        "          only end $e when false() \n"
        "          return <window>{$w}</window>\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "SlidingWindowExpr514.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_empty(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'TumblingWindowExpr515'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for tumbling window $w in (1 to 10)\n"
        "          start $s when true()\n"
        "          end $e when false() \n"
        "          return <window>{$w}</window>\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "TumblingWindowExpr515.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<window>1 2 3 4 5 6 7 8 9 10</window>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'SlidingWindowExpr515'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for sliding window $w in (1 to 10)\n"
        "          start $s when true()\n"
        "          end $e when false() \n"
        "          return <window>{$w}</window>\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "SlidingWindowExpr515.xq"),
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
            xqerl_test:assert_xml(
                Res,
                "<window>1 2 3 4 5 6 7 8 9 10</window><window>2 3 4 5 6 7 8 9 10</window><window>3 4 5 6 7 8 9 10</window><window>4 5 6 7 8 9 10</window><window>5 6 7 8 9 10</window><window>6 7 8 9 10</window><window>7 8 9 10</window><window>8 9 10</window><window>9 10</window><window>10</window>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'TumblingWindowExpr516'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          declare namespace window = \"foo:bar\";\n"
        "          \n"
        "          for tumbling window $window:w in (1 to 10)\n"
        "          start $s when true()\n"
        "          end $e when false() \n"
        "          return <window>{$window:w}</window>\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "TumblingWindowExpr516.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<window>1 2 3 4 5 6 7 8 9 10</window>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'TumblingWindowExpr517'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          declare namespace window = \"foo:bar\";\n"
        "          \n"
        "          for tumbling window $Q{foo:bar}w in (1 to 10)\n"
        "          start $s when true()\n"
        "          end $e when false() \n"
        "          return <window>{$window:w}</window>\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "TumblingWindowExpr517.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<window>1 2 3 4 5 6 7 8 9 10</window>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'SlidingWindowExpr517'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          declare namespace window = \"foo:bar\";\n"
        "          \n"
        "          for sliding window $Q{foo:bar}w in (1 to 10)\n"
        "          start $s when true()\n"
        "          end $e when false() \n"
        "          return <window>{$window:w}</window>\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "SlidingWindowExpr517.xq"),
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
            xqerl_test:assert_xml(
                Res,
                "<window>1 2 3 4 5 6 7 8 9 10</window><window>2 3 4 5 6 7 8 9 10</window><window>3 4 5 6 7 8 9 10</window><window>4 5 6 7 8 9 10</window><window>5 6 7 8 9 10</window><window>6 7 8 9 10</window><window>7 8 9 10</window><window>8 9 10</window><window>9 10</window><window>10</window>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'TumblingWindowExpr518'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          declare namespace w = \"foo:bar\";\n"
        "          \n"
        "          for tumbling window $Q{foo:bar}w in (1 to 10)\n"
        "          start $Q{foo:bar}s at $Q{foo:bar}x previous $Q{foo:bar}sp next $Q{foo:bar}sn when true()\n"
        "          end $Q{foo:bar}e at $Q{foo:bar}y previous $Q{foo:bar}ep next $Q{foo:bar}en when false() \n"
        "          return <window>{\n"
        "            string-join (\n"
        "              for $w:w in ($w:w, $w:s, $w:x, $w:sp, $w:sn, $w:e, $w:y, $w:ep, $w:en)\n"
        "              return string($w:w), \" \"\n"
        "            )}</window>\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "TumblingWindowExpr518.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<window>1 2 3 4 5 6 7 8 9 10 1 1 2 10 10 9</window>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'TumblingWindowExpr518a'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          declare namespace w = \"foo:bar\";\n"
        "          <window>{\n"
        "          	for tumbling window $Q{foo:bar}w in (1 to 10)\n"
        "          	start $Q{foo:bar}s at $Q{foo:bar}x previous $Q{foo:bar}sp next $Q{foo:bar}sn when true()\n"
        "          	end $Q{foo:bar}e at $Q{foo:bar}y previous $Q{foo:bar}ep next $Q{foo:bar}en when false() \n"
        "          	return \n"
        "            	string-join (\n"
        "              		for $w:w in ($w:w, $w:s, $w:x, $w:sp, $w:sn, $w:e, $w:y, $w:ep, $w:en)\n"
        "              		return string($w:w), \" \"\n"
        "            )\n"
        "          }</window>\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "TumblingWindowExpr518a.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<window>1 2 3 4 5 6 7 8 9 10 1 1 2 10 10 9</window>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'SlidingWindowExpr518'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          declare namespace w = \"foo:bar\";\n"
        "          \n"
        "          for sliding window $Q{foo:bar}w in (1 to 10)\n"
        "          start $Q{foo:bar}s at $Q{foo:bar}x previous $Q{foo:bar}sp next $Q{foo:bar}sn when true()\n"
        "          end $Q{foo:bar}e at $Q{foo:bar}y previous $Q{foo:bar}ep next $Q{foo:bar}en when false() \n"
        "          return <window>{\n"
        "            string-join (\n"
        "              for $w:w in ($w:w, $w:s, $w:x, $w:sp, $w:sn, $w:e, $w:y, $w:ep, $w:en)\n"
        "              return string($w:w), \" \"\n"
        "            )}</window>\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "SlidingWindowExpr518.xq"),
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
            xqerl_test:assert_xml(
                Res,
                "<window>1 2 3 4 5 6 7 8 9 10 1 1 2 10 10 9</window><window>2 3 4 5 6 7 8 9 10 2 2 1 3 10 10 9</window><window>3 4 5 6 7 8 9 10 3 3 2 4 10 10 9</window><window>4 5 6 7 8 9 10 4 4 3 5 10 10 9</window><window>5 6 7 8 9 10 5 5 4 6 10 10 9</window><window>6 7 8 9 10 6 6 5 7 10 10 9</window><window>7 8 9 10 7 7 6 8 10 10 9</window><window>8 9 10 8 8 7 9 10 10 9</window><window>9 10 9 9 8 10 10 10 9</window><window>10 10 10 9 10 10 9</window>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'TumblingWindowExpr519'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for tumbling window $w in (1 to 10)\n"
        "          start $s when true()\n"
        "          end $e when $e - $w eq 2\n"
        "          return <window>{$w}</window>\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "TumblingWindowExpr519.xq"),
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

'SlidingWindowExpr519'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for sliding window $w in (1 to 10)\n"
        "          start $s when true()\n"
        "          end $e when $e - $w eq 2\n"
        "          return <window>{$w}</window>\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "SlidingWindowExpr519.xq"),
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

'TumblingWindowExpr520'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for tumbling window $w in (1 to 10)\n"
        "          start $w when true()\n"
        "          end $e when false() \n"
        "          return <window>{$w}</window>\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "TumblingWindowExpr520.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0103") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0103 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'TumblingWindowExpr521'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for tumbling window $w in (1 to 10)\n"
        "          start $s when true()\n"
        "          end $w when false() \n"
        "          return <window>{$w}</window>\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "TumblingWindowExpr521.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0103") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0103 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'TumblingWindowExpr522'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for tumbling window $w in (1 to 10)\n"
        "          start $s at $w when true()\n"
        "          end $e when false() \n"
        "          return <window>{$w}</window>\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "TumblingWindowExpr522.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0103") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0103 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'TumblingWindowExpr523'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for tumbling window $w in (1 to 10)\n"
        "          start $s when true()\n"
        "          end $e at $w when false() \n"
        "          return <window>{$w}</window>\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "TumblingWindowExpr523.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0103") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0103 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'TumblingWindowExpr524'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for tumbling window $w in (1 to 10)\n"
        "          start $s previous $w when true()\n"
        "          end $e when false() \n"
        "          return <window>{$w}</window>\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "TumblingWindowExpr524.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0103") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0103 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'TumblingWindowExpr525'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for tumbling window $w in (1 to 10)\n"
        "          start $s next $w when true()\n"
        "          end $e when false() \n"
        "          return <window>{$w}</window>\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "TumblingWindowExpr525.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0103") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0103 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'TumblingWindowExpr526'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for tumbling window $w in (1 to 10)\n"
        "          start $s when true()\n"
        "          end $e previous $w when false() \n"
        "          return <window>{$w}</window>\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "TumblingWindowExpr526.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0103") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0103 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'TumblingWindowExpr527'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for tumbling window $w in (1 to 10)\n"
        "          start $s when true()\n"
        "          end $e next $w when false() \n"
        "          return <window>{$w}</window>\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "TumblingWindowExpr527.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0103") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0103 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'TumblingWindowExpr528'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for tumbling window $w in (1 to 10)\n"
        "          start $s when true()\n"
        "          end $s when false() \n"
        "          return <window>{$w}</window>\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "TumblingWindowExpr528.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0103") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0103 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'TumblingWindowExpr529'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for tumbling window $w in (1 to 10)\n"
        "          start $s at $x previous $sp next $sn when true()\n"
        "          end $e at $y previous $ep next $en when false() \n"
        "          where count($w) eq 10 and $x eq 1 and empty($sp) and $sn eq 2 and $e eq 10 and $y eq 10 and $ep eq 9 and empty($en)\n"
        "          return true()\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "TumblingWindowExpr529.xq"),
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

'SlidingWindowExpr529'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for sliding window $w in (1 to 10)\n"
        "          start $s at $x previous $sp next $sn when true()\n"
        "          end $e at $y previous $ep next $en when false() \n"
        "          where count($w) eq 10 and $x eq 1 and empty($sp) and $sn eq 2 and $e eq 10 and $y eq 10 and $ep eq 9 and empty($en)\n"
        "          return true()\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "SlidingWindowExpr529.xq"),
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

'TumblingWindowExpr530'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for tumbling window $w in ()\n"
        "          start $s at $x previous $sp next $sn when true()\n"
        "          end $e at $y previous $ep next $en when false() \n"
        "          return ($w, $s, $x, $sp, $sn, $e, $y, $ep, $en)\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "TumblingWindowExpr530.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_empty(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'TumblingWindowExpr531'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for tumbling window $w in (2, 4, 6, 8, 10, 12, 14)\n"
        "          start $first when $first mod 3 = 0\n"
        "          return <window>{ $w }</window>\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "TumblingWindowExpr531.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<window>6 8 10</window><window>12 14</window>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'TumblingWindowExpr531a'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        <o>{\n"
        "          for tumbling window $w in (2, 4, 6, 8, 10, 12, 14)\n"
        "          start $first when $first mod 3 = 0\n"
        "          return <window>{ $w }</window>\n"
        "        }</o>  \n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "TumblingWindowExpr531a.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<o><window>6 8 10</window><window>12 14</window></o>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'TumblingWindowExpr532'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for $w in (1 to 2)\n"
        "          for tumbling window $w in (2, 4, 6, 8, 10, 12, 14)\n"
        "          start $first when $first mod 3 = 0\n"
        "          return <window>{ $w }</window>\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "TumblingWindowExpr532.xq"),
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
            xqerl_test:assert_xml(
                Res,
                "<window>6 8 10</window><window>12 14</window><window>6 8 10</window><window>12 14</window>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'TumblingWindowExpr533'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for $w at $y in (1 to 2)\n"
        "          for tumbling window $w in (2, 4, 6, 8, 10, 12, 14)\n"
        "          start $first when $first mod $y = 0\n"
        "          return <window>{ $y }</window>\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "TumblingWindowExpr533.xq"),
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
            xqerl_test:assert_xml(
                Res,
                "<window>1</window><window>1</window><window>1</window><window>1</window><window>1</window><window>1</window><window>1</window><window>2</window><window>2</window><window>2</window><window>2</window><window>2</window><window>2</window><window>2</window>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'TumblingWindowExpr534'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for $x1 in 11\n"
        "          for $x2 in 12\n"
        "          for $x3 in 13\n"
        "          for $x4 in 14\n"
        "          for $x5 in 15\n"
        "          for $x6 in 16\n"
        "          for $x7 in 17\n"
        "          for $x8 in 18\n"
        "          for $x9 in 19\n"
        "          for tumbling window $x1 in (1 to 10)\n"
        "          start $x2 at $x3 previous $x4 next $x5 when true()\n"
        "          end $x6 at $x7 previous $x8 next $x9 when false()\n"
        "          return \n"
        "            string-join(\n"
        "              for $i in ($x1, $x2, $x3, $x4, $x5, $x6, $x7, $x8, $x9)\n"
        "              return string($i), \" \"\n"
        "            )\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "TumblingWindowExpr534.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1 2 3 4 5 6 7 8 9 10 1 1 2 10 10 9") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'SlidingWindowExpr534'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for $x1 in 11\n"
        "          for $x2 in 12\n"
        "          for $x3 in 13\n"
        "          for $x4 in 14\n"
        "          for $x5 in 15\n"
        "          for $x6 in 16\n"
        "          for $x7 in 17\n"
        "          for $x8 in 18\n"
        "          for $x9 in 19\n"
        "          for sliding window $x1 in (1 to 10)\n"
        "          start $x2 at $x3 previous $x4 next $x5 when true()\n"
        "          end $x6 at $x7 previous $x8 next $x9 when false()\n"
        "          return \n"
        "            string-join(\n"
        "              for $i in ($x1, $x2, $x3, $x4, $x5, $x6, $x7, $x8, $x9)\n"
        "              return string($i), \" \"\n"
        "            )\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "SlidingWindowExpr534.xq"),
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
            xqerl_test:assert_string_value(
                Res,
                "1 2 3 4 5 6 7 8 9 10 1 1 2 10 10 9 2 3 4 5 6 7 8 9 10 2 2 1 3 10 10 9 3 4 5 6 7 8 9 10 3 3 2 4 10 10 9 4 5 6 7 8 9 10 4 4 3 5 10 10 9 5 6 7 8 9 10 5 5 4 6 10 10 9 6 7 8 9 10 6 6 5 7 10 10 9 7 8 9 10 7 7 6 8 10 10 9 8 9 10 8 8 7 9 10 10 9 9 10 9 9 8 10 10 10 9 10 10 10 9 10 10 9"
            )
        of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'TumblingWindowExpr535a'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for tumbling window $w in (1 to 10)\n"
        "          start $s next $sn previous $pn when true()\n"
        "          return <window>{$w}</window>\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "TumblingWindowExpr535a.xq"),
                Qry1
            ),
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

'TumblingWindowExpr535b'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for tumbling window $w in (1 to 10)\n"
        "          end $e next $en previous $en when true()\n"
        "          return <window>{$w}</window>\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "TumblingWindowExpr535b.xq"),
                Qry1
            ),
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

'TumblingWindowExpr536'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $stock :=\n"
        "            <stock>\n"
        "              <closing> <date>2008-01-01</date> <price>105</price> </closing>\n"
        "              <closing> <date>2008-01-02</date> <price>101</price> </closing>\n"
        "              <closing> <date>2008-01-03</date> <price>102</price> </closing>\n"
        "              <closing> <date>2008-01-04</date> <price>103</price> </closing>\n"
        "              <closing> <date>2008-01-05</date> <price>102</price> </closing>\n"
        "              <closing> <date>2008-01-06</date> <price>104</price> </closing>\n"
        "            </stock>\n"
        "          for tumbling window $w in $stock//closing\n"
        "             start $first next $second when $first/price < $second/price\n"
        "             end $last next $beyond when $last/price > $beyond/price\n"
        "          return\n"
        "             <run-up>\n"
        "                <start-date>{fn:data($first/date)}</start-date>\n"
        "                <start-price>{fn:data($first/price)}</start-price>\n"
        "                <end-date>{fn:data($last/date)}</end-date>\n"
        "                <end-price>{fn:data($last/price)}</end-price>\n"
        "             </run-up>\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "TumblingWindowExpr536.xq"),
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
            xqerl_test:assert_xml(
                Res,
                "<run-up><start-date>2008-01-02</start-date><start-price>101</start-price><end-date>2008-01-04</end-date><end-price>103</end-price></run-up><run-up><start-date>2008-01-05</start-date><start-price>102</start-price><end-date>2008-01-06</end-date><end-price>104</end-price></run-up>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'TumblingWindowExpr537'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for tumbling window $w in (1 to 10)\n"
        "          start $s when true()\n"
        "          end $e when $e - $s eq 2\n"
        "          count $r\n"
        "          return <window num=\"{$r}\">{$w}</window>\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "TumblingWindowExpr537.xq"),
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
            xqerl_test:assert_xml(
                Res,
                "<window num=\"1\">1 2 3</window><window num=\"2\">4 5 6</window><window num=\"3\">7 8 9</window><window num=\"4\">10</window>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'TumblingWindowExpr538'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for tumbling window $w in (1 to 10)\n"
        "          start $s when true()\n"
        "          end $e when $e - $s eq 2\n"
        "          count $r\n"
        "          where $r le 2\n"
        "          return <window num=\"{$r}\">{$w}</window>\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "TumblingWindowExpr538.xq"),
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
            xqerl_test:assert_xml(
                Res,
                "<window num=\"1\">1 2 3</window><window num=\"2\">4 5 6</window>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'SlidingWindowExpr538'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for sliding window $w in (1 to 10)\n"
        "          start $s when true()\n"
        "          end $e when $e - $s eq 2\n"
        "          count $r\n"
        "          where $r le 2\n"
        "          return <window num=\"{$r}\">{$w}</window>\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "SlidingWindowExpr538.xq"),
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
            xqerl_test:assert_xml(
                Res,
                "<window num=\"1\">1 2 3</window><window num=\"2\">2 3 4</window>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'TumblingWindowExpr539'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for $i in 1 to 3\n"
        "          count $r\n"
        "          for tumbling window $w in (1 to 10)\n"
        "          start $s when true()\n"
        "          end $e when $e - $s eq 2\n"
        "          where $w = $r + 1\n"
        "          return <window num=\"{$r}\">{$w}</window>\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "TumblingWindowExpr539.xq"),
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
            xqerl_test:assert_xml(
                Res,
                "<window num=\"1\">1 2 3</window><window num=\"2\">1 2 3</window><window num=\"3\">4 5 6</window>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'SlidingWindowExpr539'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for $i in 1 to 3\n"
        "          count $r\n"
        "          for sliding window $w in (1 to 10)\n"
        "          start $s when true()\n"
        "          end $e when $e - $s eq 2\n"
        "          where $w = $r + 1\n"
        "          return <window num=\"{$r}\">{$w}</window>\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "SlidingWindowExpr539.xq"),
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
            xqerl_test:assert_xml(
                Res,
                "<window num=\"1\">1 2 3</window><window num=\"1\">2 3 4</window><window num=\"2\">1 2 3</window><window num=\"2\">2 3 4</window><window num=\"2\">3 4 5</window><window num=\"3\">2 3 4</window><window num=\"3\">3 4 5</window><window num=\"3\">4 5 6</window>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'TumblingWindowExpr540'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for tumbling window $w in (1 to 10)\n"
        "          start $s when true()\n"
        "          only end $e when $e - $s eq 2\n"
        "          order by $w[2] descending\n"
        "          return <window>{$w}</window>\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "TumblingWindowExpr540.xq"),
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
            xqerl_test:assert_xml(
                Res,
                "<window>7 8 9</window><window>4 5 6</window><window>1 2 3</window>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'SlidingWindowExpr540'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for sliding window $w in (1 to 10)\n"
        "          start $s when true()\n"
        "          only end $e when $e - $s eq 2\n"
        "          order by $w[2] descending\n"
        "          return <window>{$w}</window>\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "SlidingWindowExpr540.xq"),
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
            xqerl_test:assert_xml(
                Res,
                "<window>8 9 10</window><window>7 8 9</window><window>6 7 8</window><window>5 6 7</window><window>4 5 6</window><window>3 4 5</window><window>2 3 4</window><window>1 2 3</window>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'TumblingWindowExpr541'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for tumbling window $w1 in\n"
        "            for tumbling window $w2 in (1 to 10)\n"
        "            start $s when true()\n"
        "            only end $e when $e - $s eq 2\n"
        "            return $w2\n"
        "          start $s when true()\n"
        "          end $e when $e - $s eq 2\n"
        "          return <window>{$w2}</window>\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "TumblingWindowExpr541.xq"),
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

'TumblingWindowExpr542'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for tumbling window $w1 in\n"
        "            for tumbling window $w2 in (1 to 10)\n"
        "            start $s when true()\n"
        "            only end $e when $e - $s eq 2\n"
        "            return $w2\n"
        "          start $s when true()\n"
        "          end $e when $e - $s eq 2\n"
        "          return <window>{$w1}</window>\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "TumblingWindowExpr542.xq"),
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
            xqerl_test:assert_xml(
                Res,
                "<window>1 2 3</window><window>4 5 6</window><window>7 8 9</window>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'TumblingWindowExpr544'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for tumbling window $w in (1 to 10)\n"
        "          start $s when true()\n"
        "          only end $e when $e - $s eq 2\n"
        "          count $r\n"
        "          return\n"
        "            <window num=\"{$r}\">{\n"
        "              for $i in $w\n"
        "              order by $i descending\n"
        "              return $i\n"
        "            }</window>\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "TumblingWindowExpr544.xq"),
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
            xqerl_test:assert_xml(
                Res,
                "<window num=\"1\">3 2 1</window><window num=\"2\">6 5 4</window><window num=\"3\">9 8 7</window>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'SlidingWindowExpr544'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for sliding window $w in (1 to 10)\n"
        "          start $s when true()\n"
        "          only end $e when $e - $s eq 2\n"
        "          count $r\n"
        "          return\n"
        "            <window num=\"{$r}\">{\n"
        "              for $i in $w\n"
        "              order by $i descending\n"
        "              return $i\n"
        "            }</window>\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "SlidingWindowExpr544.xq"),
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
            xqerl_test:assert_xml(
                Res,
                "<window num=\"1\">3 2 1</window><window num=\"2\">4 3 2</window><window num=\"3\">5 4 3</window><window num=\"4\">6 5 4</window><window num=\"5\">7 6 5</window><window num=\"6\">8 7 6</window><window num=\"7\">9 8 7</window><window num=\"8\">10 9 8</window>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'TumblingWindowExpr545'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $s := <stocks>\n"
        "            <closing> <symbol>ABC</symbol> <date>2008-01-01</date> <price>105</price> </closing>\n"
        "            <closing> <symbol>DEF</symbol> <date>2008-01-01</date> <price>057</price> </closing>\n"
        "            <closing> <symbol>ABC</symbol> <date>2008-01-02</date> <price>101</price> </closing>\n"
        "            <closing> <symbol>DEF</symbol> <date>2008-01-02</date> <price>054</price> </closing>\n"
        "            <closing> <symbol>ABC</symbol> <date>2008-01-03</date> <price>102</price> </closing>\n"
        "            <closing> <symbol>DEF</symbol> <date>2008-01-03</date> <price>056</price> </closing>\n"
        "            <closing> <symbol>ABC</symbol> <date>2008-01-04</date> <price>103</price> </closing>\n"
        "            <closing> <symbol>DEF</symbol> <date>2008-01-04</date> <price>052</price> </closing>\n"
        "            <closing> <symbol>ABC</symbol> <date>2008-01-05</date> <price>101</price> </closing>\n"
        "            <closing> <symbol>DEF</symbol> <date>2008-01-05</date> <price>055</price> </closing>\n"
        "            <closing> <symbol>ABC</symbol> <date>2008-01-06</date> <price>104</price> </closing>\n"
        "            <closing> <symbol>DEF</symbol> <date>2008-01-06</date> <price>059</price> </closing>\n"
        "          </stocks>\n"
        "          for $closings in $s//closing\n"
        "          let $symbol := $closings/symbol\n"
        "          group by $symbol\n"
        "          for tumbling window $w in $closings\n"
        "             start $first next $second when $first/price < $second/price\n"
        "             end $last next $beyond when $last/price > $beyond/price\n"
        "          return\n"
        "             <run-up symbol=\"{$symbol}\">\n"
        "                <start-date>{fn:data($first/date)}</start-date>\n"
        "                <start-price>{fn:data($first/price)}</start-price>\n"
        "                <end-date>{fn:data($last/date)}</end-date>\n"
        "                <end-price>{fn:data($last/price)}</end-price>\n"
        "             </run-up>\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "TumblingWindowExpr545.xq"),
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
                    case
                        xqerl_test:assert_xml(
                            Res,
                            "<run-up symbol=\"ABC\"><start-date>2008-01-02</start-date><start-price>101</start-price><end-date>2008-01-04</end-date><end-price>103</end-price></run-up><run-up symbol=\"ABC\"><start-date>2008-01-05</start-date><start-price>101</start-price><end-date>2008-01-06</end-date><end-price>104</end-price></run-up><run-up symbol=\"DEF\"><start-date>2008-01-02</start-date><start-price>054</start-price><end-date>2008-01-03</end-date><end-price>056</end-price></run-up><run-up symbol=\"DEF\"><start-date>2008-01-04</start-date><start-price>052</start-price><end-date>2008-01-06</end-date><end-price>059</end-price></run-up>"
                        )
                    of
                        true -> {comment, "XML Deep equal"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_xml(
                            Res,
                            "<run-up symbol=\"DEF\"><start-date>2008-01-02</start-date><start-price>054</start-price><end-date>2008-01-03</end-date><end-price>056</end-price></run-up><run-up symbol=\"DEF\"><start-date>2008-01-04</start-date><start-price>052</start-price><end-date>2008-01-06</end-date><end-price>059</end-price></run-up><run-up symbol=\"ABC\"><start-date>2008-01-02</start-date><start-price>101</start-price><end-date>2008-01-04</end-date><end-price>103</end-price></run-up><run-up symbol=\"ABC\"><start-date>2008-01-05</start-date><start-price>101</start-price><end-date>2008-01-06</end-date><end-price>104</end-price></run-up>"
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

'TumblingWindowExpr546'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          declare function local:window()\n"
        "          {\n"
        "            for tumbling window $w in (1 to 10)\n"
        "            start $s when true()\n"
        "            end $e when $e - $s eq 3\n"
        "            return <window>{$w}</window>\n"
        "          };\n"
        "          \n"
        "          local:window()\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "TumblingWindowExpr546.xq"),
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
            xqerl_test:assert_xml(
                Res,
                "<window>1 2 3 4</window><window>5 6 7 8</window><window>9 10</window>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'TumblingWindowExpr547'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for tumbling window $w in (1 to 10)\n"
        "          start $s at $x as xs:integer when true()\n"
        "          end $e when $e - $s eq 3\n"
        "          return <window>{$w}</window>\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "TumblingWindowExpr547.xq"),
                Qry1
            ),
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

'TumblingWindowExpr549'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for tumbling window $w in (1 to 10)\n"
        "          start $s next $sn as xs:integer when true()\n"
        "          end $e when $e - $s eq 3\n"
        "          return <window>{$w}</window>\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "TumblingWindowExpr549.xq"),
                Qry1
            ),
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

'TumblingWindowExpr550'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for tumbling window $w in (1 to 3)\n"
        "          start when true()\n"
        "          end when false()\n"
        "          return <window>{$w}</window>\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "TumblingWindowExpr550.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<window>1 2 3</window>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'SlidingWindowExpr550'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for sliding window $w in (1 to 3)\n"
        "          start when true()\n"
        "          end when false()\n"
        "          return <window>{$w}</window>\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "SlidingWindowExpr550.xq"),
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
            xqerl_test:assert_xml(
                Res,
                "<window>1 2 3</window><window>2 3</window><window>3</window>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'TumblingWindowExpr551'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for tumbling window $w in (1 to 10)\n"
        "          start $s when true()\n"
        "          end $e when $e - $s\n"
        "          return $w instance of xs:integer\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "TumblingWindowExpr551.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "false(), false(), false(), false(), false()") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'TumblingWindowExpr552'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          declare function local:window($seq)\n"
        "          {\n"
        "            for tumbling window $w in $seq\n"
        "            start $s when true()\n"
        "            end $e when $e - $s eq 3\n"
        "            return\n"
        "            <window>{\n"
        "              if ($w instance of xs:integer)\n"
        "              then\n"
        "                $w\n"
        "              else\n"
        "                $s\n"
        "            }</window>\n"
        "          };\n"
        "          \n"
        "          local:window(1 to 10)\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "TumblingWindowExpr552.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<window>1</window><window>5</window><window>9</window>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'TumblingWindowExpr553'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          declare variable $local:foo as xs:integer* := 1 to 10;\n"
        "          \n"
        "          declare function local:window()\n"
        "          {\n"
        "            for tumbling window $w in $local:foo\n"
        "            start $s when true()\n"
        "            end $e when $e - $s eq 3\n"
        "            return\n"
        "            <window>{\n"
        "              if ($w instance of xs:integer)\n"
        "              then\n"
        "                $w\n"
        "              else\n"
        "                $s\n"
        "            }</window>\n"
        "          };\n"
        "          \n"
        "          local:window()\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "TumblingWindowExpr553.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<window>1</window><window>5</window><window>9</window>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'TumblingWindowExpr554'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          declare variable $local:foo as xs:integer* := 1 to 5;\n"
        "          \n"
        "          declare function local:window()\n"
        "          {\n"
        "            for tumbling window $w1 in $local:foo\n"
        "            start $s when true()\n"
        "            end $e when $e - $s eq 3\n"
        "            for tumbling window $w2 in $w1\n"
        "            start $s when true()\n"
        "            end $e when true()\n"
        "            return\n"
        "            <window>{\n"
        "              fn:distinct-values($w1[.=$w2])\n"
        "            }</window>\n"
        "          };\n"
        "          \n"
        "          local:window()\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "TumblingWindowExpr554.xq"),
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
            xqerl_test:assert_xml(
                Res,
                "<window>1</window><window>2</window><window>3</window><window>4</window><window>5</window>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'TumblingWindowExpr555'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          declare variable $local:foo as xs:integer* := 1 to 10;\n"
        "          \n"
        "          declare function local:window()\n"
        "          {\n"
        "            for tumbling window $w in $local:foo\n"
        "            start $s when false()\n"
        "            end $e when false()\n"
        "            return\n"
        "              <window>{$w}</window>\n"
        "          };\n"
        "          \n"
        "          local:window()\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "TumblingWindowExpr555.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_empty(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'TumblingWindowExpr556'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for tumbling window $w as xs:integer in (1 to 10)\n"
        "          start $s when $s mod 5 = 1\n"
        "          end $e when $e = $s\n"
        "          return count($w)\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "TumblingWindowExpr556.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "1, 1") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'SlidingWindowExpr556'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for sliding window $w as xs:integer in (1 to 10)\n"
        "          start $s when $s mod 5 = 1\n"
        "          end $e when $e = $s\n"
        "          return count($w)\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "SlidingWindowExpr556.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "1, 1") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'TumblingWindowExpr557'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for tumbling window $w as xs:integer in (1 to 10)\n"
        "          start $s when true()\n"
        "          end $e when $e = $s + 1\n"
        "          return count($w)\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "TumblingWindowExpr557.xq"),
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

'SlidingWindowExpr557'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for sliding window $w as xs:integer in (1 to 10)\n"
        "          start $s when true()\n"
        "          end $e when $e = $s + 1\n"
        "          return count($w)\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "SlidingWindowExpr557.xq"),
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

'TumblingWindowExpr558'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for tumbling window $w as empty-sequence() in (1 to 10)\n"
        "          start $s when true()\n"
        "          end $e when $e = $s + 1\n"
        "          return count($w)\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "TumblingWindowExpr558.xq"),
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

'SlidingWindowExpr558'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for sliding window $w as empty-sequence() in (1 to 10)\n"
        "          start $s when true()\n"
        "          end $e when $e = $s + 1\n"
        "          return count($w)\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "SlidingWindowExpr558.xq"),
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

'TumblingWindowExpr559'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for tumbling window $w as xs:string* in (1 to 10)\n"
        "          start $s when true()\n"
        "          end $e when $e = $s + 1\n"
        "          return count($w)\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "TumblingWindowExpr559.xq"),
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

'SlidingWindowExpr559'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for sliding window $w as xs:string* in (1 to 10)\n"
        "          start $s when true()\n"
        "          end $e when $e = $s + 1\n"
        "          return count($w)\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "SlidingWindowExpr559.xq"),
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

'WindowExpr500'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for window $w in (1 to 10)\n"
        "          start $s when true()\n"
        "          end $e when false() \n"
        "          return <window>{$w}</window>\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "WindowExpr500.xq"), Qry1),
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
