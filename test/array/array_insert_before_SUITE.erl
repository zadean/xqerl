-module('array_insert_before_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['array-insert-before-501'/1]).
-export(['array-insert-before-502'/1]).
-export(['array-insert-before-503'/1]).
-export(['array-insert-before-504'/1]).
-export(['array-insert-before-505'/1]).
-export(['array-insert-before-506'/1]).
-export(['array-insert-before-507'/1]).
-export(['array-insert-before-508'/1]).
-export(['array-insert-before-509'/1]).
-export(['array-insert-before-510'/1]).
-export(['array-insert-before-511'/1]).
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
   __BaseDir = filename:join(TD, "array"),
   [{base_dir, __BaseDir}|Config].
all() -> [
   {group, group_0}
   ].
groups() -> [
   {group_0, [parallel], [
    'array-insert-before-501', 
    'array-insert-before-502', 
    'array-insert-before-503', 
    'array-insert-before-504', 
    'array-insert-before-505', 
    'array-insert-before-506', 
    'array-insert-before-507', 
    'array-insert-before-508', 
    'array-insert-before-509', 
    'array-insert-before-510', 
    'array-insert-before-511']}].
environment('array',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"}]},
{schemas, []}, 
{resources, []}, 
{modules, []}
].
'array-insert-before-501'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "array:insert-before([\"a\", \"b\", \"c\", \"d\"], 3, (\"x\", \"y\"))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('array',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "array-insert-before-501.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"array(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"array:size($result) eq 5") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_deep_eq(Res,"[\"a\", \"b\", (\"x\", \"y\"), \"c\", \"d\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'array-insert-before-502'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "array:insert-before([\"a\", \"b\", \"c\", \"d\"], 5, (\"x\", \"y\"))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('array',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "array-insert-before-502.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"array(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"array:size($result) eq 5") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_deep_eq(Res,"[\"a\", \"b\", \"c\", \"d\", (\"x\", \"y\")]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'array-insert-before-503'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "array:insert-before([\"a\", \"b\", \"c\", \"d\"], 3, [\"x\", \"y\"])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('array',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "array-insert-before-503.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"array(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"array:size($result) eq 5") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_deep_eq(Res,"[\"a\", \"b\", [\"x\", \"y\"], \"c\", \"d\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'array-insert-before-504'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "array:insert-before([\"a\", \"b\", \"c\", \"d\"], 1, ([],[]))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('array',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "array-insert-before-504.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"array(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"array:size($result) eq 5") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_deep_eq(Res,"[([],[]), \"a\", \"b\", \"c\", \"d\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'array-insert-before-505'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "array:insert-before([], 1, ())", 
   {Env,Opts} = xqerl_test:handle_environment(environment('array',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "array-insert-before-505.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"array(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"array:size($result) eq 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_deep_eq(Res,"[()]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'array-insert-before-506'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "array:insert-before([], 2, ())", 
   {Env,Opts} = xqerl_test:handle_environment(environment('array',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "array-insert-before-506.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAY0001") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FOAY0001 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'array-insert-before-507'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "array:insert-before([4,5,[6]], 0, \"a\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('array',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "array-insert-before-507.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAY0001") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FOAY0001 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'array-insert-before-508'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "   
              let $x := <x/>
        	  let $array := [<e/>, <f/>, <g/>]
           	  for $i in 1 to array:size($array) + 1
              return
        	     array:insert-before($array, $i, $x) 
        ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('array',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "array-insert-before-508.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"array(*)+") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"count($result) eq 4") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"deep-equal($result[1]?*!local-name(), ('x', 'e', 'f', 'g'))") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"deep-equal($result[2]?*!local-name(), ('e', 'x', 'f', 'g'))") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"deep-equal($result[3]?*!local-name(), ('e', 'f', 'x', 'g'))") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"deep-equal($result[4]?*!local-name(), ('e', 'f', 'g', 'x'))") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'array-insert-before-509'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "   
              let $x := 1
              let $array := [0,0,0]
              for $i in 1 to array:size($array) + 1
              return
                 array:insert-before($array, $i, $x) 
        ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('array',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "array-insert-before-509.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"array(*)+") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"count($result) eq 4") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_deep_eq(Res," 
                    [1,0,0,0],
                    [0,1,0,0],
                    [0,0,1,0],
                    [0,0,0,1]
                ") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'array-insert-before-510'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "   
              let $x := <c/>
              let $array := [<a/>, <b/>]
              let $insert1 := array:insert-before($array, 1, $x)
              let $insert2 := array:insert-before($array, 2, $x)
              for $element in (array:flatten($insert1) union array:flatten($insert2))
              let $name := $element/name()
              order by $name
              return $name
        ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('array',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "array-insert-before-510.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(\"a\", \"b\", \"c\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'array-insert-before-511'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "array:insert-before([1], 4294967297, 22)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "array-insert-before-511.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAY0001") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FOAY0001 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.