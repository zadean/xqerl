-module('fn_fold_right_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['fold-right-001'/1]).
-export(['fold-right-002'/1]).
-export(['fold-right-003'/1]).
-export(['fold-right-004'/1]).
-export(['fold-right-005'/1]).
-export(['fold-right-006'/1]).
-export(['fold-right-007'/1]).
-export(['fold-right-008'/1]).
-export(['fold-right-009'/1]).
-export(['fold-right-010'/1]).
-export(['fold-right-011'/1]).
-export(['fold-right-012'/1]).
-export(['fold-right-013'/1]).
-export(['fold-right-014'/1]).
-export(['fold-right-015'/1]).
-export(['fold-right-016'/1]).
-export(['fold-right-017'/1]).
-export(['fold-right-018'/1]).
-export(['fold-right-019'/1]).
-export(['fold-right-020'/1]).
-export(['fold-right-101'/1]).
-export(['fold-right-102'/1]).
-export(['fold-right-103'/1]).
-export(['fold-right-104'/1]).
-export(['fold-right-105'/1]).
suite() -> [{timetrap,{seconds, 5}}].
end_per_suite(_Config) -> 
   ct:timetrap({seconds,60}), 
   xqerl_module:unload(all).
init_per_suite(Config) -> 
   xqerl_module:one_time_init(), 
   {ok,_} = application:ensure_all_started(xqerl),
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   __BaseDir = filename:join(TD, "fn"),
   [{base_dir, __BaseDir}|Config].
all() -> [
'fold-right-001', 
'fold-right-002', 
'fold-right-003', 
'fold-right-004', 
'fold-right-005', 
'fold-right-006', 
'fold-right-007', 
'fold-right-008', 
'fold-right-009', 
'fold-right-010', 
'fold-right-011', 
'fold-right-012', 
'fold-right-013', 
'fold-right-014', 
'fold-right-015', 
'fold-right-016', 
'fold-right-017', 
'fold-right-018', 
'fold-right-019', 
'fold-right-020', 
'fold-right-101', 
'fold-right-102', 
'fold-right-103', 
'fold-right-104', 
'fold-right-105'
].
environment('empty',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
].
'fold-right-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fold-right(1 to 5, 0,function($a, $b) { $a + $b })", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fold-right-001.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"15") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fold-right-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fold-right((2,3,5,7), 1,function($a, $b) { $a * $b })", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fold-right-002.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"210") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fold-right-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fold-right((true(), false(), false()), false(),function($a, $b) { $a or $b })", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fold-right-003.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fold-right-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fold-right((true(), false(), false()), false(),function($a, $b) { $a and $b })", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fold-right-004.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fold-right-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $f := function($a, $b){($b, $a)} return fold-right(1 to 5, (), $f)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fold-right-005.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"5,4,3,2,1") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fold-right-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fold-right(1 to 5, \"\", fn:concat(?, \".\", ?))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fold-right-006.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'1.2.3.4.5.'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fold-right-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fold-right(1 to 5, \"$zero\", fn:concat(\"$f(\", ?, \", \", ?, \")\"))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fold-right-007.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "$f(1, $f(2, $f(3, $f(4, $f(5, $zero)))))") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fold-right-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fold-right(1 to 5, 0, function($a, $b, $c){ $a + $b + $c })", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fold-right-008.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fold-right-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fold-right(1 to 5, \"\", function($a, $b){ $a + $b })", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fold-right-009.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fold-right-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fold-right(1 to 5, 0, function($a as xs:string, $b){ $a + $b })", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fold-right-010.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fold-right-011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fold-right(1 to 5, 0, function($a, $b as xs:string){ $a + $b })", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fold-right-011.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fold-right-012'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fold-right(1 to 5, 0, function($a, $b) as xs:string { $a + $b })", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fold-right-012.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fold-right-013'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fold-right(1 to 1000000, 0, function($a, $b){ $b + 1 })", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fold-right-013.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1000000") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fold-right-014'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fold-right((1 to 5), (), function($a , $b){ ($b, $a) })", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fold-right-014.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"5, 4, 3, 2, 1") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fold-right-015'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fold-right((1, 2, 2, 3, 3, 3, 4, 5, 5), (), function($a, $b){ if(exists($b[. eq $a])) then $b else ($a, $b) })", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fold-right-015.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1, 2, 3, 4, 5") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fold-right-016'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fold-right((1 to 5), (), function($a, $b){ ($a, $a, $b) })", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fold-right-016.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1, 1, 2, 2, 3, 3, 4, 4, 5, 5") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fold-right-017'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fold-right((1 to 13), 0, concat(\"(\", ?, \"+\", ?, \")\"))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fold-right-017.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "(1+(2+(3+(4+(5+(6+(7+(8+(9+(10+(11+(12+(13+0)))))))))))))") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fold-right-018'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fold-right((\"Hello\", \"World\"), 0, function($a, $b){ string-length($a) + $b })", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fold-right-018.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "10") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fold-right-019'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fold-right( 1 to 10, (), function($a, $b){ if(empty($b)) then $a else if($a lt $b) then $b else $a })", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fold-right-019.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "10") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fold-right-020'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fold-right(1 to 10, (), function($a, $b){ if(empty($b)) then $a else if($a gt $b) then $b else $a })", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fold-right-020.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fold-right-101'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:fold-right(
          $seq as item()*, 
          $zero as item()*, 
          $f as function(item(), item()*) as item()*) 
          as item()* {
            if (fn:empty($seq))
            then $zero
            else $f(fn:head($seq), fn:fold-right(fn:tail($seq), $zero, $f))
          };
          local:fold-right(1 to 5, 0,function($a, $b) { $a + $b })", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fold-right-101.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"15") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fold-right-102'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:fold-right(
          $seq as item()*, 
          $zero as item()*, 
          $f as function(item(), item()*) as item()*) 
          as item()* {
            if (fn:empty($seq))
            then $zero
            else $f(fn:head($seq), fn:fold-right(fn:tail($seq), $zero, $f))
          };
          local:fold-right((2,3,5,7), 1,function($a, $b) { $a * $b })", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fold-right-102.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"210") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fold-right-103'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:fold-right(
          $seq as item()*, 
          $zero as item()*, 
          $f as function(item(), item()*) as item()*) 
          as item()* {
            if (fn:empty($seq))
            then $zero
            else $f(fn:head($seq), fn:fold-right(fn:tail($seq), $zero, $f))
          };
          local:fold-right((true(), false(), false()), false(),function($a, $b) { $a or $b })", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fold-right-103.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fold-right-104'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:fold-right(
          $seq as item()*, 
          $zero as item()*, 
          $f as function(item(), item()*) as item()*) 
          as item()* {
            if (fn:empty($seq))
            then $zero
            else $f(fn:head($seq), fn:fold-right(fn:tail($seq), $zero, $f))
          };
          local:fold-right((true(), false(), false()), false(),function($a, $b) { $a and $b })", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fold-right-104.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fold-right-105'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:fold-right(
          $seq as item()*, 
          $zero as item()*, 
          $f as function(item(), item()*) as item()*) 
          as item()* {
            if (fn:empty($seq))
            then $zero
            else $f(fn:head($seq), fn:fold-right(fn:tail($seq), $zero, $f))
          };
          let $f := function($a, $b){($b, $a)} return local:fold-right(1 to 5, (), $f)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fold-right-105.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"5,4,3,2,1") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.