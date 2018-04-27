-module('array_sort_SUITE').
-include_lib("common_test/include/ct.hrl").
-compile({nowarn_unused_function,[environment/2]}).
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['array-sort-001'/1]).
-export(['array-sort-002'/1]).
-export(['array-sort-003'/1]).
-export(['array-sort-004'/1]).
-export(['array-sort-005'/1]).
-export(['array-sort-006'/1]).
-export(['array-sort-007'/1]).
-export(['array-sort-008'/1]).
-export(['array-sort-009'/1]).
-export(['array-sort-010'/1]).
-export(['array-sort-011'/1]).
-export(['array-sort-012'/1]).
-export(['array-sort-012a'/1]).
-export(['array-sort-013'/1]).
-export(['array-sort-014'/1]).
-export(['array-sort-015'/1]).
-export(['array-sort-016'/1]).
-export(['array-sort-017'/1]).
-export(['array-sort-018'/1]).
-export(['array-sort-019'/1]).
-export(['array-sort-020'/1]).
-export(['array-sort-021'/1]).
-export(['array-sort-022'/1]).
-export(['array-sort-023'/1]).
-export(['array-sort-024'/1]).
-export(['array-sort-025'/1]).
-export(['array-sort-026'/1]).
-export(['array-sort-collation-1'/1]).
-export(['array-sort-collation-2'/1]).
-export(['array-sort-collation-3'/1]).
-export(['array-sort-collation-4'/1]).
-export(['array-sort-collation-5'/1]).
-export(['array-sort-collation-6'/1]).
-export(['array-sort-collation-7'/1]).
-export(['array-sort-collation-8'/1]).
suite() -> [{timetrap,{seconds,5}}].
end_per_suite(_Config) -> 
   ct:timetrap({seconds,60}), 
   xqerl_module:unload(all).
init_per_suite(Config) -> 
   ok = application:ensure_started(mnesia),
   ok = application:ensure_started(xqerl_db),
   xqerl_module:one_time_init(), 
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   __BaseDir = filename:join(TD, "array"),
   [{base_dir, __BaseDir}|Config].
all() -> [
'array-sort-001', 
'array-sort-002', 
'array-sort-003', 
'array-sort-004', 
'array-sort-005', 
'array-sort-006', 
'array-sort-007', 
'array-sort-008', 
'array-sort-009', 
'array-sort-010', 
'array-sort-011', 
'array-sort-012', 
'array-sort-012a', 
'array-sort-013', 
'array-sort-014', 
'array-sort-015', 
'array-sort-016', 
'array-sort-017', 
'array-sort-018', 
'array-sort-019', 
'array-sort-020', 
'array-sort-021', 
'array-sort-022', 
'array-sort-023', 
'array-sort-024', 
'array-sort-025', 
'array-sort-026', 
'array-sort-collation-1', 
'array-sort-collation-2', 
'array-sort-collation-3', 
'array-sort-collation-4', 
'array-sort-collation-5', 
'array-sort-collation-6', 
'array-sort-collation-7', 
'array-sort-collation-8'
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
]; 
environment('atomic',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/atomic.xml"), ".","http://www.w3.org/fots/docs/atomic.xml"}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{schemas, [{filename:join(__BaseDir, "../docs/atomic.xsd"),"http://www.w3.org/XQueryTest"}]}, 
{resources, []}, 
{modules, []}
]; 
environment('atomic-xq',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/atomic.xml"), ".","http://www.w3.org/fots/docs/atomic.xml"}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, [{filename:join(__BaseDir, "../docs/atomic.xsd"),"http://www.w3.org/XQueryTest"}]}, 
{resources, []}, 
{modules, []}
]; 
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
]; 
environment('works',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/works.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('staff',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/staff.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('works-and-staff',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/works.xml"), "$works",[]}, 
{filename:join(__BaseDir, "../docs/staff.xml"), "$staff",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
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
environment('qname',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/QName-source.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, [{"http://www.example.com/QNameXSD",""}]},
{schemas, [{filename:join(__BaseDir, "../docs/QName-schema.xsd"),"http://www.example.com/QNameXSD"}]}, 
{resources, []}, 
{modules, []}
]; 
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
]; 
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
]; 
environment('array-and-map',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"}, 
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('array-with-collation',__BaseDir) ->
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
'array-sort-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "array:sort([1, 4, 6, 5, 3])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('array',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "array-sort-001.xq"), Qry1),
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
   case xqerl_test:assert_deep_eq(Res,"[1, 3, 4, 5, 6]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'array-sort-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "array:sort([1, -2, 5, 10, -10, 10, 8], (), fn:abs#1)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('array',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "array-sort-002.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"array(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"array:size($result) eq 7") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_deep_eq(Res,"[1, -2, 5, 8, 10, -10, 10]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'array-sort-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "array:sort([(1,0), (1,1), (0,1), (0,0)])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('array',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "array-sort-003.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"array(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"array:size($result) eq 4") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_deep_eq(Res,"[(0,0), (0,1), (1,0), (1,1)]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'array-sort-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "array:sort([(1,0), (1,1), (0,1), (0,0), (), (1), (0,0,1)])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('array',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "array-sort-004.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"array(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"array:size($result) eq 7") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_deep_eq(Res,"[(), (0,0), (0,0,1), (0,1), (1), (1,0), (1,1)]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'array-sort-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "array:sort([(1,0), (1,1), (0,1), (0,0), (), (1), (0,0,1)], default-collation(), count#1)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('array',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "array-sort-005.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"array(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"array:size($result) eq 7") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_deep_eq(Res,"[(), (1), (1,0), (1,1), (0,1), (0,0), (0,0,1)]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'array-sort-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "array:sort([\"one\", \"two\", \"three\", \"four\", \"five\", \"fourteen\"])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('array',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "array-sort-006.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"array(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"array:size($result) eq 6") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_deep_eq(Res,"[\"five\", \"four\", \"fourteen\", \"one\", \"three\", \"two\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'array-sort-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "array:sort([\"one\", \"two\", \"three\", (0), (2,3)])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('array',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "array-sort-007.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'array-sort-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "array:sort([\"one\", \"two\", \"three\", \"four\", \"five\", \"fourteen\"], (), function($x) {string-length($x), data($x)})", 
   {Env,Opts} = xqerl_test:handle_environment(environment('array',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "array-sort-008.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"array(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"array:size($result) eq 6") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_deep_eq(Res,"[\"one\", \"two\", \"five\", \"four\", \"three\", \"fourteen\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'array-sort-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "array:sort([[2,3],[],[4,5,6,7],[6,7],[3]], default-collation(), array:size#1)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('array',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "array-sort-009.xq"), Qry1),
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
   case xqerl_test:assert_deep_eq(Res,"[[],[3],[2,3],[6,7],[4,5,6,7]]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'array-sort-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "array:sort([[2,3],[],[4,5,6,7],[6,7],[3]], default-collation(), fn:data#1)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('array',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "array-sort-010.xq"), Qry1),
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
   case xqerl_test:assert_deep_eq(Res,"[[],[2,3],[3],[4,5,6,7],[6,7]]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'array-sort-011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "array:sort([[1,0], [1,1], [0,1], [0,0], [], [1], [0,0,1]], (), fn:data#1)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('array',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "array-sort-011.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"array(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"array:size($result) eq 7") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_deep_eq(Res,"[[], [0,0], [0,0,1], [0,1], [1], [1,0], [1,1]]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'array-sort-012'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "array:sort([\"the cat\", \"sat\", \"on the mat\"], \"http://www.w3.org/2005/xpath-functions/collation/codepoint\", function($x) {count(tokenize($x, \" \"))})", 
   {Env,Opts} = xqerl_test:handle_environment(environment('array',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "array-sort-012.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"array(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"array:size($result) eq 3") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_deep_eq(Res,"[\"sat\", \"the cat\", \"on the mat\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'array-sort-012a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "array:sort([\"the cat\", \"sat\", \"on the mat\"], (), function($x) {count(tokenize($x))})", 
   {Env,Opts} = xqerl_test:handle_environment(environment('array',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "array-sort-012a.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"array(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"array:size($result) eq 3") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_deep_eq(Res,"[\"sat\", \"the cat\", \"on the mat\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'array-sort-013'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "array:sort([[\"John\",\"Smith\"], [\"John\",\"Brown\"], [\"Fred\",\"Brown\"], [\"Fred\",\"Smith\"]], (), function($emp) {fn:data(array:get($emp, 1))})", 
   {Env,Opts} = xqerl_test:handle_environment(environment('array',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "array-sort-013.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"array(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"array:size($result) eq 4") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_deep_eq(Res,"[[\"Fred\",\"Brown\"], [\"Fred\",\"Smith\"], [\"John\",\"Smith\"], [\"John\",\"Brown\"]]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'array-sort-014'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "array:sort([[\"John\",\"Smith\"], [\"John\",\"Brown\"], [\"Fred\",\"Brown\"], [\"Fred\",\"Smith\"]], (), function($emp) {fn:data(array:get($emp, 2)), fn:data(array:get($emp, 1))})", 
   {Env,Opts} = xqerl_test:handle_environment(environment('array',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "array-sort-014.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"array(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"array:size($result) eq 4") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_deep_eq(Res,"[[\"Fred\",\"Brown\"], [\"John\",\"Brown\"], [\"Fred\",\"Smith\"], [\"John\",\"Smith\"]]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'array-sort-015'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "array:sort([[\"John\",\"Smith\"], [\"John\",\"Brown\"], [\"Fred\",\"Brown\"], [\"Fred\",\"Smith\"]], (), function($emp) {array:get($emp, 2), array:get($emp, 1)})", 
   {Env,Opts} = xqerl_test:handle_environment(environment('array',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "array-sort-015.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"array(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"array:size($result) eq 4") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_deep_eq(Res,"[[\"Fred\",\"Brown\"], [\"John\",\"Brown\"], [\"Fred\",\"Smith\"], [\"John\",\"Smith\"]]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'array-sort-016'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "array:sort([[1,0], [1,1], [0,1], [0,0], [], [1], [0,0,1]], (), function($x) {array:size(array:filter($x, function($y) {$y eq 1}))})", 
   {Env,Opts} = xqerl_test:handle_environment(environment('array',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "array-sort-016.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"array(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"array:size($result) eq 7") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_deep_eq(Res,"[[0,0], [], [1,0], [0,1], [1], [0,0,1], [1,1]]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'array-sort-017'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "array:sort([[1,0], [1,1], [0,1], [0,0], [], [1], [0,0,1]], (), function($x) {array:size($x), array:size(array:filter($x, function($y) {$y eq 1}))})", 
   {Env,Opts} = xqerl_test:handle_environment(environment('array',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "array-sort-017.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"array(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"array:size($result) eq 7") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_deep_eq(Res,"[[], [1], [0,0], [1,0], [0,1], [1,1], [0,0,1]]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'array-sort-018'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
            deep-equal(
            array:sort(
             [
                [<e>a</e>, <e>b</e>],
                [(<f>a</f>, <f>b</f>)],
                [<g>a</g>, <g>b</g>],
                \"A\",
                (\"A\",\"B\")     
             ]
            )
            ,[
                    \"A\",
                    (\"A\",\"B\"),                    
                    [<e>a</e>, <e>b</e>],
                    [(<f>a</f>, <f>b</f>)],
                    [<g>a</g>, <g>b</g>]   
                  ]  )
        ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('array',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "array-sort-018.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'array-sort-019'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "array:sort([map{},1])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('array',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "array-sort-019.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOTY0013") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'array-sort-020'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaValidation"}. 
'array-sort-021'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
          let $a := [xs:float(\"NaN\"), 1],     
          $b := [xs:float(\"NaN\"), 2]
          return     
             array:sort([$a,$b,$a,$b])
        ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('array',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "array-sort-021.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"every $x in 1 to 4 satisfies deep-equal($result?($x)?(1), xs:float(\"NaN\"))") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result?1?2 eq 1 and $result?2?2 eq 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result?3?2 eq 2 and $result?4?2 eq 2") of 
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
'array-sort-022'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let
	  $employees := [
	    <emp id='1'><name><last>Cawcutt</last></name></emp>,
	    <emp id='2'><name><first>Hans</first><last>Gro&#xeb;r</last></name></emp>,
	    <emp id='3'><name><first>Domingo</first><last>De Silveira</last></name></emp>,
	    <emp id='4'><name><first>Keith</first><last>O'Brien</last></name></emp>,
	    <emp id='5'><name><first>Susan</first><last>Cawcutt</last></name></emp>,
	    <emp id='6'><name><first>Martin</first><last>Cawcutt</last></name></emp>,
	    <emp id='7'><name><first>Martin</first><first>James</first><last>Cawcutt</last></name></emp>
	    ]
	    return array:sort($employees, default-collation(), function($emp) {$emp/name/last, $emp/name/first})?* ! number(@id)
     ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('array',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "array-sort-022.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1, 6, 7, 5, 3, 2, 4") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'array-sort-023'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "array:sort( parse-json('[{\"key\":1, \"value\":89}, {\"key\":6, \"value\":21}, {\"key\":2, \"value\":33}]'), (), map:get(?, \"key\"))?*?value", 
   {Env,Opts} = xqerl_test:handle_environment(environment('array-and-map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "array-sort-023.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"89, 33, 21") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'array-sort-024'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "array:sort( parse-json('[{\"key\":1, \"value\":89}, {\"key\":6, \"value\":21}, {\"key\":\"two\", \"value\":33}]'), (), map:get(?, \"key\"))?*?value", 
   {Env,Opts} = xqerl_test:handle_environment(environment('array-and-map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "array-sort-024.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'array-sort-025'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "array:sort([xs:untypedAtomic('2015-06-12+01:00'), current-date()])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('array',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "array-sort-025.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'array-sort-026'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
            declare namespace array = \"http://www.w3.org/2005/xpath-functions/array\";
            declare namespace serialization = \"http://www.w3.org/2010/xslt-xquery-serialization\";
            
            (:declare option serialization:method \"adaptive\";:)
            
            declare function local:fact($n as xs:integer) {
              if ($n eq 1)
                then 1
                else $n * local:fact($n - 1)
            };
            
            declare function local:permute($seq as item()*) as array(item()*) {
              local:permute($seq, local:fact(count($seq)), random-number-generator())
            };
            
            declare function local:permute($seq as item()*, $n as xs:integer, $rng as map(*)) as array(item()*) {
              if ($n eq 0)
                then []
                else array:append(local:permute($seq, $n - 1, $rng?next()), $rng?permute($seq))
            };
            
            let $s := ('A', 'B', 'C')
            
            return array:sort(local:permute($s), (), function($s) { $s!. }) => array:for-each(string-join#1)
        ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('array',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "array-sort-026.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"every $s in $result?* satisfies $s = (\"ABC\", \"ACB\", \"BAC\", \"BCA\", \"CAB\", \"CBA\")") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'array-sort-collation-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         declare namespace array=\"http://www.w3.org/2005/xpath-functions/array\";
         declare namespace map=\"http://www.w3.org/2005/xpath-functions/map\";
         declare default collation \"http://www.w3.org/2010/09/qt-fots-catalog/collation/caseblind\";
         array:sort([\"Red\", \"green\", \"blUE\", \"PINK\", \"ORanGE\"])
     ", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, []}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "array-sort-collation-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"blUE\", \"green\", \"ORanGE\", \"PINK\", \"Red\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'array-sort-collation-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         declare namespace array=\"http://www.w3.org/2005/xpath-functions/array\";
         declare namespace map=\"http://www.w3.org/2005/xpath-functions/map\";
         declare default collation \"http://www.w3.org/2010/09/qt-fots-catalog/collation/caseblind\";
         array:sort([\"Red\", \"green\", \"blUE\", \"PINK\", \"ORanGE\"], ())
     ", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, []}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "array-sort-collation-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"blUE\", \"green\", \"ORanGE\", \"PINK\", \"Red\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'array-sort-collation-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         declare namespace array=\"http://www.w3.org/2005/xpath-functions/array\";
         declare namespace map=\"http://www.w3.org/2005/xpath-functions/map\";
         declare default collation \"http://www.w3.org/2010/09/qt-fots-catalog/collation/caseblind\";
         array:sort([\"Red\", \"green\", \"blUE\", \"PINK\", \"ORanGE\"], (), string#1)
     ", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, []}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "array-sort-collation-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"blUE\", \"green\", \"ORanGE\", \"PINK\", \"Red\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'array-sort-collation-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "array:sort([\"Red\", \"green\", \"blUE\", \"PINK\", \"ORanGE\"], \"http://www.w3.org/2010/09/qt-fots-catalog/collation/caseblind\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('array-with-collation',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "array-sort-collation-4.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"blUE\", \"green\", \"ORanGE\", \"PINK\", \"Red\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'array-sort-collation-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "array:sort([\"Red\", \"green\", \"blUE\", \"PINK\", \"ORanGE\"], \"http://www.w3.org/2010/09/qt-fots-catalog/collation/caseblind\", fn:string#1)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('array-with-collation',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "array-sort-collation-5.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"blUE\", \"green\", \"ORanGE\", \"PINK\", \"Red\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'array-sort-collation-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "array:sort([\"Red\", \"green\", \"blUE\", \"PINK\", \"ORanGE\"], \"http://www.w3.org/2005/xpath-functions/collation/codepoint\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('array-with-collation',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "array-sort-collation-6.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"ORanGE\", \"PINK\", \"Red\", \"blUE\", \"green\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'array-sort-collation-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "array:sort([\"Red\", \"green\", \"blUE\", \"PINK\", \"ORanGE\"], \"http://www.w3.org/2005/xpath-functions/collation/codepoint\", fn:string#1)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('array-with-collation',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "array-sort-collation-7.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"ORanGE\", \"PINK\", \"Red\", \"blUE\", \"green\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'array-sort-collation-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         declare namespace array=\"http://www.w3.org/2005/xpath-functions/array\";
         declare default collation \"http://www.w3.org/2010/09/qt-fots-catalog/collation/caseblind\";
         declare function local:key($n as xs:integer) as xs:string {
             (\"Red\", \"green\", \"blUE\", \"PINK\", \"ORanGE\")[$n]
         };
         array:sort([1,2,3,4,5], \"http://www.w3.org/2010/09/qt-fots-catalog/collation/caseblind\", local:key#1)
         ", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, []}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "array-sort-collation-8.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[3, 2, 5, 4, 1]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.