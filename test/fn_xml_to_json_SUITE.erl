-module('fn_xml_to_json_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['xml-to-json-001'/1]).
-export(['xml-to-json-002'/1]).
-export(['xml-to-json-003'/1]).
-export(['xml-to-json-004'/1]).
-export(['xml-to-json-005'/1]).
-export(['xml-to-json-006'/1]).
-export(['xml-to-json-007'/1]).
-export(['xml-to-json-008'/1]).
-export(['xml-to-json-009'/1]).
-export(['xml-to-json-010'/1]).
-export(['xml-to-json-011'/1]).
-export(['xml-to-json-012'/1]).
-export(['xml-to-json-013'/1]).
-export(['xml-to-json-014'/1]).
-export(['xml-to-json-015'/1]).
-export(['xml-to-json-016'/1]).
-export(['xml-to-json-017'/1]).
-export(['xml-to-json-021'/1]).
-export(['xml-to-json-022'/1]).
-export(['xml-to-json-023'/1]).
-export(['xml-to-json-024'/1]).
-export(['xml-to-json-025'/1]).
-export(['xml-to-json-026'/1]).
-export(['xml-to-json-027'/1]).
-export(['xml-to-json-028'/1]).
-export(['xml-to-json-029'/1]).
-export(['xml-to-json-030'/1]).
-export(['xml-to-json-031'/1]).
-export(['xml-to-json-032'/1]).
-export(['xml-to-json-033'/1]).
-export(['xml-to-json-034'/1]).
-export(['xml-to-json-035'/1]).
-export(['xml-to-json-036'/1]).
-export(['xml-to-json-037'/1]).
-export(['xml-to-json-038'/1]).
-export(['xml-to-json-039'/1]).
-export(['xml-to-json-040'/1]).
-export(['xml-to-json-041'/1]).
-export(['xml-to-json-042'/1]).
-export(['xml-to-json-043'/1]).
-export(['xml-to-json-044'/1]).
-export(['xml-to-json-045'/1]).
-export(['xml-to-json-046'/1]).
-export(['xml-to-json-047'/1]).
-export(['xml-to-json-048'/1]).
-export(['xml-to-json-049'/1]).
-export(['xml-to-json-050'/1]).
-export(['xml-to-json-051'/1]).
-export(['xml-to-json-052'/1]).
-export(['xml-to-json-053'/1]).
-export(['xml-to-json-054'/1]).
-export(['xml-to-json-055'/1]).
-export(['xml-to-json-056'/1]).
-export(['xml-to-json-057'/1]).
-export(['xml-to-json-058'/1]).
-export(['xml-to-json-059'/1]).
-export(['xml-to-json-060'/1]).
-export(['xml-to-json-061'/1]).
-export(['xml-to-json-062'/1]).
-export(['xml-to-json-063'/1]).
-export(['xml-to-json-064'/1]).
-export(['xml-to-json-065'/1]).
-export(['xml-to-json-066'/1]).
-export(['xml-to-json-067'/1]).
-export(['xml-to-json-068'/1]).
-export(['xml-to-json-069'/1]).
-export(['xml-to-json-070'/1]).
-export(['xml-to-json-C-001'/1]).
-export(['xml-to-json-C-002'/1]).
-export(['xml-to-json-C-003'/1]).
-export(['xml-to-json-C-004'/1]).
-export(['xml-to-json-C-005'/1]).
-export(['xml-to-json-C-006'/1]).
-export(['xml-to-json-C-007'/1]).
-export(['xml-to-json-C-008'/1]).
-export(['xml-to-json-C-009'/1]).
-export(['xml-to-json-C-010'/1]).
-export(['xml-to-json-C-011'/1]).
-export(['xml-to-json-C-012'/1]).
-export(['xml-to-json-C-013'/1]).
-export(['xml-to-json-C-014'/1]).
-export(['xml-to-json-C-015'/1]).
-export(['xml-to-json-C-016'/1]).
-export(['xml-to-json-C-017'/1]).
-export(['xml-to-json-C-018'/1]).
-export(['xml-to-json-D-001'/1]).
-export(['xml-to-json-D-002'/1]).
-export(['xml-to-json-D-003'/1]).
-export(['xml-to-json-D-004'/1]).
-export(['xml-to-json-D-005'/1]).
-export(['xml-to-json-D-006'/1]).
-export(['xml-to-json-D-007'/1]).
-export(['xml-to-json-D-008'/1]).
-export(['xml-to-json-D-009'/1]).
-export(['xml-to-json-D-010'/1]).
-export(['xml-to-json-D-011'/1]).
-export(['xml-to-json-D-012'/1]).
-export(['xml-to-json-D-013'/1]).
-export(['xml-to-json-D-014'/1]).
-export(['xml-to-json-D-016'/1]).
-export(['xml-to-json-D-101'/1]).
-export(['xml-to-json-D-102'/1]).
-export(['xml-to-json-D-103'/1]).
-export(['xml-to-json-D-104'/1]).
-export(['xml-to-json-D-201'/1]).
-export(['xml-to-json-D-202'/1]).
-export(['xml-to-json-D-203'/1]).
-export(['xml-to-json-D-204'/1]).
-export(['xml-to-json-D-205'/1]).
-export(['xml-to-json-D-206'/1]).
-export(['xml-to-json-D-301'/1]).
-export(['xml-to-json-D-302'/1]).
-export(['xml-to-json-D-303'/1]).
-export(['xml-to-json-D-401'/1]).
-export(['xml-to-json-D-402'/1]).
-export(['xml-to-json-D-403'/1]).
-export(['xml-to-json-D-404'/1]).
-export(['xml-to-json-D-405'/1]).
-export(['xml-to-json-D-406'/1]).
-export(['xml-to-json-D-407'/1]).
-export(['xml-to-json-D-501'/1]).
-export(['xml-to-json-D-502'/1]).
-export(['xml-to-json-D-503'/1]).
-export(['xml-to-json-D-504'/1]).
-export(['xml-to-json-D-505'/1]).
-export(['xml-to-json-D-506'/1]).
-export(['xml-to-json-D-507'/1]).
-export(['xml-to-json-D-508'/1]).
-export(['xml-to-json-D-509'/1]).
-export(['xml-to-json-D-510'/1]).
-export(['xml-to-json-D-511'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'xml-to-json-001',
   'xml-to-json-002',
   'xml-to-json-003',
   'xml-to-json-004',
   'xml-to-json-005',
   'xml-to-json-006',
   'xml-to-json-007',
   'xml-to-json-008',
   'xml-to-json-009',
   'xml-to-json-010',
   'xml-to-json-011',
   'xml-to-json-012',
   'xml-to-json-013',
   'xml-to-json-014',
   'xml-to-json-015',
   'xml-to-json-016',
   'xml-to-json-017',
   'xml-to-json-021',
   'xml-to-json-022',
   'xml-to-json-023',
   'xml-to-json-024',
   'xml-to-json-025',
   'xml-to-json-026',
   'xml-to-json-027',
   'xml-to-json-028',
   'xml-to-json-029',
   'xml-to-json-030',
   'xml-to-json-031',
   'xml-to-json-032',
   'xml-to-json-033',
   'xml-to-json-034',
   'xml-to-json-035',
   'xml-to-json-036',
   'xml-to-json-037',
   'xml-to-json-038',
   'xml-to-json-039',
   'xml-to-json-040',
   'xml-to-json-041',
   'xml-to-json-042',
   'xml-to-json-043',
   'xml-to-json-044',
   'xml-to-json-045',
   'xml-to-json-046',
   'xml-to-json-047',
   'xml-to-json-048',
   'xml-to-json-049',
   'xml-to-json-050',
   'xml-to-json-051',
   'xml-to-json-052',
   'xml-to-json-053',
   'xml-to-json-054',
   'xml-to-json-055',
   'xml-to-json-056',
   'xml-to-json-057',
   'xml-to-json-058',
   'xml-to-json-059',
   'xml-to-json-060',
   'xml-to-json-061',
   'xml-to-json-062',
   'xml-to-json-063',
   'xml-to-json-064',
   'xml-to-json-065',
   'xml-to-json-066',
   'xml-to-json-067',
   'xml-to-json-068',
   'xml-to-json-069',
   'xml-to-json-070',
   'xml-to-json-C-001',
   'xml-to-json-C-002',
   'xml-to-json-C-003',
   'xml-to-json-C-004',
   'xml-to-json-C-005',
   'xml-to-json-C-006',
   'xml-to-json-C-007',
   'xml-to-json-C-008',
   'xml-to-json-C-009',
   'xml-to-json-C-010',
   'xml-to-json-C-011',
   'xml-to-json-C-012',
   'xml-to-json-C-013',
   'xml-to-json-C-014',
   'xml-to-json-C-015',
   'xml-to-json-C-016',
   'xml-to-json-C-017',
   'xml-to-json-C-018',
   'xml-to-json-D-001',
   'xml-to-json-D-002',
   'xml-to-json-D-003',
   'xml-to-json-D-004',
   'xml-to-json-D-005',
   'xml-to-json-D-006',
   'xml-to-json-D-007',
   'xml-to-json-D-008',
   'xml-to-json-D-009',
   'xml-to-json-D-010',
   'xml-to-json-D-011',
   'xml-to-json-D-012',
   'xml-to-json-D-013',
   'xml-to-json-D-014',
   'xml-to-json-D-016',
   'xml-to-json-D-101',
   'xml-to-json-D-102',
   'xml-to-json-D-103',
   'xml-to-json-D-104',
   'xml-to-json-D-201',
   'xml-to-json-D-202',
   'xml-to-json-D-203',
   'xml-to-json-D-204',
   'xml-to-json-D-205',
   'xml-to-json-D-206',
   'xml-to-json-D-301',
   'xml-to-json-D-302',
   'xml-to-json-D-303',
   'xml-to-json-D-401',
   'xml-to-json-D-402',
   'xml-to-json-D-403',
   'xml-to-json-D-404',
   'xml-to-json-D-405',
   'xml-to-json-D-406',
   'xml-to-json-D-407',
   'xml-to-json-D-501',
   'xml-to-json-D-502',
   'xml-to-json-D-503',
   'xml-to-json-D-504',
   'xml-to-json-D-505',
   'xml-to-json-D-506',
   'xml-to-json-D-507',
   'xml-to-json-D-508',
   'xml-to-json-D-509',
   'xml-to-json-D-510',
   'xml-to-json-D-511'].
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
environment('xml-to-json-C') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/fn/xml-to-json/xml-to-json-C.xsl",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/fn/xml-to-json.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('xml-to-json-D') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/fn/xml-to-json/xml-to-json-D.xsl",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/fn/xml-to-json.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'xml-to-json-001'(_Config) ->
   Qry = "xml-to-json(json-to-xml('null',map{'liberal':true()}))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"null\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-002'(_Config) ->
   Qry = "xml-to-json(json-to-xml('null',map{'liberal':true()}))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"null\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-003'(_Config) ->
   Qry = "xml-to-json(json-to-xml('null',map{'liberal':true()}))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"null\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-004'(_Config) ->
   Qry = "xml-to-json(json-to-xml('true'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"true\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-005'(_Config) ->
   Qry = "xml-to-json(json-to-xml('false'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"false\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-006'(_Config) ->
   Qry = "xml-to-json(json-to-xml('93.7'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"93.7\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-007'(_Config) ->
   Qry = "
           declare variable $in := '\"London\"';
          xml-to-json(json-to-xml($in))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'\"London\"'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-008'(_Config) ->
   Qry = "
           declare variable $in := '\"\"';
          xml-to-json(json-to-xml($in))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'\"\"'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-009'(_Config) ->
   Qry = "xml-to-json(json-to-xml('[]'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'[]'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-010'(_Config) ->
   Qry = "xml-to-json(json-to-xml('[34]'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'[34]'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-011'(_Config) ->
   Qry = "xml-to-json(json-to-xml('[true, false]'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'[true,false]'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-012'(_Config) ->
   Qry = "xml-to-json(json-to-xml('[\"A\", \"B\", \"C\", \"D\", \"E\"]'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'[\"A\",\"B\",\"C\",\"D\",\"E\"]'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-013'(_Config) ->
   Qry = "xml-to-json(json-to-xml('{}'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'{}'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-014'(_Config) ->
   Qry = "xml-to-json(json-to-xml('{\"A\":true}'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'{\"A\":true}'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-015'(_Config) ->
   Qry = "xml-to-json(json-to-xml('{\"A\":1, \"B\":2, \"C\":3, \"D\":4, \"E\":5}'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'{\"A\":1,\"B\":2,\"C\":3,\"D\":4,\"E\":5}'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-016'(_Config) ->
   Qry = "xml-to-json(json-to-xml('{\"A\":[1,2], \"B\":[true,false], \"C\":[\"Paris\",\"London\",\"Berlin\"], \"D\":[1, true, \"on\"], \"E\":[null, null]}'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'{\"A\":[1,2],\"B\":[true,false],\"C\":[\"Paris\",\"London\",\"Berlin\"],\"D\":[1,true,\"on\"],\"E\":[null,null]}'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-017'(_Config) ->
   Qry = "xml-to-json(json-to-xml('\"\\\\\\/\\\"\\r\\t\\n\\u0020\"'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'\"\\\\\\/\\\"\\r\\t\\n \"'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-021'(_Config) ->
   Qry = "
        xml-to-json(<null xmlns=\"http://www.w3.org/2005/xpath-functions\"/>)
       ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"null\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-022'(_Config) ->
   Qry = "
        xml-to-json(<boolean xmlns=\"http://www.w3.org/2005/xpath-functions\">true</boolean>)
       ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"true\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-023'(_Config) ->
   Qry = "
        xml-to-json(<number xmlns=\"http://www.w3.org/2005/xpath-functions\">23</number>)
       ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"23\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-024'(_Config) ->
   Qry = "
        xml-to-json(<string xmlns=\"http://www.w3.org/2005/xpath-functions\">banana</string>)
       ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'\"banana\"'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-025'(_Config) ->
   Qry = "
        xml-to-json(<boolean xmlns=\"http://www.w3.org/2005/xpath-functions\"> false </boolean>)
       ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"false\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-026'(_Config) ->
   Qry = "
        xml-to-json(<number xmlns=\"http://www.w3.org/2005/xpath-functions\"> +005 </number>)
       ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"5\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-027'(_Config) ->
   Qry = "
        declare boundary-space preserve;
        xml-to-json(<string xmlns=\"http://www.w3.org/2005/xpath-functions\">   </string>)
       ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'\"   \"'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-028'(_Config) ->
   Qry = "
        declare boundary-space preserve;
        xml-to-json(<array xmlns=\"http://www.w3.org/2005/xpath-functions\"> <null/> <!--comma--> <null/>   </array>)
       ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"[null,null]\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-029'(_Config) ->
   Qry = "
        declare boundary-space preserve;
        xml-to-json(<map xmlns=\"http://www.w3.org/2005/xpath-functions\"> <null key=\"a\"/> <!--comma--> <null key=\"b\"/>   </map>)
       ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'{\"a\":null,\"b\":null}'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-030'(_Config) ->
   Qry = "
        declare boundary-space preserve;
        xml-to-json(document{<array xmlns=\"http://www.w3.org/2005/xpath-functions\"><null/><null/></array>})
       ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"[null,null]\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-031'(_Config) ->
   Qry = "
        declare boundary-space preserve;
        xml-to-json(document{<jj:array xmlns:jj=\"http://www.w3.org/2005/xpath-functions\"><jj:null/><jj:null/></jj:array>})
       ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"[null,null]\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-032'(_Config) ->
   Qry = "
        declare boundary-space preserve;
        xml-to-json(document{<jj:array xmlns:jj=\"http://www.w3.org/2005/xpath-functions/not-json\"><jj:null/><jj:null/></jj:array>})
       ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-033'(_Config) ->
   Qry = "
        declare boundary-space preserve;
        xml-to-json(<map xmlns=\"http://www.w3.org/2005/xpath-functions\"> <null key=\"a\" yek=\"z\"/> <null key=\"b\"/>   </map>)
       ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-034'(_Config) ->
   Qry = "
        declare boundary-space preserve;
        xml-to-json(<map xmlns=\"http://www.w3.org/2005/xpath-functions\"> <null key=\"a\"/> <null key=\"b\"/> <yek key=\"c\"/>  </map>)
       ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-035'(_Config) ->
   Qry = "
        xml-to-json(<map xmlns=\"http://www.w3.org/2005/xpath-functions\"><null/><null/></map>)
       ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-036'(_Config) ->
   Qry = "
        xml-to-json(<map xmlns=\"http://www.w3.org/2005/xpath-functions\"><null key=\"a\"/><null key=\"a\"/></map>)
       ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-037'(_Config) ->
   Qry = "
        xml-to-json(<string xmlns=\"http://www.w3.org/2005/xpath-functions\">ban<!--c-->ana</string>)
       ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'\"banana\"'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-038'(_Config) ->
   Qry = "
        xml-to-json(<number xmlns=\"http://www.w3.org/2005/xpath-functions\">2<!--c-->7</number>)
       ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'27'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-039'(_Config) ->
   Qry = "
        declare boundary-space preserve;
        xml-to-json(<boolean xmlns=\"http://www.w3.org/2005/xpath-functions\">tr<!--c-->ue</boolean>)
       ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'true'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-040'(_Config) ->
   Qry = "
        declare boundary-space preserve;
        xml-to-json(<string xmlns=\"http://www.w3.org/2005/xpath-functions\">ok<null/></string>)
       ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-041'(_Config) ->
   Qry = "
        declare boundary-space preserve;
        xml-to-json(<number xmlns=\"http://www.w3.org/2005/xpath-functions\">17<string>qq</string></number>)
       ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-042'(_Config) ->
   Qry = "
        declare boundary-space preserve;
        xml-to-json(<boolean xmlns=\"http://www.w3.org/2005/xpath-functions\">true<string>qq</string></boolean>)
       ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-043'(_Config) ->
   Qry = "
        xml-to-json(<null xmlns=\"http://www.w3.org/2005/xpath-functions\"><null/></null>)
       ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-044'(_Config) ->
   Qry = "
        xml-to-json(<null xmlns=\"http://www.w3.org/2005/xpath-functions\"><null/></null>)
       ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-045'(_Config) ->
   Qry = "
        xml-to-json(<number xsi:type=\"xs:short\" xmlns=\"http://www.w3.org/2005/xpath-functions\" 
            xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" 
            xmlns:xs=\"http://www.w3.org/2001/XMLSchema\">231</number>)
       ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"231\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-046'(_Config) ->
   {skip,"schemaImport"}.
'xml-to-json-047'(_Config) ->
   {skip,"schemaImport"}.
'xml-to-json-048'(_Config) ->
   {skip,"schemaImport"}.
'xml-to-json-049'(_Config) ->
   Qry = "
        xml-to-json(<string xmlns=\"http://www.w3.org/2005/xpath-functions\">abc&#xa;def</string>)
       ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'\"abc\\ndef\"'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-050'(_Config) ->
   {skip,"XML 1.1"}.
'xml-to-json-051'(_Config) ->
   Qry = "
        xml-to-json(<map xmlns=\"http://www.w3.org/2005/xpath-functions\"><string key=\"&#x9;\">tab</string></map>)
       ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'{\"\\t\":\"tab\"}'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-052'(_Config) ->
   Qry = "
        xml-to-json(<map xmlns=\"http://www.w3.org/2005/xpath-functions\"
        ><string escaped-key=\"true\" key=\"\\t\">tab</string></map>)
       ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'{\"\\t\":\"tab\"}'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-053'(_Config) ->
   Qry = "
        xml-to-json(<map xmlns=\"http://www.w3.org/2005/xpath-functions\"
        ><string escaped-key=\"0\" key=\"\\t\">tab</string></map>)
       ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'{\"\\\\t\":\"tab\"}'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-054'(_Config) ->
   Qry = "
        xml-to-json(<map xmlns=\"http://www.w3.org/2005/xpath-functions\">
            <string escaped=\"1\" key=\"t1\">\\t</string>
            <string escaped=\"0\" key=\"t2\">\\t</string>
            <string escaped=\"1\" key=\"t3\">&#x9;</string>
            <string escaped=\"0\" key=\"t4\">&#x9;</string>
        </map>)
       ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'{\"t1\":\"\\t\",\"t2\":\"\\\\t\",\"t3\":\"\\t\",\"t4\":\"\\t\"}'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-055'(_Config) ->
   Qry = "
        xml-to-json(<map xmlns=\"http://www.w3.org/2005/xpath-functions\"
        ><string escaped=\"false\" key=\"tab\">\\t</string></map>)
       ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'{\"tab\":\"\\\\t\"}'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-056'(_Config) ->
   Qry = "
        let $result := xml-to-json(<map xmlns=\"http://www.w3.org/2005/xpath-functions\"
        ><number key=\"a\">1</number><number key=\"b\">2</number></map>, map{'indent':true()})
        return translate(normalize-space($result), ' ', '')
       ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'{\"a\":1,\"b\":2}'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-057'(_Config) ->
   Qry = "
        let $result := xml-to-json(<map xmlns=\"http://www.w3.org/2005/xpath-functions\"
        ><number key=\"a\">1</number><number key=\"b\">2</number></map>, map{'indent':true()})
        return normalize-space($result) eq $result
       ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-058'(_Config) ->
   Qry = "
        let $result := xml-to-json(<map xmlns=\"http://www.w3.org/2005/xpath-functions\"
        ><number key=\"a\">1</number><number key=\"b\">2</number></map>, map{'indent':false()})
        return normalize-space($result) eq $result
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
'xml-to-json-059'(_Config) ->
   Qry = "
        let $result := xml-to-json(<map xmlns=\"http://www.w3.org/2005/xpath-functions\"
        ><number key=\"a\">1</number><number key=\"b\">2</number></map>, map{'indent':()})
        return normalize-space($result) eq $result
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
'xml-to-json-060'(_Config) ->
   Qry = "
        let $result := xml-to-json(<map xmlns=\"http://www.w3.org/2005/xpath-functions\"
        ><number key=\"a\">1</number><number key=\"b\">2</number></map>, map{'indent':false(), 'outdent':true()})
        return normalize-space($result) eq $result
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
'xml-to-json-061'(_Config) ->
   {skip,"schemaImport"}.
'xml-to-json-062'(_Config) ->
   Qry = "
        xml-to-json(<map xmlns=\"http://www.w3.org/2005/xpath-functions\"
        ><string escaped-key=\"bonkers\" key=\"\\t\">tab</string></map>)
       ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-063'(_Config) ->
   Qry = "
        xml-to-json(<map xmlns=\"http://www.w3.org/2005/xpath-functions\"
        ><string escaped=\"potty\" key=\"\\t\">tab</string></map>)
       ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-064'(_Config) ->
   Qry = "
        xml-to-json(<map xmlns=\"http://www.w3.org/2005/xpath-functions\"
        escaped-key=\"0\"><string key=\"\\t\">tab</string></map>)
       ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'{\"\\\\t\":\"tab\"}'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-065'(_Config) ->
   Qry = "
        xml-to-json(<map xmlns=\"http://www.w3.org/2005/xpath-functions\"
         escaped=\"0\"><string key=\"\\t\">tab</string></map>)
       ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'{\"\\\\t\":\"tab\"}'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-066'(_Config) ->
   Qry = "xml-to-json(())",
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
'xml-to-json-067'(_Config) ->
   Qry = "xml-to-json((), map{})",
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
'xml-to-json-068'(_Config) ->
   Qry = "
        xml-to-json(<map xmlns=\"http://www.w3.org/2005/xpath-functions\"
         xml:base=\"http://www.w3.org\"><string key=\"t\">tab</string></map>)
       ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'{\"t\":\"tab\"}'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-069'(_Config) ->
   Qry = "
        xml-to-json(<j:map xmlns:j=\"http://www.w3.org/2005/xpath-functions\"
         j:base=\"http://www.w3.org\"><j:string key=\"t\">tab</j:string></j:map>)
       ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-070'(_Config) ->
   Qry = "
         let $x := json-to-xml('[{ \"givenNames\": [\"Michael\", \"Howard\"], \"surname\": \"Kay\"}]')
         return xml-to-json($x//*[@key='givenNames'])
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'[\"Michael\",\"Howard\"]'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-C-001'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t001\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-C')),
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
'xml-to-json-C-002'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t002\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-C')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-C-003'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t003\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-C')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-C-004'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t004\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-C')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-C-005'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t005\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-C')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-C-006'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t006\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-C')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-C-007'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t007\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-C')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-C-008'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t008\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-C')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-C-009'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t009\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-C')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-C-010'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t010\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-C')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-C-011'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t011\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-C')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-C-012'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t012\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-C')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-C-013'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t013\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-C')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-C-014'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t014\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-C')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-C-015'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t015\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-C')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-C-016'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t016\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-C')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "\"xxxx\"") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-C-017'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t017\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-C')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0007") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-C-018'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t018\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-C')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0007") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-D-001'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t001\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-D')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'\"a\"'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-D-002'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t002\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-D')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'\"a\"'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-D-003'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t003\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-D')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'\"\\\"\"'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-D-004'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t004\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-D')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'\"\\\\\"'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-D-005'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t005\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-D')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'\"\\uD834\\uDD1E\"'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-D-006'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t006\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-D')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'\"\\\\\\\"\"'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-D-007'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t007\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-D')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'\"\\\\\\\\\"'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-D-008'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t008\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-D')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'\"\\\\uD834\\\\uDD1E\"'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-D-009'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t009\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-D')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'\"  \"'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-D-010'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t010\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-D')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'\"-\\\"-\"'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-D-011'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t011\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-D')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'\"-\\n-\"'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-D-012'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t012\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-D')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'\"-\\r-\"'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-D-013'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t013\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-D')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'\"-\\t-\"'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-D-014'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t014\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-D')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'\"-\\u007F-\"'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-D-016'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t014\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-D')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'\"-\\u007F-\"'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-D-101'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t101\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-D')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'false'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-D-102'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t102\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-D')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'true'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-D-103'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t103\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-D')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'false'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-D-104'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t104\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-D')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'true'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-D-201'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t201\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-D')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'7'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-D-202'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t202\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-D')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'-0'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-D-203'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t203\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-D')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'1.0E6'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-D-204'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t204\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-D')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'-0.000001'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-D-205'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t205\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-D')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'0.001'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-D-206'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t206\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-D')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'23'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-D-301'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t301\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-D')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'null'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-D-302'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t302\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-D')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'null'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-D-303'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t303\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-D')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'null'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-D-401'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t401\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-D')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'[]'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-D-402'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t402\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-D')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'[]'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-D-403'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t403\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-D')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'[]'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-D-404'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t404\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-D')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'[null]'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-D-405'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t405\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-D')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'[\"(\",null,null,\")\"]'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-D-406'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t406\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-D')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'[\"(\",null,null,\")\"]'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-D-407'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t407\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-D')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'[null]'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-D-501'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t501\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-D')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-D-502'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t502\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-D')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-D-503'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t503\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-D')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-D-504'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t504\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-D')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'{\"\\\"\":\"1\"}'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-D-505'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t505\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-D')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'{\"\\\\\":\"1\"}'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-D-506'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t506\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-D')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'{\"\\uD834\\uDD1E\":\"1\"}'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-D-507'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t507\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-D')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'{\"\\\"\":\"1\",\"\\\\\\\"\":\"0\"}'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-D-508'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t508\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-D')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'{\"A\":\"1\",\"B\":\"  \"}'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-D-509'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t509\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-D')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'{\"-\\n-\":\"1\"}'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-D-510'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t510\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-D')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'{\"-\\r-\":\"1\"}'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xml-to-json-D-511'(_Config) ->
   Qry = "xml-to-json(//*:template[@name=\"t511\"]/*:variable/*)",
   Env = xqerl_test:handle_environment(environment('xml-to-json-D')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'{\"-\\t-\":\"1\"}'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
