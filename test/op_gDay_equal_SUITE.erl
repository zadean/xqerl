-module('op_gDay_equal_SUITE').
-include_lib("common_test/include/ct.hrl").
-compile({nowarn_unused_function,[environment/2]}).
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['op-gDay-equal2args-1'/1]).
-export(['op-gDay-equal2args-2'/1]).
-export(['op-gDay-equal2args-3'/1]).
-export(['op-gDay-equal2args-4'/1]).
-export(['op-gDay-equal2args-5'/1]).
-export(['op-gDay-equal2args-6'/1]).
-export(['op-gDay-equal2args-7'/1]).
-export(['op-gDay-equal2args-8'/1]).
-export(['op-gDay-equal2args-9'/1]).
-export(['op-gDay-equal2args-10'/1]).
-export(['op-gDay-equal-2'/1]).
-export(['op-gDay-equal-3'/1]).
-export(['op-gDay-equal-4'/1]).
-export(['op-gDay-equal-5'/1]).
-export(['op-gDay-equal-6'/1]).
-export(['op-gDay-equal-7'/1]).
-export(['op-gDay-equal-8'/1]).
-export(['op-gDay-equal-9'/1]).
-export(['op-gDay-equal-10'/1]).
-export(['op-gDay-equal-11'/1]).
-export(['op-gDay-equal-12'/1]).
-export(['op-gDay-equal-13'/1]).
-export(['op-gDay-equal-14'/1]).
-export(['K-gDayEQ-1'/1]).
-export(['K-gDayEQ-2'/1]).
-export(['K-gDayEQ-3'/1]).
-export(['K-gDayEQ-4'/1]).
-export(['K-gDayEQ-5'/1]).
-export(['K-gDayEQ-6'/1]).
-export(['K-gDayEQ-7'/1]).
-export(['K-gDayEQ-8'/1]).
-export(['cbcl-gDay-equal-001'/1]).
-export(['cbcl-gDay-equal-002'/1]).
-export(['cbcl-gDay-equal-003'/1]).
-export(['cbcl-gDay-equal-004'/1]).
-export(['cbcl-gDay-equal-005'/1]).
-export(['cbcl-gDay-equal-006'/1]).
-export(['cbcl-gDay-equal-007'/1]).
-export(['cbcl-gDay-equal-008'/1]).
-export(['cbcl-gDay-equal-009'/1]).
-export(['cbcl-gDay-equal-010'/1]).
-export(['cbcl-gDay-equal-011'/1]).
-export(['cbcl-gDay-equal-012'/1]).
-export(['cbcl-gDay-equal-013'/1]).
-export(['cbcl-gDay-equal-014'/1]).
-export(['cbcl-gDay-equal-015'/1]).
-export(['cbcl-gDay-equal-016'/1]).
-export(['cbcl-gDay-equal-017'/1]).
-export(['cbcl-gDay-equal-018'/1]).
-export(['cbcl-gDay-equal-019'/1]).
-export(['cbcl-gDay-equal-020'/1]).
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
   __BaseDir = filename:join(TD, "op"),
   [{base_dir, __BaseDir}|Config].
all() -> [
'op-gDay-equal2args-1', 
'op-gDay-equal2args-2', 
'op-gDay-equal2args-3', 
'op-gDay-equal2args-4', 
'op-gDay-equal2args-5', 
'op-gDay-equal2args-6', 
'op-gDay-equal2args-7', 
'op-gDay-equal2args-8', 
'op-gDay-equal2args-9', 
'op-gDay-equal2args-10', 
'op-gDay-equal-2', 
'op-gDay-equal-3', 
'op-gDay-equal-4', 
'op-gDay-equal-5', 
'op-gDay-equal-6', 
'op-gDay-equal-7', 
'op-gDay-equal-8', 
'op-gDay-equal-9', 
'op-gDay-equal-10', 
'op-gDay-equal-11', 
'op-gDay-equal-12', 
'op-gDay-equal-13', 
'op-gDay-equal-14', 
'K-gDayEQ-1', 
'K-gDayEQ-2', 
'K-gDayEQ-3', 
'K-gDayEQ-4', 
'K-gDayEQ-5', 
'K-gDayEQ-6', 
'K-gDayEQ-7', 
'K-gDayEQ-8', 
'cbcl-gDay-equal-001', 
'cbcl-gDay-equal-002', 
'cbcl-gDay-equal-003', 
'cbcl-gDay-equal-004', 
'cbcl-gDay-equal-005', 
'cbcl-gDay-equal-006', 
'cbcl-gDay-equal-007', 
'cbcl-gDay-equal-008', 
'cbcl-gDay-equal-009', 
'cbcl-gDay-equal-010', 
'cbcl-gDay-equal-011', 
'cbcl-gDay-equal-012', 
'cbcl-gDay-equal-013', 
'cbcl-gDay-equal-014', 
'cbcl-gDay-equal-015', 
'cbcl-gDay-equal-016', 
'cbcl-gDay-equal-017', 
'cbcl-gDay-equal-018', 
'cbcl-gDay-equal-019', 
'cbcl-gDay-equal-020'
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
'op-gDay-equal2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:gDay(\"---01Z\") eq xs:gDay(\"---01Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-gDay-equal2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-gDay-equal2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:gDay(\"---14Z\") eq xs:gDay(\"---01Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-gDay-equal2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-gDay-equal2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:gDay(\"---31Z\") eq xs:gDay(\"---01Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-gDay-equal2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-gDay-equal2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:gDay(\"---01Z\") eq xs:gDay(\"---14Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-gDay-equal2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-gDay-equal2args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:gDay(\"---01Z\") eq xs:gDay(\"---31Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-gDay-equal2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-gDay-equal2args-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:gDay(\"---01Z\") ne xs:gDay(\"---01Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-gDay-equal2args-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-gDay-equal2args-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:gDay(\"---14Z\") ne xs:gDay(\"---01Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-gDay-equal2args-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-gDay-equal2args-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:gDay(\"---31Z\") ne xs:gDay(\"---01Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-gDay-equal2args-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-gDay-equal2args-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:gDay(\"---01Z\") ne xs:gDay(\"---14Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-gDay-equal2args-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-gDay-equal2args-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:gDay(\"---01Z\") ne xs:gDay(\"---31Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-gDay-equal2args-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-gDay-equal-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:gDay(\"---12-05:00\") eq xs:gDay(\"---12Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-gDay-equal-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-gDay-equal-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:not((xs:gDay(\"---12Z\") eq xs:gDay(\"---12Z\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-gDay-equal-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-gDay-equal-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:not(xs:gDay(\"---05Z\") ne xs:gDay(\"---06Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-gDay-equal-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-gDay-equal-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:not(xs:gDay(\"---11Z\") eq xs:gDay(\"---10Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-gDay-equal-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-gDay-equal-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:not(xs:gDay(\"---05Z\") ne xs:gDay(\"---05Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-gDay-equal-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-gDay-equal-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:gDay(\"---04Z\") eq xs:gDay(\"---02Z\")) and (xs:gDay(\"---01Z\") eq xs:gDay(\"---12Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-gDay-equal-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-gDay-equal-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:gDay(\"---12Z\") ne xs:gDay(\"---03Z\")) and (xs:gDay(\"---05Z\") ne xs:gDay(\"---08Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-gDay-equal-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-gDay-equal-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:gDay(\"---02Z\") eq xs:gDay(\"---02Z\")) or (xs:gDay(\"---06Z\") eq xs:gDay(\"---06Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-gDay-equal-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-gDay-equal-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:gDay(\"---06Z\") ne xs:gDay(\"---06Z\")) or (xs:gDay(\"---08Z\") ne xs:gDay(\"---09Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-gDay-equal-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-gDay-equal-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:gDay(\"---03Z\") eq xs:gDay(\"---01Z\")) or (fn:true())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-gDay-equal-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-gDay-equal-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:gDay(\"---08Z\") ne xs:gDay(\"---07Z\")) or (fn:true())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-gDay-equal-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-gDay-equal-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:gDay(\"---05Z\") eq xs:gDay(\"---05Z\")) or (fn:false())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-gDay-equal-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-gDay-equal-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:gDay(\"---09Z\") ne xs:gDay(\"---09Z\")) or (fn:false())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-gDay-equal-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-gDayEQ-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:gDay(\" ---31 \") eq xs:gDay(\"---31\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-gDayEQ-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-gDayEQ-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(xs:gDay(\"---31\") eq xs:gDay(\"---01\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-gDayEQ-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-gDayEQ-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:gDay(\"---01\") ne xs:gDay(\"---10\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-gDayEQ-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-gDayEQ-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(xs:gDay(\"---01\") ne xs:gDay(\"---01\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-gDayEQ-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-gDayEQ-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:gDay(\"---01-00:00\") eq xs:gDay(\"---01Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-gDayEQ-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-gDayEQ-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:gDay(\"---01+00:00\") eq xs:gDay(\"---01Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-gDayEQ-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-gDayEQ-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:gDay(\"---01Z\") eq xs:gDay(\"---01Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-gDayEQ-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-gDayEQ-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:gDay(\"---01-00:00\") eq xs:gDay(\"---01+00:00\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-gDayEQ-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-gDay-equal-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:gDay($day as xs:integer) { if ($day lt 10) then xs:gDay(concat(\"---0\", $day)) else xs:gDay(concat(\"---\", $day)) }; not(local:gDay(1) eq xs:gDay(\"---31\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-gDay-equal-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-gDay-equal-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if (implicit-timezone() eq xs:dayTimeDuration('PT9M'))
            then xs:gDay(\"---30\") eq xs:gDay(\"---31+09:01\")
            else xs:gDay(\"---30\") eq xs:gDay(\"---31+09:00\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-gDay-equal-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-gDay-equal-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if (implicit-timezone() eq xs:dayTimeDuration('PT9M'))
            then xs:gDay(\"---31+09:01\") eq xs:gDay(\"---30\")
            else xs:gDay(\"---31+09:00\") eq xs:gDay(\"---30\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-gDay-equal-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-gDay-equal-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if (implicit-timezone() eq xs:dayTimeDuration('-PT9M'))
            then xs:gDay(\"---30\") eq xs:gDay(\"---31-09:01\")
            else xs:gDay(\"---30\") eq xs:gDay(\"---31-09:00\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-gDay-equal-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-gDay-equal-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if (implicit-timezone() eq xs:dayTimeDuration('-PT9M'))
            then xs:gDay(\"---31-09:01\") eq xs:gDay(\"---30\")
            else xs:gDay(\"---31-09:00\") eq xs:gDay(\"---30\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-gDay-equal-005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-gDay-equal-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:gDay($day as xs:integer) { if ($day lt 10) then xs:gDay(concat(\"---0\", $day)) else xs:gDay(concat(\"---\", $day)) }; not(local:gDay(1) ne xs:gDay(\"---31\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-gDay-equal-006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-gDay-equal-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if (implicit-timezone() eq xs:dayTimeDuration('PT9M'))
            then xs:gDay(\"---30\") ne xs:gDay(\"---31+09:01\")
            else xs:gDay(\"---30\") ne xs:gDay(\"---31+09:00\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-gDay-equal-007.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-gDay-equal-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if (implicit-timezone() eq xs:dayTimeDuration('PT9M'))
            then xs:gDay(\"---31+09:01\") ne xs:gDay(\"---30\")
            else xs:gDay(\"---31+09:00\") ne xs:gDay(\"---30\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-gDay-equal-008.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-gDay-equal-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if (implicit-timezone() eq xs:dayTimeDuration('-PT9M'))
            then xs:gDay(\"---30\") ne xs:gDay(\"---31-09:01\")
            else xs:gDay(\"---30\") ne xs:gDay(\"---31-09:00\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-gDay-equal-009.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-gDay-equal-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if (implicit-timezone() eq xs:dayTimeDuration('-PT9M'))
            then xs:gDay(\"---31-09:01\") ne xs:gDay(\"---30\")
            else xs:gDay(\"---31-09:00\") ne xs:gDay(\"---30\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-gDay-equal-010.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-gDay-equal-011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:gDay($gDay as xs:gDay, $null as xs:boolean) { if ($null) then () else $gDay }; exists(local:gDay(xs:gDay(\"---31\"), fn:true()) eq xs:gDay(\"---31\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-gDay-equal-011.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-gDay-equal-012'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:gDay($gDay as xs:gDay, $null as xs:boolean) { if ($null) then () else $gDay }; local:gDay(xs:gDay(\"---31\"), fn:false()) eq xs:gDay(\"---31\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-gDay-equal-012.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-gDay-equal-013'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:gDay($gDay as xs:gDay, $null as xs:boolean) { if ($null) then () else $gDay }; exists(local:gDay(xs:gDay(\"---31\"), fn:true()) ne xs:gDay(\"---31\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-gDay-equal-013.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-gDay-equal-014'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:gDay($gDay as xs:gDay, $null as xs:boolean) { if ($null) then () else $gDay }; local:gDay(xs:gDay(\"---31\"), fn:false()) ne xs:gDay(\"---31\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-gDay-equal-014.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-gDay-equal-015'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:gDay(\"---30-12:00\") eq xs:gDay(\"---31+12:00\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-gDay-equal-015.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-gDay-equal-016'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:gDay(\"---31+12:00\") eq xs:gDay(\"---30-12:00\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-gDay-equal-016.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-gDay-equal-017'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:gDay(\"---30-12:00\") ne xs:gDay(\"---31+12:00\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-gDay-equal-017.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-gDay-equal-018'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:gDay(\"---31+12:00\") ne xs:gDay(\"---30-12:00\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-gDay-equal-018.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-gDay-equal-019'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if (implicit-timezone() eq xs:dayTimeDuration('PT1H'))
            then xs:gDay(\"---31+01:01\") eq xs:gDay(\"---31\")
            else xs:gDay(\"---31+01:00\") eq xs:gDay(\"---31\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-gDay-equal-019.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-gDay-equal-020'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if (implicit-timezone() eq xs:dayTimeDuration('PT1H'))
            then xs:gDay(\"---31\") eq xs:gDay(\"---31+01:01\")
            else xs:gDay(\"---31\") eq xs:gDay(\"---31+01:00\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-gDay-equal-020.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.