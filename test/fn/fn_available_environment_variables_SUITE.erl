-module('fn_available_environment_variables_SUITE').

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

-export(['fn-available-environment-variables-001'/1]).
-export(['fn-available-environment-variables-002'/1]).
-export(['fn-available-environment-variables-003'/1]).
-export(['fn-available-environment-variables-004'/1]).
-export(['fn-available-environment-variables-005'/1]).
-export(['fn-available-environment-variables-006'/1]).
-export(['fn-available-environment-variables-007'/1]).
-export(['fn-available-environment-variables-008'/1]).
-export(['fn-available-environment-variables-009'/1]).
-export(['fn-available-environment-variables-010'/1]).
-export(['fn-available-environment-variables-011'/1]).

suite() -> [{timetrap, {seconds, 180}}].

init_per_group(_, Config) -> Config.

end_per_group(_, _Config) ->
    xqerl_code_server:unload(all).

end_per_suite(_Config) ->
    ct:timetrap({seconds, 60}),
    xqerl_code_server:unload(all).

init_per_suite(Config) ->
    %% Special for this suite, variables must be set
    true = os:putenv("QTTEST", "42"),
    true = os:putenv("QTTEST2", "other"),
    true = os:putenv("QTTESTEMPTY", ""),
    {ok, _} = application:ensure_all_started(xqerl),
    DD = filename:dirname(filename:dirname(filename:dirname(?config(data_dir, Config)))),
    TD = filename:join(DD, "QT3-test-suite"),
    __BaseDir = filename:join(TD, "fn"),
    [{base_dir, __BaseDir} | Config].

all() ->
    [
        {group, group_0}
    ].

groups() ->
    [
        {group_0, [parallel], [
            'fn-available-environment-variables-001',
            'fn-available-environment-variables-002',
            'fn-available-environment-variables-003',
            'fn-available-environment-variables-004',
            'fn-available-environment-variables-005',
            'fn-available-environment-variables-006',
            'fn-available-environment-variables-007',
            'fn-available-environment-variables-008',
            'fn-available-environment-variables-009',
            'fn-available-environment-variables-010',
            'fn-available-environment-variables-011'
        ]}
    ].

'fn-available-environment-variables-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:exists(fn:available-environment-variables#0)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-available-environment-variables-001.xq"),
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

'fn-available-environment-variables-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "not(fn:empty(fn:function-lookup(\n"
        "	  fn:QName('http://www.w3.org/2005/xpath-functions',\n"
        "	  'available-environment-variables'), 0)))\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-available-environment-variables-002.xq"),
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

'fn-available-environment-variables-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:available-environment-variables#1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-available-environment-variables-003.xq"),
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

'fn-available-environment-variables-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:available-environment-variables#2",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-available-environment-variables-004.xq"),
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

'fn-available-environment-variables-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $all := fn:available-environment-variables()\n"
        "	  return empty($all) or ($all[1] ne \"\")\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-available-environment-variables-005.xq"),
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

'fn-available-environment-variables-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "	   (for $e in fn:available-environment-variables()\n"
        "	   return fn:environment-variable($e) instance of xs:string) = (false())\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-available-environment-variables-006.xq"),
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

'fn-available-environment-variables-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "	  let $all := fn:available-environment-variables(), \n"
        "	      $n := count(fn:available-environment-variables())\n"
        "	  return\n"
        "	      count(\n"
        "		  for $e in $all return fn:environment-variable($e)\n"
        "	      ) eq $n\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-available-environment-variables-007.xq"),
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

'fn-available-environment-variables-008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "	  let $all := fn:available-environment-variables()\n"
        "	  return count($all) eq count(distinct-values($all))\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-available-environment-variables-008.xq"),
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

'fn-available-environment-variables-009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          \n"
        "	  let $first := <all>{\n"
        "		  for $e in fn:available-environment-variables()\n"
        "		  order by $e\n"
        "		  return <v name=\"$i\">{ fn:environment-variable($e) }</v>\n"
        "	      }</all>,\n"
        "	      $second := <all>{\n"
        "		  for $e in fn:available-environment-variables()\n"
        "		  order by $e\n"
        "		  return <v name=\"$i\">{ fn:environment-variable($e) }</v>\n"
        "	      }</all>\n"
        "	  return deep-equal($first, $second)\n"
        "	  \n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-available-environment-variables-009.xq"),
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

'fn-available-environment-variables-010'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "	  let $all := fn:available-environment-variables()\n"
        "	  return if (fn:empty($all)) then true()\n"
        "	  else fn:empty(fn:environment-variable(fn:string-join($all)))\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-available-environment-variables-010.xq"),
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

'fn-available-environment-variables-011'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "	  let $all := fn:available-environment-variables()\n"
        "	  return if (fn:empty($all)) then true()\n"
        "	  else if ($all = \"QTTEST\")\n"
        "	  then fn:environment-variable(\"QTTEST\") eq \"42\"\n"
        "	  else false()\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-available-environment-variables-011.xq"),
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
