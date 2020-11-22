-module('fn_exactly_one_SUITE').

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

-export(['fn-exactly-oneint1args-1'/1]).
-export(['fn-exactly-oneint1args-2'/1]).
-export(['fn-exactly-oneint1args-3'/1]).
-export(['fn-exactly-oneintg1args-1'/1]).
-export(['fn-exactly-oneintg1args-2'/1]).
-export(['fn-exactly-oneintg1args-3'/1]).
-export(['fn-exactly-onedec1args-1'/1]).
-export(['fn-exactly-onedec1args-2'/1]).
-export(['fn-exactly-onedec1args-3'/1]).
-export(['fn-exactly-onedbl1args-1'/1]).
-export(['fn-exactly-onedbl1args-2'/1]).
-export(['fn-exactly-onedbl1args-3'/1]).
-export(['fn-exactly-oneflt1args-1'/1]).
-export(['fn-exactly-oneflt1args-2'/1]).
-export(['fn-exactly-oneflt1args-3'/1]).
-export(['fn-exactly-onelng1args-1'/1]).
-export(['fn-exactly-onelng1args-2'/1]).
-export(['fn-exactly-onelng1args-3'/1]).
-export(['fn-exactly-oneusht1args-1'/1]).
-export(['fn-exactly-oneusht1args-2'/1]).
-export(['fn-exactly-oneusht1args-3'/1]).
-export(['fn-exactly-onenint1args-1'/1]).
-export(['fn-exactly-onenint1args-2'/1]).
-export(['fn-exactly-onenint1args-3'/1]).
-export(['fn-exactly-onepint1args-1'/1]).
-export(['fn-exactly-onepint1args-2'/1]).
-export(['fn-exactly-onepint1args-3'/1]).
-export(['fn-exactly-oneulng1args-1'/1]).
-export(['fn-exactly-oneulng1args-2'/1]).
-export(['fn-exactly-oneulng1args-3'/1]).
-export(['fn-exactly-onenpi1args-1'/1]).
-export(['fn-exactly-onenpi1args-2'/1]).
-export(['fn-exactly-onenpi1args-3'/1]).
-export(['fn-exactly-onenni1args-1'/1]).
-export(['fn-exactly-onenni1args-2'/1]).
-export(['fn-exactly-onenni1args-3'/1]).
-export(['fn-exactly-onesht1args-1'/1]).
-export(['fn-exactly-onesht1args-2'/1]).
-export(['fn-exactly-onesht1args-3'/1]).
-export(['fn-exactly-one-1'/1]).
-export(['K-SeqExactlyOneFunc-1'/1]).
-export(['K-SeqExactlyOneFunc-2'/1]).
-export(['K-SeqExactlyOneFunc-3'/1]).
-export(['K-SeqExactlyOneFunc-4'/1]).
-export(['K-SeqExactlyOneFunc-5'/1]).
-export(['K-SeqExactlyOneFunc-6'/1]).
-export(['K-SeqExactlyOneFunc-7'/1]).
-export(['K-SeqExactlyOneFunc-8'/1]).
-export(['K-SeqExactlyOneFunc-9'/1]).
-export(['K-SeqExactlyOneFunc-10'/1]).
-export(['cbcl-exactly-one-001'/1]).
-export(['cbcl-exactly-one-002'/1]).
-export(['cbcl-exactly-one-003'/1]).
-export(['cbcl-exactly-one-004'/1]).

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
        {group, group_2}
    ].

groups() ->
    [
        {group_0, [parallel], [
            'fn-exactly-oneint1args-1',
            'fn-exactly-oneint1args-2',
            'fn-exactly-oneint1args-3',
            'fn-exactly-oneintg1args-1',
            'fn-exactly-oneintg1args-2',
            'fn-exactly-oneintg1args-3',
            'fn-exactly-onedec1args-1',
            'fn-exactly-onedec1args-2',
            'fn-exactly-onedec1args-3',
            'fn-exactly-onedbl1args-1',
            'fn-exactly-onedbl1args-2',
            'fn-exactly-onedbl1args-3',
            'fn-exactly-oneflt1args-1',
            'fn-exactly-oneflt1args-2',
            'fn-exactly-oneflt1args-3',
            'fn-exactly-onelng1args-1',
            'fn-exactly-onelng1args-2',
            'fn-exactly-onelng1args-3',
            'fn-exactly-oneusht1args-1',
            'fn-exactly-oneusht1args-2',
            'fn-exactly-oneusht1args-3',
            'fn-exactly-onenint1args-1',
            'fn-exactly-onenint1args-2'
        ]},
        {group_1, [parallel], [
            'fn-exactly-onenint1args-3',
            'fn-exactly-onepint1args-1',
            'fn-exactly-onepint1args-2',
            'fn-exactly-onepint1args-3',
            'fn-exactly-oneulng1args-1',
            'fn-exactly-oneulng1args-2',
            'fn-exactly-oneulng1args-3',
            'fn-exactly-onenpi1args-1',
            'fn-exactly-onenpi1args-2',
            'fn-exactly-onenpi1args-3',
            'fn-exactly-onenni1args-1',
            'fn-exactly-onenni1args-2',
            'fn-exactly-onenni1args-3',
            'fn-exactly-onesht1args-1',
            'fn-exactly-onesht1args-2',
            'fn-exactly-onesht1args-3',
            'fn-exactly-one-1',
            'K-SeqExactlyOneFunc-1',
            'K-SeqExactlyOneFunc-2',
            'K-SeqExactlyOneFunc-3',
            'K-SeqExactlyOneFunc-4',
            'K-SeqExactlyOneFunc-5',
            'K-SeqExactlyOneFunc-6',
            'K-SeqExactlyOneFunc-7'
        ]},
        {group_2, [parallel], [
            'K-SeqExactlyOneFunc-8',
            'K-SeqExactlyOneFunc-9',
            'K-SeqExactlyOneFunc-10',
            'cbcl-exactly-one-001',
            'cbcl-exactly-one-002',
            'cbcl-exactly-one-003',
            'cbcl-exactly-one-004'
        ]}
    ].

'fn-exactly-oneint1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:exactly-one(xs:int(\"-2147483648\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-exactly-oneint1args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-2147483648") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-exactly-oneint1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:exactly-one(xs:int(\"-1873914410\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-exactly-oneint1args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-1873914410") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-exactly-oneint1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:exactly-one(xs:int(\"2147483647\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-exactly-oneint1args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "2147483647") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-exactly-oneintg1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:exactly-one(xs:integer(\"-999999999999999999\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-exactly-oneintg1args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-999999999999999999") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-exactly-oneintg1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:exactly-one(xs:integer(\"830993497117024304\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-exactly-oneintg1args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "830993497117024304") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-exactly-oneintg1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:exactly-one(xs:integer(\"999999999999999999\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-exactly-oneintg1args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "999999999999999999") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-exactly-onedec1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:exactly-one(xs:decimal(\"-999999999999999999\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-exactly-onedec1args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-999999999999999999") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-exactly-onedec1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:exactly-one(xs:decimal(\"617375191608514839\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-exactly-onedec1args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "617375191608514839") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-exactly-onedec1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:exactly-one(xs:decimal(\"999999999999999999\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-exactly-onedec1args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "999999999999999999") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-exactly-onedbl1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:exactly-one(xs:double(\"-1.7976931348623157E308\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-exactly-onedbl1args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-1.7976931348623157E308") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-exactly-onedbl1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:exactly-one(xs:double(\"0\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-exactly-onedbl1args-2.xq"),
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

'fn-exactly-onedbl1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:exactly-one(xs:double(\"1.7976931348623157E308\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-exactly-onedbl1args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1.7976931348623157E308") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-exactly-oneflt1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:exactly-one(xs:float(\"-3.4028235E38\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-exactly-oneflt1args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-3.4028235E38") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-exactly-oneflt1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:exactly-one(xs:float(\"0\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-exactly-oneflt1args-2.xq"),
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

'fn-exactly-oneflt1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:exactly-one(xs:float(\"3.4028235E38\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-exactly-oneflt1args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "3.4028235E38") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-exactly-onelng1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:exactly-one(xs:long(\"-92233720368547758\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-exactly-onelng1args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-92233720368547758") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-exactly-onelng1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:exactly-one(xs:long(\"-47175562203048468\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-exactly-onelng1args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-47175562203048468") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-exactly-onelng1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:exactly-one(xs:long(\"92233720368547758\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-exactly-onelng1args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "92233720368547758") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-exactly-oneusht1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:exactly-one(xs:unsignedShort(\"0\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-exactly-oneusht1args-1.xq"),
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

'fn-exactly-oneusht1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:exactly-one(xs:unsignedShort(\"44633\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-exactly-oneusht1args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "44633") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-exactly-oneusht1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:exactly-one(xs:unsignedShort(\"65535\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-exactly-oneusht1args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "65535") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-exactly-onenint1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:exactly-one(xs:negativeInteger(\"-999999999999999999\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-exactly-onenint1args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-999999999999999999") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-exactly-onenint1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:exactly-one(xs:negativeInteger(\"-297014075999096793\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-exactly-onenint1args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-297014075999096793") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-exactly-onenint1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:exactly-one(xs:negativeInteger(\"-1\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-exactly-onenint1args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-1") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-exactly-onepint1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:exactly-one(xs:positiveInteger(\"1\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-exactly-onepint1args-1.xq"),
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

'fn-exactly-onepint1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:exactly-one(xs:positiveInteger(\"52704602390610033\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-exactly-onepint1args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "52704602390610033") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-exactly-onepint1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:exactly-one(xs:positiveInteger(\"999999999999999999\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-exactly-onepint1args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "999999999999999999") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-exactly-oneulng1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:exactly-one(xs:unsignedLong(\"0\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-exactly-oneulng1args-1.xq"),
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

'fn-exactly-oneulng1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:exactly-one(xs:unsignedLong(\"130747108607674654\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-exactly-oneulng1args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "130747108607674654") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-exactly-oneulng1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:exactly-one(xs:unsignedLong(\"184467440737095516\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-exactly-oneulng1args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "184467440737095516") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-exactly-onenpi1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:exactly-one(xs:nonPositiveInteger(\"-999999999999999999\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-exactly-onenpi1args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-999999999999999999") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-exactly-onenpi1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:exactly-one(xs:nonPositiveInteger(\"-475688437271870490\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-exactly-onenpi1args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-475688437271870490") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-exactly-onenpi1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:exactly-one(xs:nonPositiveInteger(\"0\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-exactly-onenpi1args-3.xq"),
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

'fn-exactly-onenni1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:exactly-one(xs:nonNegativeInteger(\"0\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-exactly-onenni1args-1.xq"),
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

'fn-exactly-onenni1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:exactly-one(xs:nonNegativeInteger(\"303884545991464527\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-exactly-onenni1args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "303884545991464527") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-exactly-onenni1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:exactly-one(xs:nonNegativeInteger(\"999999999999999999\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-exactly-onenni1args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "999999999999999999") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-exactly-onesht1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:exactly-one(xs:short(\"-32768\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-exactly-onesht1args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-32768") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-exactly-onesht1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:exactly-one(xs:short(\"-5324\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-exactly-onesht1args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-5324") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-exactly-onesht1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:exactly-one(xs:short(\"32767\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-exactly-onesht1args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "32767") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-exactly-one-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:exactly-one((1,2))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-exactly-one-1.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORG0005") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORG0005 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-SeqExactlyOneFunc-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "exactly-one(1, 2)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqExactlyOneFunc-1.xq"),
                Qry1
            ),
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

'K-SeqExactlyOneFunc-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "exactly-one()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqExactlyOneFunc-2.xq"),
                Qry1
            ),
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

'K-SeqExactlyOneFunc-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "exactly-one( (1, 2, 3) )",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqExactlyOneFunc-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORG0005") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORG0005 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-SeqExactlyOneFunc-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "exactly-one(\"one\") eq \"one\"",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqExactlyOneFunc-4.xq"),
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

'K-SeqExactlyOneFunc-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "count(exactly-one( \"one\" )) eq 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqExactlyOneFunc-5.xq"),
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

'K-SeqExactlyOneFunc-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "exactly-one(error())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqExactlyOneFunc-6.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOER0000") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOER0000 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-SeqExactlyOneFunc-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "exactly-one((true(), error()))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqExactlyOneFunc-7.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOER0000") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOER0000 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-SeqExactlyOneFunc-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "exactly-one(( error(), true()))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqExactlyOneFunc-8.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOER0000") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOER0000 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-SeqExactlyOneFunc-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "exactly-one( () )",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqExactlyOneFunc-9.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORG0005") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORG0005 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-SeqExactlyOneFunc-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "zero-or-more(1)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqExactlyOneFunc-10.xq"),
                Qry1
            ),
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

'cbcl-exactly-one-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "boolean( exactly-one( remove( (<a/>, 1), 1 ) ) )",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-exactly-one-001.xq"),
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

'cbcl-exactly-one-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare function local:generate($arg as xs:integer) { if ($arg = 0) then (1, 2, 3) else $arg }; \n"
        "      	fn:exactly-one(fn:unordered( local:generate(1) ))\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-exactly-one-002.xq"),
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

'cbcl-exactly-one-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare function local:generate($arg as xs:integer?) { if ($arg = 0) then () else if ($arg = 1) then $arg else ($arg, $arg) }; \n"
        "      	1 + fn:exactly-one(fn:one-or-more( local:generate( 1 ) ))\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-exactly-one-003.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "2") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-exactly-one-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare function local:generate($arg as xs:integer?) { if ($arg = 0) then () else if ($arg = 1) then $arg else ($arg, $arg) }; \n"
        "      	1 + fn:exactly-one(fn:zero-or-one( local:generate( 1 ) ))\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-exactly-one-004.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "2") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.
