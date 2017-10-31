-module('op_numeric_multiply_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['op-numeric-multiplydec2args-1'/1]).
-export(['op-numeric-multiplydec2args-2'/1]).
-export(['op-numeric-multiplydec2args-3'/1]).
-export(['op-numeric-multiplydec2args-4'/1]).
-export(['op-numeric-multiplydec2args-5'/1]).
-export(['op-numeric-multiplydbl2args-1'/1]).
-export(['op-numeric-multiplydbl2args-2'/1]).
-export(['op-numeric-multiplydbl2args-3'/1]).
-export(['op-numeric-multiplydbl2args-4'/1]).
-export(['op-numeric-multiplydbl2args-5'/1]).
-export(['op-numeric-multiplyflt2args-1'/1]).
-export(['op-numeric-multiplyflt2args-2'/1]).
-export(['op-numeric-multiplyflt2args-3'/1]).
-export(['op-numeric-multiplyflt2args-4'/1]).
-export(['op-numeric-multiplyflt2args-5'/1]).
-export(['op-numeric-multiplyusht2args-1'/1]).
-export(['op-numeric-multiplyusht2args-2'/1]).
-export(['op-numeric-multiplyusht2args-3'/1]).
-export(['op-numeric-multiplyusht2args-4'/1]).
-export(['op-numeric-multiplyusht2args-5'/1]).
-export(['op-numeric-multiplypint2args-1'/1]).
-export(['op-numeric-multiplypint2args-2'/1]).
-export(['op-numeric-multiplypint2args-3'/1]).
-export(['op-numeric-multiplypint2args-4'/1]).
-export(['op-numeric-multiplypint2args-5'/1]).
-export(['op-numeric-multiplyulng2args-1'/1]).
-export(['op-numeric-multiplyulng2args-2'/1]).
-export(['op-numeric-multiplyulng2args-3'/1]).
-export(['op-numeric-multiplyulng2args-4'/1]).
-export(['op-numeric-multiplyulng2args-5'/1]).
-export(['op-numeric-multiplynpi2args-1'/1]).
-export(['op-numeric-multiplynpi2args-2'/1]).
-export(['op-numeric-multiplynni2args-1'/1]).
-export(['op-numeric-multiplynni2args-2'/1]).
-export(['op-numeric-multiplynni2args-3'/1]).
-export(['op-numeric-multiplynni2args-4'/1]).
-export(['op-numeric-multiplynni2args-5'/1]).
-export(['op-numeric-multiplymix2args-1'/1]).
-export(['op-numeric-multiplymix2args-2'/1]).
-export(['op-numeric-multiplymix2args-3'/1]).
-export(['op-numeric-multiplymix2args-4'/1]).
-export(['op-numeric-multiplymix2args-5'/1]).
-export(['op-numeric-multiplymix2args-6'/1]).
-export(['op-numeric-multiplymix2args-7'/1]).
-export(['op-numeric-multiplymix2args-8'/1]).
-export(['op-numeric-multiplymix2args-9'/1]).
-export(['K-NumericMultiply-1'/1]).
-export(['K-NumericMultiply-2'/1]).
-export(['K-NumericMultiply-3'/1]).
-export(['K-NumericMultiply-4'/1]).
-export(['K-NumericMultiply-5'/1]).
-export(['K-NumericMultiply-6'/1]).
-export(['K-NumericMultiply-7'/1]).
-export(['K-NumericMultiply-8'/1]).
-export(['K-NumericMultiply-9'/1]).
-export(['K-NumericMultiply-10'/1]).
-export(['K-NumericMultiply-11'/1]).
-export(['K-NumericMultiply-12'/1]).
-export(['K-NumericMultiply-13'/1]).
-export(['K-NumericMultiply-14'/1]).
-export(['K-NumericMultiply-15'/1]).
-export(['K-NumericMultiply-16'/1]).
-export(['K-NumericMultiply-17'/1]).
-export(['K-NumericMultiply-18'/1]).
-export(['K-NumericMultiply-19'/1]).
-export(['K-NumericMultiply-20'/1]).
-export(['K-NumericMultiply-21'/1]).
-export(['K-NumericMultiply-22'/1]).
-export(['K-NumericMultiply-23'/1]).
-export(['K-NumericMultiply-24'/1]).
-export(['K-NumericMultiply-25'/1]).
-export(['K-NumericMultiply-26'/1]).
-export(['K-NumericMultiply-27'/1]).
-export(['K-NumericMultiply-28'/1]).
-export(['K-NumericMultiply-29'/1]).
-export(['K-NumericMultiply-30'/1]).
-export(['K-NumericMultiply-31'/1]).
-export(['K-NumericMultiply-32'/1]).
-export(['K-NumericMultiply-33'/1]).
-export(['op-numeric-multiply-1'/1]).
-export(['cbcl-numeric-multiply-001'/1]).
-export(['cbcl-numeric-multiply-002'/1]).
-export(['cbcl-numeric-multiply-003'/1]).
-export(['cbcl-numeric-multiply-004'/1]).
-export(['cbcl-numeric-multiply-005'/1]).
-export(['cbcl-numeric-multiply-006'/1]).
-export(['cbcl-numeric-multiply-007'/1]).
-export(['cbcl-numeric-multiply-008'/1]).
-export(['cbcl-numeric-multiply-009'/1]).
-export(['cbcl-numeric-multiply-010'/1]).
-export(['cbcl-numeric-multiply-011'/1]).
-export(['cbcl-numeric-multiply-012'/1]).
-export(['cbcl-numeric-multiply-013'/1]).
-export(['cbcl-numeric-multiply-014'/1]).
-export(['cbcl-numeric-multiply-015'/1]).
-export(['cbcl-numeric-multiply-016'/1]).
-export(['cbcl-numeric-multiply-017'/1]).
-export(['cbcl-numeric-multiply-018'/1]).
-export(['cbcl-numeric-multiply-019'/1]).
-export(['cbcl-numeric-multiply-020'/1]).
-export(['cbcl-numeric-multiply-021'/1]).
-export(['cbcl-numeric-multiply-022'/1]).
-export(['cbcl-numeric-multiply-023'/1]).
-export(['cbcl-numeric-multiply-024'/1]).
-export(['cbcl-numeric-multiply-025'/1]).
-export(['cbcl-numeric-multiply-026'/1]).
-export(['cbcl-numeric-multiply-027'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'op-numeric-multiplydec2args-1',
   'op-numeric-multiplydec2args-2',
   'op-numeric-multiplydec2args-3',
   'op-numeric-multiplydec2args-4',
   'op-numeric-multiplydec2args-5',
   'op-numeric-multiplydbl2args-1',
   'op-numeric-multiplydbl2args-2',
   'op-numeric-multiplydbl2args-3',
   'op-numeric-multiplydbl2args-4',
   'op-numeric-multiplydbl2args-5',
   'op-numeric-multiplyflt2args-1',
   'op-numeric-multiplyflt2args-2',
   'op-numeric-multiplyflt2args-3',
   'op-numeric-multiplyflt2args-4',
   'op-numeric-multiplyflt2args-5',
   'op-numeric-multiplyusht2args-1',
   'op-numeric-multiplyusht2args-2',
   'op-numeric-multiplyusht2args-3',
   'op-numeric-multiplyusht2args-4',
   'op-numeric-multiplyusht2args-5',
   'op-numeric-multiplypint2args-1',
   'op-numeric-multiplypint2args-2',
   'op-numeric-multiplypint2args-3',
   'op-numeric-multiplypint2args-4',
   'op-numeric-multiplypint2args-5',
   'op-numeric-multiplyulng2args-1',
   'op-numeric-multiplyulng2args-2',
   'op-numeric-multiplyulng2args-3',
   'op-numeric-multiplyulng2args-4',
   'op-numeric-multiplyulng2args-5',
   'op-numeric-multiplynpi2args-1',
   'op-numeric-multiplynpi2args-2',
   'op-numeric-multiplynni2args-1',
   'op-numeric-multiplynni2args-2',
   'op-numeric-multiplynni2args-3',
   'op-numeric-multiplynni2args-4',
   'op-numeric-multiplynni2args-5',
   'op-numeric-multiplymix2args-1',
   'op-numeric-multiplymix2args-2',
   'op-numeric-multiplymix2args-3',
   'op-numeric-multiplymix2args-4',
   'op-numeric-multiplymix2args-5',
   'op-numeric-multiplymix2args-6',
   'op-numeric-multiplymix2args-7',
   'op-numeric-multiplymix2args-8',
   'op-numeric-multiplymix2args-9',
   'K-NumericMultiply-1',
   'K-NumericMultiply-2',
   'K-NumericMultiply-3',
   'K-NumericMultiply-4',
   'K-NumericMultiply-5',
   'K-NumericMultiply-6',
   'K-NumericMultiply-7',
   'K-NumericMultiply-8',
   'K-NumericMultiply-9',
   'K-NumericMultiply-10',
   'K-NumericMultiply-11',
   'K-NumericMultiply-12',
   'K-NumericMultiply-13',
   'K-NumericMultiply-14',
   'K-NumericMultiply-15',
   'K-NumericMultiply-16',
   'K-NumericMultiply-17',
   'K-NumericMultiply-18',
   'K-NumericMultiply-19',
   'K-NumericMultiply-20',
   'K-NumericMultiply-21',
   'K-NumericMultiply-22',
   'K-NumericMultiply-23',
   'K-NumericMultiply-24',
   'K-NumericMultiply-25',
   'K-NumericMultiply-26',
   'K-NumericMultiply-27',
   'K-NumericMultiply-28',
   'K-NumericMultiply-29',
   'K-NumericMultiply-30',
   'K-NumericMultiply-31',
   'K-NumericMultiply-32',
   'K-NumericMultiply-33',
   'op-numeric-multiply-1',
   'cbcl-numeric-multiply-001',
   'cbcl-numeric-multiply-002',
   'cbcl-numeric-multiply-003',
   'cbcl-numeric-multiply-004',
   'cbcl-numeric-multiply-005',
   'cbcl-numeric-multiply-006',
   'cbcl-numeric-multiply-007',
   'cbcl-numeric-multiply-008',
   'cbcl-numeric-multiply-009',
   'cbcl-numeric-multiply-010',
   'cbcl-numeric-multiply-011',
   'cbcl-numeric-multiply-012',
   'cbcl-numeric-multiply-013',
   'cbcl-numeric-multiply-014',
   'cbcl-numeric-multiply-015',
   'cbcl-numeric-multiply-016',
   'cbcl-numeric-multiply-017',
   'cbcl-numeric-multiply-018',
   'cbcl-numeric-multiply-019',
   'cbcl-numeric-multiply-020',
   'cbcl-numeric-multiply-021',
   'cbcl-numeric-multiply-022',
   'cbcl-numeric-multiply-023',
   'cbcl-numeric-multiply-024',
   'cbcl-numeric-multiply-025',
   'cbcl-numeric-multiply-026',
   'cbcl-numeric-multiply-027'].
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
].
'op-numeric-multiplydec2args-1'(_Config) ->
   Qry = "xs:decimal(\"-1.0000000000\") * xs:decimal(\"-999999999999999999\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-multiplydec2args-2'(_Config) ->
   Qry = "xs:decimal(\"617375191608514839\") * xs:decimal(\"0\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-multiplydec2args-3'(_Config) ->
   Qry = "xs:decimal(\"999999999999999999\") * xs:decimal(\"-1.0000000000\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-multiplydec2args-4'(_Config) ->
   Qry = "xs:decimal(\"0\") * xs:decimal(\"617375191608514839\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-multiplydec2args-5'(_Config) ->
   Qry = "xs:decimal(\"-1.0000000000\") * xs:decimal(\"999999999999999999\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-multiplydbl2args-1'(_Config) ->
   Qry = "xs:double(\"-1.0000000000\") * xs:double(\"-1.7976931348623157E308\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1.7976931348623157E308") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-multiplydbl2args-2'(_Config) ->
   Qry = "xs:double(\"0\") * xs:double(\"-1.7976931348623157E308\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-multiplydbl2args-3'(_Config) ->
   Qry = "xs:double(\"1.7976931348623157E308\") * xs:double(\"-1.0000000000\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1.7976931348623157E308") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-multiplydbl2args-4'(_Config) ->
   Qry = "xs:double(\"-1.7976931348623157E308\") * xs:double(\"0\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-multiplydbl2args-5'(_Config) ->
   Qry = "xs:double(\"-1.0000000000\") * xs:double(\"1.7976931348623157E308\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1.7976931348623157E308") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-multiplyflt2args-1'(_Config) ->
   Qry = "xs:float(\"-1.0000000000\") * xs:float(\"-3.4028235E38\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"xs:float(3.4028235E38)") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-multiplyflt2args-2'(_Config) ->
   Qry = "xs:float(\"0\") * xs:float(\"-3.4028235E38\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-multiplyflt2args-3'(_Config) ->
   Qry = "xs:float(\"3.4028235E38\") * xs:float(\"-1.0000000000\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"xs:float(-3.4028235E38)") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-multiplyflt2args-4'(_Config) ->
   Qry = "xs:float(\"-3.4028235E38\") * xs:float(\"0\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-multiplyflt2args-5'(_Config) ->
   Qry = "xs:float(\"-1.0000000000\") * xs:float(\"3.4028235E38\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"xs:float(-3.4028235E38)") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-multiplyusht2args-1'(_Config) ->
   Qry = "xs:unsignedShort(\"0\") * xs:unsignedShort(\"0\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-multiplyusht2args-2'(_Config) ->
   Qry = "xs:unsignedShort(\"44633\") * xs:unsignedShort(\"0\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-multiplyusht2args-3'(_Config) ->
   Qry = "xs:unsignedShort(\"65535\") * xs:unsignedShort(\"0\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-multiplyusht2args-4'(_Config) ->
   Qry = "xs:unsignedShort(\"0\") * xs:unsignedShort(\"44633\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-multiplyusht2args-5'(_Config) ->
   Qry = "xs:unsignedShort(\"0\") * xs:unsignedShort(\"65535\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-multiplypint2args-1'(_Config) ->
   Qry = "xs:positiveInteger(\"1\") * xs:positiveInteger(\"1\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-multiplypint2args-2'(_Config) ->
   Qry = "xs:positiveInteger(\"52704602390610033\") * xs:positiveInteger(\"1\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"52704602390610033") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-multiplypint2args-3'(_Config) ->
   Qry = "xs:positiveInteger(\"999999999999999999\") * xs:positiveInteger(\"1\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-multiplypint2args-4'(_Config) ->
   Qry = "xs:positiveInteger(\"1\") * xs:positiveInteger(\"52704602390610033\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"52704602390610033") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-multiplypint2args-5'(_Config) ->
   Qry = "xs:positiveInteger(\"1\") * xs:positiveInteger(\"999999999999999999\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-multiplyulng2args-1'(_Config) ->
   Qry = "xs:unsignedLong(\"0\") * xs:unsignedLong(\"0\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-multiplyulng2args-2'(_Config) ->
   Qry = "xs:unsignedLong(\"130747108607674654\") * xs:unsignedLong(\"0\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-multiplyulng2args-3'(_Config) ->
   Qry = "xs:unsignedLong(\"184467440737095516\") * xs:unsignedLong(\"0\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-multiplyulng2args-4'(_Config) ->
   Qry = "xs:unsignedLong(\"0\") * xs:unsignedLong(\"130747108607674654\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-multiplyulng2args-5'(_Config) ->
   Qry = "xs:unsignedLong(\"0\") * xs:unsignedLong(\"184467440737095516\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-multiplynpi2args-1'(_Config) ->
   Qry = "xs:nonPositiveInteger(\"0\") * xs:nonPositiveInteger(\"-999999999999999999\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-multiplynpi2args-2'(_Config) ->
   Qry = "xs:nonPositiveInteger(\"-999999999999999999\") * xs:nonPositiveInteger(\"0\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-multiplynni2args-1'(_Config) ->
   Qry = "xs:nonNegativeInteger(\"0\") * xs:nonNegativeInteger(\"0\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-multiplynni2args-2'(_Config) ->
   Qry = "xs:nonNegativeInteger(\"303884545991464527\") * xs:nonNegativeInteger(\"0\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-multiplynni2args-3'(_Config) ->
   Qry = "xs:nonNegativeInteger(\"999999999999999999\") * xs:nonNegativeInteger(\"0\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-multiplynni2args-4'(_Config) ->
   Qry = "xs:nonNegativeInteger(\"0\") * xs:nonNegativeInteger(\"303884545991464527\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-multiplynni2args-5'(_Config) ->
   Qry = "xs:nonNegativeInteger(\"0\") * xs:nonNegativeInteger(\"999999999999999999\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-multiplymix2args-1'(_Config) ->
   Qry = "1 * ()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
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
'op-numeric-multiplymix2args-2'(_Config) ->
   Qry = "1 * '1'",
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
'op-numeric-multiplymix2args-3'(_Config) ->
   Qry = "1 * xs:integer('1')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-multiplymix2args-4'(_Config) ->
   Qry = "1 * <a> 2 </a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-multiplymix2args-5'(_Config) ->
   Qry = "1 * <a> <b> 2 </b> </a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-multiplymix2args-6'(_Config) ->
   Qry = "1 * <a> <b> 2</b> <c> 2</c> </a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-multiplymix2args-7'(_Config) ->
   Qry = "<a> 1 </a> * <b> 2 </b>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-multiplymix2args-8'(_Config) ->
   Qry = "1 * <a> x </a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-multiplymix2args-9'(_Config) ->
   Qry = "1 * <a/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NumericMultiply-1'(_Config) ->
   Qry = "xs:double(6) * xs:double(2) eq 12",
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
'K-NumericMultiply-2'(_Config) ->
   Qry = "xs:decimal(6) * xs:decimal(2) eq 12",
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
'K-NumericMultiply-3'(_Config) ->
   Qry = "xs:integer(6) * xs:integer(2) eq 12",
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
'K-NumericMultiply-4'(_Config) ->
   Qry = "xs:float(6) * xs:float(2) eq 12",
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
'K-NumericMultiply-5'(_Config) ->
   Qry = "(xs:decimal(6) * xs:integer(2)) instance of xs:decimal",
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
'K-NumericMultiply-6'(_Config) ->
   Qry = "(xs:integer(6) * xs:decimal(2)) instance of xs:decimal",
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
'K-NumericMultiply-7'(_Config) ->
   Qry = "(xs:integer(6) * xs:integer(2)) instance of xs:integer",
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
'K-NumericMultiply-8'(_Config) ->
   Qry = "(xs:decimal(6) * xs:decimal(2)) instance of xs:decimal",
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
'K-NumericMultiply-9'(_Config) ->
   Qry = "(xs:decimal(6) * xs:float(2)) instance of xs:float",
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
'K-NumericMultiply-10'(_Config) ->
   Qry = "(xs:float(6) * xs:decimal(2)) instance of xs:float",
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
'K-NumericMultiply-11'(_Config) ->
   Qry = "(xs:float(6) * xs:integer(2)) instance of xs:float",
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
'K-NumericMultiply-12'(_Config) ->
   Qry = "(xs:integer(6) * xs:float(2)) instance of xs:float",
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
'K-NumericMultiply-13'(_Config) ->
   Qry = "(xs:float(6) * xs:float(2)) instance of xs:float",
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
'K-NumericMultiply-14'(_Config) ->
   Qry = "(xs:decimal(6) * xs:double(2)) instance of xs:double",
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
'K-NumericMultiply-15'(_Config) ->
   Qry = "(xs:double(6) * xs:decimal(2)) instance of xs:double",
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
'K-NumericMultiply-16'(_Config) ->
   Qry = "(xs:double(6) * xs:float(2)) instance of xs:double",
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
'K-NumericMultiply-17'(_Config) ->
   Qry = "(xs:float(6) * xs:double(2)) instance of xs:double",
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
'K-NumericMultiply-18'(_Config) ->
   Qry = "(xs:double(6) * xs:integer(2)) instance of xs:double",
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
'K-NumericMultiply-19'(_Config) ->
   Qry = "(xs:integer(6) * xs:double(2)) instance of xs:double",
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
'K-NumericMultiply-20'(_Config) ->
   Qry = "(xs:double(6) * xs:double(2)) instance of xs:double",
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
'K-NumericMultiply-21'(_Config) ->
   Qry = "string(xs:float(\"NaN\") * 3) eq \"NaN\"",
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
'K-NumericMultiply-22'(_Config) ->
   Qry = "string(xs:double(\"NaN\") * 3) eq \"NaN\"",
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
'K-NumericMultiply-23'(_Config) ->
   Qry = "string(3 * xs:float(\"NaN\")) eq \"NaN\"",
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
'K-NumericMultiply-24'(_Config) ->
   Qry = "string(3 * xs:double(\"NaN\")) eq \"NaN\"",
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
'K-NumericMultiply-25'(_Config) ->
   Qry = "/*5",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NumericMultiply-26'(_Config) ->
   Qry = "/ * 5",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NumericMultiply-27'(_Config) ->
   Qry = "4 + / * 5",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NumericMultiply-28'(_Config) ->
   Qry = "\"3\" * \"3\"",
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
'K-NumericMultiply-29'(_Config) ->
   Qry = "1 * \"3\"",
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
'K-NumericMultiply-30'(_Config) ->
   Qry = "(3 * xs:untypedAtomic(3)) eq 9",
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
'K-NumericMultiply-31'(_Config) ->
   Qry = "(xs:untypedAtomic(3) * 3) eq 9",
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
'K-NumericMultiply-32'(_Config) ->
   Qry = "empty(() * ())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
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
'K-NumericMultiply-33'(_Config) ->
   Qry = "empty(() * 1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
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
'op-numeric-multiply-1'(_Config) ->
   Qry = "
         for $x in (1, xs:decimal(2), xs:float(3), xs:double(4), xs:untypedAtomic(5)) 
         for $y in (1, xs:decimal(2), xs:float(3), xs:double(4), xs:untypedAtomic(5))
         return ($x * $y)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"$result[1] instance of xs:integer") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result[2] instance of xs:decimal") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result[3] instance of xs:float") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result[4] instance of xs:double") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result[5] instance of xs:double") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result[6] instance of xs:decimal") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result[7] instance of xs:decimal") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result[8] instance of xs:float") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result[9] instance of xs:double") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result[10] instance of xs:double") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result[11] instance of xs:float") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result[12] instance of xs:float") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result[13] instance of xs:float") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result[14] instance of xs:double") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result[15] instance of xs:double") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result[16] instance of xs:double") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result[17] instance of xs:double") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result[18] instance of xs:double") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result[19] instance of xs:double") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result[20] instance of xs:double") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result[21] instance of xs:double") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result[22] instance of xs:double") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result[23] instance of xs:double") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result[24] instance of xs:double") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result[25] instance of xs:double") of 
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
'cbcl-numeric-multiply-001'(_Config) ->
   Qry = "
      	declare function local:square($arg as xs:double) as xs:double { $arg * $arg }; 
      	xs:double('NaN') * local:square(7)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "NaN") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-numeric-multiply-002'(_Config) ->
   Qry = "
      	declare function local:square($arg as xs:double) as xs:double { $arg * $arg }; 
      	local:square(7) * xs:double('NaN')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "NaN") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-numeric-multiply-003'(_Config) ->
   Qry = "
      	declare function local:square($arg as xs:double) as xs:double { $arg * $arg }; 
      	local:square(7) * 1e0",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "49") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-numeric-multiply-004'(_Config) ->
   Qry = "
      	declare function local:square($arg as xs:double) as xs:double { $arg * $arg }; 
      	1e0 * local:square(7)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "49") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-numeric-multiply-005'(_Config) ->
   Qry = "
      	declare function local:square($arg as xs:double) as xs:double { $arg * $arg }; 
      	local:square(7) * -1e0",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-49") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-numeric-multiply-006'(_Config) ->
   Qry = "
      	declare function local:square($arg as xs:double) as xs:double { $arg * $arg }; 
      	-1e0 * local:square(7)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-49") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-numeric-multiply-007'(_Config) ->
   Qry = "
      	declare function local:square($arg as xs:float) as xs:float { $arg * $arg }; 
      	xs:float('NaN') * local:square(7)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "NaN") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-numeric-multiply-008'(_Config) ->
   Qry = "
      	declare function local:square($arg as xs:float) as xs:float { $arg * $arg }; 
      	local:square(7) * xs:float('NaN')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "NaN") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-numeric-multiply-009'(_Config) ->
   Qry = "
      	declare function local:square($arg as xs:float) as xs:float { $arg * $arg }; 
      	local:square(7) * xs:float(1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "49") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-numeric-multiply-010'(_Config) ->
   Qry = "
      	declare function local:square($arg as xs:float) as xs:float { $arg * $arg }; 
      	xs:float(1) * local:square(7)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "49") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-numeric-multiply-011'(_Config) ->
   Qry = "
      	declare function local:square($arg as xs:float) as xs:float { $arg * $arg }; 
      	local:square(7) * xs:float(-1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-49") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-numeric-multiply-012'(_Config) ->
   Qry = "
      	declare function local:square($arg as xs:float) as xs:float { $arg * $arg }; 
      	xs:float(-1) * local:square(7)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-49") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-numeric-multiply-013'(_Config) ->
   Qry = "
      	declare function local:square($arg as xs:decimal) as xs:decimal { $arg * $arg }; 
      	local:square(2.0) * 0.0",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-numeric-multiply-014'(_Config) ->
   Qry = "
      	declare function local:square($arg as xs:decimal) as xs:decimal { $arg * $arg }; 
      	0.0 * local:square(7.0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-numeric-multiply-015'(_Config) ->
   Qry = "
      	declare function local:square($arg as xs:decimal) as xs:decimal { $arg * $arg }; 
      	local:square(7.0) * 1.0",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "49") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-numeric-multiply-016'(_Config) ->
   Qry = "
      	declare function local:square($arg as xs:decimal) as xs:decimal { $arg * $arg }; 
      	1.0 * local:square(7.0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "49") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-numeric-multiply-017'(_Config) ->
   Qry = "
      	declare function local:square($arg as xs:decimal) as xs:decimal { $arg * $arg }; 
      	local:square(7.0) * -1.0",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-49") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-numeric-multiply-018'(_Config) ->
   Qry = "
      	declare function local:square($arg as xs:decimal) as xs:decimal { $arg * $arg }; 
      	-1.0 * local:square(7.0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-49") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-numeric-multiply-019'(_Config) ->
   Qry = "
      	declare function local:square($arg as xs:integer) as xs:integer { $arg * $arg }; 
      	local:square(2) * 0",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-numeric-multiply-020'(_Config) ->
   Qry = "
      	declare function local:square($arg as xs:integer) as xs:integer { $arg * $arg }; 
      	0 * local:square(2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-numeric-multiply-021'(_Config) ->
   Qry = "
      	declare function local:square($arg as xs:integer) as xs:integer { $arg * $arg }; 
      	local:square(7) * 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "49") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-numeric-multiply-022'(_Config) ->
   Qry = "
      	declare function local:square($arg as xs:integer) as xs:integer { $arg * $arg }; 
      	1 * local:square(7)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "49") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-numeric-multiply-023'(_Config) ->
   Qry = "
      	declare function local:square($arg as xs:integer) as xs:integer { $arg * $arg }; 
      	local:square(7) * -1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-49") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-numeric-multiply-024'(_Config) ->
   Qry = "
      	declare function local:square($arg as xs:integer) as xs:integer { $arg * $arg }; 
      	-1 * local:square(7)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-49") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-numeric-multiply-025'(_Config) ->
   Qry = "
      	declare function local:square($arg as xs:decimal) as xs:decimal { $arg * $arg }; 
      	local:square(9223372036854775808.1) gt 0",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOAR0002") of 
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
'cbcl-numeric-multiply-026'(_Config) ->
   Qry = "
      	declare function local:square($arg as xs:integer) as xs:integer { $arg * $arg }; 
      	local:square(9223372036854775808) gt 0",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOAR0002") of 
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
'cbcl-numeric-multiply-027'(_Config) ->
   Qry = "
      	declare function local:integer($x as xs:decimal) { if ($x mod 1 eq 0) then xs:integer($x) else $x }; 
      	(local:integer(2) * local:integer(2)) instance of xs:integer",
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
