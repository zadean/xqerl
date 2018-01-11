-module('fn_day_from_dateTime_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-day-from-dateTime1args-1'/1]).
-export(['fn-day-from-dateTime1args-2'/1]).
-export(['fn-day-from-dateTime1args-3'/1]).
-export(['fn-day-from-dateTime-1'/1]).
-export(['fn-day-from-dateTime-2'/1]).
-export(['fn-day-from-dateTime-3'/1]).
-export(['fn-day-from-dateTime-4'/1]).
-export(['fn-day-from-dateTime-5'/1]).
-export(['fn-day-from-dateTime-6'/1]).
-export(['fn-day-from-dateTime-7'/1]).
-export(['fn-day-from-dateTime-8'/1]).
-export(['fn-day-from-dateTime-9'/1]).
-export(['fn-day-from-dateTimeNew-10'/1]).
-export(['fn-day-from-dateTime-11'/1]).
-export(['fn-day-from-dateTime-12'/1]).
-export(['fn-day-from-dateTime-13'/1]).
-export(['fn-day-from-dateTime-14'/1]).
-export(['fn-day-from-dateTime-15'/1]).
-export(['fn-day-from-dateTime-16'/1]).
-export(['fn-day-from-dateTime-17'/1]).
-export(['fn-day-from-dateTime-18'/1]).
-export(['fn-day-from-dateTime-19'/1]).
-export(['K-DayFromDateTimeFunc-1'/1]).
-export(['K-DayFromDateTimeFunc-2'/1]).
-export(['K-DayFromDateTimeFunc-3'/1]).
-export(['K-DayFromDateTimeFunc-4'/1]).
-export(['K-DayFromDateTimeFunc-5'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> ct:timetrap({seconds,60}), xqerl_module:unload(all).
init_per_suite(Config) -> 
   DD = filename:dirname(filename:dirname(proplists:get_value(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   BaseDir = filename:join(TD, "fn")

,[{base_dir, BaseDir}|Config].
all() -> [
   'fn-day-from-dateTime1args-1',
   'fn-day-from-dateTime1args-2',
   'fn-day-from-dateTime1args-3',
   'fn-day-from-dateTime-1',
   'fn-day-from-dateTime-2',
   'fn-day-from-dateTime-3',
   'fn-day-from-dateTime-4',
   'fn-day-from-dateTime-5',
   'fn-day-from-dateTime-6',
   'fn-day-from-dateTime-7',
   'fn-day-from-dateTime-8',
   'fn-day-from-dateTime-9',
   'fn-day-from-dateTimeNew-10',
   'fn-day-from-dateTime-11',
   'fn-day-from-dateTime-12',
   'fn-day-from-dateTime-13',
   'fn-day-from-dateTime-14',
   'fn-day-from-dateTime-15',
   'fn-day-from-dateTime-16',
   'fn-day-from-dateTime-17',
   'fn-day-from-dateTime-18',
   'fn-day-from-dateTime-19',
   'K-DayFromDateTimeFunc-1',
   'K-DayFromDateTimeFunc-2',
   'K-DayFromDateTimeFunc-3',
   'K-DayFromDateTimeFunc-4',
   'K-DayFromDateTimeFunc-5'].
environment('empty',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('atomic',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/atomic.xml"), ".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{filename:join(BaseDir, "../docs/atomic.xsd"),"http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{resources, []},
{modules, []}
];
environment('atomic-xq',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/atomic.xml"), ".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{filename:join(BaseDir, "../docs/atomic.xsd"),"http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-mod',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/works-mod.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/works.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('staff',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/staff.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-and-staff',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/works.xml"), "$works",""},
{filename:join(BaseDir, "../docs/staff.xml"), "$staff",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('auction',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/auction.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
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
environment('qname',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/QName-source.xml"), ".",""}]},
{schemas, [{filename:join(BaseDir, "../docs/QName-schema.xsd"),"http://www.example.com/QNameXSD"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.example.com/QNameXSD",""}]},
{resources, []},
{modules, []}
];
environment('math',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/math","math"}]},
{resources, []},
{modules, []}
];
environment('array',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"}]},
{resources, []},
{modules, []}
];
environment('map',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('array-and-map',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"},
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
].
'fn-day-from-dateTime1args-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:day-from-dateTime(xs:dateTime(\"1970-01-01T00:00:00Z\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-day-from-dateTime1args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-day-from-dateTime1args-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:day-from-dateTime(xs:dateTime(\"1996-04-07T01:40:52Z\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-day-from-dateTime1args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "7") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-day-from-dateTime1args-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:day-from-dateTime(xs:dateTime(\"2030-12-31T23:59:59Z\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-day-from-dateTime1args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "31") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-day-from-dateTime-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:day-from-dateTime(xs:dateTime(\"1999-05-31T13:20:00-05:00\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-day-from-dateTime-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "31") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-day-from-dateTime-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:day-from-dateTime(xs:dateTime(\"1999-12-31T20:00:00-05:00\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-day-from-dateTime-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "31") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-day-from-dateTime-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:day-from-dateTime(fn:adjust-dateTime-to-timezone(xs:dateTime(\"1999-12-31T19:20:00-05:00\"), xs:dayTimeDuration(\"PT0H\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-day-from-dateTime-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-day-from-dateTime-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:avg((fn:day-from-dateTime(xs:dateTime(\"1996-12-10T12:00:00Z\")),fn:day-from-dateTime(xs:dateTime(\"2000-12-20T12:00:00Z\"))))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-day-from-dateTime-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "15") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-day-from-dateTime-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:count(fn:day-from-dateTime(()))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-day-from-dateTime-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-day-from-dateTime-6'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:day-from-dateTime(xs:dateTime(\"1999-01-01T00:20:00-05:00\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-day-from-dateTime-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-day-from-dateTime-7'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:day-from-dateTime(xs:dateTime(\"0001-05-31T23:20:00-05:00\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-day-from-dateTime-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "31") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-day-from-dateTime-8'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:day-from-dateTime(xs:dateTime(\"1970-01-03T00:00:00Z\")) + fn:day-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-day-from-dateTime-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "4") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-day-from-dateTime-9'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:day-from-dateTime(xs:dateTime(\"1970-01-10T00:00:00Z\")) - fn:day-from-dateTime(xs:dateTime(\"1969-01-01T10:00:00Z\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-day-from-dateTime-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "9") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-day-from-dateTimeNew-10'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:day-from-dateTime(xs:dateTime(\"1970-01-02T02:00:00Z\")) * fn:day-from-dateTime(xs:dateTime(\"0002-01-04T10:00:00Z\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-day-from-dateTimeNew-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "8") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-day-from-dateTime-11'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:day-from-dateTime(xs:dateTime(\"1000-01-10T02:00:00Z\")) div fn:day-from-dateTime(xs:dateTime(\"0050-01-05T10:00:00Z\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-day-from-dateTime-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-day-from-dateTime-12'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:day-from-dateTime(xs:dateTime(\"1970-01-10T10:00:00Z\")) idiv fn:day-from-dateTime(xs:dateTime(\"1970-01-10T02:00:00Z\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-day-from-dateTime-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-day-from-dateTime-13'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:day-from-dateTime(xs:dateTime(\"1970-01-10T10:00:00Z\")) mod fn:day-from-dateTime(xs:dateTime(\"1970-01-03T03:00:00Z\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-day-from-dateTime-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-day-from-dateTime-14'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "+fn:day-from-dateTime(xs:dateTime(\"1971-01-01T10:00:00Z\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-day-from-dateTime-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-day-from-dateTime-15'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "-fn:day-from-dateTime(xs:dateTime(\"1970-01-03T10:00:00Z\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-day-from-dateTime-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-day-from-dateTime-16'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:day-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\")) eq fn:day-from-dateTime(xs:dateTime(\"1970-01-02T10:00:00Z\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-day-from-dateTime-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-day-from-dateTime-17'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:day-from-dateTime(xs:dateTime(\"1970-01-02T10:00:00Z\")) ne fn:day-from-dateTime(xs:dateTime(\"1970-02-02T10:00:00Z\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-day-from-dateTime-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-day-from-dateTime-18'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:day-from-dateTime(xs:dateTime(\"1971-01-03T10:00:00Z\")) ge fn:day-from-dateTime(xs:dateTime(\"1970-01-03T10:00:00Z\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-day-from-dateTime-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-day-from-dateTime-19'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:day-from-dateTime(xs:dateTime(\"1971-01-10T10:00:00Z\")) ge fn:day-from-dateTime(xs:dateTime(\"1970-01-11T10:00:00Z\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-day-from-dateTime-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-DayFromDateTimeFunc-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "day-from-dateTime()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-DayFromDateTimeFunc-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-DayFromDateTimeFunc-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "day-from-dateTime((), \"Wrong param\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-DayFromDateTimeFunc-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-DayFromDateTimeFunc-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "empty(day-from-dateTime(()))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-DayFromDateTimeFunc-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-DayFromDateTimeFunc-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "day-from-dateTime(()) instance of xs:integer?",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-DayFromDateTimeFunc-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-DayFromDateTimeFunc-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "day-from-dateTime(xs:dateTime(\"2001-02-03T08:23:12.43\")) eq 3",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-DayFromDateTimeFunc-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
