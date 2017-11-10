-module('op_add_dayTimeDuration_to_date_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['op-add-dayTimeDuration-to-date2args-1'/1]).
-export(['op-add-dayTimeDuration-to-date2args-2'/1]).
-export(['op-add-dayTimeDuration-to-date2args-3'/1]).
-export(['op-add-dayTimeDuration-to-date2args-4'/1]).
-export(['op-add-dayTimeDuration-to-date2args-5'/1]).
-export(['op-add-dayTimeDuration-to-date-1'/1]).
-export(['op-add-dayTimeDuration-to-datealt-2'/1]).
-export(['op-add-dayTimeDuration-to-date-3'/1]).
-export(['op-add-dayTimeDuration-to-date-4'/1]).
-export(['op-add-dayTimeDuration-to-date-5'/1]).
-export(['op-add-dayTimeDuration-to-date-6'/1]).
-export(['op-add-dayTimeDuration-to-date-7'/1]).
-export(['op-add-dayTimeDuration-to-date-8'/1]).
-export(['op-add-dayTimeDuration-to-date-9'/1]).
-export(['op-add-dayTimeDuration-to-date-10'/1]).
-export(['op-add-dayTimeDuration-to-date-12'/1]).
-export(['op-add-dayTimeDuration-to-date-13'/1]).
-export(['op-add-dayTimeDuration-to-date-14'/1]).
-export(['op-add-dayTimeDuration-to-date-15'/1]).
-export(['op-add-dayTimeDuration-to-date-16'/1]).
-export(['K-DateAddDTD-1'/1]).
-export(['K-DateAddDTD-2'/1]).
-export(['cbcl-add-dayTimeDuration-to-date-001'/1]).
-export(['cbcl-add-dayTimeDuration-to-date-002'/1]).
-export(['cbcl-add-dayTimeDuration-to-date-003'/1]).
-export(['Add-UnionType-36'/1]).
-export(['Add-UnionType-37'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'op-add-dayTimeDuration-to-date2args-1',
   'op-add-dayTimeDuration-to-date2args-2',
   'op-add-dayTimeDuration-to-date2args-3',
   'op-add-dayTimeDuration-to-date2args-4',
   'op-add-dayTimeDuration-to-date2args-5',
   'op-add-dayTimeDuration-to-date-1',
   'op-add-dayTimeDuration-to-datealt-2',
   'op-add-dayTimeDuration-to-date-3',
   'op-add-dayTimeDuration-to-date-4',
   'op-add-dayTimeDuration-to-date-5',
   'op-add-dayTimeDuration-to-date-6',
   'op-add-dayTimeDuration-to-date-7',
   'op-add-dayTimeDuration-to-date-8',
   'op-add-dayTimeDuration-to-date-9',
   'op-add-dayTimeDuration-to-date-10',
   'op-add-dayTimeDuration-to-date-12',
   'op-add-dayTimeDuration-to-date-13',
   'op-add-dayTimeDuration-to-date-14',
   'op-add-dayTimeDuration-to-date-15',
   'op-add-dayTimeDuration-to-date-16',
   'K-DateAddDTD-1',
   'K-DateAddDTD-2',
   'cbcl-add-dayTimeDuration-to-date-001',
   'cbcl-add-dayTimeDuration-to-date-002',
   'cbcl-add-dayTimeDuration-to-date-003',
   'Add-UnionType-36',
   'Add-UnionType-37'].
environment('empty') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('atomic') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{resources, []},
{modules, []}
];
environment('atomic-xq') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-mod') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/works-mod.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/works.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('staff') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/staff.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-and-staff') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/works.xml","$works",""},
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
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/auction.xml",".",""}]},
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
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/QName-source.xml",".",""}]},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/QName-schema.xsd","http://www.example.com/QNameXSD"}]},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.example.com/QNameXSD",""}]},
{resources, []},
{modules, []}
];
environment('math') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/math","math"}]},
{resources, []},
{modules, []}
];
environment('array') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"}]},
{resources, []},
{modules, []}
];
environment('map') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('array-and-map') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"},
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('union-List-defined-Types') ->
[{'decimal-formats', []},
{sources, []},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/prod/SchemaImport/unionListDefined.xsd","http://www.w3.org/XQueryTest/unionListDefined"}]},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/op/add-dayTimeDuration-to-date.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'op-add-dayTimeDuration-to-date2args-1'(_Config) ->
   Qry = "xs:date(\"1970-01-01Z\") + xs:dayTimeDuration(\"P0DT0H0M0S\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1970-01-01Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-add-dayTimeDuration-to-date2args-2'(_Config) ->
   Qry = "xs:date(\"1983-11-17Z\") + xs:dayTimeDuration(\"P0DT0H0M0S\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1983-11-17Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-add-dayTimeDuration-to-date2args-3'(_Config) ->
   Qry = "xs:date(\"2030-12-31Z\") + xs:dayTimeDuration(\"P0DT0H0M0S\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2030-12-31Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-add-dayTimeDuration-to-date2args-4'(_Config) ->
   Qry = "xs:date(\"1970-01-01Z\") + xs:dayTimeDuration(\"P15DT11H59M59S\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1970-01-16Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-add-dayTimeDuration-to-date2args-5'(_Config) ->
   Qry = "xs:date(\"1970-01-01Z\") + xs:dayTimeDuration(\"P31DT23H59M59S\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1970-02-01Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-add-dayTimeDuration-to-date-1'(_Config) ->
   Qry = "xs:date(\"2004-10-30Z\") + xs:dayTimeDuration(\"P2DT2H30M0S\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2004-11-01Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-add-dayTimeDuration-to-datealt-2'(_Config) ->
   Qry = "fn:string((xs:date(\"2000-12-12Z\") + xs:dayTimeDuration(\"P19DT13H10M\"))) and fn:false()",
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
'op-add-dayTimeDuration-to-date-3'(_Config) ->
   Qry = "fn:string((xs:date(\"1999-10-23Z\") + xs:dayTimeDuration(\"P19DT13H10M\"))) or fn:false()",
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
'op-add-dayTimeDuration-to-date-4'(_Config) ->
   Qry = "fn:not(fn:string(xs:date(\"1998-09-12Z\") + xs:dayTimeDuration(\"P02DT07H01M\")))",
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
'op-add-dayTimeDuration-to-date-5'(_Config) ->
   Qry = "fn:boolean(fn:string(xs:date(\"1962-03-12Z\") + xs:dayTimeDuration(\"P03DT08H06M\")))",
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
'op-add-dayTimeDuration-to-date-6'(_Config) ->
   Qry = "fn:number(xs:date(\"1988-01-28Z\") + xs:dayTimeDuration(\"P10DT08H01M\"))",
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
'op-add-dayTimeDuration-to-date-7'(_Config) ->
   Qry = "fn:string(xs:date(\"1989-07-05Z\") + xs:dayTimeDuration(\"P01DT09H02M\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1989-07-06Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-add-dayTimeDuration-to-date-8'(_Config) ->
   Qry = "(xs:date(\"0001-01-01Z\") + xs:dayTimeDuration(\"-P11DT02H02M\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "-0001-12-20Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_string_value(Res, "0000-12-20Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-add-dayTimeDuration-to-date-9'(_Config) ->
   Qry = "fn:string((xs:date(\"1993-12-09Z\") + xs:dayTimeDuration(\"P03DT01H04M\"))) and fn:string((xs:date(\"1993-12-09Z\") + xs:dayTimeDuration(\"P01DT01H03M\")))",
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
'op-add-dayTimeDuration-to-date-10'(_Config) ->
   Qry = "fn:string((xs:date(\"1985-07-05Z\") + xs:dayTimeDuration(\"P03DT01H04M\"))) or fn:string((xs:date(\"1985-07-05Z\") + xs:dayTimeDuration(\"P01DT01H03M\")))",
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
'op-add-dayTimeDuration-to-date-12'(_Config) ->
   Qry = "fn:string((xs:date(\"1980-03-02Z\") + xs:dayTimeDuration(\"P05DT08H11M\"))) and (fn:true())",
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
'op-add-dayTimeDuration-to-date-13'(_Config) ->
   Qry = "(xs:date(\"1980-05-05Z\") + xs:dayTimeDuration(\"P23DT11H11M\")) eq xs:date(\"1980-05-05Z\")",
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
'op-add-dayTimeDuration-to-date-14'(_Config) ->
   Qry = "(xs:date(\"1979-12-12Z\") + xs:dayTimeDuration(\"P08DT08H05M\")) ne xs:date(\"1979-12-12Z\")",
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
'op-add-dayTimeDuration-to-date-15'(_Config) ->
   Qry = "(xs:date(\"1978-12-12Z\") + xs:dayTimeDuration(\"P17DT10H02M\")) le xs:date(\"1978-12-12Z\")",
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
'op-add-dayTimeDuration-to-date-16'(_Config) ->
   Qry = "(xs:date(\"1977-12-12Z\") + xs:dayTimeDuration(\"P18DT02H02M\")) ge xs:date(\"1977-12-12Z\")",
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
'K-DateAddDTD-1'(_Config) ->
   Qry = "xs:date(\"1999-08-12\") + xs:dayTimeDuration(\"P23DT09H32M59S\") eq xs:date(\"1999-09-04\")",
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
'K-DateAddDTD-2'(_Config) ->
   Qry = "xs:dayTimeDuration(\"P23DT09H32M59S\") + xs:date(\"1999-08-12\") eq xs:date(\"1999-09-04\")",
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
'cbcl-add-dayTimeDuration-to-date-001'(_Config) ->
   Qry = "
      	declare function local:two-digit($number as xs:integer) { 
      		let $string := string($number) 
      		return if (string-length($string) lt 2) then concat('0', $string) else $string 
      	}; 
      	declare function local:date($year as xs:integer, $month as xs:integer, $day as xs:integer) { 
      		let $m := local:two-digit($month), $d := local:two-digit($day) 
      		return xs:date(concat($year, '-', $m, '-', $d)) 
      	}; 
      	local:date(2008, 05, 12) + xs:dayTimeDuration(\"P0D\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2008-05-12") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-add-dayTimeDuration-to-date-002'(_Config) ->
   Qry = "
      	declare function local:two-digit($number as xs:integer) { 
      		let $string := string($number) 
      		return if (string-length($string) lt 2) then concat('0', $string) else $string 
      	}; 
      	declare function local:date($year as xs:integer, $month as xs:integer, $day as xs:integer) { 
      		let $m := local:two-digit($month), $d := local:two-digit($day) 
      		return xs:date(concat($year, '-', $m, '-', $d)) 
      	}; 
      	xs:dayTimeDuration(\"P0D\") + local:date(2008, 05, 12)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2008-05-12") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-add-dayTimeDuration-to-date-003'(_Config) ->
   Qry = "
      declare function local:two-digit($number as xs:integer) { 
      	let $string := string($number) return if (string-length($string) lt 2) then concat('0', $string) else $string 
      }; 
      declare function local:date($year as xs:integer, $month as xs:integer, $day as xs:integer) { 
      	let $m := local:two-digit($month), $d := local:two-digit($day) return xs:date(concat($year, '-', $m, '-', $d)) 
      }; 
      local:date(25252734927766555, 05, 12) + xs:dayTimeDuration(\"P4267296D\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODT0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Add-UnionType-36'(_Config) ->
   {skip,"schemaImport"}.
'Add-UnionType-37'(_Config) ->
   {skip,"schemaImport"}.
