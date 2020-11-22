-module('expath_file_SUITE').

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

-export(['EXPath-file-exists-001'/1]).
-export(['EXPath-file-exists-002'/1]).
-export(['EXPath-file-exists-003'/1]).
-export(['EXPath-file-exists-004'/1]).
-export(['EXPath-file-exists-005'/1]).
-export(['EXPath-file-exists-006'/1]).
-export(['EXPath-file-exists-007'/1]).
-export(['EXPath-file-exists-008'/1]).
-export(['EXPath-file-exists-009'/1]).
-export(['EXPath-file-exists-010'/1]).
-export(['EXPath-file-exists-011'/1]).
-export(['EXPath-file-exists-012'/1]).
-export(['EXPath-file-isDir-001'/1]).
-export(['EXPath-file-isDir-002'/1]).
-export(['EXPath-file-isDir-003'/1]).
-export(['EXPath-file-isDir-004'/1]).
-export(['EXPath-file-isDir-005'/1]).
-export(['EXPath-file-isDir-006'/1]).
-export(['EXPath-file-isDir-007'/1]).
-export(['EXPath-file-isFile-001'/1]).
-export(['EXPath-file-isFile-002'/1]).
-export(['EXPath-file-isFile-003'/1]).
-export(['EXPath-file-isFile-004'/1]).
-export(['EXPath-file-isFile-005'/1]).
-export(['EXPath-file-isFile-006'/1]).
-export(['EXPath-file-last-modified-001'/1]).
-export(['EXPath-file-last-modified-002'/1]).
-export(['EXPath-file-last-modified-003'/1]).
-export(['EXPath-file-size-001'/1]).
-export(['EXPath-file-size-002'/1]).
-export(['EXPath-file-size-003'/1]).
-export(['EXPath-file-size-004'/1]).
-export(['EXPath-file-size-005'/1]).
-export(['EXPath-file-append2-001'/1]).
-export(['EXPath-file-append2-002'/1]).
-export(['EXPath-file-append2-003'/1]).
-export(['EXPath-file-appendText2-001'/1]).
-export(['EXPath-file-appendText2-002'/1]).
-export(['EXPath-file-appendText2-003'/1]).
-export(['EXPath-file-appendText2-004'/1]).
-export(['EXPath-file-appendText2-005'/1]).
-export(['EXPath-file-appendText2-006'/1]).
-export(['EXPath-file-appendText3-001'/1]).
-export(['EXPath-file-appendText3-002'/1]).
-export(['EXPath-file-appendText3-003'/1]).
-export(['EXPath-file-appendText3-004'/1]).
-export(['EXPath-file-appendText3-005'/1]).
-export(['EXPath-file-appendText3-006'/1]).
-export(['EXPath-file-appendBinary2-001'/1]).
-export(['EXPath-file-appendBinary2-002'/1]).
-export(['EXPath-file-appendBinary2-003'/1]).
-export(['EXPath-file-appendBinary2-004'/1]).
-export(['EXPath-file-copy-001'/1]).
-export(['EXPath-file-copy-002'/1]).
-export(['EXPath-file-copy-003'/1]).
-export(['EXPath-file-copy-004'/1]).
-export(['EXPath-file-copy-005'/1]).
-export(['EXPath-file-createDir-001'/1]).
-export(['EXPath-file-createDir-002'/1]).
-export(['EXPath-file-createDir-003'/1]).
-export(['EXPath-file-createDir-004'/1]).
-export(['EXPath-file-createDir-005'/1]).
-export(['EXPath-file-createTempFile-001'/1]).
-export(['EXPath-file-createTempFile-002'/1]).
-export(['EXPath-file-createTempDir-001'/1]).
-export(['EXPath-file-createTempDir-002'/1]).
-export(['EXPath-file-delete-001'/1]).
-export(['EXPath-file-delete-002'/1]).
-export(['EXPath-file-delete-003'/1]).
-export(['EXPath-file-delete-004'/1]).
-export(['EXPath-file-delete-005'/1]).
-export(['EXPath-file-delete-006'/1]).
-export(['EXPath-file-list-001'/1]).
-export(['EXPath-file-list-002'/1]).
-export(['EXPath-file-list-003'/1]).
-export(['EXPath-file-list-004'/1]).
-export(['EXPath-file-list-005'/1]).
-export(['EXPath-file-list-006'/1]).
-export(['EXPath-file-list-007'/1]).
-export(['EXPath-file-list-008'/1]).
-export(['EXPath-file-list-009'/1]).
-export(['EXPath-file-list-010'/1]).
-export(['EXPath-file-list-011'/1]).
-export(['EXPath-file-list-012'/1]).
-export(['EXPath-file-list-013'/1]).
-export(['EXPath-file-list-014'/1]).
-export(['EXPath-file-list-015'/1]).
-export(['EXPath-file-list-016'/1]).
-export(['EXPath-file-list-017'/1]).
-export(['EXPath-file-list-018'/1]).
-export(['EXPath-file-list-019'/1]).
-export(['EXPath-file-move-001'/1]).
-export(['EXPath-file-move-002'/1]).
-export(['EXPath-file-move-003'/1]).
-export(['EXPath-file-move-004'/1]).
-export(['EXPath-file-move-005'/1]).
-export(['EXPath-file-readBinary-001'/1]).
-export(['EXPath-file-readBinary-002'/1]).
-export(['EXPath-file-readBinary-003'/1]).
-export(['EXPath-file-readBinary-004'/1]).
-export(['EXPath-file-readBinary2-001'/1]).
-export(['EXPath-file-readBinary2-002'/1]).
-export(['EXPath-file-readBinary2-003'/1]).
-export(['EXPath-file-readBinary3-001'/1]).
-export(['EXPath-file-readBinary3-002'/1]).
-export(['EXPath-file-readBinary3-003'/1]).
-export(['EXPath-file-readBinary3-004'/1]).
-export(['EXPath-file-readBinary3-005'/1]).
-export(['EXPath-file-readText1-001'/1]).
-export(['EXPath-file-readText1-002'/1]).
-export(['EXPath-file-readText1-003'/1]).
-export(['EXPath-file-readText2-001'/1]).
-export(['EXPath-file-readText2-002'/1]).
-export(['EXPath-file-readText2-003'/1]).
-export(['EXPath-file-readText2-004'/1]).
-export(['EXPath-file-readText2-005'/1]).
-export(['EXPath-file-readTextLines1-001'/1]).
-export(['EXPath-file-readTextLines1-002'/1]).
-export(['EXPath-file-readTextLines1-003'/1]).
-export(['EXPath-file-readTextLines1-004'/1]).
-export(['EXPath-file-readTextLines1-005'/1]).
-export(['EXPath-file-readTextLines1-006'/1]).
-export(['EXPath-file-readTextLines1-007'/1]).
-export(['EXPath-file-readTextLines1-008'/1]).
-export(['EXPath-file-readTextLines1-009'/1]).
-export(['EXPath-file-readTextLines1-010'/1]).
-export(['EXPath-file-readTextLines1-011'/1]).
-export(['EXPath-file-readTextLines1-012'/1]).
-export(['EXPath-file-readTextLines1-013'/1]).
-export(['EXPath-file-readTextLines1-014'/1]).
-export(['EXPath-file-readTextLines1-015'/1]).
-export(['EXPath-file-writeText2-001'/1]).
-export(['EXPath-file-writeText2-002'/1]).
-export(['EXPath-file-writeText2-003'/1]).
-export(['EXPath-file-writeText2-004'/1]).
-export(['EXPath-file-writeText2-005'/1]).
-export(['EXPath-file-writeText2-006'/1]).
-export(['EXPath-file-writeText3-001'/1]).
-export(['EXPath-file-writeText3-002'/1]).
-export(['EXPath-file-writeText3-003'/1]).
-export(['EXPath-file-writeText3-004'/1]).
-export(['EXPath-file-writeText3-005'/1]).
-export(['EXPath-file-writeBinary2-001'/1]).
-export(['EXPath-file-writeBinary2-002'/1]).
-export(['EXPath-file-writeBinary2-003'/1]).
-export(['EXPath-file-writeBinary2-004'/1]).
-export(['EXPath-file-writeBinary3-001'/1]).
-export(['EXPath-file-writeBinary3-002'/1]).
-export(['EXPath-file-writeBinary3-003'/1]).
-export(['EXPath-file-writeBinary3-004'/1]).
-export(['EXPath-file-writeBinary3-005'/1]).
-export(['EXPath-file-writeBinary3-005a'/1]).
-export(['EXPath-file-name1-001'/1]).
-export(['EXPath-file-name1-002'/1]).
-export(['EXPath-file-name1-003'/1]).
-export(['EXPath-file-name1-004'/1]).
-export(['EXPath-file-name1-005'/1]).
-export(['EXPath-file-name1-006'/1]).
-export(['EXPath-file-name1-007'/1]).
-export(['EXPath-file-parent-001'/1]).
-export(['EXPath-file-parent-002'/1]).
-export(['EXPath-file-parent-003'/1]).
-export(['EXPath-file-parent-004'/1]).
-export(['EXPath-file-children-001'/1]).
-export(['EXPath-file-children-002'/1]).
-export(['EXPath-file-children-003'/1]).
-export(['EXPath-file-children-004'/1]).
-export(['EXPath-file-pathToNative-001'/1]).
-export(['EXPath-file-pathToNative-002'/1]).
-export(['EXPath-file-pathToNative-003'/1]).
-export(['EXPath-file-pathToNative-004'/1]).
-export(['EXPath-file-pathToNative-005'/1]).
-export(['EXPath-file-pathToNative-006'/1]).
-export(['EXPath-file-pathToUri-001'/1]).
-export(['EXPath-file-pathToUri-002'/1]).
-export(['EXPath-file-resolvePath-001'/1]).
-export(['EXPath-file-dirSeparator-001'/1]).
-export(['EXPath-file-pathSeparator-001'/1]).
-export(['EXPath-file-lineSeparator-001'/1]).
-export(['EXPath-file-lineSeparator-002'/1]).
-export(['EXPath-file-tempDir-001'/1]).
-export(['EXPath-file-baseDir-001'/1]).
-export(['EXPath-file-currentDir-001'/1]).

suite() -> [{timetrap, {seconds, 180}}].

init_per_group(_, Config) -> Config.

end_per_group(_, _Config) ->
    xqerl_code_server:unload(all).

end_per_suite(Config) ->
    ct:timetrap({seconds, 60}),
    CWD = ?config(cwd, Config),
    Sand = filename:join([CWD, "sandpit"]),
    Files = [filename:join([Sand, Fn]) || Fn <- filelib:wildcard("**", Sand)],
    _ = [file:delete(F) || F <- lists:reverse(lists:sort(Files))],
    _ = file:del_dir(Sand),
    _ = file:delete(filename:join([CWD, "sandpit.zip"])),
    xqerl_code_server:unload(all).

init_per_suite(Config) ->
    {ok, _} = application:ensure_all_started(xqerl),
    DD = filename:dirname(filename:dirname(filename:dirname(?config(data_dir, Config)))),
    __BaseDir = filename:join(DD, "expath"),
    Zip = filename:join([DD, "sandpit.zip"]),
    {ok, _} = file:copy(filename:join([__BaseDir, "sandpit.zip"]), Zip),
    zip:extract(Zip, [{cwd, DD}]),
    [{base_dir, __BaseDir}, {cwd, DD} | Config].

all() ->
    [
        {group, group_0}
    ].

groups() ->
    [
        {group_0, [], [
            'EXPath-file-exists-001',
            'EXPath-file-exists-002',
            'EXPath-file-exists-003',
            'EXPath-file-exists-004',
            'EXPath-file-exists-005',
            'EXPath-file-exists-006',
            'EXPath-file-exists-007',
            'EXPath-file-exists-008',
            'EXPath-file-exists-009',
            'EXPath-file-exists-010',
            'EXPath-file-exists-011',
            'EXPath-file-exists-012',
            'EXPath-file-isDir-001',
            'EXPath-file-isDir-002',
            'EXPath-file-isDir-003',
            'EXPath-file-isDir-004',
            'EXPath-file-isDir-005',
            'EXPath-file-isDir-006',
            'EXPath-file-isDir-007',
            'EXPath-file-isFile-001',
            'EXPath-file-isFile-002',
            'EXPath-file-isFile-003',
            'EXPath-file-isFile-004',
            'EXPath-file-isFile-005',
            'EXPath-file-isFile-006',
            'EXPath-file-last-modified-001',
            'EXPath-file-last-modified-002',
            'EXPath-file-last-modified-003',
            'EXPath-file-size-001',
            'EXPath-file-size-002',
            'EXPath-file-size-003',
            'EXPath-file-size-004',
            'EXPath-file-size-005',
            'EXPath-file-append2-001',
            'EXPath-file-append2-002',
            'EXPath-file-append2-003',
            'EXPath-file-appendText2-001',
            'EXPath-file-appendText2-002',
            'EXPath-file-appendText2-003',
            'EXPath-file-appendText2-004',
            'EXPath-file-appendText2-005',
            'EXPath-file-appendText2-006',
            'EXPath-file-appendText3-001',
            'EXPath-file-appendText3-002',
            'EXPath-file-appendText3-003',
            'EXPath-file-appendText3-004',
            'EXPath-file-appendText3-005',
            'EXPath-file-appendText3-006',
            'EXPath-file-appendBinary2-001',
            'EXPath-file-appendBinary2-002',
            'EXPath-file-appendBinary2-003',
            'EXPath-file-appendBinary2-004',
            'EXPath-file-copy-001',
            'EXPath-file-copy-002',
            'EXPath-file-copy-003',
            'EXPath-file-copy-004',
            'EXPath-file-copy-005',
            'EXPath-file-createDir-001',
            'EXPath-file-createDir-002',
            'EXPath-file-createDir-003',
            'EXPath-file-createDir-004',
            'EXPath-file-createDir-005',
            'EXPath-file-createTempFile-001',
            'EXPath-file-createTempFile-002',
            'EXPath-file-createTempDir-001',
            'EXPath-file-createTempDir-002',
            'EXPath-file-delete-001',
            'EXPath-file-delete-002',
            'EXPath-file-delete-003',
            'EXPath-file-delete-004',
            'EXPath-file-delete-005',
            'EXPath-file-delete-006',
            'EXPath-file-list-001',
            'EXPath-file-list-002',
            'EXPath-file-list-003',
            'EXPath-file-list-004',
            'EXPath-file-list-005',
            'EXPath-file-list-006',
            'EXPath-file-list-007',
            'EXPath-file-list-008',
            'EXPath-file-list-009',
            'EXPath-file-list-010',
            'EXPath-file-list-011',
            'EXPath-file-list-012',
            'EXPath-file-list-013',
            'EXPath-file-list-014',
            'EXPath-file-list-015',
            'EXPath-file-list-016',
            'EXPath-file-list-017',
            'EXPath-file-list-018',
            'EXPath-file-list-019',
            'EXPath-file-move-001',
            'EXPath-file-move-002',
            'EXPath-file-move-003',
            'EXPath-file-move-004',
            'EXPath-file-move-005',
            'EXPath-file-readBinary-001',
            'EXPath-file-readBinary-002',
            'EXPath-file-readBinary-003',
            'EXPath-file-readBinary-004',
            'EXPath-file-readBinary2-001',
            'EXPath-file-readBinary2-002',
            'EXPath-file-readBinary2-003',
            'EXPath-file-readBinary3-001',
            'EXPath-file-readBinary3-002',
            'EXPath-file-readBinary3-003',
            'EXPath-file-readBinary3-004',
            'EXPath-file-readBinary3-005',
            'EXPath-file-readText1-001',
            'EXPath-file-readText1-002',
            'EXPath-file-readText1-003',
            'EXPath-file-readText2-001',
            'EXPath-file-readText2-002',
            'EXPath-file-readText2-003',
            'EXPath-file-readText2-004',
            'EXPath-file-readText2-005',
            'EXPath-file-readTextLines1-001',
            'EXPath-file-readTextLines1-002',
            'EXPath-file-readTextLines1-003',
            'EXPath-file-readTextLines1-004',
            'EXPath-file-readTextLines1-005',
            'EXPath-file-readTextLines1-006',
            'EXPath-file-readTextLines1-007',
            'EXPath-file-readTextLines1-008',
            'EXPath-file-readTextLines1-009',
            'EXPath-file-readTextLines1-010',
            'EXPath-file-readTextLines1-011',
            'EXPath-file-readTextLines1-012',
            'EXPath-file-readTextLines1-013',
            'EXPath-file-readTextLines1-014',
            'EXPath-file-readTextLines1-015',
            'EXPath-file-writeText2-001',
            'EXPath-file-writeText2-002',
            'EXPath-file-writeText2-003',
            'EXPath-file-writeText2-004',
            'EXPath-file-writeText2-005',
            'EXPath-file-writeText2-006',
            'EXPath-file-writeText3-001',
            'EXPath-file-writeText3-002',
            'EXPath-file-writeText3-003',
            'EXPath-file-writeText3-004',
            'EXPath-file-writeText3-005',
            'EXPath-file-writeBinary2-001',
            'EXPath-file-writeBinary2-002',
            'EXPath-file-writeBinary2-003',
            'EXPath-file-writeBinary2-004',
            'EXPath-file-writeBinary3-001',
            'EXPath-file-writeBinary3-002',
            'EXPath-file-writeBinary3-003',
            'EXPath-file-writeBinary3-004',
            'EXPath-file-writeBinary3-005',
            'EXPath-file-writeBinary3-005a',
            'EXPath-file-name1-001',
            'EXPath-file-name1-002',
            'EXPath-file-name1-003',
            'EXPath-file-name1-004',
            'EXPath-file-name1-005',
            'EXPath-file-name1-006',
            'EXPath-file-name1-007',
            'EXPath-file-parent-001',
            'EXPath-file-parent-002',
            'EXPath-file-parent-003',
            'EXPath-file-parent-004',
            'EXPath-file-children-001',
            'EXPath-file-children-002',
            'EXPath-file-children-003',
            'EXPath-file-children-004',
            'EXPath-file-pathToNative-001',
            'EXPath-file-pathToNative-002',
            'EXPath-file-pathToNative-003',
            'EXPath-file-pathToNative-004',
            'EXPath-file-pathToNative-005',
            'EXPath-file-pathToNative-006',
            'EXPath-file-pathToUri-001',
            'EXPath-file-pathToUri-002',
            'EXPath-file-resolvePath-001',
            'EXPath-file-dirSeparator-001',
            'EXPath-file-pathSeparator-001',
            'EXPath-file-lineSeparator-001',
            'EXPath-file-lineSeparator-002',
            'EXPath-file-tempDir-001',
            'EXPath-file-baseDir-001',
            'EXPath-file-currentDir-001'
        ]}
    ].

environment('EXPath-file', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, [{"http://expath.org/ns/file", "file"}]},
        {schemas, []},
        {resources, []},
        {modules, []}
    ].

'EXPath-file-exists-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:exists(\"sandpit/test.bin\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-exists-001.xq"),
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

'EXPath-file-exists-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:exists(\"sandpit\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-exists-002.xq"),
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

'EXPath-file-exists-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:exists(\"sandpit/nonexisting-file.txt\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-exists-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'EXPath-file-exists-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:exists(\".\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-exists-004.xq"),
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

'EXPath-file-exists-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:exists(())",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-exists-005.xq"),
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

'EXPath-file-exists-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:exists(xs:anyURI('sandpit'))",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-exists-006.xq"),
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

'EXPath-file-exists-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:exists((\"sandpit\", \".\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-exists-007.xq"),
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

'EXPath-file-exists-008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:exists(if (current-date() gt xs:date('1900-01-01')) then 23 else 'sandpit')",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-exists-008.xq"),
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

'EXPath-file-exists-009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      file:exists(\"sandpit/my file.txt\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-exists-009.xq"),
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

'EXPath-file-exists-010'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      file:exists(\"sandpit//\\my file.txt\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-exists-010.xq"),
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

'EXPath-file-exists-011'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      file:exists(\"sandpit/my%20file.txt\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-exists-011.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'EXPath-file-exists-012'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      file:exists(file:path-to-uri(\"sandpit/my file.txt\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-exists-012.xq"),
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

'EXPath-file-isDir-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:is-dir(\"sandpit/test.bin\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-isDir-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'EXPath-file-isDir-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:is-dir(\"sandpit\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-isDir-002.xq"),
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

'EXPath-file-isDir-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:is-dir(\"sandpit/nonexisting-file.txt\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-isDir-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'EXPath-file-isDir-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:is-dir(\".\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-isDir-004.xq"),
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

'EXPath-file-isDir-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:is-dir(\"..\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-isDir-005.xq"),
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

'EXPath-file-isDir-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:is-dir(())",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-isDir-006.xq"),
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

'EXPath-file-isDir-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:is-dir((\".\", \"..\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-isDir-007.xq"),
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

'EXPath-file-isFile-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:is-file(\"sandpit/test.bin\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-isFile-001.xq"),
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

'EXPath-file-isFile-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:is-file(\"sandpit\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-isFile-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'EXPath-file-isFile-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:is-file(\"sandpit/nonexisting-file.txt\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-isFile-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'EXPath-file-isFile-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:is-file(\".\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-isFile-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'EXPath-file-isFile-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:is-file(xs:anyURI('sandpit/test.bin'))",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-isFile-005.xq"),
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

'EXPath-file-isFile-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:is-file(QName('http://saxon.sf.net/', 'local-name'))",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-isFile-006.xq"),
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

'EXPath-file-last-modified-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:append-text(\"sandpit/test.txt\", \"a\"),\n"
        "        file:last-modified(\"sandpit/test.txt\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-last-modified-001.xq"),
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
                    case xqerl_test:assert_type(Res, "xs:dateTime") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "exists(timezone-from-dateTime($result))") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "(current-dateTime() - $result) div xs:dayTimeDuration(\"PT1S\") ge -2"
                        )
                    of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "(current-dateTime() - $result) div xs:dayTimeDuration(\"PT1S\") lt 10"
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

'EXPath-file-last-modified-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        (if (file:exists(\"sandpit/testdir\")) \n"
        "          then file:delete(\"sandpit/testdir\")\n"
        "          else ()), \n"
        "        file:create-dir(\"sandpit/testdir\"),\n"
        "        file:last-modified(\"sandpit/testdir\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-last-modified-002.xq"),
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
                    case xqerl_test:assert_type(Res, "xs:dateTime") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "exists(timezone-from-dateTime($result))") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "(current-dateTime() - $result) div xs:dayTimeDuration(\"PT1S\") ge -2"
                        )
                    of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "(current-dateTime() - $result) div xs:dayTimeDuration(\"PT1S\") lt 10"
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

'EXPath-file-last-modified-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:last-modified(\"sandpit/nonexistent.txt\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-last-modified-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/file}not-found") of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment, "WE: Q{http://expath.org/ns/file}not-found " ++ binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'EXPath-file-size-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        (if (file:exists(\"sandpit/test.txt\")) \n"
        "          then file:delete(\"sandpit/test.txt\")\n"
        "          else ()), \n"
        "        file:write-text(\"sandpit/test.txt\", (\"abc\")),\n"
        "        file:size(\"sandpit/test.txt\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-size-001.xq"),
                Qry1
            ),
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

'EXPath-file-size-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        (if (file:exists(\"sandpit/test.txt\")) \n"
        "          then file:delete(\"sandpit/test.txt\")\n"
        "          else ()), \n"
        "        file:write-text(\"sandpit/test.txt\", \"\"),\n"
        "        file:size(\"sandpit/test.txt\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-size-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'EXPath-file-size-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        (if (file:exists(\"sandpit/test.bin\")) \n"
        "          then file:delete(\"sandpit/test.bin\")\n"
        "          else ()), \n"
        "        file:write-binary(\"sandpit/test.bin\", xs:base64Binary(xs:hexBinary(\"0001020304\"))),\n"
        "        file:size(\"sandpit/test.bin\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-size-003.xq"),
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
                    case xqerl_test:assert_eq(Res, "5") of
                        true -> {comment, "Equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_type(Res, "xs:integer") of
                        true -> {comment, "Correct type"};
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

'EXPath-file-size-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:size(\"sandpit/nonexistent.bin\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-size-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/file}not-found") of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment, "WE: Q{http://expath.org/ns/file}not-found " ++ binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'EXPath-file-size-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:size(\"sandpit\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-size-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'EXPath-file-append2-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        (if (file:exists(\"sandpit/test.txt\")) \n"
        "          then file:delete(\"sandpit/test.txt\")\n"
        "          else ()), \n"
        "        file:append(\"sandpit/test.txt\", (\"a\", \"b\", \"c\", 10))",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-append2-001.xq"),
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
                    case xqerl_test:assert_empty(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "ends-with(Q{http://expath.org/ns/file}read-text(\"sandpit/test.txt\"), \"a b c 10\")"
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

'EXPath-file-append2-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         (if (file:exists(\"sandpit/test.txt\")) \n"
        "          then file:delete(\"sandpit/test.txt\")\n"
        "          else ()),\n"
        "        file:append(\"sandpit/test.txt\", <b/>)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-append2-002.xq"),
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
                    case xqerl_test:assert_empty(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "ends-with(Q{http://expath.org/ns/file}read-text(\"sandpit/test.txt\"), \"<b/>\")"
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

'EXPath-file-append2-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:append(\"sandpit/test.txt\"[3], (\"a\", \"b\", \"c\", 10))",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-append2-003.xq"),
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

'EXPath-file-appendText2-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        (if (file:exists(\"sandpit/test.txt\")) \n"
        "          then file:delete(\"sandpit/test.txt\")\n"
        "          else ()), \n"
        "        file:append-text(\"sandpit/test.txt\", \"a\"),\n"
        "        file:append-text(\"sandpit/test.txt\", \"b\"),\n"
        "        file:append-text(\"sandpit/test.txt\", \"c\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-appendText2-001.xq"),
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
                    case xqerl_test:assert_empty(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "Q{http://expath.org/ns/file}read-text(\"sandpit/test.txt\") eq \"abc\""
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

'EXPath-file-appendText2-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:append-text(\"sandpit/test.txt\", \"d\"),\n"
        "        file:append-text(\"sandpit/test.txt\", \"e\"),\n"
        "        file:append-text(\"sandpit/test.txt\", \"f\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-appendText2-002.xq"),
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
                    case xqerl_test:assert_empty(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "Q{http://expath.org/ns/file}read-text(\"sandpit/test.txt\") eq \"abcdef\""
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

'EXPath-file-appendText2-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "file:append-text(\"sandpit/test.txt\", \"\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-appendText2-003.xq"),
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
                    case xqerl_test:assert_empty(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "Q{http://expath.org/ns/file}read-text(\"sandpit/test.txt\") eq \"abcdef\""
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

'EXPath-file-appendText2-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "file:append-text(\"sandpit/test.txt\", \"£\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-appendText2-004.xq"),
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
                    case xqerl_test:assert_empty(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "Q{http://expath.org/ns/file}read-text(\"sandpit/test.txt\", \"UTF-8\") eq\n"
                            "          \"abcdef£\""
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

'EXPath-file-appendText2-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:append-text(\"sandpit\", \"abc\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-appendText2-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/file}is-dir") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: Q{http://expath.org/ns/file}is-dir " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'EXPath-file-appendText2-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:append-text(\"nonexistent/file.xml\", \"abc\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-appendText2-006.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/file}no-dir") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: Q{http://expath.org/ns/file}no-dir " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'EXPath-file-appendText3-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        (if (file:exists(\"sandpit/test2.txt\")) \n"
        "          then file:delete(\"sandpit/test2.txt\")\n"
        "          else ()), \n"
        "        file:append-text(\"sandpit/test2.txt\", (\"a\"), \"UTF-8\"),\n"
        "        file:append-text(\"sandpit/test2.txt\", (\"b\"), \"UTF-8\"),\n"
        "        file:append-text(\"sandpit/test2.txt\", (\"c\"), \"UTF-8\"),\n"
        "        file:append-text(\"sandpit/test2.txt\", (\"£\"), \"UTF-8\")\n"
        "        \n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-appendText3-001.xq"),
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
                    case xqerl_test:assert_empty(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "Q{http://expath.org/ns/file}read-text(\"sandpit/test2.txt\") eq \"abc£\""
                        )
                    of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "xs:hexBinary(Q{http://expath.org/ns/file}read-binary(\"sandpit/test2.txt\")) eq\n"
                            "          xs:hexBinary(\"616263C2A3\")"
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

'EXPath-file-appendText3-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        (if (file:exists(\"sandpit/test3.txt\")) \n"
        "          then file:delete(\"sandpit/test3.txt\")\n"
        "          else ()), \n"
        "        file:append-text(\"sandpit/test3.txt\", (\"a\"), \"UTF-16\"),\n"
        "        file:append-text(\"sandpit/test3.txt\", (\"b\"), \"UTF-16\"),\n"
        "        file:append-text(\"sandpit/test3.txt\", (\"c\"), \"UTF-16\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-appendText3-002.xq"),
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
                    case xqerl_test:assert_empty(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "xs:hexBinary(Q{http://expath.org/ns/file}read-binary(\"sandpit/test3.txt\")) eq\n"
                            "          xs:hexBinary(\"FEFF0061FEFF0062FEFF0063\")"
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

'EXPath-file-appendText3-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        (if (file:exists(\"sandpit/test4.txt\")) \n"
        "          then file:delete(\"sandpit/test4.txt\")\n"
        "          else ()), \n"
        "        file:append-text(\"sandpit/test4.txt\", \"abc\", \"encoding-1234\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-appendText3-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/file}unknown-encoding") of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment, "WE: Q{http://expath.org/ns/file}unknown-encoding " ++ binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'EXPath-file-appendText3-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:append-text(\"sandpit\", \"abc\", \"UTF-8\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-appendText3-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/file}is-dir") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: Q{http://expath.org/ns/file}is-dir " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'EXPath-file-appendText3-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:append-text(\"nonexistent/file.xml\", \"abc\", \"UTF-8\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-appendText3-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/file}no-dir") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: Q{http://expath.org/ns/file}no-dir " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'EXPath-file-appendText3-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:append-text(\"sandpit/test.txt\", \"abc\", ())",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-appendText3-006.xq"),
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

'EXPath-file-appendBinary2-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        (if (file:exists(\"sandpit/test.bin\")) \n"
        "          then file:delete(\"sandpit/test.bin\")\n"
        "          else ()), \n"
        "        file:append-binary(\"sandpit/test.bin\", xs:base64Binary(xs:hexBinary(\"0001020304\")))",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-appendBinary2-001.xq"),
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
                    case xqerl_test:assert_empty(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "xs:hexBinary(Q{http://expath.org/ns/file}read-binary(\"sandpit/test.bin\")) eq\n"
                            "          xs:hexBinary(\"0001020304\")"
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

'EXPath-file-appendBinary2-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:append-binary(\"sandpit/test.bin\", \n"
        "            xs:base64Binary(xs:hexBinary(\"05\"))),\n"
        "        file:append-binary(\"sandpit/test.bin\",\n"
        "            xs:base64Binary(xs:hexBinary(\"06\")))    \n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-appendBinary2-002.xq"),
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
                    case xqerl_test:assert_empty(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "xs:hexBinary(Q{http://expath.org/ns/file}read-binary(\"sandpit/test.bin\")) eq\n"
                            "          xs:hexBinary(\"00010203040506\")"
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

'EXPath-file-appendBinary2-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:append-binary(\"sandpit\", xs:base64Binary(\"\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-appendBinary2-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/file}is-dir") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: Q{http://expath.org/ns/file}is-dir " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'EXPath-file-appendBinary2-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:append-binary(\"nonexistent/file.bin\", xs:base64Binary(\"\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-appendBinary2-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/file}no-dir") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: Q{http://expath.org/ns/file}no-dir " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'EXPath-file-copy-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:write-text(\"sandpit/source.txt\", \"defenestration\"),\n"
        "        file:write-text(\"sandpit/target.txt\", \"prague\"),\n"
        "        file:copy(\"sandpit/source.txt\", \"sandpit/target.txt\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-copy-001.xq"),
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
                    case xqerl_test:assert_empty(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "Q{http://expath.org/ns/file}read-text(\"sandpit/target.txt\") eq\n"
                            "          \"defenestration\""
                        )
                    of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "Q{http://expath.org/ns/file}exists(\"sandpit/source.txt\")"
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

'EXPath-file-copy-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:write-text(\"sandpit/source.txt\", \"treaty\"),\n"
        "        file:delete(\"sandpit/target.txt\"),\n"
        "        file:copy(\"sandpit/source.txt\", \"sandpit/target.txt\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-copy-002.xq"),
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
                    case xqerl_test:assert_empty(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "Q{http://expath.org/ns/file}read-text(\"sandpit/target.txt\") eq \"treaty\""
                        )
                    of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "Q{http://expath.org/ns/file}exists(\"sandpit/source.txt\")"
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

'EXPath-file-copy-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:write-text(\"sandpit/source.txt\", \"persecution\"),\n"
        "        if (file:exists(\"sandpit/dir2\")) then file:delete(\"sandpit/dir2\", true()) else (),\n"
        "        file:create-dir(\"sandpit/dir2\"),\n"
        "        file:copy(\"sandpit/source.txt\", \"sandpit/dir2\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-copy-003.xq"),
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
                    case xqerl_test:assert_empty(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "Q{http://expath.org/ns/file}exists(\"sandpit/dir2/source.txt\")"
                        )
                    of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "Q{http://expath.org/ns/file}read-text(\"sandpit/dir2/source.txt\") eq\n"
                            "          \"persecution\""
                        )
                    of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "Q{http://expath.org/ns/file}exists(\"sandpit/source.txt\")"
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

'EXPath-file-copy-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        if (file:exists(\"sandpit/dirsource\")) then file:delete(\"sandpit/dirsource\", true()) else (),\n"
        "        if (file:exists(\"sandpit/dirtarget\")) then file:delete(\"sandpit/dirtarget\", true()) else (),\n"
        "        file:create-dir(\"sandpit/dirsource\"),\n"
        "        file:append-text(\"sandpit/dirsource/london.txt\", \"london\"),\n"
        "        file:append-text(\"sandpit/dirsource/paris.txt\", \"paris\"),\n"
        "        file:append-text(\"sandpit/dirsource/rome.txt\", \"rome\"),\n"
        "        file:append-text(\"sandpit/dirsource/madrid.txt\", \"madrid\"),\n"
        "        file:copy(\"sandpit/dirsource\", \"sandpit/dirtarget\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-copy-004.xq"),
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
                    case xqerl_test:assert_empty(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "Q{http://expath.org/ns/file}exists(\"sandpit/dirtarget/paris.txt\")"
                        )
                    of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "Q{http://expath.org/ns/file}read-text(\"sandpit/dirtarget/paris.txt\") eq\n"
                            "          \"paris\""
                        )
                    of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "Q{http://expath.org/ns/file}exists(\"sandpit/dirsource/london.txt\")"
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

'EXPath-file-copy-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        if (file:exists(\"sandpit/dirsource\")) then file:delete(\"sandpit/dirsource\", true()) else (),\n"
        "        if (file:exists(\"sandpit/dirtarget\")) then file:delete(\"sandpit/dirtarget\", true()) else (),\n"
        "        file:create-dir(\"sandpit/dirsource\"),\n"
        "        file:create-dir(\"sandpit/dirtarget\"),\n"
        "        file:append-text(\"sandpit/dirsource/london.txt\", \"london\"),\n"
        "        file:append-text(\"sandpit/dirsource/paris.txt\", \"paris\"),\n"
        "        file:append-text(\"sandpit/dirsource/rome.txt\", \"rome\"),\n"
        "        file:append-text(\"sandpit/dirsource/madrid.txt\", \"madrid\"),\n"
        "        file:copy(\"sandpit/dirsource\", \"sandpit/dirtarget\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-copy-005.xq"),
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
                    case xqerl_test:assert_empty(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "Q{http://expath.org/ns/file}exists(\"sandpit/dirtarget/dirsource/paris.txt\")"
                        )
                    of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "Q{http://expath.org/ns/file}read-text(\"sandpit/dirtarget/dirsource/paris.txt\") eq\n"
                            "          \"paris\""
                        )
                    of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "Q{http://expath.org/ns/file}exists(\"sandpit/dirsource/london.txt\")"
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

'EXPath-file-createDir-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        if (file:exists(\"sandpit/dir3\")) then file:delete(\"sandpit/dir3\", true()) else (),\n"
        "        file:create-dir(\"sandpit/dir3\"),\n"
        "        file:list(\"sandpit/dir3\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-createDir-001.xq"),
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
                    case xqerl_test:assert_empty(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "Q{http://expath.org/ns/file}exists(\"sandpit/dir3\")"
                        )
                    of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "Q{http://expath.org/ns/file}is-dir(\"sandpit/dir3\")"
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

'EXPath-file-createDir-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:create-dir(\"sandpit/dir3\"),\n"
        "        file:create-dir(\"sandpit/dir3\"),\n"
        "        file:list(\"sandpit/dir3\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-createDir-002.xq"),
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
                    case xqerl_test:assert_empty(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "Q{http://expath.org/ns/file}exists(\"sandpit/dir3\")"
                        )
                    of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "Q{http://expath.org/ns/file}is-dir(\"sandpit/dir3\")"
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

'EXPath-file-createDir-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        if (file:exists(\"sandpit/dir3\")) then file:delete(\"sandpit/dir3\", true()) else (),\n"
        "        file:create-dir(\"sandpit/dir3\"),\n"
        "        file:write-text(\"sandpit/dir3/test\", \"text\"),\n"
        "        file:create-dir(\"sandpit/dir3/test\"),\n"
        "        file:list(\"sandpit/dir3/test\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-createDir-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/file}exists") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: Q{http://expath.org/ns/file}exists " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'EXPath-file-createDir-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        if (file:exists(\"sandpit/dir3\")) then file:delete(\"sandpit/dir3\", true()) else (),\n"
        "        file:create-dir(\"sandpit/dir3\"),\n"
        "        file:write-text(\"sandpit/dir3/test\", \"text\"),\n"
        "        file:create-dir(\"sandpit/dir3/test/dir4\"),\n"
        "        file:list(\"sandpit/dir3/test\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-createDir-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/file}exists") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: Q{http://expath.org/ns/file}exists " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'EXPath-file-createDir-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        if (file:exists(\"sandpit/dir3\")) then file:delete(\"sandpit/dir3\", true()) else (),\n"
        "        file:create-dir(\"sandpit/dir3/dir4/dir5/dir6\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-createDir-005.xq"),
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
                    case xqerl_test:assert_empty(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "Q{http://expath.org/ns/file}exists(\"sandpit/dir3\")"
                        )
                    of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "Q{http://expath.org/ns/file}is-dir(\"sandpit/dir3\")"
                        )
                    of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "Q{http://expath.org/ns/file}exists(\"sandpit/dir3/dir4\")"
                        )
                    of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "Q{http://expath.org/ns/file}is-dir(\"sandpit/dir3/dir4\")"
                        )
                    of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "Q{http://expath.org/ns/file}exists(\"sandpit/dir3/dir4/dir5\")"
                        )
                    of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "Q{http://expath.org/ns/file}is-dir(\"sandpit/dir3/dir4/dir5\")"
                        )
                    of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "Q{http://expath.org/ns/file}exists(\"sandpit/dir3/dir4/dir5/dir6\")"
                        )
                    of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "Q{http://expath.org/ns/file}is-dir(\"sandpit/dir3/dir4/dir5/dir6\")"
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

'EXPath-file-createTempFile-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:create-temp-file(\"EXPathFile\",\".tmp\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-createTempFile-001.xq"),
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
                    case xqerl_test:assert(Res, "Q{http://expath.org/ns/file}exists($result)") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "$result ne\n"
                            "          Q{http://expath.org/ns/file}create-temp-file(\"EXPathFile\",\".tmp\")"
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

'EXPath-file-createTempFile-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        if (file:exists(\"sandpit/temp\")) then () else file:create-dir(\"sandpit/temp\"),\n"
        "        file:create-temp-file(\"EXPathFile\",\".tmp\",\"sandpit/temp\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-createTempFile-002.xq"),
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
                    case xqerl_test:assert(Res, "Q{http://expath.org/ns/file}exists($result)") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "$result ne\n"
                            "          Q{http://expath.org/ns/file}create-temp-file(\"EXPathFile\",\".tmp\",\"sandpit/temp\")"
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

'EXPath-file-createTempDir-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:create-temp-dir(\"EXPathFile\",\".tmp\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-createTempDir-001.xq"),
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
                    case xqerl_test:assert(Res, "Q{http://expath.org/ns/file}exists($result)") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "$result ne Q{http://expath.org/ns/file}create-temp-dir(\"EXPathFile\",\".tmp\")"
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

'EXPath-file-createTempDir-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        if (file:exists(\"sandpit/temp\")) then () else file:create-dir(\"sandpit/temp\"),      \n"
        "        file:create-temp-dir(\"EXPathFile\",\".tmp\",\"sandpit/temp\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-createTempDir-002.xq"),
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
                    case xqerl_test:assert(Res, "Q{http://expath.org/ns/file}exists($result)") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "$result ne Q{http://expath.org/ns/file}create-temp-dir(\"EXPathFile\",\".tmp\",\"sandpit/temp\")"
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

'EXPath-file-delete-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        if (file:exists(\"sandpit/dir4\")) then () else file:create-dir(\"sandpit/dir4\"),\n"
        "        file:write-text(\"sandpit/dir4/test.txt\", \"test\"),\n"
        "        file:delete(\"sandpit/dir4/test.txt\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-delete-001.xq"),
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
                    case xqerl_test:assert_empty(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "not(Q{http://expath.org/ns/file}exists(\"sandpit/dir4/test.txt\"))"
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

'EXPath-file-delete-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        if (file:exists(\"sandpit/dir4\")) then file:delete(\"sandpit/dir4\", true()) else (),\n"
        "        file:create-dir(\"sandpit/dir4\"),\n"
        "        file:delete(\"sandpit/dir4\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-delete-002.xq"),
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
                    case xqerl_test:assert_empty(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "not(Q{http://expath.org/ns/file}exists(\"sandpit/dir4\"))"
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

'EXPath-file-delete-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        if (file:exists(\"sandpit/dir4\")) then () else file:create-dir(\"sandpit/dir4/dir5/dir6\"),\n"
        "        file:delete(\"sandpit/dir4\", true())\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-delete-003.xq"),
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
                    case xqerl_test:assert_empty(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "not(Q{http://expath.org/ns/file}exists(\"sandpit/dir4\"))"
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

'EXPath-file-delete-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        if (file:exists(\"sandpit/dir4\")) then () else file:create-dir(\"sandpit/dir4/dir5/dir6\"),\n"
        "        file:delete(\"sandpit/dir4\", false())\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-delete-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/file}is-dir") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: Q{http://expath.org/ns/file}is-dir " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'EXPath-file-delete-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        if (file:exists(\"sandpit/dir4\")) then () \n"
        "            else (file:delete(\"sandpit/dir4\", true()), \n"
        "                  file:create-dir(\"sandpit/dir4\"),\n"
        "                  file:write-text(\"sandpit/dir4/test.txt\", \"grandmother\")),\n"
        "        file:delete(\"sandpit/dir4\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-delete-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/file}is-dir") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: Q{http://expath.org/ns/file}is-dir " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'EXPath-file-delete-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:delete(\"sandpit/does-not-exist.txt\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-delete-006.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/file}not-found") of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment, "WE: Q{http://expath.org/ns/file}not-found " ++ binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'EXPath-file-list-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        if (file:exists(\"sandpit/dir5\")) then file:delete(\"sandpit/dir5\", true()) else (),\n"
        "        file:create-dir(\"sandpit/dir5\"),\n"
        "        file:list(\"sandpit/dir5\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-list-001.xq"),
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
                    case xqerl_test:assert_empty(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "Q{http://expath.org/ns/file}exists(\"sandpit/dir5\")"
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

'EXPath-file-list-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        if (file:exists(\"sandpit/dir5\")) then file:delete(\"sandpit/dir5\", true()) else (),\n"
        "        file:create-dir(\"sandpit/dir5\"),\n"
        "        file:list(\"sandpit/dir5\", true())\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-list-002.xq"),
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
                    case xqerl_test:assert_empty(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "Q{http://expath.org/ns/file}exists(\"sandpit/dir5\")"
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

'EXPath-file-list-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        if (file:exists(\"sandpit/dir5\")) then file:delete(\"sandpit/dir5\", true()) else (),\n"
        "        file:create-dir(\"sandpit/dir5\"),\n"
        "        file:list(\"sandpit/dir5\", false())\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-list-003.xq"),
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
                    case xqerl_test:assert_empty(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "Q{http://expath.org/ns/file}exists(\"sandpit/dir5\")"
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

'EXPath-file-list-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        if (file:exists(\"sandpit/dir5\")) then file:delete(\"sandpit/dir5\", true()) else (),\n"
        "        file:create-dir(\"sandpit/dir5\"),\n"
        "        file:list(\"sandpit/dir5\", true(), \"*.*\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-list-004.xq"),
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
                    case xqerl_test:assert_empty(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "Q{http://expath.org/ns/file}exists(\"sandpit/dir5\")"
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

'EXPath-file-list-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        if (file:exists(\"sandpit/dir5\")) then file:delete(\"sandpit/dir5\", true()) else (),\n"
        "        file:create-dir(\"sandpit/dir5\"),\n"
        "        file:write-text(\"sandpit/dir5/berlin.txt\", \"berlin\"),\n"
        "        file:write-text(\"sandpit/dir5/geneva.txt\", \"geneva\"),\n"
        "        file:write-text(\"sandpit/dir5/oslo.txt\", \"oslo\"),\n"
        "        file:list(\"sandpit/dir5\", true())\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-list-005.xq"),
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
                        xqerl_test:assert_permutation(
                            Res,
                            "\"berlin.txt\", \"geneva.txt\", \"oslo.txt\""
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

'EXPath-file-list-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        if (file:exists(\"sandpit/dir5\")) then file:delete(\"sandpit/dir5\", true()) else (),\n"
        "        file:create-dir(\"sandpit/dir5\"),\n"
        "        file:write-text(\"sandpit/dir5/berlin.txt\", \"berlin\"),\n"
        "        file:write-text(\"sandpit/dir5/geneva.txt\", \"geneva\"),\n"
        "        file:write-text(\"sandpit/dir5/oslo.txt\", \"oslo\"),\n"
        "        file:list(\"sandpit/dir5\", false())\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-list-006.xq"),
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
                        xqerl_test:assert_permutation(
                            Res,
                            "\"berlin.txt\", \"geneva.txt\", \"oslo.txt\""
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

'EXPath-file-list-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        if (file:exists(\"sandpit/dir5\")) then file:delete(\"sandpit/dir5\", true()) else (),\n"
        "        file:create-dir(\"sandpit/dir5\"),\n"
        "        file:write-text(\"sandpit/dir5/berlin.txt\", \"berlin\"),\n"
        "        file:write-text(\"sandpit/dir5/geneva.txt\", \"geneva\"),\n"
        "        file:write-text(\"sandpit/dir5/oslo.txt\", \"oslo\"),\n"
        "        file:list(\"sandpit/dir5\", false())\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-list-007.xq"),
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
                        xqerl_test:assert_permutation(
                            Res,
                            "\"berlin.txt\", \"geneva.txt\", \"oslo.txt\""
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

'EXPath-file-list-008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        if (file:exists(\"sandpit/dir5\")) then file:delete(\"sandpit/dir5\", true()) else (),\n"
        "        file:create-dir(\"sandpit/dir5\"),\n"
        "        file:write-text(\"sandpit/dir5/berlin.txt\", \"berlin\"),\n"
        "        file:write-text(\"sandpit/dir5/geneva.txt\", \"geneva\"),\n"
        "        file:write-text(\"sandpit/dir5/oslo.txt\", \"oslo\"),\n"
        "        file:create-dir(\"sandpit/dir5/dir6\"),\n"
        "        file:write-text(\"sandpit/dir5/dir6/helsinki.txt\", \"helsinki\"),\n"
        "        file:list(\"sandpit/dir5\", true())\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-list-008.xq"),
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
                    case
                        xqerl_test:assert_permutation(
                            Res,
                            "\"berlin.txt\", \"geneva.txt\", \"oslo.txt\", \"dir6\\\",\n"
                            "          \"dir6\\helsinki.txt\""
                        )
                    of
                        true -> {comment, "Correct permutation"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_permutation(
                            Res,
                            "\"berlin.txt\", \"geneva.txt\", \"oslo.txt\", \"dir6/\",\n"
                            "          \"dir6/helsinki.txt\""
                        )
                    of
                        true -> {comment, "Correct permutation"};
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

'EXPath-file-list-009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        if (file:exists(\"sandpit/dir5\")) then file:delete(\"sandpit/dir5\", true()) else (),\n"
        "        file:create-dir(\"sandpit/dir5\"),\n"
        "        file:write-text(\"sandpit/dir5/berlin.txt\", \"berlin\"),\n"
        "        file:write-text(\"sandpit/dir5/geneva.txt\", \"geneva\"),\n"
        "        file:write-text(\"sandpit/dir5/oslo.txt\", \"oslo\"),\n"
        "        file:create-dir(\"sandpit/dir5/dir6\"),\n"
        "        file:write-text(\"sandpit/dir5/dir6/helsinki.txt\", \"helsinki\"),\n"
        "        file:list(\"sandpit/dir5\", false())\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-list-009.xq"),
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
                    case
                        xqerl_test:assert_permutation(
                            Res,
                            "\"berlin.txt\", \"geneva.txt\", \"oslo.txt\", \"dir6\\\""
                        )
                    of
                        true -> {comment, "Correct permutation"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_permutation(
                            Res,
                            "\"berlin.txt\", \"geneva.txt\", \"oslo.txt\", \"dir6/\""
                        )
                    of
                        true -> {comment, "Correct permutation"};
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

'EXPath-file-list-010'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        if (file:exists(\"sandpit/dir5\")) then file:delete(\"sandpit/dir5\", true()) else (),\n"
        "        file:create-dir(\"sandpit/dir5\"),\n"
        "        file:write-text(\"sandpit/dir5/berlin.txt\", \"berlin\"),\n"
        "        file:write-text(\"sandpit/dir5/geneva.txt\", \"geneva\"),\n"
        "        file:write-text(\"sandpit/dir5/oslo.txt\", \"oslo\"),\n"
        "        file:create-dir(\"sandpit/dir5/dir6\"),\n"
        "        file:write-text(\"sandpit/dir5/dir6/helsinki.txt\", \"helsinki\"),\n"
        "        file:list(\"sandpit/dir5\", false())\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-list-010.xq"),
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
                    case
                        xqerl_test:assert_permutation(
                            Res,
                            "\"berlin.txt\", \"geneva.txt\", \"oslo.txt\", \"dir6\\\""
                        )
                    of
                        true -> {comment, "Correct permutation"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_permutation(
                            Res,
                            "\"berlin.txt\", \"geneva.txt\", \"oslo.txt\", \"dir6/\""
                        )
                    of
                        true -> {comment, "Correct permutation"};
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

'EXPath-file-list-011'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        if (file:exists(\"sandpit/dir5\")) then file:delete(\"sandpit/dir5\", true()) else (),\n"
        "        file:create-dir(\"sandpit/dir5\"),\n"
        "        file:write-text(\"sandpit/dir5/berlin.txt\", \"berlin\"),\n"
        "        file:list(\"sandpit/dir5/berlin.txt\", false())\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-list-011.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/file}no-dir") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: Q{http://expath.org/ns/file}no-dir " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'EXPath-file-list-012'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        if (file:exists(\"sandpit/dir5\")) then file:delete(\"sandpit/dir5\", true()) else (),\n"
        "        file:create-dir(\"sandpit/dir5\"),\n"
        "        file:write-text(\"sandpit/dir5/berlin.txt\", \"berlin\"),\n"
        "        file:list(\"sandpit/non/existent/path\", false())\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-list-012.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/file}no-dir") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: Q{http://expath.org/ns/file}no-dir " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'EXPath-file-list-013'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        if (file:exists(\"sandpit/dir5\")) then file:delete(\"sandpit/dir5\", true()) else (),\n"
        "        file:create-dir(\"sandpit/dir5\"),\n"
        "        file:write-text(\"sandpit/dir5/berlin.txt\", \"berlin\"),\n"
        "        file:write-text(\"sandpit/dir5/berlin.csv\", \"geneva\"),\n"
        "        file:write-text(\"sandpit/dir5/oslo.dat\", \"oslo\"),\n"
        "        file:create-dir(\"sandpit/dir5/dir6\"),\n"
        "        file:write-text(\"sandpit/dir5/dir6/berlin.jpg\", \"helsinki\"),\n"
        "        file:list(\"sandpit/dir5\", true(), \"berlin.*\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-list-013.xq"),
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
                    case
                        xqerl_test:assert_permutation(
                            Res,
                            "\"berlin.txt\", \"berlin.csv\", \"dir6/berlin.jpg\""
                        )
                    of
                        true -> {comment, "Correct permutation"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_permutation(
                            Res,
                            "\"berlin.txt\", \"berlin.csv\", \"dir6\\berlin.jpg\""
                        )
                    of
                        true -> {comment, "Correct permutation"};
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

'EXPath-file-list-014'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        if (file:exists(\"sandpit/dir5\")) then file:delete(\"sandpit/dir5\", true()) else (),\n"
        "        file:create-dir(\"sandpit/dir5\"),\n"
        "        file:write-text(\"sandpit/dir5/berlin.txt\", \"berlin\"),\n"
        "        file:write-text(\"sandpit/dir5/berlin.csv\", \"geneva\"),\n"
        "        file:write-text(\"sandpit/dir5/oslo.dat\", \"oslo\"),\n"
        "        file:create-dir(\"sandpit/dir5/dir6\"),\n"
        "        file:write-text(\"sandpit/dir5/dir6/berlin.jpg\", \"helsinki\"),\n"
        "        file:list(\"sandpit/dir5\", false(), \"berlin.*\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-list-014.xq"),
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
                    case xqerl_test:assert_permutation(Res, "\"berlin.txt\", \"berlin.csv\"") of
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

'EXPath-file-list-015'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        if (file:exists(\"sandpit/dir5\")) then file:delete(\"sandpit/dir5\", true()) else (),\n"
        "        file:create-dir(\"sandpit/dir5\"),\n"
        "        file:write-text(\"sandpit/dir5/berlin.txt\", \"berlin\"),\n"
        "        file:write-text(\"sandpit/dir5/geneva.txt\", \"geneva\"),\n"
        "        file:write-text(\"sandpit/dir5/oslo.dat\", \"oslo\"),\n"
        "        file:create-dir(\"sandpit/dir5/dir6\"),\n"
        "        file:write-text(\"sandpit/dir5/dir6/helsinki.txt\", \"helsinki\"),\n"
        "        file:list(\"sandpit/dir5\", true(), \"*.txt\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-list-015.xq"),
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
                    case
                        xqerl_test:assert_permutation(
                            Res,
                            "\"berlin.txt\", \"geneva.txt\", \"dir6/helsinki.txt\""
                        )
                    of
                        true -> {comment, "Correct permutation"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_permutation(
                            Res,
                            "\"berlin.txt\", \"geneva.txt\", \"dir6\\helsinki.txt\""
                        )
                    of
                        true -> {comment, "Correct permutation"};
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

'EXPath-file-list-016'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        if (file:exists(\"sandpit/dir5\")) then file:delete(\"sandpit/dir5\", true()) else (),\n"
        "        file:create-dir(\"sandpit/dir5\"),\n"
        "        file:write-text(\"sandpit/dir5/berlin.txt\", \"berlin\"),\n"
        "        file:write-text(\"sandpit/dir5/geneva.tat\", \"geneva\"),\n"
        "        file:write-text(\"sandpit/dir5/oslo.dat\", \"oslo\"),\n"
        "        file:create-dir(\"sandpit/dir5/dir6\"),\n"
        "        file:write-text(\"sandpit/dir5/dir6/helsinki.tit\", \"helsinki\"),\n"
        "        file:list(\"sandpit/dir5\", true(), \"*.t?t\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-list-016.xq"),
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
                    case
                        xqerl_test:assert_permutation(
                            Res,
                            "\"berlin.txt\", \"geneva.tat\", \"dir6/helsinki.tit\""
                        )
                    of
                        true -> {comment, "Correct permutation"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_permutation(
                            Res,
                            "\"berlin.txt\", \"geneva.tat\", \"dir6\\helsinki.tit\""
                        )
                    of
                        true -> {comment, "Correct permutation"};
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

'EXPath-file-list-017'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        if (file:exists(\"sandpit/dir5\")) then file:delete(\"sandpit/dir5\", true()) else (),\n"
        "        file:create-dir(\"sandpit/dir5\"),\n"
        "        file:write-text(\"sandpit/dir5/berlin1.txt\", \"berlin\"),\n"
        "        file:write-text(\"sandpit/dir5/berlin2.tat\", \"geneva\"),\n"
        "        file:write-text(\"sandpit/dir5/berlin3.dat\", \"oslo\"),\n"
        "        file:create-dir(\"sandpit/dir5/dir6\"),\n"
        "        file:write-text(\"sandpit/dir5/dir6/berlin4.tit\", \"helsinki\"),\n"
        "        file:list(\"sandpit/dir5\", true(), \"berlin*.*\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-list-017.xq"),
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
                    case
                        xqerl_test:assert_permutation(
                            Res,
                            "\"berlin1.txt\", \"berlin2.tat\", \"berlin3.dat\",\n"
                            "          \"dir6/berlin4.tit\""
                        )
                    of
                        true -> {comment, "Correct permutation"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_permutation(
                            Res,
                            "\"berlin1.txt\", \"berlin2.tat\", \"berlin3.dat\",\n"
                            "          \"dir6\\berlin4.tit\""
                        )
                    of
                        true -> {comment, "Correct permutation"};
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

'EXPath-file-list-018'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        exists(file:list(\".\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-list-018.xq"),
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

'EXPath-file-list-019'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        exists(file:list(\"..\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-list-019.xq"),
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

'EXPath-file-move-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:write-text(\"sandpit/source.txt\", \"defenestration\"),\n"
        "        file:write-text(\"sandpit/target.txt\", \"prague\"),\n"
        "        file:move(\"sandpit/source.txt\", \"sandpit/target.txt\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-move-001.xq"),
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
                    case xqerl_test:assert_empty(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "Q{http://expath.org/ns/file}read-text(\"sandpit/target.txt\") eq\n"
                            "          \"defenestration\""
                        )
                    of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "not(Q{http://expath.org/ns/file}exists(\"sandpit/source.txt\"))"
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

'EXPath-file-move-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:write-text(\"sandpit/source.txt\", \"treaty\"),\n"
        "        file:delete(\"sandpit/target.txt\"),\n"
        "        file:move(\"sandpit/source.txt\", \"sandpit/target.txt\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-move-002.xq"),
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
                    case xqerl_test:assert_empty(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "Q{http://expath.org/ns/file}read-text(\"sandpit/target.txt\") eq \"treaty\""
                        )
                    of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "not(Q{http://expath.org/ns/file}exists(\"sandpit/source.txt\"))"
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

'EXPath-file-move-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:write-text(\"sandpit/source.txt\", \"persecution\"),\n"
        "        if (file:exists(\"sandpit/dir2\")) then file:delete(\"sandpit/dir2\", true()) else (),\n"
        "        file:create-dir(\"sandpit/dir2\"),\n"
        "        file:move(\"sandpit/source.txt\", \"sandpit/dir2\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-move-003.xq"),
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
                    case xqerl_test:assert_empty(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "Q{http://expath.org/ns/file}exists(\"sandpit/dir2/source.txt\")"
                        )
                    of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "Q{http://expath.org/ns/file}read-text(\"sandpit/dir2/source.txt\") eq\n"
                            "          \"persecution\""
                        )
                    of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "not(Q{http://expath.org/ns/file}exists(\"sandpit/source.txt\"))"
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

'EXPath-file-move-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        if (file:exists(\"sandpit/dirsource\")) then file:delete(\"sandpit/dirsource\", true()) else (),\n"
        "        if (file:exists(\"sandpit/dirtarget\")) then file:delete(\"sandpit/dirtarget\", true()) else (),\n"
        "        file:create-dir(\"sandpit/dirsource\"),\n"
        "        file:append-text(\"sandpit/dirsource/london.txt\", \"london\"),\n"
        "        file:append-text(\"sandpit/dirsource/paris.txt\", \"paris\"),\n"
        "        file:append-text(\"sandpit/dirsource/rome.txt\", \"rome\"),\n"
        "        file:append-text(\"sandpit/dirsource/madrid.txt\", \"madrid\"),\n"
        "        file:move(\"sandpit/dirsource\", \"sandpit/dirtarget\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-move-004.xq"),
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
                    case xqerl_test:assert_empty(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "Q{http://expath.org/ns/file}exists(\"sandpit/dirtarget/paris.txt\")"
                        )
                    of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "Q{http://expath.org/ns/file}read-text(\"sandpit/dirtarget/paris.txt\") eq\n"
                            "          \"paris\""
                        )
                    of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "not(Q{http://expath.org/ns/file}exists(\"sandpit/dirsource/london.txt\"))"
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

'EXPath-file-move-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        if (file:exists(\"sandpit/dirsource\")) then file:delete(\"sandpit/dirsource\", true()) else (),\n"
        "        if (file:exists(\"sandpit/dirtarget\")) then file:delete(\"sandpit/dirtarget\", true()) else (),\n"
        "        file:create-dir(\"sandpit/dirsource\"),\n"
        "        file:create-dir(\"sandpit/dirtarget\"),\n"
        "        file:append-text(\"sandpit/dirsource/london.txt\", \"london\"),\n"
        "        file:append-text(\"sandpit/dirsource/paris.txt\", \"paris\"),\n"
        "        file:append-text(\"sandpit/dirsource/rome.txt\", \"rome\"),\n"
        "        file:append-text(\"sandpit/dirsource/madrid.txt\", \"madrid\"),\n"
        "        file:move(\"sandpit/dirsource\", \"sandpit/dirtarget\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-move-005.xq"),
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
                    case xqerl_test:assert_empty(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "Q{http://expath.org/ns/file}exists(\"sandpit/dirtarget/dirsource/paris.txt\")"
                        )
                    of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "Q{http://expath.org/ns/file}read-text(\"sandpit/dirtarget/dirsource/paris.txt\") eq\n"
                            "          \"paris\""
                        )
                    of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "not(Q{http://expath.org/ns/file}exists(\"sandpit/dirsource/london.txt\"))"
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

'EXPath-file-readBinary-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        (if (file:exists(\"sandpit/test.bin\")) \n"
        "          then file:delete(\"sandpit/test.bin\")\n"
        "          else ()), \n"
        "        file:append-binary(\"sandpit/test.bin\", xs:base64Binary(xs:hexBinary(\"0001020304\"))),\n"
        "        file:read-binary(\"sandpit/test.bin\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-readBinary-001.xq"),
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
                        xqerl_test:assert(
                            Res,
                            "xs:hexBinary($result) eq xs:hexBinary(\"0001020304\")"
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

'EXPath-file-readBinary-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        (if (file:exists(\"sandpit/test.bin\")) \n"
        "          then file:delete(\"sandpit/test.bin\")\n"
        "          else ()), \n"
        "        file:append-text(\"sandpit/test.bin\", \"abc\", \"UTF-8\"),\n"
        "        file:read-binary(\"sandpit/test.bin\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-readBinary-002.xq"),
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
                        xqerl_test:assert(Res, "xs:hexBinary($result) eq xs:hexBinary(\"616263\")")
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

'EXPath-file-readBinary-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        (if (file:exists(\"sandpit/test.bin\")) \n"
        "          then file:delete(\"sandpit/test.bin\")\n"
        "          else ()), \n"
        "        file:append-text(\"sandpit/test.bin\", \"abc\", \"UTF-8\"),\n"
        "        file:read-binary(\"sandpit/nonexistent.bin\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-readBinary-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/file}not-found") of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment, "WE: Q{http://expath.org/ns/file}not-found " ++ binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'EXPath-file-readBinary-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        (if (file:exists(\"sandpit/test.bin\")) \n"
        "          then file:delete(\"sandpit/test.bin\")\n"
        "          else ()), \n"
        "        file:append-text(\"sandpit/test.bin\", \"abc\", \"UTF-8\"),\n"
        "        file:read-binary(\"sandpit\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-readBinary-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/file}is-dir") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: Q{http://expath.org/ns/file}is-dir " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'EXPath-file-readBinary2-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        (if (file:exists(\"sandpit/test.bin\")) \n"
        "          then file:delete(\"sandpit/test.bin\")\n"
        "          else ()), \n"
        "        file:append-binary(\"sandpit/test.bin\", xs:base64Binary(xs:hexBinary(\"0001020304\"))),\n"
        "        file:read-binary(\"sandpit/test.bin\",0)",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-readBinary2-001.xq"),
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
                        xqerl_test:assert(
                            Res,
                            "xs:hexBinary($result) eq xs:hexBinary(\"0001020304\")"
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

'EXPath-file-readBinary2-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        (if (file:exists(\"sandpit/test.bin\")) \n"
        "          then file:delete(\"sandpit/test.bin\")\n"
        "          else ()), \n"
        "        file:append-binary(\"sandpit/test.bin\", xs:base64Binary(xs:hexBinary(\"0001020304\"))),\n"
        "        file:read-binary(\"sandpit/test.bin\",1)",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-readBinary2-002.xq"),
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
                        xqerl_test:assert(
                            Res,
                            "xs:hexBinary($result) eq xs:hexBinary(\"01020304\")"
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

'EXPath-file-readBinary2-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        (if (file:exists(\"sandpit/test.bin\")) \n"
        "          then file:delete(\"sandpit/test.bin\")\n"
        "          else ()), \n"
        "        file:append-binary(\"sandpit/test.bin\", xs:base64Binary(xs:hexBinary(\"0001020304\"))),\n"
        "        file:read-binary(\"sandpit/test.bin\",-1)",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-readBinary2-003.xq"),
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
                    case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/file}out-of-range") of
                        true ->
                            {comment, "Correct error"};
                        {true, F} ->
                            {comment,
                                "WE: Q{http://expath.org/ns/file}out-of-range " ++
                                    binary_to_list(F)};
                        {false, F} ->
                            F
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

'EXPath-file-readBinary3-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        (if (file:exists(\"sandpit/test.bin\")) \n"
        "          then file:delete(\"sandpit/test.bin\")\n"
        "          else ()), \n"
        "        file:append-binary(\"sandpit/test.bin\", xs:base64Binary(xs:hexBinary(\"0001020304\"))),\n"
        "        file:read-binary(\"sandpit/test.bin\",0,-1)",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-readBinary3-001.xq"),
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
                    case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/file}out-of-range") of
                        true ->
                            {comment, "Correct error"};
                        {true, F} ->
                            {comment,
                                "WE: Q{http://expath.org/ns/file}out-of-range " ++
                                    binary_to_list(F)};
                        {false, F} ->
                            F
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

'EXPath-file-readBinary3-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        (if (file:exists(\"sandpit/test.bin\")) \n"
        "          then file:delete(\"sandpit/test.bin\")\n"
        "          else ()), \n"
        "        file:append-binary(\"sandpit/test.bin\", xs:base64Binary(xs:hexBinary(\"0001020304\"))),\n"
        "        file:read-binary(\"sandpit/test.bin\",1,2)",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-readBinary3-002.xq"),
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
                        xqerl_test:assert(Res, "xs:hexBinary($result) eq xs:hexBinary(\"0102\")")
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

'EXPath-file-readBinary3-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        (if (file:exists(\"sandpit/test.bin\")) \n"
        "          then file:delete(\"sandpit/test.bin\")\n"
        "          else ()), \n"
        "        file:append-binary(\"sandpit/test.bin\", xs:base64Binary(xs:hexBinary(\"0001020304\"))),\n"
        "        file:read-binary(\"sandpit/test.bin\",10,2)",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-readBinary3-003.xq"),
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
                    case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/file}out-of-range") of
                        true ->
                            {comment, "Correct error"};
                        {true, F} ->
                            {comment,
                                "WE: Q{http://expath.org/ns/file}out-of-range " ++
                                    binary_to_list(F)};
                        {false, F} ->
                            F
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

'EXPath-file-readBinary3-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        (if (file:exists(\"sandpit/test.bin\")) \n"
        "          then file:delete(\"sandpit/test.bin\")\n"
        "          else ()), \n"
        "        file:append-binary(\"sandpit/test.bin\", xs:base64Binary(xs:hexBinary(\"0001020304\"))),\n"
        "        file:read-binary(\"sandpit/test.bin\",1,4)",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-readBinary3-004.xq"),
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
                        xqerl_test:assert(
                            Res,
                            "xs:hexBinary($result) eq xs:hexBinary(\"01020304\")"
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

'EXPath-file-readBinary3-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        (if (file:exists(\"sandpit/test.bin\")) \n"
        "          then file:delete(\"sandpit/test.bin\")\n"
        "          else ()), \n"
        "        file:append-binary(\"sandpit/test.bin\", xs:base64Binary(xs:hexBinary(\"0001020304\"))),\n"
        "        file:read-binary(\"sandpit/test.bin\",1,5)",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-readBinary3-005.xq"),
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
                    case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/file}out-of-range") of
                        true ->
                            {comment, "Correct error"};
                        {true, F} ->
                            {comment,
                                "WE: Q{http://expath.org/ns/file}out-of-range " ++
                                    binary_to_list(F)};
                        {false, F} ->
                            F
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

'EXPath-file-readText1-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        (if (file:exists(\"sandpit/test.txt\")) \n"
        "          then file:delete(\"sandpit/test.txt\")\n"
        "          else ()), \n"
        "        file:append-text(\"sandpit/test.txt\", \"abcd\"),\n"
        "        file:read-text(\"sandpit/test.txt\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-readText1-001.xq"),
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
                    case xqerl_test:assert_eq(Res, "\"abcd\"") of
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

'EXPath-file-readText1-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        (if (file:exists(\"sandpit/test.txt\")) \n"
        "          then file:delete(\"sandpit/test.txt\")\n"
        "          else ()), \n"
        "        file:append-text(\"sandpit/test.txt\", \"abcd\"),\n"
        "        file:read-text(\"sandpit/nonexistent.txt\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-readText1-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/file}not-found") of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment, "WE: Q{http://expath.org/ns/file}not-found " ++ binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'EXPath-file-readText1-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        (if (file:exists(\"sandpit/test.txt\")) \n"
        "          then file:delete(\"sandpit/test.txt\")\n"
        "          else ()), \n"
        "        file:append-text(\"sandpit/test.txt\", \"abcd\"),\n"
        "        file:read-text(\"sandpit\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-readText1-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/file}is-dir") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: Q{http://expath.org/ns/file}is-dir " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'EXPath-file-readText2-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        (if (file:exists(\"sandpit/test.txt\")) \n"
        "          then file:delete(\"sandpit/test.txt\")\n"
        "          else ()), \n"
        "        file:append-text(\"sandpit/test.txt\", \"abcd£\"),\n"
        "        file:read-text(\"sandpit/test.txt\", \"UTF-8\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-readText2-001.xq"),
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
                    case xqerl_test:assert_eq(Res, "\"abcd£\"") of
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

'EXPath-file-readText2-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        (if (file:exists(\"sandpit/test.txt\")) \n"
        "          then file:delete(\"sandpit/test.txt\")\n"
        "          else ()), \n"
        "        file:append-text(\"sandpit/test.txt\", \"abcd£\"),\n"
        "        file:read-text(\"sandpit/test.text\", \"UTF-8\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-readText2-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/file}not-found") of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment, "WE: Q{http://expath.org/ns/file}not-found " ++ binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'EXPath-file-readText2-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        (if (file:exists(\"sandpit/test.txt\")) \n"
        "          then file:delete(\"sandpit/test.txt\")\n"
        "          else ()), \n"
        "        file:append-text(\"sandpit/test.txt\", \"abcd£\"),\n"
        "        file:read-text(\"sandpit\", \"UTF-8\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-readText2-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/file}is-dir") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: Q{http://expath.org/ns/file}is-dir " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'EXPath-file-readText2-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        (if (file:exists(\"sandpit/test.txt\")) \n"
        "          then file:delete(\"sandpit/test.txt\")\n"
        "          else ()), \n"
        "        file:append-text(\"sandpit/test.txt\", \"abcd£\"),\n"
        "        file:read-text(\"sandpit/test.txt\", \"UTF-8.5\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-readText2-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/file}unknown-encoding") of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment, "WE: Q{http://expath.org/ns/file}unknown-encoding " ++ binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'EXPath-file-readText2-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        (if (file:exists(\"sandpit/test.txt\")) \n"
        "          then file:delete(\"sandpit/test.txt\")\n"
        "          else ()), \n"
        "        file:write-binary(\"sandpit/test.txt\", \n"
        "                        xs:base64Binary(xs:hexBinary(\"A3\"))),\n"
        "        file:read-text(\"sandpit/test.txt\", \"UTF-8\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-readText2-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/file}io-error") of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment, "WE: Q{http://expath.org/ns/file}io-error " ++ binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'EXPath-file-readTextLines1-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        (if (file:exists(\"sandpit/test.txt\")) \n"
        "          then file:delete(\"sandpit/test.txt\")\n"
        "          else ()), \n"
        "        file:write-text(\"sandpit/test.txt\", string-join((\"abcd\", \"defg\", \"hijk\"), \"\n"
        "\")),\n"
        "        file:read-text-lines(\"sandpit/test.txt\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-readTextLines1-001.xq"),
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
                    case xqerl_test:assert_deep_eq(Res, "\"abcd\", \"defg\", \"hijk\"") of
                        true -> {comment, "Deep equal"};
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

'EXPath-file-readTextLines1-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        (if (file:exists(\"sandpit/test.txt\")) \n"
        "          then file:delete(\"sandpit/test.txt\")\n"
        "          else ()), \n"
        "        file:write-text(\"sandpit/test.txt\", string-join((\"abcd\", \"defg\", \"\", \"hijk\"), \"\")),\n"
        "        file:read-text-lines(\"sandpit/test.txt\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-readTextLines1-002.xq"),
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
                    case xqerl_test:assert_deep_eq(Res, "\"abcd\", \"defg\", \"\", \"hijk\"") of
                        true -> {comment, "Deep equal"};
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

'EXPath-file-readTextLines1-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        (if (file:exists(\"sandpit/test.txt\")) \n"
        "          then file:delete(\"sandpit/test.txt\")\n"
        "          else ()), \n"
        "        file:write-text(\"sandpit/test.txt\", string-join((\"abcd\", \"defg\", \"\", \"hijk\"), \"\n"
        "\")),\n"
        "        file:read-text-lines(\"sandpit/test.txt\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-readTextLines1-003.xq"),
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
                    case xqerl_test:assert_deep_eq(Res, "\"abcd\", \"defg\", \"\", \"hijk\"") of
                        true -> {comment, "Deep equal"};
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

'EXPath-file-readTextLines1-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        (if (file:exists(\"sandpit/test.txt\")) \n"
        "          then file:delete(\"sandpit/test.txt\")\n"
        "          else ()), \n"
        "        file:write-text(\"sandpit/test.txt\", string-join((\"abcd\", \"defg\", \"hijk\"), \"\n"
        "\") || \"\n"
        "\"),\n"
        "        file:read-text-lines(\"sandpit/test.txt\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-readTextLines1-004.xq"),
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
                    case xqerl_test:assert_deep_eq(Res, "\"abcd\", \"defg\", \"hijk\"") of
                        true -> {comment, "Deep equal"};
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

'EXPath-file-readTextLines1-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        (if (file:exists(\"sandpit/test.txt\")) \n"
        "          then file:delete(\"sandpit/test.txt\")\n"
        "          else ()), \n"
        "        file:write-text(\"sandpit/test.txt\", string-join((\"abcd\", \"defg\", \"\", \"hijk\"), \"\") || \"\"),\n"
        "        file:read-text-lines(\"sandpit/test.txt\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-readTextLines1-005.xq"),
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
                    case xqerl_test:assert_deep_eq(Res, "\"abcd\", \"defg\", \"\", \"hijk\"") of
                        true -> {comment, "Deep equal"};
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

'EXPath-file-readTextLines1-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        (if (file:exists(\"sandpit/test.txt\")) \n"
        "          then file:delete(\"sandpit/test.txt\")\n"
        "          else ()), \n"
        "        file:write-text(\"sandpit/test.txt\", string-join((\"abcd\", \"defg\", \"\", \"hijk\"), \"\n"
        "\") || \"\n"
        "\"),\n"
        "        file:read-text-lines(\"sandpit/test.txt\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-readTextLines1-006.xq"),
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
                    case xqerl_test:assert_deep_eq(Res, "\"abcd\", \"defg\", \"\", \"hijk\"") of
                        true -> {comment, "Deep equal"};
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

'EXPath-file-readTextLines1-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        (if (file:exists(\"sandpit/test.txt\")) \n"
        "          then file:delete(\"sandpit/test.txt\")\n"
        "          else ()), \n"
        "        file:write-text(\"sandpit/test.txt\", string-join((\"abcd\", \"defg\", \"\", \"hijk\"), \"\n"
        "\")),\n"
        "        file:read-text-lines(\"sandpit/test.txt\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-readTextLines1-007.xq"),
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
                    case
                        xqerl_test:assert_deep_eq(
                            Res,
                            "\"abcd\", \"\", \"defg\", \"\", \"\", \"\", \"hijk\""
                        )
                    of
                        true -> {comment, "Deep equal"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_deep_eq(
                            Res,
                            "\"abcd\", \"\", \"defg\", \"\", \"\", \"hijk\""
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

'EXPath-file-readTextLines1-008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        (if (file:exists(\"sandpit/test.txt\")) \n"
        "          then file:delete(\"sandpit/test.txt\")\n"
        "          else ()), \n"
        "        file:write-text(\"sandpit/test.txt\", \"\"),\n"
        "        file:read-text-lines(\"sandpit/test.txt\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-readTextLines1-008.xq"),
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
                    case xqerl_test:assert_empty(Res) of
                        true -> {comment, "Empty"};
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

'EXPath-file-readTextLines1-009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        (if (file:exists(\"sandpit/test.txt\")) \n"
        "          then file:delete(\"sandpit/test.txt\")\n"
        "          else ()), \n"
        "        file:read-text-lines(\"sandpit/test.txt\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-readTextLines1-009.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/file}not-found") of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment, "WE: Q{http://expath.org/ns/file}not-found " ++ binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'EXPath-file-readTextLines1-010'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:read-text-lines(\"sandpit\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-readTextLines1-010.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/file}is-dir") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: Q{http://expath.org/ns/file}is-dir " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'EXPath-file-readTextLines1-011'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        (if (file:exists(\"sandpit/test.txt\")) \n"
        "          then file:delete(\"sandpit/test.txt\")\n"
        "          else ()), \n"
        "        file:read-text-lines(\"sandpit/test.txt\", \"UTF-8\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-readTextLines1-011.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/file}not-found") of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment, "WE: Q{http://expath.org/ns/file}not-found " ++ binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'EXPath-file-readTextLines1-012'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:read-text-lines(\"sandpit\", \"UTF-8\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-readTextLines1-012.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/file}is-dir") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: Q{http://expath.org/ns/file}is-dir " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'EXPath-file-readTextLines1-013'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        (if (file:exists(\"sandpit/test.txt\")) \n"
        "          then file:delete(\"sandpit/test.txt\")\n"
        "          else ()), \n"
        "        file:write-text(\"sandpit/test.txt\", \"\"),\n"
        "        file:read-text-lines(\"sandpit/test.txt\", \"UTF-82.3\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-readTextLines1-013.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/file}unknown-encoding") of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment, "WE: Q{http://expath.org/ns/file}unknown-encoding " ++ binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'EXPath-file-readTextLines1-014'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        (if (file:exists(\"sandpit/test.txt\")) \n"
        "          then file:delete(\"sandpit/test.txt\")\n"
        "          else ()), \n"
        "        file:write-text(\"sandpit/test.txt\", \n"
        "                        string-join((\"abcd\", \"defg\", \"hijk\"), \"\n"
        "\") || \"\n"
        "\", \n"
        "                        \"UTF-8\"),\n"
        "        file:read-text-lines(\"sandpit/test.txt\", \"UTF-8\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-readTextLines1-014.xq"),
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
                    case xqerl_test:assert_deep_eq(Res, "\"abcd\", \"defg\", \"hijk\"") of
                        true -> {comment, "Deep equal"};
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

'EXPath-file-readTextLines1-015'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        (if (file:exists(\"sandpit/test.txt\")) \n"
        "          then file:delete(\"sandpit/test.txt\")\n"
        "          else ()), \n"
        "        file:write-binary(\"sandpit/test.txt\", \n"
        "                        xs:base64Binary(xs:hexBinary(\"A3\"))),\n"
        "        file:read-text-lines(\"sandpit/test.txt\", \"UTF-8\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-readTextLines1-015.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/file}io-error") of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment, "WE: Q{http://expath.org/ns/file}io-error " ++ binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'EXPath-file-writeText2-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        (if (file:exists(\"sandpit/test.txt\")) \n"
        "          then file:delete(\"sandpit/test.txt\")\n"
        "          else ()), \n"
        "        file:write-text(\"sandpit/test.txt\", \"abc\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-writeText2-001.xq"),
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
                    case xqerl_test:assert_empty(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "Q{http://expath.org/ns/file}read-text(\"sandpit/test.txt\") eq \"abc\""
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

'EXPath-file-writeText2-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "file:write-text(\"sandpit/test.txt\", \"def\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-writeText2-002.xq"),
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
                    case xqerl_test:assert_empty(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "Q{http://expath.org/ns/file}read-text(\"sandpit/test.txt\") eq \"def\""
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

'EXPath-file-writeText2-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "file:write-text(\"sandpit/test.txt\", \"\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-writeText2-003.xq"),
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
                    case xqerl_test:assert_empty(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "Q{http://expath.org/ns/file}read-text(\"sandpit/test.txt\") eq \"\""
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

'EXPath-file-writeText2-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "file:write-text(\"sandpit/test.txt\", \"£\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-writeText2-004.xq"),
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
                    case xqerl_test:assert_empty(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "Q{http://expath.org/ns/file}read-text(\"sandpit/test.txt\", \"UTF-8\") eq\n"
                            "          \"£\""
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

'EXPath-file-writeText2-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:write-text(\"sandpit\", \"abc\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-writeText2-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/file}is-dir") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: Q{http://expath.org/ns/file}is-dir " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'EXPath-file-writeText2-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:write-text(\"nonexistent/file.xml\", \"abc\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-writeText2-006.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/file}no-dir") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: Q{http://expath.org/ns/file}no-dir " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'EXPath-file-writeText3-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        (if (file:exists(\"sandpit/test2.txt\")) \n"
        "          then file:delete(\"sandpit/test2.txt\")\n"
        "          else ()), \n"
        "        file:write-text(\"sandpit/test2.txt\", \"abc£\", \"UTF-8\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-writeText3-001.xq"),
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
                    case xqerl_test:assert_empty(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "Q{http://expath.org/ns/file}read-text(\"sandpit/test2.txt\") eq \"abc£\""
                        )
                    of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "xs:hexBinary(Q{http://expath.org/ns/file}read-binary(\"sandpit/test2.txt\")) eq\n"
                            "          xs:hexBinary(\"616263C2A3\")"
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

'EXPath-file-writeText3-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        (if (file:exists(\"sandpit/test3.txt\")) \n"
        "          then file:delete(\"sandpit/test3.txt\")\n"
        "          else ()), \n"
        "        file:write-text(\"sandpit/test3.txt\", \"abc\", \"UTF-16\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-writeText3-002.xq"),
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
                    case xqerl_test:assert_empty(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "xs:hexBinary(Q{http://expath.org/ns/file}read-binary(\"sandpit/test3.txt\")) eq\n"
                            "          xs:hexBinary(\"FEFF006100620063\")"
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

'EXPath-file-writeText3-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        (if (file:exists(\"sandpit/test4.txt\")) \n"
        "          then file:delete(\"sandpit/test4.txt\")\n"
        "          else ()), \n"
        "        file:write-text(\"sandpit/test4.txt\", \"abc\", \"encoding-1234\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-writeText3-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/file}unknown-encoding") of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment, "WE: Q{http://expath.org/ns/file}unknown-encoding " ++ binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'EXPath-file-writeText3-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:write-text(\"sandpit\", \"abc\", \"UTF-8\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-writeText3-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/file}is-dir") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: Q{http://expath.org/ns/file}is-dir " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'EXPath-file-writeText3-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:write-text(\"nonexistent/file.xml\", \"abc\", \"UTF-8\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-writeText3-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/file}no-dir") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: Q{http://expath.org/ns/file}no-dir " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'EXPath-file-writeBinary2-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        (if (file:exists(\"sandpit/test.bin\")) \n"
        "          then file:delete(\"sandpit/test.bin\")\n"
        "          else ()), \n"
        "        file:write-binary(\"sandpit/test.bin\", xs:base64Binary(xs:hexBinary(\"0001020304\")))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-writeBinary2-001.xq"),
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
                    case xqerl_test:assert_empty(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "xs:hexBinary(Q{http://expath.org/ns/file}read-binary(\"sandpit/test.bin\")) eq\n"
                            "          xs:hexBinary(\"0001020304\")"
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

'EXPath-file-writeBinary2-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:write-binary(\"sandpit/test.bin\", \n"
        "           xs:base64Binary(xs:hexBinary(\"0506\")))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-writeBinary2-002.xq"),
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
                    case xqerl_test:assert_empty(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "xs:hexBinary(Q{http://expath.org/ns/file}read-binary(\"sandpit/test.bin\")) eq\n"
                            "          xs:hexBinary(\"0506\")"
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

'EXPath-file-writeBinary2-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:write-binary(\"sandpit\", xs:base64Binary(\"\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-writeBinary2-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/file}is-dir") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: Q{http://expath.org/ns/file}is-dir " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'EXPath-file-writeBinary2-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:write-binary(\"nonexistent/file.bin\", xs:base64Binary(\"\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-writeBinary2-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/file}no-dir") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: Q{http://expath.org/ns/file}no-dir " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'EXPath-file-writeBinary3-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        (if (file:exists(\"sandpit/test.bin\")) \n"
        "          then file:delete(\"sandpit/test.bin\")\n"
        "          else ()), \n"
        "        file:write-binary(\"sandpit/test.bin\", xs:base64Binary(xs:hexBinary(\"0001020304\")), 0)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-writeBinary3-001.xq"),
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
                    case xqerl_test:assert_empty(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "xs:hexBinary(Q{http://expath.org/ns/file}read-binary(\"sandpit/test.bin\")) eq\n"
                            "          xs:hexBinary(\"0001020304\")"
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

'EXPath-file-writeBinary3-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        (if (file:exists(\"sandpit/test.bin\")) \n"
        "          then file:delete(\"sandpit/test.bin\")\n"
        "          else ()), \n"
        "        file:write-binary(\"sandpit/test.bin\", xs:base64Binary(xs:hexBinary(\"0001020304\"))),\n"
        "        file:write-binary(\"sandpit/test.bin\", xs:base64Binary(xs:hexBinary(\"0506\")),1)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-writeBinary3-002.xq"),
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
                    case xqerl_test:assert_empty(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "xs:hexBinary(Q{http://expath.org/ns/file}read-binary(\"sandpit/test.bin\")) eq\n"
                            "          xs:hexBinary(\"0005060304\")"
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

'EXPath-file-writeBinary3-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        (if (file:exists(\"sandpit/test.bin\")) \n"
        "          then file:delete(\"sandpit/test.bin\")\n"
        "          else ()), \n"
        "        file:write-binary(\"sandpit/test.bin\", xs:base64Binary(xs:hexBinary(\"0001020304\")), -1)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-writeBinary3-003.xq"),
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
                    case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/file}out-of-range") of
                        true ->
                            {comment, "Correct error"};
                        {true, F} ->
                            {comment,
                                "WE: Q{http://expath.org/ns/file}out-of-range " ++
                                    binary_to_list(F)};
                        {false, F} ->
                            F
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

'EXPath-file-writeBinary3-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        (if (file:exists(\"sandpit/test.bin\")) \n"
        "          then file:delete(\"sandpit/test.bin\")\n"
        "          else ()),\n"
        "        file:write-binary(\"sandpit/test.bin\", xs:base64Binary(xs:hexBinary(\"0001020304\"))),\n"
        "        file:write-binary(\"sandpit/test.bin\", xs:base64Binary(xs:hexBinary(\"0001020304\")), 6)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-writeBinary3-004.xq"),
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
                    case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/file}out-of-range") of
                        true ->
                            {comment, "Correct error"};
                        {true, F} ->
                            {comment,
                                "WE: Q{http://expath.org/ns/file}out-of-range " ++
                                    binary_to_list(F)};
                        {false, F} ->
                            F
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

'EXPath-file-writeBinary3-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        (if (file:exists(\"sandpit/test.bin\")) \n"
        "          then file:delete(\"sandpit/test.bin\")\n"
        "          else ()), \n"
        "        file:write-binary(\"sandpit/test.bin\", xs:base64Binary(xs:hexBinary(\"0001020304\"))),\n"
        "        file:write-binary(\"sandpit/test.bin\", xs:base64Binary(xs:hexBinary(\"0506\")),4)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-writeBinary3-005.xq"),
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
                    case xqerl_test:assert_empty(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "xs:hexBinary(Q{http://expath.org/ns/file}read-binary(\"sandpit/test.bin\")) eq\n"
                            "          xs:hexBinary(\"000102030506\")"
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

'EXPath-file-writeBinary3-005a'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        (if (file:exists(\"sandpit/test.bin\")) \n"
        "          then file:delete(\"sandpit/test.bin\")\n"
        "          else ()), \n"
        "        file:write-binary(\"sandpit/test.bin\", xs:base64Binary(xs:hexBinary(\"0001020304\"))),\n"
        "        file:write-binary(\"sandpit/test.bin\", xs:base64Binary(xs:hexBinary(\"0506\")),5)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-writeBinary3-005a.xq"),
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
                    case xqerl_test:assert_empty(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "xs:hexBinary(Q{http://expath.org/ns/file}read-binary(\"sandpit/test.bin\")) eq\n"
                            "          xs:hexBinary(\"00010203040506\")"
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

'EXPath-file-name1-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        (if (file:exists(\"sandpit/test.txt\")) \n"
        "          then file:delete(\"sandpit/test.txt\")\n"
        "          else ()), \n"
        "        file:write-text(\"sandpit/test.txt\", \"abc\"),\n"
        "        file:name(\"sandpit/test.txt\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-name1-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "\"test.txt\"") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'EXPath-file-name1-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:name(\"sandpit\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-name1-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "\"sandpit\"") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'EXPath-file-name1-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:name(\"sandpit/nonexistent.txt\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-name1-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "\"nonexistent.txt\"") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'EXPath-file-name1-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:name(\".\")\n"
        "    ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-name1-004.xq"),
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
                    case xqerl_test:assert_eq(Res, "'.'") of
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

'EXPath-file-name1-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:name(\"sandpit/dir1/\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-name1-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "\"dir1\"") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'EXPath-file-name1-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:name(\"/\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-name1-006.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "\"\"") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'EXPath-file-name1-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:name(\"\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-name1-007.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "\"\"") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'EXPath-file-parent-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        (if (file:exists(\"sandpit/test.txt\")) \n"
        "          then file:delete(\"sandpit/test.txt\")\n"
        "          else ()), \n"
        "        file:write-text(\"sandpit/test.txt\", \"abc\"),\n"
        "        file:parent(\"sandpit/test.txt\")\n"
        "    ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-parent-001.xq"),
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
                    case xqerl_test:assert(Res, "matches($result, \"/.*sandpit/\")") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(Res, "matches($result, \"[A-Za-z]:\\\\.*sandpit\\\\\")")
                    of
                        true -> {comment, "Correct results"};
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

'EXPath-file-parent-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:parent(\"sandpit/dir1\")\n"
        "    ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-parent-002.xq"),
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
                    case xqerl_test:assert(Res, "matches($result, \"/.*sandpit/\")") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(Res, "matches($result, \"[A-Za-z]:\\\\.*sandpit\\\\\")")
                    of
                        true -> {comment, "Correct results"};
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

'EXPath-file-parent-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:parent(\"sandpit/dir1/\")\n"
        "    ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-parent-003.xq"),
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
                    case xqerl_test:assert(Res, "matches($result, \"/.*sandpit/\")") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(Res, "matches($result, \"[A-Za-z]:\\\\.*sandpit\\\\\")")
                    of
                        true -> {comment, "Correct results"};
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

'EXPath-file-parent-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:parent(\"/\")\n"
        "    ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-parent-004.xq"),
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

'EXPath-file-children-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      if (file:exists(\"sandpit/dir5\")) then file:delete(\"sandpit/dir5\", true()) else (),\n"
        "      file:create-dir(\"sandpit/dir5\"),\n"
        "      file:children(\"sandpit/dir5\")\n"
        "    ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-children-001.xq"),
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
                    case xqerl_test:assert_empty(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "Q{http://expath.org/ns/file}exists(\"sandpit/dir5\")"
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

'EXPath-file-children-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      if (file:exists(\"sandpit/dir5\")) then file:delete(\"sandpit/dir5\", true()) else (),\n"
        "      file:create-dir(\"sandpit/dir5\"),\n"
        "      file:write-text(\"sandpit/dir5/roma.txt\", \"\"),\n"
        "      file:write-text(\"sandpit/dir5/napoli.txt\", \"\"),\n"
        "      file:children(\"sandpit/dir5\")\n"
        "    ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-children-002.xq"),
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
                    case xqerl_test:assert(Res, "count($result) = 2") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "every $r in $result satisfies contains($r, file:dir-separator())"
                        )
                    of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "some $r in $result satisfies ends-with($r, 'roma.txt')"
                        )
                    of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "some $r in $result satisfies ends-with($r, 'napoli.txt')"
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

'EXPath-file-children-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      if (file:exists(\"sandpit/dir5\")) then file:delete(\"sandpit/dir5\", true()) else (),\n"
        "      file:create-dir(\"sandpit/dir5/dir6\"),\n"
        "      file:children(\"sandpit/dir5\")\n"
        "    ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-children-003.xq"),
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
                    case xqerl_test:assert(Res, "count($result) = 1") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "ends-with($result, file:dir-separator())") of
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

'EXPath-file-children-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      if (file:exists(\"sandpit/dir5\")) then file:delete(\"sandpit/dir5\", true()) else (),\n"
        "      file:create-dir(\"sandpit/dir5\"),\n"
        "      file:write-text(\"sandpit/dir5/palermo.txt\", \"\"),\n"
        "      file:children(\"sandpit/dir5/palermo.txt\")\n"
        "    ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-children-004.xq"),
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
                    case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/file}no-dir") of
                        true ->
                            {comment, "Correct error"};
                        {true, F} ->
                            {comment,
                                "WE: Q{http://expath.org/ns/file}no-dir " ++ binary_to_list(F)};
                        {false, F} ->
                            F
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

'EXPath-file-pathToNative-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:path-to-native(\"sandpit/test.txt\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-pathToNative-001.xq"),
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
                    case xqerl_test:assert(Res, "ends-with($result, \"sandpit/test.txt\")") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "ends-with($result, \"sandpit\\test.txt\")") of
                        true -> {comment, "Correct results"};
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

'EXPath-file-pathToNative-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         file:path-to-native(\"sandpit///test.txt\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-pathToNative-002.xq"),
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
                    case xqerl_test:assert(Res, "ends-with($result, \"sandpit/test.txt\")") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "ends-with($result, \"sandpit\\test.txt\")") of
                        true -> {comment, "Correct results"};
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

'EXPath-file-pathToNative-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         file:path-to-native(\"sandpit/./test.txt\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-pathToNative-003.xq"),
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
                    case xqerl_test:assert(Res, "ends-with($result, \"sandpit/test.txt\")") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "ends-with($result, \"sandpit\\test.txt\")") of
                        true -> {comment, "Correct results"};
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

'EXPath-file-pathToNative-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      file:path-to-native(\"file:///i/do/not.exist\")\n"
        "    ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-pathToNative-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/file}not-found") of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment, "WE: Q{http://expath.org/ns/file}not-found " ++ binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'EXPath-file-pathToNative-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         file:path-to-native(\".\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-pathToNative-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert(Res, "$result ne \".\"") of
            true -> {comment, "Correct results"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'EXPath-file-pathToNative-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      file:path-to-native(concat(\"file:///\", file:resolve-path('.')))\n"
        "    ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-pathToNative-006.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert(Res, "not(starts-with($result, \"file:\"))") of
            true -> {comment, "Correct results"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'EXPath-file-pathToUri-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:path-to-uri(\"sandpit/test.txt\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-pathToUri-001.xq"),
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
                    case xqerl_test:assert(Res, "ends-with($result, \"sandpit/test.txt\")") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "starts-with($result, \"file:/\")") of
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

'EXPath-file-pathToUri-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      file:path-to-uri(\"sandpit/my file.txt\")\n"
        "    ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-pathToUri-002.xq"),
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
                    case xqerl_test:assert(Res, "ends-with($result, \"sandpit/my%20file.txt\")") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "starts-with($result, \"file:/\")") of
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

'EXPath-file-resolvePath-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:resolve-path(\"sandpit/test.txt\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-resolvePath-001.xq"),
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
                    case xqerl_test:assert(Res, "matches($result, \"/.*sandpit/test\\.txt\")") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "matches($result, \"[A-Za-z]:\\\\.*sandpit\\\\test\\.txt\")"
                        )
                    of
                        true -> {comment, "Correct results"};
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

'EXPath-file-dirSeparator-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:dir-separator()\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-dirSeparator-001.xq"),
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
                    case xqerl_test:assert_string_value(Res, "/") of
                        true -> {comment, "String correct"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_string_value(Res, "\\") of
                        true -> {comment, "String correct"};
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

'EXPath-file-pathSeparator-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:path-separator()\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-pathSeparator-001.xq"),
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
                    case xqerl_test:assert_string_value(Res, ":") of
                        true -> {comment, "String correct"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_string_value(Res, ";") of
                        true -> {comment, "String correct"};
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

'EXPath-file-lineSeparator-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        string-to-codepoints(file:line-separator())\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-lineSeparator-001.xq"),
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
                    case xqerl_test:assert_deep_eq(Res, "10") of
                        true -> {comment, "Deep equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_deep_eq(Res, "13, 10") of
                        true -> {comment, "Deep equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_deep_eq(Res, "13") of
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

'EXPath-file-lineSeparator-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        string-to-codepoints(file:path-separator() || file:dir-separator() || file:line-separator())\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-lineSeparator-002.xq"),
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
                    case xqerl_test:assert_deep_eq(Res, "59, 92, 13, 10") of
                        true -> {comment, "Deep equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_deep_eq(Res, "58, 47, 10") of
                        true -> {comment, "Deep equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_deep_eq(Res, "58, 47, 13") of
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

'EXPath-file-tempDir-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        file:temp-dir()\n"
        "    ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-tempDir-001.xq"),
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
                    case xqerl_test:assert(Res, "matches($result, \"/.*/\")") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "matches($result, \"[A-Za-z]:\\\\.*\\\\\")") of
                        true -> {comment, "Correct results"};
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

'EXPath-file-baseDir-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "test assumes same base-uri in test as the check"}.

'EXPath-file-currentDir-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      file:current-dir()\n"
        "    ",
    {Env, Opts} = xqerl_test:handle_environment(environment('EXPath-file', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "EXPath-file-currentDir-001.xq"),
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
                    case xqerl_test:assert(Res, "ends-with($result, file:dir-separator())") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result = file:resolve-path('.')") of
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
