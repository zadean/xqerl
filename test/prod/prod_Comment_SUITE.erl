-module('prod_Comment_SUITE').

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

-export(['XQueryComment001'/1]).
-export(['XQueryComment002'/1]).
-export(['XQueryComment003'/1]).
-export(['XQueryComment004'/1]).
-export(['XQueryComment005'/1]).
-export(['XQueryComment006'/1]).
-export(['XQueryComment007'/1]).
-export(['XQueryComment008'/1]).
-export(['XQueryComment009'/1]).
-export(['XQueryComment010'/1]).
-export(['XQueryComment011'/1]).
-export(['XQueryComment012'/1]).
-export(['XQueryComment013'/1]).
-export(['XQueryComment014'/1]).
-export(['XQueryComment015'/1]).
-export(['XQueryComment016'/1]).
-export(['XQueryComment017'/1]).
-export(['XQueryComment018'/1]).
-export(['XQueryComment019'/1]).
-export(['XQueryComment020'/1]).
-export(['K-XQueryComment-1'/1]).
-export(['K-XQueryComment-2'/1]).
-export(['K-XQueryComment-3'/1]).
-export(['K-XQueryComment-4'/1]).
-export(['K-XQueryComment-5'/1]).
-export(['K-XQueryComment-6'/1]).
-export(['K-XQueryComment-7'/1]).
-export(['K-XQueryComment-8'/1]).
-export(['K-XQueryComment-9'/1]).
-export(['K-XQueryComment-10'/1]).
-export(['K-XQueryComment-11'/1]).
-export(['K-XQueryComment-12'/1]).
-export(['K-XQueryComment-13'/1]).
-export(['K-XQueryComment-14'/1]).
-export(['K-XQueryComment-15'/1]).
-export(['K-XQueryComment-16'/1]).
-export(['K-XQueryComment-17'/1]).
-export(['K-XQueryComment-18'/1]).
-export(['K-XQueryComment-19'/1]).
-export(['K-XQueryComment-20'/1]).
-export(['K2-XQueryComment-1'/1]).
-export(['K2-XQueryComment-2'/1]).
-export(['K2-XQueryComment-3'/1]).
-export(['K2-XQueryComment-4'/1]).
-export(['K2-XQueryComment-5'/1]).

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
            'XQueryComment001',
            'XQueryComment002',
            'XQueryComment003',
            'XQueryComment004',
            'XQueryComment005',
            'XQueryComment006',
            'XQueryComment007',
            'XQueryComment008',
            'XQueryComment009',
            'XQueryComment010',
            'XQueryComment011',
            'XQueryComment012',
            'XQueryComment013',
            'XQueryComment014',
            'XQueryComment015',
            'XQueryComment016',
            'XQueryComment017',
            'XQueryComment018',
            'XQueryComment019',
            'XQueryComment020',
            'K-XQueryComment-1',
            'K-XQueryComment-2',
            'K-XQueryComment-3'
        ]},
        {group_1, [parallel], [
            'K-XQueryComment-4',
            'K-XQueryComment-5',
            'K-XQueryComment-6',
            'K-XQueryComment-7',
            'K-XQueryComment-8',
            'K-XQueryComment-9',
            'K-XQueryComment-10',
            'K-XQueryComment-11',
            'K-XQueryComment-12',
            'K-XQueryComment-13',
            'K-XQueryComment-14',
            'K-XQueryComment-15',
            'K-XQueryComment-16',
            'K-XQueryComment-17',
            'K-XQueryComment-18',
            'K-XQueryComment-19',
            'K-XQueryComment-20',
            'K2-XQueryComment-1',
            'K2-XQueryComment-2',
            'K2-XQueryComment-3',
            'K2-XQueryComment-4',
            'K2-XQueryComment-5'
        ]}
    ].

environment('fsx_NS', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "ForClause/fsx_NS.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, [{"http://www.example.com/filesystem", "fs"}]},
        {schemas, []},
        {resources, []},
        {modules, []}
    ];
environment('TreeEmpty', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "AxisStep/TreeEmpty.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ].

'XQueryComment001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(: Name: XQueryComment001 :)\n"
        "(: Description: Simple use case for XQuery comments :)\n"
        "\n"
        "\n"
        "(: This is a comment :)\n"
        "<result/>\n"
        "\n",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "XQueryComment001.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<result/>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'XQueryComment002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(: Name: XQueryComment002 :)\n"
        "(: Description: Simple use case for XQuery comments :)\n"
        "\n"
        "\n"
        "\n"
        "\n"
        "(: This is a comment :)\n"
        "(//fs:Folder)[1]/fs:File[1]/fs:FileName\n",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx_NS', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "XQueryComment002.xq"), Qry1),
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
                "<fs:FileName xmlns:fs=\"http://www.example.com/filesystem\">File00000000000</fs:FileName>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'XQueryComment003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(: Name: XQueryComment003 :)\n"
        "(: Description: Simple use case for XQuery comment containing '-' :)\n"
        "\n"
        "\n"
        "(:This is a comment-:)\n"
        "<result/>\n",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "XQueryComment003.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<result/>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'XQueryComment004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(: Name: XQueryComment004 :)\n"
        "(: Description: Empty comment :)\n"
        "\n"
        "\n"
        "(::)\n"
        "<result/>\n",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "XQueryComment004.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<result/>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'XQueryComment005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(: Name: XQueryComment004 :)\n"
        "(: Description: Comment containing only '-' :)\n"
        "\n"
        "\n"
        "(:-:)\n"
        "<result/>\n",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "XQueryComment005.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<result/>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'XQueryComment006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(: Name: XQueryComment006 :)\n"
        "(: Description: Comment containing ':' :)\n"
        "\n"
        "\n"
        "(: this is a comment ::)\n"
        "<result/>\n",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "XQueryComment006.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<result/>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'XQueryComment007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(: Name: XQueryComment007 :)\n"
        "(: Description: Comment containing ')' :)\n"
        "\n"
        "\n"
        "(: this is a comment ):)\n"
        "<result/>\n",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "XQueryComment007.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<result/>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'XQueryComment008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(: Name: XQueryComment008 :)\n"
        "(: Description: Simple example of embedded comments :)\n"
        "\n"
        "\n"
        "(: this is a comment (: this is an embedded comment :):)\n"
        "<result/>\n",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "XQueryComment008.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<result/>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'XQueryComment009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(: Name: XQueryComment009 :)\n"
        "(: Description: Comments inside a conditional expression :)\n"
        "\n"
        "\n"
        "\n"
        "if (:test (: yada (: neato :) :) :) (/fs:MyComputer) \n"
        "	then (: yada :) \"true\"\n"
        "	else \"false\"\n",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx_NS', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "XQueryComment009.xq"), Qry1),
            xqerl:run(Mod, Opts)
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

'XQueryComment010'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "(: Name: XQueryComment010 :)\n"
        "(: Description: Comments inside a conditional expression :)\n"
        "if (: comment :) \n"
        "  ( //fs:Folder[1]/fs:FolderName/text() = \"Folder00000000000\" ) \n"
        "then (: this is the then case :) ( true() )\n"
        "else (: this is the else case :) ( false() )\n"
        "\n",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx_NS', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "XQueryComment010.xq"), Qry1),
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

'XQueryComment011'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(: Name: XQueryComment011 :)\n"
        "(: Description: Comments inside a conditional expression :)\n"
        "\n"
        "\n"
        "\n"
        "if (:test:)(:t2:)(:t3:) (/fs:MyComputer) \n"
        "	then \"true\"\n"
        "	else \"false\"\n"
        "\n",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx_NS', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "XQueryComment011.xq"), Qry1),
            xqerl:run(Mod, Opts)
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

'XQueryComment012'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(: Name: XQueryComment012 :)\n"
        "(: Description: Comments that looks like a function call :)\n"
        "\n"
        "\n"
        "/south(: test :)\n"
        "\n",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeEmpty', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "XQueryComment012.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<south mark=\"s0\" />") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'XQueryComment013'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(: Name: XQueryComment013 :)\n"
        "(: Description: Comments inside a sequence expression :)\n"
        "\n"
        "\n"
        "(1, 2, (: comment :) 3, 4)\n"
        "\n",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "XQueryComment013.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1 2 3 4") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'XQueryComment014'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(: Name: XQueryComment014 :)\n"
        "(: Description: Comments inside a cast expression :)\n"
        "\n"
        "\n"
        "\"10\" cast as (: type comment :) xs:integer ?\n"
        "\n",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "XQueryComment014.xq"), Qry1),
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

'XQueryComment015'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(: Name: XQueryComment015 :)\n"
        "(: Description: Incorrect comment syntax :)\n"
        "\n"
        "\n"
        "(! Wrong syntax :)\n"
        "<empty/>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "XQueryComment015.xq"), Qry1),
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

'XQueryComment016'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(: Name: XQueryComment016 :)\n"
        "(: Description: Invalid comment :)\n"
        "\n"
        "\n"
        "(:)\n"
        "<empty/>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "XQueryComment016.xq"), Qry1),
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

'XQueryComment017'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(: Name: XQueryComment017 :)\n"
        "(: Description: Invalid comment :)\n"
        "\n"
        "\n"
        "(:: )\n"
        "<empty/>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "XQueryComment017.xq"), Qry1),
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

'XQueryComment018'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(: Name: XQueryComment018 :)\n"
        "(: Description: Invalid comment :)\n"
        "\n"
        "\n"
        "-- Wrong comment format\n"
        "<empty/>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "XQueryComment018.xq"), Qry1),
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

'XQueryComment019'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(: Name: XQueryComment019 :)\n"
        "(: Description: Old style comment syntax :)\n"
        "\n"
        "\n"
        "{-- Wrong comment format --}\n"
        "<empty/>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "XQueryComment019.xq"), Qry1),
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

'XQueryComment020'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(: Name: XQueryComment020 :)\n"
        "(: Description: Comment containing an enclosed expression :)\n"
        "\n"
        "\n"
        "(: { \"comment\" } :)\n"
        "<result/>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "XQueryComment020.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<result/>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-XQueryComment-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(:*******************************************************:)\n"
        "(: Test: K-XQueryComment-1                               :)\n"
        "(: Written by: Frans Englich                             :)\n"
        "(: Date: 2007-11-22T11:31:22+01:00                       :)\n"
        "(: Purpose: A test whose essence is: `(3(: comment inbetween :)- 1) eq 2`. :)\n"
        "(:*******************************************************:)\n"
        "(3(: comment inbetween :)- 1) eq 2",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-XQueryComment-1.xq"), Qry1),
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

'K-XQueryComment-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(:*******************************************************:)\n"
        "(: Test: K-XQueryComment-2                               :)\n"
        "(: Written by: Frans Englich                             :)\n"
        "(: Date: 2007-11-22T11:31:22+01:00                       :)\n"
        "(: Purpose: A test whose essence is: `1 (: a (: nested :) comment :) eq 1`. :)\n"
        "(:*******************************************************:)\n"
        "1 (: a (: nested :) comment :) eq 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-XQueryComment-2.xq"), Qry1),
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

'K-XQueryComment-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(:*******************************************************:)\n"
        "(: Test: K-XQueryComment-3                               :)\n"
        "(: Written by: Frans Englich                             :)\n"
        "(: Date: 2007-11-22T11:31:22+01:00                       :)\n"
        "(: Purpose: A test whose essence is: `1 (: comment (: inside :) comment :) eq 1`. :)\n"
        "(:*******************************************************:)\n"
        "1 (: comment (: inside :) comment :) eq 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-XQueryComment-3.xq"), Qry1),
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

'K-XQueryComment-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(:*******************************************************:)\n"
        "(: Test: K-XQueryComment-4                               :)\n"
        "(: Written by: Frans Englich                             :)\n"
        "(: Date: 2007-11-22T11:31:22+01:00                       :)\n"
        "(: Purpose: Comparison of two string literals, whose content reminds of comments. :)\n"
        "(:*******************************************************:)\n"
        "\"reminds of a comment :)\" eq\n"
        "		    \"reminds of a comment :)\"",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-XQueryComment-4.xq"), Qry1),
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

'K-XQueryComment-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(:*******************************************************:)\n"
        "(: Test: K-XQueryComment-5                               :)\n"
        "(: Written by: Frans Englich                             :)\n"
        "(: Date: 2007-11-22T11:31:22+01:00                       :)\n"
        "(: Purpose: A test whose essence is: `5 instance (: strange place for a comment :) of item()`. :)\n"
        "(:*******************************************************:)\n"
        "5 instance (: strange place for a comment :) of item()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-XQueryComment-5.xq"), Qry1),
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

'K-XQueryComment-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(:*******************************************************:)\n"
        "(: Test: K-XQueryComment-6                               :)\n"
        "(: Written by: Frans Englich                             :)\n"
        "(: Date: 2007-11-22T11:31:22+01:00                       :)\n"
        "(: Purpose: A test whose essence is: `1 (: simple comment :) eq 1`. :)\n"
        "(:*******************************************************:)\n"
        "1 (: simple comment :) eq 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-XQueryComment-6.xq"), Qry1),
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

'K-XQueryComment-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(:*******************************************************:)\n"
        "(: Test: K-XQueryComment-7                               :)\n"
        "(: Written by: Frans Englich                             :)\n"
        "(: Date: 2007-11-22T11:31:22+01:00                       :)\n"
        "(: Purpose: A test whose essence is: `1 (: comment (: inside :) NEW LINE comment :) eq 1`. :)\n"
        "(:*******************************************************:)\n"
        "1 (: comment (: inside :)\n"
        "				NEW LINE comment :) eq 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-XQueryComment-7.xq"), Qry1),
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

'K-XQueryComment-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(:*******************************************************:)\n"
        "(: Test: K-XQueryComment-8                               :)\n"
        "(: Written by: Frans Englich                             :)\n"
        "(: Date: 2007-11-22T11:31:22+01:00                       :)\n"
        "(: Purpose: A test whose essence is: `(: \"recursive comments must be balanced, this one is not :)\" :)`. :)\n"
        "(:*******************************************************:)\n"
        "(: \"recursive comments must be \n"
        "	balanced, this one is not :)\" :)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-XQueryComment-8.xq"), Qry1),
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

'K-XQueryComment-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(:*******************************************************:)\n"
        "(: Test: K-XQueryComment-9                               :)\n"
        "(: Written by: Frans Englich                             :)\n"
        "(: Date: 2007-11-22T11:31:22+01:00                       :)\n"
        "(: Purpose: An empty comment inbetween the 'eq' operator and a number literal. :)\n"
        "(:*******************************************************:)\n"
        "1 eq (::)1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-XQueryComment-9.xq"), Qry1),
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

'K-XQueryComment-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(:*******************************************************:)\n"
        "(: Test: K-XQueryComment-10                              :)\n"
        "(: Written by: Frans Englich                             :)\n"
        "(: Date: 2007-11-22T11:31:22+01:00                       :)\n"
        "(: Purpose: An empty comment at the very beginning of an expression. :)\n"
        "(:*******************************************************:)\n"
        "(::) 1 eq 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-XQueryComment-10.xq"),
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

'K-XQueryComment-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(:*******************************************************:)\n"
        "(: Test: K-XQueryComment-11                              :)\n"
        "(: Written by: Frans Englich                             :)\n"
        "(: Date: 2007-11-22T11:31:22+01:00                       :)\n"
        "(: Purpose: An empty comment after a function's paranteses. :)\n"
        "(:*******************************************************:)\n"
        "true()(::)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-XQueryComment-11.xq"),
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

'K-XQueryComment-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(:*******************************************************:)\n"
        "(: Test: K-XQueryComment-12                              :)\n"
        "(: Written by: Frans Englich                             :)\n"
        "(: Date: 2007-11-22T11:31:22+01:00                       :)\n"
        "(: Purpose: A for loop with a comment inbetween.         :)\n"
        "(:*******************************************************:)\n"
        "for (: set up loop :) $i in 3 return $i eq 3",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-XQueryComment-12.xq"),
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

'K-XQueryComment-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(:*******************************************************:)\n"
        "(: Test: K-XQueryComment-13                              :)\n"
        "(: Written by: Frans Englich                             :)\n"
        "(: Date: 2007-11-22T11:31:22+01:00                       :)\n"
        "(: Purpose: A test whose essence is: `if((: comment inbetween :)) then 1 else 1`. :)\n"
        "(:*******************************************************:)\n"
        "if((: comment inbetween :)) then 1 else 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-XQueryComment-13.xq"),
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

'K-XQueryComment-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(:*******************************************************:)\n"
        "(: Test: K-XQueryComment-14                              :)\n"
        "(: Written by: Frans Englich                             :)\n"
        "(: Date: 2007-11-22T11:31:22+01:00                       :)\n"
        "(: Purpose: A syntactically invalid comment that never ends. :)\n"
        "(:*******************************************************:)\n"
        "1(: this comment does not end:",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-XQueryComment-14.xq"),
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

'K-XQueryComment-15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(:*******************************************************:)\n"
        "(: Test: K-XQueryComment-15                              :)\n"
        "(: Written by: Frans Englich                             :)\n"
        "(: Date: 2007-11-22T11:31:22+01:00                       :)\n"
        "(: Purpose: A comment inside a comment that isn't terminated. :)\n"
        "(:*******************************************************:)\n"
        "1(: content (: this comment does not end :)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-XQueryComment-15.xq"),
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

'K-XQueryComment-16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(:*******************************************************:)\n"
        "(: Test: K-XQueryComment-16                              :)\n"
        "(: Written by: Frans Englich                             :)\n"
        "(: Date: 2007-11-22T11:31:22+01:00                       :)\n"
        "(: Purpose: A comment inside a comment that does not start properly. :)\n"
        "(:*******************************************************:)\n"
        "1(: content this comment does not start properly :) :)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-XQueryComment-16.xq"),
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

'K-XQueryComment-17'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(:*******************************************************:)\n"
        "(: Test: K-XQueryComment-17                              :)\n"
        "(: Written by: Frans Englich                             :)\n"
        "(: Date: 2007-11-22T11:31:22+01:00                       :)\n"
        "(: Purpose: Colons and paranteses appearing freely in comment content. :)\n"
        "(:*******************************************************:)\n"
        "1(: ((( : )) ))ladl:  :(): ()()(dahsi ()()( dad: ) :) eq 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-XQueryComment-17.xq"),
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

'K-XQueryComment-18'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(:*******************************************************:)\n"
        "(: Test: K-XQueryComment-18                              :)\n"
        "(: Written by: Frans Englich                             :)\n"
        "(: Date: 2007-11-22T11:31:22+01:00                       :)\n"
        "(: Purpose: Three comments appearing serially inside a comment. :)\n"
        "(:*******************************************************:)\n"
        "1(: (:one comment:) content (:another comment:) content (:a third:):)\n"
        "			   eq 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-XQueryComment-18.xq"),
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

'K-XQueryComment-19'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(:*******************************************************:)\n"
        "(: Test: K-XQueryComment-19                              :)\n"
        "(: Written by: Frans Englich                             :)\n"
        "(: Date: 2007-11-22T11:31:22+01:00                       :)\n"
        "(: Purpose: A test stressing many nested comments.       :)\n"
        "(:*******************************************************:)\n"
        "1(:(:(:(:(:(:(:(::):):):):):):):) eq 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-XQueryComment-19.xq"),
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

'K-XQueryComment-20'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(:*******************************************************:)\n"
        "(: Test: K-XQueryComment-20                              :)\n"
        "(: Written by: Frans Englich                             :)\n"
        "(: Date: 2007-11-22T11:31:22+01:00                       :)\n"
        "(: Purpose: A syntactically invalid comment that doesn't properly start. :)\n"
        "(:*******************************************************:)\n"
        ": :) 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-XQueryComment-20.xq"),
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

'K2-XQueryComment-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(:*******************************************************:)\n"
        "(: Test: K2-XQueryComment-1                              :)\n"
        "(: Written by: Frans Englich                             :)\n"
        "(: Date: 2007-11-22T11:31:21+01:00                       :)\n"
        "(: Purpose: An invalid comment after a name test.        :)\n"
        "(:*******************************************************:)\n"
        "let $i := <e>\n"
        "                                            <b/>\n"
        "                                            <b/>\n"
        "                                            <b/>\n"
        "                                        </e>\n"
        "                              return $i/b(:  ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-XQueryComment-1.xq"),
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

'K2-XQueryComment-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(:*******************************************************:)\n"
        "(: Test: K2-XQueryComment-2                              :)\n"
        "(: Written by: Frans Englich                             :)\n"
        "(: Date: 2007-11-22T11:31:21+01:00                       :)\n"
        "(: Purpose: An invalid comment after a name test(#2).    :)\n"
        "(:*******************************************************:)\n"
        "let $i := <e>\n"
        "                                            <b/>\n"
        "                                            <b/>\n"
        "                                            <b/>\n"
        "                                        </e>\n"
        "                              return $i/b(: some : content (:some content  ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-XQueryComment-2.xq"),
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

'K2-XQueryComment-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(:*******************************************************:)\n"
        "(: Test: K2-XQueryComment-3                              :)\n"
        "(: Written by: Frans Englich                             :)\n"
        "(: Date: 2007-11-22T11:31:21+01:00                       :)\n"
        "(: Purpose: Have a computed comment constructor as a last step. :)\n"
        "(:*******************************************************:)\n"
        "let $i := <e>\n"
        "                                            <b/>\n"
        "                                            <b/>\n"
        "                                            <b/>\n"
        "                                        </e>\n"
        "                                        return $i/b/comment(: some : content (:some content:):){\"content\"}  ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-XQueryComment-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<!--content--><!--content--><!--content-->") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-XQueryComment-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(:*******************************************************:)\n"
        "(: Test: K2-XQueryComment-4                              :)\n"
        "(: Written by: Frans Englich                             :)\n"
        "(: Date: 2007-11-22T11:31:21+01:00                       :)\n"
        "(: Purpose: Have a direct comment constructor as a last step. :)\n"
        "(:*******************************************************:)\n"
        "let $i := <e>\n"
        "                                            <b/>\n"
        "                                            <b/>\n"
        "                                            <b/>\n"
        "                                        </e>\n"
        "                                        return $i/(: some : content (:some content:):)<!--content-->  ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-XQueryComment-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<!--content-->") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-XQueryComment-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(:*******************************************************:)\n"
        "(: Test: K2-XQueryComment-5                              :)\n"
        "(: Written by: Frans Englich                             :)\n"
        "(: Date: 2007-11-22T11:31:21+01:00                       :)\n"
        "(: Purpose: Have a direct comment constructor as a last step(#2). :)\n"
        "(:*******************************************************:)\n"
        "let $i := <e>\n"
        "                                            <b/>\n"
        "                                            <b/>\n"
        "                                            <b/>\n"
        "                                        </e>\n"
        "                                        return $i/b/(: some : content (:some content:):)<!--content-->  ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-XQueryComment-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<!--content--><!--content--><!--content-->") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.
