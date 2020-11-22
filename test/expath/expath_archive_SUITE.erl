-module('expath_archive_SUITE').

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

-export(['EXPath-archive-options-001'/1]).
-export(['EXPath-archive-options-002'/1]).
-export(['EXPath-archive-options-003'/1]).
-export(['EXPath-archive-entries-001'/1]).
-export(['EXPath-archive-entries-002'/1]).
-export(['EXPath-archive-entries-003'/1]).
-export(['EXPath-archive-extract-binary-001'/1]).
-export(['EXPath-archive-extract-binary-002'/1]).
-export(['EXPath-archive-extract-binary-003'/1]).
-export(['EXPath-archive-extract-text-001'/1]).
-export(['EXPath-archive-extract-text-002'/1]).
-export(['EXPath-archive-extract-text-003'/1]).
-export(['EXPath-archive-extract-text-004'/1]).
-export(['EXPath-archive-delete-001'/1]).
-export(['EXPath-archive-delete-002'/1]).
-export(['EXPath-archive-delete-003'/1]).
-export(['EXPath-archive-delete-004'/1]).
-export(['EXPath-archive-update-001'/1]).
-export(['EXPath-archive-update-002'/1]).
-export(['EXPath-archive-update-003'/1]).
-export(['EXPath-archive-update-004'/1]).
-export(['EXPath-archive-update-005'/1]).
-export(['EXPath-archive-create-001'/1]).
-export(['EXPath-archive-create-002'/1]).
-export(['EXPath-archive-options-map-001'/1]).
-export(['EXPath-archive-options-map-002'/1]).
-export(['EXPath-archive-options-map-003'/1]).
-export(['EXPath-archive-options-map-004'/1]).
-export(['EXPath-archive-entries-map-001'/1]).
-export(['EXPath-archive-entries-map-002'/1]).
-export(['EXPath-archive-entries-map-003'/1]).
-export(['EXPath-archive-entries-map-004'/1]).
-export(['EXPath-archive-entries-map-005'/1]).
-export(['EXPath-archive-entries-map-006'/1]).
-export(['EXPath-archive-extract-binary-map-001'/1]).
-export(['EXPath-archive-extract-binary-map-002'/1]).
-export(['EXPath-archive-extract-text-map-001'/1]).
-export(['EXPath-archive-extract-text-map-002'/1]).
-export(['EXPath-archive-extract-text-map-003'/1]).
-export(['EXPath-archive-extract-text-map-004'/1]).
-export(['EXPath-archive-delete.map-001'/1]).
-export(['EXPath-archive-delete.map-002'/1]).
-export(['EXPath-archive-delete.map-003'/1]).
-export(['EXPath-archive-update-map-001'/1]).
-export(['EXPath-archive-update-map-002'/1]).
-export(['EXPath-archive-create-map-001'/1]).

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
    __BaseDir = filename:join(TD, "expath"),
    [{base_dir, __BaseDir} | Config].

all() ->
    [
        {group, group_0},
        {group, group_1}
    ].

groups() ->
    [
        {group_0, [parallel], [
            'EXPath-archive-options-001',
            'EXPath-archive-options-002',
            'EXPath-archive-options-003',
            'EXPath-archive-entries-001',
            'EXPath-archive-entries-002',
            'EXPath-archive-entries-003',
            'EXPath-archive-extract-binary-001',
            'EXPath-archive-extract-binary-002',
            'EXPath-archive-extract-binary-003',
            'EXPath-archive-extract-text-001',
            'EXPath-archive-extract-text-002',
            'EXPath-archive-extract-text-003',
            'EXPath-archive-extract-text-004',
            'EXPath-archive-delete-001',
            'EXPath-archive-delete-002',
            'EXPath-archive-delete-003',
            'EXPath-archive-delete-004',
            'EXPath-archive-update-001',
            'EXPath-archive-update-002',
            'EXPath-archive-update-003',
            'EXPath-archive-update-004',
            'EXPath-archive-update-005',
            'EXPath-archive-create-001'
        ]},
        {group_1, [parallel], [
            'EXPath-archive-create-002',
            'EXPath-archive-options-map-001',
            'EXPath-archive-options-map-002',
            'EXPath-archive-options-map-003',
            'EXPath-archive-options-map-004',
            'EXPath-archive-entries-map-001',
            'EXPath-archive-entries-map-002',
            'EXPath-archive-entries-map-003',
            'EXPath-archive-entries-map-004',
            'EXPath-archive-entries-map-005',
            'EXPath-archive-entries-map-006',
            'EXPath-archive-extract-binary-map-001',
            'EXPath-archive-extract-binary-map-002',
            'EXPath-archive-extract-text-map-001',
            'EXPath-archive-extract-text-map-002',
            'EXPath-archive-extract-text-map-003',
            'EXPath-archive-extract-text-map-004',
            'EXPath-archive-delete.map-001',
            'EXPath-archive-delete.map-002',
            'EXPath-archive-delete.map-003',
            'EXPath-archive-update-map-001',
            'EXPath-archive-update-map-002',
            'EXPath-archive-create-map-001'
        ]}
    ].

environment('EXPath-archive', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, [
            {"test1.ZIP", "", "Q{http://expath.org/ns/file}read-binary('sandpit/test1.zip')"},
            {"test1.ZIP.BROKEN", "",
                "Q{http://expath.org/ns/binary}part(Q{http://expath.org/ns/file}read-binary('sandpit/test1.zip'),4,50)"},
            {"test3.ZIP", "", "Q{http://expath.org/ns/file}read-binary('sandpit/test3.zip')"},
            {"textA", "", "'textA.txt'"},
            {"simple.Text", "",
                "Q{http://expath.org/ns/binary}encode-string('A simple string','UTF-8')"},
            {"empty.bin", "", "xs:base64Binary('')"}
        ]},
        {namespaces, [
            {"http://expath.org/ns/archive", "arch"},
            {"http://expath.org/ns/file", "file"},
            {"http://expath.org/ns/binary", "bin"}
        ]},
        {schemas, []},
        {resources, []},
        {modules, []}
    ];
environment('EXPath-archive.map', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, [
            {"test1.ZIP", "", "Q{http://expath.org/ns/file}read-binary('sandpit/test1.zip')"},
            {"test1.ZIP.BROKEN", "",
                "Q{http://expath.org/ns/binary}part(Q{http://expath.org/ns/file}read-binary('sandpit/test1.zip'),4,50)"},
            {"test3.ZIP", "", "Q{http://expath.org/ns/file}read-binary('sandpit/test3.zip')"},
            {"textA", "", "'textA.txt'"},
            {"known.test1", "",
                "Q{http://www.w3.org/2005/xpath-functions/map}merge(Q{http://www.w3.org/2005/xpath-functions/map}entry('textA.txt',()))"},
            {"unknown.test1", "",
                "Q{http://www.w3.org/2005/xpath-functions/map}merge(Q{http://www.w3.org/2005/xpath-functions/map}entry('foo',()))"},
            {"simple.Text.string", "", "'A simple string'"},
            {"simple.Text.map", "",
                "Q{http://www.w3.org/2005/xpath-functions/map}merge(Q{http://www.w3.org/2005/xpath-functions/map}entry('simple.Text',Q{http://www.w3.org/2005/xpath-functions/map}merge(Q{http://www.w3.org/2005/xpath-functions/map}entry('content',Q{http://expath.org/ns/binary}encode-string('A simple string','UTF-8'))             )))"},
            {"empty.bin", "", "xs:base64Binary('')"}
        ]},
        {namespaces, [
            {"http://expath.org/ns/archive", "arch"},
            {"http://expath.org/ns/file", "file"},
            {"http://expath.org/ns/binary", "bin"},
            {"http://www.w3.org/2005/xpath-functions/map", "map"}
        ]},
        {schemas, []},
        {resources, []},
        {modules, []}
    ].

'EXPath-archive-options-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "                arch:options($test1.ZIP)\n"
        "            ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-archive', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-archive-options-001.xq"),
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
            lists:all(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case
                        xqerl_test:assert_type(
                            Res,
                            "element(Q{http://expath.org/ns/archive}options)"
                        )
                    of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_count(Res, "1") of
                        true -> {comment, "Count correct"};
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

'EXPath-archive-options-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        " \n"
        "                string(arch:options($test1.ZIP)/@format)\n"
        "            ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-archive', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-archive-options-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "'zip'") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'EXPath-archive-options-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        " \n"
        "                string(arch:options($test1.ZIP)/@compression)\n"
        "            ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-archive', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-archive-options-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "'unknown'") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'EXPath-archive-entries-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = " arch:entries($test1.ZIP) ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-archive', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-archive-entries-001.xq"),
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
            lists:all(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case
                        xqerl_test:assert_type(Res, "element(Q{http://expath.org/ns/archive}entry)")
                    of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_count(Res, "1") of
                        true -> {comment, "Count correct"};
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

'EXPath-archive-entries-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = " arch:entries($test3.ZIP) ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-archive', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-archive-entries-002.xq"),
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
            lists:all(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case
                        xqerl_test:assert_type(
                            Res,
                            "element(Q{http://expath.org/ns/archive}entry)*"
                        )
                    of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_count(Res, "3") of
                        true -> {comment, "Count correct"};
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

'EXPath-archive-entries-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = " for $e in arch:entries($test3.ZIP) return string($e) ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-archive', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-archive-entries-003.xq"),
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
            lists:all(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case
                        xqerl_test:assert_permutation(Res, "('textA.txt','textB.txt','textC.txt')")
                    of
                        true -> {comment, "Correct permutation"};
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

'EXPath-archive-extract-binary-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "                arch:extract-binary($test1.ZIP,'foo')\n"
        "            ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-archive', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-archive-extract-binary-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/archive}unknown-entry") of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment, "WE: Q{http://expath.org/ns/archive}unknown-entry " ++ binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'EXPath-archive-extract-binary-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "                arch:extract-binary($test1.ZIP,$textA)\n"
        "            ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-archive', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-archive-extract-binary-002.xq"),
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
            lists:all(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_type(Res, "xs:base64Binary") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_count(Res, "1") of
                        true -> {comment, "Count correct"};
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

'EXPath-archive-extract-binary-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "                arch:extract-binary($test1.ZIP,($textA,$textA))\n"
        "            ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-archive', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-archive-extract-binary-003.xq"),
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
            lists:all(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_type(Res, "xs:base64Binary*") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_count(Res, "2") of
                        true -> {comment, "Count correct"};
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

'EXPath-archive-extract-text-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "                arch:extract-text($test1.ZIP,'foo')\n"
        "            ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-archive', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-archive-extract-text-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/archive}unknown-entry") of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment, "WE: Q{http://expath.org/ns/archive}unknown-entry " ++ binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'EXPath-archive-extract-text-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "                arch:extract-text($test1.ZIP,$textA)\n"
        "                = arch:extract-text($test1.ZIP,$textA,'UTF-8') and\n"
        "                arch:extract-text($test1.ZIP,$textA)\n"
        "                = arch:extract-text($test1.ZIP,$textA,'utf-8')\n"
        "            ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-archive', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-archive-extract-text-002.xq"),
                Qry1
            ),
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

'EXPath-archive-extract-text-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "               arch:extract-text($test1.ZIP,$textA,'NOT-UTF-8')\n"
        "            ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-archive', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-archive-extract-text-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/archive}unknown-encoding") of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment,
                    "WE: Q{http://expath.org/ns/archive}unknown-encoding " ++ binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'EXPath-archive-extract-text-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "               arch:extract-text($test1.ZIP,$textA)\n"
        "            ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-archive', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-archive-extract-text-004.xq"),
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
            lists:all(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_type(Res, "xs:string") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_eq(Res, "'Some text here'") of
                        true -> {comment, "Equal"};
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

'EXPath-archive-delete-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "                arch:delete($test1.ZIP,($textA))\n"
        "            ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-archive', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-archive-delete-001.xq"),
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
            lists:all(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_type(Res, "xs:base64Binary") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_count(Res, "1") of
                        true -> {comment, "Count correct"};
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

'EXPath-archive-delete-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "                arch:delete($test1.ZIP,()) = $test1.ZIP\n"
        "            ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-archive', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-archive-delete-002.xq"),
                Qry1
            ),
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

'EXPath-archive-delete-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "                arch:entries(arch:delete($test1.ZIP,($textA)))\n"
        "            ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-archive', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-archive-delete-003.xq"),
                Qry1
            ),
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

'EXPath-archive-delete-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "                arch:delete($test1.ZIP,('textNOTTHERE.txt'))\n"
        "            ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-archive', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-archive-delete-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/archive}unknown-entry") of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment, "WE: Q{http://expath.org/ns/archive}unknown-entry " ++ binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'EXPath-archive-update-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "                arch:update($test1.ZIP,$textA,$simple.Text)\n"
        "            ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-archive', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-archive-update-001.xq"),
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
            lists:all(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_type(Res, "xs:base64Binary") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_count(Res, "1") of
                        true -> {comment, "Count correct"};
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

'EXPath-archive-update-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "                for $ e in arch:entries(arch:update($test1.ZIP,$textA,$simple.Text))\n"
        "                return string($e) \n"
        "            ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-archive', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-archive-update-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_permutation(Res, "('textA.txt')") of
            true -> {comment, "Correct permutation"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'EXPath-archive-update-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        " \n"
        "                arch:update($test1.ZIP,'new.txt',$simple.Text)\n"
        "            ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-archive', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-archive-update-003.xq"),
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
            lists:all(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_type(Res, "xs:base64Binary") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_count(Res, "1") of
                        true -> {comment, "Count correct"};
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

'EXPath-archive-update-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "                for $ e in arch:entries(arch:update($test1.ZIP,'new.txt',$simple.Text))\n"
        "                return string($e)\n"
        "            ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-archive', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-archive-update-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_permutation(Res, "('new.txt','textA.txt')") of
            true -> {comment, "Correct permutation"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'EXPath-archive-update-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "                arch:extract-binary(arch:update($test1.ZIP,'new.txt',$simple.Text),'new.txt')\n"
        "                =  $simple.Text\n"
        "            ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-archive', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-archive-update-005.xq"),
                Qry1
            ),
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

'EXPath-archive-create-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        " \n"
        "                arch:create('new.txt',$simple.Text)\n"
        "            ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-archive', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-archive-create-001.xq"),
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
            lists:all(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_type(Res, "xs:base64Binary") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_count(Res, "1") of
                        true -> {comment, "Count correct"};
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

'EXPath-archive-create-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        " \n"
        "                arch:extract-binary(arch:create('new.txt',$simple.Text),'new.txt')\n"
        "                = $simple.Text\n"
        "            ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-archive', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-archive-create-002.xq"),
                Qry1
            ),
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

'EXPath-archive-options-map-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "                arch:options-map($test1.ZIP)\n"
        "            ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-archive.map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-archive-options-map-001.xq"),
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
            lists:all(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_type(Res, "map(xs:string,item()*)") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_count(Res, "1") of
                        true -> {comment, "Count correct"};
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

'EXPath-archive-options-map-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        " \n"
        "                map:keys(arch:options-map($test3.ZIP))\n"
        "            ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-archive.map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-archive-options-map-002.xq"),
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
            lists:all(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_type(Res, "xs:string*") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_permutation(Res, "'format','compression'") of
                        true -> {comment, "Correct permutation"};
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

'EXPath-archive-options-map-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        " \n"
        "                arch:options-map($test1.ZIP)('format')\n"
        "            ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-archive.map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-archive-options-map-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "'zip'") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'EXPath-archive-options-map-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        " \n"
        "                arch:options-map($test1.ZIP)('compression')\n"
        "            ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-archive.map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-archive-options-map-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "'stored'") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'EXPath-archive-entries-map-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "                arch:entries-map($test1.ZIP)\n"
        "            ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-archive.map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-archive-entries-map-001.xq"),
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
            lists:all(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_type(Res, "map(xs:string,map(xs:string,item()*))") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_count(Res, "1") of
                        true -> {comment, "Count correct"};
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

'EXPath-archive-entries-map-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        " \n"
        "                map:keys(arch:entries-map($test3.ZIP))\n"
        "            ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-archive.map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-archive-entries-map-002.xq"),
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
            lists:all(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_type(Res, "xs:string*") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_count(Res, "3") of
                        true -> {comment, "Count correct"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_permutation(Res, "'textA.txt','textB.txt','textC.txt'")
                    of
                        true -> {comment, "Correct permutation"};
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

'EXPath-archive-entries-map-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        " \n"
        "                arch:entries-map($test3.ZIP)('textA.txt')('size')\n"
        "            ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-archive.map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-archive-entries-map-003.xq"),
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
            lists:all(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_type(Res, "xs:integer") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_eq(Res, "14") of
                        true -> {comment, "Equal"};
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

'EXPath-archive-entries-map-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        " \n"
        "                map:keys(arch:entries-map($test3.ZIP)('textA.txt'))\n"
        "            ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-archive.map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-archive-entries-map-004.xq"),
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
            lists:all(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_type(Res, "xs:string*") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_permutation(
                            Res,
                            "'position','size','compressed-size','last-modified','compression'"
                        )
                    of
                        true -> {comment, "Correct permutation"};
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

'EXPath-archive-entries-map-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        " \n"
        "                map:keys(arch:entries-map($test3.ZIP,true())('textA.txt'))\n"
        "            ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-archive.map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-archive-entries-map-005.xq"),
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
            lists:all(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_type(Res, "xs:string*") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_permutation(
                            Res,
                            "'position','content','size','compressed-size','last-modified','compression'"
                        )
                    of
                        true -> {comment, "Correct permutation"};
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

'EXPath-archive-entries-map-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        " \n"
        "                arch:entries-map($test3.ZIP,true())('textA.txt')('content')\n"
        "            ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-archive.map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-archive-entries-map-006.xq"),
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
            lists:all(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_type(Res, "xs:base64Binary") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_count(Res, "1") of
                        true -> {comment, "Count correct"};
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

'EXPath-archive-extract-binary-map-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "                arch:extract-binary-map($test1.ZIP,$unknown.test1)\n"
        "            ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-archive.map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-archive-extract-binary-map-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/archive}unknown-entry") of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment, "WE: Q{http://expath.org/ns/archive}unknown-entry " ++ binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'EXPath-archive-extract-binary-map-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "                arch:extract-binary-map($test1.ZIP,$known.test1)\n"
        "            ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-archive.map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-archive-extract-binary-map-002.xq"),
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
            lists:all(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_type(Res, "xs:base64Binary") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_count(Res, "1") of
                        true -> {comment, "Count correct"};
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

'EXPath-archive-extract-text-map-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "                arch:extract-text-map($test1.ZIP,$unknown.test1)\n"
        "            ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-archive.map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-archive-extract-text-map-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/archive}unknown-entry") of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment, "WE: Q{http://expath.org/ns/archive}unknown-entry " ++ binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'EXPath-archive-extract-text-map-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "                arch:extract-text-map($test1.ZIP,$known.test1)\n"
        "                = arch:extract-text-map($test1.ZIP,$known.test1,'UTF-8') and\n"
        "                arch:extract-text-map($test1.ZIP,$known.test1)\n"
        "                = arch:extract-text-map($test1.ZIP,$known.test1,'utf-8')\n"
        "            ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-archive.map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-archive-extract-text-map-002.xq"),
                Qry1
            ),
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

'EXPath-archive-extract-text-map-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "               arch:extract-text-map($test1.ZIP,$known.test1,'NOT-UTF-8')\n"
        "            ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-archive.map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-archive-extract-text-map-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/archive}unknown-encoding") of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment,
                    "WE: Q{http://expath.org/ns/archive}unknown-encoding " ++ binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'EXPath-archive-extract-text-map-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "               arch:extract-text-map($test1.ZIP,$known.test1)\n"
        "            ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-archive.map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-archive-extract-text-map-004.xq"),
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
            lists:all(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_type(Res, "xs:string") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_eq(Res, "'Some text here'") of
                        true -> {comment, "Equal"};
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

'EXPath-archive-delete.map-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "                arch:delete-map(arch:create-map($simple.Text.map),map:entry('simple.Text',()))\n"
        "            ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-archive.map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-archive-delete.map-001.xq"),
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
            lists:all(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_type(Res, "xs:base64Binary") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_count(Res, "1") of
                        true -> {comment, "Count correct"};
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

'EXPath-archive-delete.map-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "                let $a := arch:create-map($simple.Text.map)\n"
        "                 return arch:delete-map($a,map:merge(())) = $a\n"
        "            ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-archive.map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-archive-delete.map-002.xq"),
                Qry1
            ),
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

'EXPath-archive-delete.map-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "                map:keys(arch:entries-map(\n"
        "                arch:delete-map(arch:create-map($simple.Text.map),$simple.Text.map)\n"
        "                ))\n"
        "            ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-archive.map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-archive-delete.map-003.xq"),
                Qry1
            ),
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

'EXPath-archive-update-map-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "                arch:update-map($test1.ZIP,$simple.Text.map)\n"
        "            ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-archive.map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-archive-update-map-001.xq"),
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
            lists:all(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_type(Res, "xs:base64Binary") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_count(Res, "1") of
                        true -> {comment, "Count correct"};
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

'EXPath-archive-update-map-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        " \n"
        "                map:keys(arch:entries-map(arch:update-map($test1.ZIP,$simple.Text.map)))\n"
        "            ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-archive.map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-archive-update-map-002.xq"),
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
            lists:all(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_type(Res, "xs:string*") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_count(Res, "2") of
                        true -> {comment, "Count correct"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_permutation(Res, "('textA.txt','simple.Text')") of
                        true -> {comment, "Correct permutation"};
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

'EXPath-archive-create-map-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        " \n"
        "                arch:create-map($simple.Text.map)\n"
        "            ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-archive.map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-archive-create-map-001.xq"),
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
            lists:all(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_type(Res, "xs:base64Binary") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_count(Res, "1") of
                        true -> {comment, "Count correct"};
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
