-module('prod_Annotation_SUITE').

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

-export(['annotation-1'/1]).
-export(['annotation-2'/1]).
-export(['annotation-3'/1]).
-export(['annotation-4'/1]).
-export(['annotation-5'/1]).
-export(['annotation-6'/1]).
-export(['annotation-7'/1]).
-export(['annotation-8'/1]).
-export(['annotation-9'/1]).
-export(['annotation-10'/1]).
-export(['annotation-11'/1]).
-export(['annotation-12'/1]).
-export(['annotation-13'/1]).
-export(['annotation-14'/1]).
-export(['annotation-15'/1]).
-export(['annotation-16'/1]).
-export(['annotation-17'/1]).
-export(['annotation-18'/1]).
-export(['annotation-19'/1]).
-export(['annotation-20'/1]).
-export(['annotation-21'/1]).
-export(['annotation-22'/1]).
-export(['annotation-23'/1]).
-export(['annotation-24'/1]).
-export(['annotation-25'/1]).
-export(['annotation-26'/1]).
-export(['annotation-27'/1]).
-export(['annotation-28'/1]).
-export(['annotation-29'/1]).
-export(['annotation-30'/1]).
-export(['annotation-31'/1]).
-export(['annotation-32'/1]).
-export(['annotation-33'/1]).
-export(['annotation-34'/1]).
-export(['annotation-35'/1]).
-export(['annotation-36'/1]).
-export(['annotation-37'/1]).
-export(['annotation-38'/1]).
-export(['annotation-assertion-1'/1]).
-export(['annotation-assertion-2'/1]).
-export(['annotation-assertion-3'/1]).
-export(['annotation-assertion-4'/1]).
-export(['annotation-assertion-5'/1]).
-export(['annotation-assertion-6'/1]).
-export(['annotation-assertion-7'/1]).
-export(['annotation-assertion-8'/1]).
-export(['annotation-assertion-9'/1]).
-export(['annotation-assertion-10'/1]).
-export(['annotation-assertion-11'/1]).
-export(['annotation-assertion-12'/1]).
-export(['annotation-assertion-13'/1]).
-export(['annotation-assertion-14'/1]).
-export(['annotation-assertion-15'/1]).
-export(['annotation-assertion-16'/1]).
-export(['annotation-assertion-17'/1]).
-export(['annotation-assertion-18'/1]).
-export(['annotation-assertion-19'/1]).
-export(['annotation-assertion-20'/1]).

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
        {group, group_2}
    ].

groups() ->
    [
        {group_0, [parallel], [
            'annotation-1',
            'annotation-2',
            'annotation-3',
            'annotation-4',
            'annotation-5',
            'annotation-6',
            'annotation-7',
            'annotation-8',
            'annotation-9',
            'annotation-10',
            'annotation-11',
            'annotation-12',
            'annotation-13',
            'annotation-14',
            'annotation-15',
            'annotation-16',
            'annotation-17',
            'annotation-18',
            'annotation-19',
            'annotation-20',
            'annotation-21',
            'annotation-22',
            'annotation-23'
        ]},
        {group_1, [parallel], [
            'annotation-24',
            'annotation-25',
            'annotation-26',
            'annotation-27',
            'annotation-28',
            'annotation-29',
            'annotation-30',
            'annotation-31',
            'annotation-32',
            'annotation-33',
            'annotation-34',
            'annotation-35',
            'annotation-36',
            'annotation-37',
            'annotation-38',
            'annotation-assertion-1',
            'annotation-assertion-2',
            'annotation-assertion-3',
            'annotation-assertion-4',
            'annotation-assertion-5',
            'annotation-assertion-6',
            'annotation-assertion-7',
            'annotation-assertion-8',
            'annotation-assertion-9'
        ]},
        {group_2, [parallel], [
            'annotation-assertion-10',
            'annotation-assertion-11',
            'annotation-assertion-12',
            'annotation-assertion-13',
            'annotation-assertion-14',
            'annotation-assertion-15',
            'annotation-assertion-16',
            'annotation-assertion-17',
            'annotation-assertion-18',
            'annotation-assertion-19',
            'annotation-assertion-20'
        ]}
    ].

'annotation-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare namespace eg = \"http://example.com\";\n"
        "         declare %eg:sequential function local:foo() {\n"
        "            \"bar\"\n"
        "         };\n"
        "         local:foo()\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "annotation-1.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "\"bar\"") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'annotation-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare namespace eg = \"http://example.com\";\n"
        "         declare %eg:sequential variable $foo := \"bar\";\n"
        "         $foo\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "annotation-2.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "\"bar\"") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'annotation-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare namespace eg = \"http://example.com\";\n"
        "         %eg:sequential function () { \"bar\" } ()\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "annotation-3.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "\"bar\"") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'annotation-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare namespace java = \"http://example.com\";\n"
        "\n"
        "         declare %java:variable(\"java.lang.Integer.MAX_VALUE\") variable $max := 0;\n"
        "\n"
        "         declare %java:method(\"java.lang.Math.sin\") function local:sin($arg) { 0 }; \n"
        "\n"
        "         local:sin($max)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "annotation-4.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "0") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'annotation-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare namespace eg = \"http://example.com\";\n"
        "\n"
        "         declare %eg:integer(1234) variable $foo := 0;\n"
        "\n"
        "         declare %eg:integer(1234) function local:foo($arg) { $arg }; \n"
        "\n"
        "         local:foo($foo)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "annotation-5.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "0") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'annotation-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare namespace eg = \"http://example.com\";\n"
        "\n"
        "         declare %eg:integer(12.34) variable $foo := 0;\n"
        "\n"
        "         declare %eg:integer(12.34) function local:foo($arg) { $arg }; \n"
        "\n"
        "         local:foo($foo)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "annotation-6.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "0") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'annotation-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare namespace eg = \"http://example.com\";\n"
        "\n"
        "         declare %eg:integer(12e34) variable $foo := 0;\n"
        "\n"
        "         declare %eg:integer(12e34) function local:foo($arg) { $arg }; \n"
        "\n"
        "         local:foo($foo)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "annotation-7.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "0") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'annotation-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare namespace eg = \"http://example.com\";\n"
        "\n"
        "         declare %eg:integer(1+2) function local:foo() { 0 }; \n"
        "\n"
        "         local:foo()\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "annotation-8.xq"), Qry1),
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

'annotation-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare namespace eg = \"http://example.com\";\n"
        "\n"
        "         declare %eg:many(12e34,\"abc\",1234) variable $foo := 0;\n"
        "\n"
        "         declare %eg:many(\"xyz\", 987, 12.3) function local:foo($arg) { $arg }; \n"
        "\n"
        "         local:foo($foo)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "annotation-9.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "0") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'annotation-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare %Q{http://example.com}bar variable $foo := 0;\n"
        "\n"
        "         declare %Q{http://example.com}bar function local:foo($arg) { $arg }; \n"
        "\n"
        "         local:foo($foo)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "annotation-10.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "0") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'annotation-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare namespace eg = \"http://example.com\";\n"
        "\n"
        "         declare %eg:one %eg:two %eg:three variable $foo := 0;\n"
        "\n"
        "         declare %eg:one %eg:two %eg:three function local:foo($arg) { $arg }; \n"
        "\n"
        "         local:foo($foo)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "annotation-11.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "0") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'annotation-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare namespace eg = \"http://example.com\";\n"
        "\n"
        "         declare %eg:one%eg:two%eg:three(1)%eg:four variable $foo := 0;\n"
        "\n"
        "         declare %eg:one%eg:two%eg:three(1)%eg:four function local:foo($arg) { $arg }; \n"
        "\n"
        "         local:foo($foo)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "annotation-12.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "0") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'annotation-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare namespace eg = \"http://example.com\";\n"
        "\n"
        "         declare \n"
        "            %eg:one\n"
        "            %eg:two\n"
        "            (: Lorem ipsum dolor sit amet. :)\n"
        "            %eg:three(1)\n"
        "            %Q{http://example.com}four\n"
        "            variable $foo := 0;\n"
        "\n"
        "         declare \n"
        "            %eg:one\n"
        "            %eg:two\n"
        "            (: Lorem ipsum dolor sit amet. :)\n"
        "            %eg:three(1)\n"
        "            %Q{http://example.com}four\n"
        "            function local:foo($arg) { $arg }; \n"
        "\n"
        "         local:foo($foo)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "annotation-13.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "0") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'annotation-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare namespace eg = \"http://example.com\";\n"
        "\n"
        "         declare %eg:one(1, 2, 3) %eg:two(\"a\", \"b\") %eg:three(1.234) variable $foo := 0;\n"
        "\n"
        "         declare  %eg:one(1, 2, 3) %eg:two(\"a\", \"b\") %eg:three(1.234) function local:foo($arg) { $arg }; \n"
        "\n"
        "         local:foo($foo)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "annotation-14.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "0") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'annotation-15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare %xml:x function local:foo() {\n"
        "            \"bar\"\n"
        "         };\n"
        "         local:foo()\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "annotation-15.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0045") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0045 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'annotation-16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare %Q{http://www.w3.org/XML/1998/namespace}x variable $foo := \"bar\";\n"
        "         $foo\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "annotation-16.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0045") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0045 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'annotation-17'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare %xs:x function local:foo() {\n"
        "            \"bar\"\n"
        "         };\n"
        "         local:foo()\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "annotation-17.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0045") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0045 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'annotation-18'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare %Q{http://www.w3.org/2001/XMLSchema}x variable $foo := \"bar\";\n"
        "         $foo\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "annotation-18.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0045") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0045 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'annotation-19'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare %xsi:x function local:foo() {\n"
        "            \"bar\"\n"
        "         };\n"
        "         local:foo()\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "annotation-19.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0045") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0045 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'annotation-20'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare %Q{http://www.w3.org/2001/XMLSchema-instance}x variable $foo := \"bar\";\n"
        "         $foo\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "annotation-20.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0045") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0045 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'annotation-21'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare %fn:x function local:foo() {\n"
        "            \"bar\"\n"
        "         };\n"
        "         local:foo()\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "annotation-21.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0045") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0045 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'annotation-22'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare %Q{http://www.w3.org/2005/xpath-functions}x variable $foo := \"bar\";\n"
        "         $foo\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "annotation-22.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0045") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0045 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'annotation-23'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare %x variable $foo := \"bar\";\n"
        "         $foo\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "annotation-23.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0045") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0045 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'annotation-24'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare namespace math = \"http://www.w3.org/2005/xpath-functions/math\";\n"
        "         declare %math:x function local:foo() {\n"
        "            \"bar\"\n"
        "         };\n"
        "         local:foo()\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "annotation-24.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0045") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0045 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'annotation-25'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare %Q{http://www.w3.org/2005/xpath-functions/math}x variable $foo := \"bar\";\n"
        "         $foo\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "annotation-25.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0045") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0045 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'annotation-26'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare namespace opts = \"http://www.w3.org/2012/xquery\";\n"
        "         declare %opts:x function local:foo() {\n"
        "            \"bar\"\n"
        "         };\n"
        "         local:foo()\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "annotation-26.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0045") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0045 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'annotation-27'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare %Q{http://www.w3.org/2012/xquery}x variable $foo := \"bar\";\n"
        "         $foo\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "annotation-27.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0045") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0045 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'annotation-28'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare default function namespace \"http://example.com\";\n"
        "         declare %x variable $foo := \"bar\";\n"
        "         $foo\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "annotation-28.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0045") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0045 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'annotation-29'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare %local:x variable $foo := \"bar\";\n"
        "         $foo\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "annotation-29.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "\"bar\"") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'annotation-30'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare namespace eg = \"http://example.com\";\n"
        "         %eg:sequential(\"abc\", 3) function () { \"bar\" } ()\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "annotation-30.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "\"bar\"") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'annotation-31'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare namespace eg = \"http://example.com\";\n"
        "         % Q{http://example.com}sequential(\"abc\", 3) function () { \"bar\" } ()\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "annotation-31.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "\"bar\"") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'annotation-32'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare namespace eg = \"http://example.com\";\n"
        "         %eg:sequential(\"abc\", 3) %eg:memo-function function () { \"bar\" } ()\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "annotation-32.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "\"bar\"") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'annotation-33'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare namespace eg = \"http://example.com\";\n"
        "         %eg:sequential(true())  function () { \"bar\" } ()\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "annotation-33.xq"), Qry1),
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

'annotation-34'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare default function namespace \"http://example.com\";\n"
        "         declare %private function lt() as item()*{\n"
        "         ()\n"
        "         };\n"
        "         ()\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "annotation-34.xq"), Qry1),
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

'annotation-35'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare namespace array = \"http://www.w3.org/2005/xpath-functions/array\";\n"
        "         declare %array:x function local:foo() {\n"
        "            \"bar\"\n"
        "         };\n"
        "         local:foo()\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "annotation-35.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0045") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0045 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'annotation-36'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare namespace map = \"http://www.w3.org/2005/xpath-functions/map\";\n"
        "         declare %map:x function local:foo() {\n"
        "            \"bar\"\n"
        "         };\n"
        "         local:foo()\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "annotation-36.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0045") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0045 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'annotation-37'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare namespace a = \"http://www.example.org/annotation\";\n"
        "         declare %a:translucent(\"true\") %a:translucent(\"false\") function local:foo() {\n"
        "            \"bar\"\n"
        "         };\n"
        "         local:foo()\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "annotation-37.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "\"bar\"") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'annotation-38'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare namespace a = \"http://www.example.org/annotation\";\n"
        "         declare %a:translucent(\"true\") %a:translucent(\"false\") variable $foo := \"bar\";\n"
        "         $foo\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "annotation-38.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "\"bar\"") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'annotation-assertion-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare namespace eg = \"http://example.com\";\n"
        "         () instance of %eg:x function(*)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "annotation-assertion-1.xq"),
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

'annotation-assertion-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare namespace eg = \"http://example.com\";\n"
        "         () instance of %eg:x(\"foo\") function(*)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "annotation-assertion-2.xq"),
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

'annotation-assertion-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare namespace eg = \"http://example.com\";\n"
        "         () instance of %eg:x(1234) function(*)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "annotation-assertion-3.xq"),
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

'annotation-assertion-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare namespace eg = \"http://example.com\";\n"
        "         () instance of %eg:x(12.34) function(*)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "annotation-assertion-4.xq"),
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

'annotation-assertion-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare namespace eg = \"http://example.com\";\n"
        "         () instance of %eg:x(12e34) function(*)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "annotation-assertion-5.xq"),
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

'annotation-assertion-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare namespace eg = \"http://example.com\";\n"
        "         () instance of %eg:x(\"abc\", 12e34, 567) function(*)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "annotation-assertion-6.xq"),
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

'annotation-assertion-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         () instance of %Q{http://example.com}x function(*)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "annotation-assertion-7.xq"),
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

'annotation-assertion-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         () instance of %Q{http://example.com}x function(*)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "annotation-assertion-8.xq"),
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

'annotation-assertion-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare namespace eg = \"http://example.com\";\n"
        "         () instance of %eg:x %eg:y%eg:z %eg:w(1) function(*)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "annotation-assertion-9.xq"),
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

'annotation-assertion-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare namespace eg = \"http://example.com\";\n"
        "         () instance of %eg:x function(xs:integer) as xs:string\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "annotation-assertion-10.xq"),
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

'annotation-assertion-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         () instance of %xml:x function(*) \n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "annotation-assertion-11.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0045") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0045 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'annotation-assertion-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         () instance of %Q{http://www.w3.org/XML/1998/namespace}x function(*) \n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "annotation-assertion-12.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0045") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0045 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'annotation-assertion-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         () instance of %xs:x function(*) \n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "annotation-assertion-13.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0045") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0045 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'annotation-assertion-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         () instance of %Q{http://www.w3.org/2001/XMLSchema}x function(*) \n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "annotation-assertion-14.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0045") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0045 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'annotation-assertion-15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         () instance of %xsi:x function(*) \n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "annotation-assertion-15.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0045") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0045 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'annotation-assertion-16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         () instance of %fn:x function(*) \n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "annotation-assertion-16.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0045") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0045 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'annotation-assertion-17'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare namespace math = \"http://www.w3.org/2005/xpath-functions/math\";\n"
        "         () instance of %math:x function(*) \n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "annotation-assertion-17.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0045") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0045 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'annotation-assertion-18'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare namespace opts = \"http://www.w3.org/2012/xquery\";\n"
        "         () instance of %opts:x function(*) \n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "annotation-assertion-18.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0045") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0045 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'annotation-assertion-19'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare namespace eg = \"http://example.com\";\n"
        "         () instance of %eg:x(1) %eg:x(2) function(xs:integer) as xs:string\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "annotation-assertion-19.xq"),
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

'annotation-assertion-20'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare namespace eg = \"http://example.com\";\n"
        "         declare %public function local:three() as xs:integer {3};\n"
        "         local:three#0 instance of %public %private function(xs:integer) as xs:integer\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "annotation-assertion-20.xq"),
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
                    case xqerl_test:assert_false(Res) of
                        true -> {comment, "Empty"};
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
