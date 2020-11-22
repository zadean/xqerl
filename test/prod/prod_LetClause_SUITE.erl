-module('prod_LetClause_SUITE').

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

-export(['letexprwith-1'/1]).
-export(['letexprwith-2'/1]).
-export(['letexprwith-3'/1]).
-export(['letexprwith-4'/1]).
-export(['letexprwith-5'/1]).
-export(['letexprwith-6'/1]).
-export(['letexprwith-7'/1]).
-export(['letexprwith-8'/1]).
-export(['letexprwith-9'/1]).
-export(['letexprwith-10'/1]).
-export(['letexprwith-11'/1]).
-export(['letexprwith-12'/1]).
-export(['letexprwith-13'/1]).
-export(['letexprwith-14'/1]).
-export(['letexprwith-15'/1]).
-export(['letexprwith-16'/1]).
-export(['letexprwith-17'/1]).
-export(['letexprwith-18'/1]).
-export(['letexprwith-19'/1]).
-export(['letexprwith-20'/1]).
-export(['letexprwith-21'/1]).
-export(['letexprwith-22'/1]).
-export(['letexprwith-23'/1]).
-export(['letexprwith-24'/1]).
-export(['LetExpr001'/1]).
-export(['LetExpr002'/1]).
-export(['LetExpr003'/1]).
-export(['LetExpr004'/1]).
-export(['LetExpr005'/1]).
-export(['LetExpr006'/1]).
-export(['LetExpr007'/1]).
-export(['LetExpr008'/1]).
-export(['LetExpr009'/1]).
-export(['LetExpr010'/1]).
-export(['LetExpr011'/1]).
-export(['LetExpr012'/1]).
-export(['LetExpr013'/1]).
-export(['LetExpr014'/1]).
-export(['LetExpr015'/1]).
-export(['LetExpr016'/1]).
-export(['LetExpr017'/1]).
-export(['LetExpr018'/1]).
-export(['LetExpr019'/1]).
-export(['LetExpr020'/1]).
-export(['LetExpr020a'/1]).
-export(['LetExpr021'/1]).
-export(['K-LetExprWithout-1'/1]).
-export(['K-LetExprWithout-2'/1]).
-export(['K-LetExprWithout-3'/1]).
-export(['K-LetExprWithout-4'/1]).
-export(['K2-LetExprWithout-1'/1]).
-export(['K2-LetExprWithout-2'/1]).
-export(['K2-LetExprWithout-3'/1]).
-export(['K2-LetExprWithout-4'/1]).
-export(['K2-LetExprWithout-5'/1]).
-export(['K2-LetExprWithout-6'/1]).
-export(['K2-LetExprWithout-7'/1]).
-export(['K2-LetExprWithout-8'/1]).
-export(['K2-LetExprWithout-9'/1]).
-export(['K2-LetExprWithout-10'/1]).
-export(['K2-LetExprWithout-11'/1]).
-export(['K2-LetExprWithout-12'/1]).
-export(['K2-LetExprWithout-13'/1]).
-export(['K2-LetExprWithout-14'/1]).
-export(['K2-LetExprWithout-15'/1]).
-export(['K2-LetExprWithout-16'/1]).
-export(['K2-LetExprWithout-17'/1]).
-export(['K2-LetExprWithout-18'/1]).
-export(['K2-LetExprWithout-19'/1]).
-export(['K2-LetExprWithout-20'/1]).
-export(['K2-LetExprWithout-21'/1]).
-export(['K2-LetExprWithout-22'/1]).
-export(['K2-LetExprWithout-23'/1]).
-export(['K2-LetExprWithout-24'/1]).
-export(['K2-LetExprWithout-25'/1]).
-export(['K2-LetExprWithout-26'/1]).
-export(['xquery10keywords'/1]).
-export(['xquery10keywords2'/1]).
-export(['xquery10keywords3'/1]).
-export(['xquery30keywords'/1]).
-export(['xquery30keywords2'/1]).
-export(['xquery30keywords3'/1]).
-export(['xquery30keywords4'/1]).
-export(['xquery30keywords5'/1]).
-export(['xquery31keywords1'/1]).
-export(['xquery31keywords2'/1]).
-export(['xquery31keywords3'/1]).
-export(['xquery31keywords4'/1]).
-export(['xquery31keywords5'/1]).

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
        {group, group_3}
    ].

groups() ->
    [
        {group_0, [parallel], [
            'letexprwith-1',
            'letexprwith-2',
            'letexprwith-3',
            'letexprwith-4',
            'letexprwith-5',
            'letexprwith-6',
            'letexprwith-7',
            'letexprwith-8',
            'letexprwith-9',
            'letexprwith-10',
            'letexprwith-11',
            'letexprwith-12',
            'letexprwith-13',
            'letexprwith-14',
            'letexprwith-15',
            'letexprwith-16',
            'letexprwith-17',
            'letexprwith-18',
            'letexprwith-19',
            'letexprwith-20',
            'letexprwith-21',
            'letexprwith-22',
            'letexprwith-23'
        ]},
        {group_1, [parallel], [
            'letexprwith-24',
            'LetExpr001',
            'LetExpr002',
            'LetExpr003',
            'LetExpr004',
            'LetExpr005',
            'LetExpr006',
            'LetExpr007',
            'LetExpr008',
            'LetExpr009',
            'LetExpr010',
            'LetExpr011',
            'LetExpr012',
            'LetExpr013',
            'LetExpr014',
            'LetExpr015',
            'LetExpr016',
            'LetExpr017',
            'LetExpr018',
            'LetExpr019',
            'LetExpr020',
            'LetExpr020a',
            'LetExpr021',
            'K-LetExprWithout-1'
        ]},
        {group_2, [parallel], [
            'K-LetExprWithout-2',
            'K-LetExprWithout-3',
            'K-LetExprWithout-4',
            'K2-LetExprWithout-1',
            'K2-LetExprWithout-2',
            'K2-LetExprWithout-3',
            'K2-LetExprWithout-4',
            'K2-LetExprWithout-5',
            'K2-LetExprWithout-6',
            'K2-LetExprWithout-7',
            'K2-LetExprWithout-8',
            'K2-LetExprWithout-9',
            'K2-LetExprWithout-10',
            'K2-LetExprWithout-11',
            'K2-LetExprWithout-12',
            'K2-LetExprWithout-13',
            'K2-LetExprWithout-14',
            'K2-LetExprWithout-15',
            'K2-LetExprWithout-16',
            'K2-LetExprWithout-17',
            'K2-LetExprWithout-18',
            'K2-LetExprWithout-19',
            'K2-LetExprWithout-20',
            'K2-LetExprWithout-21'
        ]},
        {group_3, [parallel], [
            'K2-LetExprWithout-22',
            'K2-LetExprWithout-23',
            'K2-LetExprWithout-24',
            'K2-LetExprWithout-25',
            'K2-LetExprWithout-26',
            'xquery10keywords',
            'xquery10keywords2',
            'xquery10keywords3',
            'xquery30keywords',
            'xquery30keywords2',
            'xquery30keywords3',
            'xquery30keywords4',
            'xquery30keywords5',
            'xquery31keywords1',
            'xquery31keywords2',
            'xquery31keywords3',
            'xquery31keywords4',
            'xquery31keywords5'
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
    ];
environment('acme_corp', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "../op/union/acme_corp.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ].

'letexprwith-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $salary as xs:decimal := \"cat\" return $salary * 2",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "letexprwith-1.xq"), Qry1),
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

'letexprwith-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $var as xs:decimal := 100 return $var",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "letexprwith-2.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "100") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'letexprwith-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $var as xs:integer := 100 return $var",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "letexprwith-3.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "100") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'letexprwith-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $var as xs:double := 100E1 return $var",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "letexprwith-4.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1000") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'letexprwith-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $var as xs:string := \"A String\" return $var",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "letexprwith-5.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "A String") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'letexprwith-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $var as xs:boolean := fn:true() return $var",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "letexprwith-6.xq"), Qry1),
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

'letexprwith-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $var as xs:boolean := fn:false() return $var",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "letexprwith-7.xq"), Qry1),
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

'letexprwith-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $var as xs:date := xs:date(\"1999-05-31Z\") return $var",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "letexprwith-8.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1999-05-31Z") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'letexprwith-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $var as xs:time := xs:time(\"21:23:00Z\") return $var",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "letexprwith-9.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "21:23:00Z") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'letexprwith-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $var as xs:dateTime := xs:dateTime(\"1999-05-31T13:20:00Z\") return $var",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "letexprwith-10.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1999-05-31T13:20:00Z") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'letexprwith-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $var as xs:float := xs:float(100) return $var",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "letexprwith-11.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "100") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'letexprwith-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $var as xs:integer := 100+200 return $var",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "letexprwith-12.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "300") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'letexprwith-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $var as xs:integer := fn:count((100,200)) return $var",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "letexprwith-13.xq"), Qry1),
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

'letexprwith-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $var as xs:boolean := fn:not(fn:true()) return $var",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "letexprwith-14.xq"), Qry1),
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

'letexprwith-15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $var as xs:boolean := fn:true() and fn:true() return $var",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "letexprwith-15.xq"), Qry1),
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

'letexprwith-16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $var as xs:boolean := fn:true() and fn:true() return $var",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "letexprwith-16.xq"), Qry1),
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

'letexprwith-17'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $var as xs:integer := fn:string-length(\"A String\") return $var",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "letexprwith-17.xq"), Qry1),
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

'letexprwith-18'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $var as xs:string := xs:string((xs:integer(100))) return $var",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "letexprwith-18.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "100") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'letexprwith-19'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $var as xs:string := xs:string((xs:decimal(100))) return $var",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "letexprwith-19.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "100") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'letexprwith-20'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $var as xs:string := xs:string((xs:double(100E2))) return $var",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "letexprwith-20.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "10000") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'letexprwith-21'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $var as xs:string := xs:string(fn:true()) return $var",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "letexprwith-21.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "true") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'letexprwith-22'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $var as xs:integer := 100 return $var + 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "letexprwith-22.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "101") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'letexprwith-23'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $var as xs:boolean := if (fn:true()) then fn:true() else fn:false() return $var",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "letexprwith-23.xq"), Qry1),
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

'letexprwith-24'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $var as xs:string := typeswitch(fn:true()) case $i as xs:boolean return \"Test Passed\" default return \"Test failed\" return $var",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "letexprwith-24.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "Test Passed") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'LetExpr001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $x := \"92233720368547758\" return $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "LetExpr001.xq"), Qry1),
            xqerl:run(Mod)
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

'LetExpr002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $x := 92233720368547758 return $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "LetExpr002.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "92233720368547758") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'LetExpr003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $x := 92233720368547758+1 return $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "LetExpr003.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "92233720368547759") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'LetExpr004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $x := xs:long(\"92233720368547758\") return $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "LetExpr004.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "92233720368547758") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'LetExpr005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $x := xs:long(\"-92233720368547758\")+1 return $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "LetExpr005.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "-92233720368547757") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'LetExpr006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $x := xs:double(\"1.7976931348623157E308\") return $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "LetExpr006.xq"), Qry1),
            xqerl:run(Mod)
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

'LetExpr007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $x:=<a>{1+1}</a> return $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "LetExpr007.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<a>2</a>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'LetExpr008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $x:=1, $y:=$x+1 return $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "LetExpr008.xq"), Qry1),
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

'LetExpr009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $x:=1, $y:=<a>{$x+1}</a> return $y",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "LetExpr009.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<a>2</a>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'LetExpr010'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $x:=(1,2,3), $y:=$x+1 return $y",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "LetExpr010.xq"), Qry1),
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

'LetExpr011'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $x :=(1 to 100)[. mod 5 eq 0] return $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "LetExpr011.xq"), Qry1),
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
                "5 10 15 20 25 30 35 40 45 50 55 60 65 70 75 80 85 90 95 100"
            )
        of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'LetExpr012'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $x :=(1 to 100)[. mod 5 eq 0], $y := $x[. mod 10 eq 0] return $y",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "LetExpr012.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "10 20 30 40 50 60 70 80 90 100") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'LetExpr013'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $x:=\"hello\", $y:=concat($x,\" there\") return $y",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "LetExpr013.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "hello there") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'LetExpr014'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $x := \"1\", $y := $x+1 return $y",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "LetExpr014.xq"), Qry1),
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

'LetExpr015'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $x := (0,0.1e-1,2.0,'a',\"cat\",'',true()) return $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "LetExpr015.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "0 0.01 2 a cat  true") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'LetExpr016'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $a := (<elem1/>, <elem2/>, <elem3 att=\"test\"/>) return <root>{$a}</root>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "LetExpr016.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<root><elem1/><elem2/><elem3 att=\"test\"/></root>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'LetExpr017'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $x := (<a> <b> <c> 123 </c> </b> </a>) return $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "LetExpr017.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<a><b><c> 123 </c></b></a>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'LetExpr018'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $x := (0,0.1e-1,2.0,'a',\"cat\",'',true(), ('<a> <b> <c> 123 </c> </b> </a>')/a/b) return $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "LetExpr018.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPTY0019") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPTY0019 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'LetExpr019'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $a := <elem/> let $b := <elem2/> return ($a,$b)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "LetExpr019.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<elem/><elem2/>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'LetExpr020'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $a := 1 let $b := $a let $c := $a+$b return ($c)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "LetExpr020.xq"), Qry1),
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

'LetExpr020a'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XP30+"}.

'LetExpr021'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $a := $b return ($a)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "LetExpr021.xq"), Qry1),
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

'K-LetExprWithout-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $i := 5, $j := 20 * $i return $i, $j",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-LetExprWithout-1.xq"),
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

'K-LetExprWithout-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $i = 5 return 3",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-LetExprWithout-2.xq"),
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

'K-LetExprWithout-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $i in 5 return 3",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-LetExprWithout-3.xq"),
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

'K-LetExprWithout-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare variable $i := false(); \n"
        "        declare variable $t := false(); \n"
        "        deep-equal((let $i := true(), $t := true() return ($i, $t)), (true(), true()))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-LetExprWithout-4.xq"),
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

'K2-LetExprWithout-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "deep-equal((<b/>, <b/>, <b/>, <b/>), (for $v1 in (1, 2, 3, 4) let $v2 := <b/> return ($v2))/.)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-LetExprWithout-1.xq"),
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

'K2-LetExprWithout-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "deep-equal((<b/>, <b/>, <b/>, <b/>), (for $v1 in (1, 2, 3, 4) let $v2 := <b/> return ($v2)))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-LetExprWithout-2.xq"),
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

'K2-LetExprWithout-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare function local:myFunc() { let $v := . return $v }; local:myFunc()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-LetExprWithout-3.xq"),
                Qry1
            ),
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

'K2-LetExprWithout-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare function local:myFunc($arg as node()) { let $v := . return $arg/$v }; local:myFunc(<e/>)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-LetExprWithout-4.xq"),
                Qry1
            ),
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

'K2-LetExprWithout-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare function local:myFunc($arg as node()) { let $v := aNameTest return $arg/$v }; local:myFunc(<e/>)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-LetExprWithout-5.xq"),
                Qry1
            ),
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

'K2-LetExprWithout-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare function local:myFunc($arg as node()) { let $v := aNameTest return $arg/$v }; 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-LetExprWithout-6.xq"),
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
                    case xqerl_test:assert_eq(Res, "1") of
                        true -> {comment, "Equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPDY0002") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPDY0002 " ++ binary_to_list(F)};
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

'K2-LetExprWithout-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $i as xs:integer := xs:untypedAtomic(\"1\") return $i",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-LetExprWithout-7.xq"),
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

'K2-LetExprWithout-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "return 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-LetExprWithout-8.xq"),
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

'K2-LetExprWithout-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $i as xs:float := 1.1 return $i",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-LetExprWithout-9.xq"),
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

'K2-LetExprWithout-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $i as xs:double := 1.1 return $i",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-LetExprWithout-10.xq"),
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

'K2-LetExprWithout-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $i as xs:float := 1 return $i",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-LetExprWithout-11.xq"),
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

'K2-LetExprWithout-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $i as xs:double := 1 return $i",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-LetExprWithout-12.xq"),
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

'K2-LetExprWithout-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $i as xs:double := xs:float(3) return $i",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-LetExprWithout-13.xq"),
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

'K2-LetExprWithout-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $i as xs:string := xs:untypedAtomic(\"a string\") return $i",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-LetExprWithout-14.xq"),
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

'K2-LetExprWithout-15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $i as xs:string := xs:anyURI(\"http://www.example.com/\") return $i",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-LetExprWithout-15.xq"),
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

'K2-LetExprWithout-16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $e := <e/>; for $i in (<a/>, $e, <c/>) return $i is $e",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-LetExprWithout-16.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "false true false") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-LetExprWithout-17'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare function local:function() { let $b := (i/a) return () }; empty(local:function())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-LetExprWithout-17.xq"),
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
                    case xqerl_test:assert_true(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPDY0002") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPDY0002 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPST0005") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0005 " ++ binary_to_list(F)};
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

'K2-LetExprWithout-18'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare function local:foo($a as xs:integer) { if($a = 3) then $a else let $a := $a return local:foo($a + 1) }; local:foo(1)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-LetExprWithout-18.xq"),
                Qry1
            ),
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

'K2-LetExprWithout-19'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $v := . return 1",
    {Env, Opts} = xqerl_test:handle_environment(environment('empty', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-LetExprWithout-19.xq"),
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
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_eq(Res, "1") of
                        true -> {comment, "Equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPDY0002") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPDY0002 " ++ binary_to_list(F)};
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

'K2-LetExprWithout-20'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        let $emps := //employee[location = \"Denver\"] \n"
        "        for $d in distinct-values($emps/deptno) \n"
        "        let $e := $emps[deptno = $d] \n"
        "        return <dept> <deptno>{$d}</deptno> <headcount> {count($e)} </headcount> <payroll> {sum($e/salary)} </payroll> </dept>\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('acme_corp', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-LetExprWithout-20.xq"),
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
                "<dept><deptno>1</deptno><headcount>2</headcount><payroll>130000</payroll></dept><dept><deptno>2</deptno><headcount>1</headcount><payroll>80000</payroll></dept>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-LetExprWithout-21'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<e/>/(for $b in 1, $i in self::node() return $i)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-LetExprWithout-21.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<e/>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-LetExprWithout-22'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<e/>/(for $i in self::node() return $i)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-LetExprWithout-22.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<e/>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-LetExprWithout-23'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "count(<e/>/(let $i := . return (string($i), data($i))))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-LetExprWithout-23.xq"),
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

'K2-LetExprWithout-24'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare function local:function() { let $b := (i/a) return 1 }; local:function()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-LetExprWithout-24.xq"),
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
                    case xqerl_test:assert_eq(Res, "1") of
                        true -> {comment, "Equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPDY0002") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPDY0002 " ++ binary_to_list(F)};
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

'K2-LetExprWithout-25'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $a := 1 return \n"
        "                for $b in 1 return \n"
        "                    if ($b) then 1 \n"
        "                            else if ($b) then 1 \n"
        "                            else if ($b) then 1 \n"
        "                            else if ($b) then 1 \n"
        "                            else if ($b) then 1 \n"
        "                            else if ($b) then 1 \n"
        "                            else if ($b) then 1 \n"
        "                            else if ($b) then 1 \n"
        "                            else if ($b) then 1 \n"
        "                            else if ($b) then 1 \n"
        "                            else if ($b) then 1 \n"
        "                            else if ($b) then 1 \n"
        "                            else if ($b) then 1 \n"
        "                            else if ($b) then 1 \n"
        "                            else if ($b) then 1 \n"
        "                            else if ($b) then 1 \n"
        "                            else if ($b) then 1 \n"
        "                            else if ($b) then 1 \n"
        "                            else if ($b) then 1 \n"
        "                            else if ($b) then 1 \n"
        "                            else if ($b) then 1 \n"
        "                            else if ($b) then 1 \n"
        "                            else if ($b) then 1 \n"
        "                            else if ($b) then 1 \n"
        "                            else if ($b) then 1 \n"
        "                            else ()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-LetExprWithout-25.xq"),
                Qry1
            ),
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

'K2-LetExprWithout-26'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $e := <element/>, $outer as element() := $e/element() return $outer",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-LetExprWithout-26.xq"),
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

'xquery10keywords'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $ancestor-or-self := 1 \n"
        "      let $ancestor := 1 \n"
        "      let $and := 1 \n"
        "      let $as := 1 \n"
        "      let $ascending := 1 \n"
        "      let $at := 1 \n"
        "      let $attribute := 1 \n"
        "      let $base-uri := 1 \n"
        "      let $boundary-space := 1 \n"
        "      let $by := 1 \n"
        "      let $case := 1 \n"
        "      let $cast := 1 \n"
        "      let $castable := 1 \n"
        "      let $child := 1 \n"
        "      let $collation := 1 \n"
        "      let $comment := 1 \n"
        "      let $construction := 1 \n"
        "      let $copy-namespaces := 1 \n"
        "      let $declare := 1 \n"
        "      let $default := 1 \n"
        "      let $descendant-or-self := 1 \n"
        "      let $descendant := 1 \n"
        "      let $descending := 1 \n"
        "      let $div := 1 \n"
        "      let $document-node := 1 \n"
        "      let $document := 1 \n"
        "      let $element := 1 \n"
        "      let $else := 1 \n"
        "      let $empty-sequence := 1 \n"
        "      let $empty := 1 \n"
        "      let $encoding := 1 \n"
        "      let $eq := 1 let $every := 1 let $except := 1 let $external := 1 let $following-sibling := 1 \n"
        "      let $following := 1 let $for := 1 let $function := 1 let $ge := 1 let $greatest := 1 \n"
        "      let $gt := 1 let $idiv := 1 let $if := 1 let $import := 1 let $in := 1 let $inherit := 1 \n"
        "      let $instance := 1 let $intersect := 1 let $is := 1 let $item := 1 let $lax := 1 \n"
        "      let $le := 1 let $least := 1 let $let := 1 let $lt := 1 let $mod := 1 let $module := 1 \n"
        "      let $module := 1 let $namespace := 1 let $ne := 1 let $no-inherit := 1 \n"
        "      let $no-preserve := 1 let $node := 1 let $of := 1 let $option := 1 let $or := 1 \n"
        "      let $order := 1 let $ordered := 1 let $ordering := 1 let $parent := 1 let $preceding-sibling := 1 \n"
        "      let $preceding := 1 let $preserve := 1 let $processing-instruction := 1 let $return := 1 \n"
        "      let $satisfies := 1 let $schema-attribute := 1 let $schema-element := 1 let $schema := 1 \n"
        "      let $self := 1 let $some := 1 let $stable := 1 let $strict := 1 let $strip := 1 \n"
        "      let $text := 1 let $then := 1 let $to := 1 let $treat := 1 let $typeswitch := 1 \n"
        "      let $union := 1 let $unordered := 1 let $validate := 1 let $variable := 1 let $version := 1 \n"
        "      let $where := 1 let $xquery := 1 return 2",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xquery10keywords.xq"), Qry1),
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

'xquery10keywords2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      let $x := (/) \n"
        "      return $x /ancestor-or-self /ancestor /and /as /ascending /at /attribute \n"
        "      /base-uri /boundary-space /by \n"
        "      /case /cast /castable /child /collation /comment /construction /copy-namespaces \n"
        "      /declare /default /descendant-or-self /descendant /descending /div /document-node /document \n"
        "      /element /else /empty-sequence /empty /encoding /eq /every /except /external \n"
        "      /following-sibling /following /for /function \n"
        "      /ge /greatest /gt \n"
        "      /idiv /if /import /in /inherit /instance /intersect /is /item\n"
        "       /lax /le /least /let /lt \n"
        "       /mod /module /module \n"
        "       /namespace /ne /no-inherit /no-preserve /node \n"
        "       /of /option /or /order /ordered /ordering \n"
        "       /parent /preceding-sibling /preceding /preserve /processing-instruction \n"
        "       /return \n"
        "       /satisfies /schema-attribute /schema-element /schema /self /some /stable /strict /strip \n"
        "       /text /then /to /treat /typeswitch \n"
        "       /union /unordered \n"
        "       /validate /variable /version \n"
        "       /where\n"
        "       /xquery",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-mod', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xquery10keywords2.xq"), Qry1),
            xqerl:run(Mod, Opts)
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

'xquery10keywords3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      <keywords> <ancestor-or-self/> <ancestor/> <and/> <as/> <ascending/> <at/> <attribute/> \n"
        "      <base-uri/> <boundary-space/> <by/> \n"
        "      <case/> <cast/> <castable/> <child/> <collation/> <comment/> <construction/> <copy-namespaces/> \n"
        "      <declare/> <default/> <descendant-or-self/> <descendant/> <descending/> <div/> <document-node/> <document/> \n"
        "      <element/> <else/> <empty-sequence/> <empty/> <encoding/> <eq/> <every/> <except/> <external/> \n"
        "      <following-sibling/> <following/> <for/> <function/> \n"
        "      <ge/> <greatest/> <gt/> \n"
        "      <idiv/> <if/> <import/> <in/> <inherit/> <instance/> <intersect/> <is/> <item/> \n"
        "      <lax/> <le/> <least/> <let/> <lt/> \n"
        "      <mod/> <module/> <module/> \n"
        "      <namespace/> <ne/> <no-inherit/> <no-preserve/> <node/> \n"
        "      <of/> <option/> <or/> <order/> <ordered/> <ordering/> \n"
        "      <parent/> <preceding-sibling/> <preceding/> <preserve/> <processing-instruction/> \n"
        "      <return/> \n"
        "      <satisfies/> <schema-attribute/> <schema-element/> <schema/> <self/> <some/> <stable/> <strict/> <strip/> \n"
        "      <text/> <then/> <to/> <treat/> <typeswitch/> \n"
        "      <union/> <unordered/> \n"
        "      <validate/> <variable/> <version/> \n"
        "      <where/> \n"
        "      <xquery/> </keywords>/name()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xquery10keywords3.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "keywords") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'xquery30keywords'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        let $NaN := 1\n"
        "        let $allowing := 1\n"
        "        let $ancestor-or-self := 1\n"
        "        let $ancestor := 1\n"
        "        let $and := 1\n"
        "        let $as := 1\n"
        "        let $ascending := 1\n"
        "        let $at := 1\n"
        "        let $attribute := 1\n"
        "        let $base-uri := 1\n"
        "        let $boundary-space := 1\n"
        "        let $by := 1\n"
        "        let $case := 1\n"
        "        let $cast := 1\n"
        "        let $castable := 1\n"
        "        let $catch := 1\n"
        "        let $child := 1\n"
        "        let $collation := 1\n"
        "        let $comment := 1\n"
        "        let $construction := 1\n"
        "        let $context := 1\n"
        "        let $copy-namespaces := 1\n"
        "        let $count := 1\n"
        "        let $decimal-format := 1\n"
        "        let $decimal-separator := 1\n"
        "        let $declare := 1\n"
        "        let $default := 1\n"
        "        let $descendant-or-self := 1\n"
        "        let $descendant := 1\n"
        "        let $descending := 1\n"
        "        let $digit := 1\n"
        "        let $div := 1\n"
        "        let $document-node := 1\n"
        "        let $document := 1\n"
        "        let $element := 1\n"
        "        let $else := 1\n"
        "        let $empty-sequence := 1\n"
        "        let $empty := 1\n"
        "        let $encoding := 1\n"
        "        let $end := 1\n"
        "        let $eq := 1\n"
        "        let $every := 1\n"
        "        let $except := 1\n"
        "        let $external := 1\n"
        "        let $following-sibling := 1\n"
        "        let $following := 1\n"
        "        let $for := 1\n"
        "        let $function := 1\n"
        "        let $ge := 1\n"
        "        let $greatest := 1\n"
        "        let $group := 1\n"
        "        let $grouping-separator := 1\n"
        "        let $gt := 1\n"
        "        let $idiv := 1\n"
        "        let $if := 1\n"
        "        let $import := 1\n"
        "        let $in := 1\n"
        "        let $infinity := 1\n"
        "        let $inherit := 1\n"
        "        let $instance := 1\n"
        "        let $intersect := 1\n"
        "        let $is := 1\n"
        "        let $item := 1\n"
        "        let $lax := 1\n"
        "        let $le := 1\n"
        "        let $least := 1\n"
        "        let $let := 1\n"
        "        let $lt := 1\n"
        "        let $minus-sign := 1\n"
        "        let $mod := 1\n"
        "        let $module := 1\n"
        "        let $namespace-node := 1\n"
        "        let $namespace := 1\n"
        "        let $ne := 1\n"
        "        let $next := 1\n"
        "        let $no-inherit := 1\n"
        "        let $no-preserve := 1\n"
        "        let $node := 1\n"
        "        let $of := 1\n"
        "        let $only := 1\n"
        "        let $option := 1\n"
        "        let $or := 1\n"
        "        let $order := 1\n"
        "        let $ordered := 1\n"
        "        let $ordering := 1\n"
        "        let $parent := 1\n"
        "        let $pattern-separator := 1\n"
        "        let $per-mille := 1\n"
        "        let $percent := 1\n"
        "        let $preceding-sibling := 1\n"
        "        let $preceding := 1\n"
        "        let $preserve := 1\n"
        "        let $previous := 1\n"
        "        let $processing-instruction := 1\n"
        "        let $return := 1\n"
        "        let $satisfies := 1\n"
        "        let $schema-attribute := 1\n"
        "        let $schema-element := 1\n"
        "        let $schema := 1\n"
        "        let $self := 1\n"
        "        let $sliding := 1\n"
        "        let $some := 1\n"
        "        let $stable := 1\n"
        "        let $start := 1\n"
        "        let $strict := 1\n"
        "        let $strip := 1\n"
        "        let $switch := 1\n"
        "        let $text := 1\n"
        "        let $then := 1\n"
        "        let $to := 1\n"
        "        let $treat := 1\n"
        "        let $try := 1\n"
        "        let $tumbling := 1\n"
        "        let $type := 1\n"
        "        let $typeswitch := 1\n"
        "        let $union := 1\n"
        "        let $unordered := 1\n"
        "        let $validate := 1\n"
        "        let $variable := 1\n"
        "        let $version := 1\n"
        "        let $when := 1\n"
        "        let $where := 1\n"
        "        let $window := 1\n"
        "        let $xquery := 1\n"
        "        let $zero-digit := 1\n"
        "        return 2\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xquery30keywords.xq"), Qry1),
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

'xquery30keywords2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        let $x := (/)\n"
        "        return $x\n"
        "        /NaN\n"
        "        /allowing\n"
        "        /ancestor-or-self\n"
        "        /ancestor\n"
        "        /and\n"
        "        /as\n"
        "        /ascending\n"
        "        /at\n"
        "        /attribute\n"
        "        /base-uri\n"
        "        /boundary-space\n"
        "        /by\n"
        "        /case\n"
        "        /cast\n"
        "        /castable\n"
        "        /catch\n"
        "        /child\n"
        "        /collation\n"
        "        /comment\n"
        "        /construction\n"
        "        /context\n"
        "        /copy-namespaces\n"
        "        /count\n"
        "        /decimal-format\n"
        "        /decimal-separator\n"
        "        /declare\n"
        "        /default\n"
        "        /descendant-or-self\n"
        "        /descendant\n"
        "        /descending\n"
        "        /digit\n"
        "        /div\n"
        "        /document-node\n"
        "        /document\n"
        "        /element\n"
        "        /else\n"
        "        /empty-sequence\n"
        "        /empty\n"
        "        /encoding\n"
        "        /end\n"
        "        /eq\n"
        "        /every\n"
        "        /except\n"
        "        /external\n"
        "        /following-sibling\n"
        "        /following\n"
        "        /for\n"
        "        /function\n"
        "        /ge\n"
        "        /greatest\n"
        "        /group\n"
        "        /grouping-separator\n"
        "        /gt\n"
        "        /idiv\n"
        "        /if\n"
        "        /import\n"
        "        /in\n"
        "        /infinity\n"
        "        /inherit\n"
        "        /instance\n"
        "        /intersect\n"
        "        /is\n"
        "        /item\n"
        "        /lax\n"
        "        /le\n"
        "        /least\n"
        "        /let\n"
        "        /lt\n"
        "        /minus-sign\n"
        "        /mod\n"
        "        /module\n"
        "        /namespace-node\n"
        "        /namespace\n"
        "        /ne\n"
        "        /next\n"
        "        /no-inherit\n"
        "        /no-preserve\n"
        "        /node\n"
        "        /of\n"
        "        /only\n"
        "        /option\n"
        "        /or\n"
        "        /order\n"
        "        /ordered\n"
        "        /ordering\n"
        "        /parent\n"
        "        /pattern-separator\n"
        "        /per-mille\n"
        "        /percent\n"
        "        /preceding-sibling\n"
        "        /preceding\n"
        "        /preserve\n"
        "        /previous\n"
        "        /processing-instruction\n"
        "        /return\n"
        "        /satisfies\n"
        "        /schema-attribute\n"
        "        /schema-element\n"
        "        /schema\n"
        "        /self\n"
        "        /sliding\n"
        "        /some\n"
        "        /stable\n"
        "        /start\n"
        "        /strict\n"
        "        /strip\n"
        "        /switch\n"
        "        /text\n"
        "        /then\n"
        "        /to\n"
        "        /treat\n"
        "        /try\n"
        "        /tumbling\n"
        "        /type\n"
        "        /typeswitch\n"
        "        /union\n"
        "        /unordered\n"
        "        /validate\n"
        "        /variable\n"
        "        /version\n"
        "        /when\n"
        "        /where\n"
        "        /window\n"
        "        /xquery\n"
        "        /zero-digit\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-mod', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xquery30keywords2.xq"), Qry1),
            xqerl:run(Mod, Opts)
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

'xquery30keywords3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        <keywords>\n"
        "           <NaN/>\n"
        "           <allowing/>\n"
        "           <ancestor-or-self/>\n"
        "           <ancestor/>\n"
        "           <and/>\n"
        "           <as/>\n"
        "           <ascending/>\n"
        "           <at/>\n"
        "           <attribute/>\n"
        "           <base-uri/>\n"
        "           <boundary-space/>\n"
        "           <by/>\n"
        "           <case/>\n"
        "           <cast/>\n"
        "           <castable/>\n"
        "           <catch/>\n"
        "           <child/>\n"
        "           <collation/>\n"
        "           <comment/>\n"
        "           <construction/>\n"
        "           <context/>\n"
        "           <copy-namespaces/>\n"
        "           <count/>\n"
        "           <decimal-format/>\n"
        "           <decimal-separator/>\n"
        "           <declare/>\n"
        "           <default/>\n"
        "           <descendant-or-self/>\n"
        "           <descendant/>\n"
        "           <descending/>\n"
        "           <digit/>\n"
        "           <div/>\n"
        "           <document-node/>\n"
        "           <document/>\n"
        "           <element/>\n"
        "           <else/>\n"
        "           <empty-sequence/>\n"
        "           <empty/>\n"
        "           <encoding/>\n"
        "           <end/>\n"
        "           <eq/>\n"
        "           <every/>\n"
        "           <except/>\n"
        "           <external/>\n"
        "           <following-sibling/>\n"
        "           <following/>\n"
        "           <for/>\n"
        "           <function/>\n"
        "           <ge/>\n"
        "           <greatest/>\n"
        "           <group/>\n"
        "           <grouping-separator/>\n"
        "           <gt/>\n"
        "           <idiv/>\n"
        "           <if/>\n"
        "           <import/>\n"
        "           <in/>\n"
        "           <infinity/>\n"
        "           <inherit/>\n"
        "           <instance/>\n"
        "           <intersect/>\n"
        "           <is/>\n"
        "           <item/>\n"
        "           <lax/>\n"
        "           <le/>\n"
        "           <least/>\n"
        "           <let/>\n"
        "           <lt/>\n"
        "           <minus-sign/>\n"
        "           <mod/>\n"
        "           <module/>\n"
        "           <namespace-node/>\n"
        "           <namespace/>\n"
        "           <ne/>\n"
        "           <next/>\n"
        "           <no-inherit/>\n"
        "           <no-preserve/>\n"
        "           <node/>\n"
        "           <of/>\n"
        "           <only/>\n"
        "           <option/>\n"
        "           <or/>\n"
        "           <order/>\n"
        "           <ordered/>\n"
        "           <ordering/>\n"
        "           <parent/>\n"
        "           <pattern-separator/>\n"
        "           <per-mille/>\n"
        "           <percent/>\n"
        "           <preceding-sibling/>\n"
        "           <preceding/>\n"
        "           <preserve/>\n"
        "           <previous/>\n"
        "           <processing-instruction/>\n"
        "           <return/>\n"
        "           <satisfies/>\n"
        "           <schema-attribute/>\n"
        "           <schema-element/>\n"
        "           <schema/>\n"
        "           <self/>\n"
        "           <sliding/>\n"
        "           <some/>\n"
        "           <stable/>\n"
        "           <start/>\n"
        "           <strict/>\n"
        "           <strip/>\n"
        "           <switch/>\n"
        "           <text/>\n"
        "           <then/>\n"
        "           <to/>\n"
        "           <treat/>\n"
        "           <try/>\n"
        "           <tumbling/>\n"
        "           <type/>\n"
        "           <typeswitch/>\n"
        "           <union/>\n"
        "           <unordered/>\n"
        "           <validate/>\n"
        "           <variable/>\n"
        "           <version/>\n"
        "           <when/>\n"
        "           <where/>\n"
        "           <window/>\n"
        "           <xquery/>\n"
        "           <zero-digit/>\n"
        "        </keywords>/name()\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xquery30keywords3.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "keywords") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'xquery30keywords4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare function local:NaN () {1};\n"
        "         declare function local:allowing () {2};\n"
        "         declare function local:ancestor-or-self () {3};\n"
        "         declare function local:ancestor () {4};\n"
        "         declare function local:and () {5};\n"
        "         declare function local:as () {6};\n"
        "         declare function local:ascending () {7};\n"
        "         declare function local:at () {8};\n"
        "         declare function local:attribute () {9};\n"
        "         declare function local:base-uri () {10};\n"
        "         declare function local:boundary-space () {11};\n"
        "         declare function local:by () {12};\n"
        "         declare function local:case () {13};\n"
        "         declare function local:cast () {14};\n"
        "         declare function local:castable () {15};\n"
        "         declare function local:catch () {16};\n"
        "         declare function local:child () {17};\n"
        "         declare function local:collation () {18};\n"
        "         declare function local:comment () {19};\n"
        "         declare function local:construction () {20};\n"
        "         declare function local:context () {21};\n"
        "         declare function local:copy-namespaces () {22};\n"
        "         declare function local:count () {23};\n"
        "         declare function local:decimal-format () {24};\n"
        "         declare function local:decimal-separator () {25};\n"
        "         declare function local:declare () {26};\n"
        "         declare function local:default () {27};\n"
        "         declare function local:descendant-or-self () {28};\n"
        "         declare function local:descendant () {29};\n"
        "         declare function local:descending () {30};\n"
        "         declare function local:digit () {31};\n"
        "         declare function local:div () {32};\n"
        "         declare function local:document-node () {33};\n"
        "         declare function local:document () {34};\n"
        "         declare function local:element () {35};\n"
        "         declare function local:else () {36};\n"
        "         declare function local:empty-sequence () {37};\n"
        "         declare function local:empty () {38};\n"
        "         declare function local:encoding () {39};\n"
        "         declare function local:end () {40};\n"
        "         declare function local:eq () {41};\n"
        "         declare function local:every () {42};\n"
        "         declare function local:except () {43};\n"
        "         declare function local:external () {44};\n"
        "         declare function local:following-sibling () {45};\n"
        "         declare function local:following () {46};\n"
        "         declare function local:for () {47};\n"
        "         declare function local:function () {48};\n"
        "         declare function local:ge () {49};\n"
        "         declare function local:greatest () {50};\n"
        "         declare function local:group () {51};\n"
        "         declare function local:grouping-separator () {52};\n"
        "         declare function local:gt () {53};\n"
        "         declare function local:idiv () {54};\n"
        "         declare function local:if () {55};\n"
        "         declare function local:import () {56};\n"
        "         declare function local:in () {57};\n"
        "         declare function local:infinity () {58};\n"
        "         declare function local:inherit () {59};\n"
        "         declare function local:instance () {60};\n"
        "         declare function local:intersect () {61};\n"
        "         declare function local:is () {62};\n"
        "         declare function local:item () {63};\n"
        "         declare function local:lax () {64};\n"
        "         declare function local:le () {65};\n"
        "         declare function local:least () {66};\n"
        "         declare function local:let () {67};\n"
        "         declare function local:lt () {68};\n"
        "         declare function local:minus-sign () {69};\n"
        "         declare function local:mod () {70};\n"
        "         declare function local:module () {71};\n"
        "         declare function local:namespace-node () {72};\n"
        "         declare function local:namespace () {73};\n"
        "         declare function local:ne () {74};\n"
        "         declare function local:next () {75};\n"
        "         declare function local:no-inherit () {76};\n"
        "         declare function local:no-preserve () {77};\n"
        "         declare function local:node () {78};\n"
        "         declare function local:of () {79};\n"
        "         declare function local:only () {80};\n"
        "         declare function local:option () {81};\n"
        "         declare function local:or () {82};\n"
        "         declare function local:order () {83};\n"
        "         declare function local:ordered () {84};\n"
        "         declare function local:ordering () {85};\n"
        "         declare function local:parent () {86};\n"
        "         declare function local:pattern-separator () {87};\n"
        "         declare function local:per-mille () {88};\n"
        "         declare function local:percent () {89};\n"
        "         declare function local:preceding-sibling () {90};\n"
        "         declare function local:preceding () {91};\n"
        "         declare function local:preserve () {92};\n"
        "         declare function local:previous () {93};\n"
        "         declare function local:processing-instruction () {94};\n"
        "         declare function local:return () {95};\n"
        "         declare function local:satisfies () {96};\n"
        "         declare function local:schema-attribute () {97};\n"
        "         declare function local:schema-element () {98};\n"
        "         declare function local:schema () {99};\n"
        "         declare function local:self () {100};\n"
        "         declare function local:sliding () {101};\n"
        "         declare function local:some () {102};\n"
        "         declare function local:stable () {103};\n"
        "         declare function local:start () {104};\n"
        "         declare function local:strict () {105};\n"
        "         declare function local:strip () {106};\n"
        "         declare function local:switch () {107};\n"
        "         declare function local:text () {108};\n"
        "         declare function local:then () {109};\n"
        "         declare function local:to () {110};\n"
        "         declare function local:treat () {111};\n"
        "         declare function local:try () {112};\n"
        "         declare function local:tumbling () {113};\n"
        "         declare function local:type () {114};\n"
        "         declare function local:typeswitch () {115};\n"
        "         declare function local:union () {116};\n"
        "         declare function local:unordered () {117};\n"
        "         declare function local:validate () {118};\n"
        "         declare function local:variable () {119};\n"
        "         declare function local:version () {120};\n"
        "         declare function local:when () {121};\n"
        "         declare function local:where () {122};\n"
        "         declare function local:window () {123};\n"
        "         declare function local:xquery () {124};\n"
        "         declare function local:zero-digit () {125};\n"
        "         \n"
        "         local:NaN() +\n"
        "         local:allowing() +\n"
        "         local:ancestor-or-self() +\n"
        "         local:ancestor() +\n"
        "         local:and() +\n"
        "         local:as() +\n"
        "         local:ascending() +\n"
        "         local:at() +\n"
        "         local:attribute() +\n"
        "         local:base-uri() +\n"
        "         local:boundary-space() +\n"
        "         local:by() +\n"
        "         local:case() +\n"
        "         local:cast() +\n"
        "         local:castable() +\n"
        "         local:catch() +\n"
        "         local:child() +\n"
        "         local:collation() +\n"
        "         local:comment() +\n"
        "         local:construction() +\n"
        "         local:context() +\n"
        "         local:copy-namespaces() +\n"
        "         local:count() +\n"
        "         local:decimal-format() +\n"
        "         local:decimal-separator() +\n"
        "         local:declare() +\n"
        "         local:default() +\n"
        "         local:descendant-or-self() +\n"
        "         local:descendant() +\n"
        "         local:descending() +\n"
        "         local:digit() +\n"
        "         local:div() +\n"
        "         local:document-node() +\n"
        "         local:document() +\n"
        "         local:element() +\n"
        "         local:else() +\n"
        "         local:empty-sequence() +\n"
        "         local:empty() +\n"
        "         local:encoding() +\n"
        "         local:end() +\n"
        "         local:eq() +\n"
        "         local:every() +\n"
        "         local:except() +\n"
        "         local:external() +\n"
        "         local:following-sibling() +\n"
        "         local:following() +\n"
        "         local:for() +\n"
        "         local:function() +\n"
        "         local:ge() +\n"
        "         local:greatest() +\n"
        "         local:group() +\n"
        "         local:grouping-separator() +\n"
        "         local:gt() +\n"
        "         local:idiv() +\n"
        "         local:if() +\n"
        "         local:import() +\n"
        "         local:in() +\n"
        "         local:infinity() +\n"
        "         local:inherit() +\n"
        "         local:instance() +\n"
        "         local:intersect() +\n"
        "         local:is() +\n"
        "         local:item() +\n"
        "         local:lax() +\n"
        "         local:le() +\n"
        "         local:least() +\n"
        "         local:let() +\n"
        "         local:lt() +\n"
        "         local:minus-sign() +\n"
        "         local:mod() +\n"
        "         local:module() +\n"
        "         local:namespace-node() +\n"
        "         local:namespace() +\n"
        "         local:ne() +\n"
        "         local:next() +\n"
        "         local:no-inherit() +\n"
        "         local:no-preserve() +\n"
        "         local:node() +\n"
        "         local:of() +\n"
        "         local:only() +\n"
        "         local:option() +\n"
        "         local:or() +\n"
        "         local:order() +\n"
        "         local:ordered() +\n"
        "         local:ordering() +\n"
        "         local:parent() +\n"
        "         local:pattern-separator() +\n"
        "         local:per-mille() +\n"
        "         local:percent() +\n"
        "         local:preceding-sibling() +\n"
        "         local:preceding() +\n"
        "         local:preserve() +\n"
        "         local:previous() +\n"
        "         local:processing-instruction() +\n"
        "         local:return() +\n"
        "         local:satisfies() +\n"
        "         local:schema-attribute() +\n"
        "         local:schema-element() +\n"
        "         local:schema() +\n"
        "         local:self() +\n"
        "         local:sliding() +\n"
        "         local:some() +\n"
        "         local:stable() +\n"
        "         local:start() +\n"
        "         local:strict() +\n"
        "         local:strip() +\n"
        "         local:switch() +\n"
        "         local:text() +\n"
        "         local:then() +\n"
        "         local:to() +\n"
        "         local:treat() +\n"
        "         local:try() +\n"
        "         local:tumbling() +\n"
        "         local:type() +\n"
        "         local:typeswitch() +\n"
        "         local:union() +\n"
        "         local:unordered() +\n"
        "         local:validate() +\n"
        "         local:variable() +\n"
        "         local:version() +\n"
        "         local:when() +\n"
        "         local:where() +\n"
        "         local:window() +\n"
        "         local:xquery() +\n"
        "         local:zero-digit()\n"
        "         eq (125 * (125 + 1)) div 2\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xquery30keywords4.xq"), Qry1),
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

'xquery30keywords5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";\n"
        "         \n"
        "         declare function NaN () {1};\n"
        "         declare function allowing () {2};\n"
        "         declare function ancestor-or-self () {3};\n"
        "         declare function ancestor () {4};\n"
        "         declare function and () {5};\n"
        "         declare function as () {6};\n"
        "         declare function ascending () {7};\n"
        "         declare function at () {8};\n"
        "         declare function base-uri () {9};\n"
        "         declare function boundary-space () {10};\n"
        "         declare function by () {11};\n"
        "         declare function case () {12};\n"
        "         declare function cast () {13};\n"
        "         declare function castable () {14};\n"
        "         declare function catch () {15};\n"
        "         declare function child () {16};\n"
        "         declare function collation () {17};\n"
        "         declare function construction () {18};\n"
        "         declare function context () {19};\n"
        "         declare function copy-namespaces () {20};\n"
        "         declare function count () {21};\n"
        "         declare function decimal-format () {22};\n"
        "         declare function decimal-separator () {23};\n"
        "         declare function declare () {24};\n"
        "         declare function default () {25};\n"
        "         declare function descendant-or-self () {26};\n"
        "         declare function descendant () {27};\n"
        "         declare function descending () {28};\n"
        "         declare function digit () {29};\n"
        "         declare function div () {30};\n"
        "         declare function document () {31};\n"
        "         declare function else () {32};\n"
        "         declare function empty () {33};\n"
        "         declare function encoding () {34};\n"
        "         declare function end () {35};\n"
        "         declare function eq () {36};\n"
        "         declare function every () {37};\n"
        "         declare function except () {38};\n"
        "         declare function external () {39};\n"
        "         declare function following-sibling () {40};\n"
        "         declare function following () {41};\n"
        "         declare function for () {42};\n"
        "         declare function ge () {43};\n"
        "         declare function greatest () {44};\n"
        "         declare function group () {45};\n"
        "         declare function grouping-separator () {46};\n"
        "         declare function gt () {47};\n"
        "         declare function idiv () {48};\n"
        "         declare function import () {49};\n"
        "         declare function in () {50};\n"
        "         declare function infinity () {51};\n"
        "         declare function inherit () {52};\n"
        "         declare function instance () {53};\n"
        "         declare function intersect () {54};\n"
        "         declare function is () {55};\n"
        "         declare function lax () {56};\n"
        "         declare function le () {57};\n"
        "         declare function least () {58};\n"
        "         declare function let () {59};\n"
        "         declare function lt () {60};\n"
        "         declare function minus-sign () {61};\n"
        "         declare function mod () {62};\n"
        "         declare function module () {63};\n"
        "         declare function namespace () {64};\n"
        "         declare function ne () {65};\n"
        "         declare function next () {66};\n"
        "         declare function no-inherit () {67};\n"
        "         declare function no-preserve () {68};\n"
        "         declare function of () {69};\n"
        "         declare function only () {70};\n"
        "         declare function option () {71};\n"
        "         declare function or () {72};\n"
        "         declare function order () {73};\n"
        "         declare function ordered () {74};\n"
        "         declare function ordering () {75};\n"
        "         declare function parent () {76};\n"
        "         declare function pattern-separator () {77};\n"
        "         declare function per-mille () {78};\n"
        "         declare function percent () {79};\n"
        "         declare function preceding-sibling () {80};\n"
        "         declare function preceding () {81};\n"
        "         declare function preserve () {82};\n"
        "         declare function previous () {83};\n"
        "         declare function return () {84};\n"
        "         declare function satisfies () {85};\n"
        "         declare function schema () {86};\n"
        "         declare function self () {87};\n"
        "         declare function sliding () {88};\n"
        "         declare function some () {89};\n"
        "         declare function stable () {90};\n"
        "         declare function start () {91};\n"
        "         declare function strict () {92};\n"
        "         declare function strip () {93};\n"
        "         declare function then () {94};\n"
        "         declare function to () {95};\n"
        "         declare function treat () {96};\n"
        "         declare function try () {97};\n"
        "         declare function tumbling () {98};\n"
        "         declare function type () {99};\n"
        "         declare function union () {100};\n"
        "         declare function unordered () {101};\n"
        "         declare function validate () {102};\n"
        "         declare function variable () {103};\n"
        "         declare function version () {104};\n"
        "         declare function when () {105};\n"
        "         declare function where () {106};\n"
        "         declare function window () {107};\n"
        "         declare function xquery () {108};\n"
        "         declare function zero-digit () {109};\n"
        "         \n"
        "         NaN() +\n"
        "         allowing() +\n"
        "         ancestor-or-self() +\n"
        "         ancestor() +\n"
        "         and() +\n"
        "         as() +\n"
        "         ascending() +\n"
        "         at() +\n"
        "         base-uri() +\n"
        "         boundary-space() +\n"
        "         by() +\n"
        "         case() +\n"
        "         cast() +\n"
        "         castable() +\n"
        "         catch() +\n"
        "         child() +\n"
        "         collation() +\n"
        "         construction() +\n"
        "         context() +\n"
        "         copy-namespaces() +\n"
        "         count() +\n"
        "         decimal-format() +\n"
        "         decimal-separator() +\n"
        "         declare() +\n"
        "         default() +\n"
        "         descendant-or-self() +\n"
        "         descendant() +\n"
        "         descending() +\n"
        "         digit() +\n"
        "         div() +\n"
        "         document() +\n"
        "         else() +\n"
        "         empty() +\n"
        "         encoding() +\n"
        "         end() +\n"
        "         eq() +\n"
        "         every() +\n"
        "         except() +\n"
        "         external() +\n"
        "         following-sibling() +\n"
        "         following() +\n"
        "         for() +\n"
        "         ge() +\n"
        "         greatest() +\n"
        "         group() +\n"
        "         grouping-separator() +\n"
        "         gt() +\n"
        "         idiv() +\n"
        "         import() +\n"
        "         in() +\n"
        "         infinity() +\n"
        "         inherit() +\n"
        "         instance() +\n"
        "         intersect() +\n"
        "         is() +\n"
        "         lax() +\n"
        "         le() +\n"
        "         least() +\n"
        "         let() +\n"
        "         lt() +\n"
        "         minus-sign() +\n"
        "         mod() +\n"
        "         module() +\n"
        "         namespace() +\n"
        "         ne() +\n"
        "         next() +\n"
        "         no-inherit() +\n"
        "         no-preserve() +\n"
        "         of() +\n"
        "         only() +\n"
        "         option() +\n"
        "         or() +\n"
        "         order() +\n"
        "         ordered() +\n"
        "         ordering() +\n"
        "         parent() +\n"
        "         pattern-separator() +\n"
        "         per-mille() +\n"
        "         percent() +\n"
        "         preceding-sibling() +\n"
        "         preceding() +\n"
        "         preserve() +\n"
        "         previous() +\n"
        "         return() +\n"
        "         satisfies() +\n"
        "         schema() +\n"
        "         self() +\n"
        "         sliding() +\n"
        "         some() +\n"
        "         stable() +\n"
        "         start() +\n"
        "         strict() +\n"
        "         strip() +\n"
        "         then() +\n"
        "         to() +\n"
        "         treat() +\n"
        "         try() +\n"
        "         tumbling() +\n"
        "         type() +\n"
        "         union() +\n"
        "         unordered() +\n"
        "         validate() +\n"
        "         variable() +\n"
        "         version() +\n"
        "         when() +\n"
        "         where() +\n"
        "         window() +\n"
        "         xquery() +\n"
        "         zero-digit()\n"
        "         eq (109 * (109 + 1)) div 2\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xquery30keywords5.xq"), Qry1),
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

'xquery31keywords1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        let $exponent-separator := 1\n"
        "        return 2\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-mod', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xquery31keywords1.xq"), Qry1),
            xqerl:run(Mod, Opts)
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

'xquery31keywords2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        let $x := (/)\n"
        "        return $x/exponent-separator\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-mod', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xquery31keywords2.xq"), Qry1),
            xqerl:run(Mod, Opts)
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

'xquery31keywords3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        <keywords>\n"
        "           <exponent-separator/>\n"
        "        </keywords>/name()\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xquery31keywords3.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "keywords") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'xquery31keywords4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare function local:exponent-separator () {126};\n"
        "         local:exponent-separator()\n"
        "         eq 126\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xquery31keywords4.xq"), Qry1),
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

'xquery31keywords5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";\n"
        "         declare function exponent-separator () {110};\n"
        "         exponent-separator()\n"
        "         eq 110\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xquery31keywords5.xq"), Qry1),
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
