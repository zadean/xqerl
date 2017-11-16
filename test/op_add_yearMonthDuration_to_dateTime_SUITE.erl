-module('op_add_yearMonthDuration_to_dateTime_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['op-add-yearMonthDuration-to-dateTime2args-1'/1]).
-export(['op-add-yearMonthDuration-to-dateTime2args-2'/1]).
-export(['op-add-yearMonthDuration-to-dateTime2args-3'/1]).
-export(['op-add-yearMonthDuration-to-dateTime2args-4'/1]).
-export(['op-add-yearMonthDuration-to-dateTime2args-5'/1]).
-export(['op-add-yearMonthDuration-to-dateTime-1'/1]).
-export(['op-add-yearMonthDuration-to-dateTime-2'/1]).
-export(['op-add-yearMonthDuration-to-dateTime-3'/1]).
-export(['op-add-yearMonthDuration-to-dateTime-4'/1]).
-export(['op-add-yearMonthDuration-to-dateTimealt-5'/1]).
-export(['op-add-yearMonthDuration-to-dateTime-6'/1]).
-export(['op-add-yearMonthDuration-to-dateTime-7'/1]).
-export(['op-add-yearMonthDuration-to-dateTime-8'/1]).
-export(['op-add-yearMonthDuration-to-dateTime-9'/1]).
-export(['op-add-yearMonthDuration-to-dateTime-10'/1]).
-export(['op-add-yearMonthDuration-to-dateTime-12'/1]).
-export(['op-add-yearMonthDuration-to-dateTime-13'/1]).
-export(['op-add-yearMonthDuration-to-dateTime-14'/1]).
-export(['op-add-yearMonthDuration-to-dateTime-15'/1]).
-export(['op-add-yearMonthDuration-to-dateTime-16'/1]).
-export(['K-YearMonthDurationAddDT-1'/1]).
-export(['K-YearMonthDurationAddDT-2'/1]).
-export(['K-YearMonthDurationAddDT-3'/1]).
-export(['K-YearMonthDurationAddDT-4'/1]).
-export(['K-YearMonthDurationAddDT-5'/1]).
-export(['K-YearMonthDurationAddDT-6'/1]).
-export(['cbcl-add-yearMonthDuration-to-dateTime-001'/1]).
-export(['cbcl-add-yearMonthDuration-to-dateTime-002'/1]).
-export(['cbcl-add-yearMonthDuration-to-dateTime-003'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'op-add-yearMonthDuration-to-dateTime2args-1',
   'op-add-yearMonthDuration-to-dateTime2args-2',
   'op-add-yearMonthDuration-to-dateTime2args-3',
   'op-add-yearMonthDuration-to-dateTime2args-4',
   'op-add-yearMonthDuration-to-dateTime2args-5',
   'op-add-yearMonthDuration-to-dateTime-1',
   'op-add-yearMonthDuration-to-dateTime-2',
   'op-add-yearMonthDuration-to-dateTime-3',
   'op-add-yearMonthDuration-to-dateTime-4',
   'op-add-yearMonthDuration-to-dateTimealt-5',
   'op-add-yearMonthDuration-to-dateTime-6',
   'op-add-yearMonthDuration-to-dateTime-7',
   'op-add-yearMonthDuration-to-dateTime-8',
   'op-add-yearMonthDuration-to-dateTime-9',
   'op-add-yearMonthDuration-to-dateTime-10',
   'op-add-yearMonthDuration-to-dateTime-12',
   'op-add-yearMonthDuration-to-dateTime-13',
   'op-add-yearMonthDuration-to-dateTime-14',
   'op-add-yearMonthDuration-to-dateTime-15',
   'op-add-yearMonthDuration-to-dateTime-16',
   'K-YearMonthDurationAddDT-1',
   'K-YearMonthDurationAddDT-2',
   'K-YearMonthDurationAddDT-3',
   'K-YearMonthDurationAddDT-4',
   'K-YearMonthDurationAddDT-5',
   'K-YearMonthDurationAddDT-6',
   'cbcl-add-yearMonthDuration-to-dateTime-001',
   'cbcl-add-yearMonthDuration-to-dateTime-002',
   'cbcl-add-yearMonthDuration-to-dateTime-003'].
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
].
'op-add-yearMonthDuration-to-dateTime2args-1'(_Config) ->
   Qry = "xs:dateTime(\"1970-01-01T00:00:00Z\") + xs:yearMonthDuration(\"P0Y0M\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1970-01-01T00:00:00Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-add-yearMonthDuration-to-dateTime2args-2'(_Config) ->
   Qry = "xs:dateTime(\"1996-04-07T01:40:52Z\") + xs:yearMonthDuration(\"P0Y0M\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1996-04-07T01:40:52Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-add-yearMonthDuration-to-dateTime2args-3'(_Config) ->
   Qry = "xs:dateTime(\"2030-12-31T23:59:59Z\") + xs:yearMonthDuration(\"P0Y0M\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2030-12-31T23:59:59Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-add-yearMonthDuration-to-dateTime2args-4'(_Config) ->
   Qry = "xs:dateTime(\"1970-01-01T00:00:00Z\") + xs:yearMonthDuration(\"P1000Y6M\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2970-07-01T00:00:00Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-add-yearMonthDuration-to-dateTime2args-5'(_Config) ->
   Qry = "xs:dateTime(\"1970-01-01T00:00:00Z\") + xs:yearMonthDuration(\"P2030Y12M\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "4001-01-01T00:00:00Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-add-yearMonthDuration-to-dateTime-1'(_Config) ->
   Qry = "xs:dateTime(\"2000-10-30T11:12:00\") + xs:yearMonthDuration(\"P1Y2M\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2001-12-30T11:12:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-add-yearMonthDuration-to-dateTime-2'(_Config) ->
   Qry = "fn:string(xs:dateTime(\"2000-12-12T12:12:12Z\") + xs:dayTimeDuration(\"P12DT10H07M\")) and fn:false()",
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
'op-add-yearMonthDuration-to-dateTime-3'(_Config) ->
   Qry = "fn:string((xs:dateTime(\"1999-10-23T13:45:45Z\") + xs:yearMonthDuration(\"P19Y12M\"))) or fn:false()",
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
'op-add-yearMonthDuration-to-dateTime-4'(_Config) ->
   Qry = "fn:not(fn:string(xs:dateTime(\"1998-09-12T13:56:12Z\") + xs:yearMonthDuration(\"P20Y03M\")))",
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
'op-add-yearMonthDuration-to-dateTimealt-5'(_Config) ->
   Qry = "fn:boolean(fn:string(xs:dateTime(\"1962-03-12T10:12:34Z\") + xs:yearMonthDuration(\"P10Y01M\")))",
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
'op-add-yearMonthDuration-to-dateTime-6'(_Config) ->
   Qry = "fn:number(xs:dateTime(\"1988-01-28T13:45:23Z\") + xs:yearMonthDuration(\"P09Y02M\"))",
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
'op-add-yearMonthDuration-to-dateTime-7'(_Config) ->
   Qry = "fn:string(xs:dateTime(\"1989-07-05T14:34:36Z\") + xs:yearMonthDuration(\"P08Y04M\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1997-11-05T14:34:36Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-add-yearMonthDuration-to-dateTime-8'(_Config) ->
   Qry = "(xs:dateTime(\"0001-01-01T01:01:01Z\") + xs:yearMonthDuration(\"-P20Y07M\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "-0021-06-01T01:01:01Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_string_value(Res, "-0020-06-01T01:01:01Z") of 
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
'op-add-yearMonthDuration-to-dateTime-9'(_Config) ->
   Qry = "fn:string((xs:dateTime(\"1993-12-09T10:10:10Z\") + xs:yearMonthDuration(\"P03Y03M\"))) and fn:string((xs:dateTime(\"1993-12-09T10:10:10Z\") + xs:yearMonthDuration(\"P03Y03M\")))",
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
'op-add-yearMonthDuration-to-dateTime-10'(_Config) ->
   Qry = "fn:string((xs:dateTime(\"1985-07-05T09:09:09Z\") + xs:yearMonthDuration(\"P02Y02M\"))) or fn:string((xs:dateTime(\"1985-07-05T09:09:09Z\") + xs:yearMonthDuration(\"P02Y02M\")))",
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
'op-add-yearMonthDuration-to-dateTime-12'(_Config) ->
   Qry = "fn:string((xs:dateTime(\"1980-03-02T02:02:02Z\") + xs:yearMonthDuration(\"P05Y05M\"))) and (fn:true())",
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
'op-add-yearMonthDuration-to-dateTime-13'(_Config) ->
   Qry = "(xs:dateTime(\"1980-05-05T05:05:05Z\") + xs:yearMonthDuration(\"P23Y11M\")) eq xs:dateTime(\"1980-05-05T05:05:05Z\")",
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
'op-add-yearMonthDuration-to-dateTime-14'(_Config) ->
   Qry = "(xs:dateTime(\"1979-12-12T09:09:09Z\") + xs:yearMonthDuration(\"P08Y08M\")) ne xs:dateTime(\"1979-12-12T09:09:09Z\")",
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
'op-add-yearMonthDuration-to-dateTime-15'(_Config) ->
   Qry = "(xs:dateTime(\"1978-12-12T07:07:07Z\") + xs:yearMonthDuration(\"P17Y12M\")) le xs:dateTime(\"1978-12-12T07:07:07Z\")",
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
'op-add-yearMonthDuration-to-dateTime-16'(_Config) ->
   Qry = "(xs:dateTime(\"1977-12-12T03:03:03Z\") + xs:yearMonthDuration(\"P18Y02M\")) ge xs:dateTime(\"1977-12-12T03:03:03Z\")",
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
'K-YearMonthDurationAddDT-1'(_Config) ->
   Qry = "xs:dateTime(\"1999-07-19T08:23:01.765\") + xs:yearMonthDuration(\"P3Y35M\") eq xs:dateTime(\"2005-06-19T08:23:01.765\")",
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
'K-YearMonthDurationAddDT-2'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P3Y35M\") + xs:dateTime(\"1999-07-19T08:23:01.765\") eq xs:dateTime(\"2005-06-19T08:23:01.765\")",
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
'K-YearMonthDurationAddDT-3'(_Config) ->
   Qry = "xs:date(\"1999-10-12\") + xs:time(\"08:12:12\")",
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
'K-YearMonthDurationAddDT-4'(_Config) ->
   Qry = "xs:time(\"08:12:12\") + xs:date(\"1999-10-12\")",
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
'K-YearMonthDurationAddDT-5'(_Config) ->
   Qry = "xs:date(\"1999-10-12\") + xs:time(\"08:12:12\")",
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
'K-YearMonthDurationAddDT-6'(_Config) ->
   Qry = "xs:time(\"08:12:12\") + xs:date(\"1999-10-12\")",
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
'cbcl-add-yearMonthDuration-to-dateTime-001'(_Config) ->
   Qry = "
         declare function local:two-digit($number as xs:integer) { 
            let $string := string($number) 
            return if (string-length($string) lt 2) then concat('0', $string) else $string 
         }; 
         declare function local:dateTime($year as xs:integer, $month as xs:integer, $day as xs:integer, $hour as xs:integer, $mins as xs:integer) { 
            let $m := local:two-digit($month), $d := local:two-digit($day), $h := local:two-digit($hour), $n := local:two-digit($mins) 
            return xs:dateTime(concat($year, '-', $m, '-', $d, 'T', $h, ':', $n, ':00')) 
         }; 
         xs:yearMonthDuration(\"P0Y\") + local:dateTime(2008, 05, 12, 12, 59)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2008-05-12T12:59:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-add-yearMonthDuration-to-dateTime-002'(_Config) ->
   Qry = "
         declare function local:two-digit($number as xs:integer) { 
            let $string := string($number) return if (string-length($string) lt 2) then concat('0', $string) else $string 
         }; 
         declare function local:dateTime($year as xs:integer, $month as xs:integer, $day as xs:integer, $hour as xs:integer, $mins as xs:integer) { 
            let $m := local:two-digit($month), $d := local:two-digit($day), $h := local:two-digit($hour), $n := local:two-digit($mins) 
            return xs:dateTime(concat($year, '-', $m, '-', $d, 'T', $h, ':', $n, ':00')) 
         }; 
         local:dateTime(2008, 05, 12, 12, 59) + xs:yearMonthDuration(\"P0Y\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2008-05-12T12:59:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-add-yearMonthDuration-to-dateTime-003'(_Config) ->
   Qry = "
         declare function local:two-digit($number as xs:integer) { 
            let $string := string($number) return if (string-length($string) lt 2) then concat('0', $string) else $string 
         }; 
         declare function local:dateTime($year as xs:integer, $month as xs:integer, $day as xs:integer, $hour as xs:integer, $mins as xs:integer) { 
            let $m := local:two-digit($month), $d := local:two-digit($day), $h := local:two-digit($hour), $n := local:two-digit($mins) 
            return xs:dateTime(concat($year, '-', $m, '-', $d, 'T', $h, ':', $n, ':00')) 
         }; 
         local:dateTime(2008, 05, 12, 12, 59) + xs:yearMonthDuration(\"P4026720960Y\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "4026722968-05-12T12:59:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FODT0002") of 
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
