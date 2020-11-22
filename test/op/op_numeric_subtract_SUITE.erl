-module('op_numeric_subtract_SUITE').

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

-export(['op-numeric-subtractint2args-1'/1]).
-export(['op-numeric-subtractint2args-2'/1]).
-export(['op-numeric-subtractint2args-3'/1]).
-export(['op-numeric-subtractint2args-4'/1]).
-export(['op-numeric-subtractint2args-5'/1]).
-export(['op-numeric-subtractintg2args-1'/1]).
-export(['op-numeric-subtractintg2args-2'/1]).
-export(['op-numeric-subtractintg2args-3'/1]).
-export(['op-numeric-subtractintg2args-4'/1]).
-export(['op-numeric-subtractintg2args-5'/1]).
-export(['op-numeric-subtractdec2args-1'/1]).
-export(['op-numeric-subtractdec2args-2'/1]).
-export(['op-numeric-subtractdec2args-3'/1]).
-export(['op-numeric-subtractdec2args-4'/1]).
-export(['op-numeric-subtractdec2args-5'/1]).
-export(['op-numeric-subtractdbl2args-1'/1]).
-export(['op-numeric-subtractdbl2args-2'/1]).
-export(['op-numeric-subtractdbl2args-3'/1]).
-export(['op-numeric-subtractdbl2args-4'/1]).
-export(['op-numeric-subtractdbl2args-5'/1]).
-export(['op-numeric-subtractflt2args-1'/1]).
-export(['op-numeric-subtractflt2args-2'/1]).
-export(['op-numeric-subtractflt2args-3'/1]).
-export(['op-numeric-subtractflt2args-4'/1]).
-export(['op-numeric-subtractflt2args-5'/1]).
-export(['op-numeric-subtractlng2args-1'/1]).
-export(['op-numeric-subtractlng2args-2'/1]).
-export(['op-numeric-subtractlng2args-3'/1]).
-export(['op-numeric-subtractlng2args-4'/1]).
-export(['op-numeric-subtractlng2args-5'/1]).
-export(['op-numeric-subtractusht2args-1'/1]).
-export(['op-numeric-subtractusht2args-2'/1]).
-export(['op-numeric-subtractusht2args-3'/1]).
-export(['op-numeric-subtractusht2args-4'/1]).
-export(['op-numeric-subtractusht2args-5'/1]).
-export(['op-numeric-subtractnint2args-1'/1]).
-export(['op-numeric-subtractnint2args-2'/1]).
-export(['op-numeric-subtractpint2args-1'/1]).
-export(['op-numeric-subtractpint2args-2'/1]).
-export(['op-numeric-subtractpint2args-3'/1]).
-export(['op-numeric-subtractulng2args-1'/1]).
-export(['op-numeric-subtractulng2args-2'/1]).
-export(['op-numeric-subtractulng2args-3'/1]).
-export(['op-numeric-subtractulng2args-4'/1]).
-export(['op-numeric-subtractulng2args-5'/1]).
-export(['op-numeric-subtractnpi2args-1'/1]).
-export(['op-numeric-subtractnpi2args-2'/1]).
-export(['op-numeric-subtractnpi2args-3'/1]).
-export(['op-numeric-subtractnpi2args-4'/1]).
-export(['op-numeric-subtractnpi2args-5'/1]).
-export(['op-numeric-subtractnni2args-1'/1]).
-export(['op-numeric-subtractnni2args-2'/1]).
-export(['op-numeric-subtractnni2args-3'/1]).
-export(['op-numeric-subtractnni2args-4'/1]).
-export(['op-numeric-subtractnni2args-5'/1]).
-export(['op-numeric-subtractsht2args-1'/1]).
-export(['op-numeric-subtractsht2args-2'/1]).
-export(['op-numeric-subtractsht2args-3'/1]).
-export(['op-numeric-subtractsht2args-4'/1]).
-export(['op-numeric-subtractsht2args-5'/1]).
-export(['op-numeric-subtractmix2args-1'/1]).
-export(['op-numeric-subtractmix2args-2'/1]).
-export(['op-numeric-subtractmix2args-3'/1]).
-export(['op-numeric-subtractmix2args-4'/1]).
-export(['op-numeric-subtractmix2args-5'/1]).
-export(['op-numeric-subtractmix2args-6'/1]).
-export(['op-numeric-subtractmix2args-7'/1]).
-export(['op-numeric-subtractmix2args-8'/1]).
-export(['op-numeric-subtractmix2args-9'/1]).
-export(['K-NumericSubtract-1'/1]).
-export(['K-NumericSubtract-2'/1]).
-export(['K-NumericSubtract-3'/1]).
-export(['K-NumericSubtract-4'/1]).
-export(['K-NumericSubtract-5'/1]).
-export(['K-NumericSubtract-6'/1]).
-export(['K-NumericSubtract-7'/1]).
-export(['K-NumericSubtract-8'/1]).
-export(['K-NumericSubtract-9'/1]).
-export(['K-NumericSubtract-10'/1]).
-export(['K-NumericSubtract-11'/1]).
-export(['K-NumericSubtract-12'/1]).
-export(['K-NumericSubtract-13'/1]).
-export(['K-NumericSubtract-14'/1]).
-export(['K-NumericSubtract-15'/1]).
-export(['K-NumericSubtract-16'/1]).
-export(['K-NumericSubtract-17'/1]).
-export(['K-NumericSubtract-18'/1]).
-export(['K-NumericSubtract-19'/1]).
-export(['K-NumericSubtract-20'/1]).
-export(['K-NumericSubtract-21'/1]).
-export(['K-NumericSubtract-22'/1]).
-export(['K-NumericSubtract-23'/1]).
-export(['K-NumericSubtract-24'/1]).
-export(['K-NumericSubtract-25'/1]).
-export(['K-NumericSubtract-26'/1]).
-export(['K-NumericSubtract-27'/1]).
-export(['K-NumericSubtract-28'/1]).
-export(['K-NumericSubtract-29'/1]).
-export(['K-NumericSubtract-30'/1]).
-export(['K-NumericSubtract-31'/1]).
-export(['K-NumericSubtract-32'/1]).
-export(['K-NumericSubtract-33'/1]).
-export(['K-NumericSubtract-34'/1]).
-export(['K-NumericSubtract-35'/1]).
-export(['K-NumericSubtract-36'/1]).
-export(['K-NumericSubtract-37'/1]).
-export(['K-NumericSubtract-38'/1]).
-export(['K2-NumericSubtract-1'/1]).
-export(['K2-NumericSubtract-2'/1]).
-export(['op-numeric-subtract-1'/1]).
-export(['cbcl-numeric-subtract-001'/1]).
-export(['cbcl-numeric-subtract-002'/1]).
-export(['cbcl-numeric-subtract-003'/1]).
-export(['cbcl-numeric-subtract-004'/1]).
-export(['cbcl-numeric-subtract-005'/1]).
-export(['cbcl-numeric-subtract-006'/1]).
-export(['cbcl-numeric-subtract-007'/1]).
-export(['cbcl-numeric-subtract-008'/1]).
-export(['op-numeric-subtract-big-01'/1]).

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
        {group, group_2},
        {group, group_3},
        {group, group_4}
    ].

groups() ->
    [
        {group_0, [parallel], [
            'op-numeric-subtractint2args-1',
            'op-numeric-subtractint2args-2',
            'op-numeric-subtractint2args-3',
            'op-numeric-subtractint2args-4',
            'op-numeric-subtractint2args-5',
            'op-numeric-subtractintg2args-1',
            'op-numeric-subtractintg2args-2',
            'op-numeric-subtractintg2args-3',
            'op-numeric-subtractintg2args-4',
            'op-numeric-subtractintg2args-5',
            'op-numeric-subtractdec2args-1',
            'op-numeric-subtractdec2args-2',
            'op-numeric-subtractdec2args-3',
            'op-numeric-subtractdec2args-4',
            'op-numeric-subtractdec2args-5',
            'op-numeric-subtractdbl2args-1',
            'op-numeric-subtractdbl2args-2',
            'op-numeric-subtractdbl2args-3',
            'op-numeric-subtractdbl2args-4',
            'op-numeric-subtractdbl2args-5',
            'op-numeric-subtractflt2args-1',
            'op-numeric-subtractflt2args-2',
            'op-numeric-subtractflt2args-3'
        ]},
        {group_1, [parallel], [
            'op-numeric-subtractflt2args-4',
            'op-numeric-subtractflt2args-5',
            'op-numeric-subtractlng2args-1',
            'op-numeric-subtractlng2args-2',
            'op-numeric-subtractlng2args-3',
            'op-numeric-subtractlng2args-4',
            'op-numeric-subtractlng2args-5',
            'op-numeric-subtractusht2args-1',
            'op-numeric-subtractusht2args-2',
            'op-numeric-subtractusht2args-3',
            'op-numeric-subtractusht2args-4',
            'op-numeric-subtractusht2args-5',
            'op-numeric-subtractnint2args-1',
            'op-numeric-subtractnint2args-2',
            'op-numeric-subtractpint2args-1',
            'op-numeric-subtractpint2args-2',
            'op-numeric-subtractpint2args-3',
            'op-numeric-subtractulng2args-1',
            'op-numeric-subtractulng2args-2',
            'op-numeric-subtractulng2args-3',
            'op-numeric-subtractulng2args-4',
            'op-numeric-subtractulng2args-5',
            'op-numeric-subtractnpi2args-1',
            'op-numeric-subtractnpi2args-2'
        ]},
        {group_2, [parallel], [
            'op-numeric-subtractnpi2args-3',
            'op-numeric-subtractnpi2args-4',
            'op-numeric-subtractnpi2args-5',
            'op-numeric-subtractnni2args-1',
            'op-numeric-subtractnni2args-2',
            'op-numeric-subtractnni2args-3',
            'op-numeric-subtractnni2args-4',
            'op-numeric-subtractnni2args-5',
            'op-numeric-subtractsht2args-1',
            'op-numeric-subtractsht2args-2',
            'op-numeric-subtractsht2args-3',
            'op-numeric-subtractsht2args-4',
            'op-numeric-subtractsht2args-5',
            'op-numeric-subtractmix2args-1',
            'op-numeric-subtractmix2args-2',
            'op-numeric-subtractmix2args-3',
            'op-numeric-subtractmix2args-4',
            'op-numeric-subtractmix2args-5',
            'op-numeric-subtractmix2args-6',
            'op-numeric-subtractmix2args-7',
            'op-numeric-subtractmix2args-8',
            'op-numeric-subtractmix2args-9',
            'K-NumericSubtract-1',
            'K-NumericSubtract-2'
        ]},
        {group_3, [parallel], [
            'K-NumericSubtract-3',
            'K-NumericSubtract-4',
            'K-NumericSubtract-5',
            'K-NumericSubtract-6',
            'K-NumericSubtract-7',
            'K-NumericSubtract-8',
            'K-NumericSubtract-9',
            'K-NumericSubtract-10',
            'K-NumericSubtract-11',
            'K-NumericSubtract-12',
            'K-NumericSubtract-13',
            'K-NumericSubtract-14',
            'K-NumericSubtract-15',
            'K-NumericSubtract-16',
            'K-NumericSubtract-17',
            'K-NumericSubtract-18',
            'K-NumericSubtract-19',
            'K-NumericSubtract-20',
            'K-NumericSubtract-21',
            'K-NumericSubtract-22',
            'K-NumericSubtract-23',
            'K-NumericSubtract-24',
            'K-NumericSubtract-25',
            'K-NumericSubtract-26'
        ]},
        {group_4, [parallel], [
            'K-NumericSubtract-27',
            'K-NumericSubtract-28',
            'K-NumericSubtract-29',
            'K-NumericSubtract-30',
            'K-NumericSubtract-31',
            'K-NumericSubtract-32',
            'K-NumericSubtract-33',
            'K-NumericSubtract-34',
            'K-NumericSubtract-35',
            'K-NumericSubtract-36',
            'K-NumericSubtract-37',
            'K-NumericSubtract-38',
            'K2-NumericSubtract-1',
            'K2-NumericSubtract-2',
            'op-numeric-subtract-1',
            'cbcl-numeric-subtract-001',
            'cbcl-numeric-subtract-002',
            'cbcl-numeric-subtract-003',
            'cbcl-numeric-subtract-004',
            'cbcl-numeric-subtract-005',
            'cbcl-numeric-subtract-006',
            'cbcl-numeric-subtract-007',
            'cbcl-numeric-subtract-008',
            'op-numeric-subtract-big-01'
        ]}
    ].

'op-numeric-subtractint2args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:int(\"-2147483648\") - xs:int(\"-2147483648\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractint2args-1.xq"),
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

'op-numeric-subtractint2args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:int(\"-1873914410\") - xs:int(\"-2147483648\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractint2args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "273569238") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-numeric-subtractint2args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:int(\"-1\") - xs:int(\"-2147483648\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractint2args-3.xq"),
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

'op-numeric-subtractint2args-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:int(\"-2147483648\") - xs:int(\"-1873914410\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractint2args-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "-273569238") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-numeric-subtractint2args-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:int(\"-1\") - xs:int(\"2147483647\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractint2args-5.xq"),
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

'op-numeric-subtractintg2args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:integer(\"-999999999999999999\") - xs:integer(\"-999999999999999999\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractintg2args-1.xq"),
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

'op-numeric-subtractintg2args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:integer(\"0\") - xs:integer(\"-999999999999999999\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractintg2args-2.xq"),
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

'op-numeric-subtractintg2args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:integer(\"0\") - xs:integer(\"-999999999999999999\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractintg2args-3.xq"),
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

'op-numeric-subtractintg2args-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:integer(\"-169006502882975695\") - xs:integer(\"830993497117024304\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractintg2args-4.xq"),
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

'op-numeric-subtractintg2args-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:integer(\"0\") - xs:integer(\"999999999999999999\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractintg2args-5.xq"),
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

'op-numeric-subtractdec2args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:decimal(\"-999999999999999999\") - xs:decimal(\"-999999999999999999\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractdec2args-1.xq"),
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

'op-numeric-subtractdec2args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:decimal(\"0\") - xs:decimal(\"-999999999999999999\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractdec2args-2.xq"),
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

'op-numeric-subtractdec2args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:decimal(\"0\") - xs:decimal(\"-999999999999999999\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractdec2args-3.xq"),
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

'op-numeric-subtractdec2args-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:decimal(\"-382624808391485160\") - xs:decimal(\"617375191608514839\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractdec2args-4.xq"),
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

'op-numeric-subtractdec2args-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:decimal(\"0\") - xs:decimal(\"999999999999999999\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractdec2args-5.xq"),
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

'op-numeric-subtractdbl2args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:double(\"-1.7976931348623157E308\") - xs:double(\"-1.7976931348623157E308\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractdbl2args-1.xq"),
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

'op-numeric-subtractdbl2args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:double(\"0\") - xs:double(\"-1.7976931348623157E308\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractdbl2args-2.xq"),
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

'op-numeric-subtractdbl2args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:double(\"0\") - xs:double(\"-1.7976931348623157E308\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractdbl2args-3.xq"),
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

'op-numeric-subtractdbl2args-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:double(\"-1.7976931348623157E308\") - xs:double(\"0\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractdbl2args-4.xq"),
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

'op-numeric-subtractdbl2args-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:double(\"0\") - xs:double(\"1.7976931348623157E308\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractdbl2args-5.xq"),
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

'op-numeric-subtractflt2args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:float(\"-3.4028235E38\") - xs:float(\"-3.4028235E38\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractflt2args-1.xq"),
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

'op-numeric-subtractflt2args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:float(\"0\") - xs:float(\"-3.4028235E38\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractflt2args-2.xq"),
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

'op-numeric-subtractflt2args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:float(\"0\") - xs:float(\"-3.4028235E38\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractflt2args-3.xq"),
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

'op-numeric-subtractflt2args-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:float(\"-3.4028235E38\") - xs:float(\"0\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractflt2args-4.xq"),
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

'op-numeric-subtractflt2args-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:float(\"0\") - xs:float(\"3.4028235E38\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractflt2args-5.xq"),
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

'op-numeric-subtractlng2args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:long(\"-92233720368547758\") - xs:long(\"-92233720368547758\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractlng2args-1.xq"),
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

'op-numeric-subtractlng2args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:long(\"-47175562203048468\") - xs:long(\"-92233720368547758\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractlng2args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "45058158165499290") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-numeric-subtractlng2args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:long(\"0\") - xs:long(\"-92233720368547758\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractlng2args-3.xq"),
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

'op-numeric-subtractlng2args-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:long(\"-92233720368547758\") - xs:long(\"-47175562203048468\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractlng2args-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "-45058158165499290") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-numeric-subtractlng2args-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:long(\"0\") - xs:long(\"92233720368547758\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractlng2args-5.xq"),
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

'op-numeric-subtractusht2args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:unsignedShort(\"0\") - xs:unsignedShort(\"0\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractusht2args-1.xq"),
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

'op-numeric-subtractusht2args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:unsignedShort(\"44633\") - xs:unsignedShort(\"0\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractusht2args-2.xq"),
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

'op-numeric-subtractusht2args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:unsignedShort(\"65535\") - xs:unsignedShort(\"0\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractusht2args-3.xq"),
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

'op-numeric-subtractusht2args-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:unsignedShort(\"44633\") - xs:unsignedShort(\"44633\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractusht2args-4.xq"),
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

'op-numeric-subtractusht2args-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:unsignedShort(\"65535\") - xs:unsignedShort(\"65535\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractusht2args-5.xq"),
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

'op-numeric-subtractnint2args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "xs:negativeInteger(\"-999999999999999999\") - xs:negativeInteger(\"-297014075999096793\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractnint2args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "-702985924000903206") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-numeric-subtractnint2args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:negativeInteger(\"-999999999999999999\") - xs:negativeInteger(\"-1\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractnint2args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "-999999999999999998") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-numeric-subtractpint2args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:positiveInteger(\"52704602390610033\") - xs:positiveInteger(\"1\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractpint2args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "52704602390610032") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-numeric-subtractpint2args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:positiveInteger(\"999999999999999999\") - xs:positiveInteger(\"1\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractpint2args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "999999999999999998") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-numeric-subtractpint2args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:positiveInteger(\"52704602390610034\") - xs:positiveInteger(\"52704602390610033\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractpint2args-3.xq"),
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

'op-numeric-subtractulng2args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:unsignedLong(\"0\") - xs:unsignedLong(\"0\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractulng2args-1.xq"),
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

'op-numeric-subtractulng2args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:unsignedLong(\"130747108607674654\") - xs:unsignedLong(\"0\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractulng2args-2.xq"),
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

'op-numeric-subtractulng2args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:unsignedLong(\"184467440737095516\") - xs:unsignedLong(\"0\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractulng2args-3.xq"),
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

'op-numeric-subtractulng2args-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:unsignedLong(\"130747108607674654\") - xs:unsignedLong(\"130747108607674654\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractulng2args-4.xq"),
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

'op-numeric-subtractulng2args-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:unsignedLong(\"184467440737095516\") - xs:unsignedLong(\"184467440737095516\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractulng2args-5.xq"),
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

'op-numeric-subtractnpi2args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "xs:nonPositiveInteger(\"-999999999999999999\") - xs:nonPositiveInteger(\"-999999999999999999\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractnpi2args-1.xq"),
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

'op-numeric-subtractnpi2args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "xs:nonPositiveInteger(\"-999999999999999999\") - xs:nonPositiveInteger(\"-999999999999999999\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractnpi2args-2.xq"),
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

'op-numeric-subtractnpi2args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "xs:nonPositiveInteger(\"-999999999999999999\") - xs:nonPositiveInteger(\"-999999999999999999\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractnpi2args-3.xq"),
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

'op-numeric-subtractnpi2args-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "xs:nonPositiveInteger(\"-999999999999999999\") - xs:nonPositiveInteger(\"-475688437271870490\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractnpi2args-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "-524311562728129509") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-numeric-subtractnpi2args-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:nonPositiveInteger(\"-999999999999999999\") - xs:nonPositiveInteger(\"0\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractnpi2args-5.xq"),
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

'op-numeric-subtractnni2args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:nonNegativeInteger(\"0\") - xs:nonNegativeInteger(\"0\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractnni2args-1.xq"),
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

'op-numeric-subtractnni2args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:nonNegativeInteger(\"303884545991464527\") - xs:nonNegativeInteger(\"0\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractnni2args-2.xq"),
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

'op-numeric-subtractnni2args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:nonNegativeInteger(\"999999999999999999\") - xs:nonNegativeInteger(\"0\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractnni2args-3.xq"),
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

'op-numeric-subtractnni2args-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "xs:nonNegativeInteger(\"303884545991464527\") - xs:nonNegativeInteger(\"303884545991464527\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractnni2args-4.xq"),
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

'op-numeric-subtractnni2args-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "xs:nonNegativeInteger(\"999999999999999999\") - xs:nonNegativeInteger(\"999999999999999999\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractnni2args-5.xq"),
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

'op-numeric-subtractsht2args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:short(\"-32768\") - xs:short(\"-32768\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractsht2args-1.xq"),
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

'op-numeric-subtractsht2args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:short(\"-5324\") - xs:short(\"-32768\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractsht2args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "27444") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-numeric-subtractsht2args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:short(\"-1\") - xs:short(\"-32768\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractsht2args-3.xq"),
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

'op-numeric-subtractsht2args-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:short(\"-32768\") - xs:short(\"-5324\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractsht2args-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "-27444") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-numeric-subtractsht2args-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:short(\"-1\") - xs:short(\"32767\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractsht2args-5.xq"),
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

'op-numeric-subtractmix2args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "1 - ()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractmix2args-1.xq"),
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
                    case xqerl_test:assert_empty(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPST0005") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0005 " ++ binary_to_list(F)};
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

'op-numeric-subtractmix2args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "1 - '1'",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractmix2args-2.xq"),
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

'op-numeric-subtractmix2args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "1 - xs:integer('1')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractmix2args-3.xq"),
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

'op-numeric-subtractmix2args-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "3 - <a> 2 </a>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractmix2args-4.xq"),
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

'op-numeric-subtractmix2args-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "3 - <a> <b> 2 </b> </a>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractmix2args-5.xq"),
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

'op-numeric-subtractmix2args-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "3 - <a> <b> 2</b> <c> 2</c> </a>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractmix2args-6.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORG0001") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORG0001 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-numeric-subtractmix2args-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<a> 2 </a> - <b> 1 </b>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractmix2args-7.xq"),
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

'op-numeric-subtractmix2args-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "1 - <a> x </a>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractmix2args-8.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORG0001") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORG0001 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-numeric-subtractmix2args-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "1 - <a/>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtractmix2args-9.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORG0001") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORG0001 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-NumericSubtract-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:double(6) - xs:double(2) eq 4",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-NumericSubtract-1.xq"),
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

'K-NumericSubtract-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:decimal(6) - xs:decimal(2) eq 4",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-NumericSubtract-2.xq"),
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

'K-NumericSubtract-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:integer(6) - xs:integer(2) eq 4",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-NumericSubtract-3.xq"),
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

'K-NumericSubtract-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:float(5) - xs:float(1) eq 4",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-NumericSubtract-4.xq"),
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

'K-NumericSubtract-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(xs:decimal(6) - xs:integer(2)) instance of xs:decimal",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-NumericSubtract-5.xq"),
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

'K-NumericSubtract-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(xs:integer(6) - xs:decimal(2)) instance of xs:decimal",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-NumericSubtract-6.xq"),
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

'K-NumericSubtract-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(xs:integer(6) - xs:integer(2)) instance of xs:integer",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-NumericSubtract-7.xq"),
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

'K-NumericSubtract-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(xs:decimal(6) - xs:decimal(2)) instance of xs:decimal",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-NumericSubtract-8.xq"),
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

'K-NumericSubtract-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(xs:decimal(6) - xs:float(2)) instance of xs:float",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-NumericSubtract-9.xq"),
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

'K-NumericSubtract-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(xs:float(6) - xs:decimal(2)) instance of xs:float",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-NumericSubtract-10.xq"),
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

'K-NumericSubtract-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(xs:float(6) - xs:integer(2)) instance of xs:float",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-NumericSubtract-11.xq"),
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

'K-NumericSubtract-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(xs:integer(6) - xs:float(2)) instance of xs:float",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-NumericSubtract-12.xq"),
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

'K-NumericSubtract-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(xs:float(6) - xs:float(2)) instance of xs:float",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-NumericSubtract-13.xq"),
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

'K-NumericSubtract-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(xs:decimal(6) - xs:double(2)) instance of xs:double",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-NumericSubtract-14.xq"),
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

'K-NumericSubtract-15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(xs:double(6) - xs:decimal(2)) instance of xs:double",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-NumericSubtract-15.xq"),
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

'K-NumericSubtract-16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(xs:double(6) - xs:float(2)) instance of xs:double",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-NumericSubtract-16.xq"),
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

'K-NumericSubtract-17'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(xs:float(6) - xs:double(2)) instance of xs:double",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-NumericSubtract-17.xq"),
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

'K-NumericSubtract-18'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(xs:double(6) - xs:integer(2)) instance of xs:double",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-NumericSubtract-18.xq"),
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

'K-NumericSubtract-19'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(xs:integer(6) - xs:double(2)) instance of xs:double",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-NumericSubtract-19.xq"),
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

'K-NumericSubtract-20'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(xs:double(6) - xs:double(2)) instance of xs:double",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-NumericSubtract-20.xq"),
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

'K-NumericSubtract-21'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "string(xs:float(\"NaN\") - 3) eq \"NaN\"",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-NumericSubtract-21.xq"),
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

'K-NumericSubtract-22'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "string(xs:double(\"NaN\") - 3) eq \"NaN\"",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-NumericSubtract-22.xq"),
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

'K-NumericSubtract-23'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "string(3 - xs:float(\"NaN\")) eq \"NaN\"",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-NumericSubtract-23.xq"),
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

'K-NumericSubtract-24'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "string(3 - xs:double(\"NaN\")) eq \"NaN\"",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-NumericSubtract-24.xq"),
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

'K-NumericSubtract-25'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "\"3\" - \"3\"",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-NumericSubtract-25.xq"),
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

'K-NumericSubtract-26'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"3\") - \"3\"",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-NumericSubtract-26.xq"),
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

'K-NumericSubtract-27'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(xs:untypedAtomic(\"3\") - 3) eq 0",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-NumericSubtract-27.xq"),
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

'K-NumericSubtract-28'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(3 - xs:untypedAtomic(\"3\")) eq 0",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-NumericSubtract-28.xq"),
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

'K-NumericSubtract-29'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(() - ())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-NumericSubtract-29.xq"),
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
                    case xqerl_test:assert_true(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPST0005") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0005 " ++ binary_to_list(F)};
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

'K-NumericSubtract-30'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(() - xs:float(3))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-NumericSubtract-30.xq"),
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
                    case xqerl_test:assert_true(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPST0005") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0005 " ++ binary_to_list(F)};
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

'K-NumericSubtract-31'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(() - xs:double(3))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-NumericSubtract-31.xq"),
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
                    case xqerl_test:assert_true(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPST0005") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0005 " ++ binary_to_list(F)};
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

'K-NumericSubtract-32'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(xs:untypedAtomic(\"3\") - xs:untypedAtomic(\"3\")) eq 0",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-NumericSubtract-32.xq"),
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

'K-NumericSubtract-33'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(xs:untypedAtomic(\"3\") - xs:untypedAtomic(\"3\")) instance of xs:double",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-NumericSubtract-33.xq"),
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

'K-NumericSubtract-34'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(xs:untypedAtomic(\"3\") - 1.1) instance of xs:double",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-NumericSubtract-34.xq"),
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

'K-NumericSubtract-35'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(1.1 - xs:untypedAtomic(\"3\")) instance of xs:double",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-NumericSubtract-35.xq"),
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

'K-NumericSubtract-36'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "1 eq (remove((current-time(), 1), 1) - 0)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-NumericSubtract-36.xq"),
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
                    case xqerl_test:assert_true(Res) of
                        true -> {comment, "Empty"};
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

'K-NumericSubtract-37'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "1 eq (remove((current-time(), 1), 1) + 0)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-NumericSubtract-37.xq"),
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
                    case xqerl_test:assert_true(Res) of
                        true -> {comment, "Empty"};
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

'K-NumericSubtract-38'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "1 eq (0 + remove((current-time(), 1), 1))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-NumericSubtract-38.xq"),
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
                    case xqerl_test:assert_true(Res) of
                        true -> {comment, "Empty"};
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

'K2-NumericSubtract-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "0 - xs:double(0)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-NumericSubtract-1.xq"),
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

'K2-NumericSubtract-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "0 - xs:float(0)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-NumericSubtract-2.xq"),
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

'op-numeric-subtract-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         for $x in (1, xs:decimal(2), xs:float(3), xs:double(4), xs:untypedAtomic(5)) \n"
        "         for $y in (1, xs:decimal(2), xs:float(3), xs:double(4), xs:untypedAtomic(5))\n"
        "         return ($x - $y)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtract-1.xq"),
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
                    end,
                    case xqerl_test:assert(Res, "$result[6] instance of xs:decimal") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result[7] instance of xs:decimal") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result[8] instance of xs:float") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result[9] instance of xs:double") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result[10] instance of xs:double") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result[11] instance of xs:float") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result[12] instance of xs:float") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result[13] instance of xs:float") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result[14] instance of xs:double") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result[15] instance of xs:double") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result[16] instance of xs:double") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result[17] instance of xs:double") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result[18] instance of xs:double") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result[19] instance of xs:double") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result[20] instance of xs:double") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result[21] instance of xs:double") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result[22] instance of xs:double") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result[23] instance of xs:double") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result[24] instance of xs:double") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result[25] instance of xs:double") of
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

'cbcl-numeric-subtract-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "-79228162514264337593543950335.0 - 1.0 lt 0.0",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-numeric-subtract-001.xq"),
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
                    case xqerl_test:assert_true(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "FOAR0002") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: FOAR0002 " ++ binary_to_list(F)};
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

'cbcl-numeric-subtract-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "-79228162514264337593543950335 - 1 lt 0",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-numeric-subtract-002.xq"),
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
                    case xqerl_test:assert_true(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "FOAR0002") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: FOAR0002 " ++ binary_to_list(F)};
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

'cbcl-numeric-subtract-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare function local:square($arg as xs:decimal) as xs:decimal { $arg * $arg }; \n"
        "      	local:square(7.5) - 0.0",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-numeric-subtract-003.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "56.25") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-numeric-subtract-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare function local:square($arg as xs:integer) as xs:integer { $arg * $arg }; \n"
        "      	local:square(7) - 0",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-numeric-subtract-004.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "49") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-numeric-subtract-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare function local:integer($x as xs:decimal) { if ($x mod 1 eq 0) then xs:integer($x) else $x }; \n"
        "      	(local:integer(2) - local:integer(2)) instance of xs:integer",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-numeric-subtract-005.xq"),
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

'cbcl-numeric-subtract-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare function local:integer($x as xs:decimal) { if ($x mod 1 eq 0) then xs:integer($x) else $x }; \n"
        "      	-(local:integer(2)) - -(local:integer(4))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-numeric-subtract-006.xq"),
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

'cbcl-numeric-subtract-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare function local:integer($x as xs:decimal) { if ($x mod 1 eq 0) then xs:integer($x) else $x }; \n"
        "      	local:integer(2) - -(local:integer(4))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-numeric-subtract-007.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "6") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-numeric-subtract-008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare function local:integer($x as xs:decimal) { if ($x mod 1 eq 0) then xs:integer($x) else $x }; \n"
        "      	-(local:integer(2)) - local:integer(4)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-numeric-subtract-008.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-6") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-numeric-subtract-big-01'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(-79228162514264337593543950335.0 - 1.0) cast as xs:string",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-numeric-subtract-big-01.xq"),
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
                    case xqerl_test:assert_string_value(Res, "-79228162514264337593543950336") of
                        true -> {comment, "String correct"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "FOAR0002") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: FOAR0002 " ++ binary_to_list(F)};
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
