-module('prod_AllowingEmpty_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['outer-001'/1]).
-export(['outer-002'/1]).
-export(['outer-003'/1]).
-export(['outer-004'/1]).
-export(['outer-005'/1]).
-export(['outer-006'/1]).
-export(['outer-007'/1]).
-export(['outer-008'/1]).
-export(['outer-009'/1]).
-export(['outer-010'/1]).
-export(['outer-011'/1]).
-export(['outer-012'/1]).
-export(['outer-013'/1]).
-export(['outer-014'/1]).
-export(['outer-015'/1]).
-export(['outer-016'/1]).
-export(['outer-017'/1]).
-export(['outer-018'/1]).
-export(['outer-019'/1]).
suite() -> [{timetrap,{seconds, 180}}].
init_per_group(_, Config) ->  Config.
end_per_group(_, _Config) -> 
   xqerl_code_server:unload(all).
end_per_suite(_Config) -> 
   ct:timetrap({seconds,60}), 
   xqerl_code_server:unload(all).
init_per_suite(Config) -> 
   {ok,_} = application:ensure_all_started(xqerl),
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   __BaseDir = filename:join(TD, "prod"),
   [{base_dir, __BaseDir}|Config].
all() -> [
   {group, group_0}
   ].
groups() -> [
   {group_0, [parallel], [
    'outer-001', 
    'outer-002', 
    'outer-003', 
    'outer-004', 
    'outer-005', 
    'outer-006', 
    'outer-007', 
    'outer-008', 
    'outer-009', 
    'outer-010', 
    'outer-011', 
    'outer-012', 
    'outer-013', 
    'outer-014', 
    'outer-015', 
    'outer-016', 
    'outer-017', 
    'outer-018', 
    'outer-019']}].

'outer-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $n as xs:integer external := 10; 
        <out>{ for $x allowing empty in 1 to $n return <a>{$x}</a> }</out>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "outer-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out><a>1</a><a>2</a><a>3</a><a>4</a><a>5</a><a>6</a><a>7</a><a>8</a><a>9</a><a>10</a></out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'outer-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $n as xs:integer external := 0; 
        <out>{ for $x allowing empty in 1 to $n return <a>{$x}</a> }</out>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "outer-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out><a/></out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'outer-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $n as xs:integer external := 10; 
        <out>{ for $x allowing empty at $p in 1 to $n return <a position=\"{$p}\">{$x}</a> }</out>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "outer-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out><a position=\"1\">1</a><a position=\"2\">2</a><a position=\"3\">3</a><a position=\"4\">4</a><a 
         position=\"5\">5</a><a position=\"6\">6</a><a position=\"7\">7</a><a position=\"8\">8</a><a position=\"9\">9</a><a position=\"10\">10</a></out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'outer-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $n as xs:integer external := 0; 
        <out>{ for $x allowing empty at $p in 1 to $n return <a position=\"{$p}\">{$x}</a> }</out>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "outer-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out><a position=\"0\"/></out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'outer-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $n as xs:integer external := 10;
        <out>{ string-join(for $x allowing empty in 1 to $n return concat('[',$x,']'), '|') }</out>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "outer-005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out>[1]|[2]|[3]|[4]|[5]|[6]|[7]|[8]|[9]|[10]</out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'outer-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $n as xs:integer external := 0; 
        <out>{ string-join(for $x allowing empty in 1 to $n return concat('[',$x,']'), '|') }</out>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "outer-006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out>[]</out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'outer-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $m as xs:integer external := 5; 
        declare variable $n as xs:integer external := 5;
         <out>{ for $x allowing empty at $p in 1 to $m, $y at $q in 1 to $n return <a p=\"{$p}\" q=\"{$q}\">{$x},{$y}</a> }</out>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "outer-007.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out><a p=\"1\" q=\"1\">1,1</a><a p=\"1\" q=\"2\">1,2</a><a p=\"1\" q=\"3\">1,3</a><a p=\"1\" q=\"4\">1,4</a><a p=\"1\" q=\"5\">1,5</a><a 
         p=\"2\" q=\"1\">2,1</a><a p=\"2\" q=\"2\">2,2</a><a p=\"2\" q=\"3\">2,3</a><a p=\"2\" q=\"4\">2,4</a><a p=\"2\" q=\"5\">2,5</a><a 
         p=\"3\" q=\"1\">3,1</a><a p=\"3\" q=\"2\">3,2</a><a p=\"3\" q=\"3\">3,3</a><a p=\"3\" q=\"4\">3,4</a><a p=\"3\" q=\"5\">3,5</a><a 
         p=\"4\" q=\"1\">4,1</a><a p=\"4\" q=\"2\">4,2</a><a p=\"4\" q=\"3\">4,3</a><a p=\"4\" q=\"4\">4,4</a><a p=\"4\" q=\"5\">4,5</a><a 
         p=\"5\" q=\"1\">5,1</a><a p=\"5\" q=\"2\">5,2</a><a p=\"5\" q=\"3\">5,3</a><a p=\"5\" q=\"4\">5,4</a><a p=\"5\" q=\"5\">5,5</a></out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'outer-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $m as xs:integer external := 5; 
        declare variable $n as xs:integer external := 0; 
        <out>{ for $x allowing empty at $p in 1 to $m, $y allowing empty at $q in 1 to $n return <a p=\"{$p}\" q=\"{$q}\">{$x},{$y}</a> }</out>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "outer-008.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out><a p=\"1\" q=\"0\">1,</a><a p=\"2\" q=\"0\">2,</a><a p=\"3\" q=\"0\">3,</a><a p=\"4\" q=\"0\">4,</a><a p=\"5\" q=\"0\">5,</a></out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'outer-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $m as xs:integer external := 0; 
        declare variable $n as xs:integer external := 5; 
        <out>{ for $x allowing empty at $p in 1 to $m, $y at $q in 1 to $n return <a p=\"{$p}\" q=\"{$q}\">{$x},{$y}</a> }</out>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "outer-009.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out><a p=\"0\" q=\"1\">,1</a><a p=\"0\" q=\"2\">,2</a><a p=\"0\" q=\"3\">,3</a><a p=\"0\" q=\"4\">,4</a><a p=\"0\" q=\"5\">,5</a></out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'outer-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $m as xs:integer external := 0; 
        declare variable $n as xs:integer external := 0; 
        <out>{ for $x allowing empty at $p in 1 to $m, 
                   $y allowing empty at $q in 1 to $n return <a p=\"{$p}\" q=\"{$q}\">{$x},{$y}</a> }</out>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "outer-010.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out><a p=\"0\" q=\"0\">,</a></out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'outer-011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $n as xs:integer external := 5; 
        <out>{ for $x allowing empty at $p in 1 to $n, $y allowing empty at $q in ($x+1) to $n return <a p=\"{$p}\" q=\"{$q}\">{$x},{$y}</a> }</out>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "outer-011.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out><a p=\"1\" q=\"1\">1,2</a><a p=\"1\" q=\"2\">1,3</a><a p=\"1\" q=\"3\">1,4</a><a p=\"1\" q=\"4\">1,5</a><a 
         p=\"2\" q=\"1\">2,3</a><a p=\"2\" q=\"2\">2,4</a><a p=\"2\" q=\"3\">2,5</a><a p=\"3\" q=\"1\">3,4</a><a p=\"3\" q=\"2\">3,5</a><a p=\"4\" q=\"1\">4,5</a><a p=\"5\" q=\"0\">5,</a></out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'outer-012'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $n as xs:integer external := 5; 
        <out>{ 
            for $x as xs:integer allowing empty at $p in 1 to $n, 
                $y as xs:integer? allowing empty at $q in ($x+1) to $n 
            return <a p=\"{$p}\" q=\"{$q}\">{$x},{$y}</a> }</out>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "outer-012.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out><a p=\"1\" q=\"1\">1,2</a><a p=\"1\" q=\"2\">1,3</a><a p=\"1\" q=\"3\">1,4</a><a p=\"1\" q=\"4\">1,5</a><a 
         p=\"2\" q=\"1\">2,3</a><a p=\"2\" q=\"2\">2,4</a><a p=\"2\" q=\"3\">2,5</a><a p=\"3\" q=\"1\">3,4</a><a p=\"3\" q=\"2\">3,5</a><a p=\"4\" q=\"1\">4,5</a><a p=\"5\" q=\"0\">5,</a></out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'outer-013'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $n as xs:integer external := 5; 
        <out>{ for $x as xs:integer allowing empty at $p in 1 to $n, 
                   $y as xs:integer allowing empty at $q in ($x+1) to $n 
               return <a p=\"{$p}\" q=\"{$q}\">{$x},{$y}</a> }</out>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "outer-013.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'outer-014'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $n as xs:integer external := 5; 
        <out>{ for $x as xs:integer at $p in 1 to $n 
               for $y as xs:integer? allowing empty at $q in ($x+1) to $n 
               return <a p=\"{$p}\" q=\"{$q}\">{$x},{$y}</a> }</out>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "outer-014.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out><a p=\"1\" q=\"1\">1,2</a><a p=\"1\" q=\"2\">1,3</a><a p=\"1\" q=\"3\">1,4</a><a p=\"1\" q=\"4\">1,5</a><a 
         p=\"2\" q=\"1\">2,3</a><a p=\"2\" q=\"2\">2,4</a><a p=\"2\" q=\"3\">2,5</a><a p=\"3\" q=\"1\">3,4</a><a p=\"3\" q=\"2\">3,5</a><a p=\"4\" q=\"1\">4,5</a><a p=\"5\" q=\"0\">5,</a></out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'outer-015'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $n as xs:integer external := 5; 
        <out>{ for $x as xs:integer? allowing empty at $p in 1 to $n 
               for $y as xs:integer at $q in (if (empty($x)) then 0 else (1 to $x)) 
               return <a p=\"{$p}\" q=\"{$q}\">{$x},{$y}</a> }</out>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "outer-015.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out><a p=\"1\" q=\"1\">1,1</a><a p=\"2\" q=\"1\">2,1</a><a p=\"2\" q=\"2\">2,2</a><a 
         p=\"3\" q=\"1\">3,1</a><a p=\"3\" q=\"2\">3,2</a><a p=\"3\" q=\"3\">3,3</a><a 
         p=\"4\" q=\"1\">4,1</a><a p=\"4\" q=\"2\">4,2</a><a p=\"4\" q=\"3\">4,3</a><a p=\"4\" q=\"4\">4,4</a><a 
         p=\"5\" q=\"1\">5,1</a><a p=\"5\" q=\"2\">5,2</a><a p=\"5\" q=\"3\">5,3</a><a p=\"5\" q=\"4\">5,4</a><a p=\"5\" q=\"5\">5,5</a></out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'outer-016'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $n as xs:integer external := 0; 
        <out>{ for $x as xs:integer? allowing empty at $p in 1 to $n 
               for $y as xs:integer at $q in (if (empty($x)) then 0 else (1 to $x)) 
               return <a p=\"{$p}\" q=\"{$q}\">{$x},{$y}</a> }</out>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "outer-016.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out><a p=\"0\" q=\"1\">,0</a></out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'outer-017'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $n as xs:integer external := 5; 
        <out>{ for $x as xs:integer? allowing empty at $p in 1 to $n 
               for $y as xs:integer? allowing empty at $q in (if (empty($x)) then () else (1 to $x)) 
               where deep-equal($x,$y) 
               return <a p=\"{$p}\" q=\"{$q}\">{$x},{$y}</a> }</out>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "outer-017.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out><a p=\"1\" q=\"1\">1,1</a><a p=\"2\" q=\"2\">2,2</a><a p=\"3\" q=\"3\">3,3</a><a p=\"4\" q=\"4\">4,4</a><a p=\"5\" q=\"5\">5,5</a></out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'outer-018'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $n as xs:integer external := 0; 
        <out>{ for $x as xs:integer? allowing empty at $p in 1 to $n 
               for $y as xs:integer? allowing empty at $q in (if (empty($x)) then () else (1 to $x)) 
               where deep-equal($x,$y) return <a p=\"{$p}\" q=\"{$q}\">{$x},{$y}</a> }</out>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "outer-018.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out><a p=\"0\" q=\"0\">,</a></out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'outer-019'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $c allowing empty in () return exactly-one($c)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "outer-019.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0005") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FORG0005 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.