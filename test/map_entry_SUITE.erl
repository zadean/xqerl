-module('map_entry_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['map-entry-001-hof'/1]).
-export(['map-entry-001'/1]).
-export(['map-entry-002'/1]).
-export(['map-entry-003'/1]).
-export(['map-entry-004'/1]).
-export(['map-entry-005'/1]).
-export(['map-entry-006'/1]).
-export(['map-entry-007-hof'/1]).
-export(['map-entry-007'/1]).
suite() -> [{timetrap,{seconds,5}}].
end_per_suite(_Config) -> 
   ct:timetrap({seconds,60}), 
   xqerl_module:unload(all).
init_per_suite(Config) -> 
   xqerl_db:install([node()]),
   xqerl_module:one_time_init(), 
   {ok,_} = application:ensure_all_started(xqerl),
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   __BaseDir = filename:join(TD, "map"),
   [{base_dir, __BaseDir}|Config].
all() -> [
'map-entry-001-hof', 
'map-entry-001', 
'map-entry-002', 
'map-entry-003', 
'map-entry-004', 
'map-entry-005', 
'map-entry-006', 
'map-entry-007-hof', 
'map-entry-007'
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
'map-entry-001-hof'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:entry(3, 5)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "map-entry-001-hof.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"map(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"map(xs:integer, xs:integer)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"function(xs:anyAtomicType) as xs:integer?") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result(3) eq 5") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"map:size($result) eq 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"map:size(map:remove($result, 3)) eq 0") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"map:size(map:remove($result, 1)) eq 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'map-entry-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:entry(3, 5)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "map-entry-001.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"map(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"map(xs:integer, xs:integer)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result?3 eq 5") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"map:size($result) eq 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"map:size(map:remove($result, 3)) eq 0") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"map:size(map:remove($result, 1)) eq 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'map-entry-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:entry(3, ())", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "map-entry-002.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"map(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"map(xs:integer, empty-sequence())") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"empty($result?3)") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"map:size($result) eq 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"map:size(map:remove($result, 3)) eq 0") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"map:size(map:remove($result, 1)) eq 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'map-entry-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:entry(\"foo\", (\"x\", \"y\", \"z\"))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "map-entry-003.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"map(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"map(xs:string, xs:string*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"empty($result?bar)") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"count($result?foo) eq 3") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"map:get($result, \"foo\") = \"z\"") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"map:get($result, xs:untypedAtomic(\"foo\")) = \"z\"") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"map:size($result) eq 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"map:size(map:remove($result, \"foo\")) eq 0") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"map:size(map:remove($result, \"bar\")) eq 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'map-entry-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:entry(xs:untypedAtomic(\"foo\"), map{})", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "map-entry-004.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"map(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"map(xs:untypedAtomic, map(*))") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"empty($result?bar)") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"count($result?foo) eq 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"empty($result?foo?bar)") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"empty($result?(xs:untypedAtomic(\"foo\"))?(\"bar\"))") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'map-entry-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:entry(number('NaN'), 'NaN')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "map-entry-005.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"map(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"map:size($result) eq 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"exists($result?(number('NaN')))") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'map-entry-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:entry(xs:float('NaN'), 'NaN')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "map-entry-006.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"map(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"map:size($result) eq 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"exists($result?(number('NaN')))") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'map-entry-007-hof'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:entry(3, 5)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "map-entry-007-hof.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"map(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"map(xs:integer, xs:integer)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"function(xs:anyAtomicType) as item()*") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result?3 eq 5") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"map:size($result) eq 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"map:size(map:remove($result, 3)) eq 0") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"map:size(map:remove($result, 1)) eq 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'map-entry-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:entry(3, 5)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "map-entry-007.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"map(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"map(xs:integer, xs:integer)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result?3 eq 5") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"map:size($result) eq 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"map:size(map:remove($result, 3)) eq 0") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"map:size(map:remove($result, 1)) eq 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.