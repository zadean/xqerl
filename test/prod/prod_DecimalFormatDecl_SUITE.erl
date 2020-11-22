-module('prod_DecimalFormatDecl_SUITE').

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

-export(['decimal-format-01'/1]).
-export(['decimal-format-02'/1]).
-export(['decimal-format-03'/1]).
-export(['decimal-format-04'/1]).
-export(['decimal-format-05'/1]).
-export(['decimal-format-06'/1]).
-export(['decimal-format-07'/1]).
-export(['decimal-format-09'/1]).
-export(['decimal-format-11'/1]).
-export(['decimal-format-12'/1]).
-export(['decimal-format-13'/1]).
-export(['decimal-format-14'/1]).
-export(['decimal-format-15'/1]).
-export(['decimal-format-16'/1]).
-export(['decimal-format-17'/1]).
-export(['decimal-format-18'/1]).
-export(['decimal-format-19'/1]).
-export(['decimal-format-20'/1]).
-export(['decimal-format-21'/1]).
-export(['decimal-format-31'/1]).
-export(['decimal-format-32'/1]).
-export(['decimal-format-33'/1]).
-export(['decimal-format-34'/1]).
-export(['decimal-format-35'/1]).
-export(['decimal-format-36'/1]).
-export(['decimal-format-37'/1]).
-export(['decimal-format-38'/1]).
-export(['decimal-format-39'/1]).
-export(['decimal-format-40'/1]).
-export(['decimal-format-901err'/1]).
-export(['decimal-format-902err'/1]).
-export(['decimal-format-903err'/1]).
-export(['decimal-format-904err'/1]).
-export(['decimal-format-905err'/1]).
-export(['decimal-format-906err'/1]).
-export(['decimal-format-907err'/1]).
-export(['decimal-format-908err'/1]).
-export(['decimal-format-909err'/1]).
-export(['decimal-format-910err'/1]).
-export(['decimal-format-911err'/1]).
-export(['decimal-format-912err'/1]).

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
        {group, group_1}
    ].

groups() ->
    [
        {group_0, [parallel], [
            'decimal-format-01',
            'decimal-format-02',
            'decimal-format-03',
            'decimal-format-04',
            'decimal-format-05',
            'decimal-format-06',
            'decimal-format-07',
            'decimal-format-09',
            'decimal-format-11',
            'decimal-format-12',
            'decimal-format-13',
            'decimal-format-14',
            'decimal-format-15',
            'decimal-format-16',
            'decimal-format-17',
            'decimal-format-18',
            'decimal-format-19',
            'decimal-format-20',
            'decimal-format-21',
            'decimal-format-31',
            'decimal-format-32',
            'decimal-format-33',
            'decimal-format-34'
        ]},
        {group_1, [parallel], [
            'decimal-format-35',
            'decimal-format-36',
            'decimal-format-37',
            'decimal-format-38',
            'decimal-format-39',
            'decimal-format-40',
            'decimal-format-901err',
            'decimal-format-902err',
            'decimal-format-903err',
            'decimal-format-904err',
            'decimal-format-905err',
            'decimal-format-906err',
            'decimal-format-907err',
            'decimal-format-908err',
            'decimal-format-909err',
            'decimal-format-910err',
            'decimal-format-911err',
            'decimal-format-912err'
        ]}
    ].

'decimal-format-01'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare default decimal-format zero-digit=\"0\" grouping-separator=\",\" decimal-separator=\".\";\n"
        "      	format-number(2392.14*36.58,'000,000.000000')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "decimal-format-01.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "087,504.481200") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'decimal-format-02'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare default decimal-format digit=\"#\" grouping-separator=\",\" decimal-separator=\".\";\n"
        "      	format-number(12792.14*96.58,'##,###,000.000###')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "decimal-format-02.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1,235,464.8812") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'decimal-format-03'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare default decimal-format minus-sign=\"-\" grouping-separator=\",\" decimal-separator=\".\";\n"
        "      	format-number(2792.14*(-36.58),'000,000.000###')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "decimal-format-03.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-102,136.4812") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'decimal-format-04'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare default decimal-format minus-sign=\"-\" pattern-separator=\";\" grouping-separator=\",\" decimal-separator=\".\";\n"
        "      	format-number(2392.14*(-36.58),'000,000.000###;###,###.000###')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "decimal-format-04.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "87,504.4812") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'decimal-format-05'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare decimal-format local:df minus-sign=\"-\" percent=\"%\" decimal-separator=\".\";\n"
        "      	format-number(0.4857,'###.###%', 'local:df')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "decimal-format-05.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "48.57%") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'decimal-format-06'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare decimal-format local:df minus-sign=\"-\" per-mille=\"‰\" decimal-separator=\".\";\n"
        "      	format-number(0.4857,'###.###‰')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "decimal-format-06.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "485.7‰") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'decimal-format-07'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare decimal-format local:df minus-sign=\"-\" currency-symbol=\"¤\" decimal-separator=\".\";\n"
        "      	format-number(95.4857,'¤###.####', \"local:df\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "decimal-format-07.xq"), Qry1),
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

'decimal-format-09'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare default decimal-format decimal-separator=\"|\" grouping-separator=\".\"; \n"
        "         format-number(931.4857,'000.000|###')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "decimal-format-09.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "000.931|486") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'decimal-format-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare default decimal-format digit=\"!\" pattern-separator=\"\\\";\n"
        "        format-number(26931.4,'+!!!,!!!.!!!\\-!!,!!!.!!!')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "decimal-format-11.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "+26,931.4") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'decimal-format-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare default decimal-format digit=\"!\" pattern-separator=\"\\\";\n"
        "        format-number(-26931.4,'+!!,!!!.!!!\\-!!!,!!!.!!!')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "decimal-format-12.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-26,931.4") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'decimal-format-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare default decimal-format digit=\"!\" pattern-separator=\"\\\";\n"
        "        format-number(-26931.4,'!!!,!!!.!!!')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "decimal-format-13.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-26,931.4") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'decimal-format-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare decimal-format local:df2 infinity=\"off-the-scale\";\n"
        "        format-number(1 div 0e0,'###############################', 'local:df2')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "decimal-format-14.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "off-the-scale") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'decimal-format-15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare decimal-format local:df2 NaN=\"non-numeric\";\n"
        "        format-number(number('none'), '#############', 'local:df2')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "decimal-format-15.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "non-numeric") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'decimal-format-16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare default decimal-format  per-mille=\"m\";\n"
        "        format-number(0.4857,'###.###m')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "decimal-format-16.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "485.7m") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'decimal-format-17'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare default decimal-format  minus-sign=\"_\";\n"
        "        format-number(-26931.4,'+###,###.###;-###,###.###')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "decimal-format-17.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-26,931.4") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'decimal-format-18'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare default decimal-format minus-sign=\"_\";\n"
        "        format-number(-26931.4,'###,###.###')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "decimal-format-18.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "_26,931.4") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'decimal-format-19'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare decimal-format myminus minus-sign=\"_\"; \n"
        "        concat(format-number(-26931.4,'###,###.###','myminus'), '/',\n"
        "        format-number(-42857.1,'###,###.###'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "decimal-format-19.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "_26,931.4/-42,857.1") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'decimal-format-20'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare namespace foo=\"http://foo.ns\";\n"
        "        declare decimal-format foo:decimal1  decimal-separator=\"!\" grouping-separator=\"*\";\n"
        "        declare decimal-format decimal1  decimal-separator=\"*\" grouping-separator=\"!\";\n"
        "        format-number(1234.567,'#*###*###!###','foo:decimal1')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "decimal-format-20.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1*234!567") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'decimal-format-21'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        import module namespace m=\"http://www.w3.org/TestModules/dfd-module-001\";\n"
        "        declare decimal-format df001 grouping-separator=\"!\";\n"
        "        format-number(123456.789,'#!###!###.###','df001')||'-'||m:do()\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Hints = [
        {filename:join(__BaseDir, "DecimalFormatDecl/dfd-module-001.xq"),
            <<"Q{http://www.w3.org/TestModules/dfd-module-001}">>}
    ],
    LibList = xqerl_code_server:compile_files(Hints),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "decimal-format-21.xq"), Qry1),
            xqerl:run(Mod)
        of
            Etup when is_tuple(Etup), element(1, Etup) == xqError ->
                xqerl_test:combined_error(Etup, LibList);
            D ->
                D
        catch
            _:E -> xqerl_test:combined_error(E, LibList)
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "123!456.789-123'456.789") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'decimal-format-31'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare default decimal-format decimal-separator = \"^\";\n"
        "        declare default decimal-format decimal-separator = \"^\";\n"
        "      	true()\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "decimal-format-31.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0111") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0111 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'decimal-format-32'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare decimal-format fmt1 decimal-separator = \"^\";\n"
        "        declare decimal-format fmt1 decimal-separator = \"^\";\n"
        "      	true()\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "decimal-format-32.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0111") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0111 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'decimal-format-33'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare decimal-format fmt1 decimal-separator = \"^\";\n"
        "        declare decimal-format fmt2 decimal-separator = \"~\";\n"
        "      	concat (format-number(123.45, '9999^999', 'fmt1'), \" and \",\n"
        "                format-number(123.45, '9999~999', 'fmt2'))\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "decimal-format-33.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "0123^450 and 0123~450") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'decimal-format-34'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare default decimal-format decimal-separator = \"^\" grouping-separator = \"\\\" decimal-separator = \"^\";\n"
        "      	true()\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "decimal-format-34.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0114") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0114 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'decimal-format-35'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare default decimal-format zero-digit = \"A\";\n"
        "      	true()\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "decimal-format-35.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0097") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0097 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'decimal-format-36'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare default decimal-format decimal-separator = \"~\" grouping-separator = \"~\";\n"
        "      	true()\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "decimal-format-36.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0098") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0098 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'decimal-format-37'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare default decimal-format decimal-separator = \",\";\n"
        "      	true()\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "decimal-format-37.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0098") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0098 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'decimal-format-38'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare default decimal-format decimal-sprtr = \".\";\n"
        "      	true()\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "decimal-format-38.xq"), Qry1),
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

'decimal-format-39'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare default decimal-format minus-sign=\"-\";\n"
        "        format-number(-26931.4,'###,###.###')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "decimal-format-39.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-26,931.4") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'decimal-format-40'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      declare default decimal-format NaN = \"0\";\n"
        "      format-number(xs:double('NaN'),'###,###.###')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "decimal-format-40.xq"), Qry1),
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

'decimal-format-901err'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare default decimal-format decimal-separator=\"!\" grouping-separator=\"!\";\n"
        "        format-number(931.4857,'###!###!###')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "decimal-format-901err.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0098") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0098 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'decimal-format-902err'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare default decimal-format digit='$';\n"
        "        format-number(931.4857,'000.$$0')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "decimal-format-902err.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FODF1310") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FODF1310 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'decimal-format-903err'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare default decimal-format digit='$';\n"
        "        declare default decimal-format minus-sign='_';\n"
        "        format-number(931.4857,'000.$$0')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "decimal-format-903err.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0111") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0111 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'decimal-format-904err'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare namespace a=\"http://a.com/\";\n"
        "        declare namespace b=\"http://a.com/\";\n"
        "        declare decimal-format a:one digit='$';\n"
        "        declare decimal-format two digit='$';\n"
        "        declare decimal-format three digit='$';\n"
        "        declare decimal-format four digit='$';\n"
        "        declare decimal-format five digit='$';\n"
        "        declare decimal-format b:one minus-sign=\"_\";\n"
        "        declare default decimal-format minus-sign='_';\n"
        "        format-number(931.4857,'000.$$0')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "decimal-format-904err.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0111") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0111 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'decimal-format-905err'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare decimal-format q decimal-separator=\".\" grouping-separator=\",\";\n"
        "        format-number(931.4857,'fred.ginger', 'q')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "decimal-format-905err.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FODF1310") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FODF1310 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'decimal-format-906err'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "format-number(931.45, '000.##0', 'foo:bar')",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "decimal-format-906err.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FODF1280") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FODF1280 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'decimal-format-907err'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare namespace a=\"http://a.com/\";\n"
        "        declare namespace b=\"http://a.com/\";\n"
        "        declare decimal-format a:one digit='$' zero-digit=\"0\" minus-sign=\"_\" digit=\"#\";\n"
        "        format-number(931.4857,'000.$$0', 'a:one')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "decimal-format-907err.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0114") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0114 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'decimal-format-908err'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare default decimal-format digit=\"one\";\n"
        "        format-number(931.4857,'000.$$0')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "decimal-format-908err.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0097") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0097 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'decimal-format-909err'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare default decimal-format zero-digit=\"1\";\n"
        "        format-number(931.4857,'000.$$0')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "decimal-format-909err.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0097") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0097 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'decimal-format-910err'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare default decimal-format zero-digit=\"a\";\n"
        "        format-number(931.4857,'aaa.$$a')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "decimal-format-910err.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0097") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0097 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'decimal-format-911err'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare default decimal-format minus-sign=\"--\";\n"
        "        format-number(931.4857,'000.$$0')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "decimal-format-911err.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0097") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0097 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'decimal-format-912err'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      declare default decimal-format decimal-separator = \"6\";\n"
        "      true()\n"
        "    ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "decimal-format-912err.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0098") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0098 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.
