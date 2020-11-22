-module('op_base64Binary_less_than_SUITE').

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

-export(['base64Binary-lt-1'/1]).
-export(['base64Binary-lt-2'/1]).
-export(['base64Binary-lt-3'/1]).
-export(['base64Binary-lt-4'/1]).
-export(['base64Binary-lt-5'/1]).
-export(['base64Binary-lt-6'/1]).
-export(['base64Binary-lt-7'/1]).
-export(['base64Binary-lt-8'/1]).
-export(['base64Binary-lt-9'/1]).
-export(['base64Binary-lt-10'/1]).
-export(['base64Binary-lt-11'/1]).
-export(['base64Binary-lt-12'/1]).
-export(['base64Binary-lt-13'/1]).
-export(['base64Binary-lt-14'/1]).
-export(['base64Binary-lt-15'/1]).
-export(['base64Binary-lt-16'/1]).
-export(['base64Binary-lt-17'/1]).
-export(['base64Binary-lt-18'/1]).
-export(['base64Binary-lt-19'/1]).
-export(['base64Binary-lt-20'/1]).
-export(['base64Binary-lt-21'/1]).
-export(['base64Binary-lt-22'/1]).
-export(['base64Binary-lt-23'/1]).
-export(['base64Binary-lt-24'/1]).
-export(['base64Binary-lt-25'/1]).
-export(['base64Binary-lt-26'/1]).
-export(['base64Binary-le-27'/1]).
-export(['base64Binary-le-28'/1]).
-export(['base64Binary-le-29'/1]).
-export(['base64Binary-lt-30'/1]).
-export(['base64Binary-lt-31'/1]).
-export(['base64Binary-lt-32'/1]).

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
            'base64Binary-lt-1',
            'base64Binary-lt-2',
            'base64Binary-lt-3',
            'base64Binary-lt-4',
            'base64Binary-lt-5',
            'base64Binary-lt-6',
            'base64Binary-lt-7',
            'base64Binary-lt-8',
            'base64Binary-lt-9',
            'base64Binary-lt-10',
            'base64Binary-lt-11',
            'base64Binary-lt-12',
            'base64Binary-lt-13',
            'base64Binary-lt-14',
            'base64Binary-lt-15',
            'base64Binary-lt-16',
            'base64Binary-lt-17',
            'base64Binary-lt-18',
            'base64Binary-lt-19',
            'base64Binary-lt-20',
            'base64Binary-lt-21',
            'base64Binary-lt-22',
            'base64Binary-lt-23'
        ]},
        {group_1, [parallel], [
            'base64Binary-lt-24',
            'base64Binary-lt-25',
            'base64Binary-lt-26',
            'base64Binary-le-27',
            'base64Binary-le-28',
            'base64Binary-le-29',
            'base64Binary-lt-30',
            'base64Binary-lt-31',
            'base64Binary-lt-32'
        ]}
    ].

'base64Binary-lt-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:base64Binary(\"dnR5cWxqZHZj\") lt xs:base64Binary(\"dnR5cWxqZHZj\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "base64Binary-lt-1.xq"), Qry1),
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

'base64Binary-lt-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:base64Binary(\"bnh1YmJkdWNm\") lt xs:base64Binary(\"dnR5cWxqZHZj\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "base64Binary-lt-2.xq"), Qry1),
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

'base64Binary-lt-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:base64Binary(\"eGF0YW1hYWdy\") lt xs:base64Binary(\"dnR5cWxqZHZj\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "base64Binary-lt-3.xq"), Qry1),
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

'base64Binary-lt-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:base64Binary(\"dnR5cWxqZHZj\") < xs:base64Binary(\"bnh1YmJkdWNm\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "base64Binary-lt-4.xq"), Qry1),
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

'base64Binary-lt-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:base64Binary(\"dnR5cWxqZHZj\") < xs:base64Binary(\"eGF0YW1hYWdy\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "base64Binary-lt-5.xq"), Qry1),
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

'base64Binary-lt-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:base64Binary(\"dnR5cWxqZHZj\") < xs:base64Binary(\"dnR5cWxqZHZj\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "base64Binary-lt-6.xq"), Qry1),
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

'base64Binary-lt-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:base64Binary(\"bnh1YmJkdWNm\") < xs:base64Binary(\"dnR5cWxqZHZj\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "base64Binary-lt-7.xq"), Qry1),
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

'base64Binary-lt-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:base64Binary(\"eGF0YW1hYWdy\") le xs:base64Binary(\"dnR5cWxqZHZj\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "base64Binary-lt-8.xq"), Qry1),
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

'base64Binary-lt-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:base64Binary(\"dnR5cWxqZHZj\") le xs:base64Binary(\"bnh1YmJkdWNm\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "base64Binary-lt-9.xq"), Qry1),
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

'base64Binary-lt-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:base64Binary(\"dnR5cWxqZHZj\") le xs:base64Binary(\"eGF0YW1hYWdy\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "base64Binary-lt-10.xq"),
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

'base64Binary-lt-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(xs:base64Binary(\"eGF0YW1hYWdy\") <= xs:base64Binary(\"dnR5cWxqZHZj\")) and (xs:base64Binary(\"eGF0YW1hYWdy\") lt xs:base64Binary(\"dnR5cWxqZHZj\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "base64Binary-lt-11.xq"),
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

'base64Binary-lt-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(xs:base64Binary(\"eGF0YW1hYWdy\") <= xs:base64Binary(\"dnR5cWxqZHZj\")) or (xs:base64Binary(\"eGF0YW1hYWdy\") lt xs:base64Binary(\"dnR5cWxqZHZj\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "base64Binary-lt-12.xq"),
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

'base64Binary-lt-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:base64Binary(\"eGF0YW1hYWdy\") <= xs:base64Binary(\"eGF0YW1hYWdy\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "base64Binary-lt-13.xq"),
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

'base64Binary-lt-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "min((xs:base64Binary('qg=='), xs:base64Binary('uw=='), xs:base64Binary('iA==')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "base64Binary-lt-14.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:base64Binary('iA==')") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'base64Binary-lt-15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         for $i in (xs:base64Binary('qg=='), xs:base64Binary('uw=='), xs:base64Binary(''), xs:base64Binary('iA=='), xs:base64Binary('u7s='))\n"
        "         order by $i\n"
        "         return string($i)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "base64Binary-lt-15.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "'', 'iA==', 'qg==', 'uw==', 'u7s='") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'base64Binary-lt-16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:base64Binary(\"/w==\") lt xs:base64Binary(\"/w==\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "base64Binary-lt-16.xq"),
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

'base64Binary-lt-17'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:base64Binary(\"/w==\") le xs:base64Binary(\"qg==\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "base64Binary-lt-17.xq"),
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

'base64Binary-lt-18'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:base64Binary(\"/w==\") lt xs:base64Binary(\"qg==\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "base64Binary-lt-18.xq"),
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

'base64Binary-lt-19'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "xs:base64Binary(xs:base64Binary(xs:base64Binary(\"Aw==\"))) lt xs:base64Binary(\"Aw==\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "base64Binary-lt-19.xq"),
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

'base64Binary-lt-20'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "xs:base64Binary(xs:base64Binary(xs:base64Binary(\"AAE=\"))) le xs:base64Binary(\"AAI=\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "base64Binary-lt-20.xq"),
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

'base64Binary-lt-21'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:base64Binary(\"\") lt xs:base64Binary(\"\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "base64Binary-lt-21.xq"),
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

'base64Binary-lt-22'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:base64Binary(\"\") lt xs:base64Binary(\"AAI=\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "base64Binary-lt-22.xq"),
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

'base64Binary-lt-23'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:base64Binary(\"AA==\") lt xs:base64Binary(\"\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "base64Binary-lt-23.xq"),
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

'base64Binary-lt-24'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"AAE=\") < xs:base64Binary(\"AAI=\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "base64Binary-lt-24.xq"),
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

'base64Binary-lt-25'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(\"00\") lt xs:base64Binary(\"AAI=\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "base64Binary-lt-25.xq"),
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

'base64Binary-lt-26'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "\"\" lt xs:base64Binary(\"AAI=\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "base64Binary-lt-26.xq"),
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

'base64Binary-le-27'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:base64Binary(\"\") le xs:base64Binary(\"\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "base64Binary-le-27.xq"),
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

'base64Binary-le-28'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:base64Binary(\"\") le xs:base64Binary(\"AAE=\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "base64Binary-le-28.xq"),
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

'base64Binary-le-29'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:base64Binary(\"AA==\") lt xs:base64Binary(\"\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "base64Binary-le-29.xq"),
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

'base64Binary-lt-30'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare function local:base64Binary-value($arg as xs:boolean) as xs:base64Binary { \n"
        "            if ($arg) then xs:base64Binary('aGVsbG8=') else xs:base64Binary('Z29vZGJ5ZQ==') \n"
        "         }; \n"
        "         local:base64Binary-value(true()) lt local:base64Binary-value(false())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "base64Binary-lt-30.xq"),
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

'base64Binary-lt-31'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare function local:base64Binary-value($arg as xs:boolean) as xs:base64Binary { \n"
        "            if ($arg) then xs:base64Binary('aGVsbG8=') else xs:base64Binary('Z29vZGJ5ZQ==') \n"
        "         }; \n"
        "         not(local:base64Binary-value(true()) lt local:base64Binary-value(false()))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "base64Binary-lt-31.xq"),
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

'base64Binary-lt-32'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare function local:base64Binary-value($arg as xs:boolean) as xs:base64Binary { \n"
        "            if ($arg) then xs:base64Binary('aGVsbG8=') else xs:base64Binary('Z29vZGJ5ZQ==') \n"
        "         }; \n"
        "         not(local:base64Binary-value(true()) le local:base64Binary-value(false()))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "base64Binary-lt-32.xq"),
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
