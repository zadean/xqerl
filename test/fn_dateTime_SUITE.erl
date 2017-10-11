-module('fn_dateTime_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-dateTime-1'/1]).
-export(['fn-dateTime-2'/1]).
-export(['fn-dateTime-3'/1]).
-export(['fn-dateTime-4'/1]).
-export(['fn-dateTime-5'/1]).
-export(['fn-dateTime-6'/1]).
-export(['fn-dateTime-7'/1]).
-export(['fn-dateTime-8'/1]).
-export(['fn-dateTime-9'/1]).
-export(['fn-dateTime-10'/1]).
-export(['fn-dateTime-11'/1]).
-export(['fn-dateTime-12'/1]).
-export(['fn-dateTime-13'/1]).
-export(['fn-dateTime-14'/1]).
-export(['fn-dateTime-15'/1]).
-export(['fn-dateTime-16'/1]).
-export(['fn-dateTime-17'/1]).
-export(['fn-dateTime-18'/1]).
-export(['fn-dateTime-19'/1]).
-export(['fn-dateTime-20'/1]).
-export(['fn-dateTime-21'/1]).
-export(['fn-dateTime-22'/1]).
-export(['fn-dateTime-23'/1]).
-export(['fn-dateTime-24'/1]).
-export(['fn-dateTime-25'/1]).
-export(['fn-dateTime-26'/1]).
-export(['fn-dateTime-27'/1]).
-export(['fn-dateTime-28'/1]).
-export(['fn-dateTime-29'/1]).
-export(['fn-dateTime-30'/1]).
-export(['forg0008-1'/1]).
-export(['K-DateTimeFunc-1'/1]).
-export(['K-DateTimeFunc-2'/1]).
-export(['K-DateTimeFunc-3'/1]).
-export(['K-DateTimeFunc-4'/1]).
-export(['K-DateTimeFunc-5'/1]).
-export(['K-DateTimeFunc-6'/1]).
-export(['K-DateTimeFunc-7'/1]).
-export(['K-DateTimeFunc-8'/1]).
-export(['K-DateTimeFunc-9'/1]).
-export(['K-DateTimeFunc-10'/1]).
-export(['K-DateTimeFunc-11'/1]).
-export(['K-DateTimeFunc-12'/1]).
-export(['K-DateTimeFunc-13'/1]).
-export(['K-DateTimeFunc-14'/1]).
-export(['K-DateTimeFunc-15'/1]).
-export(['K-DateTimeFunc-16'/1]).
-export(['K-DateTimeFunc-17'/1]).
-export(['K-DateTimeFunc-18'/1]).
-export(['K2-DateTimeFunc-1'/1]).
-export(['cbcl-dateTime-001'/1]).
-export(['cbcl-dateTime-002'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-dateTime-1',
   'fn-dateTime-2',
   'fn-dateTime-3',
   'fn-dateTime-4',
   'fn-dateTime-5',
   'fn-dateTime-6',
   'fn-dateTime-7',
   'fn-dateTime-8',
   'fn-dateTime-9',
   'fn-dateTime-10',
   'fn-dateTime-11',
   'fn-dateTime-12',
   'fn-dateTime-13',
   'fn-dateTime-14',
   'fn-dateTime-15',
   'fn-dateTime-16',
   'fn-dateTime-17',
   'fn-dateTime-18',
   'fn-dateTime-19',
   'fn-dateTime-20',
   'fn-dateTime-21',
   'fn-dateTime-22',
   'fn-dateTime-23',
   'fn-dateTime-24',
   'fn-dateTime-25',
   'fn-dateTime-26',
   'fn-dateTime-27',
   'fn-dateTime-28',
   'fn-dateTime-29',
   'fn-dateTime-30',
   'forg0008-1',
   'K-DateTimeFunc-1',
   'K-DateTimeFunc-2',
   'K-DateTimeFunc-3',
   'K-DateTimeFunc-4',
   'K-DateTimeFunc-5',
   'K-DateTimeFunc-6',
   'K-DateTimeFunc-7',
   'K-DateTimeFunc-8',
   'K-DateTimeFunc-9',
   'K-DateTimeFunc-10',
   'K-DateTimeFunc-11',
   'K-DateTimeFunc-12',
   'K-DateTimeFunc-13',
   'K-DateTimeFunc-14',
   'K-DateTimeFunc-15',
   'K-DateTimeFunc-16',
   'K-DateTimeFunc-17',
   'K-DateTimeFunc-18',
   'K2-DateTimeFunc-1',
   'cbcl-dateTime-001',
   'cbcl-dateTime-002'].
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
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{resources, []},
{modules, []}
];
environment('atomic-xq') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-mod') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/works-mod.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/works.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('staff') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/staff.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-and-staff') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/works.xml","$works",""},
{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/staff.xml","$staff",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('auction') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/auction.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.example.com/AuctionWatch","ma"},
{"http://www.w3.org/1999/xlink","xlink"},
{"http://www.example.com/auctioneers#anyzone","anyzone"},
{"http://www.example.com/auctioneers#eachbay","eachbay"},
{"http://www.example.com/auctioneers#yabadoo","yabadoo"}]},
{resources, []},
{modules, []}
];
environment('qname') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/QName-source.xml",".",""}]},
{schemas, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/QName-schema.xsd","http://www.example.com/QNameXSD"}]},
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
].
'fn-dateTime-1'(_Config) ->
   Qry = "fn:dateTime(xs:date(\"1999-12-31\"), xs:time(\"12:00:00\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1999-12-31T12:00:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-dateTime-2'(_Config) ->
   Qry = "fn:dateTime(xs:date(\"1999-12-31\"), xs:time(\"24:00:00\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1999-12-31T00:00:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-dateTime-3'(_Config) ->
   Qry = "fn:dateTime(xs:date(\"1999-12-31Z\"), xs:time(\"23:00:00\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1999-12-31T23:00:00Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-dateTime-4'(_Config) ->
   Qry = "fn:dateTime(xs:date(\"1999-12-31\"), xs:time(\"23:00:00Z\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1999-12-31T23:00:00Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-dateTime-5'(_Config) ->
   Qry = "fn:dateTime(xs:date(\"1999-12-31Z\"), xs:time(\"23:00:00Z\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1999-12-31T23:00:00Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-dateTime-6'(_Config) ->
   Qry = "fn:dateTime(xs:date(\"1999-12-31+10:00\"), xs:time(\"23:00:00+10:00\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1999-12-31T23:00:00+10:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-dateTime-7'(_Config) ->
   Qry = "fn:dateTime(xs:date(\"1999-12-31+10:00\"), xs:time(\"23:00:00+10:00\")) eq fn:dateTime(xs:date(\"1999-12-31+10:00\"), xs:time(\"23:00:00+10:00\"))",
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
'fn-dateTime-8'(_Config) ->
   Qry = "fn:dateTime(xs:date(\"1999-12-31+10:00\"), xs:time(\"23:00:00+10:00\")) ne fn:dateTime(xs:date(\"1999-12-31+10:00\"), xs:time(\"23:00:00+10:00\"))",
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
'fn-dateTime-9'(_Config) ->
   Qry = "fn:dateTime(xs:date(\"1999-12-31+10:00\"), xs:time(\"23:00:00+10:00\")) le fn:dateTime(xs:date(\"1999-12-31+10:00\"), xs:time(\"23:00:00+10:00\"))",
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
'fn-dateTime-10'(_Config) ->
   Qry = "fn:dateTime(xs:date(\"1999-12-31+10:00\"), xs:time(\"23:00:00+10:00\")) ge fn:dateTime(xs:date(\"1999-12-31+10:00\"), xs:time(\"23:00:00+10:00\"))",
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
'fn-dateTime-11'(_Config) ->
   Qry = "fn:dateTime(xs:date(\"1999-12-31+10:00\"), xs:time(\"23:00:00+10:00\")) lt fn:dateTime(xs:date(\"1999-12-31+10:00\"), xs:time(\"23:00:00+10:00\"))",
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
'fn-dateTime-12'(_Config) ->
   Qry = "fn:dateTime(xs:date(\"1999-12-31+10:00\"), xs:time(\"23:00:00+10:00\")) le fn:dateTime(xs:date(\"1999-12-31+10:00\"), xs:time(\"23:00:00+10:00\"))",
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
'fn-dateTime-13'(_Config) ->
   Qry = "fn:dateTime(xs:date(\"1999-12-31+10:00\"), xs:time(\"23:00:00+10:00\")) gt fn:dateTime(xs:date(\"1999-12-31+10:00\"), xs:time(\"23:00:00+10:00\"))",
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
'fn-dateTime-14'(_Config) ->
   Qry = "fn:dateTime(xs:date(\"1999-12-31+10:00\"), xs:time(\"23:00:00+10:00\")) ge fn:dateTime(xs:date(\"1999-12-31+10:00\"), xs:time(\"23:00:00+10:00\"))",
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
'fn-dateTime-15'(_Config) ->
   Qry = "fn:year-from-dateTime(fn:dateTime(xs:date(\"1999-12-31+10:00\"), xs:time(\"23:00:00+10:00\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1999") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-dateTime-16'(_Config) ->
   Qry = "fn:month-from-dateTime(fn:dateTime(xs:date(\"1999-12-31+10:00\"), xs:time(\"23:00:00+10:00\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "12") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-dateTime-17'(_Config) ->
   Qry = "fn:day-from-dateTime(fn:dateTime(xs:date(\"1999-12-31+10:00\"), xs:time(\"23:00:00+10:00\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "31") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-dateTime-18'(_Config) ->
   Qry = "fn:hours-from-dateTime(fn:dateTime(xs:date(\"1999-12-31+10:00\"), xs:time(\"23:00:00+10:00\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "23") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-dateTime-19'(_Config) ->
   Qry = "fn:minutes-from-dateTime(fn:dateTime(xs:date(\"1999-12-31+10:00\"), xs:time(\"23:00:00+10:00\")))",
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
'fn-dateTime-20'(_Config) ->
   Qry = "fn:seconds-from-dateTime(fn:dateTime(xs:date(\"1999-12-31+10:00\"), xs:time(\"23:00:00+10:00\")))",
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
'fn-dateTime-21'(_Config) ->
   Qry = "fn:timezone-from-dateTime(fn:dateTime(xs:date(\"1999-12-31+10:00\"), xs:time(\"23:00:00+10:00\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "PT10H") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-dateTime-22'(_Config) ->
   Qry = "fn:adjust-dateTime-to-timezone(fn:dateTime(xs:date(\"1999-12-31+10:00\"), xs:time(\"23:00:00+10:00\")),xs:dayTimeDuration(\"PT10H\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1999-12-31T23:00:00+10:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-dateTime-23'(_Config) ->
   Qry = "fn:dateTime(xs:date(\"1999-12-31+10:00\"), xs:time(\"23:00:00+10:00\")) - fn:dateTime(xs:date(\"1999-12-31+10:00\"), xs:time(\"22:00:00+10:00\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "PT1H") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-dateTime-24'(_Config) ->
   Qry = " fn:dateTime(xs:date(\"1999-12-31+10:00\"), xs:time(\"23:00:00+10:00\")) + xs:yearMonthDuration(\"P1Y2M\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2001-02-28T23:00:00+10:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-dateTime-25'(_Config) ->
   Qry = " fn:dateTime(xs:date(\"1999-12-31+10:00\"), xs:time(\"23:00:00+10:00\")) + xs:dayTimeDuration(\"P3DT1H15M\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2000-01-04T00:15:00+10:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-dateTime-26'(_Config) ->
   Qry = " fn:dateTime(xs:date(\"1999-12-31+10:00\"), xs:time(\"23:00:00+10:00\")) - xs:yearMonthDuration(\"P1Y2M\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1998-10-31T23:00:00+10:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-dateTime-27'(_Config) ->
   Qry = " fn:dateTime(xs:date(\"1999-12-31+10:00\"), xs:time(\"23:00:00+10:00\")) - xs:dayTimeDuration(\"P3DT1H15M\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1999-12-28T21:45:00+10:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-dateTime-28'(_Config) ->
   Qry = " fn:count(fn:dateTime((), xs:time(\"23:00:00+10:00\")))",
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
'fn-dateTime-29'(_Config) ->
   Qry = " fn:count(fn:dateTime(xs:date(\"1999-12-31+10:00\"), ()))",
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
'fn-dateTime-30'(_Config) ->
   Qry = " fn:count(fn:dateTime((),()))",
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
'forg0008-1'(_Config) ->
   Qry = " fn:dateTime(xs:date(\"1999-12-31Z\"), xs:time(\"12:00:00+10:00\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-DateTimeFunc-1'(_Config) ->
   Qry = "dateTime()",
   Qry1 = Qry,
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
'K-DateTimeFunc-2'(_Config) ->
   Qry = "dateTime(xs:date(\"2004-03-04\"))",
   Qry1 = Qry,
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
'K-DateTimeFunc-3'(_Config) ->
   Qry = "dateTime(xs:date(\"2004-03-04\"), xs:time(\"08:05:23\"), ())",
   Qry1 = Qry,
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
'K-DateTimeFunc-4'(_Config) ->
   Qry = "empty(dateTime(xs:date(\"2004-03-04\"), ()))",
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
'K-DateTimeFunc-5'(_Config) ->
   Qry = "empty(dateTime((), xs:time(\"08:05:23\")))",
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
'K-DateTimeFunc-6'(_Config) ->
   Qry = "dateTime(xs:date(\"2004-03-04-00:01\"), xs:time(\"08:05:23+00:01\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-DateTimeFunc-7'(_Config) ->
   Qry = "dateTime(xs:date(\"2004-03-04-00:01\"), xs:time(\"08:05:23Z\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-DateTimeFunc-8'(_Config) ->
   Qry = "dateTime(xs:date(\"2004-03-04-00:00\"), xs:time(\"08:05:23+00:00\")) eq xs:dateTime(\"2004-03-04T08:05:23Z\")",
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
'K-DateTimeFunc-9'(_Config) ->
   Qry = "dateTime(xs:date(\"2004-03-04+11:00\"), xs:time(\"08:05:23+11:00\")) eq xs:dateTime(\"2004-03-04T08:05:23+11:00\")",
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
'K-DateTimeFunc-10'(_Config) ->
   Qry = "dateTime(xs:date(\"2004-03-04\"), xs:time(\"08:05:23-05:00\")) eq xs:dateTime(\"2004-03-04T08:05:23-05:00\")",
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
'K-DateTimeFunc-11'(_Config) ->
   Qry = "dateTime(xs:date(\"2004-03-04+11:00\"), xs:time(\"08:05:23\")) eq xs:dateTime(\"2004-03-04T08:05:23+11:00\")",
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
'K-DateTimeFunc-12'(_Config) ->
   Qry = "xs:string(dateTime(xs:date(\"1999-12-31\"), xs:time(\"24:00:00\"))) eq \"1999-12-31T00:00:00\"",
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
'K-DateTimeFunc-13'(_Config) ->
   Qry = "dateTime(xs:date(\"2004-03-04Z\"), xs:time(\"08:05:23Z\")) eq xs:dateTime(\"2004-03-04T08:05:23Z\")",
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
'K-DateTimeFunc-14'(_Config) ->
   Qry = "dateTime(xs:date(\"2004-03-04Z\"), xs:time(\"08:05:23\")) eq xs:dateTime(\"2004-03-04T08:05:23Z\")",
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
'K-DateTimeFunc-15'(_Config) ->
   Qry = "dateTime(xs:date(\"2004-03-04+13:07\"), xs:time(\"08:05:23\")) eq xs:dateTime(\"2004-03-04T08:05:23+13:07\")",
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
'K-DateTimeFunc-16'(_Config) ->
   Qry = "dateTime(xs:date(\"2004-03-04\"), xs:time(\"08:05:23+13:07\")) eq xs:dateTime(\"2004-03-04T08:05:23+13:07\")",
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
'K-DateTimeFunc-17'(_Config) ->
   Qry = "dateTime(xs:date(\"2004-03-04\"), xs:time(\"08:05:23\")) eq xs:dateTime(\"2004-03-04T08:05:23\")",
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
'K-DateTimeFunc-18'(_Config) ->
   Qry = "dateTime(xs:date(\"2004-03-04\"), xs:time(\"08:05:23Z\")) eq xs:dateTime(\"2004-03-04T08:05:23Z\")",
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
'K2-DateTimeFunc-1'(_Config) ->
   Qry = "empty(dateTime((), ()))",
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
'cbcl-dateTime-001'(_Config) ->
   Qry = "fn:index-of( ( 'A', fn:current-dateTime(), 'B' ), fn:dateTime(fn:current-date(), fn:current-time()) )",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-dateTime-002'(_Config) ->
   Qry = "fn:index-of( ( 'A', fn:current-dateTime(), 'B' ), fn:dateTime(adjust-date-to-timezone(fn:current-date(), xs:dayTimeDuration(\"PT1H\")), adjust-time-to-timezone(fn:current-time(), xs:dayTimeDuration(\"PT2H\"))))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
