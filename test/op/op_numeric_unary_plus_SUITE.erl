-module('op_numeric_unary_plus_SUITE').

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

-export(['op-numeric-unary-plusint1args-1'/1]).
-export(['op-numeric-unary-plusint1args-2'/1]).
-export(['op-numeric-unary-plusint1args-3'/1]).
-export(['op-numeric-unary-plusintg1args-1'/1]).
-export(['op-numeric-unary-plusintg1args-2'/1]).
-export(['op-numeric-unary-plusintg1args-3'/1]).
-export(['op-numeric-unary-plusdec1args-1'/1]).
-export(['op-numeric-unary-plusdec1args-2'/1]).
-export(['op-numeric-unary-plusdec1args-3'/1]).
-export(['op-numeric-unary-plusdbl1args-1'/1]).
-export(['op-numeric-unary-plusdbl1args-2'/1]).
-export(['op-numeric-unary-plusdbl1args-3'/1]).
-export(['op-numeric-unary-plusflt1args-1'/1]).
-export(['op-numeric-unary-plusflt1args-2'/1]).
-export(['op-numeric-unary-plusflt1args-3'/1]).
-export(['op-numeric-unary-pluslng1args-1'/1]).
-export(['op-numeric-unary-pluslng1args-2'/1]).
-export(['op-numeric-unary-pluslng1args-3'/1]).
-export(['op-numeric-unary-plususht1args-1'/1]).
-export(['op-numeric-unary-plususht1args-2'/1]).
-export(['op-numeric-unary-plususht1args-3'/1]).
-export(['op-numeric-unary-plusnint1args-1'/1]).
-export(['op-numeric-unary-plusnint1args-2'/1]).
-export(['op-numeric-unary-plusnint1args-3'/1]).
-export(['op-numeric-unary-pluspint1args-1'/1]).
-export(['op-numeric-unary-pluspint1args-2'/1]).
-export(['op-numeric-unary-pluspint1args-3'/1]).
-export(['op-numeric-unary-plusulng1args-1'/1]).
-export(['op-numeric-unary-plusulng1args-2'/1]).
-export(['op-numeric-unary-plusulng1args-3'/1]).
-export(['op-numeric-unary-plusnpi1args-1'/1]).
-export(['op-numeric-unary-plusnpi1args-2'/1]).
-export(['op-numeric-unary-plusnpi1args-3'/1]).
-export(['op-numeric-unary-plusnni1args-1'/1]).
-export(['op-numeric-unary-plusnni1args-2'/1]).
-export(['op-numeric-unary-plusnni1args-3'/1]).
-export(['op-numeric-unary-plussht1args-1'/1]).
-export(['op-numeric-unary-plussht1args-2'/1]).
-export(['op-numeric-unary-plussht1args-3'/1]).
-export(['K-NumericUnaryPlus-1'/1]).
-export(['K-NumericUnaryPlus-2'/1]).
-export(['K-NumericUnaryPlus-3'/1]).
-export(['K-NumericUnaryPlus-4'/1]).
-export(['K-NumericUnaryPlus-5'/1]).
-export(['K-NumericUnaryPlus-6'/1]).
-export(['K-NumericUnaryPlus-7'/1]).
-export(['K-NumericUnaryPlus-8'/1]).
-export(['K-NumericUnaryPlus-9'/1]).
-export(['K-NumericUnaryPlus-10'/1]).
-export(['K-NumericUnaryPlus-11'/1]).
-export(['K-NumericUnaryPlus-12'/1]).
-export(['K2-NumericUnaryPlus-1'/1]).
-export(['K2-NumericUnaryPlus-2'/1]).
-export(['op-numeric-unary-plus-1'/1]).
-export(['cbcl-numeric-unary-plus-001'/1]).

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
        {group, group_2}
    ].

groups() ->
    [
        {group_0, [parallel], [
            'op-numeric-unary-plusint1args-1',
            'op-numeric-unary-plusint1args-2',
            'op-numeric-unary-plusint1args-3',
            'op-numeric-unary-plusintg1args-1',
            'op-numeric-unary-plusintg1args-2',
            'op-numeric-unary-plusintg1args-3',
            'op-numeric-unary-plusdec1args-1',
            'op-numeric-unary-plusdec1args-2',
            'op-numeric-unary-plusdec1args-3',
            'op-numeric-unary-plusdbl1args-1',
            'op-numeric-unary-plusdbl1args-2',
            'op-numeric-unary-plusdbl1args-3',
            'op-numeric-unary-plusflt1args-1',
            'op-numeric-unary-plusflt1args-2',
            'op-numeric-unary-plusflt1args-3',
            'op-numeric-unary-pluslng1args-1',
            'op-numeric-unary-pluslng1args-2',
            'op-numeric-unary-pluslng1args-3',
            'op-numeric-unary-plususht1args-1',
            'op-numeric-unary-plususht1args-2',
            'op-numeric-unary-plususht1args-3',
            'op-numeric-unary-plusnint1args-1',
            'op-numeric-unary-plusnint1args-2'
        ]},
        {group_1, [parallel], [
            'op-numeric-unary-plusnint1args-3',
            'op-numeric-unary-pluspint1args-1',
            'op-numeric-unary-pluspint1args-2',
            'op-numeric-unary-pluspint1args-3',
            'op-numeric-unary-plusulng1args-1',
            'op-numeric-unary-plusulng1args-2',
            'op-numeric-unary-plusulng1args-3',
            'op-numeric-unary-plusnpi1args-1',
            'op-numeric-unary-plusnpi1args-2',
            'op-numeric-unary-plusnpi1args-3',
            'op-numeric-unary-plusnni1args-1',
            'op-numeric-unary-plusnni1args-2',
            'op-numeric-unary-plusnni1args-3',
            'op-numeric-unary-plussht1args-1',
            'op-numeric-unary-plussht1args-2',
            'op-numeric-unary-plussht1args-3',
            'K-NumericUnaryPlus-1',
            'K-NumericUnaryPlus-2',
            'K-NumericUnaryPlus-3',
            'K-NumericUnaryPlus-4',
            'K-NumericUnaryPlus-5',
            'K-NumericUnaryPlus-6',
            'K-NumericUnaryPlus-7',
            'K-NumericUnaryPlus-8'
        ]},
        {group_2, [parallel], [
            'K-NumericUnaryPlus-9',
            'K-NumericUnaryPlus-10',
            'K-NumericUnaryPlus-11',
            'K-NumericUnaryPlus-12',
            'K2-NumericUnaryPlus-1',
            'K2-NumericUnaryPlus-2',
            'op-numeric-unary-plus-1',
            'cbcl-numeric-unary-plus-001'
        ]}
    ].

'op-numeric-unary-plusint1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "+(xs:int(\"-2147483648\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-unary-plusint1args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "-2147483648") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-numeric-unary-plusint1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "+(xs:int(\"-1873914410\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-unary-plusint1args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "-1873914410") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-numeric-unary-plusint1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "+(xs:int(\"2147483647\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-unary-plusint1args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "2147483647") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-numeric-unary-plusintg1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "+(xs:integer(\"-999999999999999999\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-unary-plusintg1args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "-999999999999999999") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-numeric-unary-plusintg1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "+(xs:integer(\"830993497117024304\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-unary-plusintg1args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "830993497117024304") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-numeric-unary-plusintg1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "+(xs:integer(\"999999999999999999\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-unary-plusintg1args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "999999999999999999") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-numeric-unary-plusdec1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "+(xs:decimal(\"-999999999999999999\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-unary-plusdec1args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "-999999999999999999") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-numeric-unary-plusdec1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "+(xs:decimal(\"617375191608514839\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-unary-plusdec1args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "617375191608514839") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-numeric-unary-plusdec1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "+(xs:decimal(\"999999999999999999\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-unary-plusdec1args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "999999999999999999") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-numeric-unary-plusdbl1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "+(xs:double(\"-1.7976931348623157E308\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-unary-plusdbl1args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "-1.7976931348623157E308") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-numeric-unary-plusdbl1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "+(xs:double(\"0\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-unary-plusdbl1args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
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

'op-numeric-unary-plusdbl1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "+(xs:double(\"1.7976931348623157E308\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-unary-plusdbl1args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1.7976931348623157E308") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-numeric-unary-plusflt1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "+(xs:float(\"-3.4028235E38\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-unary-plusflt1args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:float(-3.4028235E38)") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-numeric-unary-plusflt1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "+(xs:float(\"0\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-unary-plusflt1args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
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

'op-numeric-unary-plusflt1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "+(xs:float(\"3.4028235E38\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-unary-plusflt1args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:float(3.4028235E38)") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-numeric-unary-pluslng1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "+(xs:long(\"-92233720368547758\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-unary-pluslng1args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "-92233720368547758") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-numeric-unary-pluslng1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "+(xs:long(\"-47175562203048468\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-unary-pluslng1args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "-47175562203048468") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-numeric-unary-pluslng1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "+(xs:long(\"92233720368547758\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-unary-pluslng1args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "92233720368547758") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-numeric-unary-plususht1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "+(xs:unsignedShort(\"0\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-unary-plususht1args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
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

'op-numeric-unary-plususht1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "+(xs:unsignedShort(\"44633\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-unary-plususht1args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "44633") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-numeric-unary-plususht1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "+(xs:unsignedShort(\"65535\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-unary-plususht1args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "65535") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-numeric-unary-plusnint1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "+(xs:negativeInteger(\"-999999999999999999\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-unary-plusnint1args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "-999999999999999999") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-numeric-unary-plusnint1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "+(xs:negativeInteger(\"-297014075999096793\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-unary-plusnint1args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "-297014075999096793") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-numeric-unary-plusnint1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "+(xs:negativeInteger(\"-1\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-unary-plusnint1args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "-1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-numeric-unary-pluspint1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "+(xs:positiveInteger(\"1\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-unary-pluspint1args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-numeric-unary-pluspint1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "+(xs:positiveInteger(\"52704602390610033\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-unary-pluspint1args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "52704602390610033") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-numeric-unary-pluspint1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "+(xs:positiveInteger(\"999999999999999999\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-unary-pluspint1args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "999999999999999999") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-numeric-unary-plusulng1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "+(xs:unsignedLong(\"0\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-unary-plusulng1args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
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

'op-numeric-unary-plusulng1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "+(xs:unsignedLong(\"130747108607674654\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-unary-plusulng1args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "130747108607674654") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-numeric-unary-plusulng1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "+(xs:unsignedLong(\"184467440737095516\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-unary-plusulng1args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "184467440737095516") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-numeric-unary-plusnpi1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "+(xs:nonPositiveInteger(\"-999999999999999999\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-unary-plusnpi1args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "-999999999999999999") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-numeric-unary-plusnpi1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "+(xs:nonPositiveInteger(\"-475688437271870490\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-unary-plusnpi1args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "-475688437271870490") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-numeric-unary-plusnpi1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "+(xs:nonPositiveInteger(\"0\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-unary-plusnpi1args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
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

'op-numeric-unary-plusnni1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "+(xs:nonNegativeInteger(\"0\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-unary-plusnni1args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
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

'op-numeric-unary-plusnni1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "+(xs:nonNegativeInteger(\"303884545991464527\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-unary-plusnni1args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "303884545991464527") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-numeric-unary-plusnni1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "+(xs:nonNegativeInteger(\"999999999999999999\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-unary-plusnni1args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "999999999999999999") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-numeric-unary-plussht1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "+(xs:short(\"-32768\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-unary-plussht1args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "-32768") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-numeric-unary-plussht1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "+(xs:short(\"-5324\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-unary-plussht1args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "-5324") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-numeric-unary-plussht1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "+(xs:short(\"32767\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-unary-plussht1args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "32767") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-NumericUnaryPlus-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "+\"a string\"",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-NumericUnaryPlus-1.xq"),
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

'K-NumericUnaryPlus-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(+3) eq 3",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-NumericUnaryPlus-2.xq"),
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

'K-NumericUnaryPlus-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(+3) eq +3",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-NumericUnaryPlus-3.xq"),
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

'K-NumericUnaryPlus-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(+3) eq +(3)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-NumericUnaryPlus-4.xq"),
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

'K-NumericUnaryPlus-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "+(3) eq 3",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-NumericUnaryPlus-5.xq"),
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

'K-NumericUnaryPlus-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "+(3) eq +3",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-NumericUnaryPlus-6.xq"),
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

'K-NumericUnaryPlus-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "-(3) ne 3",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-NumericUnaryPlus-7.xq"),
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

'K-NumericUnaryPlus-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "----------3 eq 3",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-NumericUnaryPlus-8.xq"),
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

'K-NumericUnaryPlus-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "+++++++++++3 eq 3",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-NumericUnaryPlus-9.xq"),
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

'K-NumericUnaryPlus-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "-+-+-+-+-+-+-+-3 eq 3",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-NumericUnaryPlus-10.xq"),
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

'K-NumericUnaryPlus-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "-+-+-+-+-+-++-+-++-+-+-+-+++3 eq 3",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-NumericUnaryPlus-11.xq"),
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

'K-NumericUnaryPlus-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "+++3 eq ++3",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-NumericUnaryPlus-12.xq"),
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

'K2-NumericUnaryPlus-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(document{()}/(+element()))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-NumericUnaryPlus-1.xq"),
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

'K2-NumericUnaryPlus-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(+())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-NumericUnaryPlus-2.xq"),
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

'op-numeric-unary-plus-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         for $x in (1, xs:decimal(2.5), xs:float(3), xs:double(4), xs:untypedAtomic(5)) \n"
        "         return (+$x) \n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-unary-plus-1.xq"),
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
            lists:all(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert(Res, "$result[1] instance of xs:integer") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result[2] instance of xs:decimal") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result[3] instance of xs:float") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result[4] instance of xs:double") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result[5] instance of xs:double") of
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

'cbcl-numeric-unary-plus-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare function local:value($number as xs:boolean) { if ($number) then 1 else xs:string('1') }; \n"
        "      	+(local:value(true()))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-numeric-unary-plus-001.xq"),
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
                    case xqerl_test:assert_string_value(Res, "1") of
                        true -> {comment, "String correct"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPTY0004") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
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
