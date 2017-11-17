-module('fn_adjust_time_to_timezone_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-adjust-time-to-timezone1args-1'/1]).
-export(['fn-adjust-time-to-timezone1args-2'/1]).
-export(['fn-adjust-time-to-timezone1args-3'/1]).
-export(['fn-adjust-time-to-timezone-1'/1]).
-export(['fn-adjust-time-to-timezone-2'/1]).
-export(['fn-adjust-time-to-timezone-3'/1]).
-export(['fn-adjust-time-to-timezone-4'/1]).
-export(['fn-adjust-time-to-timezone-5'/1]).
-export(['fn-adjust-time-to-timezone-6'/1]).
-export(['fn-adjust-time-to-timezone-7'/1]).
-export(['fn-adjust-time-to-timezone-8'/1]).
-export(['fn-adjust-time-to-timezone-9'/1]).
-export(['fn-adjust-time-to-timezone-10'/1]).
-export(['fn-adjust-time-to-timezone-11'/1]).
-export(['fn-adjust-time-to-timezone-12'/1]).
-export(['fn-adjust-time-to-timezone-13'/1]).
-export(['fn-adjust-time-to-timezone-14'/1]).
-export(['fn-adjust-time-to-timezone-15'/1]).
-export(['fn-adjust-time-to-timezone-16'/1]).
-export(['fn-adjust-time-to-timezone-17'/1]).
-export(['fn-adjust-time-to-timezone-18'/1]).
-export(['fn-adjust-time-to-timezone-19'/1]).
-export(['fn-adjust-time-to-timezone-20'/1]).
-export(['fn-adjust-time-to-timezone-21'/1]).
-export(['K-AdjTimeToTimezoneFunc-1'/1]).
-export(['K-AdjTimeToTimezoneFunc-2'/1]).
-export(['K-AdjTimeToTimezoneFunc-3'/1]).
-export(['K-AdjTimeToTimezoneFunc-4'/1]).
-export(['K-AdjTimeToTimezoneFunc-5'/1]).
-export(['K-AdjTimeToTimezoneFunc-6'/1]).
-export(['K-AdjTimeToTimezoneFunc-7'/1]).
-export(['K-AdjTimeToTimezoneFunc-8'/1]).
-export(['K-AdjTimeToTimezoneFunc-9'/1]).
-export(['K-AdjTimeToTimezoneFunc-10'/1]).
-export(['K-AdjTimeToTimezoneFunc-11'/1]).
-export(['K-AdjTimeToTimezoneFunc-12'/1]).
-export(['K-AdjTimeToTimezoneFunc-13'/1]).
-export(['K-AdjTimeToTimezoneFunc-14'/1]).
-export(['K-AdjTimeToTimezoneFunc-15'/1]).
-export(['K-AdjTimeToTimezoneFunc-16'/1]).
-export(['cbcl-adjust-time-to-timezone-001'/1]).
-export(['cbcl-adjust-time-to-timezone-002'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-adjust-time-to-timezone1args-1',
   'fn-adjust-time-to-timezone1args-2',
   'fn-adjust-time-to-timezone1args-3',
   'fn-adjust-time-to-timezone-1',
   'fn-adjust-time-to-timezone-2',
   'fn-adjust-time-to-timezone-3',
   'fn-adjust-time-to-timezone-4',
   'fn-adjust-time-to-timezone-5',
   'fn-adjust-time-to-timezone-6',
   'fn-adjust-time-to-timezone-7',
   'fn-adjust-time-to-timezone-8',
   'fn-adjust-time-to-timezone-9',
   'fn-adjust-time-to-timezone-10',
   'fn-adjust-time-to-timezone-11',
   'fn-adjust-time-to-timezone-12',
   'fn-adjust-time-to-timezone-13',
   'fn-adjust-time-to-timezone-14',
   'fn-adjust-time-to-timezone-15',
   'fn-adjust-time-to-timezone-16',
   'fn-adjust-time-to-timezone-17',
   'fn-adjust-time-to-timezone-18',
   'fn-adjust-time-to-timezone-19',
   'fn-adjust-time-to-timezone-20',
   'fn-adjust-time-to-timezone-21',
   'K-AdjTimeToTimezoneFunc-1',
   'K-AdjTimeToTimezoneFunc-2',
   'K-AdjTimeToTimezoneFunc-3',
   'K-AdjTimeToTimezoneFunc-4',
   'K-AdjTimeToTimezoneFunc-5',
   'K-AdjTimeToTimezoneFunc-6',
   'K-AdjTimeToTimezoneFunc-7',
   'K-AdjTimeToTimezoneFunc-8',
   'K-AdjTimeToTimezoneFunc-9',
   'K-AdjTimeToTimezoneFunc-10',
   'K-AdjTimeToTimezoneFunc-11',
   'K-AdjTimeToTimezoneFunc-12',
   'K-AdjTimeToTimezoneFunc-13',
   'K-AdjTimeToTimezoneFunc-14',
   'K-AdjTimeToTimezoneFunc-15',
   'K-AdjTimeToTimezoneFunc-16',
   'cbcl-adjust-time-to-timezone-001',
   'cbcl-adjust-time-to-timezone-002'].
environment('empty') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('atomic') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{resources, []},
{modules, []}
];
environment('atomic-xq') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-mod') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/works-mod.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/works.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('staff') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/staff.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-and-staff') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/works.xml","$works",""},
{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/staff.xml","$staff",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('auction') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/auction.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
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
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/QName-source.xml",".",""}]},
{schemas, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/QName-schema.xsd","http://www.example.com/QNameXSD"}]},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
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
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
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
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
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
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
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
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"},
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
].
'fn-adjust-time-to-timezone1args-1'(_Config) ->
   Qry = "fn:adjust-time-to-timezone(xs:time(\"00:00:00Z\"),xs:dayTimeDuration(\"-PT10H\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "14:00:00-10:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-adjust-time-to-timezone1args-2'(_Config) ->
   Qry = "fn:adjust-time-to-timezone(xs:time(\"08:03:35Z\"),xs:dayTimeDuration(\"-PT10H\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "22:03:35-10:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-adjust-time-to-timezone1args-3'(_Config) ->
   Qry = "fn:adjust-time-to-timezone(xs:time(\"23:59:59Z\"),xs:dayTimeDuration(\"-PT10H\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "13:59:59-10:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-adjust-time-to-timezone-1'(_Config) ->
   Qry = "fn:adjust-time-to-timezone(xs:time(\"10:00:00-05:00\"),xs:dayTimeDuration(\"-PT5H0M\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "10:00:00-05:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-adjust-time-to-timezone-2'(_Config) ->
   Qry = "fn:adjust-time-to-timezone(xs:time(\"10:00:00-07:00\"),xs:dayTimeDuration(\"-PT5H0M\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "12:00:00-05:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-adjust-time-to-timezone-3'(_Config) ->
   Qry = "let $tz := xs:dayTimeDuration(\"-PT10H\") 
         return fn:adjust-time-to-timezone(xs:time(\"10:00:00\"), $tz)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "10:00:00-10:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-adjust-time-to-timezone-4'(_Config) ->
   Qry = "let $tz := xs:dayTimeDuration(\"-PT10H\") 
         return fn:adjust-time-to-timezone(xs:time(\"10:00:00-07:00\"), $tz)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "07:00:00-10:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-adjust-time-to-timezone-5'(_Config) ->
   Qry = "fn:adjust-time-to-timezone(xs:time(\"10:00:00-05:00\"),())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "10:00:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-adjust-time-to-timezone-6'(_Config) ->
   Qry = "fn:adjust-time-to-timezone(xs:time(\"10:00:00-07:00\"), ())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "10:00:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-adjust-time-to-timezone-7'(_Config) ->
   Qry = "fn:adjust-time-to-timezone(xs:time(\"10:00:00-07:00\"), xs:dayTimeDuration(\"PT10H\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "03:00:00+10:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-adjust-time-to-timezone-8'(_Config) ->
   Qry = "fn:count(fn:adjust-time-to-timezone((),()))",
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
'fn-adjust-time-to-timezone-9'(_Config) ->
   Qry = "fn:adjust-time-to-timezone(xs:time(\"09:00:00Z\"),()) - fn:adjust-time-to-timezone(xs:time(\"10:00:00Z\"),())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-PT1H") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-adjust-time-to-timezone-10'(_Config) ->
   Qry = "fn:adjust-time-to-timezone(xs:time(\"10:00:00Z\"),()) - fn:adjust-time-to-timezone(xs:time(\"10:00:00Z\"),())",
   Qry1 = Qry,
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
'fn-adjust-time-to-timezone-11'(_Config) ->
   Qry = "fn:string(fn:adjust-time-to-timezone(xs:time(\"10:00:00Z\"),()))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "10:00:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-adjust-time-to-timezone-12'(_Config) ->
   Qry = "fn:boolean(fn:string(fn:adjust-time-to-timezone(xs:time(\"10:00:00Z\"),())))",
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
'fn-adjust-time-to-timezone-13'(_Config) ->
   Qry = "fn:not(fn:string(fn:adjust-time-to-timezone(xs:time(\"10:00:00Z\"),())))",
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
'fn-adjust-time-to-timezone-14'(_Config) ->
   Qry = "fn:string(fn:adjust-time-to-timezone(xs:time(\"10:00:00Z\"),())) or fn:true()",
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
'fn-adjust-time-to-timezone-15'(_Config) ->
   Qry = "fn:string(fn:adjust-time-to-timezone(xs:time(\"10:00:00Z\"),())) or fn:false()",
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
'fn-adjust-time-to-timezone-16'(_Config) ->
   Qry = "fn:string(fn:adjust-time-to-timezone(xs:time(\"10:00:00Z\"),())) and fn:true()",
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
'fn-adjust-time-to-timezone-17'(_Config) ->
   Qry = "fn:string(fn:adjust-time-to-timezone(xs:time(\"10:00:00Z\"),())) and fn:false()",
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
'fn-adjust-time-to-timezone-18'(_Config) ->
   Qry = "let $tz := xs:dayTimeDuration(\"PT10H\") 
         return fn:adjust-time-to-timezone(xs:time(\"01:00:00Z\"),$tz) - xs:time(\"10:00:00Z\")
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-PT9H") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-adjust-time-to-timezone-19'(_Config) ->
   Qry = "let $tz := xs:dayTimeDuration(\"PT10H\") 
         return fn:adjust-time-to-timezone(xs:time(\"10:00:00Z\"),$tz) - xs:time(\"09:00:00Z\")
      ",
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
'fn-adjust-time-to-timezone-20'(_Config) ->
   Qry = "fn:adjust-time-to-timezone(xs:time(\"10:00:00Z\"),()) ge fn:adjust-time-to-timezone(xs:time(\"11:00:00Z\"),())",
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
'fn-adjust-time-to-timezone-21'(_Config) ->
   Qry = "fn:adjust-time-to-timezone(current-time()[current-date() lt xs:date('2000-01-01')])",
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
'K-AdjTimeToTimezoneFunc-1'(_Config) ->
   Qry = "adjust-time-to-timezone()",
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
'K-AdjTimeToTimezoneFunc-2'(_Config) ->
   Qry = "adjust-time-to-timezone((), (), \"WRONG PARAM\")",
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
'K-AdjTimeToTimezoneFunc-3'(_Config) ->
   Qry = "empty(adjust-time-to-timezone(()))",
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
'K-AdjTimeToTimezoneFunc-4'(_Config) ->
   Qry = "empty(adjust-time-to-timezone((), ()))",
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
'K-AdjTimeToTimezoneFunc-5'(_Config) ->
   Qry = "adjust-time-to-timezone(()) instance of xs:time?",
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
'K-AdjTimeToTimezoneFunc-6'(_Config) ->
   Qry = "adjust-time-to-timezone(xs:time(\"08:02:00\"), xs:dayTimeDuration(\"PT14H1M\"))",
   Qry1 = Qry,
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
'K-AdjTimeToTimezoneFunc-7'(_Config) ->
   Qry = "adjust-time-to-timezone(xs:time(\"08:02:00\"), xs:dayTimeDuration(\"-PT14H1M\"))",
   Qry1 = Qry,
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
'K-AdjTimeToTimezoneFunc-8'(_Config) ->
   Qry = "adjust-time-to-timezone(xs:time(\"08:02:00\"), xs:dayTimeDuration(\"PT14H0M0.001S\"))",
   Qry1 = Qry,
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
'K-AdjTimeToTimezoneFunc-9'(_Config) ->
   Qry = "timezone-from-time(adjust-time-to-timezone(xs:time(\"00:00:00\"))) eq implicit-timezone()",
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
'K-AdjTimeToTimezoneFunc-10'(_Config) ->
   Qry = "adjust-time-to-timezone(xs:time(\"10:00:00\"), xs:dayTimeDuration(\"-PT5H0M\")) eq xs:time(\"10:00:00-05:00\")",
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
'K-AdjTimeToTimezoneFunc-11'(_Config) ->
   Qry = "adjust-time-to-timezone(xs:time(\"10:00:00-07:00\"), xs:dayTimeDuration(\"-PT5H0M\")) eq xs:time(\"12:00:00-05:00\")",
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
'K-AdjTimeToTimezoneFunc-12'(_Config) ->
   Qry = "adjust-time-to-timezone(xs:time(\"10:00:00\"), xs:dayTimeDuration(\"-PT10H\")) eq xs:time(\"10:00:00-10:00\")",
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
'K-AdjTimeToTimezoneFunc-13'(_Config) ->
   Qry = "adjust-time-to-timezone(xs:time(\"10:00:00-07:00\"), xs:dayTimeDuration(\"-PT10H\")) eq xs:time(\"07:00:00-10:00\")",
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
'K-AdjTimeToTimezoneFunc-14'(_Config) ->
   Qry = "adjust-time-to-timezone(xs:time(\"10:00:00\"), ()) eq xs:time(\"10:00:00\")",
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
'K-AdjTimeToTimezoneFunc-15'(_Config) ->
   Qry = "adjust-time-to-timezone(xs:time(\"10:00:00-07:00\"), ()) eq xs:time(\"10:00:00\")",
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
'K-AdjTimeToTimezoneFunc-16'(_Config) ->
   Qry = "adjust-time-to-timezone(xs:time(\"10:00:00-07:00\"), xs:dayTimeDuration(\"PT10H\")) eq xs:time(\"03:00:00+10:00\")",
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
'cbcl-adjust-time-to-timezone-001'(_Config) ->
   Qry = "adjust-time-to-timezone(current-time(), implicit-timezone()) eq current-time()",
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
'cbcl-adjust-time-to-timezone-002'(_Config) ->
   Qry = "adjust-time-to-timezone(xs:time(\"12:00:00Z\")) eq adjust-time-to-timezone(xs:time(\"13:00:00+01:00\"))",
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
