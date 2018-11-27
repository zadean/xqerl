-module('math_tan_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['math-tan-001'/1]).
-export(['math-tan-002'/1]).
-export(['math-tan-003'/1]).
-export(['math-tan-004'/1]).
-export(['math-tan-005'/1]).
-export(['math-tan-006'/1]).
-export(['math-tan-007'/1]).
-export(['math-tan-008'/1]).
-export(['math-tan-009'/1]).
-export(['math-tan-010'/1]).
-export(['math-tan-011'/1]).
suite() -> [{timetrap,{seconds, 5}}].
end_per_suite(_Config) -> 
   ct:timetrap({seconds,60}), 
   xqerl_module:unload(all).
init_per_suite(Config) -> 
   xqerl_module:one_time_init(), 
   {ok,_} = application:ensure_all_started(xqerl),
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   __BaseDir = filename:join(TD, "math"),
   [{base_dir, __BaseDir}|Config].
all() -> [
'math-tan-001', 
'math-tan-002', 
'math-tan-003', 
'math-tan-004', 
'math-tan-005', 
'math-tan-006', 
'math-tan-007', 
'math-tan-008', 
'math-tan-009', 
'math-tan-010', 
'math-tan-011'
].
environment('math',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, [{"http://www.w3.org/2005/xpath-functions/math","math"}]},
{schemas, []}, 
{resources, []}, 
{modules, []}
].
'math-tan-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "math:tan(())", 
   {Env,Opts} = xqerl_test:handle_environment(environment('math',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "math-tan-001.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'math-tan-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "math:tan(0)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('math',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "math-tan-002.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0.0e0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'math-tan-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "math:tan(-0.0e0)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('math',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "math-tan-003.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-0.0e0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'math-tan-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "math:tan(math:pi() div 4)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('math',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "math-tan-004.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"abs($result - 1.0e0) lt 0.0000001") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'math-tan-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "math:tan(-math:pi() div 4)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('math',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "math-tan-005.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"abs($result - -1.0e0) lt 0.0000001") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'math-tan-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "math:tan(math:pi() div 4) - 1", 
   {Env,Opts} = xqerl_test:handle_environment(environment('math',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "math-tan-006.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"abs($result) le 1e-12") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'math-tan-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "math:tan(-math:pi() div 4) + 1", 
   {Env,Opts} = xqerl_test:handle_environment(environment('math',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "math-tan-007.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"abs($result) le 1e-12") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'math-tan-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "math:tan(math:pi())", 
   {Env,Opts} = xqerl_test:handle_environment(environment('math',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "math-tan-008.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"abs($result) < 1e-12") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'math-tan-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "math:tan(xs:double('NaN'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('math',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "math-tan-009.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "NaN") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'math-tan-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "math:tan(xs:double('INF'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('math',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "math-tan-010.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "NaN") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'math-tan-011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "math:tan(xs:double('-INF'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('math',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "math-tan-011.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "NaN") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.