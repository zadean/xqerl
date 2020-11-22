-module('prod_SwitchExpr_SUITE').

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

-export(['switch-001'/1]).
-export(['switch-002'/1]).
-export(['switch-003'/1]).
-export(['switch-004'/1]).
-export(['switch-005'/1]).
-export(['switch-006'/1]).
-export(['switch-007'/1]).
-export(['switch-008'/1]).
-export(['switch-009'/1]).
-export(['switch-010'/1]).
-export(['switch-011'/1]).
-export(['switch-012'/1]).
-export(['switch-013'/1]).
-export(['switch-014'/1]).
-export(['switch-015'/1]).
-export(['switch-016'/1]).
-export(['switch-017'/1]).
-export(['switch-018'/1]).
-export(['switch-901'/1]).
-export(['switch-902'/1]).
-export(['switch-903'/1]).
-export(['switch-904'/1]).
-export(['switch-905'/1]).
-export(['switch-906'/1]).
-export(['switch-907'/1]).
-export(['switch-908'/1]).
-export(['switch-909'/1]).

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
            'switch-001',
            'switch-002',
            'switch-003',
            'switch-004',
            'switch-005',
            'switch-006',
            'switch-007',
            'switch-008',
            'switch-009',
            'switch-010',
            'switch-011',
            'switch-012',
            'switch-013',
            'switch-014',
            'switch-015',
            'switch-016',
            'switch-017',
            'switch-018',
            'switch-901',
            'switch-902',
            'switch-903',
            'switch-904',
            'switch-905'
        ]},
        {group_1, [parallel], [
            'switch-906',
            'switch-907',
            'switch-908',
            'switch-909'
        ]}
    ].

'switch-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "xquery version \"3.0\"; \n"
        "        declare variable $animal as xs:string := \"Cat\"; \n"
        "        <out>{ switch ($animal) \n"
        "            case \"Cow\" return \"Moo\" \n"
        "            case \"Cat\" return \"Meow\" \n"
        "            case \"Duck\" return \"Quack\" \n"
        "            default return \"What's that odd noise?\" }</out>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "switch-001.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<out>Meow</out>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'switch-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "xquery version \"3.0\"; \n"
        "        declare variable $animal as xs:string := \"Dog\"; \n"
        "        <out>{ switch ($animal) \n"
        "            case \"Cow\" return \"Moo\"\n"
        "            case \"Cat\" return \"Meow\" \n"
        "            case \"Duck\" return \"Quack\" \n"
        "            default return \"What's that odd noise?\" }</out>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "switch-002.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<out>What's that odd noise?</out>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'switch-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "xquery version \"3.0\"; \n"
        "        declare variable $animal as xs:string := \"!?!?\"; \n"
        "        <out>{ switch (upper-case($animal)) \n"
        "            case \"COW\" return \"Moo\"\n"
        "            case \"CAT\" return \"Meow\" \n"
        "            case \"DUCK\" return \"Quack\" \n"
        "            case lower-case($animal) return \"Oink\" \n"
        "            default return \"What's that odd noise?\" }</out>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "switch-003.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<out>Oink</out>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'switch-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "xquery version \"3.0\"; \n"
        "        declare variable $animal as xs:string := \"goose\"; \n"
        "        <out>{ switch (upper-case($animal)) \n"
        "            case \"COW\" return \"Moo\" \n"
        "            case \"CAT\" return \"Meow\" \n"
        "            case \"DUCK\" case \"GOOSE\" return \"Quack\" \n"
        "            case \"PIG\" case \"SWINE\" return \"Oink\" \n"
        "            default return \"What's that odd noise?\" }</out>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "switch-004.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<out>Quack</out>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'switch-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "xquery version \"3.0\"; \n"
        "        declare variable $animal as xs:string := \"duck\"; \n"
        "        <out>{ switch (upper-case($animal)) \n"
        "            case \"COW\" return \"Moo\" \n"
        "            case \"CAT\" return \"Meow\" \n"
        "            case \"DUCK\" case \"GOOSE\" return \"Quack\" \n"
        "            case \"PIG\" case \"SWINE\" return \"Oink\" \n"
        "            default return \"What's that odd noise?\" }</out>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "switch-005.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<out>Quack</out>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'switch-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "xquery version \"3.0\"; \n"
        "        declare variable $number as xs:decimal := 42; \n"
        "        <out>{ switch ($number) case 21 return \"Moo\" \n"
        "            case current-time() return \"Meow\" \n"
        "            case 42 return \"Quack\" \n"
        "            default return 3.14159 }</out>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "switch-006.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<out>Quack</out>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'switch-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "xquery version \"3.0\"; \n"
        "        declare variable $in := <a>42</a>; \n"
        "        <out>{ switch ($in) \n"
        "            case 42 return \"Moo\" \n"
        "            case \"42\" return \"Meow\" \n"
        "            case 42e0 return \"Quack\" \n"
        "            case \"42e0\" return \"Oink\" \n"
        "            default return \"Expletive deleted\" }</out>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "switch-007.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<out>Meow</out>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'switch-008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "xquery version \"3.0\"; \n"
        "        declare variable $in := \"42\"; \n"
        "        <out>{ switch ($in) \n"
        "            case 42 return \"Moo\" \n"
        "            case <a>42</a> return \"Meow\" \n"
        "            case 42e0 return \"Quack\" \n"
        "            case \"42e0\" return \"Oink\" \n"
        "            default return \"Expletive deleted\" }</out>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "switch-008.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<out>Meow</out>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'switch-009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "xquery version \"3.0\"; \n"
        "        declare variable $in := (); \n"
        "        <out>{ switch ($in) \n"
        "            case 42 return \"Moo\" \n"
        "            case <a>42</a> return \"Meow\" \n"
        "            case 42e0 return \"Quack\" \n"
        "            case \"42e0\" return \"Oink\" \n"
        "            case () return \"Woof\" \n"
        "            default return \"Expletive deleted\" }</out>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "switch-009.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<out>Woof</out>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'switch-010'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "xquery version \"3.0\"; \n"
        "        declare variable $in := 21; \n"
        "        <out>{ switch ($in) \n"
        "            case 42 return \"Moo\" \n"
        "            case <a>42</a> return \"Meow\" \n"
        "            case 42e0 return \"Quack\" \n"
        "            case \"42e0\" return \"Oink\" \n"
        "            case () return \"Woof\" \n"
        "            default return \"Expletive deleted\" }</out>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "switch-010.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<out>Expletive deleted</out>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'switch-011'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "xquery version \"3.0\"; \n"
        "        declare variable $in := xs:double('NaN'); \n"
        "        <out>{ switch ($in) \n"
        "            case 42 return \"Moo\" \n"
        "            case <a>42</a> return \"Meow\" \n"
        "            case 42e0 return \"Quack\" \n"
        "            case \"42e0\" return \"Oink\" \n"
        "            case xs:float('NaN') return \"Woof\" \n"
        "            default return \"Expletive deleted\" }</out>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "switch-011.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<out>Woof</out>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'switch-012'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "xquery version \"3.0\"; \n"
        "        declare variable $in := 25; \n"
        "        declare variable $zero := 0; \n"
        "        <out>{ switch ($in) \n"
        "            case 42 return $in div $zero \n"
        "            case 25 return \"Baa\" \n"
        "            case 39 return $in div $zero \n"
        "            default return \"Woof\" }</out>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "switch-012.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<out>Baa</out>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'switch-013'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "xquery version \"3.0\"; \n"
        "        declare variable $in := 25; \n"
        "        declare variable $zero := 0; \n"
        "        <out>{ switch ($in) \n"
        "            case 42 return \"Quack\" \n"
        "            case 25 return \"Baa\" \n"
        "            case $in div $zero return \"Neigh\" \n"
        "            default return \"Woof\" }</out>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "switch-013.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<out>Baa</out>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'switch-014'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        " \n"
        "         let $v := xs:QName('a')\n"
        "         return switch($v)\n"
        "            case $v return 1\n"
        "            default return 2\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "switch-014.xq"), Qry1),
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

'switch-015'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        " \n"
        "         let $v := xs:date('2001-01-01')\n"
        "         return switch($v)\n"
        "         case $v return 1\n"
        "         default return 2\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "switch-015.xq"), Qry1),
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

'switch-016'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        " \n"
        "         let $v := xs:dateTime('2001-01-01T12:00:00')\n"
        "         return switch($v)\n"
        "         case current-dateTime() return 1\n"
        "         default return 2\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "switch-016.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "2") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'switch-017'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        " \n"
        "         let $v := current-dateTime()\n"
        "         return switch($v)\n"
        "         case xs:dateTime('2001-01-01T12:00:00') return 1\n"
        "         default return 2\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "switch-017.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "2") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'switch-018'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        " \n"
        "         let $v := xs:time('00:00:00Z')\n"
        "         return switch($v)\n"
        "         case xs:time('24:00:00Z') return 1\n"
        "         default return 2\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "switch-018.xq"), Qry1),
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

'switch-901'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "xquery version \"3.0\"; \n"
        "        declare variable $in := 2; \n"
        "        <out>{ switch (1 to $in) \n"
        "            case 1 return \"Moo\" \n"
        "            case 2 return \"Meow\" \n"
        "            case 3 return \"Quack\" \n"
        "            case 4 return \"Oink\" \n"
        "            default return \"Baa\" }</out>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "switch-901.xq"), Qry1),
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

'switch-902'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "xquery version \"3.0\"; \n"
        "        declare variable $in := 2; \n"
        "        <out>{ switch ($in) \n"
        "            case 1 return \"Moo\" \n"
        "            case 5 return \"Meow\" \n"
        "            case 3 return \"Quack\" \n"
        "            case ($in to 4) return \"Oink\" \n"
        "            default return \"Baa\" }</out>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "switch-902.xq"), Qry1),
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

'switch-903'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "xquery version \"3.0\"; \n"
        "        declare variable $in := 2; \n"
        "        <out>{ switch ($in) default return \"Baa\" }</out>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "switch-903.xq"), Qry1),
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

'switch-904'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "xquery version \"3.0\"; \n"
        "        declare variable $in := 2; \n"
        "        <out>{ switch ($in) \n"
        "            case 1 return \"Moo\" \n"
        "            case 5 return \"Meow\" \n"
        "            case 3 return \"Quack\" \n"
        "            case ($in to 4) return \"Oink\" }</out>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "switch-904.xq"), Qry1),
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

'switch-905'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "xquery version \"3.0\"; \n"
        "        declare variable $in := 2; \n"
        "        <out>{ switch ($in) \n"
        "            case 1 return \"Moo\" \n"
        "            case 5 return \"Meow\" return \"Quack\" \n"
        "            case ($in to 4) return \"Oink\" \n"
        "            default return \"Baa\" }</out>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "switch-905.xq"), Qry1),
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

'switch-906'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "xquery version \"3.0\"; \n"
        "        declare variable $in := 2; \n"
        "        <out>{ switch ($in) \n"
        "            case 1 return \"Moo\", \"Boo\" \n"
        "            case 5 return \"Meow\" \n"
        "            case 7 return \"Quack\" \n"
        "            case 4 return \"Oink\" \n"
        "            default return \"Baa\" }</out>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "switch-906.xq"), Qry1),
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

'switch-907'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "xquery version \"3.0\"; \n"
        "        declare variable $in := 2; \n"
        "        <out>{ switch $in \n"
        "            case 1 return \"Moo\", \"Boo\" \n"
        "            case 5 return \"Meow\" \n"
        "            case 7 return \"Quack\" \n"
        "            case 4 return \"Oink\" \n"
        "            default return \"Baa\" }</out>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "switch-907.xq"), Qry1),
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
                    case xqerl_test:assert_error(Res, "XPST0003") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0003 " ++ binary_to_list(F)};
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

'switch-908'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "xquery version \"3.0\"; \n"
        "        declare variable $in := 2; \n"
        "        <out>{ switch ($in) { \n"
        "            case 1 return \"Moo\", \"Boo\" \n"
        "            case 5 return \"Meow\" \n"
        "            case 7 return \"Quack\" \n"
        "            case 4 return \"Oink\" \n"
        "            default return \"Baa\" } }</out>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "switch-908.xq"), Qry1),
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

'switch-909'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "xquery version \"3.0\"; \n"
        "        declare variable $in := 2; \n"
        "        <out>{ switch ($in) \n"
        "            case 1: return \"Moo\", \"Boo\" \n"
        "            case 5: return \"Meow\" \n"
        "            case 7: return \"Quack\" \n"
        "            case 4: return \"Oink\" \n"
        "            default: return \"Baa\" }</out>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "switch-909.xq"), Qry1),
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
