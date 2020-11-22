-module('prod_GeneralComp_le_SUITE').

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

-export(['generalexpression298'/1]).
-export(['generalexpression299'/1]).
-export(['generalexpression300'/1]).
-export(['generalexpression301'/1]).
-export(['generalexpression302'/1]).
-export(['generalexpression303'/1]).
-export(['generalexpression304'/1]).
-export(['generalexpression305'/1]).
-export(['generalexpression306'/1]).
-export(['generalexpression307'/1]).
-export(['generalexpression308'/1]).
-export(['generalexpression309'/1]).
-export(['generalexpression310'/1]).
-export(['generalexpression311'/1]).
-export(['generalexpression312'/1]).
-export(['generalexpression313'/1]).
-export(['generalexpression314'/1]).
-export(['generalexpression315'/1]).
-export(['generalexpression316'/1]).
-export(['generalexpression317'/1]).
-export(['generalexpression318'/1]).
-export(['generalexpression319'/1]).
-export(['generalexpression320'/1]).
-export(['generalexpression321'/1]).
-export(['generalexpression322'/1]).
-export(['generalexpression323'/1]).
-export(['generalexpression324'/1]).
-export(['generalexpression325'/1]).
-export(['generalexpression326'/1]).
-export(['generalexpression327'/1]).
-export(['generalexpression328'/1]).
-export(['generalexpression329'/1]).
-export(['generalexpression330'/1]).
-export(['generalexpression331'/1]).
-export(['generalexpression332'/1]).
-export(['generalexpression333'/1]).
-export(['generalexpression334'/1]).
-export(['generalexpression335'/1]).
-export(['generalexpression336'/1]).
-export(['generalexpression337'/1]).
-export(['generalexpression338'/1]).
-export(['generalexpression339'/1]).
-export(['generalexpression340'/1]).
-export(['generalexpression341'/1]).
-export(['generalexpression342'/1]).
-export(['generalexpression343'/1]).
-export(['generalexpression344'/1]).
-export(['generalexpression345'/1]).
-export(['generalexpression346'/1]).
-export(['generalexpression347'/1]).
-export(['generalexpression348'/1]).
-export(['generalexpression349'/1]).
-export(['generalexpression350'/1]).
-export(['generalexpression351'/1]).
-export(['generalexpression352'/1]).
-export(['generalexpression353'/1]).
-export(['generalexpression354'/1]).
-export(['generalexpression355'/1]).
-export(['generalexpression356'/1]).
-export(['generalexpression357'/1]).
-export(['generalexpression358'/1]).
-export(['generalexpression359'/1]).
-export(['generalexpression360'/1]).
-export(['generalexpression361'/1]).
-export(['generalexpression362'/1]).
-export(['generalexpression363'/1]).
-export(['generalexpression364'/1]).
-export(['generalexpression365'/1]).
-export(['generalexpression366'/1]).
-export(['generalexpression367'/1]).
-export(['generalexpression368'/1]).
-export(['generalexpression369'/1]).
-export(['generalexpression370'/1]).
-export(['generalexpression371'/1]).
-export(['generalexpression372'/1]).
-export(['generalexpression373'/1]).
-export(['generalexpression374'/1]).
-export(['generalexpression375'/1]).
-export(['generalexpression376'/1]).
-export(['generalexpression377'/1]).
-export(['generalexpression378'/1]).
-export(['generalexpression379'/1]).
-export(['generalexpression380'/1]).
-export(['generalexpression381'/1]).
-export(['generalexpression382'/1]).
-export(['generalexpression383'/1]).
-export(['generalexpression384'/1]).
-export(['generalexpression385'/1]).
-export(['generalexpression386'/1]).
-export(['generalexpression387'/1]).
-export(['generalexpression388'/1]).
-export(['generalexpression389'/1]).
-export(['generalexpression390'/1]).
-export(['generalexpression391'/1]).
-export(['generalexpression392'/1]).
-export(['generalexpression393'/1]).
-export(['generalexpression394'/1]).
-export(['generalexpression395'/1]).
-export(['generalexpression396'/1]).
-export(['lessthaneqonanyuri-1'/1]).
-export(['K-GenCompLTEQ-1'/1]).
-export(['K-GenCompLTEQ-2'/1]).
-export(['K-GenCompLTEQ-3'/1]).
-export(['K-GenCompLTEQ-4'/1]).
-export(['K-GenCompLTEQ-5'/1]).
-export(['K-GenCompLTEQ-6'/1]).
-export(['K-GenCompLTEQ-7'/1]).
-export(['K-GenCompLTEQ-8'/1]).

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
        {group, group_4}
    ].

groups() ->
    [
        {group_0, [parallel], [
            'generalexpression298',
            'generalexpression299',
            'generalexpression300',
            'generalexpression301',
            'generalexpression302',
            'generalexpression303',
            'generalexpression304',
            'generalexpression305',
            'generalexpression306',
            'generalexpression307',
            'generalexpression308',
            'generalexpression309',
            'generalexpression310',
            'generalexpression311',
            'generalexpression312',
            'generalexpression313',
            'generalexpression314',
            'generalexpression315',
            'generalexpression316',
            'generalexpression317',
            'generalexpression318',
            'generalexpression319',
            'generalexpression320'
        ]},
        {group_1, [parallel], [
            'generalexpression321',
            'generalexpression322',
            'generalexpression323',
            'generalexpression324',
            'generalexpression325',
            'generalexpression326',
            'generalexpression327',
            'generalexpression328',
            'generalexpression329',
            'generalexpression330',
            'generalexpression331',
            'generalexpression332',
            'generalexpression333',
            'generalexpression334',
            'generalexpression335',
            'generalexpression336',
            'generalexpression337',
            'generalexpression338',
            'generalexpression339',
            'generalexpression340',
            'generalexpression341',
            'generalexpression342',
            'generalexpression343',
            'generalexpression344'
        ]},
        {group_2, [parallel], [
            'generalexpression345',
            'generalexpression346',
            'generalexpression347',
            'generalexpression348',
            'generalexpression349',
            'generalexpression350',
            'generalexpression351',
            'generalexpression352',
            'generalexpression353',
            'generalexpression354',
            'generalexpression355',
            'generalexpression356',
            'generalexpression357',
            'generalexpression358',
            'generalexpression359',
            'generalexpression360',
            'generalexpression361',
            'generalexpression362',
            'generalexpression363',
            'generalexpression364',
            'generalexpression365',
            'generalexpression366',
            'generalexpression367',
            'generalexpression368'
        ]},
        {group_3, [parallel], [
            'generalexpression369',
            'generalexpression370',
            'generalexpression371',
            'generalexpression372',
            'generalexpression373',
            'generalexpression374',
            'generalexpression375',
            'generalexpression376',
            'generalexpression377',
            'generalexpression378',
            'generalexpression379',
            'generalexpression380',
            'generalexpression381',
            'generalexpression382',
            'generalexpression383',
            'generalexpression384',
            'generalexpression385',
            'generalexpression386',
            'generalexpression387',
            'generalexpression388',
            'generalexpression389',
            'generalexpression390',
            'generalexpression391',
            'generalexpression392'
        ]},
        {group_4, [parallel], [
            'generalexpression393',
            'generalexpression394',
            'generalexpression395',
            'generalexpression396',
            'lessthaneqonanyuri-1',
            'K-GenCompLTEQ-1',
            'K-GenCompLTEQ-2',
            'K-GenCompLTEQ-3',
            'K-GenCompLTEQ-4',
            'K-GenCompLTEQ-5',
            'K-GenCompLTEQ-6',
            'K-GenCompLTEQ-7',
            'K-GenCompLTEQ-8'
        ]}
    ].

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
    ].

'generalexpression298'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "() <= ()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression298.xq"),
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

'generalexpression299'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "() <= 10000",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression299.xq"),
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

'generalexpression300'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "() <= (50000)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression300.xq"),
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

'generalexpression301'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "() <= (10000,50000)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression301.xq"),
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

'generalexpression302'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "() <= <a>10000</a>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression302.xq"),
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

'generalexpression303'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "() <= (<a>10000</a>)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression303.xq"),
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

'generalexpression304'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "() <= (<a>10000</a>,<b>50000</b>)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression304.xq"),
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

'generalexpression305'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "() <= (/works/employee[1]/hours[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression305.xq"),
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

'generalexpression306'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "() <= (/works/employee[1]/hours[1],/works/employee[6]/hours[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression306.xq"),
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

'generalexpression307'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "() <= ($works/works/employee[1]/hours[1],$staff/staff/employee[6]/grade[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-and-staff', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression307.xq"),
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

'generalexpression308'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "10000 <= ()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression308.xq"),
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

'generalexpression309'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "10000 <= (50000)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression309.xq"),
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

'generalexpression310'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "10000 <= (10000,50000)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression310.xq"),
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

'generalexpression311'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "10000 <= <a>10000</a>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression311.xq"),
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

'generalexpression312'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "10000 <= (<a>10000</a>)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression312.xq"),
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

'generalexpression313'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "10000 <= (<a>10000</a>,<b>50000</b>)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression313.xq"),
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

'generalexpression314'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "10000 <= (/works/employee[1]/hours[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression314.xq"),
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

'generalexpression315'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "10000 <= (/works/employee[1]/hours[1],/works/employee[6]/hours[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression315.xq"),
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

'generalexpression316'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "10000 <= ($works/works/employee[1]/hours[1],$staff/staff/employee[6]/grade[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-and-staff', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression316.xq"),
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

'generalexpression317'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(50000) <= ()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression317.xq"),
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

'generalexpression318'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(50000) <= 10000",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression318.xq"),
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

'generalexpression319'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(50000) <= (50000)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression319.xq"),
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

'generalexpression320'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(50000) <= (10000,50000)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression320.xq"),
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

'generalexpression321'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(50000) <= <a>10000</a>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression321.xq"),
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

'generalexpression322'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(50000) <= (<a>10000</a>)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression322.xq"),
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

'generalexpression323'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(50000) <= (<a>10000</a>,<b>50000</b>)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression323.xq"),
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

'generalexpression324'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(50000) <= (/works/employee[1]/hours[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression324.xq"),
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

'generalexpression325'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(50000) <= (/works/employee[1]/hours[1],/works/employee[6]/hours[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression325.xq"),
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

'generalexpression326'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(50000) <= ($works/works/employee[1]/hours[1],$staff/staff/employee[6]/grade[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-and-staff', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression326.xq"),
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

'generalexpression327'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(10000,50000) <= ()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression327.xq"),
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

'generalexpression328'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(10000,50000) <= 10000",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression328.xq"),
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

'generalexpression329'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(10000,50000) <= (50000)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression329.xq"),
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

'generalexpression330'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(10000,50000) <= (10000,50000)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression330.xq"),
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

'generalexpression331'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(10000,50000) <= <a>10000</a>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression331.xq"),
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

'generalexpression332'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(10000,50000) <= (<a>10000</a>)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression332.xq"),
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

'generalexpression333'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(10000,50000) <= (<a>10000</a>,<b>50000</b>)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression333.xq"),
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

'generalexpression334'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(10000,50000) <= (/works/employee[1]/hours[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression334.xq"),
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

'generalexpression335'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(10000,50000) <= (/works/employee[1]/hours[1],/works/employee[6]/hours[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression335.xq"),
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

'generalexpression336'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(10000,50000) <= ($works/works/employee[1]/hours[1],$staff/staff/employee[6]/grade[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-and-staff', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression336.xq"),
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

'generalexpression337'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<a>10000</a> <= ()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression337.xq"),
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

'generalexpression338'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<a>10000</a> <= 10000",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression338.xq"),
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

'generalexpression339'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<a>10000</a> <= (50000)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression339.xq"),
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

'generalexpression340'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<a>10000</a> <= (10000,50000)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression340.xq"),
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

'generalexpression341'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<a>10000</a> <= <a>10000</a>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression341.xq"),
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

'generalexpression342'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<a>10000</a> <= (<a>10000</a>)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression342.xq"),
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

'generalexpression343'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<a>10000</a> <= (<a>10000</a>,<b>50000</b>)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression343.xq"),
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

'generalexpression344'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<a>10000</a> <= (/works/employee[1]/hours[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression344.xq"),
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

'generalexpression345'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<a>10000</a> <= (/works/employee[1]/hours[1],/works/employee[6]/hours[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression345.xq"),
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

'generalexpression346'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<a>10000</a> <= ($works/works/employee[1]/hours[1],$staff/staff/employee[6]/grade[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-and-staff', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression346.xq"),
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

'generalexpression347'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(<a>10000</a>) <= ()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression347.xq"),
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

'generalexpression348'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(<a>10000</a>) <= 10000",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression348.xq"),
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

'generalexpression349'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(<a>10000</a>) <= (50000)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression349.xq"),
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

'generalexpression350'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(<a>10000</a>) <= (10000,50000)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression350.xq"),
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

'generalexpression351'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(<a>10000</a>) <= <a>10000</a>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression351.xq"),
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

'generalexpression352'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(<a>10000</a>) <= (<a>10000</a>)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression352.xq"),
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

'generalexpression353'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(<a>10000</a>) <= (<a>10000</a>,<b>50000</b>)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression353.xq"),
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

'generalexpression354'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(<a>10000</a>) <= (/works/employee[1]/hours[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression354.xq"),
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

'generalexpression355'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(<a>10000</a>) <= (/works/employee[1]/hours[1],/works/employee[6]/hours[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression355.xq"),
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

'generalexpression356'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(<a>10000</a>) <= ($works/works/employee[1]/hours[1],$staff/staff/employee[6]/grade[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-and-staff', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression356.xq"),
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

'generalexpression357'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(<a>10000</a>,<b>50000</b>) <= ()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression357.xq"),
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

'generalexpression358'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(<a>10000</a>,<b>50000</b>) <= 10000",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression358.xq"),
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

'generalexpression359'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(<a>10000</a>,<b>50000</b>) <= (50000)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression359.xq"),
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

'generalexpression360'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(<a>10000</a>,<b>50000</b>) <= (10000,50000)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression360.xq"),
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

'generalexpression361'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(<a>10000</a>,<b>50000</b>) <= <a>10000</a>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression361.xq"),
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

'generalexpression362'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(<a>10000</a>,<b>50000</b>) <= (<a>10000</a>)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression362.xq"),
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

'generalexpression363'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(<a>10000</a>,<b>50000</b>) <= (<a>10000</a>,<b>50000</b>)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression363.xq"),
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

'generalexpression364'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(<a>10000</a>,<b>50000</b>) <= (/works/employee[1]/hours[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression364.xq"),
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

'generalexpression365'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(<a>10000</a>,<b>50000</b>) <= (/works/employee[1]/hours[1],/works/employee[6]/hours[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression365.xq"),
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

'generalexpression366'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(<a>10000</a>,<b>50000</b>) <= ($works/works/employee[1]/hours[1],$staff/staff/employee[6]/grade[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-and-staff', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression366.xq"),
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

'generalexpression367'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(/works/employee[1]/hours[1]) <= ()",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression367.xq"),
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

'generalexpression368'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(/works/employee[1]/hours[1]) <= 10000",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression368.xq"),
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

'generalexpression369'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(/works/employee[1]/hours[1]) <= (50000)",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression369.xq"),
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

'generalexpression370'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(/works/employee[1]/hours[1]) <= (10000,50000)",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression370.xq"),
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

'generalexpression371'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(/works/employee[1]/hours[1]) <= <a>10000</a>",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression371.xq"),
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

'generalexpression372'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(/works/employee[1]/hours[1]) <= (<a>10000</a>)",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression372.xq"),
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

'generalexpression373'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(/works/employee[1]/hours[1]) <= (<a>10000</a>,<b>50000</b>)",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression373.xq"),
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

'generalexpression374'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(/works/employee[1]/hours[1]) <= (/works/employee[1]/hours[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression374.xq"),
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

'generalexpression375'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(/works/employee[1]/hours[1]) <= (/works/employee[1]/hours[1],/works/employee[6]/hours[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression375.xq"),
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

'generalexpression376'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "($works/works/employee[1]/hours[1]) <= ($works/works/employee[1]/hours[1],$staff/staff/employee[6]/grade[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-and-staff', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression376.xq"),
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

'generalexpression377'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(/works/employee[1]/hours[1],/works/employee[6]/hours[1]) <= ()",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression377.xq"),
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

'generalexpression378'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(/works/employee[1]/hours[1],/works/employee[6]/hours[1]) <= 10000",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression378.xq"),
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

'generalexpression379'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(/works/employee[1]/hours[1],/works/employee[6]/hours[1]) <= (50000)",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression379.xq"),
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

'generalexpression380'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(/works/employee[1]/hours[1],/works/employee[6]/hours[1]) <= (10000,50000)",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression380.xq"),
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

'generalexpression381'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(/works/employee[1]/hours[1],/works/employee[6]/hours[1]) <= <a>10000</a>",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression381.xq"),
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

'generalexpression382'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(/works/employee[1]/hours[1],/works/employee[6]/hours[1]) <= (<a>10000</a>)",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression382.xq"),
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

'generalexpression383'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(/works/employee[1]/hours[1],/works/employee[6]/hours[1]) <= (<a>10000</a>,<b>50000</b>)",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression383.xq"),
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

'generalexpression384'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(/works/employee[1]/hours[1],/works/employee[6]/hours[1]) <= (/works/employee[1]/hours[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression384.xq"),
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

'generalexpression385'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(/works/employee[1]/hours[1],/works/employee[6]/hours[1]) <= (/works/employee[1]/hours[1],/works/employee[6]/hours[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression385.xq"),
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

'generalexpression386'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "($works/works/employee[1]/hours[1],$works/works/employee[6]/hours[1]) <= ($works/works/employee[1]/hours[1],$staff/staff/employee[6]/grade[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-and-staff', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression386.xq"),
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

'generalexpression387'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "($works/works/employee[1]/hours[1],$staff/staff/employee[6]/hours[1]) <= ()",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-and-staff', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression387.xq"),
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

'generalexpression388'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "($works/works/employee[1]/hours[1],$staff/staff/employee[6]/hours[1]) <= 10000",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-and-staff', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression388.xq"),
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

'generalexpression389'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "($works/works/employee[1]/hours[1],$staff/staff/employee[6]/hours[1]) <= (50000)",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-and-staff', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression389.xq"),
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

'generalexpression390'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "($works/works/employee[1]/hours[1],$staff/staff/employee[6]/hours[1]) <= (10000,50000)",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-and-staff', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression390.xq"),
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

'generalexpression391'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "($works/works/employee[1]/hours[1],$staff/staff/employee[6]/hours[1]) <= <a>10000</a>",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-and-staff', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression391.xq"),
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

'generalexpression392'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "($works/works/employee[1]/hours[1],$staff/staff/employee[6]/hours[1]) <= (<a>10000</a>)",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-and-staff', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression392.xq"),
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

'generalexpression393'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "($works/works/employee[1]/hours[1],$staff/staff/employee[6]/hours[1]) <= (<a>10000</a>,<b>50000</b>)",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-and-staff', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression393.xq"),
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

'generalexpression394'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "($works/works/employee[1]/hours[1],$staff/staff/employee[6]/hours[1]) <= ($works/works/employee[1]/hours[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-and-staff', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression394.xq"),
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

'generalexpression395'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "($works/works/employee[1]/hours[1],$staff/staff/employee[6]/hours[1]) <= ($works/works/employee[1]/hours[1],$works/works/employee[6]/hours[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-and-staff', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression395.xq"),
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

'generalexpression396'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "($works/works/employee[1]/hours[1],$staff/staff/employee[6]/hours[1]) <= ($works/works/employee[1]/hours[1],$staff/staff/employee[6]/grade[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-and-staff', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression396.xq"),
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

'lessthaneqonanyuri-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(xs:anyURI(\"http://www.example/com\")) <= (xs:anyURI(\"http://www.example/com\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "lessthaneqonanyuri-1.xq"),
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

'K-GenCompLTEQ-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "not(() <= () )",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-GenCompLTEQ-1.xq"), Qry1),
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

'K-GenCompLTEQ-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "not(1 <= () )",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-GenCompLTEQ-2.xq"), Qry1),
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

'K-GenCompLTEQ-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "not(() <= 1 )",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-GenCompLTEQ-3.xq"), Qry1),
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

'K-GenCompLTEQ-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "1 <= 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-GenCompLTEQ-4.xq"), Qry1),
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

'K-GenCompLTEQ-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"false\") <= false()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-GenCompLTEQ-5.xq"), Qry1),
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

'K-GenCompLTEQ-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "false() <= xs:untypedAtomic(\"false\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-GenCompLTEQ-6.xq"), Qry1),
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

'K-GenCompLTEQ-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"false\") <= false()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-GenCompLTEQ-7.xq"), Qry1),
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

'K-GenCompLTEQ-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "true() <= xs:untypedAtomic(\"true\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-GenCompLTEQ-8.xq"), Qry1),
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
