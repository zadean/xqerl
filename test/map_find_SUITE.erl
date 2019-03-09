-module('map_find_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['map-find-001'/1]).
-export(['map-find-002'/1]).
-export(['map-find-003'/1]).
-export(['map-find-004'/1]).
-export(['map-find-005'/1]).
-export(['map-find-006'/1]).
-export(['map-find-007'/1]).
-export(['map-find-008'/1]).
-export(['map-find-009'/1]).
-export(['map-find-010'/1]).
-export(['map-find-101'/1]).
-export(['map-find-102'/1]).
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
   __BaseDir = filename:join(TD, "map"),
   [{base_dir, __BaseDir}|Config].
all() -> [
   {group, group_0}
   ].
groups() -> [
   {group_0, [parallel], [
    'map-find-001', 
    'map-find-002', 
    'map-find-003', 
    'map-find-004', 
    'map-find-005', 
    'map-find-006', 
    'map-find-007', 
    'map-find-008', 
    'map-find-009', 
    'map-find-010', 
    'map-find-101', 
    'map-find-102']}].
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
]; 
environment('json-files',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, [{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{schemas, []}, 
{resources, [{"application/json", filename:join(__BaseDir, "../fn/parse-json/data004.json"),"http://www.w3.org/qt3/json/data004-json"}]}, 
{modules, []}
].
'map-find-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:find((), 17)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-find-001.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'map-find-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:find(map{1:\"Sunday\",2:\"Monday\",3:\"Tuesday\",4:\"Wednesday\",5:\"Thursday\",6:\"Friday\",7:\"Saturday\"}, 4)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-find-002.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"Wednesday\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'map-find-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:find(map{1:\"Sunday\",2:\"Monday\",3:\"Tuesday\",4:\"Wednesday\",5:\"Thursday\",6:\"Friday\",7:\"Saturday\"}, 86)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-find-003.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'map-find-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:find((map{1:\"Sunday\",2:\"Monday\",3:\"Tuesday\",4:\"Wednesday\",5:\"Thursday\",6:\"Friday\",7:\"Saturday\"},
            map{2:\"Lundi\",3:\"Mardi\",4:\"Mercredi\",5:\"Jeudi\",6:\"Vendredi\",7:\"Samedi\",1:\"Dimanche\"}), 1)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-find-004.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"Sunday\", \"Dimanche\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'map-find-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:find([map{1:\"Sunday\",2:\"Monday\",3:\"Tuesday\",4:\"Wednesday\",5:\"Thursday\",6:\"Friday\",7:\"Saturday\"},
            map{2:\"Lundi\",3:\"Mardi\",4:\"Mercredi\",5:\"Jeudi\",6:\"Vendredi\",7:\"Samedi\",1:\"Dimanche\"}], 1)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-find-005.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"Sunday\", \"Dimanche\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'map-find-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:find([map{1:\"Sunday\",2:\"Monday\",3:\"Tuesday\",4:\"Wednesday\",5:\"Thursday\",6:\"Friday\",7:\"Saturday\"},
            map{2:\"Lundi\",3:\"Mardi\",4:\"Mercredi\",5:\"Jeudi\",6:\"Vendredi\",7:\"Samedi\",1:\"Dimanche\"}, 1], 1)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-find-006.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"Sunday\", \"Dimanche\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'map-find-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:find(map{1:\"Sunday\",2:\"Monday\",3:\"Tuesday\",4:\"Wednesday\",5:\"Thursday\",6:\"Friday\",7:\"Saturday\", \"fr\":
            map{2:\"Lundi\",3:\"Mardi\",4:\"Mercredi\",5:\"Jeudi\",6:\"Vendredi\",7:\"Samedi\",1:\"Dimanche\"}}, 1)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-find-007.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_deep_eq(Res,"[\"Sunday\", \"Dimanche\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_deep_eq(Res,"[\"Dimanche\", \"Sunday\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'map-find-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:find([map{1:\"Sunday\",2:\"Monday\",3:\"Tuesday\",4:\"Wednesday\",5:\"Thursday\",6:\"Friday\",7:\"Saturday\", \"fr\":
            [map{2:\"Lundi\",3:\"Mardi\",4:\"Mercredi\",5:\"Jeudi\",6:\"Vendredi\",7:\"Samedi\",1:\"Dimanche\"}, 78]}, 82], 7)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-find-008.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_deep_eq(Res,"[\"Saturday\", \"Samedi\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_deep_eq(Res,"[\"Samedi\", \"Saturday\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'map-find-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:find([map{1:\"Sunday\",2:\"Monday\",3:\"Tuesday\",4:\"Wednesday\",5:\"Thursday\",6:\"Friday\",7:[\"Saturday\", \"Sat\"], \"fr\":
            [map{2:\"Lundi\",3:\"Mardi\",4:\"Mercredi\",5:\"Jeudi\",6:\"Vendredi\",7:[\"Samedi\", \"Sa\"],1:\"Dimanche\"}, 78]}, 82], 7)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-find-009.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_deep_eq(Res,"[[\"Saturday\", \"Sat\"], [\"Samedi\", \"Sa\"]]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_deep_eq(Res,"[[\"Samedi\", \"Sa\"], [\"Saturday\", \"Sat\"]]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'map-find-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:find([map{1:\"Sunday\",2:\"Monday\",3:\"Tuesday\",4:\"Wednesday\",5:\"Thursday\",6:\"Friday\",7:(\"Saturday\", \"Sat\"), \"fr\":
            [map{2:\"Lundi\",3:\"Mardi\",4:\"Mercredi\",5:\"Jeudi\",6:\"Vendredi\",7:(\"Samedi\", \"Sa\"),1:\"Dimanche\"}, 78]}, 82], 7)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-find-010.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_deep_eq(Res,"[(\"Saturday\", \"Sat\"), (\"Samedi\", \"Sa\")]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_deep_eq(Res,"[(\"Samedi\", \"Sa\"), (\"Saturday\", \"Sat\")]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'map-find-101'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc(\"http://www.w3.org/qt3/json/data004-json\") => map:find(\"servlet-name\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-files',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-find-101.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"cofaxCDS\", \"cofaxEmail\", \"cofaxAdmin\", \"fileServlet\", \"cofaxTools\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'map-find-102'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc(\"http://www.w3.org/qt3/json/data004-json\") => map:find(\"init-param\") => map:find(\"mailHost\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-files',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-find-102.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"mail1\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.