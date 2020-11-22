-module('fn_for_each_SUITE').

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

-export(['for-each-001'/1]).
-export(['for-each-002'/1]).
-export(['for-each-003'/1]).
-export(['for-each-004'/1]).
-export(['for-each-005'/1]).
-export(['for-each-006'/1]).
-export(['for-each-007'/1]).
-export(['for-each-008'/1]).
-export(['for-each-009'/1]).
-export(['for-each-010'/1]).
-export(['for-each-011'/1]).
-export(['for-each-012'/1]).
-export(['for-each-901'/1]).
-export(['for-each-902'/1]).
-export(['for-each-903'/1]).

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
        {group, group_0}
    ].

groups() ->
    [
        {group_0, [parallel], [
            'for-each-001',
            'for-each-002',
            'for-each-003',
            'for-each-004',
            'for-each-005',
            'for-each-006',
            'for-each-007',
            'for-each-008',
            'for-each-009',
            'for-each-010',
            'for-each-011',
            'for-each-012',
            'for-each-901',
            'for-each-902',
            'for-each-903'
        ]}
    ].

environment('names', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "higherOrder/names.xml"), "", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ].

'for-each-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for-each((\"aa\", \"bb\", \"cc\", \"dd\", \"ee\"), upper-case#1)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "for-each-001.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"AA\", \"BB\", \"CC\", \"DD\", \"EE\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'for-each-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for-each((\"john\", \"jane\"), string-to-codepoints#1)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "for-each-002.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "106, 111, 104, 110, 106, 97, 110, 101") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'for-each-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "for-each((\"john\", \"mary\", \"jane\", \"anne\", \"peter\", \"ian\"), function($x){$x[contains(., 'e')]})",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "for-each-003.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"jane\", \"anne\", \"peter\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'for-each-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "for-each((\"john\", \"mary\", \"jane\", \"anne\", \"peter\", \"ian\"), function($x){upper-case($x)})",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "for-each-004.xq"), Qry1),
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
                "\"JOHN\", \"MARY\", \"JANE\", \"ANNE\", \"PETER\", \"IAN\""
            )
        of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'for-each-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "            for-each(for-each((\"john\", \"mary\", \"jane\", \"anne\", \"peter\", \"ian\"), function($n as xs:string){upper-case($n)}), function($e as xs:string) as xs:string { lower-case($e) })\n"
        "        ",
    {Env, Opts} = xqerl_test:handle_environment(environment('names', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "for-each-005.xq"), Qry1),
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
                "\"john\", \"mary\", \"jane\", \"anne\", \"peter\", \"ian\""
            )
        of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'for-each-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "            declare function local:children($n as node()) as node()* \n"
        "                { $n/child::node() }; \n"
        "            declare function local:attributes($e as node()) as node()* \n"
        "                { $e/attribute::node() }; \n"
        "            declare function local:self($e as node()) as node() \n"
        "                { $e }; \n"
        "            declare function local:union(\n"
        "                        $f as function(node()) as node()*, \n"
        "                        $g as function(node()) as node()*) as function(node()) as node()* { \n"
        "                function($a) {$f($a) | $g($a)} };\n"
        "            let $data := (/a), \n"
        "                $f := local:union(local:children#1, local:union(local:attributes#1, local:self#1)) \n"
        "            return for-each($data/*, $f)[not(. instance of attribute())]\n"
        "        ",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "higherOrder/doc1.xml"), ".", []}]},
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
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "for-each-006.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<b bid=\"b\"><b1/></b><b1/><c cid=\"c\"><c1/></c><c1/>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'for-each-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for-each((), round#1)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "for-each-007.xq"), Qry1),
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

'for-each-008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $f := function($x as xs:double*){for-each($x,round#1)} return $f((1.2345, 6.789))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "for-each-008.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "1, 7") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'for-each-009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for-each((1,4,9,16,25), Q{http://www.w3.org/2005/xpath-functions/math}sqrt#1)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "for-each-009.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "1,2,3,4,5") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'for-each-010'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for-each(namespace-uri-from-QName(function-name(xs:int#1)), upper-case#1)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "for-each-010.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "'HTTP://WWW.W3.ORG/2001/XMLSCHEMA'") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'for-each-011'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $f := function($ff as (function(item()) as item()), $s as xs:string){$ff($ff($s))} return\n"
        "          for-each((upper-case#1, lower-case#1, normalize-space#1, concat(?, '!')), $f(?, ' Say NO! '))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "for-each-011.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "' SAY NO! ', ' say no! ', 'Say NO!', ' Say NO! !!'") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'for-each-012'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          for-each((<a>1</a>, <b>22</b>, <c>33</c>), \n"
        "                   function($a as xs:string) as xs:integer {string-length($a)})\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "for-each-012.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "1,2,2") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'for-each-901'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for-each((\"aa\", \"bb\", \"cc\", \"dd\", \"ee\"), starts-with#2)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "for-each-901.xq"), Qry1),
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

'for-each-902'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for-each((\"aa\", \"bb\", \"cc\", \"dd\", 12), upper-case#1)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "for-each-902.xq"), Qry1),
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

'for-each-903'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for-each((\"aa\", \"bb\", \"cc\", \"dd\", 12), ())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "for-each-903.xq"), Qry1),
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
