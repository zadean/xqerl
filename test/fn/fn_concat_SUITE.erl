-module('fn_concat_SUITE').

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

-export(['fn-concatint2args-1'/1]).
-export(['fn-concatint2args-2'/1]).
-export(['fn-concatint2args-3'/1]).
-export(['fn-concatint2args-4'/1]).
-export(['fn-concatint2args-5'/1]).
-export(['fn-concatintg2args-1'/1]).
-export(['fn-concatintg2args-2'/1]).
-export(['fn-concatintg2args-3'/1]).
-export(['fn-concatintg2args-4'/1]).
-export(['fn-concatintg2args-5'/1]).
-export(['fn-concatdec2args-1'/1]).
-export(['fn-concatdec2args-2'/1]).
-export(['fn-concatdec2args-3'/1]).
-export(['fn-concatdec2args-4'/1]).
-export(['fn-concatdec2args-5'/1]).
-export(['fn-concatdbl2args-1'/1]).
-export(['fn-concatdbl2args-2'/1]).
-export(['fn-concatdbl2args-3'/1]).
-export(['fn-concatdbl2args-4'/1]).
-export(['fn-concatdbl2args-5'/1]).
-export(['fn-concatflt2args-1'/1]).
-export(['fn-concatflt2args-2'/1]).
-export(['fn-concatflt2args-3'/1]).
-export(['fn-concatflt2args-4'/1]).
-export(['fn-concatflt2args-5'/1]).
-export(['fn-concatlng2args-1'/1]).
-export(['fn-concatlng2args-2'/1]).
-export(['fn-concatlng2args-3'/1]).
-export(['fn-concatlng2args-4'/1]).
-export(['fn-concatlng2args-5'/1]).
-export(['fn-concatusht2args-1'/1]).
-export(['fn-concatusht2args-2'/1]).
-export(['fn-concatusht2args-3'/1]).
-export(['fn-concatusht2args-4'/1]).
-export(['fn-concatusht2args-5'/1]).
-export(['fn-concatnint2args-1'/1]).
-export(['fn-concatnint2args-2'/1]).
-export(['fn-concatnint2args-3'/1]).
-export(['fn-concatnint2args-4'/1]).
-export(['fn-concatnint2args-5'/1]).
-export(['fn-concatpint2args-1'/1]).
-export(['fn-concatpint2args-2'/1]).
-export(['fn-concatpint2args-3'/1]).
-export(['fn-concatpint2args-4'/1]).
-export(['fn-concatpint2args-5'/1]).
-export(['fn-concatulng2args-1'/1]).
-export(['fn-concatulng2args-2'/1]).
-export(['fn-concatulng2args-3'/1]).
-export(['fn-concatulng2args-4'/1]).
-export(['fn-concatulng2args-5'/1]).
-export(['fn-concatnpi2args-1'/1]).
-export(['fn-concatnpi2args-2'/1]).
-export(['fn-concatnpi2args-3'/1]).
-export(['fn-concatnpi2args-4'/1]).
-export(['fn-concatnpi2args-5'/1]).
-export(['fn-concatnni2args-1'/1]).
-export(['fn-concatnni2args-2'/1]).
-export(['fn-concatnni2args-3'/1]).
-export(['fn-concatnni2args-4'/1]).
-export(['fn-concatnni2args-5'/1]).
-export(['fn-concatsht2args-1'/1]).
-export(['fn-concatsht2args-2'/1]).
-export(['fn-concatsht2args-3'/1]).
-export(['fn-concatsht2args-4'/1]).
-export(['fn-concatsht2args-5'/1]).
-export(['fn-concat-1'/1]).
-export(['fn-concat-2'/1]).
-export(['fn-concat-3'/1]).
-export(['fn-concat-4'/1]).
-export(['fn-concat-5'/1]).
-export(['fn-concat-6'/1]).
-export(['fn-concat-7'/1]).
-export(['fn-concat-8'/1]).
-export(['fn-concat-9'/1]).
-export(['fn-concat-10'/1]).
-export(['fn-concat-11'/1]).
-export(['fn-concat-12'/1]).
-export(['fn-concat-13'/1]).
-export(['fn-concat-14'/1]).
-export(['fn-concat-15'/1]).
-export(['fn-concat-16'/1]).
-export(['fn-concat-17'/1]).
-export(['fn-concat-18'/1]).
-export(['K-ConcatFunc-1'/1]).
-export(['K-ConcatFunc-2'/1]).
-export(['K-ConcatFunc-3'/1]).
-export(['K-ConcatFunc-4'/1]).
-export(['K-ConcatFunc-5'/1]).
-export(['K-ConcatFunc-6'/1]).
-export(['K-ConcatFunc-7'/1]).
-export(['K-ConcatFunc-8'/1]).
-export(['K-ConcatFunc-9'/1]).
-export(['K2-ConcatFunc-1'/1]).
-export(['K2-ConcatFunc-2'/1]).
-export(['K2-ConcatFunc-3'/1]).
-export(['cbcl-concat-001'/1]).

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
        {group, group_4}
    ].

groups() ->
    [
        {group_0, [parallel], [
            'fn-concatint2args-1',
            'fn-concatint2args-2',
            'fn-concatint2args-3',
            'fn-concatint2args-4',
            'fn-concatint2args-5',
            'fn-concatintg2args-1',
            'fn-concatintg2args-2',
            'fn-concatintg2args-3',
            'fn-concatintg2args-4',
            'fn-concatintg2args-5',
            'fn-concatdec2args-1',
            'fn-concatdec2args-2',
            'fn-concatdec2args-3',
            'fn-concatdec2args-4',
            'fn-concatdec2args-5',
            'fn-concatdbl2args-1',
            'fn-concatdbl2args-2',
            'fn-concatdbl2args-3',
            'fn-concatdbl2args-4',
            'fn-concatdbl2args-5',
            'fn-concatflt2args-1',
            'fn-concatflt2args-2',
            'fn-concatflt2args-3'
        ]},
        {group_1, [parallel], [
            'fn-concatflt2args-4',
            'fn-concatflt2args-5',
            'fn-concatlng2args-1',
            'fn-concatlng2args-2',
            'fn-concatlng2args-3',
            'fn-concatlng2args-4',
            'fn-concatlng2args-5',
            'fn-concatusht2args-1',
            'fn-concatusht2args-2',
            'fn-concatusht2args-3',
            'fn-concatusht2args-4',
            'fn-concatusht2args-5',
            'fn-concatnint2args-1',
            'fn-concatnint2args-2',
            'fn-concatnint2args-3',
            'fn-concatnint2args-4',
            'fn-concatnint2args-5',
            'fn-concatpint2args-1',
            'fn-concatpint2args-2',
            'fn-concatpint2args-3',
            'fn-concatpint2args-4',
            'fn-concatpint2args-5',
            'fn-concatulng2args-1',
            'fn-concatulng2args-2'
        ]},
        {group_2, [parallel], [
            'fn-concatulng2args-3',
            'fn-concatulng2args-4',
            'fn-concatulng2args-5',
            'fn-concatnpi2args-1',
            'fn-concatnpi2args-2',
            'fn-concatnpi2args-3',
            'fn-concatnpi2args-4',
            'fn-concatnpi2args-5',
            'fn-concatnni2args-1',
            'fn-concatnni2args-2',
            'fn-concatnni2args-3',
            'fn-concatnni2args-4',
            'fn-concatnni2args-5',
            'fn-concatsht2args-1',
            'fn-concatsht2args-2',
            'fn-concatsht2args-3',
            'fn-concatsht2args-4',
            'fn-concatsht2args-5',
            'fn-concat-1',
            'fn-concat-2',
            'fn-concat-3',
            'fn-concat-4',
            'fn-concat-5',
            'fn-concat-6'
        ]},
        {group_3, [parallel], [
            'fn-concat-7',
            'fn-concat-8',
            'fn-concat-9',
            'fn-concat-10',
            'fn-concat-11',
            'fn-concat-12',
            'fn-concat-13',
            'fn-concat-14',
            'fn-concat-15',
            'fn-concat-16',
            'fn-concat-17',
            'fn-concat-18',
            'K-ConcatFunc-1',
            'K-ConcatFunc-2',
            'K-ConcatFunc-3',
            'K-ConcatFunc-4',
            'K-ConcatFunc-5',
            'K-ConcatFunc-6',
            'K-ConcatFunc-7',
            'K-ConcatFunc-8',
            'K-ConcatFunc-9',
            'K2-ConcatFunc-1',
            'K2-ConcatFunc-2',
            'K2-ConcatFunc-3'
        ]},
        {group_4, [parallel], [
            'cbcl-concat-001'
        ]}
    ].

'fn-concatint2args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(xs:int(\"-2147483648\"),xs:int(\"-2147483648\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatint2args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-2147483648-2147483648") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatint2args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(xs:int(\"-1873914410\"),xs:int(\"-2147483648\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatint2args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-1873914410-2147483648") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatint2args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(xs:int(\"2147483647\"),xs:int(\"-2147483648\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatint2args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "2147483647-2147483648") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatint2args-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(xs:int(\"-2147483648\"),xs:int(\"-1873914410\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatint2args-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-2147483648-1873914410") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatint2args-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(xs:int(\"-2147483648\"),xs:int(\"2147483647\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatint2args-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-21474836482147483647") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatintg2args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(xs:integer(\"-999999999999999999\"),xs:integer(\"-999999999999999999\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatintg2args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-999999999999999999-999999999999999999") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatintg2args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(xs:integer(\"830993497117024304\"),xs:integer(\"-999999999999999999\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatintg2args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "830993497117024304-999999999999999999") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatintg2args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(xs:integer(\"999999999999999999\"),xs:integer(\"-999999999999999999\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatintg2args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "999999999999999999-999999999999999999") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatintg2args-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(xs:integer(\"-999999999999999999\"),xs:integer(\"830993497117024304\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatintg2args-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-999999999999999999830993497117024304") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatintg2args-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(xs:integer(\"-999999999999999999\"),xs:integer(\"999999999999999999\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatintg2args-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-999999999999999999999999999999999999") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatdec2args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(xs:decimal(\"-999999999999999999\"),xs:decimal(\"-999999999999999999\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatdec2args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-999999999999999999-999999999999999999") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatdec2args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(xs:decimal(\"617375191608514839\"),xs:decimal(\"-999999999999999999\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatdec2args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "617375191608514839-999999999999999999") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatdec2args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(xs:decimal(\"999999999999999999\"),xs:decimal(\"-999999999999999999\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatdec2args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "999999999999999999-999999999999999999") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatdec2args-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(xs:decimal(\"-999999999999999999\"),xs:decimal(\"617375191608514839\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatdec2args-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-999999999999999999617375191608514839") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatdec2args-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(xs:decimal(\"-999999999999999999\"),xs:decimal(\"999999999999999999\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatdec2args-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-999999999999999999999999999999999999") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatdbl2args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:concat(xs:double(\"-1.7976931348623157E308\"),xs:double(\"-1.7976931348623157E308\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatdbl2args-1.xq"),
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
            xqerl_test:assert_string_value(Res, "-1.7976931348623157E308-1.7976931348623157E308")
        of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatdbl2args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(xs:double(\"0\"),xs:double(\"-1.7976931348623157E308\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatdbl2args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "0-1.7976931348623157E308") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatdbl2args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(xs:double(\"1.7976931348623157E308\"),xs:double(\"-1.7976931348623157E308\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatdbl2args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1.7976931348623157E308-1.7976931348623157E308") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatdbl2args-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(xs:double(\"-1.7976931348623157E308\"),xs:double(\"0\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatdbl2args-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-1.7976931348623157E3080") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatdbl2args-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(xs:double(\"-1.7976931348623157E308\"),xs:double(\"1.7976931348623157E308\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatdbl2args-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-1.7976931348623157E3081.7976931348623157E308") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatflt2args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(xs:float(\"-3.4028235E38\"),xs:float(\"-3.4028235E38\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatflt2args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-3.4028235E38-3.4028235E38") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatflt2args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(xs:float(\"0\"),xs:float(\"-3.4028235E38\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatflt2args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "0-3.4028235E38") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatflt2args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(xs:float(\"3.4028235E38\"),xs:float(\"-3.4028235E38\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatflt2args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "3.4028235E38-3.4028235E38") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatflt2args-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(xs:float(\"-3.4028235E38\"),xs:float(\"0\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatflt2args-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-3.4028235E380") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatflt2args-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(xs:float(\"-3.4028235E38\"),xs:float(\"3.4028235E38\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatflt2args-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-3.4028235E383.4028235E38") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatlng2args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(xs:long(\"-92233720368547758\"),xs:long(\"-92233720368547758\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatlng2args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-92233720368547758-92233720368547758") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatlng2args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(xs:long(\"-47175562203048468\"),xs:long(\"-92233720368547758\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatlng2args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-47175562203048468-92233720368547758") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatlng2args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(xs:long(\"92233720368547758\"),xs:long(\"-92233720368547758\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatlng2args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "92233720368547758-92233720368547758") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatlng2args-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(xs:long(\"-92233720368547758\"),xs:long(\"-47175562203048468\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatlng2args-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-92233720368547758-47175562203048468") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatlng2args-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(xs:long(\"-92233720368547758\"),xs:long(\"92233720368547758\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatlng2args-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-9223372036854775892233720368547758") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatusht2args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(xs:unsignedShort(\"0\"),xs:unsignedShort(\"0\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatusht2args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "00") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatusht2args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(xs:unsignedShort(\"44633\"),xs:unsignedShort(\"0\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatusht2args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "446330") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatusht2args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(xs:unsignedShort(\"65535\"),xs:unsignedShort(\"0\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatusht2args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "655350") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatusht2args-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(xs:unsignedShort(\"0\"),xs:unsignedShort(\"44633\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatusht2args-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "044633") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatusht2args-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(xs:unsignedShort(\"0\"),xs:unsignedShort(\"65535\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatusht2args-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "065535") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatnint2args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:concat(xs:negativeInteger(\"-999999999999999999\"),xs:negativeInteger(\"-999999999999999999\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatnint2args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-999999999999999999-999999999999999999") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatnint2args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:concat(xs:negativeInteger(\"-297014075999096793\"),xs:negativeInteger(\"-999999999999999999\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatnint2args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-297014075999096793-999999999999999999") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatnint2args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(xs:negativeInteger(\"-1\"),xs:negativeInteger(\"-999999999999999999\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatnint2args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-1-999999999999999999") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatnint2args-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:concat(xs:negativeInteger(\"-999999999999999999\"),xs:negativeInteger(\"-297014075999096793\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatnint2args-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-999999999999999999-297014075999096793") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatnint2args-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(xs:negativeInteger(\"-999999999999999999\"),xs:negativeInteger(\"-1\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatnint2args-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-999999999999999999-1") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatpint2args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(xs:positiveInteger(\"1\"),xs:positiveInteger(\"1\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatpint2args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "11") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatpint2args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(xs:positiveInteger(\"52704602390610033\"),xs:positiveInteger(\"1\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatpint2args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "527046023906100331") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatpint2args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(xs:positiveInteger(\"999999999999999999\"),xs:positiveInteger(\"1\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatpint2args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "9999999999999999991") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatpint2args-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(xs:positiveInteger(\"1\"),xs:positiveInteger(\"52704602390610033\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatpint2args-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "152704602390610033") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatpint2args-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(xs:positiveInteger(\"1\"),xs:positiveInteger(\"999999999999999999\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatpint2args-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1999999999999999999") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatulng2args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(xs:unsignedLong(\"0\"),xs:unsignedLong(\"0\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatulng2args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "00") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatulng2args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(xs:unsignedLong(\"130747108607674654\"),xs:unsignedLong(\"0\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatulng2args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1307471086076746540") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatulng2args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(xs:unsignedLong(\"184467440737095516\"),xs:unsignedLong(\"0\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatulng2args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1844674407370955160") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatulng2args-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(xs:unsignedLong(\"0\"),xs:unsignedLong(\"130747108607674654\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatulng2args-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "0130747108607674654") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatulng2args-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(xs:unsignedLong(\"0\"),xs:unsignedLong(\"184467440737095516\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatulng2args-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "0184467440737095516") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatnpi2args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:concat(xs:nonPositiveInteger(\"-999999999999999999\"),xs:nonPositiveInteger(\"-999999999999999999\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatnpi2args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-999999999999999999-999999999999999999") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatnpi2args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:concat(xs:nonPositiveInteger(\"-475688437271870490\"),xs:nonPositiveInteger(\"-999999999999999999\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatnpi2args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-475688437271870490-999999999999999999") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatnpi2args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(xs:nonPositiveInteger(\"0\"),xs:nonPositiveInteger(\"-999999999999999999\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatnpi2args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "0-999999999999999999") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatnpi2args-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:concat(xs:nonPositiveInteger(\"-999999999999999999\"),xs:nonPositiveInteger(\"-475688437271870490\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatnpi2args-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-999999999999999999-475688437271870490") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatnpi2args-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(xs:nonPositiveInteger(\"-999999999999999999\"),xs:nonPositiveInteger(\"0\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatnpi2args-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-9999999999999999990") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatnni2args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(xs:nonNegativeInteger(\"0\"),xs:nonNegativeInteger(\"0\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatnni2args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "00") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatnni2args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(xs:nonNegativeInteger(\"303884545991464527\"),xs:nonNegativeInteger(\"0\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatnni2args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "3038845459914645270") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatnni2args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(xs:nonNegativeInteger(\"999999999999999999\"),xs:nonNegativeInteger(\"0\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatnni2args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "9999999999999999990") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatnni2args-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(xs:nonNegativeInteger(\"0\"),xs:nonNegativeInteger(\"303884545991464527\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatnni2args-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "0303884545991464527") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatnni2args-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(xs:nonNegativeInteger(\"0\"),xs:nonNegativeInteger(\"999999999999999999\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatnni2args-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "0999999999999999999") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatsht2args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(xs:short(\"-32768\"),xs:short(\"-32768\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatsht2args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-32768-32768") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatsht2args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(xs:short(\"-5324\"),xs:short(\"-32768\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatsht2args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-5324-32768") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatsht2args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(xs:short(\"32767\"),xs:short(\"-32768\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatsht2args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "32767-32768") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatsht2args-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(xs:short(\"-32768\"),xs:short(\"-5324\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatsht2args-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-32768-5324") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concatsht2args-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(xs:short(\"-32768\"),xs:short(\"32767\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-concatsht2args-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-3276832767") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concat-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat('un', 'grateful')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-concat-1.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "ungrateful") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concat-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:concat('Thy ', (), 'old ', \"groans\", \"\", ' ring', ' yet', ' in', ' my', ' ancient',' ears.')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-concat-2.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "Thy old groans ring yet in my ancient ears.") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concat-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat('Ciao!',())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-concat-3.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "Ciao!") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concat-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat('Ingratitude, ', 'thou ', 'marble-hearted', ' fiend!')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-concat-4.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "Ingratitude, thou marble-hearted fiend!") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concat-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(\"AB\",\"CD\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-concat-5.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "ABCD") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concat-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(\"abc\",\"de\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-concat-6.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "abcde") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concat-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(\"ABCDE\",\"abcde\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-concat-7.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "ABCDEabcde") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concat-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(fn:concat(\"\",\"\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-concat-8.xq"), Qry1),
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

'fn-concat-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(fn:upper-case(\"Abc\"),fn:upper-case(\"DH\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-concat-9.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "ABCDH") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concat-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(\"**\",\"***\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-concat-10.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "*****") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concat-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(fn:concat(\"zzz\",\"zz\"),\"123\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-concat-11.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "zzzzz123") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concat-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:boolean(fn:concat(\"ab\",\"cde\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-concat-12.xq"), Qry1),
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

'fn-concat-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:string(fn:concat(\"abc\",\"de\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-concat-13.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "abcde") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concat-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:not(fn:concat(\"ab\",\"cde\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-concat-14.xq"), Qry1),
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

'fn-concat-15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(\"%$\",\"#@!\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-concat-15.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "%$#@!") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concat-16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(\"concat\",\"concat\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-concat-16.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "concatconcat") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-concat-17'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(\"abc\",\"abc\") and fn:concat(\"abc\",\"abc\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-concat-17.xq"), Qry1),
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

'fn-concat-18'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:concat(\"abc\",\"abc\", fn:concat#3)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-concat-18.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOTY0013") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOTY0013 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-ConcatFunc-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "concat()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-ConcatFunc-1.xq"), Qry1),
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

'K-ConcatFunc-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "concat(\"a string\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-ConcatFunc-2.xq"), Qry1),
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

'K-ConcatFunc-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "concat(\"ab\", \"c\") eq \"abc\"",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-ConcatFunc-3.xq"), Qry1),
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

'K-ConcatFunc-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "concat(\"ab\", \"c\") instance of xs:string",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-ConcatFunc-4.xq"), Qry1),
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

'K-ConcatFunc-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "concat((), ()) instance of xs:string",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-ConcatFunc-5.xq"), Qry1),
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

'K-ConcatFunc-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "concat((), ()) eq \"\"",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-ConcatFunc-6.xq"), Qry1),
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

'K-ConcatFunc-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "concat('a', 'b', 'c', (), 'd', 'e', 'f', 'g', 'h', ' ', 'i', 'j', 'k l') eq \"abcdefgh ijk l\"",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-ConcatFunc-7.xq"), Qry1),
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

'K-ConcatFunc-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "concat(1, 2, 3) eq \"123\"",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-ConcatFunc-8.xq"), Qry1),
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

'K-ConcatFunc-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "concat(1, \"2\", 3) eq \"123\"",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-ConcatFunc-9.xq"), Qry1),
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

'K2-ConcatFunc-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "concat((\"a\", \"b\"), \"c\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-ConcatFunc-1.xq"), Qry1),
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

'K2-ConcatFunc-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "concat(\"1\", \"2\", \"3\", (\"a\", \"b\"), \"c\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-ConcatFunc-2.xq"), Qry1),
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

'K2-ConcatFunc-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "concat(\"1\", \"2\", \"3\", \"c\", (\"a\", \"b\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-ConcatFunc-3.xq"), Qry1),
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

'cbcl-concat-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:boolean(fn:concat('', ''))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-concat-001.xq"), Qry1),
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
