-module('fn_for_each_pair_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['for-each-pair-001'/1]).
-export(['for-each-pair-002'/1]).
-export(['for-each-pair-003'/1]).
-export(['for-each-pair-004'/1]).
-export(['for-each-pair-005'/1]).
-export(['for-each-pair-006'/1]).
-export(['for-each-pair-007'/1]).
-export(['for-each-pair-008'/1]).
-export(['for-each-pair-901'/1]).
-export(['for-each-pair-902'/1]).
-export(['fn-for-each-pair-001'/1]).
-export(['fn-for-each-pair-002'/1]).
-export(['fn-for-each-pair-003'/1]).
-export(['fn-for-each-pair-004'/1]).
-export(['fn-for-each-pair-005'/1]).
-export(['fn-for-each-pair-006'/1]).
-export(['fn-for-each-pair-007'/1]).
-export(['fn-for-each-pair-008'/1]).
-export(['fn-for-each-pair-009'/1]).
-export(['fn-for-each-pair-010'/1]).
-export(['fn-for-each-pair-011'/1]).
-export(['fn-for-each-pair-012'/1]).
-export(['fn-for-each-pair-013'/1]).
-export(['fn-for-each-pair-014'/1]).
-export(['fn-for-each-pair-015'/1]).
-export(['fn-for-each-pair-016'/1]).
-export(['fn-for-each-pair-017'/1]).
-export(['fn-for-each-pair-018'/1]).
-export(['fn-for-each-pair-019'/1]).
-export(['fn-for-each-pair-020'/1]).
-export(['fn-for-each-pair-021'/1]).
-export(['fn-for-each-pair-022'/1]).
-export(['fn-for-each-pair-023'/1]).
-export(['fn-for-each-pair-024'/1]).
-export(['fn-for-each-pair-025'/1]).
-export(['fn-for-each-pair-026'/1]).
-export(['fn-for-each-pair-027'/1]).
-export(['fn-for-each-pair-028'/1]).
-export(['fn-for-each-pair-029'/1]).
-export(['fn-for-each-pair-030'/1]).
-export(['fn-for-each-pair-031'/1]).
-export(['fn-for-each-pair-032'/1]).
-export(['fn-for-each-pair-033'/1]).
-export(['fn-for-each-pair-034'/1]).
-export(['fn-for-each-pair-035'/1]).
-export(['fn-for-each-pair-036'/1]).
-export(['fn-for-each-pair-037'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> ct:timetrap({seconds,60}), xqerl_module:unload(all).
init_per_suite(Config) -> 
   DD = filename:dirname(filename:dirname(proplists:get_value(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   BaseDir = filename:join(TD, "fn")

,[{base_dir, BaseDir}|Config].
all() -> [
   'for-each-pair-001',
   'for-each-pair-002',
   'for-each-pair-003',
   'for-each-pair-004',
   'for-each-pair-005',
   'for-each-pair-006',
   'for-each-pair-007',
   'for-each-pair-008',
   'for-each-pair-901',
   'for-each-pair-902',
   'fn-for-each-pair-001',
   'fn-for-each-pair-002',
   'fn-for-each-pair-003',
   'fn-for-each-pair-004',
   'fn-for-each-pair-005',
   'fn-for-each-pair-006',
   'fn-for-each-pair-007',
   'fn-for-each-pair-008',
   'fn-for-each-pair-009',
   'fn-for-each-pair-010',
   'fn-for-each-pair-011',
   'fn-for-each-pair-012',
   'fn-for-each-pair-013',
   'fn-for-each-pair-014',
   'fn-for-each-pair-015',
   'fn-for-each-pair-016',
   'fn-for-each-pair-017',
   'fn-for-each-pair-018',
   'fn-for-each-pair-019',
   'fn-for-each-pair-020',
   'fn-for-each-pair-021',
   'fn-for-each-pair-022',
   'fn-for-each-pair-023',
   'fn-for-each-pair-024',
   'fn-for-each-pair-025',
   'fn-for-each-pair-026',
   'fn-for-each-pair-027',
   'fn-for-each-pair-028',
   'fn-for-each-pair-029',
   'fn-for-each-pair-030',
   'fn-for-each-pair-031',
   'fn-for-each-pair-032',
   'fn-for-each-pair-033',
   'fn-for-each-pair-034',
   'fn-for-each-pair-035',
   'fn-for-each-pair-036',
   'fn-for-each-pair-037'].
environment('empty',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('atomic',BaseDir) ->
[{'decimal-formats', []},
{sources, [{"file://"++filename:join(BaseDir, "../docs/atomic.xml"), ".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{filename:join(BaseDir, "../docs/atomic.xsd"),"http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{resources, []},
{modules, []}
];
environment('atomic-xq',BaseDir) ->
[{'decimal-formats', []},
{sources, [{"file://"++filename:join(BaseDir, "../docs/atomic.xml"), ".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{filename:join(BaseDir, "../docs/atomic.xsd"),"http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-mod',BaseDir) ->
[{'decimal-formats', []},
{sources, [{"file://"++filename:join(BaseDir, "../docs/works-mod.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works',BaseDir) ->
[{'decimal-formats', []},
{sources, [{"file://"++filename:join(BaseDir, "../docs/works.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('staff',BaseDir) ->
[{'decimal-formats', []},
{sources, [{"file://"++filename:join(BaseDir, "../docs/staff.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-and-staff',BaseDir) ->
[{'decimal-formats', []},
{sources, [{"file://"++filename:join(BaseDir, "../docs/works.xml"), "$works",""},
{"file://"++filename:join(BaseDir, "../docs/staff.xml"), "$staff",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('auction',BaseDir) ->
[{'decimal-formats', []},
{sources, [{"file://"++filename:join(BaseDir, "../docs/auction.xml"), ".",""}]},
{schemas, []},
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
{resources, []},
{modules, []}
];
environment('qname',BaseDir) ->
[{'decimal-formats', []},
{sources, [{"file://"++filename:join(BaseDir, "../docs/QName-source.xml"), ".",""}]},
{schemas, [{filename:join(BaseDir, "../docs/QName-schema.xsd"),"http://www.example.com/QNameXSD"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.example.com/QNameXSD",""}]},
{resources, []},
{modules, []}
];
environment('math',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/math","math"}]},
{resources, []},
{modules, []}
];
environment('array',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"}]},
{resources, []},
{modules, []}
];
environment('map',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('array-and-map',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"},
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
].
'for-each-pair-001'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "for-each-pair((\"aa\", \"bb\", \"cc\", \"dd\", \"ee\"), (\"AA\", \"BB\", \"cc\", \"dd\", \"EE\"), deep-equal#2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "for-each-pair-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"false(), false(), true(), true(), false()") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'for-each-pair-002'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "for-each-pair((\"aa\", \"bb\", \"cc\", \"dd\", \"ee\", \"ff\"), (\"AA\", \"BB\", \"cc\", \"dd\", \"EE\"), deep-equal#2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "for-each-pair-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"false(), false(), true(), true(), false()") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'for-each-pair-003'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "for-each-pair((\"aa\", \"bb\", \"cc\", \"dd\", \"ee\"), (\"AA\", \"BB\", \"cc\", \"dd\", \"EE\", \"ff\"), deep-equal#2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "for-each-pair-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"false(), false(), true(), true(), false()") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'for-each-pair-004'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "for-each-pair((\"aa\", \"bb\", \"cc\", \"dd\", \"ee\"), (\"AA\", \"BB\", \"cc\", \"dd\", \"EE\"), concat(?, '-', ?))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "for-each-pair-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"'aa-AA', 'bb-BB', 'cc-cc', 'dd-dd', 'ee-EE'") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'for-each-pair-005'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "for-each-pair(1 to 5, 1 to 5, function($a as xs:integer, $b as xs:integer) as xs:integer{$a + $b})",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "for-each-pair-005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"2, 4, 6, 8, 10") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'for-each-pair-006'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = " 
            let $millenium := year-from-date(current-date()) idiv 1000 
            return for-each-pair(1 to 5, 2 to 6, function($a as xs:integer, $b as xs:integer) as xs:integer{$a + $b + $millenium})",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "for-each-pair-006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"5, 7, 9, 11, 13") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'for-each-pair-007'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = " 
            let $millenium := year-from-date(current-date()) idiv 1000 
            return for-each-pair((\"a\", \"ab\", \"abc\", \"\"), (\"\", \"\", \"\", \"\"), function($a, $b) as xs:integer* {1 to (string-length($a) + string-length($b))})",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "for-each-pair-007.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1, 1, 2, 1, 2, 3") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'for-each-pair-008'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = " let $in := 1 to 5 return for-each-pair($in, tail($in), function($a, $b){$a+$b}) ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "for-each-pair-008.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"3, 5, 7, 9") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'for-each-pair-901'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "for-each-pair((\"aa\", \"bb\", \"cc\", \"dd\", \"ee\"), (\"AA\", \"BB\", \"cc\", \"dd\", \"EE\"), deep-equal#3)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "for-each-pair-901.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'for-each-pair-902'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "for-each-pair((\"aa\", \"bb\", \"cc\", \"dd\", \"ee\"), (\"AA\", \"BB\", \"cc\", \"dd\", 12), contains#2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "for-each-pair-902.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-for-each-pair-001'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:for-each-pair()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-for-each-pair-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-for-each-pair-002'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:for-each-pair#0",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-for-each-pair-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-for-each-pair-003'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:for-each-pair( fn:concat#2 )",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-for-each-pair-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-for-each-pair-004'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:for-each-pair#1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-for-each-pair-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-for-each-pair-005'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:for-each-pair( (), fn:concat#2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-for-each-pair-005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-for-each-pair-006'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:for-each-pair#2",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-for-each-pair-006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-for-each-pair-007'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:for-each-pair( (), (), fn:concat#2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-for-each-pair-007.xq"), Qry1),
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
'fn-for-each-pair-008'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:exists( fn:for-each-pair#3 )",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-for-each-pair-008.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-for-each-pair-009'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "( fn:for-each-pair( (), (), if ( fn:current-dateTime() eq
                                 fn:dateTime( fn:current-date(),
                                              fn:current-time() ))
                            then fn:concat#2
                            else () ),
              fn:for-each-pair( (), (), if ( fn:current-dateTime() eq
                                fn:dateTime( fn:current-date(),
                                             fn:current-time() ))
                            then ()
                            else fn:concat#2 ) )",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-for-each-pair-009.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-for-each-pair-010'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"staticTyping"}.
'fn-for-each-pair-011'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:for-each-pair( (), (), (fn:concat#2, fn:concat#2) )",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-for-each-pair-011.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-for-each-pair-012'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:for-each-pair( (), (), fn:true() )",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-for-each-pair-012.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-for-each-pair-013'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = " fn:for-each-pair( (), (), /root )",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, [{"file://"++filename:join(BaseDir, "for-each-pair/fn-for-each-pair-013.xml"),".",[]}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-for-each-pair-013.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-for-each-pair-014'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:for-each-pair( (), (), fn:boolean#1 )",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-for-each-pair-014.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-for-each-pair-015'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:for-each-pair( (), (), fn:concat#3 )",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-for-each-pair-015.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-for-each-pair-016'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:for-each-pair( (), (), function($a as item(), $b as item()) as item()* { fn:boolean($a), fn:boolean($b) } )",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-for-each-pair-016.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-for-each-pair-017'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:for-each-pair((//node(), 1, \"string\", 3.14, 2.7e0, fn:exists#1),
                          (//node(), 1, \"string\", 3.14, 2.7e0, fn:exists#1), function($a, $b)
                          { if ($a instance of function(*))
                            then $b instance of function(*)
                            else if ($b instance of function(*))
                            then false()
                            else deep-equal($a, $b)
                          } )",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, [{"file://"++filename:join(BaseDir, "for-each-pair/fn-for-each-pair-013.xml"),".",[]}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-for-each-pair-017.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "true true true true true true true true true true true true true true") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-for-each-pair-018'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:for-each-pair( (), fn:error(), concat#2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-for-each-pair-018.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOER0000") of 
      true -> {comment, "Correct error"};
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
'fn-for-each-pair-019'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:for-each-pair( fn:error(), (), concat#2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-for-each-pair-019.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOER0000") of 
      true -> {comment, "Correct error"};
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
'fn-for-each-pair-020'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:for-each-pair( (), (), function($arg, $arg2) { fn:error() })",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-for-each-pair-020.xq"), Qry1),
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
'fn-for-each-pair-021'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:for-each-pair( 1 to 10, 1 to 10, function($arg, $arg2) { fn:error() })",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-for-each-pair-021.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOER0000") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-for-each-pair-022'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:for-each-pair( fn:error(), fn:error(), function($arg1, $arg2) { () })",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-for-each-pair-022.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOER0000") of 
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
'fn-for-each-pair-023'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:for-each-pair( (1, fn:error()), 1, function($arg1, $arg2) { ($arg1, $arg2) })",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-for-each-pair-023.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOER0000") of 
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
'fn-for-each-pair-024'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:for-each-pair( 1, (1, fn:error()), function($arg1, $arg2) { ($arg1, $arg2) })",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-for-each-pair-024.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "1 1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOER0000") of 
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
'fn-for-each-pair-025'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:for-each-pair( 1 to 3, 1 to 3, function($arg1, $arg2) { ($arg1 + $arg2) })",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-for-each-pair-025.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2 4 6") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-for-each-pair-026'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:for-each-pair( (true(), false(), true()), 1 to 3, function($arg1, $arg2) { if ($arg1) then $arg2 else () })",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-for-each-pair-026.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-for-each-pair-027'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:for-each-pair( 1 to 3, 1 to 3, function($arg1, $arg2) { ($arg1, $arg2) })",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-for-each-pair-027.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 1 2 2 3 3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-for-each-pair-028'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:for-each-pair( (\"1\", \"2\"), (1, 2), function($arg1 as xs:integer, $arg2 as xs:integer) { $arg1 + $arg2 } )",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-for-each-pair-028.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-for-each-pair-029'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:for-each-pair( (1, 2), (\"1\", \"2\"), function($arg1 as xs:integer, $arg2 as xs:integer) { $arg1 + $arg2 } )",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-for-each-pair-029.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-for-each-pair-030'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:for-each-pair( (\"1\", \"2\"), (\"1\", \"2\"), function($arg1 as xs:integer, $arg2 as xs:integer) { $arg1 + $arg2 } )",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-for-each-pair-030.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-for-each-pair-031'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "( fn:for-each-pair( (\"a\"), (\"b\"), if ( fn:current-dateTime() eq
                                 fn:dateTime( fn:current-date(),
                                              fn:current-time() ))
                            then fn:concat#2
                            else () ),
              fn:for-each-pair( \"a\", \"b\", if ( fn:current-dateTime() eq
                                fn:dateTime( fn:current-date(),
                                             fn:current-time() ))
                            then ()
                            else fn:concat#2 ) )",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-for-each-pair-031.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-for-each-pair-032'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"staticTyping"}.
'fn-for-each-pair-033'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:for-each-pair( \"a\", \"b\", (fn:concat#2, fn:concat#2) )",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-for-each-pair-033.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-for-each-pair-034'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:for-each-pair( \"a\", \"b\", fn:true() )",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-for-each-pair-034.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-for-each-pair-035'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = " fn:for-each-pair(\"a\", \"b\",  /root )",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, [{"file://"++filename:join(BaseDir, "for-each-pair/fn-for-each-pair-013.xml"),".",[]}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-for-each-pair-035.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-for-each-pair-036'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:for-each-pair( \"a\", \"b\", fn:boolean#1 )",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-for-each-pair-036.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-for-each-pair-037'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:for-each-pair( \"a\", \"b\", fn:concat#3 )",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-for-each-pair-037.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
