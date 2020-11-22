-module('prod_GeneralComp_ge_SUITE').

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

-export(['generalexpression496'/1]).
-export(['generalexpression497'/1]).
-export(['generalexpression498'/1]).
-export(['generalexpression499'/1]).
-export(['generalexpression500'/1]).
-export(['generalexpression501'/1]).
-export(['generalexpression502'/1]).
-export(['generalexpression503'/1]).
-export(['generalexpression504'/1]).
-export(['generalexpression505'/1]).
-export(['generalexpression506'/1]).
-export(['generalexpression507'/1]).
-export(['generalexpression508'/1]).
-export(['generalexpression509'/1]).
-export(['generalexpression510'/1]).
-export(['generalexpression511'/1]).
-export(['generalexpression512'/1]).
-export(['generalexpression513'/1]).
-export(['generalexpression514'/1]).
-export(['generalexpression515'/1]).
-export(['generalexpression516'/1]).
-export(['generalexpression517'/1]).
-export(['generalexpression518'/1]).
-export(['generalexpression519'/1]).
-export(['generalexpression520'/1]).
-export(['generalexpression521'/1]).
-export(['generalexpression522'/1]).
-export(['generalexpression523'/1]).
-export(['generalexpression524'/1]).
-export(['generalexpression525'/1]).
-export(['generalexpression526'/1]).
-export(['generalexpression527'/1]).
-export(['generalexpression528'/1]).
-export(['generalexpression529'/1]).
-export(['generalexpression530'/1]).
-export(['generalexpression531'/1]).
-export(['generalexpression532'/1]).
-export(['generalexpression533'/1]).
-export(['generalexpression534'/1]).
-export(['generalexpression535'/1]).
-export(['generalexpression536'/1]).
-export(['generalexpression537'/1]).
-export(['generalexpression538'/1]).
-export(['generalexpression539'/1]).
-export(['generalexpression540'/1]).
-export(['generalexpression541'/1]).
-export(['generalexpression542'/1]).
-export(['generalexpression543'/1]).
-export(['generalexpression544'/1]).
-export(['generalexpression545'/1]).
-export(['generalexpression546'/1]).
-export(['generalexpression547'/1]).
-export(['generalexpression548'/1]).
-export(['generalexpression549'/1]).
-export(['generalexpression550'/1]).
-export(['generalexpression551'/1]).
-export(['generalexpression552'/1]).
-export(['generalexpression553'/1]).
-export(['generalexpression554'/1]).
-export(['generalexpression555'/1]).
-export(['generalexpression556'/1]).
-export(['generalexpression557'/1]).
-export(['generalexpression558'/1]).
-export(['generalexpression559'/1]).
-export(['generalexpression560'/1]).
-export(['generalexpression561'/1]).
-export(['generalexpression562'/1]).
-export(['generalexpression563'/1]).
-export(['generalexpression564'/1]).
-export(['generalexpression565'/1]).
-export(['generalexpression566'/1]).
-export(['generalexpression567'/1]).
-export(['generalexpression568'/1]).
-export(['generalexpression569'/1]).
-export(['generalexpression570'/1]).
-export(['generalexpression571'/1]).
-export(['generalexpression572'/1]).
-export(['generalexpression573'/1]).
-export(['generalexpression574'/1]).
-export(['generalexpression575'/1]).
-export(['generalexpression576'/1]).
-export(['generalexpression577'/1]).
-export(['generalexpression578'/1]).
-export(['generalexpression579'/1]).
-export(['generalexpression580'/1]).
-export(['generalexpression581'/1]).
-export(['generalexpression582'/1]).
-export(['generalexpression583'/1]).
-export(['generalexpression584'/1]).
-export(['generalexpression585'/1]).
-export(['generalexpression586'/1]).
-export(['generalexpression587'/1]).
-export(['generalexpression588'/1]).
-export(['generalexpression589'/1]).
-export(['generalexpression590'/1]).
-export(['generalexpression591'/1]).
-export(['generalexpression592'/1]).
-export(['generalexpression593'/1]).
-export(['generalexpression594'/1]).
-export(['greaterthaneqonanyuri-1'/1]).
-export(['K-GenCompGTEQ-1'/1]).
-export(['K-GenCompGTEQ-2'/1]).
-export(['K-GenCompGTEQ-3'/1]).
-export(['K-GenCompGTEQ-4'/1]).
-export(['K-GenCompGTEQ-5'/1]).
-export(['K-GenCompGTEQ-6'/1]).
-export(['K-GenCompGTEQ-7'/1]).
-export(['K-GenCompGTEQ-8'/1]).
-export(['K-GenCompGTEQ-9'/1]).
-export(['K-GenCompGTEQ-10'/1]).

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
            'generalexpression496',
            'generalexpression497',
            'generalexpression498',
            'generalexpression499',
            'generalexpression500',
            'generalexpression501',
            'generalexpression502',
            'generalexpression503',
            'generalexpression504',
            'generalexpression505',
            'generalexpression506',
            'generalexpression507',
            'generalexpression508',
            'generalexpression509',
            'generalexpression510',
            'generalexpression511',
            'generalexpression512',
            'generalexpression513',
            'generalexpression514',
            'generalexpression515',
            'generalexpression516',
            'generalexpression517',
            'generalexpression518'
        ]},
        {group_1, [parallel], [
            'generalexpression519',
            'generalexpression520',
            'generalexpression521',
            'generalexpression522',
            'generalexpression523',
            'generalexpression524',
            'generalexpression525',
            'generalexpression526',
            'generalexpression527',
            'generalexpression528',
            'generalexpression529',
            'generalexpression530',
            'generalexpression531',
            'generalexpression532',
            'generalexpression533',
            'generalexpression534',
            'generalexpression535',
            'generalexpression536',
            'generalexpression537',
            'generalexpression538',
            'generalexpression539',
            'generalexpression540',
            'generalexpression541',
            'generalexpression542'
        ]},
        {group_2, [parallel], [
            'generalexpression543',
            'generalexpression544',
            'generalexpression545',
            'generalexpression546',
            'generalexpression547',
            'generalexpression548',
            'generalexpression549',
            'generalexpression550',
            'generalexpression551',
            'generalexpression552',
            'generalexpression553',
            'generalexpression554',
            'generalexpression555',
            'generalexpression556',
            'generalexpression557',
            'generalexpression558',
            'generalexpression559',
            'generalexpression560',
            'generalexpression561',
            'generalexpression562',
            'generalexpression563',
            'generalexpression564',
            'generalexpression565',
            'generalexpression566'
        ]},
        {group_3, [parallel], [
            'generalexpression567',
            'generalexpression568',
            'generalexpression569',
            'generalexpression570',
            'generalexpression571',
            'generalexpression572',
            'generalexpression573',
            'generalexpression574',
            'generalexpression575',
            'generalexpression576',
            'generalexpression577',
            'generalexpression578',
            'generalexpression579',
            'generalexpression580',
            'generalexpression581',
            'generalexpression582',
            'generalexpression583',
            'generalexpression584',
            'generalexpression585',
            'generalexpression586',
            'generalexpression587',
            'generalexpression588',
            'generalexpression589',
            'generalexpression590'
        ]},
        {group_4, [parallel], [
            'generalexpression591',
            'generalexpression592',
            'generalexpression593',
            'generalexpression594',
            'greaterthaneqonanyuri-1',
            'K-GenCompGTEQ-1',
            'K-GenCompGTEQ-2',
            'K-GenCompGTEQ-3',
            'K-GenCompGTEQ-4',
            'K-GenCompGTEQ-5',
            'K-GenCompGTEQ-6',
            'K-GenCompGTEQ-7',
            'K-GenCompGTEQ-8',
            'K-GenCompGTEQ-9',
            'K-GenCompGTEQ-10'
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

'generalexpression496'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "() >= ()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression496.xq"),
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

'generalexpression497'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "() >= 10000",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression497.xq"),
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

'generalexpression498'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "() >= (50000)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression498.xq"),
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

'generalexpression499'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "() >= (10000,50000)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression499.xq"),
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

'generalexpression500'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "() >= <a>10000</a>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression500.xq"),
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

'generalexpression501'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "() >= (<a>10000</a>)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression501.xq"),
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

'generalexpression502'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "() >= (<a>10000</a>,<b>50000</b>)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression502.xq"),
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

'generalexpression503'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "() >= (/works/employee[1]/hours[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression503.xq"),
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

'generalexpression504'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "() >= (/works/employee[1]/hours[1],/works/employee[6]/hours[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression504.xq"),
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

'generalexpression505'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "() >= ($works/works/employee[1]/hours[1],$staff/staff/employee[6]/grade[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-and-staff', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression505.xq"),
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

'generalexpression506'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "10000 >= ()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression506.xq"),
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

'generalexpression507'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "10000 >= (50000)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression507.xq"),
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

'generalexpression508'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "10000 >= (10000,50000)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression508.xq"),
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

'generalexpression509'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "10000 >= <a>10000</a>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression509.xq"),
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

'generalexpression510'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "10000 >= (<a>10000</a>)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression510.xq"),
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

'generalexpression511'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "10000 >= (<a>10000</a>,<b>50000</b>)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression511.xq"),
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

'generalexpression512'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "10000 >= (/works/employee[1]/hours[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression512.xq"),
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

'generalexpression513'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "10000 >= (/works/employee[1]/hours[1],/works/employee[6]/hours[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression513.xq"),
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

'generalexpression514'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "10000 >= ($works/works/employee[1]/hours[1],$staff/staff/employee[6]/grade[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-and-staff', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression514.xq"),
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

'generalexpression515'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(50000) >= ()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression515.xq"),
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

'generalexpression516'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(50000) >= 10000",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression516.xq"),
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

'generalexpression517'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(50000) >= (50000)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression517.xq"),
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

'generalexpression518'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(50000) >= (10000,50000)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression518.xq"),
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

'generalexpression519'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(50000) >= <a>10000</a>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression519.xq"),
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

'generalexpression520'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(50000) >= (<a>10000</a>)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression520.xq"),
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

'generalexpression521'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(50000) >= (<a>10000</a>,<b>50000</b>)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression521.xq"),
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

'generalexpression522'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(50000) >= (/works/employee[1]/hours[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression522.xq"),
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

'generalexpression523'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(50000) >= (/works/employee[1]/hours[1],/works/employee[6]/hours[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression523.xq"),
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

'generalexpression524'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(50000) >= ($works/works/employee[1]/hours[1],$staff/staff/employee[6]/grade[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-and-staff', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression524.xq"),
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

'generalexpression525'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(10000,50000) >= ()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression525.xq"),
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

'generalexpression526'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(10000,50000) >= 10000",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression526.xq"),
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

'generalexpression527'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(10000,50000) >= (50000)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression527.xq"),
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

'generalexpression528'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(10000,50000) >= (10000,50000)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression528.xq"),
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

'generalexpression529'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(10000,50000) >= <a>10000</a>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression529.xq"),
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

'generalexpression530'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(10000,50000) >= (<a>10000</a>)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression530.xq"),
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

'generalexpression531'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(10000,50000) >= (<a>10000</a>,<b>50000</b>)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression531.xq"),
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

'generalexpression532'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(10000,50000) >= (/works/employee[1]/hours[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression532.xq"),
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

'generalexpression533'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(10000,50000) >= (/works/employee[1]/hours[1],/works/employee[6]/hours[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression533.xq"),
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

'generalexpression534'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(10000,50000) >= ($works/works/employee[1]/hours[1],$staff/staff/employee[6]/grade[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-and-staff', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression534.xq"),
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

'generalexpression535'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<a>10000</a> >= ()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression535.xq"),
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

'generalexpression536'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<a>10000</a> >= 10000",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression536.xq"),
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

'generalexpression537'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<a>10000</a> >= (50000)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression537.xq"),
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

'generalexpression538'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<a>10000</a> >= (10000,50000)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression538.xq"),
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

'generalexpression539'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<a>10000</a> >= <a>10000</a>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression539.xq"),
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

'generalexpression540'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<a>10000</a> >= (<a>10000</a>)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression540.xq"),
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

'generalexpression541'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<a>10000</a> >= (<a>10000</a>,<b>50000</b>)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression541.xq"),
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

'generalexpression542'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<a>10000</a> >= (/works/employee[1]/hours[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression542.xq"),
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

'generalexpression543'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<a>10000</a> >= (/works/employee[1]/hours[1],/works/employee[6]/hours[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression543.xq"),
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

'generalexpression544'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<a>10000</a> >= ($works/works/employee[1]/hours[1],$staff/staff/employee[6]/grade[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-and-staff', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression544.xq"),
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

'generalexpression545'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(<a>10000</a>) >= ()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression545.xq"),
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

'generalexpression546'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(<a>10000</a>) >= 10000",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression546.xq"),
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

'generalexpression547'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(<a>10000</a>) >= (50000)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression547.xq"),
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

'generalexpression548'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(<a>10000</a>) >= (10000,50000)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression548.xq"),
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

'generalexpression549'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(<a>10000</a>) >= <a>10000</a>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression549.xq"),
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

'generalexpression550'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(<a>10000</a>) >= (<a>10000</a>)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression550.xq"),
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

'generalexpression551'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(<a>10000</a>) >= (<a>10000</a>,<b>50000</b>)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression551.xq"),
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

'generalexpression552'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(<a>10000</a>) >= (/works/employee[1]/hours[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression552.xq"),
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

'generalexpression553'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(<a>10000</a>) >= (/works/employee[1]/hours[1],/works/employee[6]/hours[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression553.xq"),
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

'generalexpression554'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(<a>10000</a>) >= ($works/works/employee[1]/hours[1],$staff/staff/employee[6]/grade[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-and-staff', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression554.xq"),
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

'generalexpression555'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(<a>10000</a>,<b>50000</b>) >= ()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression555.xq"),
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

'generalexpression556'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(<a>10000</a>,<b>50000</b>) >= 10000",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression556.xq"),
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

'generalexpression557'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(<a>10000</a>,<b>50000</b>) >= (50000)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression557.xq"),
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

'generalexpression558'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(<a>10000</a>,<b>50000</b>) >= (10000,50000)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression558.xq"),
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

'generalexpression559'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(<a>10000</a>,<b>50000</b>) >= <a>10000</a>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression559.xq"),
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

'generalexpression560'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(<a>10000</a>,<b>50000</b>) >= (<a>10000</a>)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression560.xq"),
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

'generalexpression561'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(<a>10000</a>,<b>50000</b>) >= (<a>10000</a>,<b>50000</b>)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression561.xq"),
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

'generalexpression562'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(<a>10000</a>,<b>50000</b>) >= (/works/employee[1]/hours[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression562.xq"),
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

'generalexpression563'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(<a>10000</a>,<b>50000</b>) >= (/works/employee[1]/hours[1],/works/employee[6]/hours[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression563.xq"),
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

'generalexpression564'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(<a>10000</a>,<b>50000</b>) >= ($works/works/employee[1]/hours[1],$staff/staff/employee[6]/grade[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-and-staff', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression564.xq"),
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

'generalexpression565'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(/works/employee[1]/hours[1]) >= ()",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression565.xq"),
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

'generalexpression566'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(/works/employee[1]/hours[1]) >= 10000",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression566.xq"),
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

'generalexpression567'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(/works/employee[1]/hours[1]) >= (50000)",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression567.xq"),
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

'generalexpression568'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(/works/employee[1]/hours[1]) >= (10000,50000)",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression568.xq"),
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

'generalexpression569'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(/works/employee[1]/hours[1]) >= <a>10000</a>",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression569.xq"),
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

'generalexpression570'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(/works/employee[1]/hours[1]) >= (<a>10000</a>)",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression570.xq"),
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

'generalexpression571'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(/works/employee[1]/hours[1]) >= (<a>10000</a>,<b>50000</b>)",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression571.xq"),
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

'generalexpression572'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(/works/employee[1]/hours[1]) >= (/works/employee[1]/hours[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression572.xq"),
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

'generalexpression573'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(/works/employee[1]/hours[1]) >= (/works/employee[1]/hours[1],/works/employee[6]/hours[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression573.xq"),
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

'generalexpression574'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "($works/works/employee[1]/hours[1]) >= ($works/works/employee[1]/hours[1],$staff/staff/employee[6]/grade[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-and-staff', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression574.xq"),
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

'generalexpression575'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(/works/employee[1]/hours[1],/works/employee[6]/hours[1]) >= ()",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression575.xq"),
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

'generalexpression576'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(/works/employee[1]/hours[1],/works/employee[6]/hours[1]) >= 10000",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression576.xq"),
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

'generalexpression577'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(/works/employee[1]/hours[1],/works/employee[6]/hours[1]) >= (50000)",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression577.xq"),
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

'generalexpression578'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(/works/employee[1]/hours[1],/works/employee[6]/hours[1]) >= (10000,50000)",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression578.xq"),
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

'generalexpression579'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(/works/employee[1]/hours[1],/works/employee[6]/hours[1]) >= <a>10000</a>",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression579.xq"),
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

'generalexpression580'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(/works/employee[1]/hours[1],/works/employee[6]/hours[1]) >= (<a>10000</a>)",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression580.xq"),
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

'generalexpression581'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(/works/employee[1]/hours[1],/works/employee[6]/hours[1]) >= (<a>10000</a>,<b>50000</b>)",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression581.xq"),
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

'generalexpression582'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(/works/employee[1]/hours[1],/works/employee[6]/hours[1]) >= (/works/employee[1]/hours[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression582.xq"),
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

'generalexpression583'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(/works/employee[1]/hours[1],/works/employee[6]/hours[1]) >= (/works/employee[1]/hours[1],/works/employee[6]/hours[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('works', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression583.xq"),
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

'generalexpression584'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "($works/works/employee[1]/hours[1],$works/works/employee[6]/hours[1]) >= ($works/works/employee[1]/hours[1],$staff/staff/employee[6]/grade[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-and-staff', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression584.xq"),
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

'generalexpression585'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "($works/works/employee[1]/hours[1],$staff/staff/employee[6]/hours[1]) >= ()",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-and-staff', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression585.xq"),
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

'generalexpression586'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "($works/works/employee[1]/hours[1],$staff/staff/employee[6]/hours[1]) >= 10000",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-and-staff', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression586.xq"),
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

'generalexpression587'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "($works/works/employee[1]/hours[1],$staff/staff/employee[6]/hours[1]) >= (50000)",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-and-staff', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression587.xq"),
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

'generalexpression588'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "($works/works/employee[1]/hours[1],$staff/staff/employee[6]/hours[1]) >= (10000,50000)",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-and-staff', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression588.xq"),
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

'generalexpression589'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "($works/works/employee[1]/hours[1],$staff/staff/employee[6]/hours[1]) >= <a>10000</a>",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-and-staff', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression589.xq"),
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

'generalexpression590'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "($works/works/employee[1]/hours[1],$staff/staff/employee[6]/hours[1]) >= (<a>10000</a>)",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-and-staff', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression590.xq"),
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

'generalexpression591'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "($works/works/employee[1]/hours[1],$staff/staff/employee[6]/hours[1]) >= (<a>10000</a>,<b>50000</b>)",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-and-staff', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression591.xq"),
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

'generalexpression592'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "($works/works/employee[1]/hours[1],$staff/staff/employee[6]/hours[1]) >= ($works/works/employee[1]/hours[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-and-staff', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression592.xq"),
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

'generalexpression593'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "($works/works/employee[1]/hours[1],$staff/staff/employee[6]/hours[1]) >= ($works/works/employee[1]/hours[1],$works/works/employee[6]/hours[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-and-staff', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression593.xq"),
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

'generalexpression594'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "($works/works/employee[1]/hours[1],$staff/staff/employee[6]/hours[1]) >= ($works/works/employee[1]/hours[1],$staff/staff/employee[6]/grade[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-and-staff', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "generalexpression594.xq"),
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

'greaterthaneqonanyuri-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(xs:anyURI(\"http://www.example/com\")) >= (xs:anyURI(\"http://www.example/com\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "greaterthaneqonanyuri-1.xq"),
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

'K-GenCompGTEQ-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "not(() >= () )",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-GenCompGTEQ-1.xq"), Qry1),
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

'K-GenCompGTEQ-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "not(1 >= () )",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-GenCompGTEQ-2.xq"), Qry1),
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

'K-GenCompGTEQ-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "not(() >= 1 )",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-GenCompGTEQ-3.xq"), Qry1),
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

'K-GenCompGTEQ-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "1 =>; 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-GenCompGTEQ-4.xq"), Qry1),
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

'K-GenCompGTEQ-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "count((0, timezone-from-time(current-time()))) >= 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-GenCompGTEQ-5.xq"), Qry1),
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

'K-GenCompGTEQ-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"false\") >= false()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-GenCompGTEQ-6.xq"), Qry1),
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

'K-GenCompGTEQ-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "true() >= xs:untypedAtomic(\"false\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-GenCompGTEQ-7.xq"), Qry1),
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

'K-GenCompGTEQ-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "false() >= xs:untypedAtomic(\"false\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-GenCompGTEQ-8.xq"), Qry1),
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

'K-GenCompGTEQ-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"false\") >= false()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-GenCompGTEQ-9.xq"), Qry1),
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

'K-GenCompGTEQ-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "1 <= count((1, 2, 3, timezone-from-time(current-time()), 4))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-GenCompGTEQ-10.xq"), Qry1),
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
