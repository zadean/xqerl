-module('op_intersect_SUITE').
-include_lib("common_test/include/ct.hrl").
-compile({nowarn_unused_function,[environment/2]}).
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['fn-intersect-node-args-001'/1]).
-export(['fn-intersect-node-args-002'/1]).
-export(['fn-intersect-node-args-003'/1]).
-export(['fn-intersect-node-args-004'/1]).
-export(['fn-intersect-node-args-005'/1]).
-export(['fn-intersect-node-args-006'/1]).
-export(['fn-intersect-node-args-007'/1]).
-export(['fn-intersect-node-args-008'/1]).
-export(['fn-intersect-node-args-009'/1]).
-export(['fn-intersect-node-args-010'/1]).
-export(['fn-intersect-node-args-011'/1]).
-export(['fn-intersect-node-args-012'/1]).
-export(['fn-intersect-node-args-013'/1]).
-export(['fn-intersect-node-args-014'/1]).
-export(['fn-intersect-node-args-015'/1]).
-export(['fn-intersect-node-args-016'/1]).
-export(['fn-intersect-node-args-017'/1]).
-export(['fn-intersect-node-args-018'/1]).
-export(['fn-intersect-node-args-019'/1]).
-export(['fn-intersect-node-args-020'/1]).
-export(['fn-intersect-node-args-021'/1]).
-export(['fn-intersect-node-args-022'/1]).
-export(['fn-intersect-node-args-023'/1]).
-export(['K2-SeqIntersect-1'/1]).
-export(['K2-SeqIntersect-2'/1]).
-export(['K2-SeqIntersect-3'/1]).
-export(['K2-SeqIntersect-4'/1]).
-export(['K2-SeqIntersect-5'/1]).
-export(['K2-SeqIntersect-6'/1]).
-export(['K2-SeqIntersect-7'/1]).
-export(['K2-SeqIntersect-8'/1]).
-export(['K2-SeqIntersect-9'/1]).
-export(['K2-SeqIntersect-10'/1]).
-export(['K2-SeqIntersect-11'/1]).
-export(['K2-SeqIntersect-12'/1]).
-export(['K2-SeqIntersect-13'/1]).
-export(['K2-SeqIntersect-14'/1]).
-export(['K2-SeqIntersect-15'/1]).
-export(['K2-SeqIntersect-16'/1]).
-export(['K2-SeqIntersect-17'/1]).
-export(['K2-SeqIntersect-18'/1]).
-export(['K2-SeqIntersect-19'/1]).
-export(['K2-SeqIntersect-20'/1]).
-export(['K2-SeqIntersect-21'/1]).
-export(['K2-SeqIntersect-22'/1]).
-export(['K2-SeqIntersect-23'/1]).
-export(['K2-SeqIntersect-24'/1]).
-export(['K2-SeqIntersect-25'/1]).
-export(['K2-SeqIntersect-26'/1]).
-export(['K2-SeqIntersect-27'/1]).
-export(['K2-SeqIntersect-28'/1]).
-export(['K2-SeqIntersect-29'/1]).
-export(['K2-SeqIntersect-30'/1]).
-export(['K2-SeqIntersect-31'/1]).
-export(['K2-SeqIntersect-32'/1]).
-export(['K2-SeqIntersect-33'/1]).
-export(['K2-SeqIntersect-34'/1]).
-export(['K2-SeqIntersect-35'/1]).
-export(['K2-SeqIntersect-36'/1]).
-export(['K2-SeqIntersect-37'/1]).
-export(['K2-SeqIntersect-38'/1]).
-export(['K2-SeqIntersect-39'/1]).
-export(['K2-SeqIntersect-40'/1]).
-export(['K2-SeqIntersect-41'/1]).
-export(['K2-SeqIntersect-42'/1]).
-export(['K2-SeqIntersect-43'/1]).
-export(['K2-SeqIntersect-44'/1]).
-export(['combiningnodeseqintersecthc1'/1]).
-export(['combiningnodeseqintersecthc2'/1]).
-export(['combiningnodeseqintersecthc3'/1]).
-export(['combiningnodeseqintersecthc4'/1]).
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
'fn-intersect-node-args-001', 
'fn-intersect-node-args-002', 
'fn-intersect-node-args-003', 
'fn-intersect-node-args-004', 
'fn-intersect-node-args-005', 
'fn-intersect-node-args-006', 
'fn-intersect-node-args-007', 
'fn-intersect-node-args-008', 
'fn-intersect-node-args-009', 
'fn-intersect-node-args-010', 
'fn-intersect-node-args-011', 
'fn-intersect-node-args-012', 
'fn-intersect-node-args-013', 
'fn-intersect-node-args-014', 
'fn-intersect-node-args-015', 
'fn-intersect-node-args-016', 
'fn-intersect-node-args-017', 
'fn-intersect-node-args-018', 
'fn-intersect-node-args-019', 
'fn-intersect-node-args-020', 
'fn-intersect-node-args-021', 
'fn-intersect-node-args-022', 
'fn-intersect-node-args-023', 
'K2-SeqIntersect-1', 
'K2-SeqIntersect-2', 
'K2-SeqIntersect-3', 
'K2-SeqIntersect-4', 
'K2-SeqIntersect-5', 
'K2-SeqIntersect-6', 
'K2-SeqIntersect-7', 
'K2-SeqIntersect-8', 
'K2-SeqIntersect-9', 
'K2-SeqIntersect-10', 
'K2-SeqIntersect-11', 
'K2-SeqIntersect-12', 
'K2-SeqIntersect-13', 
'K2-SeqIntersect-14', 
'K2-SeqIntersect-15', 
'K2-SeqIntersect-16', 
'K2-SeqIntersect-17', 
'K2-SeqIntersect-18', 
'K2-SeqIntersect-19', 
'K2-SeqIntersect-20', 
'K2-SeqIntersect-21', 
'K2-SeqIntersect-22', 
'K2-SeqIntersect-23', 
'K2-SeqIntersect-24', 
'K2-SeqIntersect-25', 
'K2-SeqIntersect-26', 
'K2-SeqIntersect-27', 
'K2-SeqIntersect-28', 
'K2-SeqIntersect-29', 
'K2-SeqIntersect-30', 
'K2-SeqIntersect-31', 
'K2-SeqIntersect-32', 
'K2-SeqIntersect-33', 
'K2-SeqIntersect-34', 
'K2-SeqIntersect-35', 
'K2-SeqIntersect-36', 
'K2-SeqIntersect-37', 
'K2-SeqIntersect-38', 
'K2-SeqIntersect-39', 
'K2-SeqIntersect-40', 
'K2-SeqIntersect-41', 
'K2-SeqIntersect-42', 
'K2-SeqIntersect-43', 
'K2-SeqIntersect-44', 
'combiningnodeseqintersecthc1', 
'combiningnodeseqintersecthc2', 
'combiningnodeseqintersecthc3', 
'combiningnodeseqintersecthc4'
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
environment('acme_corp',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "union/acme_corp.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('bib2',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "union/bib2.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
].
'fn-intersect-node-args-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(/bib/book[1]/title intersect /bib/book[1]/title)/string()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('bib2',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-intersect-node-args-001.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "TCP/IP Illustrated") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-intersect-node-args-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "/bib/book/title intersect /bib/book[1]/title", 
   {Env,Opts} = xqerl_test:handle_environment(environment('bib2',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-intersect-node-args-002.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "TCP/IP Illustrated") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-intersect-node-args-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "/bib/book[3]/title intersect root(exactly-one(/bib/book[3]/title))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('bib2',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-intersect-node-args-003.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-intersect-node-args-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "/bib/book[3]/title/text() intersect /bib/book/title/text()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('bib2',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-intersect-node-args-004.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Data on the Web") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-intersect-node-args-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(/processing-instruction() intersect /processing-instruction())/name()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('bib2',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-intersect-node-args-005.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "PI1 PI2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-intersect-node-args-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(/processing-instruction(PI1) intersect /processing-instruction())/name()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('bib2',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-intersect-node-args-006.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "PI1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-intersect-node-args-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string-join((/comment() intersect /comment()), \"|\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('bib2',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-intersect-node-args-007.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, " this file is a copy of bib.xml; just adds a few comments and PI nodes for testing | Comment 1 | Comment 2 ") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-intersect-node-args-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "/bib/book[3]/title/text() intersect /bib/book/title/text()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('bib2',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-intersect-node-args-008.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Data on the Web") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-intersect-node-args-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "/processing-instruction() intersect /bib/book[2]/title", 
   {Env,Opts} = xqerl_test:handle_environment(environment('bib2',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-intersect-node-args-009.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-intersect-node-args-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "/processing-instruction(PI1) intersect /bib/book", 
   {Env,Opts} = xqerl_test:handle_environment(environment('bib2',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-intersect-node-args-010.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-intersect-node-args-011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(/bib/book intersect /bib/book)/string(@year)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('bib2',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-intersect-node-args-011.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1994 1992 2000 1999") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-intersect-node-args-012'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "//author intersect //nonexisting", 
   {Env,Opts} = xqerl_test:handle_environment(environment('bib2',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-intersect-node-args-012.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-intersect-node-args-013'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "//author intersect ()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('bib2',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-intersect-node-args-013.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-intersect-node-args-014'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "() intersect ()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-intersect-node-args-014.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-intersect-node-args-015'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'fn-intersect-node-args-016'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'fn-intersect-node-args-017'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'fn-intersect-node-args-018'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'fn-intersect-node-args-019'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'fn-intersect-node-args-020'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'fn-intersect-node-args-021'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'fn-intersect-node-args-022'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'fn-intersect-node-args-023'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $node in ((//price/text()) , (//price/text())) intersect ((//price/text()) , (//price/text())) return <a> {$node} </a>", 
   {Env,Opts} = xqerl_test:handle_environment(environment('bib2',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-intersect-node-args-023.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a> 65.95</a><a>65.95</a><a> 39.95</a><a>129.95</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqIntersect-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(1, 2, 3) intersect (1, 2, 3)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-SeqIntersect-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqIntersect-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(author intersect text))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-SeqIntersect-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqIntersect-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(author intersect node))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-SeqIntersect-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqIntersect-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(author intersect element))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-SeqIntersect-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqIntersect-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(author intersect attribute))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-SeqIntersect-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqIntersect-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(author intersect document-node))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-SeqIntersect-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqIntersect-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(author intersect comment))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-SeqIntersect-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqIntersect-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(author intersect processing-instruction))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-SeqIntersect-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqIntersect-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(author intersect item))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-SeqIntersect-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqIntersect-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(author intersect document))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-SeqIntersect-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqIntersect-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(author intersect if))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-SeqIntersect-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqIntersect-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(author intersect then))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-SeqIntersect-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqIntersect-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(author intersect mod))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-SeqIntersect-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqIntersect-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(author intersect div))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-SeqIntersect-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqIntersect-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(author intersect empty-sequence))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-SeqIntersect-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqIntersect-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(author intersect schema-attribute))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-SeqIntersect-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqIntersect-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(author intersect schema-element))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-SeqIntersect-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqIntersect-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(a intersect attribute {\"name\"} {()}))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-SeqIntersect-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqIntersect-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(a intersect attribute name {()}))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-SeqIntersect-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqIntersect-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(a intersect element {\"name\"} {()}))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-SeqIntersect-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqIntersect-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(a intersect element name {()}))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-SeqIntersect-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqIntersect-22'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(a intersect processing-instruction {\"name\"} {()}))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-SeqIntersect-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqIntersect-23'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(a intersect processing-instruction name {}))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-SeqIntersect-23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqIntersect-24'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(a intersect comment {()}))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-SeqIntersect-24.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqIntersect-25'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(a intersect text {()}))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-SeqIntersect-25.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqIntersect-26'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(a intersect descendant))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-SeqIntersect-26.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqIntersect-27'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(a intersect attribute))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-SeqIntersect-27.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqIntersect-28'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(a intersect self))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-SeqIntersect-28.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqIntersect-29'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(a intersect descendant-or-self))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-SeqIntersect-29.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqIntersect-30'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(a intersect following-sibling))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-SeqIntersect-30.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqIntersect-31'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(a intersect following))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-SeqIntersect-31.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqIntersect-32'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(a intersect preceding-sibling))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-SeqIntersect-32.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqIntersect-33'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(a intersect preceding))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-SeqIntersect-33.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqIntersect-34'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(a intersect parent))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-SeqIntersect-34.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqIntersect-35'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(a intersect ancestor))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-SeqIntersect-35.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqIntersect-36'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(a intersect ancestor))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-SeqIntersect-36.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqIntersect-37'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(a intersect ancestor-or-self))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-SeqIntersect-37.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqIntersect-38'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(a intersect declare))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-SeqIntersect-38.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqIntersect-39'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "boolean(//employee[location = \"Denver\"] intersect //employee[last()])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('acme_corp',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-SeqIntersect-39.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqIntersect-40'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "//(employee[location = \"Denver\"] intersect //employee[last()])/./location", 
   {Env,Opts} = xqerl_test:handle_environment(environment('acme_corp',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-SeqIntersect-40.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqIntersect-41'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<r> { let $i := <e> <a/> <b/> <c/> </e>/a , $t := $i/following-sibling::b return (($i intersect ($i, $i)), (($t, $t) intersect $t)) } </r>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-SeqIntersect-41.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<r><a/><b/></r>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqIntersect-42'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         declare function local:function ($c as node()) { $c intersect $c }; 
         empty(local:function(document{()}))
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-SeqIntersect-42.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqIntersect-43'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1 intersect 2 intersect 3", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-SeqIntersect-43.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqIntersect-44'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1 except 2 except 3", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-SeqIntersect-44.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'combiningnodeseqintersecthc1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count((<a>0</a>,<a>1</a>) intersect (<a>3</a>,<a>4</a>))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "combiningnodeseqintersecthc1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'combiningnodeseqintersecthc2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(() intersect ())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "combiningnodeseqintersecthc2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'combiningnodeseqintersecthc3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $h in ( (//hours) intersect (//hours[xs:integer(.) gt 12])) order by number($h) return $h", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "combiningnodeseqintersecthc3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>80</hours><hours>80</hours><hours>80</hours>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'combiningnodeseqintersecthc4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $h in ( ($works//hours) intersect ($works//hours, $staff//grade)) order by number($h) return $h", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-and-staff',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "combiningnodeseqintersecthc4.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<hours>12</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>80</hours><hours>80</hours><hours>80</hours>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.