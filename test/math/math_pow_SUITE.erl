-module('math_pow_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['math-pow-001'/1]).
-export(['math-pow-002'/1]).
-export(['math-pow-003'/1]).
-export(['math-pow-004'/1]).
-export(['math-pow-005'/1]).
-export(['math-pow-006'/1]).
-export(['math-pow-007'/1]).
-export(['math-pow-008'/1]).
-export(['math-pow-009'/1]).
-export(['math-pow-010'/1]).
-export(['math-pow-011'/1]).
-export(['math-pow-012'/1]).
-export(['math-pow-013'/1]).
-export(['math-pow-014'/1]).
-export(['math-pow-015'/1]).
-export(['math-pow-016'/1]).
-export(['math-pow-017'/1]).
-export(['math-pow-018'/1]).
-export(['math-pow-019'/1]).
-export(['math-pow-020'/1]).
-export(['math-pow-021'/1]).
-export(['math-pow-022'/1]).
-export(['math-pow-023'/1]).
-export(['math-pow-024'/1]).
-export(['math-pow-025'/1]).
-export(['math-pow-026'/1]).
-export(['math-pow-027'/1]).
-export(['math-pow-028'/1]).
-export(['math-pow-029'/1]).
-export(['math-pow-030'/1]).
-export(['math-pow-031'/1]).
-export(['math-pow-032'/1]).
-export(['math-pow-033'/1]).
-export(['math-pow-034'/1]).
suite() -> [{timetrap,{seconds, 180}}].
init_per_group(_, Config) ->  Config.
end_per_group(_, _Config) -> 
   xqerl_code_server:unload(all).
end_per_suite(_Config) -> 
   ct:timetrap({seconds,60}), 
   xqerl_code_server:unload(all).
init_per_suite(Config) -> 
   {ok,_} = application:ensure_all_started(xqerl),
   DD = filename:dirname(filename:dirname(filename:dirname(?config(data_dir, Config)))),
   TD = filename:join(DD, "QT3-test-suite"),
   __BaseDir = filename:join(TD, "math"),
   [{base_dir, __BaseDir}|Config].
all() -> [
   {group, group_0}, 
   {group, group_1}
   ].
groups() -> [
   {group_0, [parallel], [
    'math-pow-001', 
    'math-pow-002', 
    'math-pow-003', 
    'math-pow-004', 
    'math-pow-005', 
    'math-pow-006', 
    'math-pow-007', 
    'math-pow-008', 
    'math-pow-009', 
    'math-pow-010', 
    'math-pow-011', 
    'math-pow-012', 
    'math-pow-013', 
    'math-pow-014', 
    'math-pow-015', 
    'math-pow-016', 
    'math-pow-017', 
    'math-pow-018', 
    'math-pow-019', 
    'math-pow-020', 
    'math-pow-021', 
    'math-pow-022', 
    'math-pow-023']}, 
   {group_1, [parallel], [
    'math-pow-024', 
    'math-pow-025', 
    'math-pow-026', 
    'math-pow-027', 
    'math-pow-028', 
    'math-pow-029', 
    'math-pow-030', 
    'math-pow-031', 
    'math-pow-032', 
    'math-pow-033', 
    'math-pow-034']}].
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
'math-pow-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "math:pow((), 93.7)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('math',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "math-pow-001.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'math-pow-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "math:pow(2, 3)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('math',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "math-pow-002.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"8.0e0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'math-pow-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "math:pow(-2, 3)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('math',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "math-pow-003.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-8.0e0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'math-pow-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "math:pow(-2, -3)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('math',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "math-pow-004.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-0.125e0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'math-pow-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "math:pow(2, 0)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('math',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "math-pow-005.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1.0e0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'math-pow-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "math:pow(0, 0)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('math',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "math-pow-006.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1.0e0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'math-pow-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "math:pow(xs:double('INF'), 0)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('math',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "math-pow-007.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1.0e0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'math-pow-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "math:pow(xs:double('NaN'), 0)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('math',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "math-pow-008.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1.0e0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'math-pow-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "math:pow(-math:pi(), 0)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('math',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "math-pow-009.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1.0e0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'math-pow-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "math:pow(0e0, 3)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('math',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "math-pow-010.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0.0e0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'math-pow-011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "math:pow(0e0, 4)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('math',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "math-pow-011.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0.0e0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'math-pow-012'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "math:pow(-0e0, 3)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('math',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "math-pow-012.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-0.0e0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'math-pow-013'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "math:pow(0, 4)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('math',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "math-pow-013.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0.0e0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'math-pow-014'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "math:pow(0e0, -3)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('math',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "math-pow-014.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"xs:double('INF')") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'math-pow-015'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "math:pow(0e0, -4)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('math',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "math-pow-015.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"xs:double('INF')") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'math-pow-016'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "math:pow(-0e0, -3)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('math',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "math-pow-016.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"xs:double('-INF')") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'math-pow-017'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "math:pow(0, -4)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('math',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "math-pow-017.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"xs:double('INF')") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'math-pow-018'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "math:pow(16, 0.5e0)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('math',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "math-pow-018.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"4.0e0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'math-pow-019'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "math:pow(16, 0.25e0)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('math',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "math-pow-019.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2.0e0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'math-pow-020'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "math:pow(0e0, -3.0e0)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('math',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "math-pow-020.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"xs:double('INF')") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'math-pow-021'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "math:pow(-0e0, -3.0e0)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('math',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "math-pow-021.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"xs:double('-INF')") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'math-pow-022'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "math:pow(0e0, -3.1e0)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('math',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "math-pow-022.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"xs:double('INF')") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'math-pow-023'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "math:pow(-0e0, -3.1e0)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('math',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "math-pow-023.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"xs:double('INF')") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'math-pow-024'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "math:pow(0e0, 3.0e0)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('math',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "math-pow-024.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0.0e0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'math-pow-025'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "math:pow(-0e0, 3.0e0)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('math',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "math-pow-025.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-0.0e0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'math-pow-026'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "math:pow(0e0, 3.1e0)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('math',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "math-pow-026.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0.0e0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'math-pow-027'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "math:pow(-0e0, 3.1e0)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('math',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "math-pow-027.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0.0e0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'math-pow-028'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "math:pow(-1, xs:double('INF'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('math',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "math-pow-028.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1.0e0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'math-pow-029'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "math:pow(-1, xs:double('-INF'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('math',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "math-pow-029.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1.0e0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'math-pow-030'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "math:pow(1, xs:double('INF'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('math',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "math-pow-030.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1.0e0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'math-pow-031'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "math:pow(1, xs:double('-INF'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('math',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "math-pow-031.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1.0e0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'math-pow-032'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "math:pow(1, xs:double('NaN'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('math',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "math-pow-032.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1.0e0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'math-pow-033'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "math:pow(-2.5e0, 2.0e0)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('math',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "math-pow-033.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"6.25e0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'math-pow-034'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "math:pow(-2.5e0, 2.00000001e0)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('math',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "math-pow-034.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "NaN") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.