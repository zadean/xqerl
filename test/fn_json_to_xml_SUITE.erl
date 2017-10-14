-module('fn_json_to_xml_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['json-to-xml-001'/1]).
-export(['json-to-xml-002'/1]).
-export(['json-to-xml-003'/1]).
-export(['json-to-xml-004'/1]).
-export(['json-to-xml-005'/1]).
-export(['json-to-xml-006'/1]).
-export(['json-to-xml-007'/1]).
-export(['json-to-xml-008'/1]).
-export(['json-to-xml-009'/1]).
-export(['json-to-xml-010'/1]).
-export(['json-to-xml-011'/1]).
-export(['json-to-xml-012'/1]).
-export(['json-to-xml-013'/1]).
-export(['json-to-xml-014'/1]).
-export(['json-to-xml-015'/1]).
-export(['json-to-xml-016'/1]).
-export(['json-to-xml-017'/1]).
-export(['json-to-xml-017b'/1]).
-export(['json-to-xml-018'/1]).
-export(['json-to-xml-019'/1]).
-export(['json-to-xml-020'/1]).
-export(['json-to-xml-021'/1]).
-export(['json-to-xml-022'/1]).
-export(['json-to-xml-023'/1]).
-export(['json-to-xml-024'/1]).
-export(['json-to-xml-025'/1]).
-export(['json-to-xml-026'/1]).
-export(['json-to-xml-027'/1]).
-export(['json-to-xml-028'/1]).
-export(['json-to-xml-029'/1]).
-export(['json-to-xml-030'/1]).
-export(['json-to-xml-031'/1]).
-export(['json-to-xml-032'/1]).
-export(['json-to-xml-033'/1]).
-export(['json-to-xml-034'/1]).
-export(['json-to-xml-035'/1]).
-export(['json-to-xml-036'/1]).
-export(['json-to-xml-037'/1]).
-export(['json-to-xml-037b'/1]).
-export(['json-to-xml-038'/1]).
-export(['json-to-xml-038b'/1]).
-export(['json-to-xml-039'/1]).
-export(['json-to-xml-040'/1]).
-export(['json-to-xml-041'/1]).
-export(['json-to-xml-042'/1]).
-export(['json-to-xml-043'/1]).
-export(['json-to-xml-044'/1]).
-export(['json-to-xml-045'/1]).
-export(['json-to-xml-046'/1]).
-export(['json-to-xml-047'/1]).
-export(['json-to-xml-048'/1]).
-export(['json-to-xml-049'/1]).
-export(['json-to-xml-error-001'/1]).
-export(['json-to-xml-error-002'/1]).
-export(['json-to-xml-error-003'/1]).
-export(['json-to-xml-error-004'/1]).
-export(['json-to-xml-error-005'/1]).
-export(['json-to-xml-error-006'/1]).
-export(['json-to-xml-error-007'/1]).
-export(['json-to-xml-error-008'/1]).
-export(['json-to-xml-error-009'/1]).
-export(['json-to-xml-error-010'/1]).
-export(['json-to-xml-error-011'/1]).
-export(['json-to-xml-error-012'/1]).
-export(['json-to-xml-error-013'/1]).
-export(['json-to-xml-error-014'/1]).
-export(['json-to-xml-error-015'/1]).
-export(['json-to-xml-error-016'/1]).
-export(['json-to-xml-error-017'/1]).
-export(['json-to-xml-error-018'/1]).
-export(['json-to-xml-error-019'/1]).
-export(['json-to-xml-error-020'/1]).
-export(['json-to-xml-error-021'/1]).
-export(['json-to-xml-error-022'/1]).
-export(['json-to-xml-error-023'/1]).
-export(['json-to-xml-error-024'/1]).
-export(['json-to-xml-error-025'/1]).
-export(['json-to-xml-error-026'/1]).
-export(['json-to-xml-error-027'/1]).
-export(['json-to-xml-error-028'/1]).
-export(['json-to-xml-error-029'/1]).
-export(['json-to-xml-error-030'/1]).
-export(['json-to-xml-error-031'/1]).
-export(['json-to-xml-error-032'/1]).
-export(['json-to-xml-error-033'/1]).
-export(['json-to-xml-error-034'/1]).
-export(['json-to-xml-error-035'/1]).
-export(['json-to-xml-error-037'/1]).
-export(['json-to-xml-error-038'/1]).
-export(['json-to-xml-error-039'/1]).
-export(['json-to-xml-error-040'/1]).
-export(['json-to-xml-error-041'/1]).
-export(['json-to-xml-error-042'/1]).
-export(['json-to-xml-error-043'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'json-to-xml-001',
   'json-to-xml-002',
   'json-to-xml-003',
   'json-to-xml-004',
   'json-to-xml-005',
   'json-to-xml-006',
   'json-to-xml-007',
   'json-to-xml-008',
   'json-to-xml-009',
   'json-to-xml-010',
   'json-to-xml-011',
   'json-to-xml-012',
   'json-to-xml-013',
   'json-to-xml-014',
   'json-to-xml-015',
   'json-to-xml-016',
   'json-to-xml-017',
   'json-to-xml-017b',
   'json-to-xml-018',
   'json-to-xml-019',
   'json-to-xml-020',
   'json-to-xml-021',
   'json-to-xml-022',
   'json-to-xml-023',
   'json-to-xml-024',
   'json-to-xml-025',
   'json-to-xml-026',
   'json-to-xml-027',
   'json-to-xml-028',
   'json-to-xml-029',
   'json-to-xml-030',
   'json-to-xml-031',
   'json-to-xml-032',
   'json-to-xml-033',
   'json-to-xml-034',
   'json-to-xml-035',
   'json-to-xml-036',
   'json-to-xml-037',
   'json-to-xml-037b',
   'json-to-xml-038',
   'json-to-xml-038b',
   'json-to-xml-039',
   'json-to-xml-040',
   'json-to-xml-041',
   'json-to-xml-042',
   'json-to-xml-043',
   'json-to-xml-044',
   'json-to-xml-045',
   'json-to-xml-046',
   'json-to-xml-047',
   'json-to-xml-048',
   'json-to-xml-049',
   'json-to-xml-error-001',
   'json-to-xml-error-002',
   'json-to-xml-error-003',
   'json-to-xml-error-004',
   'json-to-xml-error-005',
   'json-to-xml-error-006',
   'json-to-xml-error-007',
   'json-to-xml-error-008',
   'json-to-xml-error-009',
   'json-to-xml-error-010',
   'json-to-xml-error-011',
   'json-to-xml-error-012',
   'json-to-xml-error-013',
   'json-to-xml-error-014',
   'json-to-xml-error-015',
   'json-to-xml-error-016',
   'json-to-xml-error-017',
   'json-to-xml-error-018',
   'json-to-xml-error-019',
   'json-to-xml-error-020',
   'json-to-xml-error-021',
   'json-to-xml-error-022',
   'json-to-xml-error-023',
   'json-to-xml-error-024',
   'json-to-xml-error-025',
   'json-to-xml-error-026',
   'json-to-xml-error-027',
   'json-to-xml-error-028',
   'json-to-xml-error-029',
   'json-to-xml-error-030',
   'json-to-xml-error-031',
   'json-to-xml-error-032',
   'json-to-xml-error-033',
   'json-to-xml-error-034',
   'json-to-xml-error-035',
   'json-to-xml-error-037',
   'json-to-xml-error-038',
   'json-to-xml-error-039',
   'json-to-xml-error-040',
   'json-to-xml-error-041',
   'json-to-xml-error-042',
   'json-to-xml-error-043'].
environment('empty') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('atomic') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{resources, []},
{modules, []}
];
environment('atomic-xq') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-mod') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/works-mod.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/works.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('staff') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/staff.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
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
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('auction') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/auction.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
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
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.example.com/QNameXSD",""}]},
{resources, []},
{modules, []}
];
environment('math') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/math","math"}]},
{resources, []},
{modules, []}
];
environment('array') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"}]},
{resources, []},
{modules, []}
];
environment('map') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('array-and-map') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
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
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions","j"}]},
{resources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/fn/json-to-xml/data001.json","http://www.w3.org/qt3/json/data001-json"},
{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/fn/json-to-xml/escapeText.json","http://www.w3.org/qt3/json/escapeText-json"},
{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/fn/json-to-xml/data005.json","http://www.w3.org/qt3/json/data005-json"}]},
{modules, []}
];
environment('json-ns') ->
[{sources, []},
{schemas, [{"","http://www.w3.org/2005/xpath-functions"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions","j"}]},
{resources, []},
{modules, []}
].
'json-to-xml-001'(_Config) ->
   Qry = "fn:json-to-xml('{}')",
   Env = xqerl_test:handle_environment(environment('json-ns')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"document-node()") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_xml(Res,"<map xmlns=\"http://www.w3.org/2005/xpath-functions\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> ct:fail('all-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-to-xml-002'(_Config) ->
   Qry = "fn:json-to-xml('[]')",
   Env = xqerl_test:handle_environment(environment('json-ns')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"document-node()") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_xml(Res,"<array xmlns=\"http://www.w3.org/2005/xpath-functions\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> ct:fail('all-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-to-xml-003'(_Config) ->
   Qry = "fn:json-to-xml('[1]')",
   Env = xqerl_test:handle_environment(environment('json-ns')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"document-node(element(j:array))") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"count($result/*) eq 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result/*/*[1] instance of element(j:number,xs:untyped)") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"xs:double($result/*[1]) eq 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_xml(Res,"<array xmlns=\"http://www.w3.org/2005/xpath-functions\"><number>1</number></array>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> ct:fail('all-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-to-xml-004'(_Config) ->
   Qry = "fn:json-to-xml('[\"a\"]')",
   Env = xqerl_test:handle_environment(environment('json-ns')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"document-node(element(*))") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"count($result/*) eq 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result/*/*[1] instance of element(j:string,xs:untyped)") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"xs:string($result/*/*[1]) eq \"a\"") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_xml(Res,"<array xmlns=\"http://www.w3.org/2005/xpath-functions\"><string>a</string></array>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> ct:fail('all-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-to-xml-005'(_Config) ->
   Qry = "fn:json-to-xml('[true]')",
   Env = xqerl_test:handle_environment(environment('json-ns')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"document-node(element(*))") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"count($result/*) eq 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result/*/*[1] instance of element(j:boolean,xs:untyped)") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"xs:boolean($result/*[1]) eq true()") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_xml(Res,"<array xmlns=\"http://www.w3.org/2005/xpath-functions\"><boolean>true</boolean></array>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> ct:fail('all-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-to-xml-006'(_Config) ->
   Qry = "fn:json-to-xml('[false]')",
   Env = xqerl_test:handle_environment(environment('json-ns')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"document-node(element(*))") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"count($result/*) eq 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result/*/*[1] instance of element(j:boolean,xs:untyped)") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"xs:boolean($result/*[1]) eq false()") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_xml(Res,"<array xmlns=\"http://www.w3.org/2005/xpath-functions\"><boolean>false</boolean></array>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> ct:fail('all-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-to-xml-007'(_Config) ->
   Qry = "fn:json-to-xml('[null]')",
   Env = xqerl_test:handle_environment(environment('json-ns')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"document-node(element(*))") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"count($result/*) eq 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result/*/*[1] instance of element(j:null,xs:untyped)") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"empty($result/*[1]/*[1]/(*|text()))") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_xml(Res,"<array xmlns=\"http://www.w3.org/2005/xpath-functions\"><null/></array>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> ct:fail('all-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-to-xml-008'(_Config) ->
   Qry = "fn:json-to-xml(unparsed-text('http://www.w3.org/qt3/json/data001-json'))",
   Env = xqerl_test:handle_environment(environment('json-files')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"document-node(element(j:map))") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"count($result/*) eq 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result/j:map/j:map[@key='glossary']/j:string[@key='title']") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result/j:map/j:map[@key='glossary']/j:map[@key='GlossDiv']") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> ct:fail('all-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-to-xml-009'(_Config) ->
   Qry = "fn:json-to-xml(unparsed-text('http://www.w3.org/qt3/json/data005-json'))",
   Env = xqerl_test:handle_environment(environment('json-files')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"$result/j:map/j:map[@key='menu']/j:string[@key='header'][.='SVG Viewer']") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result/j:map/j:map[@key='menu']/j:array[@key='items']/j:map[not(@*)]/j:string[@key='id'][.='Open']") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> ct:fail('all-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-to-xml-010'(_Config) ->
   Qry = "fn:json-to-xml(unparsed-text('http://www.w3.org/qt3/json/escapeText-json'))",
   Env = xqerl_test:handle_environment(environment('json-files')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<map xmlns=\"http://www.w3.org/2005/xpath-functions\"><string key=\"key\">Data with \" within it</string></map>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-to-xml-011'(_Config) ->
   Qry = "fn:json-to-xml(unparsed-text('http://www.w3.org/qt3/json/escapeText-json'))//j:string",
   Env = xqerl_test:handle_environment(environment('json-files')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<string xmlns=\"http://www.w3.org/2005/xpath-functions\" key=\"key\">Data with \" within it</string>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-to-xml-012'(_Config) ->
   Qry = "
         fn:json-to-xml(unparsed-text('http://www.w3.org/qt3/json/escapeText-json'), map{'escape':true()})//j:string
      ",
   Env = xqerl_test:handle_environment(environment('json-files')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"element(j:string)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result/self::*:string eq 'Data with \" within it'") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result/self::*:string/@key eq 'key'") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"namespace-uri($result/self::*:string) eq 'http://www.w3.org/2005/xpath-functions'") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> ct:fail('all-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-to-xml-013'(_Config) ->
   Qry = "
         fn:json-to-xml('[\"Data with \\\" within it\"]')//j:string
      ",
   Env = xqerl_test:handle_environment(environment('json-ns')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"element(j:string)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_xml(Res,"<string xmlns=\"http://www.w3.org/2005/xpath-functions\">Data with \" within it</string>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> ct:fail('all-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-to-xml-014'(_Config) ->
   Qry = "
         fn:json-to-xml('{\"Key \\\" with quote\":\"Data with \\\" within it\"}')//j:string
      ",
   Env = xqerl_test:handle_environment(environment('json-ns')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"element(j:string)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_xml(Res,"<string
                 xmlns=\"http://www.w3.org/2005/xpath-functions\" key=\"Key &#34; with quote\">Data with \" within it</string>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> ct:fail('all-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-to-xml-015'(_Config) ->
   Qry = "
         fn:json-to-xml(codepoints-to-string(65279)||'[1]')
      ",
   Env = xqerl_test:handle_environment(environment('json-ns')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<array 
         xmlns=\"http://www.w3.org/2005/xpath-functions\"><number>1</number></array>
         ") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-to-xml-016'(_Config) ->
   {skip,"schemaImport"}.
'json-to-xml-017'(_Config) ->
   {skip,"schemaImport"}.
'json-to-xml-017b'(_Config) ->
   {skip,"schemaImport"}.
'json-to-xml-018'(_Config) ->
   Qry = "
         fn:json-to-xml('{\"a\":3, \"b\":4, \"a\":5}')
      ",
   Env = xqerl_test:handle_environment(environment('json-ns')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<map 
         xmlns=\"http://www.w3.org/2005/xpath-functions\"><number key=\"a\"
         >3</number><number key=\"b\">4</number><number key=\"a\">5</number></map>
         ") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-to-xml-019'(_Config) ->
   Qry = "
         fn:json-to-xml('{\"a\\\\\":3, \"b\\\\\":4}', map{'escape':true()})
      ",
   Env = xqerl_test:handle_environment(environment('json-ns')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<map 
         xmlns=\"http://www.w3.org/2005/xpath-functions\"><number key=\"a\\\\\" escaped-key=\"true\"
         >3</number><number key=\"b\\\\\" escaped-key=\"true\">4</number></map>
         ") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-to-xml-020'(_Config) ->
   Qry = "
         fn:json-to-xml('{\"a\\\\\":3, \"b\\\\\":4}', map{'escape':false()})
      ",
   Env = xqerl_test:handle_environment(environment('json-ns')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<map 
      xmlns=\"http://www.w3.org/2005/xpath-functions\"><number key=\"a\\\"
      >3</number><number key=\"b\\\">4</number></map>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-to-xml-021'(_Config) ->
   Qry = "
         fn:json-to-xml('{\"a\":\"\\u000C\", \"\\u0007\":\"bell\"}', map{'escape':true()})
      ",
   Env = xqerl_test:handle_environment(environment('json-ns')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<map 
         xmlns=\"http://www.w3.org/2005/xpath-functions\"
         ><string key=\"a\" escaped=\"true\">\\f</string
         ><string key=\"\\u0007\" escaped-key=\"true\">bell</string></map>
         ") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-to-xml-022'(_Config) ->
   Qry = "
         fn:json-to-xml('{\"a\":\"\\u000C\", \"\\u0007\":\"bell\"}', map{'escape':false()})
      ",
   Env = xqerl_test:handle_environment(environment('json-ns')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<map 
         xmlns=\"http://www.w3.org/2005/xpath-functions\"
         ><string key=\"a\">&#xFFFD;</string><string key=\"&#xFFFD;\">bell</string></map>
         ") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-to-xml-023'(_Config) ->
   Qry = "
         fn:json-to-xml('{\"a\":\"\\uDA00\", \"\\uDD00\":\"bell\"}', map{'escape':false()})
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<map 
         xmlns=\"http://www.w3.org/2005/xpath-functions\"
         ><string key=\"a\">&#xFFFD;</string><string key=\"&#xFFFD;\">bell</string></map>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-to-xml-024'(_Config) ->
   Qry = "
         fn:json-to-xml('{\"a\":\"\\uDA00\", \"\\uDD00\":\"bell\"}', map{'escape':true()})
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<j:map 
         xmlns:j=\"http://www.w3.org/2005/xpath-functions\"
         ><j:string escaped=\"true\" key=\"a\">\\uDA00</j:string><j:string escaped-key=\"true\" key=\"\\uDD00\">bell</j:string></j:map>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-to-xml-025'(_Config) ->
   Qry = "
         fn:json-to-xml('{\"a\":\"\\u000C\", \"\\u0007\":\"bell\"}', 
              map{'escape':false(), 'fallback':function($s){'??'}})
      ",
   Env = xqerl_test:handle_environment(environment('json-ns')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<map 
         xmlns=\"http://www.w3.org/2005/xpath-functions\"
         ><string key=\"a\">??</string><string key=\"??\">bell</string></map>
         ") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-to-xml-026'(_Config) ->
   Qry = "
         fn:json-to-xml('{\"a\":\"\\uDA00\", \"\\uDD00\":\"bell\"}', 
             map{'escape':false(), 'fallback':function($s){'??' || translate($s, 'abcdef', 'ABCDEF')  || '??'}})
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<map 
         xmlns=\"http://www.w3.org/2005/xpath-functions\"
         ><string key=\"a\">??\\uDA00??</string><string key=\"??\\uDD00??\">bell</string></map>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-to-xml-027'(_Config) ->
   Qry = "
         fn:json-to-xml('{\"a\":\"\\uDA00\", \"\\uDD00\":\"bell\"}', 
            map{'escape':true(), 'fallback':function($s){'??' || translate($s, 'abcdef', 'ABCDEF') || '??'}})
      ",
   Qry1 = Qry,
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
'json-to-xml-028'(_Config) ->
   Qry = "
         fn:json-to-xml((), 
            map{'escape':false(), 'fallback':function($s){'??' || translate($s, 'abcdef', 'ABCDEF') || '??'}})
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
'json-to-xml-029'(_Config) ->
   Qry = "
         fn:json-to-xml('23', map{})
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<number 
         xmlns=\"http://www.w3.org/2005/xpath-functions\">23</number>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-to-xml-030'(_Config) ->
   Qry = "
         fn:json-to-xml('23E0', map{})
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<number 
         xmlns=\"http://www.w3.org/2005/xpath-functions\">23E0</number>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-to-xml-031'(_Config) ->
   Qry = "
         fn:json-to-xml('0.23e+02')
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<number 
         xmlns=\"http://www.w3.org/2005/xpath-functions\">0.23e+02</number>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-to-xml-032'(_Config) ->
   Qry = "
         fn:json-to-xml('0')
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<number 
         xmlns=\"http://www.w3.org/2005/xpath-functions\">0</number>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-to-xml-033'(_Config) ->
   Qry = "
         fn:json-to-xml('-0')
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<number 
         xmlns=\"http://www.w3.org/2005/xpath-functions\">-0</number>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-to-xml-034'(_Config) ->
   Qry = "
         fn:json-to-xml('{\"\":\"\", \"0\":\"0\"}')
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<map 
         xmlns=\"http://www.w3.org/2005/xpath-functions\"><string key=\"\"/><string key=\"0\">0</string></map>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-to-xml-035'(_Config) ->
   Qry = "
         fn:json-to-xml(())
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
'json-to-xml-036'(_Config) ->
   Qry = "
         fn:json-to-xml('{\"a\":3, \"b\":4, \"a\":5}', map{\"duplicates\":\"use-first\"})
      ",
   Env = xqerl_test:handle_environment(environment('json-ns')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<map 
         xmlns=\"http://www.w3.org/2005/xpath-functions\"><number key=\"a\"
         >3</number><number key=\"b\">4</number></map>
         ") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-to-xml-037'(_Config) ->
   {skip,"schemaImport"}.
'json-to-xml-037b'(_Config) ->
   {skip,"schemaImport"}.
'json-to-xml-038'(_Config) ->
   {skip,"schemaImport"}.
'json-to-xml-038b'(_Config) ->
   {skip,"schemaImport"}.
'json-to-xml-039'(_Config) ->
   Qry = "
         fn:json-to-xml('\"oh dear \\uDEAD\"', map{'fallback':function($s){substring($s, 3)}})
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<string 
         xmlns=\"http://www.w3.org/2005/xpath-functions\">oh dear DEAD</string>
         ") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-to-xml-040'(_Config) ->
   Qry = "
         fn:json-to-xml('{\"a\":3, \"b\":4, \"a\":5, \"c\":5}', map{'duplicates':'use-first'})
      ",
   Env = xqerl_test:handle_environment(environment('json-ns')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<map 
         xmlns=\"http://www.w3.org/2005/xpath-functions\"><number key=\"a\"
         >3</number><number key=\"b\">4</number><number key=\"c\">5</number></map>
         ") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-to-xml-041'(_Config) ->
   Qry = "
         static-base-uri() eq base-uri(fn:json-to-xml('true'))
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-to-xml-042'(_Config) ->
   Qry = "
         fn:json-to-xml('{\"\\n\":1, \"\\u000A\":2}', map{'escape':true(), 'duplicates':'reject'})
      ",
   Env = xqerl_test:handle_environment(environment('json-ns')),
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
'json-to-xml-043'(_Config) ->
   Qry = "
         fn:json-to-xml('\"\\u005c\"')
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<string 
         xmlns=\"http://www.w3.org/2005/xpath-functions\">\\</string>
         ") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-to-xml-044'(_Config) ->
   {skip,"schemaImport"}.
'json-to-xml-045'(_Config) ->
   {skip,"schemaImport"}.
'json-to-xml-046'(_Config) ->
   {skip,"schemaImport"}.
'json-to-xml-047'(_Config) ->
   {skip,"schemaImport"}.
'json-to-xml-048'(_Config) ->
   Qry = "json-to-xml('\"\\\\\\/\\\"\\r\\t\\u0020\"')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<string xmlns=\"http://www.w3.org/2005/xpath-functions\">\\/\"&#13;&#009;&#032;</string>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-to-xml-049'(_Config) ->
   Qry = "json-to-xml('\"\\\\\\/\\\"\\r\\t\\u0020\"', map {'escape':true()})",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<string xmlns=\"http://www.w3.org/2005/xpath-functions\" escaped=\"true\">\\\\/\"\\r\\t </string>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-to-xml-error-001'(_Config) ->
   Qry = "
         fn:json-to-xml('')
      ",
   Qry1 = Qry,
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
'json-to-xml-error-002'(_Config) ->
   Qry = "
         fn:json-to-xml('{error}')
      ",
   Env = xqerl_test:handle_environment(environment('json-ns')),
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
'json-to-xml-error-003'(_Config) ->
   Qry = "
         fn:json-to-xml('{terriblyWrong}')
      ",
   Env = xqerl_test:handle_environment(environment('json-ns')),
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
'json-to-xml-error-004'(_Config) ->
   Qry = "
         fn:json-to-xml(\"{}extra token\")
      ",
   Env = xqerl_test:handle_environment(environment('json-ns')),
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
'json-to-xml-error-005'(_Config) ->
   Qry = "
         fn:json-to-xml('{1:1}')
      ",
   Env = xqerl_test:handle_environment(environment('json-ns')),
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
'json-to-xml-error-006'(_Config) ->
   Qry = "
         fn:json-to-xml('{true:1}')
      ",
   Env = xqerl_test:handle_environment(environment('json-ns')),
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
'json-to-xml-error-007'(_Config) ->
   Qry = "
         fn:json-to-xml('{\"key\" 1}')
      ",
   Env = xqerl_test:handle_environment(environment('json-ns')),
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
'json-to-xml-error-008'(_Config) ->
   Qry = "
         fn:json-to-xml('{\"key\" :1 2}')
      ",
   Env = xqerl_test:handle_environment(environment('json-ns')),
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
'json-to-xml-error-009'(_Config) ->
   Qry = "
         fn:json-to-xml('[+1]')
      ",
   Env = xqerl_test:handle_environment(environment('json-ns')),
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
'json-to-xml-error-010'(_Config) ->
   Qry = "
         fn:json-to-xml('[01]')
      ",
   Env = xqerl_test:handle_environment(environment('json-ns')),
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
'json-to-xml-error-011'(_Config) ->
   Qry = "
         fn:json-to-xml('[1234A]')
      ",
   Env = xqerl_test:handle_environment(environment('json-ns')),
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
'json-to-xml-error-012'(_Config) ->
   Qry = "
         fn:json-to-xml('[\"123\\\"]')
      ",
   Env = xqerl_test:handle_environment(environment('json-ns')),
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
'json-to-xml-error-013'(_Config) ->
   Qry = "
         fn:json-to-xml('[\"123\\u234\"]')
      ",
   Env = xqerl_test:handle_environment(environment('json-ns')),
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
'json-to-xml-error-014'(_Config) ->
   Qry = "
         fn:json-to-xml('{\"key\":123,}')
      ",
   Env = xqerl_test:handle_environment(environment('json-ns')),
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
'json-to-xml-error-015'(_Config) ->
   Qry = "
         fn:json-to-xml('{\"key\":123 ,}', map{\"liberal\":false()})
      ",
   Env = xqerl_test:handle_environment(environment('json-ns')),
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
'json-to-xml-error-016'(_Config) ->
   Qry = "
         fn:json-to-xml('[\"key\":123,]')
      ",
   Env = xqerl_test:handle_environment(environment('json-ns')),
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
'json-to-xml-error-017'(_Config) ->
   Qry = "
         fn:json-to-xml('[\"key\":123 ,]', map{'liberal':true()})
      ",
   Env = xqerl_test:handle_environment(environment('json-ns')),
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
'json-to-xml-error-018'(_Config) ->
   Qry = "
         fn:json-to-xml('[\"String\",]', map{'liberal':()})
      ",
   Env = xqerl_test:handle_environment(environment('json-ns')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"FOJS0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> ct:fail('any-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-to-xml-error-019'(_Config) ->
   Qry = "
         fn:json-to-xml('[\"String\"]', map{'liberal':'something'})
      ",
   Env = xqerl_test:handle_environment(environment('json-ns')),
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
'json-to-xml-error-020'(_Config) ->
   Qry = "
         fn:json-to-xml('[\"String\"]', map{'validate':()})
      ",
   Env = xqerl_test:handle_environment(environment('json-ns')),
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
'json-to-xml-error-021'(_Config) ->
   Qry = "
         fn:json-to-xml('[\"String\"]', map{'validate':(true(),true())})
      ",
   Env = xqerl_test:handle_environment(environment('json-ns')),
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
'json-to-xml-error-022'(_Config) ->
   Qry = "
         fn:json-to-xml('[\"String\"]', map{'validate':'EMCA-262'})
      ",
   Env = xqerl_test:handle_environment(environment('json-ns')),
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
'json-to-xml-error-023'(_Config) ->
   Qry = "
         fn:json-to-xml('[\"String\"]', map{'escape':()})
      ",
   Env = xqerl_test:handle_environment(environment('json-ns')),
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
'json-to-xml-error-024'(_Config) ->
   Qry = "
         fn:json-to-xml('[\"String\"]', map{'escape':(true(),true())})
      ",
   Env = xqerl_test:handle_environment(environment('json-ns')),
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
'json-to-xml-error-025'(_Config) ->
   Qry = "
         fn:json-to-xml('[\"String\"]', map{'escape':'EMCA-262'})
      ",
   Env = xqerl_test:handle_environment(environment('json-ns')),
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
'json-to-xml-error-026'(_Config) ->
   Qry = "
         fn:json-to-xml('[\"String\"]', map{'fallback':'dummy'})
      ",
   Env = xqerl_test:handle_environment(environment('json-ns')),
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
'json-to-xml-error-027'(_Config) ->
   {skip,"XML 1.1"}.
'json-to-xml-error-028'(_Config) ->
   {skip,"schemaImport"}.
'json-to-xml-error-029'(_Config) ->
   Qry = "
         fn:json-to-xml('-00')
      ",
   Qry1 = Qry,
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
'json-to-xml-error-030'(_Config) ->
   Qry = "
         fn:json-to-xml('+10')
      ",
   Qry1 = Qry,
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
'json-to-xml-error-031'(_Config) ->
   Qry = "
         fn:json-to-xml('.1')
      ",
   Qry1 = Qry,
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
'json-to-xml-error-032'(_Config) ->
   Qry = "
         fn:json-to-xml('1.')
      ",
   Qry1 = Qry,
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
'json-to-xml-error-033'(_Config) ->
   Qry = "
         fn:json-to-xml('1.e2')
      ",
   Qry1 = Qry,
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
'json-to-xml-error-034'(_Config) ->
   Qry = "
         fn:json-to-xml('-.01')
      ",
   Qry1 = Qry,
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
'json-to-xml-error-035'(_Config) ->
   Qry = "
         fn:json-to-xml('{\"a\":3, \"b\":4, \"a\":5}', map{\"duplicates\":\"reject\"})
      ",
   Qry1 = Qry,
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
'json-to-xml-error-037'(_Config) ->
   Qry = "
         fn:json-to-xml('\"oh dear \\\"')
      ",
   Qry1 = Qry,
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
'json-to-xml-error-038'(_Config) ->
   Qry = "
         fn:json-to-xml('\"oh dear \\uAAA\"')
      ",
   Qry1 = Qry,
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
'json-to-xml-error-039'(_Config) ->
   Qry = "
         fn:json-to-xml('\"oh dear \\xAA\"')
      ",
   Qry1 = Qry,
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
'json-to-xml-error-040'(_Config) ->
   Qry = "
         fn:json-to-xml('{\"a\":3, \"b\":4, \"c\":5}', map{\"duplicates\":\"use-last\"})
      ",
   Qry1 = Qry,
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
'json-to-xml-error-041'(_Config) ->
   Qry = "
         fn:json-to-xml('\"\\uFFFF\"', map{'fallback':concat#2})
      ",
   Qry1 = Qry,
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
'json-to-xml-error-042'(_Config) ->
   {skip,"schemaImport"}.
'json-to-xml-error-043'(_Config) ->
   {skip,"schemaImport"}.
