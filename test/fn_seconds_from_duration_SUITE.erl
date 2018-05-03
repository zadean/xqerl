-module('fn_seconds_from_duration_SUITE').
-include_lib("common_test/include/ct.hrl").
-compile({nowarn_unused_function,[environment/2]}).
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['fn-seconds-from-duration1args-1'/1]).
-export(['fn-seconds-from-duration1args-2'/1]).
-export(['fn-seconds-from-duration1args-3'/1]).
-export(['fn-seconds-from-duration-1'/1]).
-export(['fn-seconds-from-duration-2'/1]).
-export(['fn-seconds-from-duration-3'/1]).
-export(['fn-seconds-from-duration-4'/1]).
-export(['fn-seconds-from-duration-5'/1]).
-export(['fn-seconds-from-duration-6'/1]).
-export(['fn-seconds-from-duration-7'/1]).
-export(['fn-seconds-from-duration-8'/1]).
-export(['fn-seconds-from-duration-9'/1]).
-export(['fn-seconds-from-duration-10'/1]).
-export(['fn-seconds-from-duration-11'/1]).
-export(['fn-seconds-from-duration-12'/1]).
-export(['fn-seconds-from-duration-13'/1]).
-export(['fn-seconds-from-duration-14'/1]).
-export(['fn-seconds-from-duration-15'/1]).
-export(['fn-seconds-from-duration-16'/1]).
-export(['fn-seconds-from-duration-17'/1]).
-export(['fn-seconds-from-duration-18'/1]).
-export(['fn-seconds-from-duration-19'/1]).
-export(['fn-seconds-from-duration-20'/1]).
-export(['fn-seconds-from-duration-21'/1]).
-export(['K-SecondsFromDurationFunc-1'/1]).
-export(['K-SecondsFromDurationFunc-2'/1]).
-export(['K-SecondsFromDurationFunc-3'/1]).
-export(['K-SecondsFromDurationFunc-4'/1]).
-export(['K-SecondsFromDurationFunc-5'/1]).
-export(['K-SecondsFromDurationFunc-6'/1]).
-export(['K-SecondsFromDurationFunc-7'/1]).
-export(['cbcl-seconds-from-duration-001'/1]).
suite() -> [{timetrap,{seconds,5}}].
end_per_suite(_Config) -> 
   ct:timetrap({seconds,60}), 
   xqerl_module:unload(all).
init_per_suite(Config) -> 
   xqerl_db:install([node()]),
   xqerl_module:one_time_init(), 
   {ok,_} = application:ensure_all_started(xqerl),
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   __BaseDir = filename:join(TD, "fn"),
   [{base_dir, __BaseDir}|Config].
all() -> [
'fn-seconds-from-duration1args-1', 
'fn-seconds-from-duration1args-2', 
'fn-seconds-from-duration1args-3', 
'fn-seconds-from-duration-1', 
'fn-seconds-from-duration-2', 
'fn-seconds-from-duration-3', 
'fn-seconds-from-duration-4', 
'fn-seconds-from-duration-5', 
'fn-seconds-from-duration-6', 
'fn-seconds-from-duration-7', 
'fn-seconds-from-duration-8', 
'fn-seconds-from-duration-9', 
'fn-seconds-from-duration-10', 
'fn-seconds-from-duration-11', 
'fn-seconds-from-duration-12', 
'fn-seconds-from-duration-13', 
'fn-seconds-from-duration-14', 
'fn-seconds-from-duration-15', 
'fn-seconds-from-duration-16', 
'fn-seconds-from-duration-17', 
'fn-seconds-from-duration-18', 
'fn-seconds-from-duration-19', 
'fn-seconds-from-duration-20', 
'fn-seconds-from-duration-21', 
'K-SecondsFromDurationFunc-1', 
'K-SecondsFromDurationFunc-2', 
'K-SecondsFromDurationFunc-3', 
'K-SecondsFromDurationFunc-4', 
'K-SecondsFromDurationFunc-5', 
'K-SecondsFromDurationFunc-6', 
'K-SecondsFromDurationFunc-7', 
'cbcl-seconds-from-duration-001'
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
'fn-seconds-from-duration1args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:seconds-from-duration(xs:dayTimeDuration(\"P0DT0H0M0S\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-seconds-from-duration1args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-seconds-from-duration1args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:seconds-from-duration(xs:dayTimeDuration(\"P15DT11H59M59S\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-seconds-from-duration1args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"59") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-seconds-from-duration1args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:seconds-from-duration(xs:dayTimeDuration(\"P31DT23H59M59S\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-seconds-from-duration1args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"59") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-seconds-from-duration-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:seconds-from-duration(xs:dayTimeDuration(\"P3DT10H12.5S\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-seconds-from-duration-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"12.5") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-seconds-from-duration-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:seconds-from-duration(xs:dayTimeDuration(\"-PT256S\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-seconds-from-duration-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-16") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-seconds-from-duration-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:seconds-from-duration(xs:dayTimeDuration(\"P20DT20H20M10S\")) lt fn:seconds-from-duration(xs:dayTimeDuration(\"P03DT02H10M20S\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-seconds-from-duration-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-seconds-from-duration-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:seconds-from-duration(xs:dayTimeDuration(\"P21DT10H10M09S\")) le fn:seconds-from-duration(xs:dayTimeDuration(\"P22DT10H09M31S\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-seconds-from-duration-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-seconds-from-duration-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(fn:seconds-from-duration(()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-seconds-from-duration-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-seconds-from-duration-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:seconds-from-duration(xs:dayTimeDuration(\"P01DT01H01M01S\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-seconds-from-duration-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-seconds-from-duration-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:avg((fn:seconds-from-duration(xs:dayTimeDuration(\"P23DT10H20M30S\")),fn:seconds-from-duration(xs:dayTimeDuration(\"P21DT10H10M32S\"))))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-seconds-from-duration-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"31") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-seconds-from-duration-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:seconds-from-duration(xs:dayTimeDuration(\"P21DT10H10M09S\")) + fn:seconds-from-duration(xs:dayTimeDuration(\"P22DT11H30M21S\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-seconds-from-duration-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"30") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-seconds-from-duration-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:seconds-from-duration(xs:dayTimeDuration(\"P30DT10H20M10S\")) - fn:seconds-from-duration(xs:dayTimeDuration(\"P10DT09H10M02S\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-seconds-from-duration-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"8") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-seconds-from-duration-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:seconds-from-duration(xs:dayTimeDuration(\"P20DT09H04M20S\")) * fn:seconds-from-duration(xs:dayTimeDuration(\"P03DT10H10M03S\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-seconds-from-duration-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"60") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-seconds-from-duration-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:seconds-from-duration(xs:dayTimeDuration(\"P20DT10H10M30S\")) div fn:seconds-from-duration(xs:dayTimeDuration(\"P05DT05H02M02S\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-seconds-from-duration-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"15") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-seconds-from-duration-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:seconds-from-duration(xs:dayTimeDuration(\"P25DT10H20M40S\")) idiv fn:seconds-from-duration(xs:dayTimeDuration(\"P05DT02H04M20S\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-seconds-from-duration-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-seconds-from-duration-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:seconds-from-duration(xs:dayTimeDuration(\"P10DT10H20M10S\")) mod fn:seconds-from-duration(xs:dayTimeDuration(\"P03DT03H03M03S\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-seconds-from-duration-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-seconds-from-duration-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "+fn:seconds-from-duration(xs:dayTimeDuration(\"P21DT10H10M20S\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-seconds-from-duration-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"20") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-seconds-from-duration-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "-fn:seconds-from-duration(xs:dayTimeDuration(\"P20DT03H20M30S\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-seconds-from-duration-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-30") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-seconds-from-duration-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:seconds-from-duration(xs:dayTimeDuration(\"P22DT10H10M01S\")) eq fn:seconds-from-duration(xs:dayTimeDuration(\"P22DT09H10M01S\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-seconds-from-duration-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-seconds-from-duration-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:seconds-from-duration(xs:dayTimeDuration(\"P23DT08H20M02S\")) ne fn:seconds-from-duration(xs:dayTimeDuration(\"P12DT05H22M03S\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-seconds-from-duration-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-seconds-from-duration-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:seconds-from-duration(xs:dayTimeDuration(\"P20DT03H09M20S\")) le fn:seconds-from-duration(xs:dayTimeDuration(\"P21DT15H21M31S\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-seconds-from-duration-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-seconds-from-duration-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:seconds-from-duration(xs:dayTimeDuration(\"P21DT07H12M59S\")) ge fn:seconds-from-duration(xs:dayTimeDuration(\"P20DT01H13M01S\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-seconds-from-duration-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-seconds-from-duration-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:seconds-from-duration(xs:duration(\"P1Y2M3DT10H30M911S\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-seconds-from-duration-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"11") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-seconds-from-duration-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:seconds-from-duration(xs:dayTimeDuration(\"P21DT10H10M90S\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-seconds-from-duration-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"30") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SecondsFromDurationFunc-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "seconds-from-duration()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-SecondsFromDurationFunc-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SecondsFromDurationFunc-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "seconds-from-duration((), \"Wrong param\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-SecondsFromDurationFunc-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SecondsFromDurationFunc-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(seconds-from-duration(()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-SecondsFromDurationFunc-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SecondsFromDurationFunc-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "seconds-from-duration(()) instance of xs:decimal?", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-SecondsFromDurationFunc-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SecondsFromDurationFunc-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "seconds-from-duration(xs:dayTimeDuration(\"P3DT8H2M1.03S\")) eq 1.03", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-SecondsFromDurationFunc-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SecondsFromDurationFunc-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "seconds-from-duration(xs:dayTimeDuration(\"-P3DT8H2M1.03S\")) eq -1.03", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-SecondsFromDurationFunc-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SecondsFromDurationFunc-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "seconds-from-duration(xs:duration(\"-P3Y4M8DT1H23M2.34S\")) eq -2.34", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-SecondsFromDurationFunc-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-seconds-from-duration-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:seconds-from-duration(xs:yearMonthDuration('P1Y'))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-seconds-from-duration-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.