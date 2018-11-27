-module('map_contains_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['map-contains-001'/1]).
-export(['map-contains-002'/1]).
-export(['map-contains-003'/1]).
-export(['map-contains-004'/1]).
-export(['map-contains-005'/1]).
-export(['map-contains-006'/1]).
-export(['map-contains-007'/1]).
-export(['map-contains-008'/1]).
-export(['map-contains-009'/1]).
-export(['map-contains-010'/1]).
-export(['map-contains-011'/1]).
-export(['map-contains-012'/1]).
-export(['map-contains-013'/1]).
-export(['map-contains-014'/1]).
-export(['map-contains-015'/1]).
-export(['map-contains-016'/1]).
-export(['map-contains-017'/1]).
-export(['map-contains-018'/1]).
-export(['map-contains-019'/1]).
-export(['map-contains-020'/1]).
-export(['map-contains-901'/1]).
-export(['map-contains-902'/1]).
-export(['map-contains-903'/1]).
-export(['map-contains-904'/1]).
-export(['map-contains-905'/1]).
-export(['map-contains-906'/1]).
suite() -> [{timetrap,{seconds, 5}}].
end_per_suite(_Config) -> 
   ct:timetrap({seconds,60}), 
   xqerl_module:unload(all).
init_per_suite(Config) -> 
   xqerl_module:one_time_init(), 
   {ok,_} = application:ensure_all_started(xqerl),
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   __BaseDir = filename:join(TD, "map"),
   [{base_dir, __BaseDir}|Config].
all() -> [
'map-contains-001', 
'map-contains-002', 
'map-contains-003', 
'map-contains-004', 
'map-contains-005', 
'map-contains-006', 
'map-contains-007', 
'map-contains-008', 
'map-contains-009', 
'map-contains-010', 
'map-contains-011', 
'map-contains-012', 
'map-contains-013', 
'map-contains-014', 
'map-contains-015', 
'map-contains-016', 
'map-contains-017', 
'map-contains-018', 
'map-contains-019', 
'map-contains-020', 
'map-contains-901', 
'map-contains-902', 
'map-contains-903', 
'map-contains-904', 
'map-contains-905', 
'map-contains-906'
].
environment('map',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, [{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{schemas, []}, 
{resources, []}, 
{modules, []}
].
'map-contains-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:contains(map{1:\"Sunday\",2:\"Monday\",3:\"Tuesday\",4:\"Wednesday\",5:\"Thursday\",6:\"Friday\",7:\"Saturday\"}, 4)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "map-contains-001.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'map-contains-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:contains(map{1:\"Sunday\",2:\"Monday\",3:\"Tuesday\",4:\"Wednesday\",5:\"Thursday\",6:\"Friday\",7:\"Saturday\"}, 23)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "map-contains-002.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'map-contains-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:contains(map{}, 23)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "map-contains-003.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'map-contains-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:contains(map:entry(\"foo\", \"bar\"), \"baz\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "map-contains-004.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'map-contains-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:contains(map:entry(\"foo\", \"bar\"), \"foo\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "map-contains-005.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'map-contains-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:contains(map:entry(\"foo\", \"bar\"), xs:untypedAtomic(\"foo\"))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "map-contains-006.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'map-contains-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:contains(map:entry(xs:untypedAtomic(\"foo\"), \"bar\"), \"foo\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "map-contains-007.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'map-contains-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:contains(map:entry(xs:untypedAtomic(\"12\"), \"bar\"), 12)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "map-contains-008.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'map-contains-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:contains(map:entry(12, \"bar\"), xs:untypedAtomic(\"12\"))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "map-contains-009.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'map-contains-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:contains(map{1:\"Sunday\",2:\"Monday\",3:\"Tuesday\",4:\"Wednesday\",5:\"Thursday\",6:\"Friday\",7:\"Saturday\"}, 4.0e0)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "map-contains-010.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'map-contains-011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:contains(map{1:\"Sunday\",2:\"Monday\",3:\"Tuesday\",4.0e0:\"Wednesday\",5:\"Thursday\",6:\"Friday\",7:\"Saturday\"}, 4)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "map-contains-011.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'map-contains-012'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:contains(map{1:\"Sunday\",2:\"Monday\",3:\"Tuesday\",\"urn:weds\":\"Wednesday\",5:\"Thursday\",6:\"Friday\",7:\"Saturday\"}, xs:anyURI(\"urn:weds\"))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "map-contains-012.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'map-contains-013'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:contains(map{1:\"Sunday\",2:\"Monday\",3:\"Tuesday\",xs:anyURI(\"urn:weds\"):\"Wednesday\",5:\"Thursday\",6:\"Friday\",7:\"Saturday\"}, \"urn:weds\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "map-contains-013.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'map-contains-014'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:contains(map{1:\"Sunday\",2:\"Monday\",3:\"Tuesday\",xs:anyURI(\"urn:weds\"):\"Wednesday\",5:\"Thursday\",6:\"Friday\",7:\"Saturday\"}, number('NaN'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "map-contains-014.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'map-contains-015'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:contains(map{1:\"Sunday\",2:\"Monday\",3:\"Tuesday\",number('NaN'):\"Wednesday\",5:\"Thursday\",6:\"Friday\",7:\"Saturday\"}, number('NaN'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "map-contains-015.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'map-contains-016'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:contains(
                map:merge(((for $i in 1 to 1000 return map:entry($i, $i*$i)),
                         (for $i in 2000 to 3000 return map:entry($i, $i+30)),
                         (for $i in 2500 to 3500 return map:entry($i, $i+30)))),
                         3260)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "map-contains-016.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'map-contains-017'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:contains(map{1:\"Sunday\",2:\"Monday\",3:\"Tuesday\",xs:duration('P1Y'):\"Wednesday\",5:\"Thursday\",6:\"Friday\",7:\"Saturday\"}, xs:yearMonthDuration('P12M'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "map-contains-017.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'map-contains-018'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:contains(map{1:\"Sunday\",2:\"Monday\",3:\"Tuesday\",function-name(abs#1):\"Wednesday\",5:\"Thursday\",6:\"Friday\",7:\"Saturday\"}, xs:QName('fn:abs'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "map-contains-018.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'map-contains-019'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:contains(map{1:\"Sunday\",2:\"Monday\",3:\"Tuesday\",4:(),5:\"Thursday\",6:\"Friday\",7:\"Saturday\"}, 4)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "map-contains-019.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'map-contains-020'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:contains(map{\"su\":\"Sunday\",\"mo\":\"Monday\",\"tu\":\"Tuesday\",\"we\":\"Wednesday\",\"th\":\"Thursday\",\"fr\":\"Friday\",\"sa\":\"Saturday\"}, \"TH\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "map-contains-020.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'map-contains-901'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:contains(map{1:\"Sunday\",2:\"Monday\",3:\"Tuesday\",number('NaN'):\"Wednesday\",5:\"Thursday\",6:\"Friday\",7:\"Saturday\"}, (1 to 5)[10])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "map-contains-901.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'map-contains-902'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:contains(map{1:\"Sunday\",2:\"Monday\",3:\"Tuesday\",number('NaN'):\"Wednesday\",5:\"Thursday\",6:\"Friday\",7:\"Saturday\"}, (1 to 5)[. mod 2 = 0])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "map-contains-902.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'map-contains-903'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:contains((\"a\", \"b\", \"c\"), \"a\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "map-contains-903.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'map-contains-904'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:contains((), \"a\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "map-contains-904.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'map-contains-905'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:contains(abs#1, \"a\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "map-contains-905.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'map-contains-906'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:contains((map{}, map{\"a\":\"b\"}), \"a\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "map-contains-906.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.