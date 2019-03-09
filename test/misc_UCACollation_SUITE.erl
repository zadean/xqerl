-module('misc_UCACollation_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['UCA-collation-001'/1]).
-export(['UCA-collation-002'/1]).
-export(['UCA-collation-003'/1]).
-export(['UCA-collation-004'/1]).
-export(['UCA-collation-005'/1]).
-export(['UCA-collation-006'/1]).
-export(['UCA-collation-007'/1]).
-export(['UCA-collation-008'/1]).
-export(['UCA-collation-010'/1]).
-export(['UCA-collation-011'/1]).
-export(['UCA-collation-012'/1]).
-export(['UCA-collation-013'/1]).
-export(['UCA-collation-014'/1]).
-export(['UCA-collation-015'/1]).
-export(['UCA-collation-016'/1]).
-export(['UCA-collation-017'/1]).
-export(['UCA-collation-018'/1]).
-export(['UCA-collation-019'/1]).
-export(['UCA-collation-020'/1]).
-export(['UCA-collation-021'/1]).
-export(['UCA-collation-022'/1]).
-export(['UCA-collation-022a'/1]).
-export(['UCA-collation-023'/1]).
-export(['UCA-collation-024'/1]).
-export(['UCA-reorder-codes-001'/1]).
-export(['UCA-reorder-codes-002'/1]).
-export(['UCA-reorder-codes-003'/1]).
-export(['UCA-reorder-codes-004'/1]).
-export(['UCA-reorder-codes-005'/1]).
-export(['UCA-reorder-codes-006'/1]).
-export(['UCA-reorder-codes-007'/1]).
-export(['UCA-reorder-codes-008'/1]).
-export(['UCA-reorder-codes-009'/1]).
-export(['UCA-reorder-codes-010'/1]).
-export(['UCA-reorder-codes-011'/1]).
-export(['UCA-params-001'/1]).
-export(['UCA-params-002'/1]).
-export(['UCA-params-003'/1]).
-export(['UCA-params-004'/1]).
-export(['UCA-params-005'/1]).
-export(['UCA-params-006'/1]).
-export(['UCA-params-007'/1]).
-export(['UCA-params-008'/1]).
-export(['UCA-params-009'/1]).
-export(['UCA-params-010'/1]).
-export(['UCA-params-011'/1]).
-export(['UCA-params-012'/1]).
-export(['UCA-params-013'/1]).
-export(['UCA-params-014'/1]).
-export(['UCA-params-015'/1]).
-export(['UCA-params-016'/1]).
-export(['UCA-params-017'/1]).
-export(['UCA-params-018'/1]).
-export(['UCA-params-019'/1]).
-export(['UCA-params-020'/1]).
-export(['UCA-params-021'/1]).
-export(['UCA-params-022'/1]).
-export(['UCA-params-023'/1]).
-export(['UCA-params-024'/1]).
-export(['UCA-params-025'/1]).
-export(['UCA-params-026'/1]).
-export(['UCA-params-027'/1]).
-export(['UCA-params-028'/1]).
-export(['UCA-params-029'/1]).
-export(['UCA-params-030'/1]).
-export(['UCA-params-031'/1]).
-export(['UCA-params-032'/1]).
-export(['UCA-params-033'/1]).
-export(['UCA-maxVariable-001'/1]).
-export(['UCA-maxVariable-002'/1]).
-export(['UCA-maxVariable-003'/1]).
-export(['UCA-maxVariable-004'/1]).
-export(['UCA-maxVariable-005'/1]).
-export(['UCA-maxVariable-006'/1]).
-export(['UCA-maxVariable-007'/1]).
-export(['UCA-maxVariable-008'/1]).
-export(['UCA-maxVariable-009'/1]).
-export(['UCA-maxVariable-010'/1]).
-export(['UCA-maxVariable-011'/1]).
-export(['UCA-maxVariable-012'/1]).
-export(['UCA-maxVariable-013'/1]).
-export(['UCA-maxVariable-014'/1]).
-export(['UCA-maxVariable-015'/1]).
-export(['UCA-maxVariable-016'/1]).
-export(['UCA-misc-lang-001'/1]).
-export(['UCA-misc-lang-002'/1]).
-export(['UCA-misc-lang-003'/1]).
-export(['UCA-misc-lang-004'/1]).
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
   __BaseDir = filename:join(TD, "misc"),
   [{base_dir, __BaseDir}|Config].
all() -> [
   {group, group_0}, 
   {group, group_1}, 
   {group, group_2}, 
   {group, group_3}
   ].
groups() -> [
   {group_0, [parallel], [
    'UCA-collation-001', 
    'UCA-collation-002', 
    'UCA-collation-003', 
    'UCA-collation-004', 
    'UCA-collation-005', 
    'UCA-collation-006', 
    'UCA-collation-007', 
    'UCA-collation-008', 
    'UCA-collation-010', 
    'UCA-collation-011', 
    'UCA-collation-012', 
    'UCA-collation-013', 
    'UCA-collation-014', 
    'UCA-collation-015', 
    'UCA-collation-016', 
    'UCA-collation-017', 
    'UCA-collation-018', 
    'UCA-collation-019', 
    'UCA-collation-020', 
    'UCA-collation-021', 
    'UCA-collation-022', 
    'UCA-collation-022a', 
    'UCA-collation-023']}, 
   {group_1, [parallel], [
    'UCA-collation-024', 
    'UCA-reorder-codes-001', 
    'UCA-reorder-codes-002', 
    'UCA-reorder-codes-003', 
    'UCA-reorder-codes-004', 
    'UCA-reorder-codes-005', 
    'UCA-reorder-codes-006', 
    'UCA-reorder-codes-007', 
    'UCA-reorder-codes-008', 
    'UCA-reorder-codes-009', 
    'UCA-reorder-codes-010', 
    'UCA-reorder-codes-011', 
    'UCA-params-001', 
    'UCA-params-002', 
    'UCA-params-003', 
    'UCA-params-004', 
    'UCA-params-005', 
    'UCA-params-006', 
    'UCA-params-007', 
    'UCA-params-008', 
    'UCA-params-009', 
    'UCA-params-010', 
    'UCA-params-011', 
    'UCA-params-012']}, 
   {group_2, [parallel], [
    'UCA-params-013', 
    'UCA-params-014', 
    'UCA-params-015', 
    'UCA-params-016', 
    'UCA-params-017', 
    'UCA-params-018', 
    'UCA-params-019', 
    'UCA-params-020', 
    'UCA-params-021', 
    'UCA-params-022', 
    'UCA-params-023', 
    'UCA-params-024', 
    'UCA-params-025', 
    'UCA-params-026', 
    'UCA-params-027', 
    'UCA-params-028', 
    'UCA-params-029', 
    'UCA-params-030', 
    'UCA-params-031', 
    'UCA-params-032', 
    'UCA-params-033', 
    'UCA-maxVariable-001', 
    'UCA-maxVariable-002', 
    'UCA-maxVariable-003']}, 
   {group_3, [parallel], [
    'UCA-maxVariable-004', 
    'UCA-maxVariable-005', 
    'UCA-maxVariable-006', 
    'UCA-maxVariable-007', 
    'UCA-maxVariable-008', 
    'UCA-maxVariable-009', 
    'UCA-maxVariable-010', 
    'UCA-maxVariable-011', 
    'UCA-maxVariable-012', 
    'UCA-maxVariable-013', 
    'UCA-maxVariable-014', 
    'UCA-maxVariable-015', 
    'UCA-maxVariable-016', 
    'UCA-misc-lang-001', 
    'UCA-misc-lang-002', 
    'UCA-misc-lang-003', 
    'UCA-misc-lang-004']}].
environment('UCA-collation',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, [{"collation","","'http://www.w3.org/2013/collation/UCA?'"}]}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('UCA-collation.en',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, [{"collation","","'http://www.w3.org/2013/collation/UCA?lang=en;'"}]}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('UCA-collation.en.primary',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, [{"collation","","'http://www.w3.org/2013/collation/UCA?lang=en;strength=primary;'"}]}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
].
'UCA-collation-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('abc','aBC',concat($collation,'fallback=unknown'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-collation-001.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-collation-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('abc','aBC',concat($collation,'fallback=no;keyword=unknown'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-collation-002.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-collation-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('abc','aBC',concat($collation,'fallback=no;strength=unknown'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-collation-003.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-collation-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('abc','aBC',concat($collation,'fallback=no;alternate=unknown'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-collation-004.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-collation-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('abc','aBC',concat($collation,'fallback=no;backwards=unknown'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-collation-005.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-collation-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('abc','aBC',concat($collation,'fallback=no;normalization=unknown'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-collation-006.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-collation-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('abc','aBC',concat($collation,'fallback=no;caseLevel=unknown'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-collation-007.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-collation-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('abc','aBC',concat($collation,'fallback=no;caseFirst=unknown'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-collation-008.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-collation-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('abc','aBC',concat($collation,'fallback=no;numeric=unknown'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-collation-010.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-collation-011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('abc','def',concat($collation,'keyword=unknown'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-collation-011.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-collation-012'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('abc','def',concat($collation,'strength=unknown'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-collation-012.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-collation-013'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('abc','def',concat($collation,'alternate=unknown'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-collation-013.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-collation-014'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('abc','def',concat($collation,'backwards=unknown'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-collation-014.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-collation-015'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('abc','def',concat($collation,'normalization=unknown'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-collation-015.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-collation-016'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('abc','def',concat($collation,'caseLevel=unknown'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-collation-016.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-collation-017'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('abc','def',concat($collation,'caseFirst=unknown'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-collation-017.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-collation-018'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('abc','def',concat($collation,'hiraganaQuaternary=unknown'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-collation-018.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-collation-019'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('abc','def',concat($collation,'numeric=unknown'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-collation-019.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-collation-020'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('abc','def',concat($collation,'version=5.0'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-collation-020.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-collation-021'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('abc','def',concat($collation,'version=6.0'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-collation-021.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-collation-022'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('abc','xyz',concat($collation,'version=7.0'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-collation-022.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-collation-022a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('abc','xyz',concat($collation,'version=1.255'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-collation-022a.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-collation-023'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('abc','xyz',concat($collation,'version=unknown'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-collation-023.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-collation-024'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('abc','aBC',concat($collation,'version=96.5;fallback=no'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-collation-024.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-reorder-codes-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('.123','123',concat($collation,'fallback=no;reorder=Z,digit'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en.primary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-reorder-codes-001.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-reorder-codes-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('ab123','ab456',concat($collation,'reorder=Z,digit'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en.primary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-reorder-codes-002.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-reorder-codes-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('ab123','ab456',concat($collation,'fallback=yes;reorder=Z,digit'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en.primary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-reorder-codes-003.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-reorder-codes-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('.123','123',concat($collation,'reorder=punct,digit;fallback=no'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en.primary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-reorder-codes-004.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-reorder-codes-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('.123','123',concat($collation,'reorder=digit,punct;fallback=no'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en.primary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-reorder-codes-005.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-reorder-codes-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare(' 123','123',concat($collation,'reorder=space,digit;fallback=no'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en.primary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-reorder-codes-006.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-reorder-codes-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare(' 123','123',concat($collation,'reorder=digit,space;fallback=no'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en.primary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-reorder-codes-007.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-reorder-codes-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('£123','123',concat($collation,'reorder=currency,digit;fallback=no'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en.primary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-reorder-codes-008.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-reorder-codes-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('£123','123',concat($collation,'reorder=digit,currency;fallback=no'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en.primary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-reorder-codes-009.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-reorder-codes-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('a123','123',concat($collation,'reorder=Latn,digit;fallback=no'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en.primary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-reorder-codes-010.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-reorder-codes-011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('a123','123',concat($collation,'reorder=digit,Latn;fallback=no'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en.primary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-reorder-codes-011.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-params-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('abc','aBC',concat($collation,'strength=primary;fallback=no'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-params-001.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-params-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('abc','aBC',concat($collation,'strength=secondary;fallback=no'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-params-002.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-params-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('abc','aBC',concat($collation,'strength=tertiary;fallback=no'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-params-003.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-params-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('abc','aBC',concat($collation,'strength=quaternary;fallback=no'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-params-004.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-params-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('abc','aBC',concat($collation,'strength=identical;fallback=no'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-params-005.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-params-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('abc','aBC',concat($collation,'strength=1;fallback=no'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-params-006.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-params-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('abc','aBC',concat($collation,'strength=2;fallback=no'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-params-007.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-params-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('abc','aBC',concat($collation,'strength=3;fallback=no'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-params-008.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-params-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('abc','aBC',concat($collation,'strength=4;fallback=no'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-params-009.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-params-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('abc','aBC',concat($collation,'strength=5;fallback=no'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-params-010.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-params-011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('a-bc','abc',concat($collation,'strength=1;alternate=shifted;fallback=no'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-params-011.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-params-012'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('a-bc','abc',concat($collation,'strength=2;alternate=shifted;fallback=no'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-params-012.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-params-013'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('a-bc','abc',concat($collation,'strength=3;alternate=shifted;fallback=no'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-params-013.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-params-014'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('a-bc','abc',concat($collation,'strength=4;alternate=shifted;fallback=no'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-params-014.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-params-015'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('a-bc','abc',concat($collation,'strength=5;alternate=shifted;fallback=no'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-params-015.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-params-016'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('pêche','péché',concat($collation,'strength=primary;fallback=no'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-params-016.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-params-017'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('pêche','péché',concat($collation,'strength=secondary;fallback=no'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-params-017.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-params-018'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('pêche','péché',concat($collation,'strength=secondary;backwards=yes;fallback=no'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-params-018.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-params-019'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('pêche','péché',concat($collation,'strength=secondary;backwards=no;fallback=no'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-params-019.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-params-020'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('pêche','péché',concat($collation,'strength=secondary;normalization=no;fallback=no'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-params-020.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-params-021'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('pêche','péché',concat($collation,'strength=secondary;normalization=yes;fallback=no'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-params-021.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-params-022'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('Epee','épee',concat($collation,'strength=primary;caseLevel=yes;fallback=no'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-params-022.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-params-023'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('Epee','épee',concat($collation,'strength=primary;caseLevel=no;fallback=no'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-params-023.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-params-024'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('Epee','Épee',concat($collation,'strength=primary;caseLevel=yes;fallback=no'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-params-024.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-params-025'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('Epee','Épee',concat($collation,'strength=primary;caseLevel=no;fallback=no'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-params-025.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-params-026'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('Epee','épee',concat($collation,'strength=secondary;caseLevel=yes;fallback=no'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-params-026.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-params-027'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('Epee','épee',concat($collation,'strength=secondary;caseLevel=no;fallback=no'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-params-027.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-params-028'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('Epee','Épee',concat($collation,'strength=secondary;caseLevel=yes;fallback=no'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-params-028.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-params-029'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('Epee','Épee',concat($collation,'strength=secondary;caseLevel=no;fallback=no'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-params-029.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-params-030'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('ab','Ab',concat($collation,'caseFirst=upper;fallback=no'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-params-030.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-params-031'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('ab','Ab',concat($collation,'caseFirst=lower;fallback=no'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-params-031.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-params-032'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('ab1a','ab12a',concat($collation,'numeric=yes;fallback=no'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-params-032.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-params-033'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('ab1a','ab12a',concat($collation,'numeric=no;fallback=no'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-params-033.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-maxVariable-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('database','data type',concat($collation,'maxVariable=space;alternate=shifted;fallback=no'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-maxVariable-001.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-maxVariable-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('database','data type',concat($collation,'maxVariable=space;alternate=non-ignorable;fallback=no'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-maxVariable-002.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-maxVariable-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('database','data base',concat($collation,'maxVariable=space;alternate=shifted;fallback=no'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-maxVariable-003.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-maxVariable-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('database','data base',concat($collation,'maxVariable=space;alternate=shifted;strength=4;fallback=no'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-maxVariable-004.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-maxVariable-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('database','data-type',concat($collation,'maxVariable=space;alternate=shifted;fallback=no'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-maxVariable-005.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-maxVariable-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('database','data-type',concat($collation,'maxVariable=punct;alternate=shifted;fallback=no'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-maxVariable-006.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-maxVariable-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('database','data-base',concat($collation,'maxVariable=punct;alternate=shifted;fallback=no'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-maxVariable-007.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-maxVariable-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('data base','data-base',concat($collation,'maxVariable=punct;alternate=shifted;fallback=no'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-maxVariable-008.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-maxVariable-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('data base','data-base',concat($collation,'maxVariable=punct;alternate=shifted;strength=4;fallback=no'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-maxVariable-009.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-maxVariable-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('data=base','database',concat($collation,'maxVariable=punct;alternate=shifted;fallback=no'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-maxVariable-010.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-maxVariable-011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('data=base','database',concat($collation,'maxVariable=symbol;alternate=shifted;fallback=no'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-maxVariable-011.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-maxVariable-012'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('data=base','data base',concat($collation,'maxVariable=symbol;alternate=shifted;fallback=no'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-maxVariable-012.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-maxVariable-013'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('data=base','data$base',concat($collation,'maxVariable=symbol;alternate=shifted;fallback=no'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-maxVariable-013.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-maxVariable-014'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('data=base','data$base',concat($collation,'maxVariable=currency;alternate=shifted;fallback=no'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-maxVariable-014.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-maxVariable-015'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('$10000','€10000',concat($collation,'maxVariable=currency;alternate=shifted;fallback=no'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-maxVariable-015.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-maxVariable-016'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('$10000','€9000',concat($collation,'maxVariable=currency;numeric=yes;alternate=shifted;fallback=no'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-maxVariable-016.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-misc-lang-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('pêche','péché',concat($collation,'strength=primary;lang=fr;fallback=no'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-misc-lang-001.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-misc-lang-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('pêche','péché',concat($collation,'strength=secondary;lang=fr;fallback=no'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-misc-lang-002.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-misc-lang-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('pêche','péché',concat($collation,'strength=secondary;lang=fr-CA;fallback=no'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-misc-lang-003.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UCA-misc-lang-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare('pêche','péché',concat($collation,'strength=primary;lang=en-US;fallback=no'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UCA-misc-lang-004.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.