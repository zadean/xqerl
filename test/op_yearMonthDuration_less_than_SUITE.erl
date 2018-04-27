-module('op_yearMonthDuration_less_than_SUITE').
-include_lib("common_test/include/ct.hrl").
-compile({nowarn_unused_function,[environment/2]}).
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['op-yearMonthDuration-less-than2args-1'/1]).
-export(['op-yearMonthDuration-less-than2args-2'/1]).
-export(['op-yearMonthDuration-less-than2args-3'/1]).
-export(['op-yearMonthDuration-less-than2args-4'/1]).
-export(['op-yearMonthDuration-less-than2args-5'/1]).
-export(['op-yearMonthDuration-less-than2args-6'/1]).
-export(['op-yearMonthDuration-less-than2argsNew-7'/1]).
-export(['op-yearMonthDuration-less-than2args-8'/1]).
-export(['op-yearMonthDuration-less-than2args-9'/1]).
-export(['op-yearMonthDuration-less-than2args-10'/1]).
-export(['op-yearMonthDuration-less-than-3'/1]).
-export(['op-yearMonthDuration-less-than-4'/1]).
-export(['op-yearMonthDuration-less-than-5'/1]).
-export(['op-yearMonthDuration-less-than-6'/1]).
-export(['op-yearMonthDuration-less-thanNew-7'/1]).
-export(['op-yearMonthDuration-less-than-8'/1]).
-export(['op-yearMonthDuration-less-than-9'/1]).
-export(['op-yearMonthDuration-less-than-10'/1]).
-export(['op-yearMonthDuration-less-than-11'/1]).
-export(['op-yearMonthDuration-less-than-12'/1]).
-export(['op-yearMonthDuration-less-than-13'/1]).
-export(['op-yearMonthDuration-less-than-14'/1]).
-export(['K-YearMonthDurationLT-1'/1]).
-export(['K-YearMonthDurationLT-2'/1]).
-export(['K-YearMonthDurationLT-3'/1]).
-export(['K-YearMonthDurationLT-4'/1]).
-export(['K-YearMonthDurationLT-5'/1]).
-export(['K-YearMonthDurationLT-6'/1]).
-export(['cbcl-yearMonthDuration-less-than-001'/1]).
-export(['cbcl-yearMonthDuration-less-than-002'/1]).
-export(['cbcl-yearMonthDuration-less-than-003'/1]).
-export(['cbcl-yearMonthDuration-less-than-004'/1]).
-export(['cbcl-yearMonthDuration-less-than-005'/1]).
-export(['cbcl-yearMonthDuration-less-than-006'/1]).
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
'op-yearMonthDuration-less-than2args-1', 
'op-yearMonthDuration-less-than2args-2', 
'op-yearMonthDuration-less-than2args-3', 
'op-yearMonthDuration-less-than2args-4', 
'op-yearMonthDuration-less-than2args-5', 
'op-yearMonthDuration-less-than2args-6', 
'op-yearMonthDuration-less-than2argsNew-7', 
'op-yearMonthDuration-less-than2args-8', 
'op-yearMonthDuration-less-than2args-9', 
'op-yearMonthDuration-less-than2args-10', 
'op-yearMonthDuration-less-than-3', 
'op-yearMonthDuration-less-than-4', 
'op-yearMonthDuration-less-than-5', 
'op-yearMonthDuration-less-than-6', 
'op-yearMonthDuration-less-thanNew-7', 
'op-yearMonthDuration-less-than-8', 
'op-yearMonthDuration-less-than-9', 
'op-yearMonthDuration-less-than-10', 
'op-yearMonthDuration-less-than-11', 
'op-yearMonthDuration-less-than-12', 
'op-yearMonthDuration-less-than-13', 
'op-yearMonthDuration-less-than-14', 
'K-YearMonthDurationLT-1', 
'K-YearMonthDurationLT-2', 
'K-YearMonthDurationLT-3', 
'K-YearMonthDurationLT-4', 
'K-YearMonthDurationLT-5', 
'K-YearMonthDurationLT-6', 
'cbcl-yearMonthDuration-less-than-001', 
'cbcl-yearMonthDuration-less-than-002', 
'cbcl-yearMonthDuration-less-than-003', 
'cbcl-yearMonthDuration-less-than-004', 
'cbcl-yearMonthDuration-less-than-005', 
'cbcl-yearMonthDuration-less-than-006'
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
'op-yearMonthDuration-less-than2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:yearMonthDuration(\"P0Y0M\") lt xs:yearMonthDuration(\"P0Y0M\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-yearMonthDuration-less-than2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-yearMonthDuration-less-than2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:yearMonthDuration(\"P1000Y6M\") lt xs:yearMonthDuration(\"P0Y0M\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-yearMonthDuration-less-than2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-yearMonthDuration-less-than2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:yearMonthDuration(\"P2030Y12M\") lt xs:yearMonthDuration(\"P0Y0M\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-yearMonthDuration-less-than2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-yearMonthDuration-less-than2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:yearMonthDuration(\"P0Y0M\") lt xs:yearMonthDuration(\"P1000Y6M\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-yearMonthDuration-less-than2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-yearMonthDuration-less-than2args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:yearMonthDuration(\"P0Y0M\") lt xs:yearMonthDuration(\"P2030Y12M\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-yearMonthDuration-less-than2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-yearMonthDuration-less-than2args-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:yearMonthDuration(\"P0Y0M\") ge xs:yearMonthDuration(\"P0Y0M\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-yearMonthDuration-less-than2args-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-yearMonthDuration-less-than2argsNew-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:yearMonthDuration(\"P1000Y6M\") ge xs:yearMonthDuration(\"P0Y0M\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-yearMonthDuration-less-than2argsNew-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-yearMonthDuration-less-than2args-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:yearMonthDuration(\"P2030Y12M\") ge xs:yearMonthDuration(\"P0Y0M\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-yearMonthDuration-less-than2args-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-yearMonthDuration-less-than2args-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:yearMonthDuration(\"P0Y0M\") ge xs:yearMonthDuration(\"P1000Y6M\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-yearMonthDuration-less-than2args-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-yearMonthDuration-less-than2args-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:yearMonthDuration(\"P0Y0M\") ge xs:yearMonthDuration(\"P2030Y12M\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-yearMonthDuration-less-than2args-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-yearMonthDuration-less-than-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:not((xs:yearMonthDuration(\"P20Y10M\") lt xs:yearMonthDuration(\"P20Y11M\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-yearMonthDuration-less-than-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-yearMonthDuration-less-than-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:not(xs:yearMonthDuration(\"P20Y10M\") le xs:yearMonthDuration(\"P20Y10M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-yearMonthDuration-less-than-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-yearMonthDuration-less-than-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:not(xs:yearMonthDuration(\"P20Y10M\") lt xs:yearMonthDuration(\"P20Y09M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-yearMonthDuration-less-than-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-yearMonthDuration-less-than-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:not(xs:yearMonthDuration(\"P10Y09M\") le xs:yearMonthDuration(\"P10Y07M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-yearMonthDuration-less-than-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-yearMonthDuration-less-thanNew-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:yearMonthDuration(\"P10Y09M\") lt xs:yearMonthDuration(\"P09Y10M\")) and (xs:yearMonthDuration(\"P10Y01M\") lt xs:yearMonthDuration(\"P08Y06M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-yearMonthDuration-less-thanNew-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-yearMonthDuration-less-than-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:yearMonthDuration(\"P10Y09M\") le xs:yearMonthDuration(\"P10Y01M\")) and (xs:yearMonthDuration(\"P02Y04M\") le xs:yearMonthDuration(\"P09Y07M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-yearMonthDuration-less-than-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-yearMonthDuration-less-than-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:yearMonthDuration(\"P10Y08M\") lt xs:yearMonthDuration(\"P10Y07M\")) or (xs:yearMonthDuration(\"P10Y09M\") lt xs:yearMonthDuration(\"P10Y09M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-yearMonthDuration-less-than-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-yearMonthDuration-less-than-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:yearMonthDuration(\"P10Y01M\") le xs:yearMonthDuration(\"P09Y06M\")) or (xs:yearMonthDuration(\"P15Y01M\") le xs:yearMonthDuration(\"P02Y04M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-yearMonthDuration-less-than-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-yearMonthDuration-less-than-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:yearMonthDuration(\"P10Y02M\") lt xs:yearMonthDuration(\"P01Y10M\")) or (fn:true())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-yearMonthDuration-less-than-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-yearMonthDuration-less-than-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:yearMonthDuration(\"P10Y01M\") le xs:yearMonthDuration(\"P09Y05M\")) or (fn:true())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-yearMonthDuration-less-than-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-yearMonthDuration-less-than-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:yearMonthDuration(\"P30Y10M\") lt xs:yearMonthDuration(\"P01Y02M\")) or (fn:false())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-yearMonthDuration-less-than-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-yearMonthDuration-less-than-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:yearMonthDuration(\"P10Y05M\") le xs:yearMonthDuration(\"P20Y10M\")) or (fn:false())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-yearMonthDuration-less-than-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-YearMonthDurationLT-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:yearMonthDuration(\"P1999Y9M\") lt xs:yearMonthDuration(\"P1999Y10M\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-YearMonthDurationLT-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-YearMonthDurationLT-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(xs:yearMonthDuration(\"P1999Y10M\") lt xs:yearMonthDuration(\"P1999Y10M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-YearMonthDurationLT-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-YearMonthDurationLT-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(xs:yearMonthDuration(\"P1999Y10M\") lt xs:yearMonthDuration(\"P1999Y9M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-YearMonthDurationLT-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-YearMonthDurationLT-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:yearMonthDuration(\"P1999Y10M\") le xs:yearMonthDuration(\"P1999Y10M\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-YearMonthDurationLT-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-YearMonthDurationLT-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:yearMonthDuration(\"P1999Y9M\") le xs:yearMonthDuration(\"P1999Y10M\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-YearMonthDurationLT-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-YearMonthDurationLT-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(xs:yearMonthDuration(\"P1999Y10M\") le xs:yearMonthDuration(\"P1999Y9M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-YearMonthDurationLT-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-yearMonthDuration-less-than-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare function local:yearMonthDuration($years as xs:integer, $months as xs:integer ) { xs:yearMonthDuration(concat('P', $years, 'Y', $months, 'M')) };
        not(local:yearMonthDuration(1, 1) lt xs:yearMonthDuration(\"P0Y\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-yearMonthDuration-less-than-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-yearMonthDuration-less-than-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare function local:yearMonthDuration($years as xs:integer, $months as xs:integer ) { xs:yearMonthDuration(concat('P', $years, 'Y', $months, 'M')) };
        not(local:yearMonthDuration(1, 1) le xs:yearMonthDuration(\"P0Y\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-yearMonthDuration-less-than-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-yearMonthDuration-less-than-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare function local:yearMonthDuration($yearMonthDuration as xs:yearMonthDuration, $null as xs:boolean) { if ($null) then () else $yearMonthDuration };
        exists(local:yearMonthDuration(xs:yearMonthDuration(\"P0Y\"), fn:true()) lt xs:yearMonthDuration(\"P0Y\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-yearMonthDuration-less-than-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-yearMonthDuration-less-than-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare function local:yearMonthDuration($yearMonthDuration as xs:yearMonthDuration, $null as xs:boolean) { if ($null) then () else $yearMonthDuration };
        local:yearMonthDuration(xs:yearMonthDuration(\"P0Y\"), fn:false()) lt xs:yearMonthDuration(\"P0Y\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-yearMonthDuration-less-than-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-yearMonthDuration-less-than-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare function local:yearMonthDuration($yearMonthDuration as xs:yearMonthDuration, $null as xs:boolean) { if ($null) then () else $yearMonthDuration };
        exists(local:yearMonthDuration(xs:yearMonthDuration(\"P0Y\"), fn:true()) ge xs:yearMonthDuration(\"P0Y\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-yearMonthDuration-less-than-005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-yearMonthDuration-less-than-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare function local:yearMonthDuration($yearMonthDuration as xs:yearMonthDuration, $null as xs:boolean) { if ($null) then () else $yearMonthDuration };
        local:yearMonthDuration(xs:yearMonthDuration(\"P0Y\"), fn:false()) ge xs:yearMonthDuration(\"P0Y\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-yearMonthDuration-less-than-006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.