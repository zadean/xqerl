-module('map_merge_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['map-merge-001'/1]).
-export(['map-merge-002'/1]).
-export(['map-merge-003-hof'/1]).
-export(['map-merge-003'/1]).
-export(['map-merge-004'/1]).
-export(['map-merge-005'/1]).
-export(['map-merge-006'/1]).
-export(['map-merge-006b'/1]).
-export(['map-merge-006c'/1]).
-export(['map-merge-006d'/1]).
-export(['map-merge-006e'/1]).
-export(['map-merge-006f'/1]).
-export(['map-merge-007'/1]).
-export(['map-merge-008'/1]).
-export(['map-merge-009'/1]).
-export(['map-merge-010'/1]).
-export(['map-merge-011'/1]).
-export(['map-merge-012'/1]).
-export(['map-merge-013'/1]).
-export(['map-merge-016'/1]).
-export(['map-merge-017'/1]).
-export(['map-merge-018'/1]).
-export(['map-merge-019'/1]).
-export(['map-merge-020'/1]).
-export(['map-merge-021'/1]).
-export(['map-merge-022'/1]).
-export(['map-merge-023'/1]).
-export(['map-merge-024-hof'/1]).
-export(['map-merge-024'/1]).
-export(['map-merge-025'/1]).
-export(['map-merge-026'/1]).
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
   __BaseDir = filename:join(TD, "map"),
   [{base_dir, __BaseDir}|Config].
all() -> [
   {group, group_0}, 
   {group, group_1}
   ].
groups() -> [
   {group_0, [parallel], [
    'map-merge-001', 
    'map-merge-002', 
    'map-merge-003-hof', 
    'map-merge-003', 
    'map-merge-004', 
    'map-merge-005', 
    'map-merge-006', 
    'map-merge-006b', 
    'map-merge-006c', 
    'map-merge-006d', 
    'map-merge-006e', 
    'map-merge-006f', 
    'map-merge-007', 
    'map-merge-008', 
    'map-merge-009', 
    'map-merge-010', 
    'map-merge-011', 
    'map-merge-012', 
    'map-merge-013', 
    'map-merge-016', 
    'map-merge-017', 
    'map-merge-018', 
    'map-merge-019']}, 
   {group_1, [parallel], [
    'map-merge-020', 
    'map-merge-021', 
    'map-merge-022', 
    'map-merge-023', 
    'map-merge-024-hof', 
    'map-merge-024', 
    'map-merge-025', 
    'map-merge-026']}].
environment('auction',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/auction.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, [{"http://www.example.com/AuctionWatch","ma"}, 
{"http://www.w3.org/1999/xlink","xlink"}, 
{"http://www.example.com/auctioneers#anyzone","anyzone"}, 
{"http://www.example.com/auctioneers#eachbay","eachbay"}, 
{"http://www.example.com/auctioneers#yabadoo","yabadoo"}, 
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
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
'map-merge-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:merge()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-merge-001.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPST0017 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'map-merge-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:merge(())", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-merge-002.xq"), Qry1),
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
   case xqerl_test:assert_type(Res,"map(xs:date, element()+)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'map-merge-003-hof'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:merge(map:entry(\"foo\", 1 to 5))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-merge-003-hof.xq"), Qry1),
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
   case xqerl_test:assert_type(Res,"map(xs:string, xs:integer+)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_type(Res,"function(xs:anyURI) as xs:integer*") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'map-merge-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:merge(map:entry(\"foo\", 1 to 5))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-merge-003.xq"), Qry1),
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
   case xqerl_test:assert_type(Res,"map(xs:string, xs:integer+)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'map-merge-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:merge((map:entry(\"foo\", 1 to 5), map:entry(\"bar\", 6 to 10)))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-merge-004.xq"), Qry1),
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
   case xqerl_test:assert_type(Res,"map(xs:string, xs:integer+)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"map:size($result) eq 2") of 
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
'map-merge-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:merge(for $i in 1 to 20 return map:entry($i, $i*$i))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-merge-005.xq"), Qry1),
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
   case xqerl_test:assert(Res,"map:size($result) eq 20") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"map:get($result, 9) eq 81") of 
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
'map-merge-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:merge((map:entry(\"foo\", 3), map:entry(\"foo\", 4)), map{\"duplicates\": \"use-last\"})", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-merge-006.xq"), Qry1),
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
   case xqerl_test:assert_type(Res,"map(xs:string, xs:integer)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"map:size($result) eq 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"map:get($result, \"foo\") eq 4") of 
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
'map-merge-006b'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:merge((map:entry(\"foo\", 3), map:entry(\"foo\", 4)), map{\"duplicates\": \"use-first\"})", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-merge-006b.xq"), Qry1),
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
   case xqerl_test:assert_type(Res,"map(xs:string, xs:integer)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"map:size($result) eq 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"map:get($result, \"foo\") eq 3") of 
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
'map-merge-006c'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:merge((map:entry(\"foo\", 3), map:entry(\"foo\", 4)), map{\"duplicates\": \"combine\"})", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-merge-006c.xq"), Qry1),
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
   case xqerl_test:assert_type(Res,"map(xs:string, xs:integer+)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"map:size($result) eq 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"deep-equal(map:get($result, \"foo\"), (3,4))") of 
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
'map-merge-006d'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:merge((map:entry(\"foo\", 3), map:entry(\"foo\", 4)), map{\"duplicates\": \"use-any\"})", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-merge-006d.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"deep-equal(map:get($result, \"foo\"), 3)") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"deep-equal(map:get($result, \"foo\"), 4)") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'map-merge-006e'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:merge((map:entry(\"foo\", 3), map:entry(\"foo\", 4)))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-merge-006e.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"deep-equal(map:get($result, \"foo\"), 3)") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"deep-equal(map:get($result, \"foo\"), 4)") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'map-merge-006f'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:merge((map:entry(\"foo\", 3), map:entry(\"foo\", 4)), map{\"duplicates\": \"reject\"})", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-merge-006f.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0003") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FOJS0003 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'map-merge-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $foo := map:entry(\"foo\", 3), $bar := map:entry(\"foo\", 4), $foobar := map:merge(($foo, $bar))
              return ($foobar, $bar, $foo)[3]", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-merge-007.xq"), Qry1),
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
   case xqerl_test:assert_type(Res,"map(xs:string, xs:integer)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"map:size($result) eq 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"map:get($result, \"foo\") eq 3") of 
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
'map-merge-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $foo := map:merge(for $i in 1 to 20 return map:entry($i, $i*$i)), $bar := map:entry(8, 63), $foobar := map:merge(($foo, $bar))
              return ($foobar, $bar, $foo)[3]", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-merge-008.xq"), Qry1),
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
   case xqerl_test:assert(Res,"map:size($result) eq 20") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"$result?8 eq 64") of 
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
'map-merge-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $foo := map:merge(for $i in 1 to 20 return map:entry($i, $i*$i)), $bar := map:entry(8, 63), $foobar := map:merge(($foo, $bar))
              return ($foobar, $bar, $foo)[2]", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-merge-009.xq"), Qry1),
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
   case xqerl_test:assert(Res,"map:size($result) eq 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"$result?8 eq 63") of 
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
'map-merge-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $foo := map:merge(for $i in 1 to 20 return map:entry($i, $i*$i)), $bar := map:merge(()), $foobar := map:merge(($foo, $bar))
              return $foobar", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-merge-010.xq"), Qry1),
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
   case xqerl_test:assert(Res,"map:size($result) eq 20") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"$result?8 eq 64") of 
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
'map-merge-011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:merge((map:entry(3, \"three\"), map:entry(3.0e0, \"threeD\"), map:entry(xs:float('3.0'), \"threeF\")),
            map{\"duplicates\" : \"use-last\"})", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-merge-011.xq"), Qry1),
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
   case xqerl_test:assert_type(Res,"map(xs:float, xs:string)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"map:size($result) eq 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"$result?(3.0) eq \"threeF\"") of 
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
'map-merge-012'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:merge(for $n in distinct-values(//*/node-name()) 
                      return map:entry($n, //*[node-name() eq $n]))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('auction',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-merge-012.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_type(Res,"map(xs:QName, element()+)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"map:contains($result, QName(\"http://www.example.com/AuctionWatch\", \"Seller\"))") of 
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
'map-merge-013'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:merge(for $n in 1 to 20 return map:entry($n, map{$n :string($n), $n+1:string($n+1), $n+2:string($n+2)}))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-merge-013.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"map(xs:integer, map(xs:integer, xs:string))") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"$result?1?3 eq \"3\"") of 
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
'map-merge-016'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "deep-equal(map{}, map:merge(()))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-merge-016.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'map-merge-017'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "deep-equal(map{\"a\":1}, map:entry(\"a\", 1))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-merge-017.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'map-merge-018'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "deep-equal(map{\"a\":1,\"b\":2,\"c\":(3,4,5)}, map{\"c\":(3,4,5),\"a\":1,\"b\":2})", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-merge-018.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'map-merge-019'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "deep-equal(map{\"a\":1}, map:merge(()))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-merge-019.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'map-merge-020'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "deep-equal(map:merge(for $i in 1 to 1000 return map:entry($i, $i+1)),
                         map:merge(for $i in 2 to 1001 return map:entry($i, $i+1)))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-merge-020.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'map-merge-021'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "deep-equal(map:merge(for $i in 1 to 1000 return map:entry($i, $i+1)),
                         map:merge(((for $i in 1 to 1000 return map:entry($i, $i+1)), map:entry(400, 402)),
                         map{\"duplicates\":\"use-last\"}))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-merge-021.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'map-merge-022'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "deep-equal(map:merge(for $i in 1 to 1000 return map:entry($i, $i+1)),
                         map:merge(for $i in 0 to 1000 return map:entry($i, $i+1)))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-merge-022.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'map-merge-023'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "deep-equal(map:merge(for $i in 1 to 1000 return map:entry($i, $i+1)),
                         map:merge(for $i in 2 to 1000 return map:entry($i, $i+1)))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-merge-023.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'map-merge-024-hof'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:merge(map:entry(\"foo\", 1 to 5))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-merge-024-hof.xq"), Qry1),
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
   case xqerl_test:assert_type(Res,"map(xs:string, xs:integer+)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_type(Res,"function(xs:anyURI) as item()*") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'map-merge-024'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:merge(map:entry(\"foo\", 1 to 5))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-merge-024.xq"), Qry1),
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
   case xqerl_test:assert_type(Res,"map(xs:string, xs:integer+)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'map-merge-025'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:merge((1 to 2000)!map:entry('z', .), map{'duplicates':'combine'})?z", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-merge-025.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1 to 2000") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'map-merge-026'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:merge((1 to 100)!map:entry('z', .), if (current-date() lt xs:date('1900-01-01')) then map{'duplicates':'combine'} else ())?z", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-merge-026.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.