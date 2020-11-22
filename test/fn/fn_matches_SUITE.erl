-module('fn_matches_SUITE').

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

-export(['fn-matches2args-1'/1]).
-export(['fn-matches2args-2'/1]).
-export(['fn-matches2args-3'/1]).
-export(['fn-matches2args-4'/1]).
-export(['fn-matches2args-5'/1]).
-export(['fn-matchesErr-1'/1]).
-export(['fn-matchesErr-2'/1]).
-export(['fn-matchesErr-3'/1]).
-export(['fn-matchesErr-4'/1]).
-export(['fn-matchesErr-5'/1]).
-export(['fn-matches-1'/1]).
-export(['fn-matches-2'/1]).
-export(['fn-matches-3'/1]).
-export(['fn-matches-4'/1]).
-export(['fn-matches-5'/1]).
-export(['fn-matches-6'/1]).
-export(['fn-matches-7'/1]).
-export(['fn-matches-8'/1]).
-export(['fn-matches-9'/1]).
-export(['fn-matches-10'/1]).
-export(['fn-matches-11'/1]).
-export(['fn-matches-12'/1]).
-export(['fn-matches-13'/1]).
-export(['fn-matches-14'/1]).
-export(['fn-matches-15'/1]).
-export(['fn-matches-16'/1]).
-export(['fn-matches-17'/1]).
-export(['fn-matches-18'/1]).
-export(['fn-matches-19'/1]).
-export(['fn-matches-20'/1]).
-export(['fn-matches-21'/1]).
-export(['fn-matches-22'/1]).
-export(['fn-matches-23'/1]).
-export(['fn-matches-24'/1]).
-export(['fn-matches-25'/1]).
-export(['fn-matches-26'/1]).
-export(['fn-matches-27'/1]).
-export(['fn-matches-28'/1]).
-export(['fn-matches-29'/1]).
-export(['fn-matches-30'/1]).
-export(['fn-matches-31'/1]).
-export(['fn-matches-32'/1]).
-export(['fn-matches-33'/1]).
-export(['fn-matches-34'/1]).
-export(['fn-matches-35'/1]).
-export(['fn-matches-36'/1]).
-export(['fn-matches-37'/1]).
-export(['fn-matches-38'/1]).
-export(['fn-matches-39'/1]).
-export(['fn-matches-40'/1]).
-export(['fn-matches-41'/1]).
-export(['fn-matches-42'/1]).
-export(['fn-matches-43'/1]).
-export(['fn-matches-44'/1]).
-export(['fn-matches-45'/1]).
-export(['fn-matches-46'/1]).
-export(['fn-matches-47'/1]).
-export(['fn-matches-48'/1]).
-export(['fn-matches-49'/1]).
-export(['fn-matches-50'/1]).
-export(['fn-matches-51'/1]).
-export(['fn-matches-52'/1]).
-export(['fn-matches-53'/1]).
-export(['fn-matches-54'/1]).
-export(['fn-matches-55'/1]).
-export(['fn-matches-56'/1]).
-export(['fn-matches-57'/1]).
-export(['fn-matches-58'/1]).
-export(['fn-matches-59'/1]).
-export(['fn-matches-60'/1]).
-export(['fn-matches-61'/1]).
-export(['caselessmatch01'/1]).
-export(['caselessmatch02'/1]).
-export(['caselessmatch03'/1]).
-export(['caselessmatch04'/1]).
-export(['caselessmatch05'/1]).
-export(['caselessmatch06'/1]).
-export(['caselessmatch07'/1]).
-export(['caselessmatch08'/1]).
-export(['caselessmatch09'/1]).
-export(['caselessmatch10'/1]).
-export(['caselessmatch11'/1]).
-export(['caselessmatch12'/1]).
-export(['caselessmatch13'/1]).
-export(['caselessmatch14'/1]).
-export(['caselessmatch15'/1]).
-export(['K-MatchesFunc-1'/1]).
-export(['K-MatchesFunc-2'/1]).
-export(['K-MatchesFunc-3'/1]).
-export(['K-MatchesFunc-4'/1]).
-export(['K-MatchesFunc-5'/1]).
-export(['K-MatchesFunc-6'/1]).
-export(['K2-MatchesFunc-1'/1]).
-export(['K2-MatchesFunc-2'/1]).
-export(['K2-MatchesFunc-3'/1]).
-export(['K2-MatchesFunc-4'/1]).
-export(['K2-MatchesFunc-5'/1]).
-export(['K2-MatchesFunc-6'/1]).
-export(['K2-MatchesFunc-7'/1]).
-export(['K2-MatchesFunc-8'/1]).
-export(['K2-MatchesFunc-9'/1]).
-export(['K2-MatchesFunc-10'/1]).
-export(['K2-MatchesFunc-11'/1]).
-export(['K2-MatchesFunc-12'/1]).
-export(['K2-MatchesFunc-13'/1]).
-export(['K2-MatchesFunc-14'/1]).
-export(['K2-MatchesFunc-15'/1]).
-export(['K2-MatchesFunc-16'/1]).
-export(['K2-MatchesFunc-16a'/1]).
-export(['K2-MatchesFunc-17'/1]).
-export(['cbcl-matches-001'/1]).
-export(['cbcl-matches-002'/1]).
-export(['cbcl-matches-003'/1]).
-export(['cbcl-matches-004'/1]).
-export(['cbcl-matches-005'/1]).
-export(['cbcl-matches-006'/1]).
-export(['cbcl-matches-006b'/1]).
-export(['cbcl-matches-007'/1]).
-export(['cbcl-matches-008'/1]).
-export(['cbcl-matches-009'/1]).
-export(['cbcl-matches-010'/1]).
-export(['cbcl-matches-011'/1]).
-export(['cbcl-matches-012'/1]).
-export(['cbcl-matches-013'/1]).
-export(['cbcl-matches-014'/1]).
-export(['cbcl-matches-015'/1]).
-export(['cbcl-matches-016'/1]).
-export(['cbcl-matches-017'/1]).
-export(['cbcl-matches-018'/1]).
-export(['cbcl-matches-019'/1]).
-export(['cbcl-matches-020'/1]).
-export(['cbcl-matches-021'/1]).
-export(['cbcl-matches-022'/1]).
-export(['cbcl-matches-023'/1]).
-export(['cbcl-matches-024'/1]).
-export(['cbcl-matches-025'/1]).
-export(['cbcl-matches-026'/1]).
-export(['cbcl-matches-027'/1]).
-export(['cbcl-matches-028'/1]).
-export(['cbcl-matches-029'/1]).
-export(['cbcl-matches-030'/1]).
-export(['cbcl-matches-031'/1]).
-export(['cbcl-matches-032'/1]).
-export(['cbcl-matches-033'/1]).
-export(['cbcl-matches-034'/1]).
-export(['cbcl-matches-035'/1]).
-export(['cbcl-matches-036'/1]).
-export(['cbcl-matches-037'/1]).
-export(['cbcl-matches-038'/1]).
-export(['cbcl-matches-039'/1]).
-export(['cbcl-matches-040'/1]).
-export(['cbcl-matches-041'/1]).
-export(['cbcl-matches-041b'/1]).
-export(['cbcl-matches-042'/1]).
-export(['cbcl-matches-043'/1]).
-export(['cbcl-matches-044'/1]).
-export(['cbcl-matches-045'/1]).
-export(['cbcl-matches-046'/1]).
-export(['cbcl-matches-047'/1]).
-export(['cbcl-matches-047b'/1]).
-export(['cbcl-matches-048'/1]).
-export(['cbcl-matches-049'/1]).
-export(['cbcl-matches-050'/1]).
-export(['cbcl-matches-051'/1]).
-export(['cbcl-matches-052'/1]).
-export(['cbcl-matches-053'/1]).

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
            'fn-matches2args-1',
            'fn-matches2args-2',
            'fn-matches2args-3',
            'fn-matches2args-4',
            'fn-matches2args-5',
            'fn-matchesErr-1',
            'fn-matchesErr-2',
            'fn-matchesErr-3',
            'fn-matchesErr-4',
            'fn-matchesErr-5',
            'fn-matches-1',
            'fn-matches-2',
            'fn-matches-3',
            'fn-matches-4',
            'fn-matches-5',
            'fn-matches-6',
            'fn-matches-7',
            'fn-matches-8',
            'fn-matches-9',
            'fn-matches-10',
            'fn-matches-11',
            'fn-matches-12',
            'fn-matches-13'
        ]},
        {group_1, [parallel], [
            'fn-matches-14',
            'fn-matches-15',
            'fn-matches-16',
            'fn-matches-17',
            'fn-matches-18',
            'fn-matches-19',
            'fn-matches-20',
            'fn-matches-21',
            'fn-matches-22',
            'fn-matches-23',
            'fn-matches-24',
            'fn-matches-25',
            'fn-matches-26',
            'fn-matches-27',
            'fn-matches-28',
            'fn-matches-29',
            'fn-matches-30',
            'fn-matches-31',
            'fn-matches-32',
            'fn-matches-33',
            'fn-matches-34',
            'fn-matches-35',
            'fn-matches-36',
            'fn-matches-37'
        ]},
        {group_2, [parallel], [
            'fn-matches-38',
            'fn-matches-39',
            'fn-matches-40',
            'fn-matches-41',
            'fn-matches-42',
            'fn-matches-43',
            'fn-matches-44',
            'fn-matches-45',
            'fn-matches-46',
            'fn-matches-47',
            'fn-matches-48',
            'fn-matches-49',
            'fn-matches-50',
            'fn-matches-51',
            'fn-matches-52',
            'fn-matches-53',
            'fn-matches-54',
            'fn-matches-55',
            'fn-matches-56',
            'fn-matches-57',
            'fn-matches-58',
            'fn-matches-59',
            'fn-matches-60',
            'fn-matches-61'
        ]},
        {group_3, [parallel], [
            'caselessmatch01',
            'caselessmatch02',
            'caselessmatch03',
            'caselessmatch04',
            'caselessmatch05',
            'caselessmatch06',
            'caselessmatch07',
            'caselessmatch08',
            'caselessmatch09',
            'caselessmatch10',
            'caselessmatch11',
            'caselessmatch12',
            'caselessmatch13',
            'caselessmatch14',
            'caselessmatch15',
            'K-MatchesFunc-1',
            'K-MatchesFunc-2',
            'K-MatchesFunc-3',
            'K-MatchesFunc-4',
            'K-MatchesFunc-5',
            'K-MatchesFunc-6',
            'K2-MatchesFunc-1',
            'K2-MatchesFunc-2',
            'K2-MatchesFunc-3'
        ]},
        {group_4, [parallel], [
            'K2-MatchesFunc-4',
            'K2-MatchesFunc-5',
            'K2-MatchesFunc-6',
            'K2-MatchesFunc-7',
            'K2-MatchesFunc-8',
            'K2-MatchesFunc-9',
            'K2-MatchesFunc-10',
            'K2-MatchesFunc-11',
            'K2-MatchesFunc-12',
            'K2-MatchesFunc-13',
            'K2-MatchesFunc-14',
            'K2-MatchesFunc-15',
            'K2-MatchesFunc-16',
            'K2-MatchesFunc-16a',
            'K2-MatchesFunc-17',
            'cbcl-matches-001',
            'cbcl-matches-002',
            'cbcl-matches-003',
            'cbcl-matches-004',
            'cbcl-matches-005',
            'cbcl-matches-006',
            'cbcl-matches-006b',
            'cbcl-matches-007',
            'cbcl-matches-008'
        ]},
        {group_5, [parallel], [
            'cbcl-matches-009',
            'cbcl-matches-010',
            'cbcl-matches-011',
            'cbcl-matches-012',
            'cbcl-matches-013',
            'cbcl-matches-014',
            'cbcl-matches-015',
            'cbcl-matches-016',
            'cbcl-matches-017',
            'cbcl-matches-018',
            'cbcl-matches-019',
            'cbcl-matches-020',
            'cbcl-matches-021',
            'cbcl-matches-022',
            'cbcl-matches-023',
            'cbcl-matches-024',
            'cbcl-matches-025',
            'cbcl-matches-026',
            'cbcl-matches-027',
            'cbcl-matches-028',
            'cbcl-matches-029',
            'cbcl-matches-030',
            'cbcl-matches-031',
            'cbcl-matches-032'
        ]},
        {group_6, [parallel], [
            'cbcl-matches-033',
            'cbcl-matches-034',
            'cbcl-matches-035',
            'cbcl-matches-036',
            'cbcl-matches-037',
            'cbcl-matches-038',
            'cbcl-matches-039',
            'cbcl-matches-040',
            'cbcl-matches-041',
            'cbcl-matches-041b',
            'cbcl-matches-042',
            'cbcl-matches-043',
            'cbcl-matches-044',
            'cbcl-matches-045',
            'cbcl-matches-046',
            'cbcl-matches-047',
            'cbcl-matches-047b',
            'cbcl-matches-048',
            'cbcl-matches-049',
            'cbcl-matches-050',
            'cbcl-matches-051',
            'cbcl-matches-052',
            'cbcl-matches-053'
        ]}
    ].

'fn-matches2args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches(\"This is a characte\",\"This is a characte\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches2args-1.xq"), Qry1),
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

'fn-matches2args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches(\"This is a characte\",\"This is a characte\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches2args-2.xq"), Qry1),
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

'fn-matches2args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches(\"This is a characte\",\"This is a characte\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches2args-3.xq"), Qry1),
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

'fn-matches2args-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches(\"This is a characte\",\"This is a characte\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches2args-4.xq"), Qry1),
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

'fn-matches2args-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches(\"This is a characte\",\"This is a characte\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches2args-5.xq"), Qry1),
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

'fn-matchesErr-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches(\"abracadabra\", \"bra\", \"p\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matchesErr-1.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORX0001") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORX0001 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-matchesErr-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches(\"#abc#1\", \"^(#)abc[\\1]1$\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matchesErr-2.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORX0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORX0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-matchesErr-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches(\"#abc#1\", \"^(#)abc\\2$\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matchesErr-3.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORX0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORX0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-matchesErr-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches(\"#abc#1\", \"^((#)abc\\1)$\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matchesErr-4.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORX0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORX0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-matchesErr-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:matches(\"abcdefghijklmnopq\", \"(a)(b)(c)(d)(e)(f)(g)(h)(i)(j)(k)(l)((m)(n)(o)(p)(q)\\13)$\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matchesErr-5.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORX0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORX0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-matches-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches(\"abracadabra\", \"bra\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches-1.xq"), Qry1),
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

'fn-matches-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches(\"abracadabra\", \"^a.*a$\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches-2.xq"), Qry1),
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

'fn-matches-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches(\"abracadabra\", \"^bra\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches-3.xq"), Qry1),
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

'fn-matches-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:concat(fn:matches(\"abracadabra\", \"^bra\"),fn:matches(\"abracadabra\", \"^bra\", \"\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches-4.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "falsefalse") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-matches-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(fn:matches(\"()\", \"^bra\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches-5.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-matches-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches(\"abracadabra^abracadabra\", \"\\^\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches-6.xq"), Qry1),
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

'fn-matches-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches(\"abracadabra?abracadabra\", \"\\?\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches-7.xq"), Qry1),
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

'fn-matches-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches(\"abracadabra*abracadabra\", \"\\*\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches-8.xq"), Qry1),
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

'fn-matches-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches(\"abracadabra+abracadabra\", \"\\+\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches-9.xq"), Qry1),
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

'fn-matches-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches(\"abracadabra{abracadabra\", \"\\{\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches-10.xq"), Qry1),
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

'fn-matches-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches(\"abracadabra}abracadabra\", \"\\}\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches-11.xq"), Qry1),
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

'fn-matches-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches(\"abracadabra(abracadabra\", \"\\(\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches-12.xq"), Qry1),
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

'fn-matches-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches(\"abracadabra)abracadabra\", \"\\)\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches-13.xq"), Qry1),
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

'fn-matches-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches(\"abracadabra[abracadabra\", \"\\[\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches-14.xq"), Qry1),
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

'fn-matches-15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches(\"abracadabra]abracadabra\", \"\\]\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches-15.xq"), Qry1),
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

'fn-matches-16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches(\"abracadabra-abracadabra\", \"\\-\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches-16.xq"), Qry1),
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

'fn-matches-17'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches(\"abracadabra.abracadabra\", \"\\.\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches-17.xq"), Qry1),
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

'fn-matches-18'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches(\"abracadabra|abracadabra\", \"\\|\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches-18.xq"), Qry1),
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

'fn-matches-19'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches(\"abracadabra\\abracadabra\", \"\\\\\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches-19.xq"), Qry1),
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

'fn-matches-20'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches(\"abracadabra	abracadabra\", \"\\t\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches-20.xq"), Qry1),
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

'fn-matches-21'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:matches(\"abracadabra\n"
        "abracadabra\", \"\\n\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches-21.xq"), Qry1),
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

'fn-matches-22'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches(\"abracadabraabracadabra\", \"aa{1}\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches-22.xq"), Qry1),
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

'fn-matches-23'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches(\"abracadabraabracadabraabracadabra\", \"aa{1,}\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches-23.xq"), Qry1),
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

'fn-matches-24'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches(\"abracadabraabracadabraabracadabra\", \"aa{1,2}\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches-24.xq"), Qry1),
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

'fn-matches-25'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches(\"abracadabra\", \"**%%\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches-25.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORX0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORX0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-matches-26'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:matches(concat('abcd', codepoints-to-string(10), 'defg', codepoints-to-string(10)), \"^$\", \"m\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches-26.xq"), Qry1),
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

'fn-matches-27'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:matches(\"\n"
        "abcd\n"
        "defg\n"
        "\", \"^$\", \"m\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches-27.xq"), Qry1),
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

'fn-matches-28'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:matches(\"abcd\n"
        "\n"
        "defg\n"
        "\", \"^$\", \"m\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches-28.xq"), Qry1),
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

'fn-matches-29'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches(\"#abc#1\", \"^(#)abc\\11$\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches-29.xq"), Qry1),
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

'fn-matches-30'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:matches(\"#abcdefghijklmnopq#1\", \"^(#)(a)(b)(c)(d)(e)(f)(g)(h)(i)(j)(k)(l)(m)(n)(o)(p)(q)\\11$\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches-30.xq"), Qry1),
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

'fn-matches-31'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches(\"abracadabra\", \"(?:abra(?:cad)?)*\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches-31.xq"), Qry1),
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

'fn-matches-32'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches(\"abracadabra\", \"(?:abra(?:cad)?)*\", \"q\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches-32.xq"), Qry1),
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

'fn-matches-33'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches(\"x[y-z]\", \"x[y-z]\", \"q\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches-33.xq"), Qry1),
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

'fn-matches-34'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches(\"x[Y-z]\", \"X[y-Z]\", \"qi\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches-34.xq"), Qry1),
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

'fn-matches-35'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches('aA', '(a)\\99')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches-35.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORX0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORX0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-matches-36'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches('abcdefghijj', '(a)(b)(c)(d)(e)(f)(g)(h)(i)(j)\\10')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches-36.xq"), Qry1),
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

'fn-matches-37'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches('abcdefghijk', '(a)(b)(c)(d)(e)(f)(g)(h)(i)(j)(k\\11)')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches-37.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORX0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORX0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-matches-38'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches('abcdefghijj', '(a)(b)(c)(d)(e)(f)(g)(h)(i)(j\\10)')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches-38.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORX0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORX0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-matches-39'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches('abcdefghii', '(a)(b)(c)(d)(e)(f)(g)(h)(i\\9)')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches-39.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORX0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORX0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-matches-40'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches('aa', '(a\\1)')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches-40.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORX0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORX0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-matches-41'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches(concat('Mary', codepoints-to-string(10)), 'Mary$')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches-41.xq"), Qry1),
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

'fn-matches-42'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches(concat('Mary', codepoints-to-string(10)), 'Mary$', 's')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches-42.xq"), Qry1),
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

'fn-matches-43'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches(concat('Mary', codepoints-to-string(10), 'Jones'), 'Mary.Jones')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches-43.xq"), Qry1),
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

'fn-matches-44'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches(concat('Mary', codepoints-to-string(10), 'Jones'), 'Mary.Jones', 's')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches-44.xq"), Qry1),
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

'fn-matches-45'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches(concat('Mary', codepoints-to-string(13), 'Jones'), 'Mary.Jones')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches-45.xq"), Qry1),
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

'fn-matches-46'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches(concat('Mary', codepoints-to-string(13), 'Jones'), 'Mary.Jones', 's')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches-46.xq"), Qry1),
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

'fn-matches-47'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:matches(concat('abcd', codepoints-to-string(10), 'defg', codepoints-to-string(10)), \"g$\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches-47.xq"), Qry1),
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

'fn-matches-48'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches(\"abracadabra-abracadabra.\", \"\\.\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches-48.xq"), Qry1),
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

'fn-matches-49'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches(\"abracadabra-abracadabra-3\", \"(124|864|377|3)\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches-49.xq"), Qry1),
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

'fn-matches-50'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "xsd-version:1.0"}.

'fn-matches-51'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches(\"ab()cd()ef()gh\", \"^(ab)([()]*)(cd)([)(]*)ef\\4gh$\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches-51.xq"), Qry1),
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

'fn-matches-52'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches(\"aaababaaabaa\", \"^(a*b?a*){3,3}$\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches-52.xq"), Qry1),
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

'fn-matches-53'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches(\"A\", \"([A-Z])\\1*\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches-53.xq"), Qry1),
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

'fn-matches-54'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches(\"kZ\", \"(^|:)?Z\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches-54.xq"), Qry1),
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

'fn-matches-55'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(\"b\", \"ab\", \"aab\", \"aaab\", \"aaaab\", \"aaaaab\") ! fn:matches(., \"^(a{3,}?)b\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches-55.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "false(), false(), false(), true(), true(), true()") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-matches-56'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(\"b\", \"ab\", \"aab\", \"aaab\", \"aaaab\", \"aaaaab\") ! fn:matches(., \"^(a{0,3}?)b\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches-56.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "true(), true(), true(), true(), false(), false()") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-matches-57'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(\"b\", \"ab\", \"aab\", \"aaab\", \"aaaab\", \"aaaaab\") ! fn:matches(., \"^(a{2,3}?)b\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches-57.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "false(), false(), true(), true(), false(), false()") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-matches-58'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(\"b\", \"ab\", \"aab\", \"aaab\", \"aaazab\", \"aaaaab\") ! fn:matches(., \"^((az?){3,}?)b\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches-58.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "false(), false(), false(), true(), true(), true()") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-matches-59'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(\"b\", \"ab\", \"aazb\", \"aaab\", \"aaaab\", \"aaaaab\") ! fn:matches(., \"^((az?){0,3}?)b\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches-59.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "true(), true(), true(), true(), false(), false()") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-matches-60'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(\"b\", \"ab\", \"aazb\", \"aaab\", \"aaaab\", \"aaaaab\") ! fn:matches(., \"^((az?){2,3}?)b\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches-60.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "false(), false(), true(), true(), false(), false()") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-matches-61'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(\"b\", \"aa\", \"aaza\", \"aaaa\", \"aaaaa\", \"aaaaaa\") ! fn:matches(., \"^((az?){2,3}?)a$\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-matches-61.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "false(), false(), true(), true(), false(), false()") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'caselessmatch01'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "matches('abc', 'ABC', 'i')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "caselessmatch01.xq"), Qry1),
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

'caselessmatch02'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "matches('abZ', '[A-Z]*', 'i')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "caselessmatch02.xq"), Qry1),
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

'caselessmatch03'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "matches('abZ', '[a-z]*', 'i')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "caselessmatch03.xq"), Qry1),
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

'caselessmatch04'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "matches(codepoints-to-string(8490), '[A-Z]', 'i')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "caselessmatch04.xq"), Qry1),
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

'caselessmatch05'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "matches(codepoints-to-string(8490), '[a-z]', 'i')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "caselessmatch05.xq"), Qry1),
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

'caselessmatch06'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "matches(codepoints-to-string(8490), 'K', 'i')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "caselessmatch06.xq"), Qry1),
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

'caselessmatch07'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "matches(codepoints-to-string(8490), 'k', 'i')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "caselessmatch07.xq"), Qry1),
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

'caselessmatch08'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "matches('x', '[A-Z-[OI]]', 'i')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "caselessmatch08.xq"), Qry1),
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

'caselessmatch09'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "matches('X', '[A-Z-[OI]]', 'i')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "caselessmatch09.xq"), Qry1),
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

'caselessmatch10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "matches('O', '[A-Z-[OI]]', 'i')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "caselessmatch10.xq"), Qry1),
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

'caselessmatch11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "matches('i', '[A-Z-[OI]]', 'i')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "caselessmatch11.xq"), Qry1),
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

'caselessmatch12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "matches('Q', '[^Q]', 'i')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "caselessmatch12.xq"), Qry1),
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

'caselessmatch13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "matches('q', '[^Q]', 'i')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "caselessmatch13.xq"), Qry1),
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

'caselessmatch14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "matches('m', '\\p{Lu}', 'i')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "caselessmatch14.xq"), Qry1),
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

'caselessmatch15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "matches('m', '\\P{Lu}', 'i')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "caselessmatch15.xq"), Qry1),
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

'K-MatchesFunc-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "matches(\"input\", ())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-MatchesFunc-1.xq"), Qry1),
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

'K-MatchesFunc-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "matches(\"input\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-MatchesFunc-2.xq"), Qry1),
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

'K-MatchesFunc-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "matches(\"input\", \"pattern\", ())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-MatchesFunc-3.xq"), Qry1),
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

'K-MatchesFunc-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "matches(\"input\", \"pattern\", \"\", ())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-MatchesFunc-4.xq"), Qry1),
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

'K-MatchesFunc-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "matches(\"input\", \"pattern\", \" \")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-MatchesFunc-5.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORX0001") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORX0001 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-MatchesFunc-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "matches(\"input\", \"pattern\", \"X\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-MatchesFunc-6.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORX0001") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORX0001 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-MatchesFunc-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches(\"hello world\", \"hello\\ sworld\", \"x\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-MatchesFunc-1.xq"), Qry1),
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

'K2-MatchesFunc-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches(\"hello world\", \" hello[ ]world\", \"x\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-MatchesFunc-2.xq"), Qry1),
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

'K2-MatchesFunc-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches(\"hello world\", \"hello[ ]world \", \"x\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-MatchesFunc-3.xq"), Qry1),
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

'K2-MatchesFunc-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches(\"hello world\", \"he ll o[ ]worl d\", \"x\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-MatchesFunc-4.xq"), Qry1),
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

'K2-MatchesFunc-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches(\"hello world\", \"\\p{ IsBasicLatin}+\", \"x\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-MatchesFunc-5.xq"), Qry1),
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

'K2-MatchesFunc-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches(\"hello world\", \"\\p{ I s B a s i c L a t i n }+\", \"x\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-MatchesFunc-6.xq"), Qry1),
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

'K2-MatchesFunc-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches(\"hello world\", \"\\p{ IsBasicLatin}+\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-MatchesFunc-7.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORX0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORX0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-MatchesFunc-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches(\"h\", \"(.)\\3\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-MatchesFunc-8.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORX0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORX0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-MatchesFunc-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches(\"h\", \"(.)\\2\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-MatchesFunc-9.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORX0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORX0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-MatchesFunc-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "matches(\"input\", \"\\3\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-MatchesFunc-10.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORX0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORX0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-MatchesFunc-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "matches(\"abcd\", \"(asd)[\\1]\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-MatchesFunc-11.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORX0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORX0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-MatchesFunc-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "matches(\"abcd\", \"(asd)[asd\\1]\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-MatchesFunc-12.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORX0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORX0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-MatchesFunc-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "matches(\"abcd\", \"(asd)[asd\\0]\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-MatchesFunc-13.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORX0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORX0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-MatchesFunc-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "matches(\"abcd\", \"1[asd\\0]\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-MatchesFunc-14.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORX0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORX0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-MatchesFunc-15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches(\"a\", \"a[^b]\"), fn:matches(\"a \", \"a[^b]\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-MatchesFunc-15.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "false(), true()") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-MatchesFunc-16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches(\"input\", \"[0-9-.]*/\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-MatchesFunc-16.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "false") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-MatchesFunc-16a'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "xsd-version:1.0"}.

'K2-MatchesFunc-17'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "matches('aA', '(a)\\1', 'i')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-MatchesFunc-17.xq"), Qry1),
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

'cbcl-matches-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches('foo', '[^]')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-matches-001.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORX0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORX0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-matches-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches('foo', '[a-\\b]')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-matches-002.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORX0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORX0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-matches-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:matches('abcdefghijkabcdefghijk', '(a)(b)(c)(d)(e)(f)(g)(h)(i)(j)(k)\\1\\2\\3\\4\\5\\6\\7\\8\\9\\10\\11')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-matches-003.xq"), Qry1),
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

'cbcl-matches-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches('aaa', 'a{99999999999999999999999999}')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-matches-004.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORX0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORX0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-matches-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches('a', '[a--]')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-matches-005.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORX0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORX0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-matches-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches('&#x9;', '[\\t]')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-matches-006.xq"), Qry1),
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

'cbcl-matches-006b'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XP20+"}.

'cbcl-matches-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches('-abba-', '[-ab]+')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-matches-007.xq"), Qry1),
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

'cbcl-matches-008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches('foo', '\\P{L')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-matches-008.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORX0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORX0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-matches-009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches('foo', '\\P{M')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-matches-009.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORX0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORX0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-matches-010'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches('foo', '\\P{N')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-matches-010.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORX0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORX0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-matches-011'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches('foo', '\\P{P')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-matches-011.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORX0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORX0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-matches-012'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches('foo', '\\P{Z')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-matches-012.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORX0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORX0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-matches-013'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches('foo', '\\P{S')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-matches-013.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORX0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORX0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-matches-014'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches('foo', '\\P{C')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-matches-014.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORX0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORX0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-matches-015'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches('foo', '\\P{L}')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-matches-015.xq"), Qry1),
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

'cbcl-matches-016'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches('foo', '\\P{M}')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-matches-016.xq"), Qry1),
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

'cbcl-matches-017'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches('foo', '\\P{N}')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-matches-017.xq"), Qry1),
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

'cbcl-matches-018'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches('foo', '\\P{P}')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-matches-018.xq"), Qry1),
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

'cbcl-matches-019'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches('foo', '\\P{Z}')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-matches-019.xq"), Qry1),
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

'cbcl-matches-020'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches('foo', '\\P{S}')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-matches-020.xq"), Qry1),
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

'cbcl-matches-021'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches('foo', '\\P{C}')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-matches-021.xq"), Qry1),
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

'cbcl-matches-022'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches('foo', '\\P{Lu}')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-matches-022.xq"), Qry1),
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

'cbcl-matches-023'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches('foo', '\\P{Me}')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-matches-023.xq"), Qry1),
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

'cbcl-matches-024'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches('foo', '\\P{No}')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-matches-024.xq"), Qry1),
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

'cbcl-matches-025'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches('foo', '\\P{Pf}')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-matches-025.xq"), Qry1),
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

'cbcl-matches-026'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches('foo', '\\P{Zs}')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-matches-026.xq"), Qry1),
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

'cbcl-matches-027'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches('foo', '\\P{Sk}')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-matches-027.xq"), Qry1),
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

'cbcl-matches-028'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches('foo', '\\P{Cc}')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-matches-028.xq"), Qry1),
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

'cbcl-matches-029'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches('foo', '\\P{La}')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-matches-029.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORX0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORX0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-matches-030'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches('foo', '\\P{Ma}')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-matches-030.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORX0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORX0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-matches-031'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches('foo', '\\P{Na}')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-matches-031.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORX0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORX0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-matches-032'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches('foo', '\\P{Pa}')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-matches-032.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORX0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORX0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-matches-033'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches('foo', '\\P{Za}')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-matches-033.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORX0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORX0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-matches-034'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches('foo', '\\P{Sa}')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-matches-034.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORX0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORX0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-matches-035'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches('foo', '\\P{Ca}')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-matches-035.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORX0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORX0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-matches-036'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches('foo', 'a()b')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-matches-036.xq"), Qry1),
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

'cbcl-matches-037'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches('&#x10000;', '&#x10000;')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-matches-037.xq"), Qry1),
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

'cbcl-matches-038'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "TB * Erlang quantifier overflow at 65536"}.

'cbcl-matches-039'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:matches('abcdefghiabcdefghia0a1', '(a)(b)(c)(d)(e)(f)(g)(h)(i)\\1\\2\\3\\4\\5\\6\\7\\8\\9\\10\\11')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-matches-039.xq"), Qry1),
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

'cbcl-matches-040'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches('abc', '\\S+')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-matches-040.xq"), Qry1),
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

'cbcl-matches-041'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches('&#xD;&#x20;&#x9;', '\\S+')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-matches-041.xq"), Qry1),
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

'cbcl-matches-041b'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XP20+"}.

'cbcl-matches-042'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches('a_:', '\\i+')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-matches-042.xq"), Qry1),
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

'cbcl-matches-043'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches('1.0', '\\i+')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-matches-043.xq"), Qry1),
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

'cbcl-matches-044'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches('1.0', '\\I+')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-matches-044.xq"), Qry1),
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

'cbcl-matches-045'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches('a_:', '\\I+')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-matches-045.xq"), Qry1),
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

'cbcl-matches-046'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches('abc', '\\c+')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-matches-046.xq"), Qry1),
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

'cbcl-matches-047'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches('&#x20;&#x9;&#xD;', '\\c+')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-matches-047.xq"), Qry1),
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

'cbcl-matches-047b'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XP20+"}.

'cbcl-matches-048'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches('&#x20;&#x9;&#xD;', '\\C+')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-matches-048.xq"), Qry1),
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

'cbcl-matches-049'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches('abc', '\\C+')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-matches-049.xq"), Qry1),
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

'cbcl-matches-050'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches('Mum', '([md])[aeiou]\\1', 'i')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-matches-050.xq"), Qry1),
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

'cbcl-matches-051'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches('&#x10000;&#x10000;', '(&#x10000;)\\1')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-matches-051.xq"), Qry1),
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

'cbcl-matches-052'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches('&#x10000;&#x10001;', '(&#x10000;)\\1')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-matches-052.xq"), Qry1),
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

'cbcl-matches-053'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:matches('Mud', '([md])[aeiou]\\1', 'i')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-matches-053.xq"), Qry1),
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
