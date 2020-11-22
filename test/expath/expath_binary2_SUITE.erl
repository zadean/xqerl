-module('expath_binary2_SUITE').

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

-export(['bin-hex1'/1]).
-export(['bin-hex2'/1]).
-export(['bin-hex3'/1]).
-export(['bin-hex4'/1]).
-export(['bin-hex5'/1]).
-export(['bin-hex6'/1]).
-export(['bin-hex7'/1]).
-export(['bin-hex8'/1]).
-export(['bin-hex9'/1]).
-export(['bin-hex10'/1]).
-export(['bin-hex11'/1]).
-export(['bin-hex12'/1]).
-export(['bin-hex13'/1]).
-export(['bin-hex14'/1]).
-export(['bin-bin1'/1]).
-export(['bin-bin2'/1]).
-export(['bin-bin3'/1]).
-export(['bin-bin4'/1]).
-export(['bin-bin5'/1]).
-export(['bin-bin6'/1]).
-export(['bin-bin7'/1]).
-export(['bin-bin8'/1]).
-export(['bin-bin9'/1]).
-export(['bin-bin10'/1]).
-export(['bin-bin11'/1]).
-export(['bin-bin12'/1]).
-export(['bin-octal1'/1]).
-export(['bin-octal2'/1]).
-export(['bin-octal3'/1]).
-export(['bin-octal4'/1]).
-export(['bin-octal5'/1]).
-export(['bin-octal6'/1]).
-export(['bin-octal7'/1]).
-export(['bin-octal8'/1]).
-export(['bin-octal9'/1]).
-export(['bin-octal10'/1]).
-export(['bin-octal11'/1]).
-export(['bin-to-octets1'/1]).
-export(['bin-to-octets2'/1]).
-export(['bin-to-octets3'/1]).
-export(['bin-to-octets4'/1]).
-export(['bin-from-octets1'/1]).
-export(['bin-from-octets2'/1]).
-export(['bin-from-octets3'/1]).
-export(['bin-from-octets4'/1]).
-export(['bin-from-octets5'/1]).
-export(['bin-length1'/1]).
-export(['bin-length2'/1]).
-export(['bin-length3'/1]).
-export(['bin-part1'/1]).
-export(['bin-part2'/1]).
-export(['bin-part3'/1]).
-export(['bin-part4'/1]).
-export(['bin-part5'/1]).
-export(['bin-part6'/1]).
-export(['bin-part7'/1]).
-export(['bin-part8'/1]).
-export(['bin-part9'/1]).
-export(['bin-join1'/1]).
-export(['bin-join2'/1]).
-export(['bin-join3'/1]).
-export(['bin-join4'/1]).
-export(['bin-join5'/1]).
-export(['bin-insert-before1'/1]).
-export(['bin-insert-before2'/1]).
-export(['bin-insert-before3'/1]).
-export(['bin-insert-before4'/1]).
-export(['bin-insert-before5'/1]).
-export(['bin-insert-before6'/1]).
-export(['bin-insert-before7'/1]).
-export(['bin-insert-before8'/1]).
-export(['bin-insert-before9'/1]).
-export(['bin-insert-before10'/1]).
-export(['bin-insert-before11'/1]).
-export(['bin-pad-left1'/1]).
-export(['bin-pad-left2'/1]).
-export(['bin-pad-left3'/1]).
-export(['bin-pad-left4'/1]).
-export(['bin-pad-left5'/1]).
-export(['bin-pad-right1'/1]).
-export(['bin-pad-right2'/1]).
-export(['bin-pad-right3'/1]).
-export(['bin-pad-right4'/1]).
-export(['bin-pad-right5'/1]).
-export(['bin-find1'/1]).
-export(['bin-find2'/1]).
-export(['bin-find3'/1]).
-export(['bin-find4'/1]).
-export(['bin-find5'/1]).
-export(['bin-find6'/1]).
-export(['bin-decode-string1'/1]).
-export(['bin-decode-string2'/1]).
-export(['bin-decode-string3'/1]).
-export(['bin-decode-string4'/1]).
-export(['bin-decode-string5'/1]).
-export(['bin-decode-string6'/1]).
-export(['bin-decode-string7'/1]).
-export(['bin-decode-string8'/1]).
-export(['bin-decode-string9'/1]).
-export(['bin-encode-string1'/1]).
-export(['bin-encode-string2'/1]).
-export(['bin-encode-string3'/1]).
-export(['bin-encode-string4'/1]).
-export(['bin-encode-string5'/1]).
-export(['bin-pack-double1'/1]).
-export(['bin-pack-double2'/1]).
-export(['bin-pack-double3'/1]).
-export(['bin-pack-double4'/1]).
-export(['bin-pack-double5'/1]).
-export(['bin-pack-double6'/1]).
-export(['bin-pack-double7'/1]).
-export(['bin-pack-double8'/1]).
-export(['bin-pack-double9'/1]).
-export(['bin-pack-double10'/1]).
-export(['bin-pack-double11'/1]).
-export(['bin-pack-double12'/1]).
-export(['bin-pack-double13'/1]).
-export(['bin-pack-double14'/1]).
-export(['bin-pack-double15'/1]).
-export(['bin-pack-float1'/1]).
-export(['bin-pack-float2'/1]).
-export(['bin-pack-float3'/1]).
-export(['bin-pack-float4'/1]).
-export(['bin-pack-float5'/1]).
-export(['bin-pack-float6'/1]).
-export(['bin-pack-float7'/1]).
-export(['bin-pack-float8'/1]).
-export(['bin-pack-float9'/1]).
-export(['bin-pack-float10'/1]).
-export(['bin-pack-float11'/1]).
-export(['bin-pack-float12'/1]).
-export(['bin-pack-float13'/1]).
-export(['bin-pack-float14'/1]).
-export(['bin-pack-float15'/1]).
-export(['bin-pack-integer1'/1]).
-export(['bin-pack-integer2'/1]).
-export(['bin-pack-integer3'/1]).
-export(['bin-pack-integer4'/1]).
-export(['bin-pack-integer5'/1]).
-export(['bin-pack-integer6'/1]).
-export(['bin-pack-integer7'/1]).
-export(['bin-pack-integer8'/1]).
-export(['bin-pack-integer9'/1]).
-export(['bin-pack-integer10'/1]).
-export(['bin-pack-integer11'/1]).
-export(['bin-pack-integer12'/1]).
-export(['bin-pack-integer13'/1]).
-export(['bin-pack-integer14'/1]).
-export(['bin-unpack-double1'/1]).
-export(['bin-unpack-double2'/1]).
-export(['bin-unpack-double3'/1]).
-export(['bin-unpack-double4'/1]).
-export(['bin-unpack-double5'/1]).
-export(['bin-unpack-double6'/1]).
-export(['bin-unpack-double7'/1]).
-export(['bin-unpack-double8'/1]).
-export(['bin-unpack-double9'/1]).
-export(['bin-unpack-double10'/1]).
-export(['bin-unpack-double11'/1]).
-export(['bin-unpack-double12'/1]).
-export(['bin-unpack-double13'/1]).
-export(['bin-unpack-double14'/1]).
-export(['bin-unpack-double15'/1]).
-export(['bin-unpack-double16'/1]).
-export(['bin-unpack-double17'/1]).
-export(['bin-unpack-double18'/1]).
-export(['bin-unpack-float1'/1]).
-export(['bin-unpack-float2'/1]).
-export(['bin-unpack-float3'/1]).
-export(['bin-unpack-float4'/1]).
-export(['bin-unpack-float5'/1]).
-export(['bin-unpack-float6'/1]).
-export(['bin-unpack-float7'/1]).
-export(['bin-unpack-float8'/1]).
-export(['bin-unpack-float9'/1]).
-export(['bin-unpack-float10'/1]).
-export(['bin-unpack-float11'/1]).
-export(['bin-unpack-float12'/1]).
-export(['bin-unpack-float13'/1]).
-export(['bin-unpack-float14'/1]).
-export(['bin-unpack-float15'/1]).
-export(['bin-unpack-float16'/1]).
-export(['bin-unpack-float17'/1]).
-export(['bin-unpack-float18'/1]).
-export(['bin-unpack-integer1'/1]).
-export(['bin-unpack-integer2'/1]).
-export(['bin-unpack-integer3'/1]).
-export(['bin-unpack-integer4'/1]).
-export(['bin-unpack-integer5'/1]).
-export(['bin-unpack-integer6'/1]).
-export(['bin-unpack-integer7'/1]).
-export(['bin-unpack-integer8'/1]).
-export(['bin-unpack-integer9'/1]).
-export(['bin-unpack-integer10'/1]).
-export(['bin-unpack-integer11'/1]).
-export(['bin-unpack-integer12'/1]).
-export(['bin-unpack-integer13'/1]).
-export(['bin-unpack-integer14'/1]).
-export(['bin-unpack-integer15'/1]).
-export(['bin-unpack-integer16'/1]).
-export(['bin-unpack-unsigned-integer1'/1]).
-export(['bin-unpack-unsigned-integer2'/1]).
-export(['bin-unpack-unsigned-integer3'/1]).
-export(['bin-unpack-unsigned-integer4'/1]).
-export(['bin-unpack-unsigned-integer5'/1]).
-export(['bin-unpack-unsigned-integer6'/1]).
-export(['bin-unpack-unsigned-integer7'/1]).
-export(['bin-unpack-unsigned-integer8'/1]).
-export(['bin-unpack-unsigned-integer9'/1]).
-export(['bin-unpack-unsigned-integer10'/1]).
-export(['bin-unpack-unsigned-integer11'/1]).
-export(['bin-unpack-unsigned-integer12'/1]).
-export(['bin-unpack-unsigned-integer13'/1]).
-export(['bin-unpack-unsigned-integer14'/1]).
-export(['bin-unpack-unsigned-integer15'/1]).
-export(['bin-unpack-unsigned-integer16'/1]).
-export(['bin-unpack-unsigned-integer17'/1]).
-export(['bin-unpack-unsigned-integer18'/1]).
-export(['bin-unpack-unsigned-integer19'/1]).
-export(['bin-unpack-unsigned-integer20'/1]).
-export(['bin-or1'/1]).
-export(['bin-or2'/1]).
-export(['bin-or3'/1]).
-export(['bin-or4'/1]).
-export(['bin-or5'/1]).
-export(['bin-xor1'/1]).
-export(['bin-xor2'/1]).
-export(['bin-xor3'/1]).
-export(['bin-xor4'/1]).
-export(['bin-xor5'/1]).
-export(['bin-xor6'/1]).
-export(['bin-and1'/1]).
-export(['bin-and2'/1]).
-export(['bin-and3'/1]).
-export(['bin-and4'/1]).
-export(['bin-and5'/1]).
-export(['bin-not1'/1]).
-export(['bin-not2'/1]).
-export(['bin-not3'/1]).
-export(['bin-shift1'/1]).
-export(['bin-shift2'/1]).
-export(['bin-shift3'/1]).
-export(['bin-shift4'/1]).

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
    __BaseDir = filename:join(TD, "expath"),
    [{base_dir, __BaseDir} | Config].

all() ->
    [
        {group, group_0},
        {group, group_1},
        {group, group_2},
        {group, group_3},
        {group, group_4},
        {group, group_5},
        {group, group_6},
        {group, group_7},
        {group, group_8},
        {group, group_9},
        {group, group_10}
    ].

groups() ->
    [
        {group_0, [parallel], [
            'bin-hex1',
            'bin-hex2',
            'bin-hex3',
            'bin-hex4',
            'bin-hex5',
            'bin-hex6',
            'bin-hex7',
            'bin-hex8',
            'bin-hex9',
            'bin-hex10',
            'bin-hex11',
            'bin-hex12',
            'bin-hex13',
            'bin-hex14',
            'bin-bin1',
            'bin-bin2',
            'bin-bin3',
            'bin-bin4',
            'bin-bin5',
            'bin-bin6',
            'bin-bin7',
            'bin-bin8',
            'bin-bin9'
        ]},
        {group_1, [parallel], [
            'bin-bin10',
            'bin-bin11',
            'bin-bin12',
            'bin-octal1',
            'bin-octal2',
            'bin-octal3',
            'bin-octal4',
            'bin-octal5',
            'bin-octal6',
            'bin-octal7',
            'bin-octal8',
            'bin-octal9',
            'bin-octal10',
            'bin-octal11',
            'bin-to-octets1',
            'bin-to-octets2',
            'bin-to-octets3',
            'bin-to-octets4',
            'bin-from-octets1',
            'bin-from-octets2',
            'bin-from-octets3',
            'bin-from-octets4',
            'bin-from-octets5',
            'bin-length1'
        ]},
        {group_2, [parallel], [
            'bin-length2',
            'bin-length3',
            'bin-part1',
            'bin-part2',
            'bin-part3',
            'bin-part4',
            'bin-part5',
            'bin-part6',
            'bin-part7',
            'bin-part8',
            'bin-part9',
            'bin-join1',
            'bin-join2',
            'bin-join3',
            'bin-join4',
            'bin-join5',
            'bin-insert-before1',
            'bin-insert-before2',
            'bin-insert-before3',
            'bin-insert-before4',
            'bin-insert-before5',
            'bin-insert-before6',
            'bin-insert-before7',
            'bin-insert-before8'
        ]},
        {group_3, [parallel], [
            'bin-insert-before9',
            'bin-insert-before10',
            'bin-insert-before11',
            'bin-pad-left1',
            'bin-pad-left2',
            'bin-pad-left3',
            'bin-pad-left4',
            'bin-pad-left5',
            'bin-pad-right1',
            'bin-pad-right2',
            'bin-pad-right3',
            'bin-pad-right4',
            'bin-pad-right5',
            'bin-find1',
            'bin-find2',
            'bin-find3',
            'bin-find4',
            'bin-find5',
            'bin-find6',
            'bin-decode-string1',
            'bin-decode-string2',
            'bin-decode-string3',
            'bin-decode-string4',
            'bin-decode-string5'
        ]},
        {group_4, [parallel], [
            'bin-decode-string6',
            'bin-decode-string7',
            'bin-decode-string8',
            'bin-decode-string9',
            'bin-encode-string1',
            'bin-encode-string2',
            'bin-encode-string3',
            'bin-encode-string4',
            'bin-encode-string5',
            'bin-pack-double1',
            'bin-pack-double2',
            'bin-pack-double3',
            'bin-pack-double4',
            'bin-pack-double5',
            'bin-pack-double6',
            'bin-pack-double7',
            'bin-pack-double8',
            'bin-pack-double9',
            'bin-pack-double10',
            'bin-pack-double11',
            'bin-pack-double12',
            'bin-pack-double13',
            'bin-pack-double14',
            'bin-pack-double15'
        ]},
        {group_5, [parallel], [
            'bin-pack-float1',
            'bin-pack-float2',
            'bin-pack-float3',
            'bin-pack-float4',
            'bin-pack-float5',
            'bin-pack-float6',
            'bin-pack-float7',
            'bin-pack-float8',
            'bin-pack-float9',
            'bin-pack-float10',
            'bin-pack-float11',
            'bin-pack-float12',
            'bin-pack-float13',
            'bin-pack-float14',
            'bin-pack-float15',
            'bin-pack-integer1',
            'bin-pack-integer2',
            'bin-pack-integer3',
            'bin-pack-integer4',
            'bin-pack-integer5',
            'bin-pack-integer6',
            'bin-pack-integer7',
            'bin-pack-integer8',
            'bin-pack-integer9'
        ]},
        {group_6, [parallel], [
            'bin-pack-integer10',
            'bin-pack-integer11',
            'bin-pack-integer12',
            'bin-pack-integer13',
            'bin-pack-integer14',
            'bin-unpack-double1',
            'bin-unpack-double2',
            'bin-unpack-double3',
            'bin-unpack-double4',
            'bin-unpack-double5',
            'bin-unpack-double6',
            'bin-unpack-double7',
            'bin-unpack-double8',
            'bin-unpack-double9',
            'bin-unpack-double10',
            'bin-unpack-double11',
            'bin-unpack-double12',
            'bin-unpack-double13',
            'bin-unpack-double14',
            'bin-unpack-double15',
            'bin-unpack-double16',
            'bin-unpack-double17',
            'bin-unpack-double18',
            'bin-unpack-float1'
        ]},
        {group_7, [parallel], [
            'bin-unpack-float2',
            'bin-unpack-float3',
            'bin-unpack-float4',
            'bin-unpack-float5',
            'bin-unpack-float6',
            'bin-unpack-float7',
            'bin-unpack-float8',
            'bin-unpack-float9',
            'bin-unpack-float10',
            'bin-unpack-float11',
            'bin-unpack-float12',
            'bin-unpack-float13',
            'bin-unpack-float14',
            'bin-unpack-float15',
            'bin-unpack-float16',
            'bin-unpack-float17',
            'bin-unpack-float18',
            'bin-unpack-integer1',
            'bin-unpack-integer2',
            'bin-unpack-integer3',
            'bin-unpack-integer4',
            'bin-unpack-integer5',
            'bin-unpack-integer6',
            'bin-unpack-integer7'
        ]},
        {group_8, [parallel], [
            'bin-unpack-integer8',
            'bin-unpack-integer9',
            'bin-unpack-integer10',
            'bin-unpack-integer11',
            'bin-unpack-integer12',
            'bin-unpack-integer13',
            'bin-unpack-integer14',
            'bin-unpack-integer15',
            'bin-unpack-integer16',
            'bin-unpack-unsigned-integer1',
            'bin-unpack-unsigned-integer2',
            'bin-unpack-unsigned-integer3',
            'bin-unpack-unsigned-integer4',
            'bin-unpack-unsigned-integer5',
            'bin-unpack-unsigned-integer6',
            'bin-unpack-unsigned-integer7',
            'bin-unpack-unsigned-integer8',
            'bin-unpack-unsigned-integer9',
            'bin-unpack-unsigned-integer10',
            'bin-unpack-unsigned-integer11',
            'bin-unpack-unsigned-integer12',
            'bin-unpack-unsigned-integer13',
            'bin-unpack-unsigned-integer14',
            'bin-unpack-unsigned-integer15'
        ]},
        {group_9, [parallel], [
            'bin-unpack-unsigned-integer16',
            'bin-unpack-unsigned-integer17',
            'bin-unpack-unsigned-integer18',
            'bin-unpack-unsigned-integer19',
            'bin-unpack-unsigned-integer20',
            'bin-or1',
            'bin-or2',
            'bin-or3',
            'bin-or4',
            'bin-or5',
            'bin-xor1',
            'bin-xor2',
            'bin-xor3',
            'bin-xor4',
            'bin-xor5',
            'bin-xor6',
            'bin-and1',
            'bin-and2',
            'bin-and3',
            'bin-and4',
            'bin-and5',
            'bin-not1',
            'bin-not2',
            'bin-not3'
        ]},
        {group_10, [parallel], [
            'bin-shift1',
            'bin-shift2',
            'bin-shift3',
            'bin-shift4'
        ]}
    ].

environment('binary', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, [{"http://expath.org/ns/binary", "bin"}]},
        {schemas, []},
        {resources, []},
        {modules, []}
    ].

'bin-hex1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:hex(()))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-hex1.xq"), Qry1),
            xqerl:run(Mod, Opts)
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

'bin-hex2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:hex(\"\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-hex2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-hex3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:hex(\"1\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-hex3.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"01\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-hex4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:hex(\"FF\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-hex4.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"FF\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-hex5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:hex(\"111\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-hex5.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"0111\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-hex6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:hex(\"FFF\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-hex6.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"0FFF\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-hex7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:hex(\"000\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-hex7.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"0000\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-hex8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:hex(\"FFFFF\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-hex8.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"0FFFFF\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-hex9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:hex(\"FFFFFFFFFFFFF\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-hex9.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"0FFFFFFFFFFFFF\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-hex10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:hex(\"10000000000000\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-hex10.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"10000000000000\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-hex11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:hex(\"10000000000000\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-hex11.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"10000000000000\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-hex12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:hex(\"11223F4E\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-hex12.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:base64Binary(\"ESI/Tg==\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-hex13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:hex(\"1223F4E\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-hex13.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:base64Binary(\"ASI/Tg==\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-hex14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:hex(\"X\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-hex14.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/binary}non-numeric-character") of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment,
                    "WE: Q{http://expath.org/ns/binary}non-numeric-character " ++ binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-bin1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:bin(()))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-bin1.xq"), Qry1),
            xqerl:run(Mod, Opts)
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

'bin-bin2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:bin(\"\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-bin2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-bin3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:bin(\"0\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-bin3.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"00\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-bin4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:bin(\"00\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-bin4.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"00\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-bin5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:bin(\"000000000\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-bin5.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"0000\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-bin6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:bin(\"1\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-bin6.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"01\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-bin7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:bin(\"10\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-bin7.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"02\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-bin8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:bin(\"11111111\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-bin8.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"FF\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-bin9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:bin(\"111111111\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-bin9.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"01FF\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-bin10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:bin(\"1101000111010101\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-bin10.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:base64Binary(\"0dU=\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-bin11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:bin(\"1000111010101\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-bin11.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:base64Binary(\"EdU=\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-bin12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:bin(\"X\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-bin12.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/binary}non-numeric-character") of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment,
                    "WE: Q{http://expath.org/ns/binary}non-numeric-character " ++ binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-octal1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:octal(())",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-octal1.xq"), Qry1),
            xqerl:run(Mod, Opts)
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

'bin-octal2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:octal(\"\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-octal2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-octal3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:octal(\"0\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-octal3.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"00\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-octal4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:octal(\"00\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-octal4.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"00\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-octal5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:octal(\"000\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-octal5.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"0000\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-octal6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:octal(\"007\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-octal6.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"0007\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-octal7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:octal(\"1\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-octal7.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"01\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-octal8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:octal(\"10\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-octal8.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"08\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-octal9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:octal(\"77\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-octal9.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"3F\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-octal10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:octal(\"11223047\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-octal10.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:base64Binary(\"JSYn\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-octal11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:octal(\"X\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-octal11.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/binary}non-numeric-character") of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment,
                    "WE: Q{http://expath.org/ns/binary}non-numeric-character " ++ binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-to-octets1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:to-octets(xs:base64Binary(xs:hexBinary(\"\")))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-to-octets1.xq"), Qry1),
            xqerl:run(Mod, Opts)
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

'bin-to-octets2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:to-octets(xs:base64Binary(xs:hexBinary(\"00\")))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-to-octets2.xq"), Qry1),
            xqerl:run(Mod, Opts)
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

'bin-to-octets3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:to-octets(xs:base64Binary(xs:hexBinary(\"FF\")))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-to-octets3.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "255") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-to-octets4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:to-octets(xs:base64Binary(xs:hexBinary(\"1122\")))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-to-octets4.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "17, 34") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-from-octets1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:from-octets(0))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-from-octets1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"00\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-from-octets2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:from-octets((1,127)))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-from-octets2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"017F\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-from-octets3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:from-octets((128,255)))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-from-octets3.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"80FF\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-from-octets4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:from-octets(-1)",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-from-octets4.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/binary}octet-out-of-range") of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment,
                    "WE: Q{http://expath.org/ns/binary}octet-out-of-range " ++ binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-from-octets5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:from-octets(256)",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-from-octets5.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/binary}octet-out-of-range") of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment,
                    "WE: Q{http://expath.org/ns/binary}octet-out-of-range " ++ binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-length1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:length(xs:base64Binary(xs:hexBinary(\"\")))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-length1.xq"), Qry1),
            xqerl:run(Mod, Opts)
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

'bin-length2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:length(xs:base64Binary(xs:hexBinary(\"FF\")))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-length2.xq"), Qry1),
            xqerl:run(Mod, Opts)
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

'bin-length3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:length(xs:base64Binary(xs:hexBinary(\"12345678\")))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-length3.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "4") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-part1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:part((), 0))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-part1.xq"), Qry1),
            xqerl:run(Mod, Opts)
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

'bin-part2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:part(xs:base64Binary(xs:hexBinary(\"FF\")), 0))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-part2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"FF\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-part3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:part(xs:base64Binary(xs:hexBinary(\"FF\")), 0, 1))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-part3.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"FF\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-part4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:part(xs:base64Binary(xs:hexBinary(\"FF\")), 1))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-part4.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-part5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:part(xs:base64Binary(xs:hexBinary(\"FF\")), 1, 0))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-part5.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-part6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:part(xs:base64Binary(xs:hexBinary(\"FF\")), -1)",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-part6.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/binary}index-out-of-range") of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment,
                    "WE: Q{http://expath.org/ns/binary}index-out-of-range " ++ binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-part7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:part(xs:base64Binary(xs:hexBinary(\"FF\")), 0, -1)",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-part7.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/binary}negative-size") of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment, "WE: Q{http://expath.org/ns/binary}negative-size " ++ binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-part8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:part(xs:base64Binary(xs:hexBinary(\"FF\")), 2)",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-part8.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/binary}index-out-of-range") of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment,
                    "WE: Q{http://expath.org/ns/binary}index-out-of-range " ++ binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-part9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:part(xs:base64Binary(xs:hexBinary(\"FF\")), 0, 2)",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-part9.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/binary}index-out-of-range") of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment,
                    "WE: Q{http://expath.org/ns/binary}index-out-of-range " ++ binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-join1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:join(()))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-join1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-join2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:join(xs:base64Binary(xs:hexBinary(\"\"))))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-join2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-join3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:join(xs:base64Binary(xs:hexBinary(\"FF\"))))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-join3.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"FF\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-join4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "xs:hexBinary(bin:join((xs:base64Binary(xs:hexBinary(\"FF\")), xs:base64Binary(xs:hexBinary(\"FF\")))))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-join4.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"FFFF\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-join5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:join((1 to 3) ! xs:base64Binary(xs:hexBinary(\"11\"))))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-join5.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"111111\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-insert-before1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:insert-before((), 0, ()))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-insert-before1.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'bin-insert-before2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:insert-before(xs:base64Binary(xs:hexBinary(\"12\")), 0, ()))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-insert-before2.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"12\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-insert-before3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:insert-before(xs:base64Binary(xs:hexBinary(\"12\")), 1, ()))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-insert-before3.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"12\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-insert-before4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "xs:hexBinary(bin:insert-before(xs:base64Binary(xs:hexBinary(\"1234\")), 0, xs:base64Binary(xs:hexBinary(\"56\"))))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-insert-before4.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"561234\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-insert-before5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "xs:hexBinary(bin:insert-before(xs:base64Binary(xs:hexBinary(\"1234\")), 1, xs:base64Binary(xs:hexBinary(\"56\"))))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-insert-before5.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"125634\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-insert-before6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "xs:hexBinary(bin:insert-before(xs:base64Binary(xs:hexBinary(\"1234\")), 2, xs:base64Binary(xs:hexBinary(\"56\"))))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-insert-before6.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"123456\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-insert-before7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "xs:hexBinary(bin:insert-before(xs:base64Binary(xs:hexBinary(\"12\")), 0, xs:base64Binary(xs:hexBinary(\"3456\"))))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-insert-before7.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"345612\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-insert-before8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "xs:hexBinary(bin:insert-before(xs:base64Binary(xs:hexBinary(\"12\")), 1, xs:base64Binary(xs:hexBinary(\"3456\"))))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-insert-before8.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"123456\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-insert-before9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "xs:hexBinary(bin:insert-before(xs:base64Binary(xs:hexBinary(\"12\")), 1, xs:base64Binary(xs:hexBinary(\"34\"))))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-insert-before9.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"1234\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-insert-before10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:insert-before(xs:base64Binary(xs:hexBinary(\"\")), -1, ())",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-insert-before10.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/binary}index-out-of-range") of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment,
                    "WE: Q{http://expath.org/ns/binary}index-out-of-range " ++ binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-insert-before11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:insert-before(xs:base64Binary(xs:hexBinary(\"\")), 1, ())",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-insert-before11.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/binary}index-out-of-range") of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment,
                    "WE: Q{http://expath.org/ns/binary}index-out-of-range " ++ binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-pad-left1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:pad-left(xs:base64Binary(xs:hexBinary(\"\")), 1))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-pad-left1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"00\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-pad-left2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:pad-left(xs:base64Binary(xs:hexBinary(\"\")), 1, 255))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-pad-left2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"FF\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-pad-left3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:pad-left(xs:base64Binary(xs:hexBinary(\"01\")), 2, 127))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-pad-left3.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"7F7F01\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-pad-left4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:pad-left(xs:base64Binary(xs:hexBinary(\"\")), -1)",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-pad-left4.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/binary}negative-size") of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment, "WE: Q{http://expath.org/ns/binary}negative-size " ++ binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-pad-left5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:pad-left(xs:base64Binary(xs:hexBinary(\"\")), 0, 256)",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-pad-left5.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/binary}octet-out-of-range") of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment,
                    "WE: Q{http://expath.org/ns/binary}octet-out-of-range " ++ binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-pad-right1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:pad-right(xs:base64Binary(xs:hexBinary(\"\")), 1))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-pad-right1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"00\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-pad-right2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:pad-right(xs:base64Binary(xs:hexBinary(\"\")), 1, 255))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-pad-right2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"FF\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-pad-right3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:pad-right(xs:base64Binary(xs:hexBinary(\"01\")), 2, 127))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-pad-right3.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"017F7F\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-pad-right4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:pad-right(xs:base64Binary(xs:hexBinary(\"\")), -1)",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-pad-right4.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/binary}negative-size") of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment, "WE: Q{http://expath.org/ns/binary}negative-size " ++ binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-pad-right5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:pad-right(xs:base64Binary(xs:hexBinary(\"\")), 0, 256)",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-pad-right5.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/binary}octet-out-of-range") of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment,
                    "WE: Q{http://expath.org/ns/binary}octet-out-of-range " ++ binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-find1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "bin:find(xs:base64Binary(xs:hexBinary(\"1122\")), 0, xs:base64Binary(xs:hexBinary(\"11\")))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-find1.xq"), Qry1),
            xqerl:run(Mod, Opts)
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

'bin-find2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "bin:find(xs:base64Binary(xs:hexBinary(\"1122\")), 1, xs:base64Binary(xs:hexBinary(\"11\")))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-find2.xq"), Qry1),
            xqerl:run(Mod, Opts)
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

'bin-find3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "bin:find(xs:base64Binary(xs:hexBinary(\"112233\")), 0, xs:base64Binary(xs:hexBinary(\"22\")))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-find3.xq"), Qry1),
            xqerl:run(Mod, Opts)
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

'bin-find4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "bin:find(xs:base64Binary(xs:hexBinary(\"\")), -1, xs:base64Binary(xs:hexBinary(\"11\")))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-find4.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/binary}index-out-of-range") of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment,
                    "WE: Q{http://expath.org/ns/binary}index-out-of-range " ++ binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-find5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:find(xs:base64Binary(xs:hexBinary(\"\")), 1, xs:base64Binary(xs:hexBinary(\"11\")))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-find5.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/binary}index-out-of-range") of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment,
                    "WE: Q{http://expath.org/ns/binary}index-out-of-range " ++ binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-find6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:find(xs:base64Binary(xs:hexBinary(\"\")), 0, xs:base64Binary(xs:hexBinary(\"\")))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-find6.xq"), Qry1),
            xqerl:run(Mod, Opts)
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

'bin-decode-string1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:decode-string(xs:base64Binary(xs:hexBinary(\"3132\")), \"US-ASCII\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-decode-string1.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "'12'") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-decode-string2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:decode-string(xs:base64Binary(xs:hexBinary(\"3132\")), \"UTF-8\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-decode-string2.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "'12'") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-decode-string3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:decode-string(xs:base64Binary(xs:hexBinary(\"313233\")), \"UTF-8\", 1, 1)",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-decode-string3.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "'2'") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-decode-string4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:decode-string(xs:base64Binary(xs:hexBinary(\"\")), \"UTF-8\", -1)",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-decode-string4.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/binary}index-out-of-range") of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment,
                    "WE: Q{http://expath.org/ns/binary}index-out-of-range " ++ binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-decode-string5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:decode-string(xs:base64Binary(xs:hexBinary(\"\")), \"UTF-8\", 0, -1)",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-decode-string5.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/binary}negative-size") of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment, "WE: Q{http://expath.org/ns/binary}negative-size " ++ binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-decode-string6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:decode-string(xs:base64Binary(xs:hexBinary(\"\")), \"UTF-8\", 1, 0)",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-decode-string6.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/binary}index-out-of-range") of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment,
                    "WE: Q{http://expath.org/ns/binary}index-out-of-range " ++ binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-decode-string7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:decode-string(xs:base64Binary(xs:hexBinary(\"\")), \"UTF-8\", 0, 1)",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-decode-string7.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/binary}index-out-of-range") of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment,
                    "WE: Q{http://expath.org/ns/binary}index-out-of-range " ++ binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-decode-string8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:decode-string(xs:base64Binary(xs:hexBinary(\"\")), \"X\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-decode-string8.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/binary}unknown-encoding") of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment,
                    "WE: Q{http://expath.org/ns/binary}unknown-encoding " ++ binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-decode-string9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:decode-string(xs:base64Binary(xs:hexBinary(\"FF\")), \"UTF-8\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-decode-string9.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/binary}conversion-error") of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment,
                    "WE: Q{http://expath.org/ns/binary}conversion-error " ++ binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-encode-string1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:encode-string(\"\", \"US-ASCII\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-encode-string1.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-encode-string2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:encode-string(\"a\", \"US-ASCII\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-encode-string2.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"61\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-encode-string3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:encode-string(\"Ä\", \"UTF-8\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-encode-string3.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"C384\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-encode-string4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:encode-string(\"\", \"X\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-encode-string4.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/binary}unknown-encoding") of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment,
                    "WE: Q{http://expath.org/ns/binary}unknown-encoding " ++ binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-encode-string5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:encode-string(\"Ä\", \"US-ASCII\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-encode-string5.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/binary}conversion-error") of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment,
                    "WE: Q{http://expath.org/ns/binary}conversion-error " ++ binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-pack-double1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:pack-double(0))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-pack-double1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"0000000000000000\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-pack-double2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:pack-double(1))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-pack-double2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"3FF0000000000000\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-pack-double3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:pack-double(-1))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-pack-double3.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"BFF0000000000000\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-pack-double4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:pack-double(-0e0))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-pack-double4.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"8000000000000000\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-pack-double5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:pack-double(0e0))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-pack-double5.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"0000000000000000\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-pack-double6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:pack-double(xs:double('INF')))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-pack-double6.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"7FF0000000000000\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-pack-double7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:pack-double(xs:double('-INF')))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-pack-double7.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"FFF0000000000000\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-pack-double8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:pack-double(xs:double('NaN')))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-pack-double8.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"7FF8000000000000\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-pack-double9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:pack-double(1, \"most-significant-first\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-pack-double9.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"3FF0000000000000\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-pack-double10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:pack-double(1, \"big-endian\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-pack-double10.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"3FF0000000000000\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-pack-double11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:pack-double(1, \"BE\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-pack-double11.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"3FF0000000000000\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-pack-double12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:pack-double(1, \"least-significant-first\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-pack-double12.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"000000000000F03F\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-pack-double13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:pack-double(1, \"little-endian\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-pack-double13.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"000000000000F03F\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-pack-double14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:pack-double(1, \"LE\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-pack-double14.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"000000000000F03F\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-pack-double15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:pack-double(1, \"X\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-pack-double15.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_error(Res, "Q{http://expath.org/ns/binary}unknown-significance-order")
        of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment,
                    "WE: Q{http://expath.org/ns/binary}unknown-significance-order " ++
                        binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-pack-float1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:pack-float(0))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-pack-float1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"00000000\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-pack-float2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:pack-float(1))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-pack-float2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"3F800000\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-pack-float3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:pack-float(-1))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-pack-float3.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"BF800000\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-pack-float4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:pack-float(xs:float(-0e0)))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-pack-float4.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"80000000\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-pack-float5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:pack-float(xs:float(0e0)))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-pack-float5.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"00000000\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-pack-float6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:pack-float(xs:float('INF')))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-pack-float6.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"7F800000\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-pack-float7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:pack-float(xs:float('-INF')))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-pack-float7.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"FF800000\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-pack-float8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:pack-float(xs:float('NaN')))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-pack-float8.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"7FC00000\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-pack-float9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:pack-float(1, \"most-significant-first\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-pack-float9.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"3F800000\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-pack-float10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:pack-float(1, \"big-endian\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-pack-float10.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"3F800000\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-pack-float11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:pack-float(1, \"BE\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-pack-float11.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"3F800000\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-pack-float12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:pack-float(1, \"least-significant-first\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-pack-float12.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"0000803F\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-pack-float13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:pack-float(1, \"little-endian\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-pack-float13.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"0000803F\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-pack-float14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:pack-float(1, \"LE\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-pack-float14.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"0000803F\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-pack-float15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:pack-float(1, \"X\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-pack-float15.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_error(Res, "Q{http://expath.org/ns/binary}unknown-significance-order")
        of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment,
                    "WE: Q{http://expath.org/ns/binary}unknown-significance-order " ++
                        binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-pack-integer1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:pack-integer(1, 0))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-pack-integer1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-pack-integer2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:pack-integer(1, 1))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-pack-integer2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"01\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-pack-integer3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:pack-integer(1, 2))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-pack-integer3.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"0001\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-pack-integer4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:pack-integer(9223372036854775807, 8))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-pack-integer4.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"7FFFFFFFFFFFFFFF\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-pack-integer5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:pack-integer(-1, 8))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-pack-integer5.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"FFFFFFFFFFFFFFFF\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-pack-integer6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:pack-integer(-1, 9))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-pack-integer6.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"FFFFFFFFFFFFFFFFFF\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-pack-integer7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:pack-integer(1, 2, \"most-significant-first\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-pack-integer7.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"0001\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-pack-integer8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:pack-integer(1, 2, \"big-endian\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-pack-integer8.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"0001\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-pack-integer9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:pack-integer(1, 2, \"BE\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-pack-integer9.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"0001\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-pack-integer10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:pack-integer(1, 2, \"least-significant-first\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-pack-integer10.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"0100\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-pack-integer11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:pack-integer(1, 2, \"little-endian\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-pack-integer11.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"0100\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-pack-integer12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:pack-integer(1, 2, \"LE\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-pack-integer12.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"0100\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-pack-integer13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:pack-integer(1, -1)",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-pack-integer13.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/binary}negative-size") of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment, "WE: Q{http://expath.org/ns/binary}negative-size " ++ binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-pack-integer14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:pack-integer(1, 1, \"X\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-pack-integer14.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_error(Res, "Q{http://expath.org/ns/binary}unknown-significance-order")
        of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment,
                    "WE: Q{http://expath.org/ns/binary}unknown-significance-order " ++
                        binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-unpack-double1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:unpack-double(xs:base64Binary(xs:hexBinary(\"0000000000000000\")), 0)",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-unpack-double1.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'bin-unpack-double2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:unpack-double(xs:base64Binary(xs:hexBinary(\"3FF0000000000000\")), 0)",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-unpack-double2.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'bin-unpack-double3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:unpack-double(xs:base64Binary(xs:hexBinary(\"BFF0000000000000\")), 0)",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-unpack-double3.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'bin-unpack-double4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:unpack-double(xs:base64Binary(xs:hexBinary(\"8000000000000000\")), 0)",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-unpack-double4.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "-0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-unpack-double5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:unpack-double(xs:base64Binary(xs:hexBinary(\"0000000000000000\")), 0)",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-unpack-double5.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'bin-unpack-double6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:unpack-double(xs:base64Binary(xs:hexBinary(\"7FF0000000000000\")), 0)",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-unpack-double6.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1 div 0e0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-unpack-double7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:unpack-double(xs:base64Binary(xs:hexBinary(\"FFF0000000000000\")), 0)",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-unpack-double7.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "-1 div 0e0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-unpack-double8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:unpack-double(xs:base64Binary(xs:hexBinary(\"7FF8000000000000\")), 0)",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-unpack-double8.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "number(\"NaN\")") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-unpack-double9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "bin:unpack-double(xs:base64Binary(xs:hexBinary(\"3FF0000000000000\")), 0, \"most-significant-first\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-unpack-double9.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'bin-unpack-double10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "bin:unpack-double(xs:base64Binary(xs:hexBinary(\"3FF0000000000000\")), 0, \"big-endian\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-unpack-double10.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'bin-unpack-double11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:unpack-double(xs:base64Binary(xs:hexBinary(\"3FF0000000000000\")), 0, \"BE\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-unpack-double11.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'bin-unpack-double12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "bin:unpack-double(xs:base64Binary(xs:hexBinary(\"000000000000F03F\")), 0, \"least-significant-first\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-unpack-double12.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'bin-unpack-double13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "bin:unpack-double(xs:base64Binary(xs:hexBinary(\"000000000000F03F\")), 0, \"little-endian\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-unpack-double13.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'bin-unpack-double14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:unpack-double(xs:base64Binary(xs:hexBinary(\"000000000000F03F\")), 0, \"LE\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-unpack-double14.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'bin-unpack-double15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:unpack-double(xs:base64Binary(xs:hexBinary(\"0000000000000000\")), -1)",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-unpack-double15.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/binary}index-out-of-range") of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment,
                    "WE: Q{http://expath.org/ns/binary}index-out-of-range " ++ binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-unpack-double16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:unpack-double(xs:base64Binary(xs:hexBinary(\"0000000000000000\")), 1)",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-unpack-double16.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/binary}index-out-of-range") of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment,
                    "WE: Q{http://expath.org/ns/binary}index-out-of-range " ++ binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-unpack-double17'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:unpack-double(xs:base64Binary(xs:hexBinary(\"00\")), 0)",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-unpack-double17.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/binary}index-out-of-range") of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment,
                    "WE: Q{http://expath.org/ns/binary}index-out-of-range " ++ binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-unpack-double18'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:unpack-double(xs:base64Binary(xs:hexBinary(\"0000000000000000\")), 0, \"X\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-unpack-double18.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_error(Res, "Q{http://expath.org/ns/binary}unknown-significance-order")
        of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment,
                    "WE: Q{http://expath.org/ns/binary}unknown-significance-order " ++
                        binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-unpack-float1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:unpack-float(xs:base64Binary(xs:hexBinary(\"00000000\")), 0)",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-unpack-float1.xq"), Qry1),
            xqerl:run(Mod, Opts)
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

'bin-unpack-float2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:unpack-float(xs:base64Binary(xs:hexBinary(\"3F800000\")), 0)",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-unpack-float2.xq"), Qry1),
            xqerl:run(Mod, Opts)
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

'bin-unpack-float3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:unpack-float(xs:base64Binary(xs:hexBinary(\"BF800000\")), 0)",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-unpack-float3.xq"), Qry1),
            xqerl:run(Mod, Opts)
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

'bin-unpack-float4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:unpack-float(xs:base64Binary(xs:hexBinary(\"80000000\")), 0)",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-unpack-float4.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "-0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-unpack-float5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:unpack-float(xs:base64Binary(xs:hexBinary(\"00000000\")), 0)",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-unpack-float5.xq"), Qry1),
            xqerl:run(Mod, Opts)
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

'bin-unpack-float6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:unpack-float(xs:base64Binary(xs:hexBinary(\"7F800000\")), 0)",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-unpack-float6.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1 div 0e0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-unpack-float7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:unpack-float(xs:base64Binary(xs:hexBinary(\"FF800000\")), 0)",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-unpack-float7.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "-1 div 0e0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-unpack-float8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:unpack-float(xs:base64Binary(xs:hexBinary(\"7FC00000\")), 0)",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-unpack-float8.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "number(\"NaN\")") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-unpack-float9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "bin:unpack-float(xs:base64Binary(xs:hexBinary(\"3F800000\")), 0, \"most-significant-first\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-unpack-float9.xq"), Qry1),
            xqerl:run(Mod, Opts)
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

'bin-unpack-float10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:unpack-float(xs:base64Binary(xs:hexBinary(\"3F800000\")), 0, \"big-endian\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-unpack-float10.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'bin-unpack-float11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:unpack-float(xs:base64Binary(xs:hexBinary(\"3F800000\")), 0, \"BE\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-unpack-float11.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'bin-unpack-float12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "bin:unpack-float(xs:base64Binary(xs:hexBinary(\"0000803F\")), 0, \"least-significant-first\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-unpack-float12.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'bin-unpack-float13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:unpack-float(xs:base64Binary(xs:hexBinary(\"0000803F\")), 0, \"little-endian\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-unpack-float13.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'bin-unpack-float14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:unpack-float(xs:base64Binary(xs:hexBinary(\"0000803F\")), 0, \"LE\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-unpack-float14.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'bin-unpack-float15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:unpack-float(xs:base64Binary(xs:hexBinary(\"00000000\")), -1)",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-unpack-float15.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/binary}index-out-of-range") of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment,
                    "WE: Q{http://expath.org/ns/binary}index-out-of-range " ++ binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-unpack-float16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:unpack-float(xs:base64Binary(xs:hexBinary(\"00000000\")), 1)",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-unpack-float16.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/binary}index-out-of-range") of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment,
                    "WE: Q{http://expath.org/ns/binary}index-out-of-range " ++ binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-unpack-float17'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:unpack-float(xs:base64Binary(xs:hexBinary(\"00\")), 0)",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-unpack-float17.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/binary}index-out-of-range") of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment,
                    "WE: Q{http://expath.org/ns/binary}index-out-of-range " ++ binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-unpack-float18'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:unpack-float(xs:base64Binary(xs:hexBinary(\"00000000\")), 0, \"X\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-unpack-float18.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_error(Res, "Q{http://expath.org/ns/binary}unknown-significance-order")
        of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment,
                    "WE: Q{http://expath.org/ns/binary}unknown-significance-order " ++
                        binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-unpack-integer1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:unpack-integer(xs:base64Binary(xs:hexBinary(\"01\")), 0, 0)",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-unpack-integer1.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'bin-unpack-integer2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:unpack-integer(xs:base64Binary(xs:hexBinary(\"01\")), 0, 1)",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-unpack-integer2.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'bin-unpack-integer3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:unpack-integer(xs:base64Binary(xs:hexBinary(\"FF\")), 0, 1)",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-unpack-integer3.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'bin-unpack-integer4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:unpack-integer(xs:base64Binary(xs:hexBinary(\"0001\")), 0, 2)",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-unpack-integer4.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'bin-unpack-integer5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:unpack-integer(xs:base64Binary(xs:hexBinary(\"7FFF\")), 0, 2)",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-unpack-integer5.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'bin-unpack-integer6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:unpack-integer(xs:base64Binary(xs:hexBinary(\"FFFF\")), 0, 2)",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-unpack-integer6.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'bin-unpack-integer7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "bin:unpack-integer(xs:base64Binary(xs:hexBinary(\"0001\")), 0, 2, \"most-significant-first\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-unpack-integer7.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'bin-unpack-integer8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:unpack-integer(xs:base64Binary(xs:hexBinary(\"0001\")), 0, 2, \"big-endian\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-unpack-integer8.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'bin-unpack-integer9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:unpack-integer(xs:base64Binary(xs:hexBinary(\"0001\")), 0, 2, \"BE\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-unpack-integer9.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'bin-unpack-integer10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "bin:unpack-integer(xs:base64Binary(xs:hexBinary(\"0100\")), 0, 2, \"least-significant-first\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-unpack-integer10.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'bin-unpack-integer11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:unpack-integer(xs:base64Binary(xs:hexBinary(\"0100\")), 0, 2, \"little-endian\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-unpack-integer11.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'bin-unpack-integer12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:unpack-integer(xs:base64Binary(xs:hexBinary(\"0100\")), 0, 2, \"LE\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-unpack-integer12.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'bin-unpack-integer13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:unpack-integer(xs:base64Binary(xs:hexBinary(\"00\")), -1, 0)",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-unpack-integer13.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/binary}index-out-of-range") of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment,
                    "WE: Q{http://expath.org/ns/binary}index-out-of-range " ++ binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-unpack-integer14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:unpack-integer(xs:base64Binary(xs:hexBinary(\"00\")), 0, -1)",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-unpack-integer14.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/binary}negative-size") of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment, "WE: Q{http://expath.org/ns/binary}negative-size " ++ binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-unpack-integer15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:unpack-integer(xs:base64Binary(xs:hexBinary(\"00\")), 0, 2)",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-unpack-integer15.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/binary}index-out-of-range") of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment,
                    "WE: Q{http://expath.org/ns/binary}index-out-of-range " ++ binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-unpack-integer16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:unpack-integer(xs:base64Binary(xs:hexBinary(\"00\")), 0, 0, \"X\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-unpack-integer16.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_error(Res, "Q{http://expath.org/ns/binary}unknown-significance-order")
        of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment,
                    "WE: Q{http://expath.org/ns/binary}unknown-significance-order " ++
                        binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-unpack-unsigned-integer1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:unpack-unsigned-integer(xs:base64Binary(xs:hexBinary(\"01\")), 0, 0)",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-unpack-unsigned-integer1.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'bin-unpack-unsigned-integer2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:unpack-unsigned-integer(xs:base64Binary(xs:hexBinary(\"01\")), 0, 1)",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-unpack-unsigned-integer2.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'bin-unpack-unsigned-integer3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:unpack-unsigned-integer(xs:base64Binary(xs:hexBinary(\"FF\")), 0, 1)",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-unpack-unsigned-integer3.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "255") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-unpack-unsigned-integer4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:unpack-unsigned-integer(xs:base64Binary(xs:hexBinary(\"0001\")), 0, 2)",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-unpack-unsigned-integer4.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'bin-unpack-unsigned-integer5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:unpack-unsigned-integer(xs:base64Binary(xs:hexBinary(\"7FFF\")), 0, 2)",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-unpack-unsigned-integer5.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'bin-unpack-unsigned-integer6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:unpack-unsigned-integer(xs:base64Binary(xs:hexBinary(\"FFFF\")), 0, 2)",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-unpack-unsigned-integer6.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'bin-unpack-unsigned-integer7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:unpack-unsigned-integer(xs:base64Binary(xs:hexBinary(\"FFFFFFFF\")), 0, 4)",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-unpack-unsigned-integer7.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "4294967295") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-unpack-unsigned-integer8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:unpack-unsigned-integer(xs:base64Binary(xs:hexBinary(\"01FFFFFFFF\")), 0, 5)",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-unpack-unsigned-integer8.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "8589934591") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-unpack-unsigned-integer9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:unpack-unsigned-integer(xs:base64Binary(xs:hexBinary(\"FFFFFFFFFF\")), 0, 5)",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-unpack-unsigned-integer9.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1099511627775") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-unpack-unsigned-integer10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:unpack-unsigned-integer(xs:base64Binary(xs:hexBinary(\"FFFFFFFFFFFF\")), 0, 6)",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-unpack-unsigned-integer10.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "281474976710655") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-unpack-unsigned-integer11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "bin:unpack-unsigned-integer(xs:base64Binary(xs:hexBinary(\"0001\")), 0, 2, \"most-significant-first\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-unpack-unsigned-integer11.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'bin-unpack-unsigned-integer12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "bin:unpack-unsigned-integer(xs:base64Binary(xs:hexBinary(\"0001\")), 0, 2, \"big-endian\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-unpack-unsigned-integer12.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'bin-unpack-unsigned-integer13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:unpack-unsigned-integer(xs:base64Binary(xs:hexBinary(\"0001\")), 0, 2, \"BE\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-unpack-unsigned-integer13.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'bin-unpack-unsigned-integer14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "bin:unpack-unsigned-integer(xs:base64Binary(xs:hexBinary(\"0100\")), 0, 2, \"least-significant-first\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-unpack-unsigned-integer14.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'bin-unpack-unsigned-integer15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "bin:unpack-unsigned-integer(xs:base64Binary(xs:hexBinary(\"0100\")), 0, 2, \"little-endian\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-unpack-unsigned-integer15.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'bin-unpack-unsigned-integer16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:unpack-unsigned-integer(xs:base64Binary(xs:hexBinary(\"0100\")), 0, 2, \"LE\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-unpack-unsigned-integer16.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'bin-unpack-unsigned-integer17'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:unpack-unsigned-integer(xs:base64Binary(xs:hexBinary(\"00\")), -1, 0)",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-unpack-unsigned-integer17.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/binary}index-out-of-range") of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment,
                    "WE: Q{http://expath.org/ns/binary}index-out-of-range " ++ binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-unpack-unsigned-integer18'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:unpack-unsigned-integer(xs:base64Binary(xs:hexBinary(\"00\")), 0, -1)",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-unpack-unsigned-integer18.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/binary}negative-size") of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment, "WE: Q{http://expath.org/ns/binary}negative-size " ++ binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-unpack-unsigned-integer19'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:unpack-unsigned-integer(xs:base64Binary(xs:hexBinary(\"00\")), 0, 2)",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-unpack-unsigned-integer19.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://expath.org/ns/binary}index-out-of-range") of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment,
                    "WE: Q{http://expath.org/ns/binary}index-out-of-range " ++ binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-unpack-unsigned-integer20'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:unpack-unsigned-integer(xs:base64Binary(xs:hexBinary(\"00\")), 0, 0, \"X\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "bin-unpack-unsigned-integer20.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_error(Res, "Q{http://expath.org/ns/binary}unknown-significance-order")
        of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment,
                    "WE: Q{http://expath.org/ns/binary}unknown-significance-order " ++
                        binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-or1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:or((), xs:base64Binary(xs:hexBinary(\"00\"))))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-or1.xq"), Qry1),
            xqerl:run(Mod, Opts)
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

'bin-or2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:or(xs:base64Binary(xs:hexBinary(\"00\")), ()))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-or2.xq"), Qry1),
            xqerl:run(Mod, Opts)
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

'bin-or3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "xs:hexBinary(bin:or(xs:base64Binary(xs:hexBinary(\"\")), xs:base64Binary(xs:hexBinary(\"\"))))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-or3.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-or4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "xs:hexBinary(bin:or(xs:base64Binary(xs:hexBinary(\"8081\")), xs:base64Binary(xs:hexBinary(\"7F7E\"))))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-or4.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"FFFF\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-or5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:or(xs:base64Binary(xs:hexBinary(\"00\")), xs:base64Binary(xs:hexBinary(\"\")))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-or5.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_error(Res, "Q{http://expath.org/ns/binary}differing-length-arguments")
        of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment,
                    "WE: Q{http://expath.org/ns/binary}differing-length-arguments " ++
                        binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-xor1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:xor((), xs:base64Binary(xs:hexBinary(\"00\"))))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-xor1.xq"), Qry1),
            xqerl:run(Mod, Opts)
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

'bin-xor2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:xor(xs:base64Binary(xs:hexBinary(\"00\")), ()))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-xor2.xq"), Qry1),
            xqerl:run(Mod, Opts)
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

'bin-xor3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "xs:hexBinary(bin:xor(xs:base64Binary(xs:hexBinary(\"\")), xs:base64Binary(xs:hexBinary(\"\"))))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-xor3.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-xor4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "xs:hexBinary(bin:xor(xs:base64Binary(xs:hexBinary(\"80\")), xs:base64Binary(xs:hexBinary(\"7F\"))))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-xor4.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"FF\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-xor5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "xs:hexBinary(bin:xor(xs:base64Binary(xs:hexBinary(\"1234\")), xs:base64Binary(xs:hexBinary(\"4321\"))))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-xor5.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"5115\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-xor6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:xor(xs:base64Binary(xs:hexBinary(\"00\")), xs:base64Binary(xs:hexBinary(\"\")))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-xor6.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_error(Res, "Q{http://expath.org/ns/binary}differing-length-arguments")
        of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment,
                    "WE: Q{http://expath.org/ns/binary}differing-length-arguments " ++
                        binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-and1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:and((), xs:base64Binary(xs:hexBinary(\"00\"))))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-and1.xq"), Qry1),
            xqerl:run(Mod, Opts)
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

'bin-and2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:and(xs:base64Binary(xs:hexBinary(\"00\")), ()))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-and2.xq"), Qry1),
            xqerl:run(Mod, Opts)
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

'bin-and3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "xs:hexBinary(bin:and(xs:base64Binary(xs:hexBinary(\"\")), xs:base64Binary(xs:hexBinary(\"\"))))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-and3.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-and4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "xs:hexBinary(bin:and(xs:base64Binary(xs:hexBinary(\"8081\")), xs:base64Binary(xs:hexBinary(\"7F7E\"))))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-and4.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"0000\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-and5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "bin:and(xs:base64Binary(xs:hexBinary(\"00\")), xs:base64Binary(xs:hexBinary(\"\")))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-and5.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_error(Res, "Q{http://expath.org/ns/binary}differing-length-arguments")
        of
            true ->
                {comment, "Correct error"};
            {true, F} ->
                {comment,
                    "WE: Q{http://expath.org/ns/binary}differing-length-arguments " ++
                        binary_to_list(F)};
            {false, F} ->
                F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-not1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:not(()))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-not1.xq"), Qry1),
            xqerl:run(Mod, Opts)
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

'bin-not2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:not(xs:base64Binary(xs:hexBinary(\"00\"))))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-not2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"FF\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-not3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:not(xs:base64Binary(xs:hexBinary(\"8081\"))))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-not3.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"7F7E\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-shift1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:shift((), 1))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-shift1.xq"), Qry1),
            xqerl:run(Mod, Opts)
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

'bin-shift2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:shift(xs:base64Binary(xs:hexBinary(\"77\")), 0))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-shift2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"77\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-shift3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:shift(xs:base64Binary(xs:hexBinary(\"33\")), 1))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-shift3.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"66\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'bin-shift4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(bin:shift(xs:base64Binary(xs:hexBinary(\"66\")), -1))",
    {Env, Opts} = xqerl_test:handle_environment(environment('binary', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "bin-shift4.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:hexBinary(\"33\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.
