-module('app_UseCaseR31_SUITE').

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

-export(['UseCaseR31-001'/1]).
-export(['UseCaseR31-002'/1]).
-export(['UseCaseR31-003'/1]).
-export(['UseCaseR31-004'/1]).
-export(['UseCaseR31-009'/1]).
-export(['UseCaseR31-012'/1]).
-export(['UseCaseR31-013'/1]).
-export(['UseCaseR31-014'/1]).
-export(['UseCaseR31-015'/1]).
-export(['UseCaseR31-016'/1]).
-export(['UseCaseR31-017'/1]).
-export(['UseCaseR31-018'/1]).
-export(['UseCaseR31-019'/1]).
-export(['UseCaseR31-022'/1]).
-export(['UseCaseR31-023'/1]).
-export(['UseCaseR31-025'/1]).
-export(['UseCaseR31-026'/1]).
-export(['UseCaseR31-027'/1]).
-export(['UseCaseR31-028'/1]).
-export(['UseCaseR31-029'/1]).
-export(['UseCaseR31-030'/1]).
-export(['UseCaseR31-031'/1]).
-export(['UseCaseR31-032'/1]).
-export(['UseCaseR31-033'/1]).
-export(['UseCaseR31-034-err'/1]).

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
    __BaseDir = filename:join(TD, "app"),
    [{base_dir, __BaseDir} | Config].

all() ->
    [
        {group, group_0},
        {group, group_1}
    ].

groups() ->
    [
        {group_0, [parallel], [
            'UseCaseR31-001',
            'UseCaseR31-002',
            'UseCaseR31-003',
            'UseCaseR31-004',
            'UseCaseR31-009',
            'UseCaseR31-012',
            'UseCaseR31-013',
            'UseCaseR31-014',
            'UseCaseR31-015',
            'UseCaseR31-016',
            'UseCaseR31-017',
            'UseCaseR31-018',
            'UseCaseR31-019',
            'UseCaseR31-022',
            'UseCaseR31-023',
            'UseCaseR31-025',
            'UseCaseR31-026',
            'UseCaseR31-027',
            'UseCaseR31-028',
            'UseCaseR31-029',
            'UseCaseR31-030',
            'UseCaseR31-031',
            'UseCaseR31-032'
        ]},
        {group_1, [parallel], [
            'UseCaseR31-033',
            'UseCaseR31-034-err'
        ]}
    ].

environment('map', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, [{"http://www.w3.org/2005/xpath-functions/map", "map"}]},
        {schemas, []},
        {resources, []},
        {modules, []}
    ];
environment('employees', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "UseCaseR31/employees.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ];
environment('json-docs', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, [
            {"text/plain", filename:join(__BaseDir, "UseCaseR31/incoming.json"),
                "http://www.w3.org/qt3/app/UseCaseR31/incoming-json"},
            {"text/plain", filename:join(__BaseDir, "UseCaseR31/users2.json"),
                "http://www.w3.org/qt3/app/UseCaseR31/users2-json"},
            {"text/plain", filename:join(__BaseDir, "UseCaseR31/colors.json"),
                "http://www.w3.org/qt3/app/UseCaseR31/colors-json"},
            {"text/plain", filename:join(__BaseDir, "UseCaseR31/table.json"),
                "http://www.w3.org/qt3/app/UseCaseR31/table-json"},
            {"text/plain", filename:join(__BaseDir, "UseCaseR31/satellites.json"),
                "http://www.w3.org/qt3/app/UseCaseR31/satellites-json"},
            {"text/plain", filename:join(__BaseDir, "UseCaseR31/bookinfo.json"),
                "http://www.w3.org/qt3/app/UseCaseR31/bookinfo-json"},
            {"text/plain", filename:join(__BaseDir, "UseCaseR31/employees.json"),
                "http://www.w3.org/qt3/app/UseCaseR31/employees-json"},
            {"text/plain", filename:join(__BaseDir, "UseCaseR31/mildred.json"),
                "http://www.w3.org/qt3/app/UseCaseR31/mildred-json"}
        ]},
        {modules, []}
    ];
environment('users-json', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, []},
        {collections, [
            {"http://www.w3.org/2010/09/qt-fots-catalog/users-json", [
                {query, __BaseDir, "unparsed-text-lines(\"UseCaseR31/users.json\") ! parse-json(.)"}
            ]}
        ]},
        {'static-base-uri', []},
        {params, []},
        {vars, [
            {"users-collection-uri", "xs:string",
                "'http://www.w3.org/2010/09/qt-fots-catalog/users-json'"}
        ]},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ];
environment('sales-json', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, []},
        {collections, [
            {"http://www.w3.org/2010/09/qt-fots-catalog/sales-json", [
                {query, __BaseDir, "unparsed-text-lines(\"UseCaseR31/sales.json\") ! parse-json(.)"}
            ]}
        ]},
        {'static-base-uri', []},
        {params, []},
        {vars, [
            {"sales-collection-uri", "xs:string",
                "'http://www.w3.org/2010/09/qt-fots-catalog/sales-json'"}
        ]},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ].

'UseCaseR31-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        for $e in /employees/employee,\n"
        "    $d in $e/department\n"
        "group by $d\n"
        "return\n"
        "   <department name=\"{$d}\">\n"
        "     {\n"
        "       let $max := max($e/salary)\n"
        "       return $e[salary=$max]\n"
        "     }\n"
        "   </department>\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('employees', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UseCaseR31-001.xq"), Qry1),
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
                    case xqerl_test:assert(Res, "$result/@name='Management'") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "count($result) = 1") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result//name = 'Charles Madigen'") of
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

'UseCaseR31-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        for $e in /employees/employee,\n"
        "    $d in $e/department\n"
        "group by $d\n"
        "return\n"
        "   map {\n"
        "     \"department\" : $d,\n"
        "     \"highest paid employee\" :\n"
        "       let $max := max($e/salary)\n"
        "       return $e[salary=$max]/name/text()}",
    {Env, Opts} = xqerl_test:handle_environment(environment('employees', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UseCaseR31-002.xq"), Qry1),
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
                    case
                        xqerl_test:assert(
                            Res,
                            "$result?(\"highest paid employee\") = \"Charles Madigen\""
                        )
                    of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result?department = \"Management\"") of
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

'UseCaseR31-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "   <out>  {\n"
        "for $employee in /employees/employee\n"
        "let $salary := $employee/salary\n"
        "group by $department := $employee/department\n"
        "let $max-salary := max($salary)\n"
        "let $highest-earners := $employee[salary = $max-salary]\n"
        "return\n"
        "   <department name=\"{$department}\">{ $highest-earners }</department>,\n"
        "\n"
        "for $employee in /employees/employee\n"
        "let $salary := $employee/salary\n"
        "group by $job-type := $employee/employeeType\n"
        "let $totals := count($employee)\n"
        "return\n"
        "    <total-by-job-type type=\"{$job-type}\">{ $totals }</total-by-job-type>\n"
        "    }</out>\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('employees', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UseCaseR31-003.xq"), Qry1),
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
                    case xqerl_test:assert(Res, "$result/department/@name='Management'") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "count($result/department) = 1") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result//name = 'Charles Madigen'") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(Res, "$result/total-by-job-type[@type='full time'] = 13")
                    of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(Res, "$result/total-by-job-type[@type='contract'] = 9")
                    of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(Res, "$result/total-by-job-type[@type='part time'] = 5")
                    of
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

'UseCaseR31-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare namespace map=\"http://www.w3.org/2005/xpath-functions/map\";\n"
        "\n"
        "        for $employee in /employees/employee\n"
        "let $salary := $employee/salary\n"
        "group by $department := $employee/department\n"
        "let $max-salary := max($salary)\n"
        "let $highest-earners := $employee[salary = $max-salary]\n"
        "return\n"
        "  map{ \"first\" : map {\n"
        "     \"department\" : $department,\n"
        "     \"highest earners\" : $highest-earners/name/text()\n"
        "   }\n"
        ", \"job type count\" : map:merge(\n"
        "for $employee in /employees/employee\n"
        "let $salary := $employee/salary\n"
        "group by $job-type := $employee/employeeType\n"
        "let $totals := count($employee)\n"
        "return map {\n"
        "      $job-type : $totals\n"
        "   }\n"
        "   )}\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('employees', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UseCaseR31-004.xq"), Qry1),
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
                    case
                        xqerl_test:assert(
                            Res,
                            "$result?first?(\"highest earners\") = \"Charles Madigen\""
                        )
                    of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result?first?department = \"Management\"") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result?(\"job type count\")?contract = 9") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(Res, "$result?(\"job type count\")?(\"part time\") = 5")
                    of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(Res, "$result?(\"job type count\")?(\"full time\") = 13")
                    of
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

'UseCaseR31-009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      declare namespace map=\"http://www.w3.org/2005/xpath-functions/map\";\n"
        "      declare variable $book:= (<book>\n"
        "<isbn>0470192747</isbn>\n"
        "<publisher>Wiley</publisher>\n"
        "<title>XSLT 2.0 and XPath 2.0 Programmer's Reference</title>\n"
        "</book>);\n"
        "\n"
        "declare variable $author := (<author>\n"
        "<name>Michael H. Kay</name>\n"
        "<isbn>0470192747</isbn>\n"
        "<isbn>...</isbn>\n"
        "</author>);\n"
        "\n"
        "      declare variable $index := map:merge($book ! map{isbn : .});\n"
        "\n"
        "<table>{\n"
        "  for $a in $author\n"
        "  return <tr>\n"
        "    <td>{ $a/name/string() }</td>\n"
        "    <td>{ string-join($a/isbn ! $index(.)/title/string(), \", \") }</td>\n"
        "  </tr>\n"
        "}</table>\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UseCaseR31-009.xq"), Qry1),
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
                    case xqerl_test:assert(Res, "$result//td[1]='Michael H. Kay'") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "$result//td[2]=\"XSLT 2.0 and XPath 2.0 Programmer's Reference\""
                        )
                    of
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

'UseCaseR31-012'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare function local:play(\n"
        "  $secret-number as xs:integer,\n"
        "  $guessed-number as xs:integer,\n"
        "  $translator as function(xs:string) as xs:string)\n"
        "{\n"
        "  switch (true())\n"
        "  case $guessed-number eq $secret-number\n"
        "    return $translator(\"You won!\")\n"
        "  case $guessed-number lt $secret-number\n"
        "    return $translator(\"The secret number is greater.\")\n"
        "  default (: $guessed-number gt $secret-number :)\n"
        "    return $translator(\"The secret number is lower.\")\n"
        "};\n"
        "\n"
        "local:play(76, 86, function($x) { $x }), (: Keep English :)\n"
        "\n"
        "local:play(76, 86, map {\n"
        "  \"You won!\" : \"Du hast gewonnen!\",\n"
        "  \"The secret number is greater.\" : \"Die geheime Zahl ist groesser.\",\n"
        "  \"The secret number is lower.\" :  \"Die geheime Zahl ist kleiner.\" }\n"
        ")\n"
        "       ",
    {Env, Opts} = xqerl_test:handle_environment(environment('employees', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UseCaseR31-012.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_string_value(
                Res,
                "The secret number is lower. Die geheime Zahl ist kleiner."
            )
        of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'UseCaseR31-013'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "              declare variable $s :=[['A', 'DT'], ['bride', 'NN'], [',', ','], ['you', 'PRP'], ['know', 'VBP'], [',', ','], ['must', 'MD'],\n"
        " ['appear', 'VB'], ['like', 'IN'], ['a', 'DT'], ['bride', 'NN'], [',', ','], ['but', 'CC'], ['my', 'PRP$'],\n"
        " ['natural', 'JJ'], ['taste', 'NN'], ['is', 'VBZ'], ['all', 'DT'], ['for', 'IN'], ['simplicity', 'NN'], [';', ':'],\n"
        " ['a', 'DT'], ['simple', 'JJ'], ['style', 'NN'], ['of', 'IN'], ['dress', 'NN'], ['is', 'VBZ'],\n"
        " ['so', 'RB'], ['infinitely', 'RB'], ['preferable', 'JJ'], ['to', 'TO'], ['finery', 'VB'], ['.', '.']\n"
        "];\n"
        "<s>\n"
        " {\n"
        "  for $w in $s?*\n"
        "  return <w pos=\"{ $w(2) }\">{ $w(1) }</w>\n"
        " }\n"
        "</s>\n"
        "\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('employees', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UseCaseR31-013.xq"), Qry1),
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
                "<s><w pos=\"DT\">A</w><w pos=\"NN\">bride</w><w pos=\",\">,</w><w pos=\"PRP\">you</w><w pos=\"VBP\">know</w><w pos=\",\">,</w><w pos=\"MD\">must</w><w pos=\"VB\">appear</w><w pos=\"IN\">like</w><w pos=\"DT\">a</w><w pos=\"NN\">bride</w><w pos=\",\">,</w><w pos=\"CC\">but</w><w pos=\"PRP$\">my</w><w pos=\"JJ\">natural</w><w pos=\"NN\">taste</w><w pos=\"VBZ\">is</w><w pos=\"DT\">all</w><w pos=\"IN\">for</w><w pos=\"NN\">simplicity</w><w pos=\":\">;</w><w pos=\"DT\">a</w><w pos=\"JJ\">simple</w><w pos=\"NN\">style</w><w pos=\"IN\">of</w><w pos=\"NN\">dress</w><w pos=\"VBZ\">is</w><w pos=\"RB\">so</w><w pos=\"RB\">infinitely</w><w pos=\"JJ\">preferable</w><w pos=\"TO\">to</w><w pos=\"VB\">finery</w><w pos=\".\">.</w></s>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'UseCaseR31-014'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "              declare variable $s :=[['A', 'DT'], ['bride', 'NN'], [',', ','], ['you', 'PRP'], ['know', 'VBP'], [',', ','], ['must', 'MD'],\n"
        " ['appear', 'VB'], ['like', 'IN'], ['a', 'DT'], ['bride', 'NN'], [',', ','], ['but', 'CC'], ['my', 'PRP$'],\n"
        " ['natural', 'JJ'], ['taste', 'NN'], ['is', 'VBZ'], ['all', 'DT'], ['for', 'IN'], ['simplicity', 'NN'], [';', ':'],\n"
        " ['a', 'DT'], ['simple', 'JJ'], ['style', 'NN'], ['of', 'IN'], ['dress', 'NN'], ['is', 'VBZ'],\n"
        " ['so', 'RB'], ['infinitely', 'RB'], ['preferable', 'JJ'], ['to', 'TO'], ['finery', 'VB'], ['.', '.']\n"
        "];\n"
        "declare variable $index := map { \"pos\" : 2, \"lemma\" : 1 };\n"
        "\n"
        "<s>\n"
        " {\n"
        "  for $w in $s?*\n"
        "  return <w pos=\"{ $w($index(\"pos\")) }\">{ $w($index(\"lemma\")) }</w>\n"
        " }\n"
        "</s>",
    {Env, Opts} = xqerl_test:handle_environment(environment('employees', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UseCaseR31-014.xq"), Qry1),
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
                "<s><w pos=\"DT\">A</w><w pos=\"NN\">bride</w><w pos=\",\">,</w><w pos=\"PRP\">you</w><w pos=\"VBP\">know</w><w pos=\",\">,</w><w pos=\"MD\">must</w><w pos=\"VB\">appear</w><w pos=\"IN\">like</w><w pos=\"DT\">a</w><w pos=\"NN\">bride</w><w pos=\",\">,</w><w pos=\"CC\">but</w><w pos=\"PRP$\">my</w><w pos=\"JJ\">natural</w><w pos=\"NN\">taste</w><w pos=\"VBZ\">is</w><w pos=\"DT\">all</w><w pos=\"IN\">for</w><w pos=\"NN\">simplicity</w><w pos=\":\">;</w><w pos=\"DT\">a</w><w pos=\"JJ\">simple</w><w pos=\"NN\">style</w><w pos=\"IN\">of</w><w pos=\"NN\">dress</w><w pos=\"VBZ\">is</w><w pos=\"RB\">so</w><w pos=\"RB\">infinitely</w><w pos=\"JJ\">preferable</w><w pos=\"TO\">to</w><w pos=\"VB\">finery</w><w pos=\".\">.</w></s>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'UseCaseR31-015'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "              declare variable $s :=[['A', 'DT'], ['bride', 'NN'], [',', ','], ['you', 'PRP'], ['know', 'VBP'], [',', ','], ['must', 'MD'],\n"
        " ['appear', 'VB'], ['like', 'IN'], ['a', 'DT'], ['bride', 'NN'], [',', ','], ['but', 'CC'], ['my', 'PRP$'],\n"
        " ['natural', 'JJ'], ['taste', 'NN'], ['is', 'VBZ'], ['all', 'DT'], ['for', 'IN'], ['simplicity', 'NN'], [';', ':'],\n"
        " ['a', 'DT'], ['simple', 'JJ'], ['style', 'NN'], ['of', 'IN'], ['dress', 'NN'], ['is', 'VBZ'],\n"
        " ['so', 'RB'], ['infinitely', 'RB'], ['preferable', 'JJ'], ['to', 'TO'], ['finery', 'VB'], ['.', '.']\n"
        "];\n"
        "declare variable $index := map { \"pos\" : 2, \"lemma\" : 1 };\n"
        "\n"
        "for $word in $s?*\n"
        "let $pos := $word(2)\n"
        "let $lexeme := $word(1)\n"
        "where $pos = (\"JJ\", \"NN\", \"RB\", \"VB\")\n"
        "group by $pos\n"
        "order by $pos\n"
        "return\n"
        "  <pos name=\"{$pos}\">\n"
        "    {\n"
        "      for $l in distinct-values($lexeme)\n"
        "      return <lexeme>{ $l }</lexeme>\n"
        "    }\n"
        "  </pos>",
    {Env, Opts} = xqerl_test:handle_environment(environment('employees', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UseCaseR31-015.xq"), Qry1),
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
                "<pos name=\"JJ\"><lexeme>natural</lexeme><lexeme>simple</lexeme><lexeme>preferable</lexeme></pos><pos name=\"NN\"><lexeme>bride</lexeme><lexeme>taste</lexeme><lexeme>simplicity</lexeme><lexeme>style</lexeme><lexeme>dress</lexeme></pos><pos name=\"RB\"><lexeme>so</lexeme><lexeme>infinitely</lexeme></pos><pos name=\"VB\"><lexeme>appear</lexeme><lexeme>finery</lexeme></pos>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'UseCaseR31-016'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "              declare variable $s :=[['A', 'DT'], ['bride', 'NN'], [',', ','], ['you', 'PRP'], ['know', 'VBP'], [',', ','], ['must', 'MD'],\n"
        " ['appear', 'VB'], ['like', 'IN'], ['a', 'DT'], ['bride', 'NN'], [',', ','], ['but', 'CC'], ['my', 'PRP$'],\n"
        " ['natural', 'JJ'], ['taste', 'NN'], ['is', 'VBZ'], ['all', 'DT'], ['for', 'IN'], ['simplicity', 'NN'], [';', ':'],\n"
        " ['a', 'DT'], ['simple', 'JJ'], ['style', 'NN'], ['of', 'IN'], ['dress', 'NN'], ['is', 'VBZ'],\n"
        " ['so', 'RB'], ['infinitely', 'RB'], ['preferable', 'JJ'], ['to', 'TO'], ['finery', 'VB'], ['.', '.']\n"
        "];\n"
        "declare function local:words-only($s)\n"
        "{\n"
        "  for $w in $s\n"
        "  where not($w(2) = (\".\", \",\", \";\", \":\"))\n"
        "  return $w(1)\n"
        "};\n"
        "\n"
        "for sliding window $w in local:words-only($s?*)\n"
        "    start at $i when true()\n"
        "    only end at $j when $j - $i eq 2\n"
        "return\n"
        "    array { $w }",
    {Env, Opts} = xqerl_test:handle_environment(environment('employees', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UseCaseR31-016.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_deep_eq(
                Res,
                "[ \"A\", \"bride\", \"you\" ],\n"
                "[ \"bride\", \"you\", \"know\" ],\n"
                "[ \"you\", \"know\", \"must\" ],\n"
                "[ \"know\", \"must\", \"appear\" ],\n"
                "[ \"must\", \"appear\", \"like\" ],\n"
                "[ \"appear\", \"like\", \"a\" ],\n"
                "[ \"like\", \"a\", \"bride\" ],\n"
                "[ \"a\", \"bride\", \"but\" ],\n"
                "[ \"bride\", \"but\", \"my\" ],\n"
                "[ \"but\", \"my\", \"natural\" ],\n"
                "[ \"my\", \"natural\", \"taste\" ],\n"
                "[ \"natural\", \"taste\", \"is\" ],\n"
                "[ \"taste\", \"is\", \"all\" ],\n"
                "[ \"is\", \"all\", \"for\" ],\n"
                "[ \"all\", \"for\", \"simplicity\" ],\n"
                "[ \"for\", \"simplicity\", \"a\" ],\n"
                "[ \"simplicity\", \"a\", \"simple\" ],\n"
                "[ \"a\", \"simple\", \"style\" ],\n"
                "[ \"simple\", \"style\", \"of\" ],\n"
                "[ \"style\", \"of\", \"dress\" ],\n"
                "[ \"of\", \"dress\", \"is\" ],\n"
                "[ \"dress\", \"is\", \"so\" ],\n"
                "[ \"is\", \"so\", \"infinitely\" ],\n"
                "[ \"so\", \"infinitely\", \"preferable\" ],\n"
                "[ \"infinitely\", \"preferable\", \"to\" ],\n"
                "[ \"preferable\", \"to\", \"finery\" ]"
            )
        of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'UseCaseR31-017'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "              declare variable $s :=[['A', 'DT'], ['bride', 'NN'], [',', ','], ['you', 'PRP'], ['know', 'VBP'], [',', ','], ['must', 'MD'],\n"
        " ['appear', 'VB'], ['like', 'IN'], ['a', 'DT'], ['bride', 'NN'], [',', ','], ['but', 'CC'], ['my', 'PRP$'],\n"
        " ['natural', 'JJ'], ['taste', 'NN'], ['is', 'VBZ'], ['all', 'DT'], ['for', 'IN'], ['simplicity', 'NN'], [';', ':'],\n"
        " ['a', 'DT'], ['simple', 'JJ'], ['style', 'NN'], ['of', 'IN'], ['dress', 'NN'], ['is', 'VBZ'],\n"
        " ['so', 'RB'], ['infinitely', 'RB'], ['preferable', 'JJ'], ['to', 'TO'], ['finery', 'VB'], ['.', '.']\n"
        "];\n"
        "declare function local:filter($s as item()*, $p as function(item()) as xs:boolean)\n"
        "{\n"
        "  array { $s[$p(.)] },   array { $s[not($p(.))] }\n"
        "};\n"
        "\n"
        "let $f := function($a) { starts-with($a(2), \"VB\") }\n"
        "return\n"
        "  local:filter($s?*, $f)",
    {Env, Opts} = xqerl_test:handle_environment(environment('employees', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UseCaseR31-017.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_deep_eq(
                Res,
                "[ [ \"know\", \"VBP\" ], [ \"appear\", \"VB\" ], [ \"is\", \"VBZ\" ], [ \"is\", \"VBZ\" ],\n"
                "[ \"finery\", \"VB\" ] ],\n"
                "\n"
                "[ [ \"A\", \"DT\" ], [ \"bride\", \"NN\" ], [ \",\", \",\" ], [ \"you\", \"PRP\" ],\n"
                "  [ \",\", \",\" ], [ \"must\", \"MD\" ], [ \"like\", \"IN\" ], [ \"a\", \"DT\" ],\n"
                "  [ \"bride\", \"NN\" ], [ \",\", \",\" ], [ \"but\", \"CC\" ], [ \"my\", \"PRP$\" ],\n"
                "  [ \"natural\", \"JJ\" ], [ \"taste\", \"NN\" ], [ \"all\", \"DT\" ], [ \"for\", \"IN\" ],\n"
                "  [ \"simplicity\", \"NN\" ], [ \";\", \":\" ], [ \"a\", \"DT\" ], [ \"simple\", \"JJ\" ],\n"
                "  [ \"style\", \"NN\" ], [ \"of\", \"IN\" ], [ \"dress\", \"NN\" ], [ \"so\", \"RB\" ],\n"
                "  [ \"infinitely\", \"RB\" ], [ \"preferable\", \"JJ\" ], [ \"to\", \"TO\"],\n"
                "  [ \".\", \".\" ] ]"
            )
        of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'UseCaseR31-018'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "              declare variable $s :=[['A', 'DT'], ['bride', 'NN'], [',', ','], ['you', 'PRP'], ['know', 'VBP'], [',', ','], ['must', 'MD'],\n"
        " ['appear', 'VB'], ['like', 'IN'], ['a', 'DT'], ['bride', 'NN'], [',', ','], ['but', 'CC'], ['my', 'PRP$'],\n"
        " ['natural', 'JJ'], ['taste', 'NN'], ['is', 'VBZ'], ['all', 'DT'], ['for', 'IN'], ['simplicity', 'NN'], [';', ':'],\n"
        " ['a', 'DT'], ['simple', 'JJ'], ['style', 'NN'], ['of', 'IN'], ['dress', 'NN'], ['is', 'VBZ'],\n"
        " ['so', 'RB'], ['infinitely', 'RB'], ['preferable', 'JJ'], ['to', 'TO'], ['finery', 'VB'], ['.', '.']\n"
        "];\n"
        "declare function local:filter($s as item()*, $p as function(item()) as xs:boolean)\n"
        "{\n"
        "  map {\n"
        "    true() : array { $s[$p(.)] },\n"
        "    false() : array { $s[not($p(.))] }\n"
        "  }\n"
        "};\n"
        "\n"
        "\n"
        "let $f := function($a) { starts-with($a(2), \"VB\") }\n"
        "return\n"
        "  local:filter($s?*, $f)",
    {Env, Opts} = xqerl_test:handle_environment(environment('employees', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UseCaseR31-018.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_deep_eq(
                Res,
                "map {\n"
                "\n"
                "  true() :\n"
                "             [ [ \"know\", \"VBP\" ], [ \"appear\", \"VB\" ], [ \"is\", \"VBZ\" ],\n"
                "               [\"is\", \"VBZ\" ], [ \"finery\", \"VB\" ] ],\n"
                "\n"
                "  false() :\n"
                "\n"
                "             [ [ \"A\", \"DT\" ], [\"bride\", \"NN\" ], [ \",\", \",\" ],\n"
                "               [ \"you\", \"PRP\" ], [ \",\", \",\" ], [ \"must\", \"MD\" ],\n"
                "               [ \"like\", \"IN\" ], [ \"a\", \"DT\" ], [ \"bride\", \"NN\" ],\n"
                "               [ \",\", \",\" ], [ \"but\", \"CC\" ], [ \"my\", \"PRP$\" ],\n"
                "               [ \"natural\", \"JJ\" ], [ \"taste\", \"NN\" ], [ \"all\", \"DT\"],\n"
                "               [ \"for\", \"IN\" ], [ \"simplicity\", \"NN\" ], [ \";\", \":\" ],\n"
                "               [ \"a\", \"DT\" ], [ \"simple\", \"JJ\" ], [ \"style\", \"NN\" ],\n"
                "               [ \"of\", \"IN\" ], [ \"dress\", \"NN\" ], [ \"so\", \"RB\" ],\n"
                "               [ \"infinitely\", \"RB\" ], [ \"preferable\", \"JJ\" ],\n"
                "               [ \"to\", \"TO\" ], [ \".\", \".\" ] ]\n"
                "}"
            )
        of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'UseCaseR31-019'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "              declare variable $span := <root><span class=\"ocr_word\" title=\"bbox 1388 430 1461 474\">the</span>\n"
        "<span class=\"ocr_word\" title=\"bbox 1514 433 1635 476\">other</span>\n"
        "<span class=\"ocr_word\" title=\"bbox 133 498 317 554\">pcssible</span>\n"
        "<span class=\"ocr_word\" title=\"bbox 354 498 590 541\">derivation</span>\n"
        "<span class=\"ocr_word\" title=\"bbox 631 497 738 538\">from</span>\n"
        "<span class=\"ocr_word\" title=\"bbox 772 495 799 547\" lang=\"grc\" xml:lang=\"grc\">?</span>\n"
        "<span class=\"ocr_word\" title=\"bbox 835 495 1019 538\" lang=\"grc\" xml:lang=\"grc\">???????</span>\n"
        "<span class=\"ocr_word\" title=\"bbox 134 567 220 607\">dies</span>\n"
        "<span class=\"ocr_word\" title=\"bbox 257 566 462 607\">erastinus</span></root>;\n"
        "\n"
        "declare function local:extract-text($spans)\n"
        "{\n"
        "  for $s in $spans//span return string($s)\n"
        "};\n"
        "\n"
        "  local:extract-text($span)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UseCaseR31-019.xq"), Qry1),
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
                "the other pcssible derivation from ? ??????? dies erastinus"
            )
        of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'UseCaseR31-022'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "json-doc(\"http://www.w3.org/qt3/app/UseCaseR31/mildred-json\")?phone?*[?type = 'mobile']?number",
    {Env, Opts} = xqerl_test:handle_environment(environment('json-docs', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UseCaseR31-022.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "07356 740756") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'UseCaseR31-023'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "declare namespace map = \"http://www.w3.org/2005/xpath-functions/map\";\n"
        "declare namespace array = \"http://www.w3.org/2005/xpath-functions/array\";\n"
        "\n"
        "let $input := json-doc('http://www.w3.org/qt3/app/UseCaseR31/employees-json')\n"
        "for $k in map:keys($input)\n"
        "order by $k descending\n"
        "return\n"
        "  <department name=\"{ $k }\">\n"
        "    {\n"
        "    let $array := $input($k)\n"
        "    for $i in 1 to array:size($array)\n"
        "    let $emp := $array($i)\n"
        "    return\n"
        "      <employee>\n"
        "        <firstName>{ $emp('firstName') }</firstName>\n"
        "        <lastName>{ $emp('lastName') }</lastName>\n"
        "        <age>{ $emp('age') }</age>\n"
        "      </employee>\n"
        "    }\n"
        "  </department>",
    {Env, Opts} = xqerl_test:handle_environment(environment('json-docs', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UseCaseR31-023.xq"), Qry1),
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
                "<department name=\"sales\"><employee><firstName>Sally</firstName><lastName>Green</lastName><age>27</age></employee><employee><firstName>Jim</firstName><lastName>Galley</lastName><age>41</age></employee></department><department name=\"accounting\"><employee><firstName>John</firstName><lastName>Doe</lastName><age>23</age></employee><employee><firstName>Mary</firstName><lastName>Smith</lastName><age>32</age></employee></department>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'UseCaseR31-025'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare namespace map=\"http://www.w3.org/2005/xpath-functions/map\";\n"
        "\n"
        "declare function local:deep-put($input as item()*, $key as xs:string, $value as item()*) as item()*\n"
        "{\n"
        "  let $mf := function($k, $v) {\n"
        "                if ($k eq $key)\n"
        "                then map{$k : $value}\n"
        "                else map{$k : local:deep-put($v, $key, $value)}\n"
        "             }\n"
        "  for $i in $input\n"
        "  return\n"
        "    if ($i instance of map(*))\n"
        "    then map:merge(map:for-each($i, $mf))\n"
        "    else if ($i instance of array(*))\n"
        "    then array{ local:deep-put($i?*, $key, $value) }\n"
        "    else $i\n"
        "};\n"
        "\n"
        "local:deep-put(json-doc(\"http://www.w3.org/qt3/app/UseCaseR31/bookinfo-json\"), \"first\", \"John\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('json-docs', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UseCaseR31-025.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_deep_eq(
                Res,
                "map {\n"
                "    \"book\": map {\n"
                "        \"title\": \"Data on the Web\",\n"
                "        \"year\": 2000,\n"
                "        \"author\": [\n"
                "            map {\n"
                "                \"last\": \"Abiteboul\",\n"
                "                \"first\": \"John\"\n"
                "            },\n"
                "            map {\n"
                "                \"last\": \"Buneman\",\n"
                "                \"first\": \"John\"\n"
                "            },\n"
                "            map {\n"
                "                \"last\": \"Suciu\",\n"
                "                \"first\": \"John\"\n"
                "            }\n"
                "        ],\n"
                "        \"publisher\": \"Morgan Kaufmann Publishers\",\n"
                "        \"price\": 39.95\n"
                "    }\n"
                "}"
            )
        of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'UseCaseR31-026'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      for $sarah in collection($users-collection-uri),\n"
        "          $friend in collection($users-collection-uri)\n"
        "      where $sarah('name') = \"Sarah\"\n"
        "       and $friend('name') = $sarah('friends')?*\n"
        "      return $friend('name')\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('users-json', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UseCaseR31-026.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "Jim") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'UseCaseR31-027'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "Q{http://www.w3.org/2005/xpath-functions/map}merge(\n"
        "  for $sales in collection($sales-collection-uri)\n"
        "  let $pname := $sales('product')\n"
        "  group by $pname\n"
        "  return map { $pname : sum(for $s in $sales return $s('quantity')) })",
    {Env, Opts} = xqerl_test:handle_environment(environment('sales-json', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UseCaseR31-027.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_deep_eq(
                Res,
                "map {\n"
                "  \"blender\" : 250,\n"
                "  \"broiler\" : 20,\n"
                "  \"shirt\" : 10,\n"
                "  \"socks\" : 510,\n"
                "  \"toaster\" : 200\n"
                "  }"
            )
        of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'UseCaseR31-028'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      declare namespace map=\"http://www.w3.org/2005/xpath-functions/map\";\n"
        "      declare variable $storesVar := array { unparsed-text-lines(\"UseCaseR31/stores.json\") ! parse-json(.) };\n"
        "      declare variable $productsVar := array { unparsed-text-lines(\"UseCaseR31/products.json\") ! parse-json(.) };\n"
        "      declare variable $salesVar := array { unparsed-text-lines(\"UseCaseR31/sales.json\") ! parse-json(.) };\n"
        "      array {\n"
        "  for $store in $storesVar ? *\n"
        "  let $state := $store?state\n"
        "  group by $state\n"
        "  order by $state\n"
        "  return\n"
        "    map {\n"
        "      $state :  array {\n"
        "        for $product in $productsVar ? *\n"
        "        let $category := $product?category\n"
        "        group by $category\n"
        "        order by $category\n"
        "        return\n"
        "          map {\n"
        "            $category :  map:merge((\n"
        "              for $sales in $salesVar ? *\n"
        "              where $sales?(\"store number\") = $store?(\"store number\") and $sales?product = $product?name\n"
        "              let $pname := $sales?product\n"
        "              group by $pname\n"
        "              return map { $pname :  sum(for $s in $sales return $s?quantity)}\n"
        "            ))\n"
        "          }\n"
        "      }\n"
        "    }\n"
        "}",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UseCaseR31-028.xq"), Qry1),
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
                "[map{\"CA\":[map{\"clothes\":map{\"socks\":510}},map{\"kitchen\":map{\"broiler\":20,\"toaster\":150}}]},map{\"MA\":[map{\"clothes\":map{\"shirt\":10}},map{\"kitchen\":map{\"toaster\":50,\"blender\":250}}]}]"
            )
        of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'UseCaseR31-029'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare namespace map=\"http://www.w3.org/2005/xpath-functions/map\";\n"
        "let $sats := json-doc(\"http://www.w3.org/qt3/app/UseCaseR31/satellites-json\")(\"satellites\")\n"
        "return map {\n"
        "  \"visible\" : array {\n"
        "     map:keys($sats)[$sats(.)(\"visible\")]\n"
        "  },\n"
        "  \"invisible\" : array {\n"
        "     map:keys($sats)[not($sats(.)(\"visible\"))]\n"
        "  }\n"
        "}",
    {Env, Opts} = xqerl_test:handle_environment(environment('json-docs', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UseCaseR31-029.xq"), Qry1),
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
                        xqerl_test:assert_deep_eq(
                            Res,
                            "map { \"visible\" : [\"AKARI (ASTRO-F)\",\"AJISAI (EGS)\"], \"invisible\" : [\"AAU CUBESAT\"]}"
                        )
                    of
                        true -> {comment, "Deep equal"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_deep_eq(
                            Res,
                            "map { \"visible\" : [\"AJISAI (EGS)\", \"AKARI (ASTRO-F)\"], \"invisible\" : [\"AAU CUBESAT\"]}"
                        )
                    of
                        true -> {comment, "Deep equal"};
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

'UseCaseR31-030'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "PR * missing environment"}.

'UseCaseR31-031'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "  <html><body><table>\n"
        "    <tr> (: Column headings :)\n"
        "         {\n"
        "            <th> </th>,\n"
        "            for $th in json-doc('http://www.w3.org/qt3/app/UseCaseR31/table-json')?col-labels?*\n"
        "            return <th>{ $th }</th>\n"
        "         }\n"
        "      </tr>\n"
        "      {  (: Data for each row :)\n"
        "         for $r at $i in json-doc('http://www.w3.org/qt3/app/UseCaseR31/table-json')?data?*\n"
        "         return\n"
        "            <tr>\n"
        "             {\n"
        "               <th>{ json-doc('http://www.w3.org/qt3/app/UseCaseR31/table-json')?row-labels[$i] }</th>,\n"
        "               for $c in $r?*\n"
        "               return <td>{ $c }</td>\n"
        "             }\n"
        "            </tr>\n"
        "      }\n"
        "    </table>\n"
        "\n"
        "  </body>\n"
        "</html>\n"
        "   ",
    {Env, Opts} = xqerl_test:handle_environment(environment('json-docs', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UseCaseR31-031.xq"), Qry1),
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
                    case xqerl_test:assert(Res, "count($result//td[text()='spinnen'])=2") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "count($result//td[text()='spinne'])=1") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "count($result//td[text()='spinnst'])=1") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "count($result//td[text()='spinnt'])=2") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "count($result//th[text()='1p 2p 3p'])=1") of
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

'UseCaseR31-032'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "  <table>{\n"
        "  for tumbling window $w in json-doc(\"http://www.w3.org/qt3/app/UseCaseR31/colors-json\")?colors?*\n"
        "   start at $x when fn:true()\n"
        "    end at $y when $y - $x = 2\n"
        "  return\n"
        "    <tr>{\n"
        "      for $i in $w?color\n"
        "      return\n"
        "        <td>{ $i }</td>\n"
        "    }</tr>\n"
        "}</table>\n"
        "   ",
    {Env, Opts} = xqerl_test:handle_environment(environment('json-docs', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UseCaseR31-032.xq"), Qry1),
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

'UseCaseR31-033'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare namespace map=\"http://www.w3.org/2005/xpath-functions/map\";\n"
        "  let $dbj := json-doc(\"http://www.w3.org/qt3/app/UseCaseR31/users2-json\")[ .(\"name\") = \"Deadbeat Jim\" ]\n"
        "return map:put($dbj, \"status\", \"credit card declined\")\n"
        "   ",
    {Env, Opts} = xqerl_test:handle_environment(environment('json-docs', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UseCaseR31-033.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_deep_eq(
                Res,
                "map {\n"
                "  \"name\" : \"Deadbeat Jim\",\n"
                "  \"address\" : \"1 E 161st St, Bronx, NY 10451\",\n"
                "  \"status\" : \"credit card declined\",\n"
                "  \"risk tolerance\" : \"high\"\n"
                "}"
            )
        of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'UseCaseR31-034-err'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "  let $mf := function($k as node(), $v) {\n"
        "                map{$k('book') : $v}\n"
        "\n"
        "             }\n"
        "\n"
        "  return $mf(json-doc(\"http://www.w3.org/qt3/app/UseCaseR31/bookinfo-json\"), \"first\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('json-docs', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "UseCaseR31-034-err.xq"),
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
