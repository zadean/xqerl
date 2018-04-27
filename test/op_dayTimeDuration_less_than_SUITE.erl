-module('op_dayTimeDuration_less_than_SUITE').
-include_lib("common_test/include/ct.hrl").
-compile({nowarn_unused_function,[environment/2]}).
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['op-dayTimeDuration-less-than2args-1'/1]).
-export(['op-dayTimeDuration-less-than2args-2'/1]).
-export(['op-dayTimeDuration-less-than2args-3'/1]).
-export(['op-dayTimeDuration-less-than2args-4'/1]).
-export(['op-dayTimeDuration-less-than2args-5'/1]).
-export(['op-dayTimeDuration-less-than2args-6'/1]).
-export(['op-dayTimeDuration-less-than2args-7'/1]).
-export(['op-dayTimeDuration-less-than2args-8'/1]).
-export(['op-dayTimeDuration-less-than2args-9'/1]).
-export(['op-dayTimeDuration-less-than2args-10'/1]).
-export(['op-dayTimeDuration-less-than-3'/1]).
-export(['op-dayTimeDuration-less-than-4'/1]).
-export(['op-dayTimeDuration-less-than-5'/1]).
-export(['op-dayTimeDuration-less-than-6'/1]).
-export(['op-dayTimeDuration-less-than-7'/1]).
-export(['op-dayTimeDuration-less-than-8'/1]).
-export(['op-dayTimeDuration-less-than-9'/1]).
-export(['op-dayTimeDuration-less-than-10'/1]).
-export(['op-dayTimeDuration-less-than-11'/1]).
-export(['op-dayTimeDuration-less-than-12'/1]).
-export(['op-dayTimeDuration-less-than-13'/1]).
-export(['op-dayTimeDuration-less-than-14'/1]).
-export(['K-DayTimeDurationLT-1'/1]).
-export(['K-DayTimeDurationLT-2'/1]).
-export(['K-DayTimeDurationLT-3'/1]).
-export(['K-DayTimeDurationLT-4'/1]).
-export(['K-DayTimeDurationLT-5'/1]).
-export(['K-DayTimeDurationLT-6'/1]).
-export(['cbcl-dayTimeDuration-less-than-001'/1]).
-export(['cbcl-dayTimeDuration-less-than-002'/1]).
-export(['cbcl-dayTimeDuration-less-than-003'/1]).
-export(['cbcl-dayTimeDuration-less-than-004'/1]).
-export(['cbcl-dayTimeDuration-less-than-005'/1]).
-export(['cbcl-dayTimeDuration-less-than-006'/1]).
-export(['cbcl-value-less-equal-001'/1]).
-export(['cbcl-value-less-equal-002'/1]).
-export(['cbcl-value-less-equal-003'/1]).
-export(['cbcl-value-less-equal-004'/1]).
-export(['cbcl-value-less-equal-005'/1]).
-export(['cbcl-value-less-equal-006'/1]).
-export(['cbcl-value-less-equal-007'/1]).
-export(['cbcl-value-less-equal-008'/1]).
-export(['cbcl-value-less-equal-009'/1]).
-export(['cbcl-value-less-equal-010'/1]).
-export(['cbcl-value-less-equal-011'/1]).
-export(['cbcl-value-less-equal-012'/1]).
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
'op-dayTimeDuration-less-than2args-1', 
'op-dayTimeDuration-less-than2args-2', 
'op-dayTimeDuration-less-than2args-3', 
'op-dayTimeDuration-less-than2args-4', 
'op-dayTimeDuration-less-than2args-5', 
'op-dayTimeDuration-less-than2args-6', 
'op-dayTimeDuration-less-than2args-7', 
'op-dayTimeDuration-less-than2args-8', 
'op-dayTimeDuration-less-than2args-9', 
'op-dayTimeDuration-less-than2args-10', 
'op-dayTimeDuration-less-than-3', 
'op-dayTimeDuration-less-than-4', 
'op-dayTimeDuration-less-than-5', 
'op-dayTimeDuration-less-than-6', 
'op-dayTimeDuration-less-than-7', 
'op-dayTimeDuration-less-than-8', 
'op-dayTimeDuration-less-than-9', 
'op-dayTimeDuration-less-than-10', 
'op-dayTimeDuration-less-than-11', 
'op-dayTimeDuration-less-than-12', 
'op-dayTimeDuration-less-than-13', 
'op-dayTimeDuration-less-than-14', 
'K-DayTimeDurationLT-1', 
'K-DayTimeDurationLT-2', 
'K-DayTimeDurationLT-3', 
'K-DayTimeDurationLT-4', 
'K-DayTimeDurationLT-5', 
'K-DayTimeDurationLT-6', 
'cbcl-dayTimeDuration-less-than-001', 
'cbcl-dayTimeDuration-less-than-002', 
'cbcl-dayTimeDuration-less-than-003', 
'cbcl-dayTimeDuration-less-than-004', 
'cbcl-dayTimeDuration-less-than-005', 
'cbcl-dayTimeDuration-less-than-006', 
'cbcl-value-less-equal-001', 
'cbcl-value-less-equal-002', 
'cbcl-value-less-equal-003', 
'cbcl-value-less-equal-004', 
'cbcl-value-less-equal-005', 
'cbcl-value-less-equal-006', 
'cbcl-value-less-equal-007', 
'cbcl-value-less-equal-008', 
'cbcl-value-less-equal-009', 
'cbcl-value-less-equal-010', 
'cbcl-value-less-equal-011', 
'cbcl-value-less-equal-012'
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
'op-dayTimeDuration-less-than2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dayTimeDuration(\"P0DT0H0M0S\") lt xs:dayTimeDuration(\"P0DT0H0M0S\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-dayTimeDuration-less-than2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-dayTimeDuration-less-than2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dayTimeDuration(\"P15DT11H59M59S\") lt xs:dayTimeDuration(\"P0DT0H0M0S\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-dayTimeDuration-less-than2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-dayTimeDuration-less-than2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dayTimeDuration(\"P31DT23H59M59S\") lt xs:dayTimeDuration(\"P0DT0H0M0S\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-dayTimeDuration-less-than2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-dayTimeDuration-less-than2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dayTimeDuration(\"P0DT0H0M0S\") lt xs:dayTimeDuration(\"P15DT11H59M59S\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-dayTimeDuration-less-than2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-dayTimeDuration-less-than2args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dayTimeDuration(\"P0DT0H0M0S\") lt xs:dayTimeDuration(\"P31DT23H59M59S\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-dayTimeDuration-less-than2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-dayTimeDuration-less-than2args-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dayTimeDuration(\"P0DT0H0M0S\") ge xs:dayTimeDuration(\"P0DT0H0M0S\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-dayTimeDuration-less-than2args-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-dayTimeDuration-less-than2args-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dayTimeDuration(\"P15DT11H59M59S\") ge xs:dayTimeDuration(\"P0DT0H0M0S\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-dayTimeDuration-less-than2args-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-dayTimeDuration-less-than2args-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dayTimeDuration(\"P31DT23H59M59S\") ge xs:dayTimeDuration(\"P0DT0H0M0S\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-dayTimeDuration-less-than2args-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-dayTimeDuration-less-than2args-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dayTimeDuration(\"P0DT0H0M0S\") ge xs:dayTimeDuration(\"P15DT11H59M59S\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-dayTimeDuration-less-than2args-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-dayTimeDuration-less-than2args-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dayTimeDuration(\"P0DT0H0M0S\") ge xs:dayTimeDuration(\"P31DT23H59M59S\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-dayTimeDuration-less-than2args-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-dayTimeDuration-less-than-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:not((xs:dayTimeDuration(\"P13DT12H\") lt xs:dayTimeDuration(\"P14DT11H\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-dayTimeDuration-less-than-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-dayTimeDuration-less-than-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:not(xs:dayTimeDuration(\"P10DT110H\") le xs:dayTimeDuration(\"P10DT11H\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-dayTimeDuration-less-than-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-dayTimeDuration-less-than-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:not(xs:dayTimeDuration(\"P10DT10H\") lt xs:dayTimeDuration(\"P9DT09H\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-dayTimeDuration-less-than-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-dayTimeDuration-less-than-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:not(xs:dayTimeDuration(\"P10DT09H\") le xs:dayTimeDuration(\"P09DT09H\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-dayTimeDuration-less-than-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-dayTimeDuration-less-than-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:dayTimeDuration(\"P10DT09H\") lt xs:dayTimeDuration(\"P09DT10H\")) and (xs:dayTimeDuration(\"P10DT01H\") lt xs:dayTimeDuration(\"P08DT06H\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-dayTimeDuration-less-than-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-dayTimeDuration-less-than-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:dayTimeDuration(\"P10DT09H\") le xs:dayTimeDuration(\"P10DT01H\")) and (xs:dayTimeDuration(\"P02DT04H\") le xs:dayTimeDuration(\"P09DT07H\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-dayTimeDuration-less-than-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-dayTimeDuration-less-than-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:dayTimeDuration(\"P10DT08H\") lt xs:dayTimeDuration(\"P10DT07H\")) or (xs:dayTimeDuration(\"P10DT09H\") lt xs:dayTimeDuration(\"P10DT09H\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-dayTimeDuration-less-than-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-dayTimeDuration-less-than-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:dayTimeDuration(\"P10DT01H\") le xs:dayTimeDuration(\"P09DT06H\")) or (xs:dayTimeDuration(\"P15DT01H\") le xs:dayTimeDuration(\"P02DT04H\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-dayTimeDuration-less-than-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-dayTimeDuration-less-than-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:dayTimeDuration(\"P10DT02H\") lt xs:dayTimeDuration(\"P01DT10H\")) or (fn:true())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-dayTimeDuration-less-than-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-dayTimeDuration-less-than-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:dayTimeDuration(\"P10DT01H\") le xs:dayTimeDuration(\"P09DT05H\")) or (fn:true())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-dayTimeDuration-less-than-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-dayTimeDuration-less-than-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:dayTimeDuration(\"P30DT10H\") lt xs:dayTimeDuration(\"P01DT02H\")) or (fn:false())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-dayTimeDuration-less-than-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-dayTimeDuration-less-than-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:dayTimeDuration(\"P10DT05H\") le xs:dayTimeDuration(\"P20DT10H\")) or (fn:false())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-dayTimeDuration-less-than-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DayTimeDurationLT-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dayTimeDuration(\"P3DT08H34M12.142S\") lt xs:dayTimeDuration(\"P3DT08H34M12.143S\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-DayTimeDurationLT-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DayTimeDurationLT-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(xs:dayTimeDuration(\"P3DT08H34M12.143S\") lt xs:dayTimeDuration(\"P3DT08H34M12.143S\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-DayTimeDurationLT-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DayTimeDurationLT-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(xs:dayTimeDuration(\"P3DT08H34M12.144S\") lt xs:dayTimeDuration(\"P3DT08H34M12.143S\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-DayTimeDurationLT-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DayTimeDurationLT-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dayTimeDuration(\"P3DT08H34M12.143S\") le xs:dayTimeDuration(\"P3DT08H34M12.143S\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-DayTimeDurationLT-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DayTimeDurationLT-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dayTimeDuration(\"P3DT08H34M12.143S\") le xs:dayTimeDuration(\"P3DT08H34M12.143S\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-DayTimeDurationLT-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DayTimeDurationLT-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(xs:dayTimeDuration(\"P3DT08H34M12.143S\") le xs:dayTimeDuration(\"P3DT08H34M12.142S\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-DayTimeDurationLT-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-dayTimeDuration-less-than-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:dayTimeDuration($days as xs:integer, $hours as xs:integer ) { xs:dayTimeDuration(concat('P', $days, 'DT', $hours, 'H')) }; not(local:dayTimeDuration(1, 1) lt xs:dayTimeDuration(\"P0D\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-dayTimeDuration-less-than-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-dayTimeDuration-less-than-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:dayTimeDuration($days as xs:integer, $hours as xs:integer ) { xs:dayTimeDuration(concat('P', $days, 'DT', $hours, 'H')) }; not(local:dayTimeDuration(1, 1) le xs:dayTimeDuration(\"P0D\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-dayTimeDuration-less-than-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-dayTimeDuration-less-than-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:dayTimeDuration($dayTimeDuration as xs:dayTimeDuration, $null as xs:boolean) { if ($null) then () else $dayTimeDuration }; exists(local:dayTimeDuration(xs:dayTimeDuration(\"P0D\"), fn:true()) lt xs:dayTimeDuration(\"P0D\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-dayTimeDuration-less-than-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-dayTimeDuration-less-than-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:dayTimeDuration($dayTimeDuration as xs:dayTimeDuration, $null as xs:boolean) { if ($null) then () else $dayTimeDuration }; local:dayTimeDuration(xs:dayTimeDuration(\"P0D\"), fn:false()) lt xs:dayTimeDuration(\"P0D\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-dayTimeDuration-less-than-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-dayTimeDuration-less-than-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:dayTimeDuration($dayTimeDuration as xs:dayTimeDuration, $null as xs:boolean) { if ($null) then () else $dayTimeDuration }; exists(local:dayTimeDuration(xs:dayTimeDuration(\"P0D\"), fn:true()) le xs:dayTimeDuration(\"P0D\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-dayTimeDuration-less-than-005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-dayTimeDuration-less-than-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:dayTimeDuration($dayTimeDuration as xs:dayTimeDuration, $null as xs:boolean) { if ($null) then () else $dayTimeDuration }; local:dayTimeDuration(xs:dayTimeDuration(\"P0D\"), fn:false()) le xs:dayTimeDuration(\"P0D\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-dayTimeDuration-less-than-006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-value-less-equal-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:yearMonthDuration(\"P1M\") };
        local:f(false()) le xs:yearMonthDuration(\"P1Y\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-value-less-equal-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-value-less-equal-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:yearMonthDuration(\"P1M\") };
        local:f(true()) le xs:yearMonthDuration(\"P1Y\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-value-less-equal-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-value-less-equal-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:dayTimeDuration(\"PT1H\") };
        local:f(false()) le xs:dayTimeDuration(\"P1D\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-value-less-equal-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-value-less-equal-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:dayTimeDuration(\"PT1H\") };
        local:f(true()) le xs:dayTimeDuration(\"P1D\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-value-less-equal-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-value-less-equal-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:yearMonthDuration(\"P1M\") };
        xs:yearMonthDuration(\"P1Y\") le local:f(false())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-value-less-equal-005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-value-less-equal-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:yearMonthDuration(\"P1M\") };
        xs:yearMonthDuration(\"P1Y\") le local:f(true())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-value-less-equal-006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-value-less-equal-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:dayTimeDuration(\"PT1H\") };
        xs:dayTimeDuration(\"P1D\") le local:f(false())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-value-less-equal-007.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-value-less-equal-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:dayTimeDuration(\"PT1H\") };
        xs:dayTimeDuration(\"P1D\") le local:f(true())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-value-less-equal-008.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-value-less-equal-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:yearMonthDuration(\"P1M\") };
        local:f(false()) le local:f(false())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-value-less-equal-009.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-value-less-equal-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:yearMonthDuration(\"P1M\") };
        local:f(true()) le local:f(false())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-value-less-equal-010.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-value-less-equal-011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:dayTimeDuration(\"PT1H\") };
        local:f(false()) le local:f(false())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-value-less-equal-011.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-value-less-equal-012'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:dayTimeDuration(\"PT1H\") };
        local:f(false()) le local:f(true())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-value-less-equal-012.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.