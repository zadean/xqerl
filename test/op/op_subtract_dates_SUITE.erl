-module('op_subtract_dates_SUITE').

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

-export(['op-subtract-dates-yielding-DTD-1'/1]).
-export(['op-subtract-dates-yielding-DTD-2'/1]).
-export(['op-subtract-dates-yielding-DTD-3'/1]).
-export(['op-subtract-dates-yielding-DTD-4'/1]).
-export(['op-subtract-dates-yielding-DTD-5'/1]).
-export(['op-subtract-dates-yielding-DTD-6'/1]).
-export(['op-subtract-dates-yielding-DTD-7'/1]).
-export(['op-subtract-dates-yielding-DTD-8'/1]).
-export(['op-subtract-dates-yielding-DTD-9'/1]).
-export(['op-subtract-dates-yielding-DTD-10'/1]).
-export(['op-subtract-dates-yielding-DTD-11'/1]).
-export(['op-subtract-dates-yielding-DTD-12'/1]).
-export(['op-subtract-dates-yielding-DTD-13'/1]).
-export(['op-subtract-dates-yielding-DTD-14'/1]).
-export(['op-subtract-dates-yielding-DTD-15'/1]).
-export(['op-subtract-dates-yielding-DTD-16'/1]).
-export(['op-subtract-dates-yielding-DTD-17'/1]).
-export(['op-subtract-dates-yielding-DTD-18'/1]).
-export(['op-subtract-dates-yielding-DTD-19'/1]).
-export(['op-subtract-dates-yielding-DTD-20'/1]).
-export(['K-DatesSubtract-1'/1]).
-export(['K-DatesSubtract-2'/1]).
-export(['K-DatesSubtract-3'/1]).
-export(['K-DatesSubtract-4'/1]).
-export(['K-DatesSubtract-5'/1]).
-export(['K-DatesSubtract-6'/1]).
-export(['cbcl-subtract-dates-001'/1]).
-export(['cbcl-subtract-dates-002'/1]).
-export(['cbcl-subtract-dates-003'/1]).
-export(['cbcl-subtract-dates-004'/1]).

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
        {group, group_1}
    ].

groups() ->
    [
        {group_0, [parallel], [
            'op-subtract-dates-yielding-DTD-1',
            'op-subtract-dates-yielding-DTD-2',
            'op-subtract-dates-yielding-DTD-3',
            'op-subtract-dates-yielding-DTD-4',
            'op-subtract-dates-yielding-DTD-5',
            'op-subtract-dates-yielding-DTD-6',
            'op-subtract-dates-yielding-DTD-7',
            'op-subtract-dates-yielding-DTD-8',
            'op-subtract-dates-yielding-DTD-9',
            'op-subtract-dates-yielding-DTD-10',
            'op-subtract-dates-yielding-DTD-11',
            'op-subtract-dates-yielding-DTD-12',
            'op-subtract-dates-yielding-DTD-13',
            'op-subtract-dates-yielding-DTD-14',
            'op-subtract-dates-yielding-DTD-15',
            'op-subtract-dates-yielding-DTD-16',
            'op-subtract-dates-yielding-DTD-17',
            'op-subtract-dates-yielding-DTD-18',
            'op-subtract-dates-yielding-DTD-19',
            'op-subtract-dates-yielding-DTD-20',
            'K-DatesSubtract-1',
            'K-DatesSubtract-2',
            'K-DatesSubtract-3'
        ]},
        {group_1, [parallel], [
            'K-DatesSubtract-4',
            'K-DatesSubtract-5',
            'K-DatesSubtract-6',
            'cbcl-subtract-dates-001',
            'cbcl-subtract-dates-002',
            'cbcl-subtract-dates-003',
            'cbcl-subtract-dates-004'
        ]}
    ].

'op-subtract-dates-yielding-DTD-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:date(\"2000-10-30\") - xs:date(\"1999-11-28\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-subtract-dates-yielding-DTD-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "P337D") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-subtract-dates-yielding-DTD-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:date(\"2000-10-30+05:00\") - xs:date(\"1999-11-28Z\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-subtract-dates-yielding-DTD-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "P336DT19H") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-subtract-dates-yielding-DTD-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:date(\"2000-10-15-05:00\") - xs:date(\"2000-10-10+02:00\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-subtract-dates-yielding-DTD-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "P5DT7H") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-subtract-dates-yielding-DTD-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:not(fn:string(xs:date(\"1998-09-12Z\") - xs:date(\"1998-09-21Z\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-subtract-dates-yielding-DTD-4.xq"),
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

'op-subtract-dates-yielding-DTD-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:boolean(fn:string(xs:date(\"1962-03-12Z\") - xs:date(\"1962-03-12Z\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-subtract-dates-yielding-DTD-5.xq"),
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

'op-subtract-dates-yielding-DTD-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:number(xs:date(\"1988-01-28Z\") - xs:date(\"2001-03-02\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-subtract-dates-yielding-DTD-6.xq"),
                Qry1
            ),
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

'op-subtract-dates-yielding-DTD-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:string(xs:date(\"1989-07-05Z\") - xs:date(\"1962-09-04Z\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-subtract-dates-yielding-DTD-7.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "P9801D") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-subtract-dates-yielding-DTD-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:date(\"0001-01-01Z\") - xs:date(\"2005-07-06Z\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-subtract-dates-yielding-DTD-8.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-P732132D") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-subtract-dates-yielding-DTD-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:string((xs:date(\"1993-12-09Z\") - xs:date(\"1992-10-02Z\"))) and fn:string((xs:date(\"1993-12-09Z\") - xs:date(\"1980-10-20Z\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-subtract-dates-yielding-DTD-9.xq"),
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

'op-subtract-dates-yielding-DTD-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:string((xs:date(\"1985-07-05Z\") - xs:date(\"1977-12-02Z\"))) or fn:string((xs:date(\"1985-07-05Z\") - xs:date(\"1960-11-07Z\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-subtract-dates-yielding-DTD-10.xq"),
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

'op-subtract-dates-yielding-DTD-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(xs:date(\"1978-12-12Z\") - xs:date(\"1978-12-12Z\")) div xs:dayTimeDuration(\"P17DT10H02M\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-subtract-dates-yielding-DTD-11.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "0") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-subtract-dates-yielding-DTD-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:string((xs:date(\"1980-03-02Z\") - xs:date(\"2001-09-11Z\"))) and (fn:true())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-subtract-dates-yielding-DTD-12.xq"),
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

'op-subtract-dates-yielding-DTD-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:string((xs:date(\"1980-05-05Z\") - xs:date(\"1981-12-03Z\"))) eq xs:string(xs:dayTimeDuration(\"P17DT10H02M\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-subtract-dates-yielding-DTD-13.xq"),
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

'op-subtract-dates-yielding-DTD-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:string((xs:date(\"1979-12-12Z\") - xs:date(\"1979-11-11Z\"))) ne xs:string(xs:dayTimeDuration(\"P17DT10H02M\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-subtract-dates-yielding-DTD-14.xq"),
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

'op-subtract-dates-yielding-DTD-15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:string((xs:date(\"1978-12-12Z\") - xs:date(\"1977-03-12Z\"))) le xs:string(xs:dayTimeDuration(\"P17DT10H02M\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-subtract-dates-yielding-DTD-15.xq"),
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

'op-subtract-dates-yielding-DTD-16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:string((xs:date(\"1977-12-12Z\") - xs:date(\"1976-12-12Z\"))) ge xs:string(xs:dayTimeDuration(\"P17DT10H02M\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-subtract-dates-yielding-DTD-16.xq"),
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

'op-subtract-dates-yielding-DTD-17'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:string(xs:date(\"2000-12-12Z\") - xs:date(\"2000-11-11Z\")) and fn:false()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-subtract-dates-yielding-DTD-17.xq"),
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

'op-subtract-dates-yielding-DTD-18'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:string((xs:date(\"1999-10-23Z\") - xs:date(\"1998-09-09Z\"))) or fn:false()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-subtract-dates-yielding-DTD-18.xq"),
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

'op-subtract-dates-yielding-DTD-19'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(xs:date(\"1999-10-23Z\") - xs:date(\"1998-09-09Z\")) * xs:decimal(2.0)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-subtract-dates-yielding-DTD-19.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "P818D") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-subtract-dates-yielding-DTD-20'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(xs:date(\"1999-10-23Z\") - xs:date(\"1998-09-09Z\")) + xs:dayTimeDuration(\"P17DT10H02M\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-subtract-dates-yielding-DTD-20.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "P426DT10H2M") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-DatesSubtract-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:date(\"1999-07-19\") - xs:date(\"1969-11-30\") eq xs:dayTimeDuration(\"P10823D\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DatesSubtract-1.xq"), Qry1),
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

'K-DatesSubtract-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:date(\"1999-07-19\") - xs:date(\"1999-07-19\") eq xs:dayTimeDuration(\"PT0S\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DatesSubtract-2.xq"), Qry1),
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

'K-DatesSubtract-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:date(\"1999-10-12\") + xs:date(\"1999-10-12\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DatesSubtract-3.xq"), Qry1),
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

'K-DatesSubtract-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:date(\"1999-10-12\") div xs:date(\"1999-10-12\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DatesSubtract-4.xq"), Qry1),
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

'K-DatesSubtract-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:date(\"1999-10-12\") * xs:date(\"1999-10-12\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DatesSubtract-5.xq"), Qry1),
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

'K-DatesSubtract-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:date(\"1999-10-12\") mod xs:date(\"1999-10-12\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DatesSubtract-6.xq"), Qry1),
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

'cbcl-subtract-dates-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:date(\"-25252734927766554-12-31\") - xs:date(\"25252734927766554-12-31\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-subtract-dates-001.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FODT0001") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FODT0001 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-subtract-dates-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:date(\"-25252734927766554-12-31\") - xs:date(\"25252734927766554-12-31+01:00\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-subtract-dates-002.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FODT0001") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FODT0001 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-subtract-dates-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:date(\"2008-12-31\") - xs:date(\"2002-12-31+01:00\") + implicit-timezone()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-subtract-dates-003.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "P2192DT1H") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-subtract-dates-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:date(\"2002-12-31+01:00\") - xs:date(\"2008-12-31\") - implicit-timezone()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-subtract-dates-004.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-P2192DT1H") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.
