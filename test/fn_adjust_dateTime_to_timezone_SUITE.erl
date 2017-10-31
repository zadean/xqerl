-module('fn_adjust_dateTime_to_timezone_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-adjust-dateTime-to-timezone1args-1'/1]).
-export(['fn-adjust-dateTime-to-timezone1args-2'/1]).
-export(['fn-adjust-dateTime-to-timezone1args-3'/1]).
-export(['fn-adjust-dateTime-to-timezone-1'/1]).
-export(['fn-adjust-dateTime-to-timezone-2'/1]).
-export(['fn-adjust-dateTime-to-timezone-3'/1]).
-export(['fn-adjust-dateTime-to-timezone-4'/1]).
-export(['fn-adjust-dateTime-to-timezone-5'/1]).
-export(['fn-adjust-dateTime-to-timezone-6'/1]).
-export(['fn-adjust-dateTime-to-timezone-7'/1]).
-export(['fn-adjust-dateTime-to-timezone-8'/1]).
-export(['fn-adjust-dateTime-to-timezone-9'/1]).
-export(['fn-adjust-dateTime-to-timezone-10'/1]).
-export(['fn-adjust-dateTime-to-timezone-11'/1]).
-export(['fn-adjust-dateTime-to-timezone-12'/1]).
-export(['fn-adjust-dateTime-to-timezone-13'/1]).
-export(['fn-adjust-dateTime-to-timezone-14'/1]).
-export(['fn-adjust-dateTime-to-timezone-15'/1]).
-export(['fn-adjust-dateTime-to-timezone-16'/1]).
-export(['fn-adjust-dateTime-to-timezone-17'/1]).
-export(['fn-adjust-dateTime-to-timezone-18'/1]).
-export(['fn-adjust-dateTime-to-timezone-19'/1]).
-export(['fn-adjust-dateTime-to-timezone-20'/1]).
-export(['fn-adjust-dateTime-to-timezone-21'/1]).
-export(['fn-adjust-dateTime-to-timezone-22'/1]).
-export(['fn-adjust-dateTime-to-timezone-23'/1]).
-export(['fn-adjust-dateTime-to-timezone-24'/1]).
-export(['K-AdjDateTimeToTimezoneFunc-1'/1]).
-export(['K-AdjDateTimeToTimezoneFunc-2'/1]).
-export(['K-AdjDateTimeToTimezoneFunc-3'/1]).
-export(['K-AdjDateTimeToTimezoneFunc-4'/1]).
-export(['K-AdjDateTimeToTimezoneFunc-5'/1]).
-export(['K-AdjDateTimeToTimezoneFunc-6'/1]).
-export(['K-AdjDateTimeToTimezoneFunc-7'/1]).
-export(['K-AdjDateTimeToTimezoneFunc-8'/1]).
-export(['K-AdjDateTimeToTimezoneFunc-9'/1]).
-export(['K-AdjDateTimeToTimezoneFunc-10'/1]).
-export(['K-AdjDateTimeToTimezoneFunc-11'/1]).
-export(['K-AdjDateTimeToTimezoneFunc-12'/1]).
-export(['K-AdjDateTimeToTimezoneFunc-13'/1]).
-export(['K-AdjDateTimeToTimezoneFunc-14'/1]).
-export(['K-AdjDateTimeToTimezoneFunc-15'/1]).
-export(['K-AdjDateTimeToTimezoneFunc-16'/1]).
-export(['K2-AdjDateTimeToTimezoneFunc-1'/1]).
-export(['cbcl-adjust-dateTime-to-timezone-001'/1]).
-export(['cbcl-adjust-dateTime-to-timezone-002'/1]).
-export(['cbcl-adjust-dateTime-to-timezone-003'/1]).
-export(['cbcl-adjust-dateTime-to-timezone-004'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-adjust-dateTime-to-timezone1args-1',
   'fn-adjust-dateTime-to-timezone1args-2',
   'fn-adjust-dateTime-to-timezone1args-3',
   'fn-adjust-dateTime-to-timezone-1',
   'fn-adjust-dateTime-to-timezone-2',
   'fn-adjust-dateTime-to-timezone-3',
   'fn-adjust-dateTime-to-timezone-4',
   'fn-adjust-dateTime-to-timezone-5',
   'fn-adjust-dateTime-to-timezone-6',
   'fn-adjust-dateTime-to-timezone-7',
   'fn-adjust-dateTime-to-timezone-8',
   'fn-adjust-dateTime-to-timezone-9',
   'fn-adjust-dateTime-to-timezone-10',
   'fn-adjust-dateTime-to-timezone-11',
   'fn-adjust-dateTime-to-timezone-12',
   'fn-adjust-dateTime-to-timezone-13',
   'fn-adjust-dateTime-to-timezone-14',
   'fn-adjust-dateTime-to-timezone-15',
   'fn-adjust-dateTime-to-timezone-16',
   'fn-adjust-dateTime-to-timezone-17',
   'fn-adjust-dateTime-to-timezone-18',
   'fn-adjust-dateTime-to-timezone-19',
   'fn-adjust-dateTime-to-timezone-20',
   'fn-adjust-dateTime-to-timezone-21',
   'fn-adjust-dateTime-to-timezone-22',
   'fn-adjust-dateTime-to-timezone-23',
   'fn-adjust-dateTime-to-timezone-24',
   'K-AdjDateTimeToTimezoneFunc-1',
   'K-AdjDateTimeToTimezoneFunc-2',
   'K-AdjDateTimeToTimezoneFunc-3',
   'K-AdjDateTimeToTimezoneFunc-4',
   'K-AdjDateTimeToTimezoneFunc-5',
   'K-AdjDateTimeToTimezoneFunc-6',
   'K-AdjDateTimeToTimezoneFunc-7',
   'K-AdjDateTimeToTimezoneFunc-8',
   'K-AdjDateTimeToTimezoneFunc-9',
   'K-AdjDateTimeToTimezoneFunc-10',
   'K-AdjDateTimeToTimezoneFunc-11',
   'K-AdjDateTimeToTimezoneFunc-12',
   'K-AdjDateTimeToTimezoneFunc-13',
   'K-AdjDateTimeToTimezoneFunc-14',
   'K-AdjDateTimeToTimezoneFunc-15',
   'K-AdjDateTimeToTimezoneFunc-16',
   'K2-AdjDateTimeToTimezoneFunc-1',
   'cbcl-adjust-dateTime-to-timezone-001',
   'cbcl-adjust-dateTime-to-timezone-002',
   'cbcl-adjust-dateTime-to-timezone-003',
   'cbcl-adjust-dateTime-to-timezone-004'].
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
'fn-adjust-dateTime-to-timezone1args-1'(_Config) ->
   Qry = "fn:adjust-dateTime-to-timezone(xs:dateTime(\"1970-01-01T00:00:00Z\"),xs:dayTimeDuration(\"-PT10H\"))",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1969-12-31T14:00:00-10:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-adjust-dateTime-to-timezone1args-2'(_Config) ->
   Qry = "fn:adjust-dateTime-to-timezone(xs:dateTime(\"1996-04-07T01:40:52Z\"),xs:dayTimeDuration(\"-PT10H\"))",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1996-04-06T15:40:52-10:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-adjust-dateTime-to-timezone1args-3'(_Config) ->
   Qry = "fn:adjust-dateTime-to-timezone(xs:dateTime(\"2030-12-31T23:59:59Z\"),xs:dayTimeDuration(\"-PT10H\"))",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2030-12-31T13:59:59-10:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-adjust-dateTime-to-timezone-1'(_Config) ->
   Qry = "fn:adjust-dateTime-to-timezone(xs:dateTime(\"2002-03-07T10:00:00-05:00\"),xs:dayTimeDuration(\"-PT5H0M\"))",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2002-03-07T10:00:00-05:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-adjust-dateTime-to-timezone-2'(_Config) ->
   Qry = "fn:adjust-dateTime-to-timezone(xs:dateTime(\"2002-03-07T10:00:00-07:00\"),xs:dayTimeDuration(\"-PT5H0M\"))",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2002-03-07T12:00:00-05:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-adjust-dateTime-to-timezone-3'(_Config) ->
   Qry = "let $tz := xs:dayTimeDuration(\"-PT10H\") return fn:adjust-dateTime-to-timezone(xs:dateTime(\"2002-03-07T10:00:00\"), $tz)",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2002-03-07T10:00:00-10:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-adjust-dateTime-to-timezone-4'(_Config) ->
   Qry = "let $tz := xs:dayTimeDuration(\"-PT10H\") return fn:adjust-dateTime-to-timezone(xs:dateTime(\"2002-03-07T10:00:00-07:00\"), $tz)",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2002-03-07T07:00:00-10:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-adjust-dateTime-to-timezone-5'(_Config) ->
   Qry = "fn:adjust-dateTime-to-timezone(xs:dateTime(\"2002-03-07T10:00:00-07:00\"), xs:dayTimeDuration(\"PT10H\"))",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2002-03-08T03:00:00+10:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-adjust-dateTime-to-timezone-6'(_Config) ->
   Qry = "fn:adjust-dateTime-to-timezone(xs:dateTime(\"2002-03-07T00:00:00+01:00\"), xs:dayTimeDuration(\"-PT8H\"))",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2002-03-06T15:00:00-08:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-adjust-dateTime-to-timezone-7'(_Config) ->
   Qry = "fn:adjust-dateTime-to-timezone(xs:dateTime(\"2002-03-07T10:00:00\"), ())",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2002-03-07T10:00:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-adjust-dateTime-to-timezone-8'(_Config) ->
   Qry = "fn:adjust-dateTime-to-timezone(xs:dateTime(\"2002-03-07T10:00:00-07:00\"), ())",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2002-03-07T10:00:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-adjust-dateTime-to-timezone-9'(_Config) ->
   Qry = "fn:adjust-dateTime-to-timezone(xs:dateTime(\"2002-03-07T10:00:00-07:00\")) - fn:adjust-dateTime-to-timezone(xs:dateTime(\"2006-03-07T10:00:00-07:00\"))",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-P1461D") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-adjust-dateTime-to-timezone-10'(_Config) ->
   Qry = "fn:adjust-dateTime-to-timezone(xs:dateTime(\"2002-03-07T10:00:00-07:00\")) - fn:adjust-dateTime-to-timezone(xs:dateTime(\"2002-03-07T10:00:00-07:00\"))",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "PT0S") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-adjust-dateTime-to-timezone-11'(_Config) ->
   Qry = "fn:string(fn:adjust-dateTime-to-timezone(xs:dateTime(\"2002-03-07T10:00:00-04:00\"),()))",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2002-03-07T10:00:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-adjust-dateTime-to-timezone-12'(_Config) ->
   Qry = "fn:boolean(fn:string(fn:adjust-dateTime-to-timezone(xs:dateTime(\"2002-03-07T10:00:00-04:00\"),())))",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'fn-adjust-dateTime-to-timezone-13'(_Config) ->
   Qry = "fn:not(fn:string(fn:adjust-dateTime-to-timezone(xs:dateTime(\"2002-03-07T10:00:00-04:00\"),())))",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'fn-adjust-dateTime-to-timezone-14'(_Config) ->
   Qry = "fn:string(fn:adjust-dateTime-to-timezone(xs:dateTime(\"2002-03-07T10:00:00-04:00\"),())) or fn:true()",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'fn-adjust-dateTime-to-timezone-15'(_Config) ->
   Qry = "fn:string(fn:adjust-dateTime-to-timezone(xs:dateTime(\"2002-03-07T10:00:00-04:00\"),())) or fn:false()",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'fn-adjust-dateTime-to-timezone-16'(_Config) ->
   Qry = "fn:string(fn:adjust-dateTime-to-timezone(xs:dateTime(\"2002-03-07T10:00:00-04:00\"),())) and fn:true()",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'fn-adjust-dateTime-to-timezone-17'(_Config) ->
   Qry = "fn:string(fn:adjust-dateTime-to-timezone(xs:dateTime(\"2002-03-07T10:00:00-04:00\"),())) and fn:false()",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'fn-adjust-dateTime-to-timezone-18'(_Config) ->
   Qry = "fn:adjust-dateTime-to-timezone(xs:dateTime(\"2002-03-07T10:00:00-04:00\")) - xs:dateTime(\"2006-03-07T10:00:00-05:00\")",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-P1461DT1H") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-adjust-dateTime-to-timezone-19'(_Config) ->
   Qry = "fn:adjust-dateTime-to-timezone(xs:dateTime(\"2002-03-07T10:00:00-04:00\")) - xs:dateTime(\"2001-03-07T10:00:00-05:00\")",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "P364DT23H") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-adjust-dateTime-to-timezone-20'(_Config) ->
   Qry = "fn:adjust-dateTime-to-timezone(xs:dateTime(\"2002-03-07T10:00:00-04:00\")) ge fn:adjust-dateTime-to-timezone(xs:dateTime(\"2005-03-07T10:00:00-04:00\"))",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'fn-adjust-dateTime-to-timezone-21'(_Config) ->
   Qry = "fn:count(fn:adjust-dateTime-to-timezone(()))",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'fn-adjust-dateTime-to-timezone-22'(_Config) ->
   Qry = "fn:adjust-dateTime-to-timezone(xs:dateTime(\"2002-03-07T10:00:00-04:00\"),xs:dayTimeDuration(\"-PT15H\"))",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODT0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-adjust-dateTime-to-timezone-23'(_Config) ->
   Qry = "fn:adjust-dateTime-to-timezone(xs:dateTime(\"2002-03-07T10:00:00-04:00\"),xs:dayTimeDuration(\"PT15H\"))",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODT0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-adjust-dateTime-to-timezone-24'(_Config) ->
   Qry = "fn:adjust-dateTime-to-timezone(current-dateTime()[. lt xs:dateTime('2000-01-01T12:00:00Z')])",
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
'K-AdjDateTimeToTimezoneFunc-1'(_Config) ->
   Qry = "adjust-dateTime-to-timezone()",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-AdjDateTimeToTimezoneFunc-2'(_Config) ->
   Qry = "adjust-dateTime-to-timezone((), (), \"WRONG PARAM\")",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-AdjDateTimeToTimezoneFunc-3'(_Config) ->
   Qry = "empty(adjust-dateTime-to-timezone(()))",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'K-AdjDateTimeToTimezoneFunc-4'(_Config) ->
   Qry = "empty(adjust-dateTime-to-timezone((), ()))",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'K-AdjDateTimeToTimezoneFunc-5'(_Config) ->
   Qry = "adjust-dateTime-to-timezone(()) instance of xs:dateTime?",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'K-AdjDateTimeToTimezoneFunc-6'(_Config) ->
   Qry = "timezone-from-dateTime(adjust-dateTime-to-timezone(xs:dateTime(\"2001-02-03T00:00:00\"))) eq implicit-timezone()",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'K-AdjDateTimeToTimezoneFunc-7'(_Config) ->
   Qry = "adjust-dateTime-to-timezone(xs:dateTime(\"2001-02-03T08:02:00\"), xs:dayTimeDuration(\"PT14H1M\"))",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODT0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-AdjDateTimeToTimezoneFunc-8'(_Config) ->
   Qry = "adjust-dateTime-to-timezone(xs:dateTime(\"2001-02-03T08:02:00\"), xs:dayTimeDuration(\"-PT14H1M\"))",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODT0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-AdjDateTimeToTimezoneFunc-9'(_Config) ->
   Qry = "adjust-dateTime-to-timezone(xs:dateTime(\"2001-02-03T08:02:00\"), xs:dayTimeDuration(\"PT14H0M0.001S\"))",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODT0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-AdjDateTimeToTimezoneFunc-10'(_Config) ->
   Qry = "adjust-dateTime-to-timezone(xs:dateTime(\"2002-03-07T10:00:00\"), xs:dayTimeDuration(\"-PT5H0M\")) eq xs:dateTime(\"2002-03-07T10:00:00-05:00\")",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'K-AdjDateTimeToTimezoneFunc-11'(_Config) ->
   Qry = "adjust-dateTime-to-timezone(xs:dateTime(\"2002-03-07T10:00:00-07:00\"), xs:dayTimeDuration(\"-PT5H0M\")) eq xs:dateTime(\"2002-03-07T12:00:00-05:00\")",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'K-AdjDateTimeToTimezoneFunc-12'(_Config) ->
   Qry = "adjust-dateTime-to-timezone(xs:dateTime(\"2002-03-07T10:00:00\"), xs:dayTimeDuration(\"-PT10H\")) eq xs:dateTime(\"2002-03-07T10:00:00-10:00\")",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'K-AdjDateTimeToTimezoneFunc-13'(_Config) ->
   Qry = "adjust-dateTime-to-timezone(xs:dateTime(\"2002-03-07T10:00:00-07:00\"), xs:dayTimeDuration(\"-PT10H\")) eq xs:dateTime(\"2002-03-07T07:00:00-10:00\")",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'K-AdjDateTimeToTimezoneFunc-14'(_Config) ->
   Qry = "adjust-dateTime-to-timezone(xs:dateTime(\"2002-03-07T10:00:00-07:00\"), xs:dayTimeDuration(\"PT10H\")) eq xs:dateTime(\"2002-03-08T03:00:00+10:00\")",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'K-AdjDateTimeToTimezoneFunc-15'(_Config) ->
   Qry = "adjust-dateTime-to-timezone(xs:dateTime(\"2002-03-07T00:00:00+01:00\"), xs:dayTimeDuration(\"-PT8H\")) eq xs:dateTime(\"2002-03-06T15:00:00-08:00\")",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'K-AdjDateTimeToTimezoneFunc-16'(_Config) ->
   Qry = "adjust-dateTime-to-timezone(xs:dateTime(\"2002-03-07T10:00:00\"), ()) eq xs:dateTime(\"2002-03-07T10:00:00\")",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'K2-AdjDateTimeToTimezoneFunc-1'(_Config) ->
   Qry = "fn:adjust-dateTime-to-timezone(xs:dateTime(\"1999-12-31T24:00:00\"), ())",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2000-01-01T00:00:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-adjust-dateTime-to-timezone-001'(_Config) ->
   Qry = "adjust-dateTime-to-timezone(current-dateTime(), implicit-timezone()) eq current-dateTime()",
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
'cbcl-adjust-dateTime-to-timezone-002'(_Config) ->
   Qry = "adjust-dateTime-to-timezone(xs:dateTime(\"-25252734927766555-06-07T01:00:00+02:00\"), xs:dayTimeDuration(\"PT0S\"))",
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
'cbcl-adjust-dateTime-to-timezone-003'(_Config) ->
   Qry = "adjust-dateTime-to-timezone(xs:dateTime(\"25252734927766555-07-28T23:00:00-02:00\"), xs:dayTimeDuration(\"PT0S\"))",
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
'cbcl-adjust-dateTime-to-timezone-004'(_Config) ->
   Qry = "adjust-dateTime-to-timezone(current-dateTime(), xs:dayTimeDuration(\"PT2H\")) eq adjust-dateTime-to-timezone(current-dateTime(), xs:dayTimeDuration(\"-PT2H\"))",
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
