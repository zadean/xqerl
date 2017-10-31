-module('fn_json_doc_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['json-doc-001'/1]).
-export(['json-doc-002'/1]).
-export(['json-doc-003'/1]).
-export(['json-doc-004'/1]).
-export(['json-doc-005'/1]).
-export(['json-doc-006'/1]).
-export(['json-doc-007'/1]).
-export(['json-doc-008'/1]).
-export(['json-doc-009'/1]).
-export(['json-doc-010'/1]).
-export(['json-doc-011'/1]).
-export(['json-doc-012'/1]).
-export(['json-doc-018'/1]).
-export(['json-doc-019'/1]).
-export(['json-doc-020'/1]).
-export(['json-doc-021'/1]).
-export(['json-doc-022'/1]).
-export(['json-doc-023'/1]).
-export(['json-doc-024'/1]).
-export(['json-doc-025'/1]).
-export(['json-doc-026'/1]).
-export(['json-doc-027'/1]).
-export(['json-doc-028'/1]).
-export(['json-doc-029'/1]).
-export(['json-doc-030'/1]).
-export(['json-doc-031'/1]).
-export(['json-doc-032'/1]).
-export(['json-doc-033'/1]).
-export(['json-doc-034'/1]).
-export(['json-doc-035'/1]).
-export(['json-doc-036'/1]).
-export(['json-doc-039'/1]).
-export(['json-doc-042'/1]).
-export(['json-doc-043'/1]).
-export(['json-doc-044'/1]).
-export(['json-doc-error-001'/1]).
-export(['json-doc-error-002'/1]).
-export(['json-doc-error-003'/1]).
-export(['json-doc-error-004'/1]).
-export(['json-doc-error-005'/1]).
-export(['json-doc-error-006'/1]).
-export(['json-doc-error-007'/1]).
-export(['json-doc-error-008'/1]).
-export(['json-doc-error-009'/1]).
-export(['json-doc-error-010'/1]).
-export(['json-doc-error-011'/1]).
-export(['json-doc-error-012'/1]).
-export(['json-doc-error-013'/1]).
-export(['json-doc-error-014'/1]).
-export(['json-doc-error-015'/1]).
-export(['json-doc-error-016'/1]).
-export(['json-doc-error-017'/1]).
-export(['json-doc-error-018'/1]).
-export(['json-doc-error-019'/1]).
-export(['json-doc-error-020'/1]).
-export(['json-doc-error-021'/1]).
-export(['json-doc-error-022'/1]).
-export(['json-doc-error-023'/1]).
-export(['json-doc-error-024'/1]).
-export(['json-doc-error-025'/1]).
-export(['json-doc-error-026'/1]).
-export(['json-doc-error-027'/1]).
-export(['json-doc-error-028'/1]).
-export(['json-doc-error-029'/1]).
-export(['json-doc-error-030'/1]).
-export(['json-doc-error-031'/1]).
-export(['json-doc-error-032'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'json-doc-001',
   'json-doc-002',
   'json-doc-003',
   'json-doc-004',
   'json-doc-005',
   'json-doc-006',
   'json-doc-007',
   'json-doc-008',
   'json-doc-009',
   'json-doc-010',
   'json-doc-011',
   'json-doc-012',
   'json-doc-018',
   'json-doc-019',
   'json-doc-020',
   'json-doc-021',
   'json-doc-022',
   'json-doc-023',
   'json-doc-024',
   'json-doc-025',
   'json-doc-026',
   'json-doc-027',
   'json-doc-028',
   'json-doc-029',
   'json-doc-030',
   'json-doc-031',
   'json-doc-032',
   'json-doc-033',
   'json-doc-034',
   'json-doc-035',
   'json-doc-036',
   'json-doc-039',
   'json-doc-042',
   'json-doc-043',
   'json-doc-044',
   'json-doc-error-001',
   'json-doc-error-002',
   'json-doc-error-003',
   'json-doc-error-004',
   'json-doc-error-005',
   'json-doc-error-006',
   'json-doc-error-007',
   'json-doc-error-008',
   'json-doc-error-009',
   'json-doc-error-010',
   'json-doc-error-011',
   'json-doc-error-012',
   'json-doc-error-013',
   'json-doc-error-014',
   'json-doc-error-015',
   'json-doc-error-016',
   'json-doc-error-017',
   'json-doc-error-018',
   'json-doc-error-019',
   'json-doc-error-020',
   'json-doc-error-021',
   'json-doc-error-022',
   'json-doc-error-023',
   'json-doc-error-024',
   'json-doc-error-025',
   'json-doc-error-026',
   'json-doc-error-027',
   'json-doc-error-028',
   'json-doc-error-029',
   'json-doc-error-030',
   'json-doc-error-031',
   'json-doc-error-032'].
environment('empty') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('atomic') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{resources, []},
{modules, []}
];
environment('atomic-xq') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-mod') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/works-mod.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/works.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('staff') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/staff.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-and-staff') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/works.xml","$works",""},
{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/staff.xml","$staff",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('auction') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/auction.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
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
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/QName-source.xml",".",""}]},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/QName-schema.xsd","http://www.example.com/QNameXSD"}]},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.example.com/QNameXSD",""}]},
{resources, []},
{modules, []}
];
environment('math') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/math","math"}]},
{resources, []},
{modules, []}
];
environment('array') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"}]},
{resources, []},
{modules, []}
];
environment('map') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('array-and-map') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"},
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('json-files') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/fn/json-doc.xml"}]},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/json","j"}]},
{resources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/fn/json-to-xml/data001.json","http://www.w3.org/qt3/json/data001-json"},
{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/fn/json-to-xml/escapeText.json","http://www.w3.org/qt3/json/escapeText-json"},
{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/fn/json-to-xml/data005.json","http://www.w3.org/qt3/json/data005-json"}]},
{modules, []}
];
environment('json-doc-array') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/fn/json-doc.xml"}]},
{params, []},
{namespaces, []},
{resources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/fn/json-doc/arrayEmpty.json","http://www.w3.org/qt3/json/arrayEmpty-json"},
{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/fn/json-doc/arrayNumber.json","http://www.w3.org/qt3/json/arrayNumber-json"},
{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/fn/json-doc/arrayString.json","http://www.w3.org/qt3/json/arrayString-json"},
{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/fn/json-doc/arrayTrue.json","http://www.w3.org/qt3/json/arrayTrue-json"},
{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/fn/json-doc/arrayFalse.json","http://www.w3.org/qt3/json/arrayFalse-json"},
{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/fn/json-doc/arrayNull.json","http://www.w3.org/qt3/json/arrayNull-json"}]},
{modules, []}
];
environment('json-doc-map') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/fn/json-doc.xml"}]},
{params, []},
{namespaces, []},
{resources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/fn/json-doc/mapEmpty.json","http://www.w3.org/qt3/json/mapEmpty-json"},
{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/fn/json-doc/mapDuplicates.json","http://www.w3.org/qt3/json/mapDuplicates-json"},
{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/fn/json-doc/mapUnescape.json","http://www.w3.org/qt3/json/mapUnescape-json"},
{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/fn/json-doc/mapUnescape10.json","http://www.w3.org/qt3/json/mapUnescape10-json"},
{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/fn/json-doc/mapUnescapeUnpaired10.json","http://www.w3.org/qt3/json/mapUnescapeUnpaired10-json"},
{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/fn/json-doc/mapZeroLength.json","http://www.w3.org/qt3/json/mapZeroLength-json"},
{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/fn/json-doc/mapDuplicatesEscape.json","http://www.w3.org/qt3/json/mapDuplicatesEscape-json"}]},
{modules, []}
];
environment('json-doc-number') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/fn/json-doc.xml"}]},
{params, []},
{namespaces, []},
{resources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/fn/json-doc/number001.json","http://www.w3.org/qt3/json/number001-json"},
{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/fn/json-doc/number002.json","http://www.w3.org/qt3/json/number002-json"},
{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/fn/json-doc/number003.json","http://www.w3.org/qt3/json/number003-json"},
{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/fn/json-doc/number004.json","http://www.w3.org/qt3/json/number004-json"}]},
{modules, []}
];
environment('json-doc-string') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/fn/json-doc.xml"}]},
{params, []},
{namespaces, []},
{resources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/fn/json-doc/stringUnpaired.json","http://www.w3.org/qt3/json/stringUnpaired-json"},
{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/fn/json-doc/stringHex.json","http://www.w3.org/qt3/json/stringHex-json"}]},
{modules, []}
];
environment('json-doc-error') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/fn/json-doc.xml"}]},
{params, []},
{namespaces, []},
{resources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/fn/json-doc/errorToken.json","http://www.w3.org/qt3/json/errorToken-json"},
{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/fn/json-doc/errorExtra.json","http://www.w3.org/qt3/json/errorExtra-json"},
{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/fn/json-doc/errorArray.json","http://www.w3.org/qt3/json/errorArray-json"},
{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/fn/json-doc/errorArrayNumber.json","http://www.w3.org/qt3/json/errorArrayNumber-json"},
{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/fn/json-doc/errorArrayHex.json","http://www.w3.org/qt3/json/errorArrayHex-json"},
{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/fn/json-doc/errorArrayString.json","http://www.w3.org/qt3/json/errorArrayString-json"},
{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/fn/json-doc/errorArrayUnicode.json","http://www.w3.org/qt3/json/errorArrayUnicode-json"},
{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/fn/json-doc/errorMap.json","http://www.w3.org/qt3/json/errorMap-json"},
{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/fn/json-doc/errorArrayComma.json","http://www.w3.org/qt3/json/errorArrayComma-json"},
{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/fn/json-doc/errorNumber01.json","http://www.w3.org/qt3/json/errorNumber01-json"},
{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/fn/json-doc/errorNumber02.json","http://www.w3.org/qt3/json/errorNumber02-json"},
{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/fn/json-doc/errorNumber03.json","http://www.w3.org/qt3/json/errorNumber03-json"},
{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/fn/json-doc/errorNumber04.json","http://www.w3.org/qt3/json/errorNumber04-json"},
{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/fn/json-doc/errorString01.json","http://www.w3.org/qt3/json/errorString01-json"},
{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/fn/json-doc/errorString02.json","http://www.w3.org/qt3/json/errorString02-json"},
{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/fn/json-doc/errorString03.json","http://www.w3.org/qt3/json/errorString03-json"}]},
{modules, []}
].
'json-doc-001'(_Config) ->
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/mapEmpty-json')",
   Env = xqerl_test:handle_environment(environment('json-doc-map')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map{}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-002'(_Config) ->
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/arrayEmpty-json')",
   Env = xqerl_test:handle_environment(environment('json-doc-array')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-003'(_Config) ->
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/arrayNumber-json')",
   Env = xqerl_test:handle_environment(environment('json-doc-array')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[1]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-004'(_Config) ->
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/arrayString-json')",
   Env = xqerl_test:handle_environment(environment('json-doc-array')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"a\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-005'(_Config) ->
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/arrayTrue-json')",
   Env = xqerl_test:handle_environment(environment('json-doc-array')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[true()]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-006'(_Config) ->
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/arrayFalse-json')",
   Env = xqerl_test:handle_environment(environment('json-doc-array')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[false()]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-007'(_Config) ->
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/arrayNull-json')",
   Env = xqerl_test:handle_environment(environment('json-doc-array')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[()]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-008'(_Config) ->
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/data001-json')",
   Env = xqerl_test:handle_environment(environment('json-files')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"map(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"count($result?*) eq 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result?*?title = \"example glossary\"") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"map:size($result?glossary?GlossDiv?GlossList?GlossEntry) eq 7") of 
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
'json-doc-009'(_Config) ->
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/data005-json')",
   Env = xqerl_test:handle_environment(environment('json-files')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"map(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"count($result?*) eq 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result?menu?header = \"SVG Viewer\"") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"array:size($result?menu?items) eq 22") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"count($result?menu?items?3) eq 0") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result?menu?items?*[?id = \"Find\"]?label = \"Find...\"") of 
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
'json-doc-010'(_Config) ->
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/escapeText-json')?key",
   Env = xqerl_test:handle_environment(environment('json-files')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Data with \" within it") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-011'(_Config) ->
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/escapeText-json', map{'escape':false()})?key",
   Env = xqerl_test:handle_environment(environment('json-files')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Data with \" within it") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-012'(_Config) ->
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/escapeText-json', map{'escape':true()})?key",
   Env = xqerl_test:handle_environment(environment('json-files')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Data with \" within it") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-018'(_Config) ->
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/mapDuplicates-json')
      ",
   Env = xqerl_test:handle_environment(environment('json-doc-map')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map{\"a\":3, \"b\":4}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-019'(_Config) ->
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/mapUnescape-json', map{'escape':true()})
      ",
   Env = xqerl_test:handle_environment(environment('json-doc-map')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map{\"a\\\\\":3, \"b\\\\\":4}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-020'(_Config) ->
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/mapUnescape-json', map{'escape':false()})
      ",
   Env = xqerl_test:handle_environment(environment('json-doc-map')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map{\"a\\\":3, \"b\\\":4}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-021'(_Config) ->
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/mapUnescape10-json', map{'escape':true()})
      ",
   Env = xqerl_test:handle_environment(environment('json-doc-map')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map{\"a\":\"\\f\", \"\\u0007\":\"bell\"}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-022'(_Config) ->
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/mapUnescape10-json', map{'escape':false()})
      ",
   Env = xqerl_test:handle_environment(environment('json-doc-map')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map{\"a\":\"�\", \"�\":\"bell\"}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-023'(_Config) ->
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/mapUnescapeUnpaired10-json', map{'escape':false()})
      ",
   Env = xqerl_test:handle_environment(environment('json-doc-map')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map{\"a\":\"�\", \"�\":\"bell\"}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-024'(_Config) ->
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/mapUnescapeUnpaired10-json', map{'escape':true()})
      ",
   Env = xqerl_test:handle_environment(environment('json-doc-map')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map{\"a\":\"\\uDA00\", \"\\uDD00\":\"bell\"}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-025'(_Config) ->
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/mapUnescape10-json', 
         map{'escape':false(), 'fallback':function($s){'??'}})
      ",
   Env = xqerl_test:handle_environment(environment('json-doc-map')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map{\"a\":\"??\", \"??\":\"bell\"}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-026'(_Config) ->
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/mapUnescapeUnpaired10-json', 
         map{'escape':false(), 'fallback':function($s){'??' || translate($s, 'abcdef', 'ABCDEF')  || '??'}})
      ",
   Env = xqerl_test:handle_environment(environment('json-doc-map')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map{\"a\":\"??\\uDA00??\", \"??\\uDD00??\":\"bell\"}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-027'(_Config) ->
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/mapUnescapeUnpaired10-json', 
         map{'escape':true(), 'fallback':function($s){'??' || translate($s, 'abcdef', 'ABCDEF')  || '??'}})
      ",
   Env = xqerl_test:handle_environment(environment('json-doc-map')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-028'(_Config) ->
   Qry = "
         fn:json-doc((), 
         map{'escape':false(), 'fallback':function($s){'??' || translate($s, 'abcdef', 'ABCDEF')  || '??'}})
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-029'(_Config) ->
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/arrayNumber-json', map{})
      ",
   Env = xqerl_test:handle_environment(environment('json-doc-array')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[1]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-030'(_Config) ->
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/number001-json')
      ",
   Env = xqerl_test:handle_environment(environment('json-doc-number')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_deep_eq(Res,"23E0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result instance of xs:double") of 
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
'json-doc-031'(_Config) ->
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/number002-json')
      ",
   Env = xqerl_test:handle_environment(environment('json-doc-number')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_deep_eq(Res,"0.23e+02") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result instance of xs:double") of 
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
'json-doc-032'(_Config) ->
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/number003-json')
      ",
   Env = xqerl_test:handle_environment(environment('json-doc-number')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_deep_eq(Res,"0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result instance of xs:double") of 
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
'json-doc-033'(_Config) ->
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/number004-json')
      ",
   Env = xqerl_test:handle_environment(environment('json-doc-number')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_deep_eq(Res,"-0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result instance of xs:double") of 
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
'json-doc-034'(_Config) ->
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/mapZeroLength-json')
      ",
   Env = xqerl_test:handle_environment(environment('json-doc-map')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map{\"\":\"\", \"0\":\"0\"}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-035'(_Config) ->
   Qry = "fn:json-doc(())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-036'(_Config) ->
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/mapDuplicates-json', map{'duplicates':'use-first'})
      ",
   Env = xqerl_test:handle_environment(environment('json-doc-map')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map{\"a\":3, \"b\":4}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-039'(_Config) ->
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/stringUnpaired-json', map{'fallback':function($s){substring($s, 3)}})
      ",
   Env = xqerl_test:handle_environment(environment('json-doc-string')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "oh dear DEAD") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-042'(_Config) ->
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/mapDuplicatesEscape-json', map{'escape':true(), 'duplicates':'reject'})
      ",
   Env = xqerl_test:handle_environment(environment('json-doc-map')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-043'(_Config) ->
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/stringHex-json')
      ",
   Env = xqerl_test:handle_environment(environment('json-doc-string')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "\\") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-044'(_Config) ->
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/arrayNumber-json', map{'validate':true()})",
   Env = xqerl_test:handle_environment(environment('json-doc-array')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[1]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-error-001'(_Config) ->
   Qry = "fn:json-doc('')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOUT1170") of 
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
'json-doc-error-002'(_Config) ->
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/errorToken-json')",
   Env = xqerl_test:handle_environment(environment('json-doc-error')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-error-003'(_Config) ->
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/errorExtra-json')",
   Env = xqerl_test:handle_environment(environment('json-doc-error')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-error-004'(_Config) ->
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/errorArray-json')",
   Env = xqerl_test:handle_environment(environment('json-doc-error')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-error-005'(_Config) ->
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/errorArrayNumber-json')",
   Env = xqerl_test:handle_environment(environment('json-doc-error')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-error-006'(_Config) ->
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/errorArrayHex-json')",
   Env = xqerl_test:handle_environment(environment('json-doc-error')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-error-007'(_Config) ->
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/errorArrayString-json')",
   Env = xqerl_test:handle_environment(environment('json-doc-error')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-error-008'(_Config) ->
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/errorArrayUnicode-json')",
   Env = xqerl_test:handle_environment(environment('json-doc-error')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-error-009'(_Config) ->
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/errorMap-json')",
   Env = xqerl_test:handle_environment(environment('json-doc-error')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-error-010'(_Config) ->
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/errorMap-json', map{\"liberal\":false()})",
   Env = xqerl_test:handle_environment(environment('json-doc-error')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-error-011'(_Config) ->
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/errorArrayComma-json')",
   Env = xqerl_test:handle_environment(environment('json-doc-error')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-error-012'(_Config) ->
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/arrayNumber-json', map{'liberal':()})",
   Env = xqerl_test:handle_environment(environment('json-doc-array')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-error-013'(_Config) ->
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/arrayNumber-json', map{'escape':()})",
   Env = xqerl_test:handle_environment(environment('json-doc-array')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-error-014'(_Config) ->
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/arrayNumber-json', map{'escape':(true(),true())})",
   Env = xqerl_test:handle_environment(environment('json-doc-array')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-error-015'(_Config) ->
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/arrayNumber-json', map{'escape':'EMCA-262'})",
   Env = xqerl_test:handle_environment(environment('json-doc-array')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-error-016'(_Config) ->
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/arrayNumber-json', map{'fallback':'dummy'})",
   Env = xqerl_test:handle_environment(environment('json-doc-array')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-error-017'(_Config) ->
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/errorNumber01-json')",
   Env = xqerl_test:handle_environment(environment('json-doc-error')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-error-018'(_Config) ->
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/errorNumber02-json')",
   Env = xqerl_test:handle_environment(environment('json-doc-error')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-error-019'(_Config) ->
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/errorNumber03-json')",
   Env = xqerl_test:handle_environment(environment('json-doc-error')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-error-020'(_Config) ->
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/errorNumber04-json')",
   Env = xqerl_test:handle_environment(environment('json-doc-error')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-error-021'(_Config) ->
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/mapDuplicates-json', map{'duplicates':'reject'})
      ",
   Env = xqerl_test:handle_environment(environment('json-doc-map')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-error-022'(_Config) ->
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/mapDuplicates-json', map{'duplicates':'retain'})
      ",
   Env = xqerl_test:handle_environment(environment('json-doc-map')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-error-023'(_Config) ->
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/errorString01-json')
      ",
   Env = xqerl_test:handle_environment(environment('json-doc-error')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-error-024'(_Config) ->
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/errorString02-json')
      ",
   Env = xqerl_test:handle_environment(environment('json-doc-error')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-error-025'(_Config) ->
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/errorString03-json')
      ",
   Env = xqerl_test:handle_environment(environment('json-doc-error')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-error-026'(_Config) ->
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/arrayNumber-json', map{'fallback':concat#2})
      ",
   Env = xqerl_test:handle_environment(environment('json-doc-array')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-error-027'(_Config) ->
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/mapDuplicatesEscape-json', map{'duplicates':'reject'})
      ",
   Env = xqerl_test:handle_environment(environment('json-doc-map')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-error-028'(_Config) ->
   Qry = "fn:json-doc(\"http://www.example.org/#fragment\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOUT1170") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-error-029'(_Config) ->
   Qry = "fn:json-doc(\"http://www.example.org/%gg\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOUT1170") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-error-030'(_Config) ->
   Qry = "fn:json-doc(\"http://www.w3.org/fots/unparsed-text/does-not-exist.txt\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOUT1170") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-error-031'(_Config) ->
   Qry = "fn:json-doc(\"unparsed-text/text-plain-utf-8.txt\")",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"#UNDEFINED"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOUT1170") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-error-032'(_Config) ->
   Qry = "fn:json-doc(\"does-not-exist.txt\")",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"http://www.w3.org/fots/unparsed-text/"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOUT1170") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
