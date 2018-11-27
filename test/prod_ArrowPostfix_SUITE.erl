-module('prod_ArrowPostfix_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['ArrowPostfix-001'/1]).
-export(['ArrowPostfix-002'/1]).
-export(['ArrowPostfix-003'/1]).
-export(['ArrowPostfix-004'/1]).
-export(['ArrowPostfix-005'/1]).
-export(['ArrowPostfix-006'/1]).
-export(['ArrowPostfix-007'/1]).
-export(['ArrowPostfix-008'/1]).
-export(['ArrowPostfix-009'/1]).
-export(['ArrowPostfix-010'/1]).
-export(['ArrowPostfix-011'/1]).
-export(['ArrowPostfix-012'/1]).
-export(['ArrowPostfix-013'/1]).
-export(['ArrowPostfix-014'/1]).
-export(['ArrowPostfix-015'/1]).
-export(['ArrowPostfix-016'/1]).
-export(['ArrowPostfix-017'/1]).
-export(['ArrowPostfix-018'/1]).
-export(['ArrowPostfix-019'/1]).
-export(['ArrowPostfix-020'/1]).
-export(['ArrowPostfix-021'/1]).
-export(['ArrowPostfix-022'/1]).
-export(['ArrowPostfix-023'/1]).
-export(['ArrowPostfix-024'/1]).
-export(['ArrowPostfix-025'/1]).
-export(['ArrowPostfix-026'/1]).
-export(['ArrowPostfix-027'/1]).
-export(['ArrowPostfix-028'/1]).
-export(['ArrowPostfix-029'/1]).
-export(['ArrowPostfix-030'/1]).
-export(['ArrowPostfix-031'/1]).
-export(['ArrowPostfix-032'/1]).
-export(['ArrowPostfix-101'/1]).
-export(['ArrowPostfix-102'/1]).
-export(['ArrowPostfix-103'/1]).
-export(['ArrowPostfix-104'/1]).
-export(['ArrowPostfix-105'/1]).
-export(['ArrowPostfix-106'/1]).
-export(['ArrowPostfix-107'/1]).
suite() -> [{timetrap,{seconds, 5}}].
end_per_suite(_Config) -> 
   ct:timetrap({seconds,60}), 
   xqerl_module:unload(all).
init_per_suite(Config) -> 
   xqerl_module:one_time_init(), 
   {ok,_} = application:ensure_all_started(xqerl),
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   __BaseDir = filename:join(TD, "prod"),
   [{base_dir, __BaseDir}|Config].
all() -> [
'ArrowPostfix-001', 
'ArrowPostfix-002', 
'ArrowPostfix-003', 
'ArrowPostfix-004', 
'ArrowPostfix-005', 
'ArrowPostfix-006', 
'ArrowPostfix-007', 
'ArrowPostfix-008', 
'ArrowPostfix-009', 
'ArrowPostfix-010', 
'ArrowPostfix-011', 
'ArrowPostfix-012', 
'ArrowPostfix-013', 
'ArrowPostfix-014', 
'ArrowPostfix-015', 
'ArrowPostfix-016', 
'ArrowPostfix-017', 
'ArrowPostfix-018', 
'ArrowPostfix-019', 
'ArrowPostfix-020', 
'ArrowPostfix-021', 
'ArrowPostfix-022', 
'ArrowPostfix-023', 
'ArrowPostfix-024', 
'ArrowPostfix-025', 
'ArrowPostfix-026', 
'ArrowPostfix-027', 
'ArrowPostfix-028', 
'ArrowPostfix-029', 
'ArrowPostfix-030', 
'ArrowPostfix-031', 
'ArrowPostfix-032', 
'ArrowPostfix-101', 
'ArrowPostfix-102', 
'ArrowPostfix-103', 
'ArrowPostfix-104', 
'ArrowPostfix-105', 
'ArrowPostfix-106', 
'ArrowPostfix-107'
].
environment('works-mod',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/works-mod.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
].
'ArrowPostfix-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "4.54=>ceiling()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "ArrowPostfix-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"5") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrowPostfix-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "\"this, that and the other\"=>contains(\"the\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "ArrowPostfix-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrowPostfix-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "\"the cat sat on the mat\"=>tokenize(\"\\s+\")=>count()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "ArrowPostfix-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"6") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrowPostfix-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $f:= tokenize#2 return \"the cat sat on the mat\"=>$f(\"\\s+\")=>count()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "ArrowPostfix-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"6") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrowPostfix-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $f:= tokenize#1 return \"the cat sat on the mat\"=>$f()=>count()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "ArrowPostfix-005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"6") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrowPostfix-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $f:= tokenize#2 return \"the cat sat on the mat\"=>($f)(\"\\s+\")=>count()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "ArrowPostfix-006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"6") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrowPostfix-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(\"first\",\"second\",\"third\",\"fourth\")=>head()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "ArrowPostfix-007.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"first\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrowPostfix-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "\"4.54\"=>ceiling()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "ArrowPostfix-008.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrowPostfix-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "\"first second third\"=>concat(\" fourth\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "ArrowPostfix-009.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"first second third fourth\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrowPostfix-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "\"first second third\"=>concat()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "ArrowPostfix-010.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrowPostfix-011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $f:= (ceiling#1, floor#1, round#1, abs#1)=>head() return 4.54=>$f()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "ArrowPostfix-011.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"5") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrowPostfix-012'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "4.54=>((ceiling#1, floor#1, round#1, abs#1) => head())()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "ArrowPostfix-012.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"5") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrowPostfix-013'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "4.54=>(head((ceiling#1, floor#1, round#1, abs#1)))()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "ArrowPostfix-013.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"5") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrowPostfix-014'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "4.54=>(head((ceiling#1, floor#1, round#1, abs#1)))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "ArrowPostfix-014.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrowPostfix-015'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $string:=\"one two three four five six\" return $string=>upper-case()=>normalize-unicode()=>tokenize(\"\\s+\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "ArrowPostfix-015.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(\"ONE\", \"TWO\", \"THREE\", \"FOUR\", \"FIVE\", \"SIX\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrowPostfix-016'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $x:= 4 return $x<=3.2=>ceiling()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "ArrowPostfix-016.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrowPostfix-017'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $x:= 4 return ($x<=3.2)=>boolean()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "ArrowPostfix-017.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrowPostfix-018'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "-1=>abs()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "ArrowPostfix-018.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrowPostfix-019'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(-1)=>abs()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "ArrowPostfix-019.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrowPostfix-020'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $m:= map{1:2, 2:4, 3:6} return 2=>$m()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "ArrowPostfix-020.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"4") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrowPostfix-021'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "2=>(map{1:2, 2:4, 3:6})()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "ArrowPostfix-021.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"4") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrowPostfix-022'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $array:= ['a','b','c','d','e'] return 3=>$array()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "ArrowPostfix-022.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"'c'") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrowPostfix-023'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "3=>(['a','b','c','d','e'])()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "ArrowPostfix-023.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"'c'") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrowPostfix-024'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "5.4=>ceil()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "ArrowPostfix-024.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrowPostfix-025'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $f:= \"ceiling\" return 5.4=>$f()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "ArrowPostfix-025.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrowPostfix-026'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "//hours => count()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "ArrowPostfix-026.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"16") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrowPostfix-027'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(\"one two\", \"three four five\")!tokenize(.,\" \") => distinct-values()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "ArrowPostfix-027.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"(\"one\", \"two\", \"three\", \"four\", \"five\")") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrowPostfix-028'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(\"one two\", \"three four five\")!tokenize(.,\" \")!upper-case(.) => distinct-values()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "ArrowPostfix-028.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"(\"ONE\", \"TWO\", \"THREE\", \"FOUR\", \"FIVE\")") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrowPostfix-029'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $a := (\"one two\", \"three four five\") return $a!tokenize(.,\" \") => distinct-values()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "ArrowPostfix-029.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"(\"one\", \"two\", \"three\", \"four\", \"five\")") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrowPostfix-030'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $a := (\"one two\", \"three four five\"), $b:= tokenize#2 return $a!$b(.,\" \") => distinct-values()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "ArrowPostfix-030.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"(\"one\", \"two\", \"three\", \"four\", \"five\")") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrowPostfix-031'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "\"one two three four five\" => tokenize(\" \") ! upper-case(.)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "ArrowPostfix-031.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrowPostfix-032'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(\"one two three four five\" => tokenize(\" \")) ! upper-case(.)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "ArrowPostfix-032.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(\"ONE\", \"TWO\", \"THREE\", \"FOUR\", \"FIVE\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrowPostfix-101'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(\"one two three four five\" => Q{http://www.w3.org/2005/xpath-functions}tokenize(\" \")) ! upper-case(.)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "ArrowPostfix-101.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(\"ONE\", \"TWO\", \"THREE\", \"FOUR\", \"FIVE\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrowPostfix-102'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1 => Q{http://www.w3.org/2005/xpath-functions}sum()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "ArrowPostfix-102.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrowPostfix-103'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(1, 2, 3, 4) => Q{http://www.w3.org/2005/xpath-functions}sum()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "ArrowPostfix-103.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"10") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrowPostfix-104'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(1, 2, 3, 4) => (Q{http://www.w3.org/2005/xpath-functions}sum#1)()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "ArrowPostfix-104.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"10") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrowPostfix-105'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(1, 2, 3, 4) => (Q{http://www.w3.org/2005/xpath-functions}sum#2(?, 'foo'))()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "ArrowPostfix-105.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"10") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrowPostfix-106'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "() => (Q{http://www.w3.org/2005/xpath-functions}sum#2(?, 'foo'))()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "ArrowPostfix-106.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"foo\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrowPostfix-107'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1 => ([2,3],[4,5][6])()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "ArrowPostfix-107.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.