-module('op_add_yearMonthDurations_SUITE').

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

-export(['op-add-yearMonthDurations2args-1'/1]).
-export(['op-add-yearMonthDurations2args-2'/1]).
-export(['op-add-yearMonthDurations2args-3'/1]).
-export(['op-add-yearMonthDurations2args-4'/1]).
-export(['op-add-yearMonthDurations2args-5'/1]).
-export(['op-add-yearMonthDurations-1'/1]).
-export(['op-add-yearMonthDurations-2'/1]).
-export(['op-add-yearMonthDurations-3'/1]).
-export(['op-add-yearMonthDurations-4'/1]).
-export(['op-add-yearMonthDurations-5'/1]).
-export(['op-add-yearMonthDurations-6'/1]).
-export(['op-add-yearMonthDurations-7'/1]).
-export(['op-add-yearMonthDurations-8'/1]).
-export(['op-add-yearMonthDurations-9'/1]).
-export(['op-add-yearMonthDurations-10'/1]).
-export(['op-add-yearMonthDurations-11'/1]).
-export(['op-add-yearMonthDurations-12'/1]).
-export(['op-add-yearMonthDurations-13'/1]).
-export(['op-add-yearMonthDurations-14'/1]).
-export(['op-add-yearMonthDurations-15'/1]).
-export(['op-add-yearMonthDurations-16'/1]).
-export(['K-YearMonthDurationAdd-1'/1]).
-export(['K-YearMonthDurationAdd-2'/1]).
-export(['K-YearMonthDurationAdd-3'/1]).
-export(['cbcl-add-yearMonthDurations-001'/1]).
-export(['cbcl-add-yearMonthDurations-002'/1]).
-export(['cbcl-add-yearMonthDurations-003'/1]).

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
            'op-add-yearMonthDurations2args-1',
            'op-add-yearMonthDurations2args-2',
            'op-add-yearMonthDurations2args-3',
            'op-add-yearMonthDurations2args-4',
            'op-add-yearMonthDurations2args-5',
            'op-add-yearMonthDurations-1',
            'op-add-yearMonthDurations-2',
            'op-add-yearMonthDurations-3',
            'op-add-yearMonthDurations-4',
            'op-add-yearMonthDurations-5',
            'op-add-yearMonthDurations-6',
            'op-add-yearMonthDurations-7',
            'op-add-yearMonthDurations-8',
            'op-add-yearMonthDurations-9',
            'op-add-yearMonthDurations-10',
            'op-add-yearMonthDurations-11',
            'op-add-yearMonthDurations-12',
            'op-add-yearMonthDurations-13',
            'op-add-yearMonthDurations-14',
            'op-add-yearMonthDurations-15',
            'op-add-yearMonthDurations-16',
            'K-YearMonthDurationAdd-1',
            'K-YearMonthDurationAdd-2'
        ]},
        {group_1, [parallel], [
            'K-YearMonthDurationAdd-3',
            'cbcl-add-yearMonthDurations-001',
            'cbcl-add-yearMonthDurations-002',
            'cbcl-add-yearMonthDurations-003'
        ]}
    ].

'op-add-yearMonthDurations2args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:yearMonthDuration(\"P0Y0M\") + xs:yearMonthDuration(\"P0Y0M\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-add-yearMonthDurations2args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "P0M") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-add-yearMonthDurations2args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:yearMonthDuration(\"P1000Y6M\") + xs:yearMonthDuration(\"P0Y0M\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-add-yearMonthDurations2args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "P1000Y6M") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-add-yearMonthDurations2args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:yearMonthDuration(\"P2030Y12M\") + xs:yearMonthDuration(\"P0Y0M\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-add-yearMonthDurations2args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "P2031Y") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-add-yearMonthDurations2args-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:yearMonthDuration(\"P0Y0M\") + xs:yearMonthDuration(\"P1000Y6M\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-add-yearMonthDurations2args-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "P1000Y6M") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-add-yearMonthDurations2args-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:yearMonthDuration(\"P0Y0M\") + xs:yearMonthDuration(\"P2030Y12M\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-add-yearMonthDurations2args-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "P2031Y") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-add-yearMonthDurations-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:yearMonthDuration(\"P2Y11M\") + xs:yearMonthDuration(\"P3Y3M\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-add-yearMonthDurations-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "P6Y2M") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-add-yearMonthDurations-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:string(xs:yearMonthDuration(\"P10Y11M\") + xs:yearMonthDuration(\"P12Y07M\")) and fn:false()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-add-yearMonthDurations-2.xq"),
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

'op-add-yearMonthDurations-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:string(xs:yearMonthDuration(\"P20Y10M\") + xs:yearMonthDuration(\"P19Y10M\")) or fn:false()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-add-yearMonthDurations-3.xq"),
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

'op-add-yearMonthDurations-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:not(fn:string(xs:yearMonthDuration(\"P11Y04M\") + xs:yearMonthDuration(\"P02Y11M\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-add-yearMonthDurations-4.xq"),
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

'op-add-yearMonthDurations-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:boolean(fn:string(xs:yearMonthDuration(\"P05Y08M\") + xs:yearMonthDuration(\"P03Y06M\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-add-yearMonthDurations-5.xq"),
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

'op-add-yearMonthDurations-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:number(xs:yearMonthDuration(\"P02Y09M\") + xs:yearMonthDuration(\"P10Y01M\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-add-yearMonthDurations-6.xq"),
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

'op-add-yearMonthDurations-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:string(xs:yearMonthDuration(\"P03Y08M\") + xs:yearMonthDuration(\"P01Y02M\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-add-yearMonthDurations-7.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "P4Y10M") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-add-yearMonthDurations-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(xs:yearMonthDuration(\"P10Y01M\") + xs:yearMonthDuration(\"-P11Y02M\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-add-yearMonthDurations-8.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-P1Y1M") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-add-yearMonthDurations-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:string((xs:yearMonthDuration(\"P01Y01M\") + xs:yearMonthDuration(\"P02Y02M\"))) and fn:string((xs:yearMonthDuration(\"P02Y03M\") + xs:yearMonthDuration(\"P04Y04M\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-add-yearMonthDurations-9.xq"),
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

'op-add-yearMonthDurations-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:string((xs:yearMonthDuration(\"P05Y02M\") + xs:yearMonthDuration(\"P03Y04M\"))) or fn:string((xs:yearMonthDuration(\"P05Y03M\") + xs:yearMonthDuration(\"P01Y03M\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-add-yearMonthDurations-10.xq"),
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

'op-add-yearMonthDurations-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(xs:yearMonthDuration(\"P42Y10M\") + xs:yearMonthDuration(\"P28Y10M\")) div (xs:yearMonthDuration(\"P10Y10M\") + xs:yearMonthDuration(\"P60Y10M\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-add-yearMonthDurations-11.xq"),
                Qry1
            ),
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

'op-add-yearMonthDurations-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:string((xs:yearMonthDuration(\"P10Y11M\") + xs:yearMonthDuration(\"P05Y07M\"))) and (fn:true())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-add-yearMonthDurations-12.xq"),
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

'op-add-yearMonthDurations-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(xs:yearMonthDuration(\"P23Y11M\") + xs:yearMonthDuration(\"P23Y11M\")) eq xs:yearMonthDuration(\"P23Y11M\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-add-yearMonthDurations-13.xq"),
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

'op-add-yearMonthDurations-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(xs:yearMonthDuration(\"P21Y12M\") + xs:yearMonthDuration(\"P08Y05M\")) ne xs:yearMonthDuration(\"P08Y05M\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-add-yearMonthDurations-14.xq"),
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

'op-add-yearMonthDurations-15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(xs:yearMonthDuration(\"P10Y01M\") + xs:yearMonthDuration(\"P17Y02M\")) le xs:yearMonthDuration(\"P17Y02M\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-add-yearMonthDurations-15.xq"),
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

'op-add-yearMonthDurations-16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(xs:yearMonthDuration(\"P13Y09M\") + xs:yearMonthDuration(\"P18Y02M\")) ge xs:yearMonthDuration(\"P18Y02M\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-add-yearMonthDurations-16.xq"),
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

'K-YearMonthDurationAdd-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "xs:yearMonthDuration(\"P3Y3M\") + xs:yearMonthDuration(\"P0M\") eq xs:yearMonthDuration(\"P3Y3M\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-YearMonthDurationAdd-1.xq"),
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

'K-YearMonthDurationAdd-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "xs:yearMonthDuration(\"P0M\") + xs:yearMonthDuration(\"P3Y3M\") eq xs:yearMonthDuration(\"P3Y3M\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-YearMonthDurationAdd-2.xq"),
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

'K-YearMonthDurationAdd-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "xs:yearMonthDuration(\"P32Y43M\") + xs:yearMonthDuration(\"P12Y13M\") eq xs:yearMonthDuration(\"P48Y8M\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-YearMonthDurationAdd-3.xq"),
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

'cbcl-add-yearMonthDurations-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare function local:yearMonthDuration($years as xs:integer, $months as xs:integer ) { xs:yearMonthDuration(concat('P', $years, 'Y', $months, 'M')) };\n"
        "        local:yearMonthDuration(1, 1) + xs:yearMonthDuration(\"P0Y\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-add-yearMonthDurations-001.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "P1Y1M") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-add-yearMonthDurations-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare function local:yearMonthDuration($years as xs:integer, $months as xs:integer ) { xs:yearMonthDuration(concat('P', $years, 'Y', $months, 'M')) };\n"
        "        xs:yearMonthDuration(\"P0Y\") + local:yearMonthDuration(1, 1)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-add-yearMonthDurations-002.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "P1Y1M") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-add-yearMonthDurations-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare function local:yearMonthDuration($years as xs:integer, $months as xs:integer ) { xs:yearMonthDuration(concat('P', $years, 'Y', $months, 'M')) };\n"
        "        local:yearMonthDuration(1, 1) + local:yearMonthDuration(1, 1)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-add-yearMonthDurations-003.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "P2Y2M") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.
