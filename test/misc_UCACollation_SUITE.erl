-module('misc_UCACollation_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['UCA-collation-001'/1]).
-export(['UCA-collation-002'/1]).
-export(['UCA-collation-003'/1]).
-export(['UCA-collation-004'/1]).
-export(['UCA-collation-005'/1]).
-export(['UCA-collation-006'/1]).
-export(['UCA-collation-007'/1]).
-export(['UCA-collation-008'/1]).
-export(['UCA-collation-010'/1]).
-export(['UCA-collation-011'/1]).
-export(['UCA-collation-012'/1]).
-export(['UCA-collation-013'/1]).
-export(['UCA-collation-014'/1]).
-export(['UCA-collation-015'/1]).
-export(['UCA-collation-016'/1]).
-export(['UCA-collation-017'/1]).
-export(['UCA-collation-018'/1]).
-export(['UCA-collation-019'/1]).
-export(['UCA-collation-020'/1]).
-export(['UCA-collation-021'/1]).
-export(['UCA-collation-022'/1]).
-export(['UCA-collation-022a'/1]).
-export(['UCA-collation-023'/1]).
-export(['UCA-collation-024'/1]).
-export(['UCA-reorder-codes-001'/1]).
-export(['UCA-reorder-codes-002'/1]).
-export(['UCA-reorder-codes-003'/1]).
-export(['UCA-reorder-codes-004'/1]).
-export(['UCA-reorder-codes-005'/1]).
-export(['UCA-reorder-codes-006'/1]).
-export(['UCA-reorder-codes-007'/1]).
-export(['UCA-reorder-codes-008'/1]).
-export(['UCA-reorder-codes-009'/1]).
-export(['UCA-reorder-codes-010'/1]).
-export(['UCA-reorder-codes-011'/1]).
-export(['UCA-params-001'/1]).
-export(['UCA-params-002'/1]).
-export(['UCA-params-003'/1]).
-export(['UCA-params-004'/1]).
-export(['UCA-params-005'/1]).
-export(['UCA-params-006'/1]).
-export(['UCA-params-007'/1]).
-export(['UCA-params-008'/1]).
-export(['UCA-params-009'/1]).
-export(['UCA-params-010'/1]).
-export(['UCA-params-011'/1]).
-export(['UCA-params-012'/1]).
-export(['UCA-params-013'/1]).
-export(['UCA-params-014'/1]).
-export(['UCA-params-015'/1]).
-export(['UCA-params-016'/1]).
-export(['UCA-params-017'/1]).
-export(['UCA-params-018'/1]).
-export(['UCA-params-019'/1]).
-export(['UCA-params-020'/1]).
-export(['UCA-params-021'/1]).
-export(['UCA-params-022'/1]).
-export(['UCA-params-023'/1]).
-export(['UCA-params-024'/1]).
-export(['UCA-params-025'/1]).
-export(['UCA-params-026'/1]).
-export(['UCA-params-027'/1]).
-export(['UCA-params-028'/1]).
-export(['UCA-params-029'/1]).
-export(['UCA-params-030'/1]).
-export(['UCA-params-031'/1]).
-export(['UCA-params-032'/1]).
-export(['UCA-params-033'/1]).
-export(['UCA-maxVariable-001'/1]).
-export(['UCA-maxVariable-002'/1]).
-export(['UCA-maxVariable-003'/1]).
-export(['UCA-maxVariable-004'/1]).
-export(['UCA-maxVariable-005'/1]).
-export(['UCA-maxVariable-006'/1]).
-export(['UCA-maxVariable-007'/1]).
-export(['UCA-maxVariable-008'/1]).
-export(['UCA-maxVariable-009'/1]).
-export(['UCA-maxVariable-010'/1]).
-export(['UCA-maxVariable-011'/1]).
-export(['UCA-maxVariable-012'/1]).
-export(['UCA-maxVariable-013'/1]).
-export(['UCA-maxVariable-014'/1]).
-export(['UCA-maxVariable-015'/1]).
-export(['UCA-maxVariable-016'/1]).
-export(['UCA-misc-lang-001'/1]).
-export(['UCA-misc-lang-002'/1]).
-export(['UCA-misc-lang-003'/1]).
-export(['UCA-misc-lang-004'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'UCA-collation-001',
   'UCA-collation-002',
   'UCA-collation-003',
   'UCA-collation-004',
   'UCA-collation-005',
   'UCA-collation-006',
   'UCA-collation-007',
   'UCA-collation-008',
   'UCA-collation-010',
   'UCA-collation-011',
   'UCA-collation-012',
   'UCA-collation-013',
   'UCA-collation-014',
   'UCA-collation-015',
   'UCA-collation-016',
   'UCA-collation-017',
   'UCA-collation-018',
   'UCA-collation-019',
   'UCA-collation-020',
   'UCA-collation-021',
   'UCA-collation-022',
   'UCA-collation-022a',
   'UCA-collation-023',
   'UCA-collation-024',
   'UCA-reorder-codes-001',
   'UCA-reorder-codes-002',
   'UCA-reorder-codes-003',
   'UCA-reorder-codes-004',
   'UCA-reorder-codes-005',
   'UCA-reorder-codes-006',
   'UCA-reorder-codes-007',
   'UCA-reorder-codes-008',
   'UCA-reorder-codes-009',
   'UCA-reorder-codes-010',
   'UCA-reorder-codes-011',
   'UCA-params-001',
   'UCA-params-002',
   'UCA-params-003',
   'UCA-params-004',
   'UCA-params-005',
   'UCA-params-006',
   'UCA-params-007',
   'UCA-params-008',
   'UCA-params-009',
   'UCA-params-010',
   'UCA-params-011',
   'UCA-params-012',
   'UCA-params-013',
   'UCA-params-014',
   'UCA-params-015',
   'UCA-params-016',
   'UCA-params-017',
   'UCA-params-018',
   'UCA-params-019',
   'UCA-params-020',
   'UCA-params-021',
   'UCA-params-022',
   'UCA-params-023',
   'UCA-params-024',
   'UCA-params-025',
   'UCA-params-026',
   'UCA-params-027',
   'UCA-params-028',
   'UCA-params-029',
   'UCA-params-030',
   'UCA-params-031',
   'UCA-params-032',
   'UCA-params-033',
   'UCA-maxVariable-001',
   'UCA-maxVariable-002',
   'UCA-maxVariable-003',
   'UCA-maxVariable-004',
   'UCA-maxVariable-005',
   'UCA-maxVariable-006',
   'UCA-maxVariable-007',
   'UCA-maxVariable-008',
   'UCA-maxVariable-009',
   'UCA-maxVariable-010',
   'UCA-maxVariable-011',
   'UCA-maxVariable-012',
   'UCA-maxVariable-013',
   'UCA-maxVariable-014',
   'UCA-maxVariable-015',
   'UCA-maxVariable-016',
   'UCA-misc-lang-001',
   'UCA-misc-lang-002',
   'UCA-misc-lang-003',
   'UCA-misc-lang-004'].
environment('empty') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('atomic') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{resources, []},
{modules, []}
];
environment('atomic-xq') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-mod') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xquery-3.1/QT3-test-suite/docs/works-mod.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xquery-3.1/QT3-test-suite/docs/works.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('staff') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xquery-3.1/QT3-test-suite/docs/staff.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-and-staff') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xquery-3.1/QT3-test-suite/docs/works.xml","$works",""},
{"C:/git/zadean/xquery-3.1/QT3-test-suite/docs/staff.xml","$staff",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('auction') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xquery-3.1/QT3-test-suite/docs/auction.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
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
environment('qname') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xquery-3.1/QT3-test-suite/docs/QName-source.xml",".",""}]},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/QName-schema.xsd","http://www.example.com/QNameXSD"}]},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.example.com/QNameXSD",""}]},
{resources, []},
{modules, []}
];
environment('math') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/math","math"}]},
{resources, []},
{modules, []}
];
environment('array') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"}]},
{resources, []},
{modules, []}
];
environment('map') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('array-and-map') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"},
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('UCA-collation') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/misc/UCACollation.xml"}]},
{params, []},
{vars, [{"collation","","'http://www.w3.org/2013/collation/UCA?'"}]},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('UCA-collation.en') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/misc/UCACollation.xml"}]},
{params, []},
{vars, [{"collation","","'http://www.w3.org/2013/collation/UCA?lang=en;'"}]},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('UCA-collation.en.primary') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/misc/UCACollation.xml"}]},
{params, []},
{vars, [{"collation","","'http://www.w3.org/2013/collation/UCA?lang=en;strength=primary;'"}]},
{namespaces, []},
{resources, []},
{modules, []}
].
'UCA-collation-001'(_Config) ->
   Qry = "compare('abc','aBC',concat($collation,'fallback=unknown'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UCA-collation-002'(_Config) ->
   Qry = "compare('abc','aBC',concat($collation,'fallback=no;keyword=unknown'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UCA-collation-003'(_Config) ->
   Qry = "compare('abc','aBC',concat($collation,'fallback=no;strength=unknown'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UCA-collation-004'(_Config) ->
   Qry = "compare('abc','aBC',concat($collation,'fallback=no;alternate=unknown'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UCA-collation-005'(_Config) ->
   Qry = "compare('abc','aBC',concat($collation,'fallback=no;backwards=unknown'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UCA-collation-006'(_Config) ->
   Qry = "compare('abc','aBC',concat($collation,'fallback=no;normalization=unknown'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UCA-collation-007'(_Config) ->
   Qry = "compare('abc','aBC',concat($collation,'fallback=no;caseLevel=unknown'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UCA-collation-008'(_Config) ->
   Qry = "compare('abc','aBC',concat($collation,'fallback=no;caseFirst=unknown'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UCA-collation-010'(_Config) ->
   Qry = "compare('abc','aBC',concat($collation,'fallback=no;numeric=unknown'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UCA-collation-011'(_Config) ->
   Qry = "compare('abc','def',concat($collation,'keyword=unknown'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UCA-collation-012'(_Config) ->
   Qry = "compare('abc','def',concat($collation,'strength=unknown'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UCA-collation-013'(_Config) ->
   Qry = "compare('abc','def',concat($collation,'alternate=unknown'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UCA-collation-014'(_Config) ->
   Qry = "compare('abc','def',concat($collation,'backwards=unknown'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UCA-collation-015'(_Config) ->
   Qry = "compare('abc','def',concat($collation,'normalization=unknown'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UCA-collation-016'(_Config) ->
   Qry = "compare('abc','def',concat($collation,'caseLevel=unknown'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UCA-collation-017'(_Config) ->
   Qry = "compare('abc','def',concat($collation,'caseFirst=unknown'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UCA-collation-018'(_Config) ->
   Qry = "compare('abc','def',concat($collation,'hiraganaQuaternary=unknown'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UCA-collation-019'(_Config) ->
   Qry = "compare('abc','def',concat($collation,'numeric=unknown'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UCA-collation-020'(_Config) ->
   Qry = "compare('abc','def',concat($collation,'version=5.0'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UCA-collation-021'(_Config) ->
   Qry = "compare('abc','def',concat($collation,'version=6.0'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UCA-collation-022'(_Config) ->
   Qry = "compare('abc','xyz',concat($collation,'version=7.0'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UCA-collation-022a'(_Config) ->
   Qry = "compare('abc','xyz',concat($collation,'version=1.255'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UCA-collation-023'(_Config) ->
   Qry = "compare('abc','xyz',concat($collation,'version=unknown'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UCA-collation-024'(_Config) ->
   Qry = "compare('abc','aBC',concat($collation,'version=96.5;fallback=no'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UCA-reorder-codes-001'(_Config) ->
   Qry = "compare('.123','123',concat($collation,'fallback=no;reorder=Z,digit'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en.primary')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UCA-reorder-codes-002'(_Config) ->
   Qry = "compare('ab123','ab456',concat($collation,'reorder=Z,digit'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en.primary')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UCA-reorder-codes-003'(_Config) ->
   Qry = "compare('ab123','ab456',concat($collation,'fallback=yes;reorder=Z,digit'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en.primary')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UCA-reorder-codes-004'(_Config) ->
   Qry = "compare('.123','123',concat($collation,'reorder=punct,digit;fallback=no'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en.primary')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'UCA-reorder-codes-005'(_Config) ->
   Qry = "compare('.123','123',concat($collation,'reorder=digit,punct;fallback=no'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en.primary')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'UCA-reorder-codes-006'(_Config) ->
   Qry = "compare(' 123','123',concat($collation,'reorder=space,digit;fallback=no'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en.primary')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'UCA-reorder-codes-007'(_Config) ->
   Qry = "compare(' 123','123',concat($collation,'reorder=digit,space;fallback=no'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en.primary')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'UCA-reorder-codes-008'(_Config) ->
   Qry = "compare('£123','123',concat($collation,'reorder=currency,digit;fallback=no'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en.primary')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'UCA-reorder-codes-009'(_Config) ->
   Qry = "compare('£123','123',concat($collation,'reorder=digit,currency;fallback=no'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en.primary')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'UCA-reorder-codes-010'(_Config) ->
   Qry = "compare('a123','123',concat($collation,'reorder=Latn,digit;fallback=no'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en.primary')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'UCA-reorder-codes-011'(_Config) ->
   Qry = "compare('a123','123',concat($collation,'reorder=digit,Latn;fallback=no'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en.primary')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'UCA-params-001'(_Config) ->
   Qry = "compare('abc','aBC',concat($collation,'strength=primary;fallback=no'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'UCA-params-002'(_Config) ->
   Qry = "compare('abc','aBC',concat($collation,'strength=secondary;fallback=no'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'UCA-params-003'(_Config) ->
   Qry = "compare('abc','aBC',concat($collation,'strength=tertiary;fallback=no'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'UCA-params-004'(_Config) ->
   Qry = "compare('abc','aBC',concat($collation,'strength=quaternary;fallback=no'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'UCA-params-005'(_Config) ->
   Qry = "compare('abc','aBC',concat($collation,'strength=identical;fallback=no'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'UCA-params-006'(_Config) ->
   Qry = "compare('abc','aBC',concat($collation,'strength=1;fallback=no'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'UCA-params-007'(_Config) ->
   Qry = "compare('abc','aBC',concat($collation,'strength=2;fallback=no'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'UCA-params-008'(_Config) ->
   Qry = "compare('abc','aBC',concat($collation,'strength=3;fallback=no'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'UCA-params-009'(_Config) ->
   Qry = "compare('abc','aBC',concat($collation,'strength=4;fallback=no'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'UCA-params-010'(_Config) ->
   Qry = "compare('abc','aBC',concat($collation,'strength=5;fallback=no'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'UCA-params-011'(_Config) ->
   Qry = "compare('a-bc','abc',concat($collation,'strength=1;alternate=shifted;fallback=no'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'UCA-params-012'(_Config) ->
   Qry = "compare('a-bc','abc',concat($collation,'strength=2;alternate=shifted;fallback=no'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'UCA-params-013'(_Config) ->
   Qry = "compare('a-bc','abc',concat($collation,'strength=3;alternate=shifted;fallback=no'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'UCA-params-014'(_Config) ->
   Qry = "compare('a-bc','abc',concat($collation,'strength=4;alternate=shifted;fallback=no'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'UCA-params-015'(_Config) ->
   Qry = "compare('a-bc','abc',concat($collation,'strength=5;alternate=shifted;fallback=no'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'UCA-params-016'(_Config) ->
   Qry = "compare('pêche','péché',concat($collation,'strength=primary;fallback=no'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'UCA-params-017'(_Config) ->
   Qry = "compare('pêche','péché',concat($collation,'strength=secondary;fallback=no'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'UCA-params-018'(_Config) ->
   Qry = "compare('pêche','péché',concat($collation,'strength=secondary;backwards=yes;fallback=no'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'UCA-params-019'(_Config) ->
   Qry = "compare('pêche','péché',concat($collation,'strength=secondary;backwards=no;fallback=no'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'UCA-params-020'(_Config) ->
   Qry = "compare('pêche','péché',concat($collation,'strength=secondary;normalization=no;fallback=no'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'UCA-params-021'(_Config) ->
   Qry = "compare('pêche','péché',concat($collation,'strength=secondary;normalization=yes;fallback=no'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'UCA-params-022'(_Config) ->
   Qry = "compare('Epee','épee',concat($collation,'strength=primary;caseLevel=yes;fallback=no'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'UCA-params-023'(_Config) ->
   Qry = "compare('Epee','épee',concat($collation,'strength=primary;caseLevel=no;fallback=no'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'UCA-params-024'(_Config) ->
   Qry = "compare('Epee','Épee',concat($collation,'strength=primary;caseLevel=yes;fallback=no'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'UCA-params-025'(_Config) ->
   Qry = "compare('Epee','Épee',concat($collation,'strength=primary;caseLevel=no;fallback=no'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'UCA-params-026'(_Config) ->
   Qry = "compare('Epee','épee',concat($collation,'strength=secondary;caseLevel=yes;fallback=no'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'UCA-params-027'(_Config) ->
   Qry = "compare('Epee','épee',concat($collation,'strength=secondary;caseLevel=no;fallback=no'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'UCA-params-028'(_Config) ->
   Qry = "compare('Epee','Épee',concat($collation,'strength=secondary;caseLevel=yes;fallback=no'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'UCA-params-029'(_Config) ->
   Qry = "compare('Epee','Épee',concat($collation,'strength=secondary;caseLevel=no;fallback=no'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'UCA-params-030'(_Config) ->
   Qry = "compare('ab','Ab',concat($collation,'caseFirst=upper;fallback=no'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'UCA-params-031'(_Config) ->
   Qry = "compare('ab','Ab',concat($collation,'caseFirst=lower;fallback=no'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'UCA-params-032'(_Config) ->
   Qry = "compare('ab1a','ab12a',concat($collation,'numeric=yes;fallback=no'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'UCA-params-033'(_Config) ->
   Qry = "compare('ab1a','ab12a',concat($collation,'numeric=no;fallback=no'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'UCA-maxVariable-001'(_Config) ->
   Qry = "compare('database','data type',concat($collation,'maxVariable=space;alternate=shifted;fallback=no'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'UCA-maxVariable-002'(_Config) ->
   Qry = "compare('database','data type',concat($collation,'maxVariable=space;alternate=non-ignorable;fallback=no'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'UCA-maxVariable-003'(_Config) ->
   Qry = "compare('database','data base',concat($collation,'maxVariable=space;alternate=shifted;fallback=no'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'UCA-maxVariable-004'(_Config) ->
   Qry = "compare('database','data base',concat($collation,'maxVariable=space;alternate=shifted;strength=4;fallback=no'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'UCA-maxVariable-005'(_Config) ->
   Qry = "compare('database','data-type',concat($collation,'maxVariable=space;alternate=shifted;fallback=no'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'UCA-maxVariable-006'(_Config) ->
   Qry = "compare('database','data-type',concat($collation,'maxVariable=punct;alternate=shifted;fallback=no'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'UCA-maxVariable-007'(_Config) ->
   Qry = "compare('database','data-base',concat($collation,'maxVariable=punct;alternate=shifted;fallback=no'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'UCA-maxVariable-008'(_Config) ->
   Qry = "compare('data base','data-base',concat($collation,'maxVariable=punct;alternate=shifted;fallback=no'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'UCA-maxVariable-009'(_Config) ->
   Qry = "compare('data base','data-base',concat($collation,'maxVariable=punct;alternate=shifted;strength=4;fallback=no'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'UCA-maxVariable-010'(_Config) ->
   Qry = "compare('data=base','database',concat($collation,'maxVariable=punct;alternate=shifted;fallback=no'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'UCA-maxVariable-011'(_Config) ->
   Qry = "compare('data=base','database',concat($collation,'maxVariable=symbol;alternate=shifted;fallback=no'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'UCA-maxVariable-012'(_Config) ->
   Qry = "compare('data=base','data base',concat($collation,'maxVariable=symbol;alternate=shifted;fallback=no'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'UCA-maxVariable-013'(_Config) ->
   Qry = "compare('data=base','data$base',concat($collation,'maxVariable=symbol;alternate=shifted;fallback=no'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'UCA-maxVariable-014'(_Config) ->
   Qry = "compare('data=base','data$base',concat($collation,'maxVariable=currency;alternate=shifted;fallback=no'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'UCA-maxVariable-015'(_Config) ->
   Qry = "compare('$10000','€10000',concat($collation,'maxVariable=currency;alternate=shifted;fallback=no'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'UCA-maxVariable-016'(_Config) ->
   Qry = "compare('$10000','€9000',concat($collation,'maxVariable=currency;numeric=yes;alternate=shifted;fallback=no'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation.en')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'UCA-misc-lang-001'(_Config) ->
   Qry = "compare('pêche','péché',concat($collation,'strength=primary;lang=fr;fallback=no'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'UCA-misc-lang-002'(_Config) ->
   Qry = "compare('pêche','péché',concat($collation,'strength=secondary;lang=fr;fallback=no'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'UCA-misc-lang-003'(_Config) ->
   Qry = "compare('pêche','péché',concat($collation,'strength=secondary;lang=fr-CA;fallback=no'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'UCA-misc-lang-004'(_Config) ->
   Qry = "compare('pêche','péché',concat($collation,'strength=primary;lang=en-US;fallback=no'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('UCA-collation')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
