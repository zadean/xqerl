-module('prod_MapConstructor_SUITE').
-include_lib("common_test/include/ct.hrl").
-compile({nowarn_unused_function,[environment/2]}).
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['MapConstructor-001'/1]).
-export(['MapConstructor-002'/1]).
-export(['MapConstructor-003'/1]).
-export(['MapConstructor-004'/1]).
-export(['MapConstructor-005'/1]).
-export(['MapConstructor-006'/1]).
-export(['MapConstructor-007'/1]).
-export(['MapConstructor-008'/1]).
-export(['MapConstructor-009'/1]).
-export(['MapConstructor-010'/1]).
-export(['MapConstructor-011'/1]).
-export(['MapConstructor-012'/1]).
-export(['MapConstructor-013'/1]).
-export(['MapConstructor-014'/1]).
-export(['MapConstructor-015'/1]).
-export(['MapConstructor-016'/1]).
-export(['MapConstructor-017'/1]).
-export(['MapConstructor-018'/1]).
-export(['MapConstructor-019'/1]).
-export(['MapConstructor-020'/1]).
-export(['MapConstructor-021'/1]).
-export(['MapConstructor-022'/1]).
-export(['MapConstructor-023'/1]).
-export(['MapConstructor-024'/1]).
-export(['MapConstructor-025'/1]).
-export(['MapConstructor-026'/1]).
-export(['MapConstructor-027'/1]).
-export(['MapConstructor-028'/1]).
-export(['MapConstructor-029'/1]).
-export(['MapConstructor-030'/1]).
-export(['MapConstructor-031'/1]).
-export(['MapConstructor-032'/1]).
-export(['MapConstructor-033'/1]).
-export(['MapConstructor-034'/1]).
-export(['MapConstructor-035'/1]).
-export(['MapConstructor-036'/1]).
-export(['MapConstructor-037'/1]).
-export(['MapConstructor-038'/1]).
-export(['MapConstructor-039'/1]).
-export(['MapConstructor-040'/1]).
-export(['MapConstructor-041'/1]).
-export(['MapConstructor-042'/1]).
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
   __BaseDir = filename:join(TD, "prod"),
   [{base_dir, __BaseDir}|Config].
all() -> [
'MapConstructor-001', 
'MapConstructor-002', 
'MapConstructor-003', 
'MapConstructor-004', 
'MapConstructor-005', 
'MapConstructor-006', 
'MapConstructor-007', 
'MapConstructor-008', 
'MapConstructor-009', 
'MapConstructor-010', 
'MapConstructor-011', 
'MapConstructor-012', 
'MapConstructor-013', 
'MapConstructor-014', 
'MapConstructor-015', 
'MapConstructor-016', 
'MapConstructor-017', 
'MapConstructor-018', 
'MapConstructor-019', 
'MapConstructor-020', 
'MapConstructor-021', 
'MapConstructor-022', 
'MapConstructor-023', 
'MapConstructor-024', 
'MapConstructor-025', 
'MapConstructor-026', 
'MapConstructor-027', 
'MapConstructor-028', 
'MapConstructor-029', 
'MapConstructor-030', 
'MapConstructor-031', 
'MapConstructor-032', 
'MapConstructor-033', 
'MapConstructor-034', 
'MapConstructor-035', 
'MapConstructor-036', 
'MapConstructor-037', 
'MapConstructor-038', 
'MapConstructor-039', 
'MapConstructor-040', 
'MapConstructor-041', 
'MapConstructor-042'
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
].
'MapConstructor-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:size(map{})", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "MapConstructor-001.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'MapConstructor-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:size(map{     })", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "MapConstructor-002.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'MapConstructor-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:size(map {})", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "MapConstructor-003.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'MapConstructor-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:size(map{\"a\":2})", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "MapConstructor-004.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'MapConstructor-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:size(map{ \"a\" : 2 })", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "MapConstructor-005.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'MapConstructor-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:size(map{\"a\":2,\"b\":3})", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "MapConstructor-006.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'MapConstructor-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:size(map { \"a\" : 2 , \"b\" : 3 })", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "MapConstructor-007.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'MapConstructor-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:size(map {\"a\":2, })", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "MapConstructor-008.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'MapConstructor-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:size(map {,\"a\":2})", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "MapConstructor-009.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'MapConstructor-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:size(map {\"a\",\"b\":2})", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "MapConstructor-010.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'MapConstructor-011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:size(map {\"a\":2,3})", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "MapConstructor-011.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'MapConstructor-012'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:size(map {<a>x</a>:2})", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "MapConstructor-012.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'MapConstructor-013'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:size(map {2:<a>x</a>})", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "MapConstructor-013.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'MapConstructor-014'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:size(map {2:<a>x{25}y</a>})", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "MapConstructor-014.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'MapConstructor-015'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:size(<a><b>x</b></a>/map{b:2})", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "MapConstructor-015.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'MapConstructor-016'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace b = \"http://b.com\"; map:size(<a><b:b>x</b:b></a>/map{b:b})", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "MapConstructor-016.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'MapConstructor-017'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:size(<a><b>x</b></a>/map{self::a: b})", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "MapConstructor-017.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'MapConstructor-018'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace a = \"http://a.com\"; map:size(<a><a:b>x</a:b></a>/map{self::a:b})", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "MapConstructor-018.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'MapConstructor-019'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:size(<a><b>x</b></a>/map{*:b:b})", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "MapConstructor-019.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'MapConstructor-020'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:size(<a><b>x</b></a>/map{* :b})", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "MapConstructor-020.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'MapConstructor-021'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:size(<a><self>x</self></a>/map{self:2})", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "MapConstructor-021.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'MapConstructor-022'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:size(map{2:map{3:4}})", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "MapConstructor-022.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'MapConstructor-023'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:size(map{(1 to 5)[. gt year-from-date(current-date())]:93})", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "MapConstructor-023.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'MapConstructor-024'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map:size(map{(1 to 5)[. lt year-from-date(current-date())]:93})", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "MapConstructor-024.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'MapConstructor-025'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $m := map{'a':1} return map:size(map{$m?a:true()})", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "MapConstructor-025.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'MapConstructor-026'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace z = \"http://z.com\"; map:size(<a><z:b>x</z:b></a>/map{z:b:z:b})", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "MapConstructor-026.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'MapConstructor-027'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "

        declare namespace a = \"http://example.com\";

        <dot>
          <a:b>key</a:b>
          <c>value</c>
        </dot>
        !
        map{a:b:c}

        =>
        deep-equal(map{\"key\":<c>value</c>})
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "MapConstructor-027.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'MapConstructor-028'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "

        declare namespace a = \"http://example.com\";

        <dot>
          <a:b>key</a:b>
          <c>value</c>
        </dot>
        !
        map{a:*:c}

        =>
        deep-equal(map{\"key\":<c>value</c>})

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "MapConstructor-028.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'MapConstructor-029'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "

        declare namespace a = \"http://example.com\";

        <dot>
          <a:b>key</a:b>
          <c>value</c>
        </dot>
        !
        map{*:b:c}

        =>
        deep-equal(map{\"key\":<c>value</c>})
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "MapConstructor-029.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'MapConstructor-030'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "

        declare namespace a = \"http://example.com\";

        <dot>
          <a:b>key</a:b>
        </dot>
        !
        map{a:b:*}

        =>
        deep-equal(map{\"key\":<a:b xmlns:a=\"http://example.com\">key</a:b>})
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "MapConstructor-030.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'MapConstructor-031'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "

        declare namespace a = \"http://example.com\";

        <dot>
          <a:b>key</a:b>
        </dot>
        !
        map{a:*:*}

        =>
        deep-equal(map{\"key\":<a:b xmlns:a=\"http://example.com\">key</a:b>})
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "MapConstructor-031.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'MapConstructor-032'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "

        declare namespace a = \"http://example.com\";

        <dot>
          <a:b>key</a:b>
        </dot>
        !
        map{*:b:*}

        => 
        deep-equal(map{\"key\":<a:b xmlns:a=\"http://example.com\">key</a:b>})

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "MapConstructor-032.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'MapConstructor-033'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        <e><f>foo</f></e> ! map{*:*}
        =>
        deep-equal(map{\"foo\":<f>foo</f>})
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "MapConstructor-033.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'MapConstructor-034'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        <e><f>foo</f></e> ! map{*:f:*:f}
        =>
        deep-equal(map{\"foo\":<f>foo</f>})
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "MapConstructor-034.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'MapConstructor-035'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         <e><f>4</f></e>!map{*:*div*,*||*:*}
         =>
         deep-equal(map{\"44\":<f>4</f>,\"4\":1})
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "MapConstructor-035.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'MapConstructor-036'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map{2+2: \"a\", 5-1: \"b\"}", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "MapConstructor-036.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0137") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'MapConstructor-037'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map{xs:integer(2): 5, xs:float(\"2.0\"): 8}", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "MapConstructor-037.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0137") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'MapConstructor-038'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map{xs:double(\"NaN\"): true(), xs:float(\"NaN\"): false()}", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "MapConstructor-038.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0137") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'MapConstructor-039'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map{xs:double(\"INF\"): true(), xs:float(\"INF\"): false()}", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "MapConstructor-039.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0137") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'MapConstructor-040'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map{xs:double(\"-INF\"): true(), xs:float(\"-INF\"): false()}", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "MapConstructor-040.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0137") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'MapConstructor-041'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map{xs:time(\"24:00:00\"): true(), xs:time(\"00:00:00\"): false()}", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "MapConstructor-041.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0137") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'MapConstructor-042'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "map{xs:time(\"05:00:00+05:00\"): true(), xs:time(\"00:00:00Z\"): false()}", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "MapConstructor-042.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0137") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.