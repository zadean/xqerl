-module('prod_VarDecl_SUITE').

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

-export(['VarDecl001'/1]).
-export(['VarDecl002'/1]).
-export(['VarDecl003'/1]).
-export(['VarDecl004'/1]).
-export(['VarDecl005'/1]).
-export(['VarDecl006'/1]).
-export(['VarDecl007'/1]).
-export(['VarDecl008'/1]).
-export(['VarDecl009'/1]).
-export(['VarDecl010'/1]).
-export(['VarDecl011'/1]).
-export(['VarDecl012'/1]).
-export(['VarDecl013'/1]).
-export(['VarDecl014'/1]).
-export(['VarDecl015'/1]).
-export(['VarDecl016'/1]).
-export(['VarDecl017'/1]).
-export(['VarDecl018'/1]).
-export(['VarDecl019'/1]).
-export(['VarDecl020'/1]).
-export(['VarDecl021'/1]).
-export(['VarDecl022'/1]).
-export(['VarDecl023'/1]).
-export(['VarDecl024'/1]).
-export(['VarDecl025'/1]).
-export(['VarDecl026'/1]).
-export(['VarDecl027'/1]).
-export(['VarDecl028'/1]).
-export(['VarDecl029'/1]).
-export(['VarDecl030'/1]).
-export(['VarDecl031'/1]).
-export(['VarDecl032'/1]).
-export(['VarDecl033'/1]).
-export(['VarDecl034'/1]).
-export(['VarDecl035'/1]).
-export(['VarDecl036'/1]).
-export(['VarDecl037'/1]).
-export(['VarDecl038'/1]).
-export(['VarDecl039'/1]).
-export(['VarDecl040'/1]).
-export(['VarDecl041'/1]).
-export(['VarDecl042'/1]).
-export(['VarDecl043'/1]).
-export(['VarDecl044'/1]).
-export(['VarDecl045'/1]).
-export(['VarDecl046'/1]).
-export(['VarDecl047'/1]).
-export(['VarDecl048'/1]).
-export(['VarDecl049'/1]).
-export(['VarDecl050'/1]).
-export(['VarDecl051'/1]).
-export(['VarDecl052'/1]).
-export(['VarDecl053'/1]).
-export(['VarDecl054'/1]).
-export(['VarDecl055'/1]).
-export(['VarDecl056'/1]).
-export(['VarDecl057'/1]).
-export(['VarDecl058'/1]).
-export(['VarDecl059'/1]).
-export(['VarDecl060'/1]).
-export(['VarDecl061'/1]).
-export(['VarDecl062'/1]).
-export(['VarDecl063'/1]).
-export(['VarDecl064'/1]).
-export(['vardeclerr'/1]).
-export(['vardeclerr-1'/1]).
-export(['internalvar-2'/1]).
-export(['K2-InternalVariablesWithout-1'/1]).
-export(['K2-InternalVariablesWithout-1a'/1]).
-export(['K2-InternalVariablesWithout-1b'/1]).
-export(['K2-InternalVariablesWithout-1c'/1]).
-export(['K2-InternalVariablesWithout-2'/1]).
-export(['K2-InternalVariablesWithout-2a'/1]).
-export(['K2-InternalVariablesWithout-3'/1]).
-export(['K2-InternalVariablesWithout-3a'/1]).
-export(['K2-InternalVariablesWithout-4'/1]).
-export(['K2-InternalVariablesWithout-4a'/1]).
-export(['K2-InternalVariablesWithout-5'/1]).
-export(['K2-InternalVariablesWithout-5a'/1]).
-export(['K2-InternalVariablesWithout-6'/1]).
-export(['K2-InternalVariablesWithout-6a'/1]).
-export(['K2-InternalVariablesWithout-7'/1]).
-export(['K2-InternalVariablesWithout-7a'/1]).
-export(['K2-InternalVariablesWithout-8'/1]).
-export(['K2-InternalVariablesWithout-8a'/1]).
-export(['K2-InternalVariablesWithout-9'/1]).
-export(['K2-InternalVariablesWithout-9a'/1]).
-export(['K2-InternalVariablesWithout-10'/1]).
-export(['K2-InternalVariablesWithout-11'/1]).
-export(['K2-InternalVariablesWithout-12'/1]).
-export(['K2-InternalVariablesWithout-13'/1]).
-export(['K2-InternalVariablesWithout-14'/1]).
-export(['K2-InternalVariablesWithout-15'/1]).
-export(['vardeclwithtype-1'/1]).
-export(['vardeclwithtype-2'/1]).
-export(['vardeclwithtype-3'/1]).
-export(['vardeclwithtype-4'/1]).
-export(['vardeclwithtype-5'/1]).
-export(['vardeclwithtype-6'/1]).
-export(['vardeclwithtype-7'/1]).
-export(['vardeclwithtype-8'/1]).
-export(['vardeclwithtype-9'/1]).
-export(['vardeclwithtype-10'/1]).
-export(['vardeclwithtype-11'/1]).
-export(['vardeclwithtype-12'/1]).
-export(['vardeclwithtype-13'/1]).
-export(['vardeclwithtype-14'/1]).
-export(['vardeclwithtype-15a'/1]).
-export(['vardeclwithtype-15b'/1]).
-export(['vardeclwithtype-16'/1]).
-export(['vardeclwithtype-17'/1]).
-export(['vardeclwithtype-18'/1]).
-export(['vardeclwithtype-19'/1]).
-export(['vardeclwithtype-20'/1]).
-export(['vardeclwithtype-21'/1]).
-export(['vardeclwithtype-22'/1]).
-export(['internalvar-1'/1]).
-export(['K-InternalVariablesWith-1'/1]).
-export(['K-InternalVariablesWith-2'/1]).
-export(['K-InternalVariablesWith-3'/1]).
-export(['K-InternalVariablesWith-4'/1]).
-export(['K-InternalVariablesWith-5'/1]).
-export(['K-InternalVariablesWith-6a'/1]).
-export(['K-InternalVariablesWith-6b'/1]).
-export(['K-InternalVariablesWith-7'/1]).
-export(['K-InternalVariablesWith-8'/1]).
-export(['K-InternalVariablesWith-9a'/1]).
-export(['K-InternalVariablesWith-9b'/1]).
-export(['K-InternalVariablesWith-10'/1]).
-export(['K-InternalVariablesWith-11'/1]).
-export(['K-InternalVariablesWith-12'/1]).
-export(['K-InternalVariablesWith-13'/1]).
-export(['K-InternalVariablesWith-14'/1]).
-export(['K-InternalVariablesWith-15a'/1]).
-export(['K-InternalVariablesWith-15b'/1]).
-export(['K-InternalVariablesWith-16'/1]).
-export(['K-InternalVariablesWith-16a'/1]).
-export(['K-InternalVariablesWith-17'/1]).
-export(['K-InternalVariablesWith-17a'/1]).
-export(['K-InternalVariablesWith-18'/1]).
-export(['K-InternalVariablesWith-18a'/1]).
-export(['K-InternalVariablesWith-19'/1]).
-export(['K-InternalVariablesWith-19a'/1]).
-export(['K-InternalVariablesWith-20'/1]).
-export(['K-InternalVariablesWith-20a'/1]).
-export(['K-InternalVariablesWith-21'/1]).
-export(['K2-InternalVariablesWith-1'/1]).

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
        {group, group_5},
        {group, group_6}
    ].

groups() ->
    [
        {group_0, [parallel], [
            'VarDecl001',
            'VarDecl002',
            'VarDecl003',
            'VarDecl004',
            'VarDecl005',
            'VarDecl006',
            'VarDecl007',
            'VarDecl008',
            'VarDecl009',
            'VarDecl010',
            'VarDecl011',
            'VarDecl012',
            'VarDecl013',
            'VarDecl014',
            'VarDecl015',
            'VarDecl016',
            'VarDecl017',
            'VarDecl018',
            'VarDecl019',
            'VarDecl020',
            'VarDecl021',
            'VarDecl022',
            'VarDecl023'
        ]},
        {group_1, [parallel], [
            'VarDecl024',
            'VarDecl025',
            'VarDecl026',
            'VarDecl027',
            'VarDecl028',
            'VarDecl029',
            'VarDecl030',
            'VarDecl031',
            'VarDecl032',
            'VarDecl033',
            'VarDecl034',
            'VarDecl035',
            'VarDecl036',
            'VarDecl037',
            'VarDecl038',
            'VarDecl039',
            'VarDecl040',
            'VarDecl041',
            'VarDecl042',
            'VarDecl043',
            'VarDecl044',
            'VarDecl045',
            'VarDecl046',
            'VarDecl047'
        ]},
        {group_2, [parallel], [
            'VarDecl048',
            'VarDecl049',
            'VarDecl050',
            'VarDecl051',
            'VarDecl052',
            'VarDecl053',
            'VarDecl054',
            'VarDecl055',
            'VarDecl056',
            'VarDecl057',
            'VarDecl058',
            'VarDecl059',
            'VarDecl060',
            'VarDecl061',
            'VarDecl062',
            'VarDecl063',
            'VarDecl064',
            'vardeclerr',
            'vardeclerr-1',
            'internalvar-2',
            'K2-InternalVariablesWithout-1',
            'K2-InternalVariablesWithout-1a',
            'K2-InternalVariablesWithout-1b',
            'K2-InternalVariablesWithout-1c'
        ]},
        {group_3, [parallel], [
            'K2-InternalVariablesWithout-2',
            'K2-InternalVariablesWithout-2a',
            'K2-InternalVariablesWithout-3',
            'K2-InternalVariablesWithout-3a',
            'K2-InternalVariablesWithout-4',
            'K2-InternalVariablesWithout-4a',
            'K2-InternalVariablesWithout-5',
            'K2-InternalVariablesWithout-5a',
            'K2-InternalVariablesWithout-6',
            'K2-InternalVariablesWithout-6a',
            'K2-InternalVariablesWithout-7',
            'K2-InternalVariablesWithout-7a',
            'K2-InternalVariablesWithout-8',
            'K2-InternalVariablesWithout-8a',
            'K2-InternalVariablesWithout-9',
            'K2-InternalVariablesWithout-9a',
            'K2-InternalVariablesWithout-10',
            'K2-InternalVariablesWithout-11',
            'K2-InternalVariablesWithout-12',
            'K2-InternalVariablesWithout-13',
            'K2-InternalVariablesWithout-14',
            'K2-InternalVariablesWithout-15',
            'vardeclwithtype-1',
            'vardeclwithtype-2'
        ]},
        {group_4, [parallel], [
            'vardeclwithtype-3',
            'vardeclwithtype-4',
            'vardeclwithtype-5',
            'vardeclwithtype-6',
            'vardeclwithtype-7',
            'vardeclwithtype-8',
            'vardeclwithtype-9',
            'vardeclwithtype-10',
            'vardeclwithtype-11',
            'vardeclwithtype-12',
            'vardeclwithtype-13',
            'vardeclwithtype-14',
            'vardeclwithtype-15a',
            'vardeclwithtype-15b',
            'vardeclwithtype-16',
            'vardeclwithtype-17',
            'vardeclwithtype-18',
            'vardeclwithtype-19',
            'vardeclwithtype-20',
            'vardeclwithtype-21',
            'vardeclwithtype-22',
            'internalvar-1',
            'K-InternalVariablesWith-1',
            'K-InternalVariablesWith-2'
        ]},
        {group_5, [parallel], [
            'K-InternalVariablesWith-3',
            'K-InternalVariablesWith-4',
            'K-InternalVariablesWith-5',
            'K-InternalVariablesWith-6a',
            'K-InternalVariablesWith-6b',
            'K-InternalVariablesWith-7',
            'K-InternalVariablesWith-8',
            'K-InternalVariablesWith-9a',
            'K-InternalVariablesWith-9b',
            'K-InternalVariablesWith-10',
            'K-InternalVariablesWith-11',
            'K-InternalVariablesWith-12',
            'K-InternalVariablesWith-13',
            'K-InternalVariablesWith-14',
            'K-InternalVariablesWith-15a',
            'K-InternalVariablesWith-15b',
            'K-InternalVariablesWith-16',
            'K-InternalVariablesWith-16a',
            'K-InternalVariablesWith-17',
            'K-InternalVariablesWith-17a',
            'K-InternalVariablesWith-18',
            'K-InternalVariablesWith-18a',
            'K-InternalVariablesWith-19',
            'K-InternalVariablesWith-19a'
        ]},
        {group_6, [parallel], [
            'K-InternalVariablesWith-20',
            'K-InternalVariablesWith-20a',
            'K-InternalVariablesWith-21',
            'K2-InternalVariablesWith-1'
        ]}
    ].

environment('bib', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "../docs/bib.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ];
environment('bib2', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "../op/union/bib2.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ].

'VarDecl001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x := \"\" ; $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl001.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'VarDecl002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x := '' ; $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl002.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'VarDecl003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x := 'a string' ; $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl003.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "a string") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'VarDecl004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x := \"a string\" ; $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl004.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "a string") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'VarDecl005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x := \"This is a string, isn't it?\" ; $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl005.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "This is a string, isn't it?") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'VarDecl006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x := 'This is a \"String\"' ; $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl006.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "This is a \"String\"") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'VarDecl007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x := \"a \"\" or a ' delimits a string literal\" ; $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl007.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "a \" or a ' delimits a string literal") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'VarDecl008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x := 'a \" or a '' delimits a string literal' ; $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl008.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "a \" or a ' delimits a string literal") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'VarDecl009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x := '&lt;bold&gt;A sample element.&lt;/bold&gt;' ; $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl009.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "<bold>A sample element.</bold>") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'VarDecl010'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x := 0 ; $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl010.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'VarDecl011'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x := 1 ; $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl011.xq"), Qry1),
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

'VarDecl012'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x := -1 ; $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl012.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "-1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'VarDecl013'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x := +1 ; $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl013.xq"), Qry1),
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

'VarDecl014'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x := 1.23 ; $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl014.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1.23") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'VarDecl015'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x := -1.23 ; $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl015.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-1.23") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'VarDecl016'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x := 1.2e5 ; $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl016.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "120000") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'VarDecl017'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x := -1.2E5 ; $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl017.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "-120000") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'VarDecl018'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x := 0.0E0 ; $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl018.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'VarDecl019'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x := 1e-5 ; $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl019.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "0.00001") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'VarDecl020'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x := 9.999999999999999; $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl020.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "9.999999999999999") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'VarDecl021'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x := -10000000 ; $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl021.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "-10000000") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'VarDecl022'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x := 1 to 10 ; $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl022.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1 2 3 4 5 6 7 8 9 10") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'VarDecl023'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x := xs:double('NaN'); $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl023.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "NaN") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'VarDecl024'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x := xs:double('INF'); $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl024.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "INF") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'VarDecl025'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x := xs:double('-INF'); $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl025.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-INF") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'VarDecl026'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x := fn:false() ; $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl026.xq"), Qry1),
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

'VarDecl027'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x := false(); $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl027.xq"), Qry1),
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

'VarDecl028'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x := fn:true() ; $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl028.xq"), Qry1),
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

'VarDecl029'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x := true() ; $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl029.xq"), Qry1),
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

'VarDecl030'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x := true(); $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl030.xq"), Qry1),
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

'VarDecl031'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x := 2+2 ; $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl031.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "4") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'VarDecl032'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x := 2*2 ; $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl032.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "4") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'VarDecl033'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x := 3-2 ; $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl033.xq"), Qry1),
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

'VarDecl034'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x := 3 div 2 ; $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl034.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1.5") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'VarDecl035'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x := 3 mod 2 ; $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl035.xq"), Qry1),
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

'VarDecl036'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x := 3 idiv 2 ; $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl036.xq"), Qry1),
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

'VarDecl037'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x := -1.7976931348623157E308 ; $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl037.xq"), Qry1),
            xqerl:run(Mod)
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

'VarDecl038'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x := xs:double(\"-1.7976931348623157E308\") ; $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl038.xq"), Qry1),
            xqerl:run(Mod)
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

'VarDecl039'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x := -999999999999999999 ; $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl039.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "-999999999999999999") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'VarDecl040'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x := xs:decimal(\"-999999999999999999\") ; $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl040.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "-999999999999999999") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'VarDecl041'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x := 999999999999999999 ; $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl041.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "999999999999999999") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'VarDecl042'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x := xs:decimal(\"999999999999999999\") ; $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl042.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "999999999999999999") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'VarDecl043'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x := -3.4028235E38 ; $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl043.xq"), Qry1),
            xqerl:run(Mod)
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

'VarDecl044'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x := xs:float(\"-3.4028235E38\") ; $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl044.xq"), Qry1),
            xqerl:run(Mod)
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

'VarDecl045'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x := xs:date(\"1970-01-01Z\") ; $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl045.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1970-01-01Z") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'VarDecl046'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare variable $x := xs:date(\"1970-01-01Z\") + xs:dayTimeDuration(\"P31DT23H59M59S\") ; $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl046.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1970-02-01Z") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'VarDecl047'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x := xs:time(\"08:03:35Z\") ; $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl047.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "08:03:35Z") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'VarDecl048'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x := xs:time(\"08:03:35Z\") + xs:dayTimeDuration(\"P0DT0H0M0S\") ; $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl048.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "08:03:35Z") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'VarDecl049'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x := xs:dateTime(\"2030-12-31T23:59:59Z\") ; $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl049.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "2030-12-31T23:59:59Z") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'VarDecl050'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x := (1,2,3) ; $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl050.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1 2 3") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'VarDecl051'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x := (xs:string(\"a\") , (), \"xyz\") ; $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl051.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "a xyz") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'VarDecl052'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x := (xs:string(\"a\") , xs:anyURI(\"www.example.com\")) ; $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl052.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "a www.example.com") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'VarDecl053'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x := (xs:float(\"INF\") , xs:double(\"NaN\")) ; $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl053.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "INF NaN") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'VarDecl054'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare variable $x := (xs:boolean(\"true\") , xs:boolean(\"0\"), xs:integer(\"0\")) ; $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl054.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "true false 0") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'VarDecl055'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare variable $x := (xs:date(\"1993-03-31\") , xs:boolean(\"true\"), xs:string(\"abc\")) ; $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl055.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1993-03-31 true abc") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'VarDecl056'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare variable $x := (xs:time(\"12:30:00\") , xs:string(\" \") , xs:decimal(\"2.000000000000002\")) ; $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl056.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "12:30:00   2.000000000000002") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'VarDecl057'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x := ((1+1), (2-2)) ; $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl057.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "2 0") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'VarDecl058'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x := ((1,2,2),(1,2,3),(123,\"\"),(),(\"\")) ; $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl058.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1 2 2 1 2 3 123  ") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'VarDecl059'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x := (//book/price, (), (1)) ; document{$x}",
    {Env, Opts} = xqerl_test:handle_environment(environment('bib', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl059.xq"), Qry1),
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
                "<price>65.95</price><price>65.95</price><price>39.95</price><price>129.95</price>1"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'VarDecl060'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x := //Price/text() ; $x",
    {Env, Opts} = xqerl_test:handle_environment(environment('bib', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl060.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'VarDecl061'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x := /comment() ; $x",
    {Env, Opts} = xqerl_test:handle_environment(environment('bib2', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl061.xq"), Qry1),
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
                "<!-- this file is a copy of bib.xml; just adds a few comments and PI nodes for testing --><!-- Comment 1 --><!-- Comment 2 -->"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'VarDecl062'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x := /processing-instruction() ; $x",
    {Env, Opts} = xqerl_test:handle_environment(environment('bib2', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl062.xq"), Qry1),
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
                "<?PI1 Processing Instruction 1?><?PI2 Processing Instruction 2?>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'VarDecl063'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare variable $x := $y + 3;\n"
        "        declare variable $y := 17;\n"
        "        $x + 5\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl063.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "25") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'VarDecl064'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare function local:f1() {$a};\n"
        "        declare function local:f2() {$a};\n"
        "        declare variable $a := 19;      \n"
        "        local:f1() + local:f2()\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "VarDecl064.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "38") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'vardeclerr'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XQ10"}.

'vardeclerr-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      declare namespace foo = \"http://www..oracle.com/xquery/test\"; \n"
        "      declare variable $var1 as xs:integer := foo:price(xs:integer(2)); \n"
        "      declare function foo:price ($b as xs:integer) as xs:integer { $var1 + 1 }; \n"
        "      $var1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "vardeclerr-1.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQDY0054") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQDY0054 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'internalvar-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(::)declare(::)variable(::)$var(::):=(::)1(::);(::) 1(::)eq(::)1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "internalvar-2.xq"), Qry1),
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

'K2-InternalVariablesWithout-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XQ10"}.

'K2-InternalVariablesWithout-1a'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare variable $local:myVar := local:myFunction();\n"
        "        declare function local:myFunction() {\n"
        "            if (current-date() lt xs:date('1990-01-01')) then local:myFunction() else (), 1, $local:myVar\n"
        "                                             };\n"
        "        $local:myVar\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-InternalVariablesWithout-1a.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQDY0054") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQDY0054 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-InternalVariablesWithout-1b'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare variable $local:myVar := local:myFunction();\n"
        "         declare function local:myFunction() {\n"
        "           if (current-date() lt xs:date('1990-01-01')) then $local:myVar + 1 else 22\n"
        "         };\n"
        "         $local:myVar\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-InternalVariablesWithout-1b.xq"),
                Qry1
            ),
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

'K2-InternalVariablesWithout-1c'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare variable $local:myVar := local:myFunction();\n"
        "         declare function local:myFunction() {\n"
        "         if (current-date() gt xs:date('1990-01-01')) then $local:myVar + 1 else 22\n"
        "         };\n"
        "         $local:myVar\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-InternalVariablesWithout-1c.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQDY0054") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQDY0054 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-InternalVariablesWithout-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XQ10"}.

'K2-InternalVariablesWithout-2a'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare variable $local:myVar := local:myFunction();\n"
        "        declare function local:myFunction() { $local:myVar, 1, local:myFunction() };\n"
        "        $local:myVar\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-InternalVariablesWithout-2a.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQDY0054") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQDY0054 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-InternalVariablesWithout-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XQ10"}.

'K2-InternalVariablesWithout-3a'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare variable $local:myVar := local:myFunction(); declare function local:myFunction() { $local:myVar, 1, local:myFunction() }; $local:myVar",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-InternalVariablesWithout-3a.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQDY0054") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQDY0054 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-InternalVariablesWithout-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XQ10"}.

'K2-InternalVariablesWithout-4a'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare variable $local:myVar := local:myFunction(); declare function local:myFunction() { $local:myVar, 1, local:myFunction() }; $local:myVar",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-InternalVariablesWithout-4a.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQDY0054") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQDY0054 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-InternalVariablesWithout-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XQ10"}.

'K2-InternalVariablesWithout-5a'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare variable $local:myVar := local:myFunction(); declare function local:myFunction2() { $local:myVar, 1, local:myFunction() }; declare function local:myFunction() { local:myFunction2() }; $local:myVar",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-InternalVariablesWithout-5a.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQDY0054") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQDY0054 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-InternalVariablesWithout-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XQ10"}.

'K2-InternalVariablesWithout-6a'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare variable $local:myVar := local:myFunction();\n"
        "\n"
        "         declare function local:myFunction2() {\n"
        "            if (current-date() lt xs:date('1990-01-01')) then local:myFunction() else (), $local:myVar };\n"
        "\n"
        "         declare function local:myFunction() {\n"
        "         local:myFunction2() };\n"
        "\n"
        "         local:myFunction()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-InternalVariablesWithout-6a.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQDY0054") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQDY0054 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-InternalVariablesWithout-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XQ10"}.

'K2-InternalVariablesWithout-7a'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare variable $local:myVar := local:myFunction();\n"
        "         declare function local:myFunction2() {\n"
        "         if (current-date() lt xs:date('1990-01-01')) then local:myFunction() else (), $local:myVar };\n"
        "\n"
        "         declare function local:myFunction4() {\n"
        "            local:myFunction2() };\n"
        "\n"
        "         declare function local:myFunction3() {\n"
        "            local:myFunction4() };\n"
        "\n"
        "         declare function local:myFunction() {\n"
        "            local:myFunction3() };\n"
        "\n"
        "         local:myFunction()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-InternalVariablesWithout-7a.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQDY0054") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQDY0054 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-InternalVariablesWithout-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XQ10"}.

'K2-InternalVariablesWithout-8a'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare variable $local:myVar := local:myFunction();\n"
        "\n"
        "         declare function local:myFunction2() { local:myFunction4() };\n"
        "\n"
        "         declare function local:myFunction4() {\n"
        "         if (current-date() lt xs:date('1990-01-01')) then local:myFunction2() else (), $local:myVar };\n"
        "\n"
        "         declare function local:myFunction3() { local:myFunction4() };\n"
        "\n"
        "         declare function local:myFunction() { local:myFunction3() };\n"
        "\n"
        "         local:myFunction()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-InternalVariablesWithout-8a.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQDY0054") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQDY0054 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-InternalVariablesWithout-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XQ10"}.

'K2-InternalVariablesWithout-9a'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare variable $local:myVar := local:myFunc(3); declare function local:myFunc($arg) { local:myFunc($local:myVar) }; $local:myVar",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-InternalVariablesWithout-9a.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQDY0054") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQDY0054 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-InternalVariablesWithout-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare variable $local:myVar := local:myFunc(3); declare function local:myFunc($local:myVar) { $local:myVar }; local:myFunc(6)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-InternalVariablesWithout-10.xq"),
                Qry1
            ),
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

'K2-InternalVariablesWithout-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $local:myVar := local:thisFunctionDoesNotExist(); 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-InternalVariablesWithout-11.xq"),
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
                    case xqerl_test:assert_error(Res, "XPST0017") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0017 " ++ binary_to_list(F)};
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

'K2-InternalVariablesWithout-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $local:myVar := local:thisFunctionDoesNotExist(); $local:myVar",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-InternalVariablesWithout-12.xq"),
                Qry1
            ),
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

'K2-InternalVariablesWithout-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare variable $local:var1 := 1; declare variable $local:var2 := 2; declare variable $local:var3 := 3; declare variable $local:var4 := 4; declare variable $local:var5 := 5; declare variable $local:var6 := 6; declare variable $local:var7 := 7; declare variable $local:var8 := 8; declare variable $local:var9 := 9; declare variable $local:var10 := 10; declare variable $local:var11 := 11; declare variable $local:var12 := 12; declare variable $local:var13 := 13; declare variable $local:var14 := 14; declare variable $local:var15 := 15; declare variable $local:var16 := 16; declare variable $local:var17 := 17; declare variable $local:var18 := 18; declare variable $local:var19 := 19; declare variable $local:var20 := 20; deep-equal((1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20), ($local:var1, $local:var2, $local:var3, $local:var4, $local:var5, $local:var6, $local:var7, $local:var8, $local:var9, $local:var10, $local:var11, $local:var12, $local:var13, $local:var14, $local:var15, $local:var16, $local:var17, $local:var18, $local:var19, $local:var20))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-InternalVariablesWithout-13.xq"),
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

'K2-InternalVariablesWithout-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $myVar := <e>{nametest}</e>; <e/>/$myVar",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-InternalVariablesWithout-14.xq"),
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

'K2-InternalVariablesWithout-15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $var := 1 := 2; 3",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-InternalVariablesWithout-15.xq"),
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

'vardeclwithtype-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $var as xs:string := \"abc\"; $var",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "vardeclwithtype-1.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "abc") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'vardeclwithtype-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $var as xs:integer := 100; $var",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "vardeclwithtype-2.xq"), Qry1),
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

'vardeclwithtype-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $var as xs:decimal := 100; $var",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "vardeclwithtype-3.xq"), Qry1),
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

'vardeclwithtype-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $var as xs:boolean := fn:true(); $var",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "vardeclwithtype-4.xq"), Qry1),
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

'vardeclwithtype-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $var as xs:boolean := fn:false(); $var",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "vardeclwithtype-5.xq"), Qry1),
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

'vardeclwithtype-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $var as xs:float := xs:float(12.5E10); $var",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "vardeclwithtype-6.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1.25E11") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'vardeclwithtype-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $var as xs:double := xs:double(1267.43233E12); $var",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "vardeclwithtype-7.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1.26743233E15") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'vardeclwithtype-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $var as xs:anyURI := xs:anyURI(\"http://example.com\"); $var",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "vardeclwithtype-8.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "http://example.com") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'vardeclwithtype-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $var as xs:dateTime := xs:dateTime(\"1999-11-28T09:00:00Z\"); $var",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "vardeclwithtype-9.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1999-11-28T09:00:00Z") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'vardeclwithtype-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $var as xs:time := xs:time(\"11:12:00Z\"); $var",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "vardeclwithtype-10.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "11:12:00Z") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'vardeclwithtype-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $var as xs:date := xs:date(\"1999-11-28Z\"); $var",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "vardeclwithtype-11.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1999-11-28Z") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'vardeclwithtype-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare variable $var as xs:date := xs:date(\"1999-11-28Z\"); \n"
        "      	declare variable $var as xs:date := xs:date(\"1999-11-28Z\"); \n"
        "      	$var\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "vardeclwithtype-12.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0049") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0049 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'vardeclwithtype-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $var as xs:date := fn:true() and fn:true(); $var",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "vardeclwithtype-13.xq"),
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

'vardeclwithtype-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare variable $x as xs:integer := 10; declare variable $var as xs:integer := $x +1; $var",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "vardeclwithtype-14.xq"),
                Qry1
            ),
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

'vardeclwithtype-15a'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XQ10"}.

'vardeclwithtype-15b'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      declare variable $var as xs:integer := $e +1; \n"
        "      declare variable $e as xs:integer := 10;  \n"
        "      $var",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "vardeclwithtype-15b.xq"),
                Qry1
            ),
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

'vardeclwithtype-16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare namespace p1 = \"http://www.example.com\"; \n"
        "      	declare variable $p1:var as xs:integer := 10; \n"
        "      	$p1:var\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "vardeclwithtype-16.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "10") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'vardeclwithtype-17'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare namespace p1 = \"http://www.example.com\"; \n"
        "      	declare namespace p2 = \"http://www.example.com/examples\"; \n"
        "      	declare variable $p1:var as xs:integer := 10; \n"
        "      	declare variable $p2:var as xs:integer := 20; \n"
        "      	$p2:var\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "vardeclwithtype-17.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "20") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'vardeclwithtype-18'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare namespace p1 = \"http://www.example.com\"; \n"
        "      	declare namespace p2 = \"http://www.example.com\"; \n"
        "      	declare variable $p1:var as xs:integer := 10; \n"
        "      	declare variable $p2:var as xs:integer := 20; \n"
        "      	$p2:var\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "vardeclwithtype-18.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0049") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0049 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'vardeclwithtype-19'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $var as xs:integer := fn:count((10,2)); $var",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "vardeclwithtype-19.xq"),
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

'vardeclwithtype-20'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $var as xs:integer := fn:string-length(\"ABC\"); $var",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "vardeclwithtype-20.xq"),
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

'vardeclwithtype-21'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $var as xs:boolean := fn:not(fn:true()); $var",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "vardeclwithtype-21.xq"),
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

'vardeclwithtype-22'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $var as xs:boolean := fn:empty((1,2,3)); $var",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "vardeclwithtype-22.xq"),
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

'internalvar-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare(::)variable(::)$var(::)as(::)item((: :))*(::):=(::)1(::);(::) 1(::)eq(::)1(::)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "internalvar-1.xq"), Qry1),
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

'K-InternalVariablesWith-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare(::)variable(::)$local:var(::)as(::)item((: :))* :=3(::);(::)1(::)eq(::)1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-InternalVariablesWith-1.xq"),
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

'K-InternalVariablesWith-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(::)declare(::)variable(::)$local:var(::):=(::)3;(::)1(::)eq(::)1(::)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-InternalVariablesWith-2.xq"),
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

'K-InternalVariablesWith-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare variable $myVar as xs:integer := subsequence((1, 2, \"a string\"), 3, 1); $myVar eq 3",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-InternalVariablesWith-3.xq"),
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

'K-InternalVariablesWith-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $myVar as xs:gYear := 2006; true()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-InternalVariablesWith-4.xq"),
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

'K-InternalVariablesWith-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $myVar as xs:gYear := 2006; $myVar",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-InternalVariablesWith-5.xq"),
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

'K-InternalVariablesWith-6a'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XQ10"}.

'K-InternalVariablesWith-6b'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $var1 := $var2; declare variable $var2 := 2; true()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-InternalVariablesWith-6b.xq"),
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

'K-InternalVariablesWith-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable var1 := 1; 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-InternalVariablesWith-7.xq"),
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

'K-InternalVariablesWith-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $var1 = 1; 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-InternalVariablesWith-8.xq"),
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

'K-InternalVariablesWith-9a'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XQ10"}.

'K-InternalVariablesWith-9b'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $var1 := $var2; declare variable $var2 := 2; $var1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-InternalVariablesWith-9b.xq"),
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

'K-InternalVariablesWith-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare variable $prefix:var1 := 2; declare namespace prefix = \"http://example.com/myNamespace\"; true()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-InternalVariablesWith-10.xq"),
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
                    case xqerl_test:assert_error(Res, "XPST0003") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0003 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPST0081") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0081 " ++ binary_to_list(F)};
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

'K-InternalVariablesWith-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $var1 := 2; declare variable $var2 := $var1; $var2 eq 2",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-InternalVariablesWith-11.xq"),
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

'K-InternalVariablesWith-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare variable $var1 := local:myFunc(); declare function local:myFunc() { 1 }; $var1 eq 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-InternalVariablesWith-12.xq"),
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

'K-InternalVariablesWith-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare variable $var1 as xs:string := local:myFunc(); declare function local:myFunc() as xs:integer { 1 }; $var1 eq 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-InternalVariablesWith-13.xq"),
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

'K-InternalVariablesWith-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare variable $var1 as xs:string := local:myFunc(); declare function local:myFunc() { 1 }; $var1 eq 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-InternalVariablesWith-14.xq"),
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

'K-InternalVariablesWith-15a'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XQ10"}.

'K-InternalVariablesWith-15b'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $var1 := $var1; true()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-InternalVariablesWith-15b.xq"),
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

'K-InternalVariablesWith-16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XQ10"}.

'K-InternalVariablesWith-16a'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      declare variable $var := local:func1(); \n"
        "      declare function local:func1() { local:func2() }; \n"
        "      declare function local:func2() { local:func3() }; \n"
        "      declare function local:func3() { local:func4() }; \n"
        "      declare function local:func4() { $var }; \n"
        "      boolean($var)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-InternalVariablesWith-16a.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQDY0054") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQDY0054 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-InternalVariablesWith-17'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XQ10"}.

'K-InternalVariablesWith-17a'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare variable $var := local:func1(); declare function local:func1() { local:func2($var) }; declare function local:func2($arg2) { 1 }; true()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-InternalVariablesWith-17a.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQDY0054") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQDY0054 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-InternalVariablesWith-18'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XQ10"}.

'K-InternalVariablesWith-18a'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare variable $var := local:func1(); declare function local:func1() { local:func2($var) }; declare function local:func2($arg2) { $arg2 }; $var",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-InternalVariablesWith-18a.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQDY0054") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQDY0054 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-InternalVariablesWith-19'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XQ10"}.

'K-InternalVariablesWith-19a'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare variable $var2 := local:func1(); declare variable $var := ($var2 treat as xs:integer) + 1; declare function local:func1() { local:func2() }; declare function local:func2() { local:func3() }; declare function local:func3() { local:func4() }; declare function local:func4() { $var }; boolean($var)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-InternalVariablesWith-19a.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQDY0054") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQDY0054 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-InternalVariablesWith-20'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XQ10"}.

'K-InternalVariablesWith-20a'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare variable $var := local:func1(); declare function local:func1() { local:func2() }; declare function local:func2() { local:func3() }; declare variable $var2 := local:func2(); declare function local:func3() { $var2 }; boolean($var)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-InternalVariablesWith-20a.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQDY0054") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQDY0054 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-InternalVariablesWith-21'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $local:var as item() *:=3; true()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-InternalVariablesWith-21.xq"),
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

'K2-InternalVariablesWith-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $var1 as xs:string := 1 treat as item(); $var1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-InternalVariablesWith-1.xq"),
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
