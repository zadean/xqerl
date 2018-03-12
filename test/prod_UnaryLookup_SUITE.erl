-module('prod_UnaryLookup_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['UnaryLookup-001'/1]).
-export(['UnaryLookup-002'/1]).
-export(['UnaryLookup-003'/1]).
-export(['UnaryLookup-004'/1]).
-export(['UnaryLookup-005'/1]).
-export(['UnaryLookup-006'/1]).
-export(['UnaryLookup-007'/1]).
-export(['UnaryLookup-008'/1]).
-export(['UnaryLookup-009'/1]).
-export(['UnaryLookup-010'/1]).
-export(['UnaryLookup-011'/1]).
-export(['UnaryLookup-012'/1]).
-export(['UnaryLookup-013'/1]).
-export(['UnaryLookup-014'/1]).
-export(['UnaryLookup-015'/1]).
-export(['UnaryLookup-016'/1]).
-export(['UnaryLookup-017'/1]).
-export(['UnaryLookup-018'/1]).
-export(['UnaryLookup-019'/1]).
-export(['UnaryLookup-020'/1]).
-export(['UnaryLookup-021'/1]).
-export(['UnaryLookup-022'/1]).
-export(['UnaryLookup-023'/1]).
-export(['UnaryLookup-024'/1]).
-export(['UnaryLookup-025'/1]).
-export(['UnaryLookup-040'/1]).
-export(['UnaryLookup-041'/1]).
-export(['UnaryLookup-042'/1]).
-export(['UnaryLookup-043'/1]).
-export(['UnaryLookup-044'/1]).
-export(['UnaryLookup-045'/1]).
-export(['UnaryLookup-046'/1]).
-export(['UnaryLookup-047'/1]).
-export(['UnaryLookup-048'/1]).
suite() ->
[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> ct:timetrap({seconds,60}), xqerl_module:unload(all).
init_per_suite(Config) -> 
   ok = application:ensure_started(mnesia),
   ok = application:ensure_started(xqerl_db),
   xqerl_module:one_time_init(), 
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   BaseDir = filename:join(TD, "prod")

,[{base_dir, BaseDir}|Config].
all() -> [
   'UnaryLookup-001',
   'UnaryLookup-002',
   'UnaryLookup-003',
   'UnaryLookup-004',
   'UnaryLookup-005',
   'UnaryLookup-006',
   'UnaryLookup-007',
   'UnaryLookup-008',
   'UnaryLookup-009',
   'UnaryLookup-010',
   'UnaryLookup-011',
   'UnaryLookup-012',
   'UnaryLookup-013',
   'UnaryLookup-014',
   'UnaryLookup-015',
   'UnaryLookup-016',
   'UnaryLookup-017',
   'UnaryLookup-018',
   'UnaryLookup-019',
   'UnaryLookup-020',
   'UnaryLookup-021',
   'UnaryLookup-022',
   'UnaryLookup-023',
   'UnaryLookup-024',
   'UnaryLookup-025',
   'UnaryLookup-040',
   'UnaryLookup-041',
   'UnaryLookup-042',
   'UnaryLookup-043',
   'UnaryLookup-044',
   'UnaryLookup-045',
   'UnaryLookup-046',
   'UnaryLookup-047',
   'UnaryLookup-048'].
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
{sources, [{filename:join(BaseDir, "../docs/atomic.xml"), ".","http://www.w3.org/fots/docs/atomic.xml"}]},
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
{sources, [{filename:join(BaseDir, "../docs/atomic.xml"), ".","http://www.w3.org/fots/docs/atomic.xml"}]},
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
{sources, [{filename:join(BaseDir, "../docs/works-mod.xml"), ".",""}]},
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
{sources, [{filename:join(BaseDir, "../docs/works.xml"), ".",""}]},
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
{sources, [{filename:join(BaseDir, "../docs/staff.xml"), ".",""}]},
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
{sources, [{filename:join(BaseDir, "../docs/works.xml"), "$works",""},
{filename:join(BaseDir, "../docs/staff.xml"), "$staff",""}]},
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
{sources, [{filename:join(BaseDir, "../docs/auction.xml"), ".",""}]},
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
{sources, [{filename:join(BaseDir, "../docs/QName-source.xml"), ".",""}]},
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
'UnaryLookup-001'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(['a', 'b'], ['c', 'd'])[?1 eq 'c']",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "UnaryLookup-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"['c', 'd']") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UnaryLookup-002'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "let $i := 1 return (['a', 'b'], ['c', 'd'])[?($i) eq 'c']",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "UnaryLookup-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"['c', 'd']") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UnaryLookup-003'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(['a', 'b'], ['c', 'd'])[ ? 001 eq 'c']",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "UnaryLookup-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"['c', 'd']") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UnaryLookup-004'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(['a', 'b'], ['c', 'd'])[ ? -1 eq 'c']",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "UnaryLookup-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UnaryLookup-005'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(['a', 'b'], ['c', 'd'])[ ?0 eq 'c']",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "UnaryLookup-005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAY0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UnaryLookup-006'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(['a', 'b'], ['c', 'd'], ['e'])[ ?2 eq 'b']",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "UnaryLookup-006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAY0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UnaryLookup-007'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(['a', 'b', 'c'], ['b', 'c', 'd'], ['e', 'f', 'b'])[ ?(1 to 2) = 'b']",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "UnaryLookup-007.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"['a', 'b', 'c'], ['b', 'c', 'd']") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UnaryLookup-008'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "let $i := (1, 3) return (['a', 'b', 'c'], ['b', 'c', 'd'], ['e', 'f', 'b'])[ ?($i) = 'b']",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "UnaryLookup-008.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"['b', 'c', 'd'], ['e', 'f', 'b']") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UnaryLookup-009'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(['a', 'b', 'c'], ['b', 'c', 'd'], ['e', 'f', 'b'])[ ?first = 'b']",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "UnaryLookup-009.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UnaryLookup-010'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "let $d := current-date() return (['a', 'b', 'c'], ['b', 'c', 'd'], ['e', 'f', 'b'])[ ?($d) = 'b']",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "UnaryLookup-010.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UnaryLookup-011'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "let $d := function($x) {$x + ?2} return $d(12)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "UnaryLookup-011.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UnaryLookup-012'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(1 to 10)[?1 = 3]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "UnaryLookup-012.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UnaryLookup-013'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(floor#1, ceiling#1, round#1, abs#1)[?1 = 1]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "UnaryLookup-013.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UnaryLookup-014'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(['a', 'b', 'c'], ['b', 'c', 'd'], ['e', 'f', 'b'])[ ?* = 'c']",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "UnaryLookup-014.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"['a', 'b', 'c'], ['b', 'c', 'd']") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UnaryLookup-015'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "([1, [2], [3]], [[2], 2, [4]])[ ?1 = ?2 ]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "UnaryLookup-015.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[[2], 2, [4]]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UnaryLookup-016'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(['a', 'b', 'c'], ['b', 'c', 'd'], ['e', 'f', 'b'])[contains(?1, ?, 'http://www.w3.org/2005/xpath-functions/collation/codepoint')('a')]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "UnaryLookup-016.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"['a', 'b', 'c']") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UnaryLookup-017'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(['a', 'b', 'c'], ['b', 'c', 'd'], ['e', 'f', 'b'])[contains(?1, ?)('a')]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "UnaryLookup-017.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"['a', 'b', 'c']") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UnaryLookup-018'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(['a', 'b', 'c'], ['b', 'c', 'd'], ['e', 'f', 'b'])[?1.0 = 'a']",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "UnaryLookup-018.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UnaryLookup-019'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(['a', 'b', 'c'], ['b', 'c', 'd'], ['e', 'f', 'b'])[?(1.0) = 'a']",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "UnaryLookup-019.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UnaryLookup-020'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaValidation"}.
'UnaryLookup-021'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
        let $x := (<x>1</x>, <y>2</y>) return
        (['a', 'b', 'c'], ['b', 'c', 'd'], ['e', 'f', 'b'])[?($x) = 'b']
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "UnaryLookup-021.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(['a', 'b', 'c'], ['b', 'c', 'd'])") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UnaryLookup-022'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "[['a', 'b', 'c'], ['b', 'c', 'd'], ['e', 'f', 'b']]?*[?1 = 'a']",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "UnaryLookup-022.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"['a', 'b', 'c']") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UnaryLookup-023'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "[['a', 'b', 'c'], ['b', 'c', 'd'], ['e', 'f', 'b']]!?*!?1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "UnaryLookup-023.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"'a', 'b', 'e'") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UnaryLookup-024'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
        let $x := (<x>1</x>, <y>2</y>) return $x / ?1
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "UnaryLookup-024.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UnaryLookup-025'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(['a', 'b', 'c'], ['b', 'c', 'd'], ['e', 'f', 'b'])[exists(?())]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "UnaryLookup-025.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UnaryLookup-040'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(map{'a':1, 'b':2, 'c':3},  map{'a':2, 'b':3, 'c':4})[?b eq 3]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "UnaryLookup-040.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map{'a':2, 'b':3, 'c':4}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UnaryLookup-041'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(map{1:1, 2:2, 3:3},  map{1:2, 2:3, 3:4})[?2 eq 3]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "UnaryLookup-041.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map{1:2, 2:3, 3:4}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UnaryLookup-042'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(map{1:1, 2:2, 3:3},  map{1:2, 2:3, 3:4})[?(1 to 2) = 3]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "UnaryLookup-042.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map{1:2, 2:3, 3:4}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UnaryLookup-043'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(map{'a-1':1, 'b-1':2, 'c-1':3},  map{'a-1':2, 'b-1':3, 'c-1':4})[?b-1 eq 3]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "UnaryLookup-043.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map{'a-1':2, 'b-1':3, 'c-1':4}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UnaryLookup-044'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(map{'a-1':1, 'b-1':2, 'c-1':3},  map{'a-1':2, 'b-1':3, 'c-1':4})[? (:confusing?:) b-1 eq 3]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "UnaryLookup-044.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map{'a-1':2, 'b-1':3, 'c-1':4}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UnaryLookup-045'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(map{1:1, 2:2, 3:3},  map{1:2, 2:3, 3:4})[?* = 3]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "UnaryLookup-045.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map{1:1, 2:2, 3:3},  map{1:2, 2:3, 3:4}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UnaryLookup-046'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(map{1:1, 2:2, 3:3},  map{1:2, 2:3, 3:4})[exists(?())]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "UnaryLookup-046.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UnaryLookup-047'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(map{1.1:1, 2.2:2, 3.3:3},  map{1.1:2, 2.2:3, 3.3:4})[?2.2 = 3]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "UnaryLookup-047.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UnaryLookup-048'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(map{1.1:1, 2.2:2, 3.3:3},  map{1.1:2, 2.2:3, 3.3:4})[?(2.2) = 3]?(3.3)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "UnaryLookup-048.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"4") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
