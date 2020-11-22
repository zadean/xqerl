-module('op_union_SUITE').

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

-export(['fn-union-node-args-001'/1]).
-export(['fn-union-node-args-002'/1]).
-export(['fn-union-node-args-003'/1]).
-export(['fn-union-node-args-004'/1]).
-export(['fn-union-node-args-005'/1]).
-export(['fn-union-node-args-006'/1]).
-export(['fn-union-node-args-007'/1]).
-export(['fn-union-node-args-008'/1]).
-export(['fn-union-node-args-009'/1]).
-export(['fn-union-node-args-010'/1]).
-export(['fn-union-node-args-011'/1]).
-export(['fn-union-node-args-012'/1]).
-export(['fn-union-node-args-013'/1]).
-export(['fn-union-node-args-014'/1]).
-export(['fn-union-node-args-015'/1]).
-export(['fn-union-node-args-016'/1]).
-export(['fn-union-node-args-017'/1]).
-export(['fn-union-node-args-018'/1]).
-export(['fn-union-node-args-019'/1]).
-export(['fn-union-node-args-020'/1]).
-export(['fn-union-node-args-021'/1]).
-export(['fn-union-node-args-022'/1]).
-export(['fn-union-node-args-023'/1]).
-export(['K2-SeqUnion-1'/1]).
-export(['K2-SeqUnion-2'/1]).
-export(['K2-SeqUnion-3'/1]).
-export(['K2-SeqUnion-4'/1]).
-export(['K2-SeqUnion-5'/1]).
-export(['K2-SeqUnion-6'/1]).
-export(['K2-SeqUnion-7'/1]).
-export(['K2-SeqUnion-8'/1]).
-export(['K2-SeqUnion-9'/1]).
-export(['K2-SeqUnion-10'/1]).
-export(['K2-SeqUnion-11'/1]).
-export(['K2-SeqUnion-12'/1]).
-export(['K2-SeqUnion-13'/1]).
-export(['K2-SeqUnion-14'/1]).
-export(['K2-SeqUnion-15'/1]).
-export(['K2-SeqUnion-16'/1]).
-export(['K2-SeqUnion-17'/1]).
-export(['K2-SeqUnion-18'/1]).
-export(['K2-SeqUnion-19'/1]).
-export(['K2-SeqUnion-20'/1]).
-export(['K2-SeqUnion-21'/1]).
-export(['K2-SeqUnion-22'/1]).
-export(['K2-SeqUnion-23'/1]).
-export(['K2-SeqUnion-24'/1]).
-export(['K2-SeqUnion-25'/1]).
-export(['K2-SeqUnion-26'/1]).
-export(['K2-SeqUnion-27'/1]).
-export(['K2-SeqUnion-28'/1]).
-export(['K2-SeqUnion-29'/1]).
-export(['K2-SeqUnion-30'/1]).
-export(['K2-SeqUnion-31'/1]).
-export(['K2-SeqUnion-32'/1]).
-export(['K2-SeqUnion-33'/1]).
-export(['K2-SeqUnion-34'/1]).
-export(['K2-SeqUnion-35'/1]).
-export(['K2-SeqUnion-36'/1]).
-export(['K2-SeqUnion-37'/1]).
-export(['K2-SeqUnion-38'/1]).
-export(['K2-SeqUnion-39'/1]).
-export(['K2-SeqUnion-40'/1]).
-export(['K2-SeqUnion-41'/1]).
-export(['K2-SeqUnion-42'/1]).
-export(['K2-SeqUnion-43'/1]).
-export(['K2-SeqUnion-44'/1]).
-export(['K2-SeqUnion-45'/1]).
-export(['K2-SeqUnion-46'/1]).
-export(['K2-SeqUnion-47'/1]).
-export(['combiningnodeseqhc1'/1]).
-export(['combiningnodeseqhc2'/1]).
-export(['combiningnodeseqhc3'/1]).
-export(['combiningnodeseqhc4'/1]).
-export(['combiningnodeseqhc5'/1]).
-export(['combiningnodeseqhc6'/1]).
-export(['combiningnodeseqhc7'/1]).
-export(['combiningnodeseqhc8'/1]).
-export(['combiningnodeseqhc9'/1]).
-export(['combiningnodeseqhc10'/1]).
-export(['cbcl-fn-union-001'/1]).
-export(['cbcl-fn-union-002'/1]).

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
    __BaseDir = filename:join(TD, "op"),
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
            'fn-union-node-args-001',
            'fn-union-node-args-002',
            'fn-union-node-args-003',
            'fn-union-node-args-004',
            'fn-union-node-args-005',
            'fn-union-node-args-006',
            'fn-union-node-args-007',
            'fn-union-node-args-008',
            'fn-union-node-args-009',
            'fn-union-node-args-010',
            'fn-union-node-args-011',
            'fn-union-node-args-012',
            'fn-union-node-args-013',
            'fn-union-node-args-014',
            'fn-union-node-args-015',
            'fn-union-node-args-016',
            'fn-union-node-args-017',
            'fn-union-node-args-018',
            'fn-union-node-args-019',
            'fn-union-node-args-020',
            'fn-union-node-args-021',
            'fn-union-node-args-022',
            'fn-union-node-args-023'
        ]},
        {group_1, [parallel], [
            'K2-SeqUnion-1',
            'K2-SeqUnion-2',
            'K2-SeqUnion-3',
            'K2-SeqUnion-4',
            'K2-SeqUnion-5',
            'K2-SeqUnion-6',
            'K2-SeqUnion-7',
            'K2-SeqUnion-8',
            'K2-SeqUnion-9',
            'K2-SeqUnion-10',
            'K2-SeqUnion-11',
            'K2-SeqUnion-12',
            'K2-SeqUnion-13',
            'K2-SeqUnion-14',
            'K2-SeqUnion-15',
            'K2-SeqUnion-16',
            'K2-SeqUnion-17',
            'K2-SeqUnion-18',
            'K2-SeqUnion-19',
            'K2-SeqUnion-20',
            'K2-SeqUnion-21',
            'K2-SeqUnion-22',
            'K2-SeqUnion-23',
            'K2-SeqUnion-24'
        ]},
        {group_2, [parallel], [
            'K2-SeqUnion-25',
            'K2-SeqUnion-26',
            'K2-SeqUnion-27',
            'K2-SeqUnion-28',
            'K2-SeqUnion-29',
            'K2-SeqUnion-30',
            'K2-SeqUnion-31',
            'K2-SeqUnion-32',
            'K2-SeqUnion-33',
            'K2-SeqUnion-34',
            'K2-SeqUnion-35',
            'K2-SeqUnion-36',
            'K2-SeqUnion-37',
            'K2-SeqUnion-38',
            'K2-SeqUnion-39',
            'K2-SeqUnion-40',
            'K2-SeqUnion-41',
            'K2-SeqUnion-42',
            'K2-SeqUnion-43',
            'K2-SeqUnion-44',
            'K2-SeqUnion-45',
            'K2-SeqUnion-46',
            'K2-SeqUnion-47',
            'combiningnodeseqhc1'
        ]},
        {group_3, [parallel], [
            'combiningnodeseqhc2',
            'combiningnodeseqhc3',
            'combiningnodeseqhc4',
            'combiningnodeseqhc5',
            'combiningnodeseqhc6',
            'combiningnodeseqhc7',
            'combiningnodeseqhc8',
            'combiningnodeseqhc9',
            'combiningnodeseqhc10',
            'cbcl-fn-union-001',
            'cbcl-fn-union-002'
        ]}
    ].

environment('atomic', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [
            {filename:join(__BaseDir, "../docs/atomic.xml"), ".",
                "http://www.w3.org/fots/docs/atomic.xml"}
        ]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, [{"http://www.w3.org/XQueryTest", "atomic"}]},
        {schemas, [
            {filename:join(__BaseDir, "../docs/atomic.xsd"), "http://www.w3.org/XQueryTest"}
        ]},
        {resources, []},
        {modules, []}
    ];
environment('works', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "../docs/works.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ];
environment('works-and-staff', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [
            {filename:join(__BaseDir, "../docs/works.xml"), "$works", []},
            {filename:join(__BaseDir, "../docs/staff.xml"), "$staff", []}
        ]},
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
        {sources, [{filename:join(__BaseDir, "union/acme_corp.xml"), ".", []}]},
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
        {sources, [{filename:join(__BaseDir, "union/bib2.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ].

'fn-union-node-args-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "/bib/book[3]/title union /bib/book[1]/title",
    {Env, Opts} = xqerl_test:handle_environment(environment('bib2', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-union-node-args-001.xq"),
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
                "<title>TCP/IP Illustrated</title><title>Data on the Web</title>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-union-node-args-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(/bib/book/title | /bib/book)/local-name()",
    {Env, Opts} = xqerl_test:handle_environment(environment('bib2', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-union-node-args-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "book title book title book title book title") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-union-node-args-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "/bib/book[3]/title | root(fn:exactly-one(/bib/book[3]/title))",
    {Env, Opts} = xqerl_test:handle_environment(environment('bib2', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-union-node-args-003.xq"),
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
                            "$result[1][self::document-node()][bib/book[1]/@year = \"1994\"]"
                        )
                    of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result[2][self::title][.=\"Data on the Web\"]") of
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

'fn-union-node-args-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "/bib/book[3]/title/text() union /bib/book[1]/title",
    {Env, Opts} = xqerl_test:handle_environment(environment('bib2', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-union-node-args-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<title>TCP/IP Illustrated</title>Data on the Web") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-union-node-args-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "/processing-instruction() union /bib/book[2]/title",
    {Env, Opts} = xqerl_test:handle_environment(environment('bib2', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-union-node-args-005.xq"),
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
                "<?PI1 Processing Instruction 1?><title>Advanced Programming in the Unix environment</title><?PI2 Processing Instruction 2?>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-union-node-args-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "/processing-instruction(PI1) union /bib/book[3]/title",
    {Env, Opts} = xqerl_test:handle_environment(environment('bib2', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-union-node-args-006.xq"),
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
                "<?PI1 Processing Instruction 1?><title>Data on the Web</title>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-union-node-args-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "/comment() union /bib/book[1]/title",
    {Env, Opts} = xqerl_test:handle_environment(environment('bib2', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-union-node-args-007.xq"),
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
                "<!-- this file is a copy of bib.xml; just adds a few comments and PI nodes for testing --><!-- Comment 1 --><title>TCP/IP Illustrated</title><!-- Comment 2 -->"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-union-node-args-008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "/bib/book[3]/title/text() | /bib/book[1]/title",
    {Env, Opts} = xqerl_test:handle_environment(environment('bib2', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-union-node-args-008.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<title>TCP/IP Illustrated</title>Data on the Web") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-union-node-args-009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "/processing-instruction() | /bib/book[2]/title",
    {Env, Opts} = xqerl_test:handle_environment(environment('bib2', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-union-node-args-009.xq"),
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
                "<?PI1 Processing Instruction 1?><title>Advanced Programming in the Unix environment</title><?PI2 Processing Instruction 2?>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-union-node-args-010'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "/processing-instruction(PI1) | /bib/book[3]/title",
    {Env, Opts} = xqerl_test:handle_environment(environment('bib2', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-union-node-args-010.xq"),
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
                "<?PI1 Processing Instruction 1?><title>Data on the Web</title>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-union-node-args-011'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "/comment() | /bib/book[1]/title",
    {Env, Opts} = xqerl_test:handle_environment(environment('bib2', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-union-node-args-011.xq"),
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
                "<!-- this file is a copy of bib.xml; just adds a few comments and PI nodes for testing --><!-- Comment 1 --><title>TCP/IP Illustrated</title><!-- Comment 2 -->"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-union-node-args-012'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "//author union //nonexisting",
    {Env, Opts} = xqerl_test:handle_environment(environment('bib2', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-union-node-args-012.xq"),
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
                "<author><last>Stevens</last><first>W.</first></author><author><last>Stevens</last><first>W.</first></author><author><last>Abiteboul</last><first>Serge</first></author><author><last>Buneman</last><first>Peter</first></author><author><last>Suciu</last><first>Dan</first></author>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-union-node-args-013'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "//author | ()",
    {Env, Opts} = xqerl_test:handle_environment(environment('bib2', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-union-node-args-013.xq"),
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
                "<author><last>Stevens</last><first>W.</first></author><author><last>Stevens</last><first>W.</first></author><author><last>Abiteboul</last><first>Serge</first></author><author><last>Buneman</last><first>Peter</first></author><author><last>Suciu</last><first>Dan</first></author>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-union-node-args-014'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "() | ()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-union-node-args-014.xq"),
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
                    case xqerl_test:assert_string_value(Res, "") of
                        true -> {comment, "String correct"};
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

'fn-union-node-args-015'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'fn-union-node-args-016'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'fn-union-node-args-017'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'fn-union-node-args-018'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'fn-union-node-args-019'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'fn-union-node-args-020'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'fn-union-node-args-021'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'fn-union-node-args-022'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'fn-union-node-args-023'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "string-join(for $node in ((//price/text()) , (//price/text())) union ((//price/text()) , (//price/text())) return $node, \"|\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('bib2', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-union-node-args-023.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, " 65.95|65.95| 39.95|129.95") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-SeqUnion-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<r> { let $i := <e> <a/> <b/> </e> return ($i/b, $i/a, $i/b, $i/a) | () } </r>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqUnion-1.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<r><a/><b/></r>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-SeqUnion-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<r> { let $i := <e> <a/> <b/> </e> return () | ($i/b, $i/a, $i/b, $i/a) } </r>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqUnion-2.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<r><a/><b/></r>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-SeqUnion-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(<e/>/(author union comment))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqUnion-3.xq"), Qry1),
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

'K2-SeqUnion-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $i := <e> <a/> <b/> <c/> </e>/a , $t := $i/following-sibling::b return (($i union ($i, $i)), (($t, $t) union $t))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqUnion-4.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<a/><b/>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-SeqUnion-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(1, 2, 3) union (1, 2, 3)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqUnion-5.xq"), Qry1),
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

'K2-SeqUnion-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(<e/>/(author union text))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqUnion-6.xq"), Qry1),
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

'K2-SeqUnion-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(<e/>/(author union node))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqUnion-7.xq"), Qry1),
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

'K2-SeqUnion-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(<e/>/(author union element))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqUnion-8.xq"), Qry1),
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

'K2-SeqUnion-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(<e/>/(author union attribute))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqUnion-9.xq"), Qry1),
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

'K2-SeqUnion-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(<e/>/(author union document-node))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqUnion-10.xq"), Qry1),
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

'K2-SeqUnion-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(<e/>/(author union comment))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqUnion-11.xq"), Qry1),
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

'K2-SeqUnion-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(<e/>/(author union processing-instruction))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqUnion-12.xq"), Qry1),
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

'K2-SeqUnion-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(<e/>/(author union item))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqUnion-13.xq"), Qry1),
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

'K2-SeqUnion-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(<e/>/(author union document))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqUnion-14.xq"), Qry1),
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

'K2-SeqUnion-15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(<e/>/(author union if))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqUnion-15.xq"), Qry1),
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

'K2-SeqUnion-16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(<e/>/(author union then))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqUnion-16.xq"), Qry1),
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

'K2-SeqUnion-17'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(<e/>/(author union mod))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqUnion-17.xq"), Qry1),
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

'K2-SeqUnion-18'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(<e/>/(author union div))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqUnion-18.xq"), Qry1),
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

'K2-SeqUnion-19'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(<e/>/(author union empty-sequence))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqUnion-19.xq"), Qry1),
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

'K2-SeqUnion-20'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(<e/>/(author union schema-attribute))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqUnion-20.xq"), Qry1),
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

'K2-SeqUnion-21'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(<e/>/(author union schema-element))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqUnion-21.xq"), Qry1),
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

'K2-SeqUnion-22'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(<e/>/(a union attribute {\"name\"} {()}))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqUnion-22.xq"), Qry1),
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

'K2-SeqUnion-23'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(<e/>/(a union attribute name {()}))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqUnion-23.xq"), Qry1),
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

'K2-SeqUnion-24'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(<e/>/(a union element {\"name\"} {()}))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqUnion-24.xq"), Qry1),
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
                    case xqerl_test:assert_false(Res) of
                        true -> {comment, "Empty"};
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

'K2-SeqUnion-25'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(<e/>/(a union element name {()}))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqUnion-25.xq"), Qry1),
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
                    case xqerl_test:assert_false(Res) of
                        true -> {comment, "Empty"};
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

'K2-SeqUnion-26'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(<e/>/(a union processing-instruction {\"name\"} {()}))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqUnion-26.xq"), Qry1),
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

'K2-SeqUnion-27'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(<e/>/(a union processing-instruction name {}))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqUnion-27.xq"), Qry1),
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

'K2-SeqUnion-28'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(<e/>/(a union comment {()}))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqUnion-28.xq"), Qry1),
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

'K2-SeqUnion-29'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(<e/>/(a union text {()}))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqUnion-29.xq"), Qry1),
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

'K2-SeqUnion-30'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(<e/>/(a union descendant))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqUnion-30.xq"), Qry1),
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

'K2-SeqUnion-31'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(<e/>/(a union attribute))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqUnion-31.xq"), Qry1),
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

'K2-SeqUnion-32'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(<e/>/(a union self))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqUnion-32.xq"), Qry1),
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

'K2-SeqUnion-33'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(<e/>/(a union descendant-or-self))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqUnion-33.xq"), Qry1),
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

'K2-SeqUnion-34'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(<e/>/(a union following-sibling))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqUnion-34.xq"), Qry1),
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

'K2-SeqUnion-35'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(<e/>/(a union following))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqUnion-35.xq"), Qry1),
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

'K2-SeqUnion-36'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(<e/>/(a union preceding-sibling))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqUnion-36.xq"), Qry1),
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

'K2-SeqUnion-37'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(<e/>/(a union preceding))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqUnion-37.xq"), Qry1),
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

'K2-SeqUnion-38'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(<e/>/(a union parent))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqUnion-38.xq"), Qry1),
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

'K2-SeqUnion-39'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(<e/>/(a union ancestor))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqUnion-39.xq"), Qry1),
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

'K2-SeqUnion-40'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(<e/>/(a union ancestor))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqUnion-40.xq"), Qry1),
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

'K2-SeqUnion-41'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(<e/>/(a union ancestor-or-self))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqUnion-41.xq"), Qry1),
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

'K2-SeqUnion-42'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(<e/>/(a union declare))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqUnion-42.xq"), Qry1),
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

'K2-SeqUnion-43'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "boolean(//employee[location = \"Denver\"] union //employee[last()])",
    {Env, Opts} = xqerl_test:handle_environment(environment('acme_corp', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqUnion-43.xq"), Qry1),
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

'K2-SeqUnion-44'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "boolean(//employee[location = \"Denver\"] | //employee[last()])",
    {Env, Opts} = xqerl_test:handle_environment(environment('acme_corp', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqUnion-44.xq"), Qry1),
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

'K2-SeqUnion-45'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = " <r> { //(employee[location = \"Denver\"] union //employee[last()])/./location } </r>",
    {Env, Opts} = xqerl_test:handle_environment(environment('acme_corp', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqUnion-45.xq"), Qry1),
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
                "<r><location>Denver</location><location>Denver</location><location>Denver</location><location>Boston</location></r>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-SeqUnion-46'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "1|2|3",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqUnion-46.xq"), Qry1),
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

'K2-SeqUnion-47'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "1 union 2 union 3",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqUnion-47.xq"), Qry1),
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

'combiningnodeseqhc1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "for $h in ( (<hours>0</hours>,<hours>1</hours>) | //hours) order by number($h) return $h",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "combiningnodeseqhc1.xq"),
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
                "<hours>0</hours><hours>1</hours><hours>12</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>80</hours><hours>80</hours><hours>80</hours>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'combiningnodeseqhc2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "for $h in ( (<hours>0</hours>,<hours>1</hours>) union (//hours)) order by number($h) return $h",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "combiningnodeseqhc2.xq"),
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
                "<hours>0</hours><hours>1</hours><hours>12</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>80</hours><hours>80</hours><hours>80</hours>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'combiningnodeseqhc3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "for $h in ( (<hours>0</hours>,<hours>40</hours>) | (//hours)) order by number($h) return $h",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "combiningnodeseqhc3.xq"),
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
                "<hours>0</hours><hours>12</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>80</hours><hours>80</hours><hours>80</hours>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'combiningnodeseqhc4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "for $h in ( (<hours>0</hours>,<hours>40</hours>) union (//hours)) order by number($h) return $h",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "combiningnodeseqhc4.xq"),
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
                "<hours>0</hours><hours>12</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>80</hours><hours>80</hours><hours>80</hours>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'combiningnodeseqhc5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $h in ( () | (//hours)) order by number($h) return $h",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "combiningnodeseqhc5.xq"),
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
                "<hours>12</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>80</hours><hours>80</hours><hours>80</hours>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'combiningnodeseqhc6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $h in ( () union (//hours)) order by number($h) return $h",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "combiningnodeseqhc6.xq"),
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
                "<hours>12</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>80</hours><hours>80</hours><hours>80</hours>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'combiningnodeseqhc7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "for $h in ( (//hours[xs:integer(.) le 20]) | (//hours[xs:integer(.) gt 20])) order by number($h) return $h",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "combiningnodeseqhc7.xq"),
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
                "<hours>12</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>80</hours><hours>80</hours><hours>80</hours>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'combiningnodeseqhc8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "for $h in ( (//hours[xs:integer(.) le 20]) union (//hours[xs:integer(.) gt 20])) order by number($h) return $h",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "combiningnodeseqhc8.xq"),
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
                "<hours>12</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>80</hours><hours>80</hours><hours>80</hours>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'combiningnodeseqhc9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "for $h in ( ($works//hours) | ($staff//grade[xs:integer(.) gt 12])) order by number($h) return $h",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-and-staff', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "combiningnodeseqhc9.xq"),
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
                "<hours>12</hours><grade>13</grade><grade>13</grade><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>80</hours><hours>80</hours><hours>80</hours>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'combiningnodeseqhc10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "for $h in ( ($works//hours) union ($staff//grade[xs:integer(.) gt 12])) order by number($h) return $h",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-and-staff', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "combiningnodeseqhc10.xq"),
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
                "<hours>12</hours><grade>13</grade><grade>13</grade><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>80</hours><hours>80</hours><hours>80</hours>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-fn-union-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare variable $x := <b/>;\n"
        "        declare variable $y := <a/>;\n"
        "        ($x union $y) union $x, ($x intersect $y) union $x, ($x except $y) union $x, ($y except $x) union $x, $x union ($x union $y), $x union ($x intersect $y), $x union ($x except $y), $x union ($y except $x)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-fn-union-001.xq"), Qry1),
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
                            "<b/><a/><b/><b/><b/><a/><b/><a/><b/><b/><b/><a/>"
                        )
                    of
                        true -> {comment, "XML Deep equal"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_xml(
                            Res,
                            "<a/><b/><b/><b/><a/><b/><a/><b/><b/><b/><a/><b/>"
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

'cbcl-fn-union-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare variable $doc := <root><test><x/><y/></test></root>;\n"
        "        $doc/test[x] union $doc/test[y]",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-fn-union-002.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<test><x/><y/></test>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.
