-module('fn_starts_with_SUITE').
-include_lib("common_test/include/ct.hrl").
-compile({nowarn_unused_function,[environment/2]}).
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['fn-starts-with2args-1'/1]).
-export(['fn-starts-with2args-2'/1]).
-export(['fn-starts-with2args-3'/1]).
-export(['fn-starts-with2args-4'/1]).
-export(['fn-starts-with2args-5'/1]).
-export(['fn-starts-with-1'/1]).
-export(['fn-starts-with-2'/1]).
-export(['fn-starts-with-3'/1]).
-export(['fn-starts-with-4'/1]).
-export(['fn-starts-with-5'/1]).
-export(['fn-starts-with-6'/1]).
-export(['fn-starts-with-7'/1]).
-export(['fn-starts-with-8'/1]).
-export(['fn-starts-with-9'/1]).
-export(['fn-starts-with-10'/1]).
-export(['fn-starts-with-11'/1]).
-export(['fn-starts-with-12'/1]).
-export(['fn-starts-with-13'/1]).
-export(['fn-starts-with-14'/1]).
-export(['fn-starts-with-15'/1]).
-export(['fn-starts-with-16'/1]).
-export(['fn-starts-with-17'/1]).
-export(['fn-starts-with-18'/1]).
-export(['fn-starts-with-19'/1]).
-export(['fn-starts-with-20'/1]).
-export(['fn-starts-with-21'/1]).
-export(['fn-starts-with-22'/1]).
-export(['fn-starts-with-23'/1]).
-export(['fn-starts-with-24'/1]).
-export(['fn-starts-with-25'/1]).
-export(['fn-starts-with-26'/1]).
-export(['fn-starts-with-27'/1]).
-export(['fn-starts-with-28'/1]).
-export(['fn-starts-with-29'/1]).
-export(['fn-starts-with-30'/1]).
-export(['fn-starts-with-31'/1]).
-export(['fn-starts-with-32'/1]).
-export(['fn-starts-with-33'/1]).
-export(['K-StartsWithFunc-1'/1]).
-export(['K-StartsWithFunc-2'/1]).
-export(['K-StartsWithFunc-3'/1]).
-export(['K-StartsWithFunc-4'/1]).
-export(['K-StartsWithFunc-5'/1]).
-export(['K-StartsWithFunc-6'/1]).
-export(['K-StartsWithFunc-7'/1]).
-export(['K-StartsWithFunc-8'/1]).
-export(['K-StartsWithFunc-9'/1]).
-export(['K-StartsWithFunc-10'/1]).
-export(['K-StartsWithFunc-11'/1]).
-export(['K2-StartsWithFunc-1'/1]).
-export(['K2-StartsWithFunc-2'/1]).
-export(['K2-StartsWithFunc-3'/1]).
-export(['K2-StartsWithFunc-4'/1]).
-export(['K2-StartsWithFunc-5'/1]).
-export(['K2-StartsWithFunc-6'/1]).
-export(['cbcl-starts-with-001'/1]).
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
   __BaseDir = filename:join(TD, "fn"),
   [{base_dir, __BaseDir}|Config].
all() -> [
'fn-starts-with2args-1', 
'fn-starts-with2args-2', 
'fn-starts-with2args-3', 
'fn-starts-with2args-4', 
'fn-starts-with2args-5', 
'fn-starts-with-1', 
'fn-starts-with-2', 
'fn-starts-with-3', 
'fn-starts-with-4', 
'fn-starts-with-5', 
'fn-starts-with-6', 
'fn-starts-with-7', 
'fn-starts-with-8', 
'fn-starts-with-9', 
'fn-starts-with-10', 
'fn-starts-with-11', 
'fn-starts-with-12', 
'fn-starts-with-13', 
'fn-starts-with-14', 
'fn-starts-with-15', 
'fn-starts-with-16', 
'fn-starts-with-17', 
'fn-starts-with-18', 
'fn-starts-with-19', 
'fn-starts-with-20', 
'fn-starts-with-21', 
'fn-starts-with-22', 
'fn-starts-with-23', 
'fn-starts-with-24', 
'fn-starts-with-25', 
'fn-starts-with-26', 
'fn-starts-with-27', 
'fn-starts-with-28', 
'fn-starts-with-29', 
'fn-starts-with-30', 
'fn-starts-with-31', 
'fn-starts-with-32', 
'fn-starts-with-33', 
'K-StartsWithFunc-1', 
'K-StartsWithFunc-2', 
'K-StartsWithFunc-3', 
'K-StartsWithFunc-4', 
'K-StartsWithFunc-5', 
'K-StartsWithFunc-6', 
'K-StartsWithFunc-7', 
'K-StartsWithFunc-8', 
'K-StartsWithFunc-9', 
'K-StartsWithFunc-10', 
'K-StartsWithFunc-11', 
'K2-StartsWithFunc-1', 
'K2-StartsWithFunc-2', 
'K2-StartsWithFunc-3', 
'K2-StartsWithFunc-4', 
'K2-StartsWithFunc-5', 
'K2-StartsWithFunc-6', 
'cbcl-starts-with-001'
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
'fn-starts-with2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:starts-with(xs:string(\"This is a characte\"),xs:string(\"This is a characte\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-starts-with2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-starts-with2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:starts-with(xs:string(\"This is a characte\"),xs:string(\"This is a characte\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-starts-with2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-starts-with2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:starts-with(xs:string(\"This is a characte\"),xs:string(\"This is a characte\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-starts-with2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-starts-with2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:starts-with(xs:string(\"This is a characte\"),xs:string(\"This is a characte\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-starts-with2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-starts-with2args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:starts-with(xs:string(\"This is a characte\"),xs:string(\"This is a characte\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-starts-with2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-starts-with-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:starts-with(\"\",\"\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-starts-with-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-starts-with-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:starts-with(\"\",\"A Character String\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-starts-with-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-starts-with-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:starts-with(\"A Character String\",\"\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-starts-with-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-starts-with-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:starts-with((),\"\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-starts-with-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-starts-with-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:starts-with(\"\",())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-starts-with-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-starts-with-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:starts-with(\"A Character String\",())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-starts-with-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-starts-with-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:starts-with((),\"A Character String\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-starts-with-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-starts-with-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:starts-with(\"AAAAABBBBBCCCCC\",\"BBBBB\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-starts-with-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-starts-with-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:starts-with(\"AAAAABBBBB\",\" \")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-starts-with-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-starts-with-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:starts-with(\" \",\"AAAAABBBBB\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-starts-with-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-starts-with-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:not(fn:starts-with(\"A\",\"A\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-starts-with-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-starts-with-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:not(fn:starts-with(\"A\",\"B\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-starts-with-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-starts-with-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:starts-with(xs:string(\"A\"),\"A\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-starts-with-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-starts-with-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:starts-with(\"A\",xs:string(\"A\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-starts-with-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-starts-with-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:starts-with(\"A\",\"a\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-starts-with-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-starts-with-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:starts-with(\"a\",\"A\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-starts-with-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-starts-with-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:starts-with(\"banana\", \"ana\", \"http://www.w3.org/2013/collation/UCA?lang=en\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-starts-with-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-starts-with-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:starts-with(\"banana\", \"bana\", \"http://www.w3.org/2013/collation/UCA?lang=en\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-starts-with-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-starts-with-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:starts-with(\"database\", \"DATA\", \"http://www.w3.org/2013/collation/UCA?lang=en;strength=primary\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-starts-with-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-starts-with-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:starts-with(\"database\", \"databaS\", \"http://www.w3.org/2013/collation/UCA?lang=en;strength=primary\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-starts-with-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-starts-with-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:starts-with(\"database\", \"dâta\", \"http://www.w3.org/2013/collation/UCA?lang=en;strength=primary\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-starts-with-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-starts-with-22'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:starts-with(\"dâtabase\", \"dâtabasen\", \"http://www.w3.org/2013/collation/UCA?lang=en;strength=primary\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-starts-with-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-starts-with-23'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:starts-with(\"âtÅbase\", \"âtabÃse\", \"http://www.w3.org/2013/collation/UCA?lang=en;strength=primary\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-starts-with-23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-starts-with-24'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:starts-with(\"database\", \"DATA\", \"http://www.w3.org/2013/collation/UCA?lang=en;strength=secondary\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-starts-with-24.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-starts-with-25'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:starts-with(\"database\", \"databaS\", \"http://www.w3.org/2013/collation/UCA?lang=en;strength=secondary\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-starts-with-25.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-starts-with-26'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:starts-with(\"database\", \"dâta\", \"http://www.w3.org/2013/collation/UCA?lang=en;strength=secondary\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-starts-with-26.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-starts-with-27'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:starts-with(\"dâtabase\", \"Data\", \"http://www.w3.org/2013/collation/UCA?lang=en;strength=secondary\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-starts-with-27.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-starts-with-28'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:starts-with(\"database\", \"DATA\", \"http://www.w3.org/2013/collation/UCA?lang=en;strength=tertiary\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-starts-with-28.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-starts-with-29'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:starts-with(\"dataBase\", \"dataBas\", \"http://www.w3.org/2013/collation/UCA?lang=en;strength=tertiary\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-starts-with-29.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-starts-with-30'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:starts-with(\"database\", \"dâta\", \"http://www.w3.org/2013/collation/UCA?lang=en;strength=tertiary\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-starts-with-30.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-starts-with-31'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:starts-with(\"database\", \"Data\", \"http://www.w3.org/2013/collation/UCA?lang=en;strength=tertiary\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-starts-with-31.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-starts-with-32'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"advanced-uca-fallback"}. 
'fn-starts-with-33'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"advanced-uca-fallback"}. 
'K-StartsWithFunc-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "starts-with()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-StartsWithFunc-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-StartsWithFunc-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "starts-with(())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-StartsWithFunc-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-StartsWithFunc-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "starts-with((), (), \"http://www.w3.org/2005/xpath-functions/collation/codepoint\", \"wrong param\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-StartsWithFunc-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-StartsWithFunc-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "starts-with(\"a string\", \"a string\", \"http://www.example.com/COLLATION/NOT/SUPPORTED\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-StartsWithFunc-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-StartsWithFunc-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "starts-with(\"foo\", \"foo\", \"http://www.w3.org/2005/xpath-functions/collation/codepoint\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-StartsWithFunc-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-StartsWithFunc-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "starts-with(\"foo\", \"foo\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-StartsWithFunc-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-StartsWithFunc-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "starts-with(\"tattoo\", \"tat\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-StartsWithFunc-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-StartsWithFunc-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(starts-with(\"tattoo\", \"att\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-StartsWithFunc-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-StartsWithFunc-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "starts-with((), ())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-StartsWithFunc-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-StartsWithFunc-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "starts-with(\"a string\", ())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-StartsWithFunc-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-StartsWithFunc-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(starts-with(\"\", \"a string\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-StartsWithFunc-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-StartsWithFunc-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $vA := (\"B STRING\", current-time(), string(\"content\"))[1] treat as xs:string, 
        $vB := (\"b string\", current-time(), string(\"content\"))[1] treat as xs:string
        return starts-with(lower-case($vA), lower-case($vB))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-StartsWithFunc-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-StartsWithFunc-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $vA := (\"B STRING\", current-time(), string(\"content\"))[1] treat as xs:string,
         $vB := (\"b string\", current-time(), string(\"content\"))[1] treat as xs:string
         return starts-with(upper-case($vA), upper-case($vB))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-StartsWithFunc-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-StartsWithFunc-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $vA := (\"B STRING\", current-time(), string(\"content\"))[1] treat as xs:string, 
        $vB := (\"no match\", current-time(), string(\"content\"))[1] treat as xs:string
        return starts-with(lower-case($vA), lower-case($vB))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-StartsWithFunc-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-StartsWithFunc-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $vA := (\"B STRING\", current-time(), string(\"content\"))[1] treat as xs:string,
         $vB := (\"no match\", current-time(), string(\"content\"))[1] treat as xs:string
         return starts-with(upper-case($vA), upper-case($vB))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-StartsWithFunc-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-StartsWithFunc-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $vA := (\"B STRING\", current-time(), string(\"content\"))[1] treat as xs:string,
         $vB := (\"b string\", current-time(), string(\"content\"))[1] treat as xs:string
         return starts-with(upper-case($vA), lower-case($vB))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-StartsWithFunc-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-StartsWithFunc-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $vA := (\"B STRING\", current-time(), string(\"content\"))[1] treat as xs:string,
         $vB := (\"b string\", current-time(), string(\"content\"))[1] treat as xs:string
         return starts-with(lower-case($vA), upper-case($vB))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-StartsWithFunc-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-starts-with-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        fn:boolean(fn:starts-with('input', '', 'http://www.w3.org/2005/xpath-functions/collation/codepoint'))
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-starts-with-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.