-module('op_subtract_dayTimeDuration_from_dateTime_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['op-subtract-dayTimeDuration-from-dateTime2args-1'/1]).
-export(['op-subtract-dayTimeDuration-from-dateTime2args-2'/1]).
-export(['op-subtract-dayTimeDuration-from-dateTime2args-3'/1]).
-export(['op-subtract-dayTimeDuration-from-dateTime2args-4'/1]).
-export(['op-subtract-dayTimeDuration-from-dateTime2args-5'/1]).
-export(['op-subtract-dayTimeDuration-from-dateTime-1'/1]).
-export(['op-subtract-dayTimeDuration-from-dateTime-2'/1]).
-export(['op-subtract-dayTimeDuration-from-dateTime-3'/1]).
-export(['op-subtract-dayTimeDuration-from-dateTime-4'/1]).
-export(['op-subtract-dayTimeDuration-from-dateTime-5'/1]).
-export(['op-subtract-dayTimeDuration-from-dateTime-6'/1]).
-export(['op-subtract-dayTimeDuration-from-dateTime-7'/1]).
-export(['op-subtract-dayTimeDuration-from-dateTime-8'/1]).
-export(['op-subtract-dayTimeDuration-from-dateTime-9'/1]).
-export(['op-subtract-dayTimeDuration-from-dateTime-10'/1]).
-export(['op-subtract-dayTimeDuration-from-dateTime-12'/1]).
-export(['op-subtract-dayTimeDuration-from-dateTime-13'/1]).
-export(['op-subtract-dayTimeDuration-from-dateTime-14'/1]).
-export(['op-subtract-dayTimeDuration-from-dateTime-15'/1]).
-export(['op-subtract-dayTimeDuration-from-dateTime-16'/1]).
-export(['cbcl-subtract-dayTimeDuration-from-dateTime-001'/1]).
-export(['cbcl-subtract-dayTimeDuration-from-dateTime-002'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> ct:timetrap({seconds,60}), xqerl_module:unload(all).
init_per_suite(Config) -> 
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   BaseDir = filename:join(TD, "op")

,[{base_dir, BaseDir}|Config].
all() -> [
   'op-subtract-dayTimeDuration-from-dateTime2args-1',
   'op-subtract-dayTimeDuration-from-dateTime2args-2',
   'op-subtract-dayTimeDuration-from-dateTime2args-3',
   'op-subtract-dayTimeDuration-from-dateTime2args-4',
   'op-subtract-dayTimeDuration-from-dateTime2args-5',
   'op-subtract-dayTimeDuration-from-dateTime-1',
   'op-subtract-dayTimeDuration-from-dateTime-2',
   'op-subtract-dayTimeDuration-from-dateTime-3',
   'op-subtract-dayTimeDuration-from-dateTime-4',
   'op-subtract-dayTimeDuration-from-dateTime-5',
   'op-subtract-dayTimeDuration-from-dateTime-6',
   'op-subtract-dayTimeDuration-from-dateTime-7',
   'op-subtract-dayTimeDuration-from-dateTime-8',
   'op-subtract-dayTimeDuration-from-dateTime-9',
   'op-subtract-dayTimeDuration-from-dateTime-10',
   'op-subtract-dayTimeDuration-from-dateTime-12',
   'op-subtract-dayTimeDuration-from-dateTime-13',
   'op-subtract-dayTimeDuration-from-dateTime-14',
   'op-subtract-dayTimeDuration-from-dateTime-15',
   'op-subtract-dayTimeDuration-from-dateTime-16',
   'cbcl-subtract-dayTimeDuration-from-dateTime-001',
   'cbcl-subtract-dayTimeDuration-from-dateTime-002'].
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
'op-subtract-dayTimeDuration-from-dateTime2args-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"1970-01-01T00:00:00Z\") - xs:dayTimeDuration(\"P0DT0H0M0S\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-subtract-dayTimeDuration-from-dateTime2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1970-01-01T00:00:00Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-subtract-dayTimeDuration-from-dateTime2args-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"1996-04-07T01:40:52Z\") - xs:dayTimeDuration(\"P0DT0H0M0S\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-subtract-dayTimeDuration-from-dateTime2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1996-04-07T01:40:52Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-subtract-dayTimeDuration-from-dateTime2args-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"2030-12-31T23:59:59Z\") - xs:dayTimeDuration(\"P0DT0H0M0S\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-subtract-dayTimeDuration-from-dateTime2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2030-12-31T23:59:59Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-subtract-dayTimeDuration-from-dateTime2args-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"1970-01-01T00:00:00Z\") - xs:dayTimeDuration(\"P15DT11H59M59S\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-subtract-dayTimeDuration-from-dateTime2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1969-12-16T12:00:01Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-subtract-dayTimeDuration-from-dateTime2args-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"1970-01-01T00:00:00Z\") - xs:dayTimeDuration(\"P31DT23H59M59S\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-subtract-dayTimeDuration-from-dateTime2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1969-11-30T00:00:01Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-subtract-dayTimeDuration-from-dateTime-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"2000-10-30T11:12:00\") - xs:dayTimeDuration(\"P3DT1H15M\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-subtract-dayTimeDuration-from-dateTime-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2000-10-27T09:57:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-subtract-dayTimeDuration-from-dateTime-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:string(xs:dateTime(\"2000-12-12T11:10:03Z\") - xs:dayTimeDuration(\"P12DT10H07M\")) and fn:false()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-subtract-dayTimeDuration-from-dateTime-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-subtract-dayTimeDuration-from-dateTime-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:string((xs:dateTime(\"1999-10-23T03:12:23Z\") - xs:dayTimeDuration(\"P19DT13H10M\"))) or fn:false()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-subtract-dayTimeDuration-from-dateTime-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-subtract-dayTimeDuration-from-dateTime-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:not(fn:string(xs:dateTime(\"1998-09-12T13:23:23Z\") - xs:dayTimeDuration(\"P02DT07H01M\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-subtract-dayTimeDuration-from-dateTime-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-subtract-dayTimeDuration-from-dateTime-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:boolean(fn:string(xs:dateTime(\"1962-03-12T12:34:09Z\") - xs:dayTimeDuration(\"P03DT08H06M\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-subtract-dayTimeDuration-from-dateTime-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-subtract-dayTimeDuration-from-dateTime-6'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:number(xs:dateTime(\"1988-01-28T12:34:12Z\") - xs:dayTimeDuration(\"P10DT08H01M\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-subtract-dayTimeDuration-from-dateTime-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "NaN") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-subtract-dayTimeDuration-from-dateTime-7'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:string(xs:dateTime(\"1989-07-05T10:10:10Z\") - xs:dayTimeDuration(\"P01DT09H02M\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-subtract-dayTimeDuration-from-dateTime-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1989-07-04T01:08:10Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-subtract-dayTimeDuration-from-dateTime-8'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:dateTime(\"0001-01-01T11:11:11Z\") - xs:dayTimeDuration(\"-P11DT02H02M\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-subtract-dayTimeDuration-from-dateTime-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0001-01-12T13:13:11Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-subtract-dayTimeDuration-from-dateTime-9'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:string((xs:dateTime(\"1993-12-09T13:13:13Z\") - xs:dayTimeDuration(\"P03DT01H04M\"))) and fn:string((xs:dateTime(\"1993-12-09T13:13:13Z\") - xs:dayTimeDuration(\"P01DT01H03M\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-subtract-dayTimeDuration-from-dateTime-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-subtract-dayTimeDuration-from-dateTime-10'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:string((xs:dateTime(\"1985-07-05T14:14:14Z\") - xs:dayTimeDuration(\"P03DT01H04M\"))) or fn:string((xs:dateTime(\"1985-07-05T15:15:15Z\") - xs:dayTimeDuration(\"P01DT01H03M\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-subtract-dayTimeDuration-from-dateTime-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-subtract-dayTimeDuration-from-dateTime-12'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:string((xs:dateTime(\"1980-03-02T16:12:10Z\") - xs:dayTimeDuration(\"P05DT08H11M\"))) and (fn:true())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-subtract-dayTimeDuration-from-dateTime-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-subtract-dayTimeDuration-from-dateTime-13'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:dateTime(\"1980-05-05T17:17:17Z\") - xs:dayTimeDuration(\"P23DT11H11M\")) eq xs:dateTime(\"1980-05-05T17:17:17Z\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-subtract-dayTimeDuration-from-dateTime-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-subtract-dayTimeDuration-from-dateTime-14'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:dateTime(\"1979-12-12T18:18:18Z\") - xs:dayTimeDuration(\"P08DT08H05M\")) ne xs:dateTime(\"1979-12-12T16:15:14Z\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-subtract-dayTimeDuration-from-dateTime-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-subtract-dayTimeDuration-from-dateTime-15'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:dateTime(\"1978-12-12T12:45:12Z\") - xs:dayTimeDuration(\"P17DT10H02M\")) le xs:dateTime(\"1978-12-12T16:34:23Z\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-subtract-dayTimeDuration-from-dateTime-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-subtract-dayTimeDuration-from-dateTime-16'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:dateTime(\"1977-12-12T13:12:15Z\") - xs:dayTimeDuration(\"P18DT02H02M\")) ge xs:dateTime(\"1977-12-12T15:56:10Z\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-subtract-dayTimeDuration-from-dateTime-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-subtract-dayTimeDuration-from-dateTime-001'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:two-digit($number as xs:integer) { 
      		let $string := string($number) return if (string-length($string) lt 2) then concat('0', $string) else $string 
      	}; 
      	declare function local:dateTime($year as xs:integer, $month as xs:integer, $day as xs:integer, $hour as xs:integer, $mins as xs:integer) { 
      		let $m := local:two-digit($month), $d := local:two-digit($day), $h := local:two-digit($hour), $n := local:two-digit($mins) return xs:dateTime(concat($year, '-', $m, '-', $d, 'T', $h, ':', $n, ':00')) 
      	}; 
      	local:dateTime(2008, 05, 12, 12, 59) - xs:dayTimeDuration(\"P0D\")
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-subtract-dayTimeDuration-from-dateTime-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2008-05-12T12:59:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-subtract-dayTimeDuration-from-dateTime-002'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:two-digit($number as xs:integer) { 
      		let $string := string($number) return if (string-length($string) lt 2) then concat('0', $string) else $string 
      	}; 
      	declare function local:dateTime($year as xs:integer, $month as xs:integer, $day as xs:integer, $hour as xs:integer, $mins as xs:integer) { 
      		let $m := local:two-digit($month), $d := local:two-digit($day), $h := local:two-digit($hour), $n := local:two-digit($mins) return xs:dateTime(concat($year, '-', $m, '-', $d, 'T', $h, ':', $n, ':00')) 
      	}; 
      	local:dateTime(-25252734927766554, 05, 12, 12, 59) - xs:dayTimeDuration(\"P0D\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-subtract-dayTimeDuration-from-dateTime-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"FODT0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_string_value(Res, "-25252734927766554-05-12T12:59:00") of 
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
