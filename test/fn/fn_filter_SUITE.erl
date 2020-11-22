-module('fn_filter_SUITE').

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

-export(['filter-001'/1]).
-export(['filter-002'/1]).
-export(['filter-003'/1]).
-export(['filter-004'/1]).
-export(['filter-005'/1]).
-export(['filter-006'/1]).
-export(['filter-901'/1]).
-export(['filter-902'/1]).
-export(['filter-903'/1]).
-export(['filter-904'/1]).
-export(['fn-filter-001'/1]).
-export(['fn-filter-002'/1]).
-export(['fn-filter-003'/1]).
-export(['fn-filter-004'/1]).
-export(['fn-filter-005'/1]).
-export(['fn-filter-006'/1]).
-export(['fn-filter-007'/1]).
-export(['fn-filter-008'/1]).
-export(['fn-filter-009'/1]).
-export(['fn-filter-010'/1]).
-export(['fn-filter-011'/1]).
-export(['fn-filter-012'/1]).
-export(['fn-filter-013'/1]).
-export(['fn-filter-014'/1]).
-export(['fn-filter-015'/1]).
-export(['fn-filter-016'/1]).
-export(['fn-filter-017'/1]).
-export(['fn-filter-018'/1]).
-export(['fn-filter-019'/1]).
-export(['fn-filter-020'/1]).
-export(['fn-filter-021'/1]).
-export(['fn-filter-022'/1]).
-export(['fn-filter-023'/1]).

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
            'filter-001',
            'filter-002',
            'filter-003',
            'filter-004',
            'filter-005',
            'filter-006',
            'filter-901',
            'filter-902',
            'filter-903',
            'filter-904',
            'fn-filter-001',
            'fn-filter-002',
            'fn-filter-003',
            'fn-filter-004',
            'fn-filter-005',
            'fn-filter-006',
            'fn-filter-007',
            'fn-filter-008',
            'fn-filter-009',
            'fn-filter-010',
            'fn-filter-011',
            'fn-filter-012',
            'fn-filter-013'
        ]},
        {group_1, [parallel], [
            'fn-filter-014',
            'fn-filter-015',
            'fn-filter-016',
            'fn-filter-017',
            'fn-filter-018',
            'fn-filter-019',
            'fn-filter-020',
            'fn-filter-021',
            'fn-filter-022',
            'fn-filter-023'
        ]}
    ].

'filter-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "filter((\"apple\", \"pear\", \"apricot\", \"advocado\", \"orange\"),starts-with(?, \"a\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "filter-001.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"apple\", \"apricot\", \"advocado\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'filter-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "filter((12, 4, 46, 23, -8), function($x){$x gt 10})",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "filter-002.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "12, 46, 23") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'filter-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $data := (/employees)\n"
        "              return filter($data/emp, function($x as element(emp)){xs:int($x/@salary) lt 300})",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "filter/filter003.xml"), ".", []}]},
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
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "filter-003.xq"), Qry1),
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
                    case xqerl_test:assert_count(Res, "3") of
                        true -> {comment, "Count correct"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_type(Res, "element(emp)*") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result/@name = 'john'") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result/@name = 'anne'") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result/@name = 'kumar'") of
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

'filter-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(1 to 20)[. = filter(1 to position(), function($x){$x idiv 2 * 2 = $x})]",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "filter-004.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "2, 4, 6, 8, 10, 12, 14, 16, 18, 20") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'filter-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $index-of-node := function($seqParam as node()*, $srchParam as node()) as xs:integer* \n"
        "                                    { filter( 1 to count($seqParam), function($this as xs:integer) as xs:boolean\n"
        "                                              {$seqParam[$this] is $srchParam} ) },\n"
        "            $nodes := /*/*,\n"
        "            $perm := ($nodes[1], $nodes[2], $nodes[3], $nodes[1], $nodes[2], $nodes[4], $nodes[2], $nodes[1]) \n"
        "            return $index-of-node($perm, $nodes[2]) ",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "filter/filter005.xml"), ".", []}]},
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
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "filter-005.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "2, 5, 7") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'filter-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "            filter((1 to 20), function($i){<a>{1 - ($i mod 2)}</a>})\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "filter-006.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "2, 4, 6, 8, 10, 12, 14, 16, 18, 20") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'filter-901'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "filter((\"apple\", \"pear\", \"apricot\", \"advocado\", \"orange\"), normalize-space#1)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "filter-901.xq"), Qry1),
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

'filter-902'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "filter((\"apple\", \"pear\", \"apricot\", \"advocado\", \"orange\"), function($x){if(starts-with($x,'a')) then true() else ()})",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "filter-902.xq"), Qry1),
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

'filter-903'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "filter( (\"apple\", \"pear\", \"apricot\", \"advocado\", \"orange\"), function($x){if(starts-with($x,'a')) then (true(), true()) else false()})",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "filter-903.xq"), Qry1),
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

'filter-904'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "filter((\"apple\", \"pear\", \"apricot\", \"advocado\", \"orange\", current-date()), ends-with(?, 'e'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "filter-904.xq"), Qry1),
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

'fn-filter-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:filter()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-filter-001.xq"), Qry1),
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

'fn-filter-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:filter#0",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-filter-002.xq"), Qry1),
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

'fn-filter-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:filter( fn:boolean#1 )",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-filter-003.xq"), Qry1),
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

'fn-filter-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:filter#1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-filter-004.xq"), Qry1),
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

'fn-filter-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:exists( fn:filter#2 )",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-filter-005.xq"), Qry1),
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

'fn-filter-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:staticTyping"}.

'fn-filter-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:staticTyping"}.

'fn-filter-008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:staticTyping"}.

'fn-filter-009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:staticTyping"}.

'fn-filter-010'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:filter( (), function($a as item()) as xs:boolean* { fn:boolean($a), fn:boolean($a) } )",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-filter-010.xq"), Qry1),
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
                    case xqerl_test:assert_error(Res, "XPST0005") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0005 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_empty(Res) of
                        true -> {comment, "Empty"};
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

'fn-filter-011'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:filter( (), function($a as item()) as xs:boolean? { () } )",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-filter-011.xq"), Qry1),
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
                    case xqerl_test:assert_error(Res, "XPST0005") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0005 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_empty(Res) of
                        true -> {comment, "Empty"};
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

'fn-filter-012'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:filter( (), fn:string#1 )",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-filter-012.xq"), Qry1),
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
                    end,
                    case xqerl_test:assert_error(Res, "XPST0005") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0005 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_empty(Res) of
                        true -> {comment, "Empty"};
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

'fn-filter-013'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:filter( (//node(), 1, \"string\", 3.14, 2.7e0, fn:exists#1), function($arg) { $arg instance of function(*) } )",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "filter/fn-filter-012.xml"), ".", []}]},
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
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-filter-013.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_count(Res, "1") of
            true -> {comment, "Count correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-filter-014'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:filter( 1 to 10, function($arg) { if ($arg eq 100) then () else fn:true()})",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-filter-014.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_count(Res, "10") of
            true -> {comment, "Count correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-filter-015'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:filter( 1 to 10, function($arg) { if ($arg eq 10) then () else fn:true()})",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-filter-015.xq"), Qry1),
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

'fn-filter-016'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:staticTyping"}.

'fn-filter-017'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:filter( 1 to 10, function($arg) { if ($arg eq 100) then 0 else fn:true()})",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-filter-017.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_count(Res, "10") of
            true -> {comment, "Count correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-filter-018'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:filter( 1 to 10, function($arg) { if ($arg eq 10) then 0 else fn:true()})",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-filter-018.xq"), Qry1),
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

'fn-filter-019'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:staticTyping"}.

'fn-filter-020'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:filter( 1 to 10, function($arg) { if ($arg eq 100) then (fn:true(), fn:false()) else fn:true()})",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-filter-020.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_count(Res, "10") of
            true -> {comment, "Count correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-filter-021'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:filter( 1 to 10, function($arg) { if ($arg eq 10) then (fn:true(), fn:false()) else fn:true()})",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-filter-021.xq"), Qry1),
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

'fn-filter-022'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:staticTyping"}.

'fn-filter-023'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:staticTyping"}.
