-module('fn_QName_SUITE').

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

-export(['ExpandedQNameConstructFunc001'/1]).
-export(['ExpandedQNameConstructFunc002'/1]).
-export(['ExpandedQNameConstructFunc003'/1]).
-export(['ExpandedQNameConstructFunc004'/1]).
-export(['ExpandedQNameConstructFunc005'/1]).
-export(['ExpandedQNameConstructFunc006'/1]).
-export(['ExpandedQNameConstructFunc007'/1]).
-export(['ExpandedQNameConstructFunc008'/1]).
-export(['ExpandedQNameConstructFunc009'/1]).
-export(['ExpandedQNameConstructFunc010'/1]).
-export(['ExpandedQNameConstructFunc011'/1]).
-export(['ExpandedQNameConstructFunc012'/1]).
-export(['ExpandedQNameConstructFunc013'/1]).
-export(['ExpandedQNameConstructFunc014'/1]).
-export(['ExpandedQNameConstructFunc015'/1]).
-export(['ExpandedQNameConstructFunc016'/1]).
-export(['ExpandedQNameConstructFunc017'/1]).
-export(['ExpandedQNameConstructFunc018'/1]).
-export(['ExpandedQNameConstructFunc019'/1]).
-export(['ExpandedQNameConstructFunc020'/1]).
-export(['ExpandedQNameConstructFunc021'/1]).
-export(['qName-1'/1]).
-export(['K-ExpandedQNameConstructFunc-1'/1]).
-export(['K-ExpandedQNameConstructFunc-2'/1]).
-export(['K-ExpandedQNameConstructFunc-3'/1]).
-export(['K-ExpandedQNameConstructFunc-4'/1]).
-export(['K-ExpandedQNameConstructFunc-5'/1]).
-export(['K-ExpandedQNameConstructFunc-6'/1]).
-export(['K-ExpandedQNameConstructFunc-7'/1]).
-export(['K-ExpandedQNameConstructFunc-8'/1]).
-export(['K-ExpandedQNameConstructFunc-9'/1]).
-export(['K-ExpandedQNameConstructFunc-10'/1]).
-export(['K2-ExpandedQNameConstructFunc-1'/1]).
-export(['cbcl-qname-001'/1]).

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
            'ExpandedQNameConstructFunc001',
            'ExpandedQNameConstructFunc002',
            'ExpandedQNameConstructFunc003',
            'ExpandedQNameConstructFunc004',
            'ExpandedQNameConstructFunc005',
            'ExpandedQNameConstructFunc006',
            'ExpandedQNameConstructFunc007',
            'ExpandedQNameConstructFunc008',
            'ExpandedQNameConstructFunc009',
            'ExpandedQNameConstructFunc010',
            'ExpandedQNameConstructFunc011',
            'ExpandedQNameConstructFunc012',
            'ExpandedQNameConstructFunc013',
            'ExpandedQNameConstructFunc014',
            'ExpandedQNameConstructFunc015',
            'ExpandedQNameConstructFunc016',
            'ExpandedQNameConstructFunc017',
            'ExpandedQNameConstructFunc018',
            'ExpandedQNameConstructFunc019',
            'ExpandedQNameConstructFunc020',
            'ExpandedQNameConstructFunc021',
            'qName-1',
            'K-ExpandedQNameConstructFunc-1'
        ]},
        {group_1, [parallel], [
            'K-ExpandedQNameConstructFunc-2',
            'K-ExpandedQNameConstructFunc-3',
            'K-ExpandedQNameConstructFunc-4',
            'K-ExpandedQNameConstructFunc-5',
            'K-ExpandedQNameConstructFunc-6',
            'K-ExpandedQNameConstructFunc-7',
            'K-ExpandedQNameConstructFunc-8',
            'K-ExpandedQNameConstructFunc-9',
            'K-ExpandedQNameConstructFunc-10',
            'K2-ExpandedQNameConstructFunc-1',
            'cbcl-qname-001'
        ]}
    ].

environment('fsx', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "../prod/ForClause/fsx.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ].

'ExpandedQNameConstructFunc001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "element {fn:QName(\"http://www.example.com/example\", \"person\")}{ \"test\" }",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "ExpandedQNameConstructFunc001.xq"),
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
                "<person xmlns=\"http://www.example.com/example\">test</person>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ExpandedQNameConstructFunc002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "element {fn:QName(\"http://www.example.com/example\", \"ht:person\")}{ \"test\" }",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "ExpandedQNameConstructFunc002.xq"),
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
                "<ht:person xmlns:ht=\"http://www.example.com/example\">test</ht:person>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ExpandedQNameConstructFunc003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "element {fn:QName(\"\", \"person\")}{ \"test\" }",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "ExpandedQNameConstructFunc003.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<person>test</person>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ExpandedQNameConstructFunc004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "element {fn:QName((), \"person\")}{ \"test\" }",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "ExpandedQNameConstructFunc004.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<person>test</person>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ExpandedQNameConstructFunc005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:QName(\"\", \"ht:person\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "ExpandedQNameConstructFunc005.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOCA0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOCA0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ExpandedQNameConstructFunc006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:QName((), \"ht:person\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "ExpandedQNameConstructFunc006.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOCA0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOCA0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ExpandedQNameConstructFunc007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:QName(\"http://www.example.com/example\", \"1person\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "ExpandedQNameConstructFunc007.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOCA0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOCA0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ExpandedQNameConstructFunc008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:QName(\"http://www.example.com/example\", \"@person\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "ExpandedQNameConstructFunc008.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOCA0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOCA0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ExpandedQNameConstructFunc009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:QName(\"http://www.example.com/example\", \"-person\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "ExpandedQNameConstructFunc009.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOCA0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOCA0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ExpandedQNameConstructFunc010'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:QName(\"http://www.example.com/example\", \"<person>\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "ExpandedQNameConstructFunc010.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOCA0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOCA0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ExpandedQNameConstructFunc011'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:QName(\"http://www.example.com/example\", \":person\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "ExpandedQNameConstructFunc011.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOCA0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOCA0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ExpandedQNameConstructFunc012'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:QName(\"http://www.example.com/example\", \"person:\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "ExpandedQNameConstructFunc012.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOCA0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOCA0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ExpandedQNameConstructFunc013'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:QName(\"person\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "ExpandedQNameConstructFunc013.xq"),
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

'ExpandedQNameConstructFunc014'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:QName(\"http://www.example.com/example\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "ExpandedQNameConstructFunc014.xq"),
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

'ExpandedQNameConstructFunc015'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:QName(\"http://www.example.com/example\", xs:integer(\"100\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "ExpandedQNameConstructFunc015.xq"),
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

'ExpandedQNameConstructFunc016'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:QName( xs:integer(\"100\"), \"person\" )",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "ExpandedQNameConstructFunc016.xq"),
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

'ExpandedQNameConstructFunc017'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "element {fn:QName( \"http://www.example.com/example\", string((//FolderName)[2]) )}{ \"test\" }",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "ExpandedQNameConstructFunc017.xq"),
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
                "<Folder00000000001 xmlns=\"http://www.example.com/example\">test</Folder00000000001>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ExpandedQNameConstructFunc018'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "element {fn:QName( concat('http://www.example.com/', string((//FolderName)[2])), \"people\" )}{ \"test\" }",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "ExpandedQNameConstructFunc018.xq"),
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
                "<people xmlns=\"http://www.example.com/Folder00000000001\">test</people>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ExpandedQNameConstructFunc019'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "element {fn:QName( \"http://www.example.com/example\", \"\" )}{ \"test\" }",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "ExpandedQNameConstructFunc019.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOCA0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOCA0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ExpandedQNameConstructFunc020'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare namespace ht=\"http://www.example.com/example\"; element {fn:QName( \"http://www.example.com/another-example\", \"ht:person\" )}{ \"test\" }",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "ExpandedQNameConstructFunc020.xq"),
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
                "<ht:person xmlns:ht=\"http://www.example.com/another-example\">test</ht:person>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ExpandedQNameConstructFunc021'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare namespace ht=\"http://www.example.com/example\"; element {fn:QName( \"http://www.example.com/example\", \"ht2:person\" )}{ \"test\" }",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "ExpandedQNameConstructFunc021.xq"),
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
                "<ht2:person xmlns:ht2=\"http://www.example.com/example\">test</ht2:person>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'qName-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:QName(20)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "qName-1.xq"), Qry1),
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

'K-ExpandedQNameConstructFunc-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "QName()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ExpandedQNameConstructFunc-1.xq"),
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

'K-ExpandedQNameConstructFunc-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "QName(\"http://www.example.com/\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ExpandedQNameConstructFunc-2.xq"),
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

'K-ExpandedQNameConstructFunc-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "QName(\"http://www.example.com/\", \"ncname\", \"error\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ExpandedQNameConstructFunc-3.xq"),
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

'K-ExpandedQNameConstructFunc-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "QName(\"http://www.w3.org/2005/xpath-functions\", \"prefix:local\") eq xs:QName(\"fn:local\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ExpandedQNameConstructFunc-4.xq"),
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

'K-ExpandedQNameConstructFunc-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "QName(\"http://www.example.com/\", \"1asd:error\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ExpandedQNameConstructFunc-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOCA0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOCA0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-ExpandedQNameConstructFunc-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "QName(\"\", \"error:ncname\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ExpandedQNameConstructFunc-6.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOCA0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOCA0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-ExpandedQNameConstructFunc-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "QName((), \"error:ncname\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ExpandedQNameConstructFunc-7.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOCA0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOCA0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-ExpandedQNameConstructFunc-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "QName(\"my:qName\", \"http://example.com/MyErrorNS\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ExpandedQNameConstructFunc-8.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOCA0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOCA0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-ExpandedQNameConstructFunc-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "QName(\"\", \"local\") eq xs:QName(\"local\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ExpandedQNameConstructFunc-9.xq"),
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

'K-ExpandedQNameConstructFunc-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "QName((), \"local\") eq xs:QName(\"local\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ExpandedQNameConstructFunc-10.xq"),
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

'K2-ExpandedQNameConstructFunc-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:QName((), ())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ExpandedQNameConstructFunc-1.xq"),
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

'cbcl-qname-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:QName('', ' ')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-qname-001.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOCA0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOCA0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.
