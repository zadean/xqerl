-module('fn_string_to_codepoints_SUITE').

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

-export(['fn-string-to-codepoints1args-1'/1]).
-export(['fn-string-to-codepoints1args-2'/1]).
-export(['fn-string-to-codepoints1args-3'/1]).
-export(['fn-string-to-codepoints1args-4'/1]).
-export(['fn-string-to-codepoints1args-5'/1]).
-export(['fn-string-to-codepoints1args-6'/1]).
-export(['fn-string-to-codepoints1args-7'/1]).
-export(['fn-string-to-codepoints1args-8'/1]).
-export(['fn-string-to-codepoints-1'/1]).
-export(['fn-string-to-codepoints-2'/1]).
-export(['fn-string-to-codepoints-3'/1]).
-export(['fn-string-to-codepoints-4'/1]).
-export(['fn-string-to-codepoints-5'/1]).
-export(['fn-string-to-codepoints-6'/1]).
-export(['fn-string-to-codepoints-7'/1]).
-export(['fn-string-to-codepoints-8'/1]).
-export(['fn-string-to-codepoints-9'/1]).
-export(['fn-string-to-codepoints-10'/1]).
-export(['fn-string-to-codepoints-11'/1]).
-export(['fn-string-to-codepoints-12'/1]).
-export(['fn-string-to-codepoints-13'/1]).
-export(['fn-string-to-codepoints-14'/1]).
-export(['fn-string-to-codepoints-15'/1]).
-export(['K-StringToCodepointFunc-1'/1]).
-export(['K-StringToCodepointFunc-2'/1]).
-export(['K-StringToCodepointFunc-3'/1]).
-export(['K-StringToCodepointFunc-4'/1]).
-export(['K-StringToCodepointFunc-5'/1]).
-export(['K-StringToCodepointFunc-6'/1]).
-export(['K-StringToCodepointFunc-7'/1]).
-export(['K-StringToCodepointFunc-8'/1]).
-export(['K-StringToCodepointFunc-9'/1]).
-export(['K-StringToCodepointFunc-10'/1]).
-export(['K-StringToCodepointFunc-11'/1]).
-export(['K-StringToCodepointFunc-12'/1]).
-export(['K-StringToCodepointFunc-13'/1]).
-export(['K-StringToCodepointFunc-14'/1]).
-export(['K-StringToCodepointFunc-15'/1]).
-export(['K-StringToCodepointFunc-16'/1]).
-export(['K-StringToCodepointFunc-17'/1]).
-export(['K-StringToCodepointFunc-18'/1]).
-export(['K-StringToCodepointFunc-19'/1]).
-export(['K-StringToCodepointFunc-20'/1]).
-export(['K-StringToCodepointFunc-21'/1]).

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
        {group, group_1}
    ].

groups() ->
    [
        {group_0, [parallel], [
            'fn-string-to-codepoints1args-1',
            'fn-string-to-codepoints1args-2',
            'fn-string-to-codepoints1args-3',
            'fn-string-to-codepoints1args-4',
            'fn-string-to-codepoints1args-5',
            'fn-string-to-codepoints1args-6',
            'fn-string-to-codepoints1args-7',
            'fn-string-to-codepoints1args-8',
            'fn-string-to-codepoints-1',
            'fn-string-to-codepoints-2',
            'fn-string-to-codepoints-3',
            'fn-string-to-codepoints-4',
            'fn-string-to-codepoints-5',
            'fn-string-to-codepoints-6',
            'fn-string-to-codepoints-7',
            'fn-string-to-codepoints-8',
            'fn-string-to-codepoints-9',
            'fn-string-to-codepoints-10',
            'fn-string-to-codepoints-11',
            'fn-string-to-codepoints-12',
            'fn-string-to-codepoints-13',
            'fn-string-to-codepoints-14',
            'fn-string-to-codepoints-15'
        ]},
        {group_1, [parallel], [
            'K-StringToCodepointFunc-1',
            'K-StringToCodepointFunc-2',
            'K-StringToCodepointFunc-3',
            'K-StringToCodepointFunc-4',
            'K-StringToCodepointFunc-5',
            'K-StringToCodepointFunc-6',
            'K-StringToCodepointFunc-7',
            'K-StringToCodepointFunc-8',
            'K-StringToCodepointFunc-9',
            'K-StringToCodepointFunc-10',
            'K-StringToCodepointFunc-11',
            'K-StringToCodepointFunc-12',
            'K-StringToCodepointFunc-13',
            'K-StringToCodepointFunc-14',
            'K-StringToCodepointFunc-15',
            'K-StringToCodepointFunc-16',
            'K-StringToCodepointFunc-17',
            'K-StringToCodepointFunc-18',
            'K-StringToCodepointFunc-19',
            'K-StringToCodepointFunc-20',
            'K-StringToCodepointFunc-21'
        ]}
    ].

'fn-string-to-codepoints1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:string-to-codepoints(xs:string(\"This is a characte\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-string-to-codepoints1args-1.xq"),
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
            xqerl_test:assert_deep_eq(
                Res,
                "84, 104, 105, 115, 32, 105, 115, 32, 97, 32, 99, 104, 97, 114, 97, 99, 116, 101"
            )
        of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-string-to-codepoints1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:string-to-codepoints(xs:string(\"This is a characte\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-string-to-codepoints1args-2.xq"),
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
            xqerl_test:assert_deep_eq(
                Res,
                "84, 104, 105, 115, 32, 105, 115, 32, 97, 32, 99, 104, 97, 114, 97, 99, 116, 101"
            )
        of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-string-to-codepoints1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:string-to-codepoints(xs:string(\"This is a characte\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-string-to-codepoints1args-3.xq"),
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
            xqerl_test:assert_deep_eq(
                Res,
                "84, 104, 105, 115, 32, 105, 115, 32, 97, 32, 99, 104, 97, 114, 97, 99, 116, 101"
            )
        of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-string-to-codepoints1args-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "string-to-codepoints('bßڒき豈')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-string-to-codepoints1args-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "98, 223, 1682, 12365, 63744") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-string-to-codepoints1args-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:string-to-codepoints(\"\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-string-to-codepoints1args-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_empty(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-string-to-codepoints1args-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "string-to-codepoints(())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-string-to-codepoints1args-6.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_empty(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-string-to-codepoints1args-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "string-to-codepoints(12)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-string-to-codepoints1args-7.xq"),
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

'fn-string-to-codepoints1args-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "string-to-codepoints('abc','def')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-string-to-codepoints1args-8.xq"),
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

'fn-string-to-codepoints-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:string-to-codepoints('1')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-string-to-codepoints-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "49") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-string-to-codepoints-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:string-to-codepoints('a')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-string-to-codepoints-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "97") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-string-to-codepoints-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:string-to-codepoints('1a')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-string-to-codepoints-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "49, 97") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-string-to-codepoints-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:string-to-codepoints('#*^$')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-string-to-codepoints-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "35, 42, 94, 36") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-string-to-codepoints-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:string-to-codepoints('string-to-codepoints')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-string-to-codepoints-5.xq"),
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
            xqerl_test:assert_deep_eq(
                Res,
                "115, 116, 114, 105, 110, 103, 45, 116, 111, 45, 99, 111, 100, 101, 112, 111, 105, 110, 116, 115"
            )
        of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-string-to-codepoints-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:string-to-codepoints(xs:string(\"A String\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-string-to-codepoints-6.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "65, 32, 83, 116, 114, 105, 110, 103") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-string-to-codepoints-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:string-to-codepoints(fn:upper-case(\"A String\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-string-to-codepoints-7.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "(65, 32, 83, 84, 82, 73, 78, 71)") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-string-to-codepoints-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:string-to-codepoints(fn:lower-case(\"A String\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-string-to-codepoints-8.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "(97, 32, 115, 116, 114, 105, 110, 103)") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-string-to-codepoints-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(fn:string-to-codepoints(\"A String\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-string-to-codepoints-9.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "8") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-string-to-codepoints-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:avg(fn:string-to-codepoints(\"A String\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-string-to-codepoints-10.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "91") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-string-to-codepoints-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:empty(fn:string-to-codepoints(\"A String\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-string-to-codepoints-11.xq"),
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

'fn-string-to-codepoints-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:empty(fn:string-to-codepoints(()))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-string-to-codepoints-12.xq"),
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

'fn-string-to-codepoints-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:exists(fn:string-to-codepoints(()))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-string-to-codepoints-13.xq"),
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

'fn-string-to-codepoints-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:exists(fn:string-to-codepoints(\"A String\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-string-to-codepoints-14.xq"),
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

'fn-string-to-codepoints-15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal(fn:string-to-codepoints(\"𐀁𐀂\"), (65537, 65538))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-string-to-codepoints-15.xq"),
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

'K-StringToCodepointFunc-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "string-to-codepoints()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-StringToCodepointFunc-1.xq"),
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

'K-StringToCodepointFunc-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "string-to-codepoints(\"str\", \"INVALID\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-StringToCodepointFunc-2.xq"),
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

'K-StringToCodepointFunc-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(string-to-codepoints(()))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-StringToCodepointFunc-3.xq"),
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

'K-StringToCodepointFunc-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(string-to-codepoints(\"\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-StringToCodepointFunc-4.xq"),
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

'K-StringToCodepointFunc-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "count(string-to-codepoints(\"123\")) eq 3",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-StringToCodepointFunc-5.xq"),
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

'K-StringToCodepointFunc-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "count(string-to-codepoints(\"\")) eq 0",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-StringToCodepointFunc-6.xq"),
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

'K-StringToCodepointFunc-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(string-to-codepoints(\"\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-StringToCodepointFunc-7.xq"),
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

'K-StringToCodepointFunc-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "string-to-codepoints(\"e\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-StringToCodepointFunc-8.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "101") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-StringToCodepointFunc-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "deep-equal(string-to-codepoints(\"ee\"), (101, 101))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-StringToCodepointFunc-9.xq"),
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

'K-StringToCodepointFunc-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "deep-equal(string-to-codepoints(\"eee\"), (101, 101, 101))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-StringToCodepointFunc-10.xq"),
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

'K-StringToCodepointFunc-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "string-join(for $code in string-to-codepoints(\"example.com/\") return string($code), \"\") eq \"10112097109112108101469911110947\"",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-StringToCodepointFunc-11.xq"),
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

'K-StringToCodepointFunc-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "deep-equal(string-to-codepoints(\"Thérèse\"), (84, 104, 233, 114, 232, 115, 101))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-StringToCodepointFunc-12.xq"),
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

'K-StringToCodepointFunc-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "codepoints-to-string((87, 36, 56, 87, 102, 96)) eq \"W$8Wf`\"",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-StringToCodepointFunc-13.xq"),
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

'K-StringToCodepointFunc-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "string-to-codepoints(\"Thérèse\")[last()]",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-StringToCodepointFunc-14.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "101") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-StringToCodepointFunc-15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "string-to-codepoints(\"Thérèse\")[0 + last()]",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-StringToCodepointFunc-15.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "101") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-StringToCodepointFunc-16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "string-to-codepoints(\"Thérèse\")[last() - 1]",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-StringToCodepointFunc-16.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "115") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-StringToCodepointFunc-17'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "string-to-codepoints(\"Thérèse\")[last() - 0]",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-StringToCodepointFunc-17.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "101") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-StringToCodepointFunc-18'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "string-to-codepoints(\"Thérèse\")[0 + last()]",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-StringToCodepointFunc-18.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "101") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-StringToCodepointFunc-19'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "string-to-codepoints(\"Thérèse\")[last() - 2]",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-StringToCodepointFunc-19.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "232") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-StringToCodepointFunc-20'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(string-to-codepoints(\"Thérèse\")[last() - 7])",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-StringToCodepointFunc-20.xq"),
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

'K-StringToCodepointFunc-21'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "string-to-codepoints(\"Thérèse\")[last() - 6]",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-StringToCodepointFunc-21.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "84") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.
