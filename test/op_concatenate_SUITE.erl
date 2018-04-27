-module('op_concatenate_SUITE').
-include_lib("common_test/include/ct.hrl").
-compile({nowarn_unused_function,[environment/2]}).
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['sequenceexpressionhc1'/1]).
-export(['sequenceexpressionhc2'/1]).
-export(['sequenceexpressionhc3'/1]).
-export(['sequenceexpressionhc4'/1]).
-export(['sequenceexpressionhc5'/1]).
-export(['sequenceexpressionhc6'/1]).
-export(['sequenceexpressionhc7'/1]).
-export(['sequenceexpressionhc8'/1]).
-export(['sequenceexpressionhc9'/1]).
-export(['constSeq-1'/1]).
-export(['constSeq-2'/1]).
-export(['constSeq-3'/1]).
-export(['constSeq-4'/1]).
-export(['constSeq-5'/1]).
-export(['constSeq-6'/1]).
-export(['constSeq-7'/1]).
-export(['constSeq-8'/1]).
-export(['constSeq-9'/1]).
-export(['constSeq-10'/1]).
-export(['constSeq-11'/1]).
-export(['constSeq-12'/1]).
-export(['constSeq-13'/1]).
-export(['constSeq-14'/1]).
-export(['constSeq-15'/1]).
-export(['constSeq-16'/1]).
-export(['constSeq-17'/1]).
-export(['constSeq-18'/1]).
-export(['constSeq-19'/1]).
-export(['constSeq-20'/1]).
-export(['constSeq-21'/1]).
-export(['constSeq-22'/1]).
-export(['op-concatenate-mix-args-001'/1]).
-export(['op-concatenate-mix-args-002'/1]).
-export(['op-concatenate-mix-args-003'/1]).
-export(['op-concatenate-mix-args-004'/1]).
-export(['op-concatenate-mix-args-005'/1]).
-export(['op-concatenate-mix-args-006'/1]).
-export(['op-concatenate-mix-args-007'/1]).
-export(['op-concatenate-mix-args-008'/1]).
-export(['op-concatenate-mix-args-009'/1]).
-export(['op-concatenate-mix-args-010'/1]).
-export(['op-concatenate-mix-args-011'/1]).
-export(['op-concatenate-mix-args-012'/1]).
-export(['op-concatenate-mix-args-013'/1]).
-export(['op-concatenate-mix-args-014'/1]).
-export(['op-concatenate-mix-args-015'/1]).
-export(['op-concatenate-mix-args-016'/1]).
-export(['op-concatenate-mix-args-017'/1]).
-export(['op-concatenate-mix-args-018'/1]).
-export(['op-concatenate-mix-args-019'/1]).
-export(['op-concatenate-mix-args-020'/1]).
-export(['K-commaOp-1'/1]).
-export(['K-commaOp-2'/1]).
-export(['K-commaOp-3'/1]).
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
'sequenceexpressionhc1', 
'sequenceexpressionhc2', 
'sequenceexpressionhc3', 
'sequenceexpressionhc4', 
'sequenceexpressionhc5', 
'sequenceexpressionhc6', 
'sequenceexpressionhc7', 
'sequenceexpressionhc8', 
'sequenceexpressionhc9', 
'constSeq-1', 
'constSeq-2', 
'constSeq-3', 
'constSeq-4', 
'constSeq-5', 
'constSeq-6', 
'constSeq-7', 
'constSeq-8', 
'constSeq-9', 
'constSeq-10', 
'constSeq-11', 
'constSeq-12', 
'constSeq-13', 
'constSeq-14', 
'constSeq-15', 
'constSeq-16', 
'constSeq-17', 
'constSeq-18', 
'constSeq-19', 
'constSeq-20', 
'constSeq-21', 
'constSeq-22', 
'op-concatenate-mix-args-001', 
'op-concatenate-mix-args-002', 
'op-concatenate-mix-args-003', 
'op-concatenate-mix-args-004', 
'op-concatenate-mix-args-005', 
'op-concatenate-mix-args-006', 
'op-concatenate-mix-args-007', 
'op-concatenate-mix-args-008', 
'op-concatenate-mix-args-009', 
'op-concatenate-mix-args-010', 
'op-concatenate-mix-args-011', 
'op-concatenate-mix-args-012', 
'op-concatenate-mix-args-013', 
'op-concatenate-mix-args-014', 
'op-concatenate-mix-args-015', 
'op-concatenate-mix-args-016', 
'op-concatenate-mix-args-017', 
'op-concatenate-mix-args-018', 
'op-concatenate-mix-args-019', 
'op-concatenate-mix-args-020', 
'K-commaOp-1', 
'K-commaOp-2', 
'K-commaOp-3'
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
environment('bib',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/bib.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
].
'sequenceexpressionhc1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(1,2,3,4,5)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "sequenceexpressionhc1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1, 2, 3, 4, 5") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'sequenceexpressionhc2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(1,(2,3),4,5)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "sequenceexpressionhc2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1, 2, 3, 4, 5") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'sequenceexpressionhc3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(1, 2, (), 3, 4)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "sequenceexpressionhc3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1, 2, 3, 4") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'sequenceexpressionhc4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(1, 2 to 5)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "sequenceexpressionhc4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1, 2, 3, 4, 5") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'sequenceexpressionhc5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(1, 2, 2)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "sequenceexpressionhc5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1, 2, 2") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'sequenceexpressionhc6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count((15 to 10))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "sequenceexpressionhc6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'sequenceexpressionhc7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:reverse(10 to 15)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "sequenceexpressionhc7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"15, 14, 13, 12, 11, 10") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'sequenceexpressionhc8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "//empnum", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "sequenceexpressionhc8.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E2</empnum><empnum>E2</empnum><empnum>E3</empnum><empnum>E3</empnum><empnum>E4</empnum><empnum>E4</empnum><empnum>E4</empnum>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'sequenceexpressionhc9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " ($works//empnum,$staff//empname)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-and-staff',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "sequenceexpressionhc9.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E2</empnum><empnum>E2</empnum><empnum>E3</empnum><empnum>E3</empnum><empnum>E4</empnum><empnum>E4</empnum><empnum>E4</empnum><empname>Alice</empname><empname>Betty</empname><empname>Carmen</empname><empname>Don</empname><empname>Ed</empname>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'constSeq-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(1, 1 + 1, 3, 4, 5)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "constSeq-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1, 2, 3, 4, 5") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'constSeq-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(1, 3 - 1, 3, 4, 5)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "constSeq-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1, 2 ,3, 4, 5") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'constSeq-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " (1, 2 * 1, 3, 4, 5)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "constSeq-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1, 2, 3, 4, 5") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'constSeq-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " (1, 4 div 2, 3, 4, 5)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "constSeq-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1, 2, 3, 4, 5") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'constSeq-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " (1, 4 idiv 2, 3, 4, 5)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "constSeq-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1, 2, 3, 4, 5") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'constSeq-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " (1, fn:count((1, 2)), 3, 4, 5)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "constSeq-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1, 2, 3, 4, 5") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'constSeq-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " (1, fn:string-length(\"AB\"), 3, 4, 5)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "constSeq-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1, 2, 3, 4, 5") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'constSeq-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " (fn:true(),fn:true())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "constSeq-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"true(), true()") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'constSeq-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " (fn:false(),fn:false())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "constSeq-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"false(), false()") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'constSeq-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " (fn:not(\"true\"),fn:not(\"false\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "constSeq-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"false(), false()") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'constSeq-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " (fn:true() and fn:true(), fn:true())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "constSeq-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"true(), true()") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'constSeq-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " (fn:true() or fn:true(), fn:true())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "constSeq-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"true(), true()") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'constSeq-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " (xs:string(\"ABC\"), \"D\", \"E\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "constSeq-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"ABC\", \"D\", \"E\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'constSeq-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " (xs:integer(1), 2, 3)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "constSeq-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1, 2, 3") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'constSeq-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " (xs:decimal(1), 2, 3)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "constSeq-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1, 2, 3") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'constSeq-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " (xs:anyURI(\"http://www.example.com\"),xs:anyURI(\"http://www.example1.com\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "constSeq-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"http://www.example.com\", \"http://www.example1.com\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'constSeq-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " (xs:float(1.1), 2.2, 3.3)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "constSeq-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:float('1.1e0'), 2.2, 3.3") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'constSeq-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " (xs:double(1.2E2), 2.2E2, 3.3E2)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "constSeq-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"120, 220, 330") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'constSeq-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " (xs:boolean(fn:true()), fn:false(), fn:true())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "constSeq-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"true(), false(), true()") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'constSeq-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " (xs:date(\"2004-12-25Z\"),xs:date(\"2004-12-26Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "constSeq-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2004-12-25Z 2004-12-26Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'constSeq-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " (xs:dateTime(\"1999-11-28T09:00:00Z\"),xs:dateTime(\"1998-11-28T09:00:00Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "constSeq-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1999-11-28T09:00:00Z 1998-11-28T09:00:00Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'constSeq-22'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " (xs:time(\"08:00:00+09:00\"),xs:time(\"08:00:00+10:00\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "constSeq-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "08:00:00+09:00 08:00:00+10:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-concatenate-mix-args-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(1) , (2)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-concatenate-mix-args-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1, 2") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-concatenate-mix-args-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:string(\"a\") , xs:string(\"b\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-concatenate-mix-args-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"a\", \"b\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-concatenate-mix-args-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:string(\"a\") , (), \"xyz\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-concatenate-mix-args-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"a\", \"xyz\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-concatenate-mix-args-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "\"xyz\" , xs:string(\" \"), \"b\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-concatenate-mix-args-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"xyz\", \" \", \"b\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-concatenate-mix-args-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:string(\"a\") , xs:anyURI(\"www.example.com\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-concatenate-mix-args-005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"a\", \"www.example.com\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-concatenate-mix-args-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:string(\"hello\") , xs:integer(\"100\"), xs:anyURI(\"www.example.com\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-concatenate-mix-args-006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"hello\", 100, \"www.example.com\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-concatenate-mix-args-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:anyURI(\"www.example.com\") , xs:decimal(\"1.01\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-concatenate-mix-args-007.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"www.example.com\", 1.01") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-concatenate-mix-args-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:float(\"1.01\"), xs:float(\"NaN\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-concatenate-mix-args-008.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1.01 NaN") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-concatenate-mix-args-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:float(\"INF\") , xs:double(\"NaN\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-concatenate-mix-args-009.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "INF NaN") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-concatenate-mix-args-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:double(\"INF\"), xs:double(\"-INF\"), xs:float(\"-INF\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-concatenate-mix-args-010.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "INF -INF -INF") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-concatenate-mix-args-011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:boolean(\"true\") , xs:boolean(\"0\"), xs:integer(\"0\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-concatenate-mix-args-011.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"true(), false(), 0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-concatenate-mix-args-012'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:boolean(\"false\"), xs:boolean(\"1\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-concatenate-mix-args-012.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"false(), true()") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-concatenate-mix-args-013'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:date(\"1993-03-31\") , xs:boolean(\"true\"), xs:string(\"abc\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-concatenate-mix-args-013.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1993-03-31 true abc") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-concatenate-mix-args-014'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"1972-12-31T00:00:00Z\") , (())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-concatenate-mix-args-014.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1972-12-31T00:00:00Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-concatenate-mix-args-015'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:time(\"12:30:00Z\") , xs:string(\" \") , xs:decimal(\"2.000000000000002\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-concatenate-mix-args-015.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "12:30:00Z   2.000000000000002") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-concatenate-mix-args-016'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "() , xs:string(\" \") , xs:decimal(\"2.000000000000002\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-concatenate-mix-args-016.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "  2.000000000000002") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-concatenate-mix-args-017'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(1+1), (2-2)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-concatenate-mix-args-017.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"2, 0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-concatenate-mix-args-018'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(1,2,2),(1,2,3),(123,\"\"),(),(\"\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-concatenate-mix-args-018.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1, 2, 2, 1, 2, 3, 123, \"\", \"\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-concatenate-mix-args-019'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "//book/price, (), (1)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('bib',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-concatenate-mix-args-019.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"count($result) = 5") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result[1][self::price][.=\"65.95\"]") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result[2][self::price][.=\"65.95\"]") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result[3][self::price][.=\"39.95\"]") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result[4][self::price][.=\"129.95\"]") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result[5] eq 1") of 
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
'op-concatenate-mix-args-020'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "//book/price, //book/title", 
   {Env,Opts} = xqerl_test:handle_environment(environment('bib',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-concatenate-mix-args-020.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<price>65.95</price><price>65.95</price><price>39.95</price><price>129.95</price><title>TCP/IP Illustrated</title><title>Advanced Programming in the Unix environment</title><title>Data on the Web</title><title>The Economics of Technology and Content for Digital TV</title>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-commaOp-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "deep-equal(((1, (2, (3, 4, (5, 6)), 7), 8, (9, 10), 11)), (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-commaOp-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-commaOp-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(((), (), ((), (), ((), (), (())), ()), (), (())))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-commaOp-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-commaOp-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "((), (), ((), (), ((), (), (\"str\")), ()), (), (())) eq \"str\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-commaOp-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.