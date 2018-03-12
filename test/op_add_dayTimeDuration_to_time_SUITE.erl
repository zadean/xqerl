-module('op_add_dayTimeDuration_to_time_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['op-add-dayTimeDuration-to-time2args-1'/1]).
-export(['op-add-dayTimeDuration-to-time2args-2'/1]).
-export(['op-add-dayTimeDuration-to-time2args-3'/1]).
-export(['op-add-dayTimeDuration-to-time2args-4'/1]).
-export(['op-add-dayTimeDuration-to-time2args-5'/1]).
-export(['op-add-dayTimeDuration-to-time-1'/1]).
-export(['op-add-dayTimeDuration-to-time-2'/1]).
-export(['op-add-dayTimeDuration-to-time-3'/1]).
-export(['op-add-dayTimeDuration-to-time-4'/1]).
-export(['op-add-dayTimeDuration-to-time-5'/1]).
-export(['op-add-dayTimeDuration-to-time-6'/1]).
-export(['op-add-dayTimeDuration-to-time-7'/1]).
-export(['op-add-dayTimeDuration-to-time-8'/1]).
-export(['op-add-dayTimeDuration-to-time-9'/1]).
-export(['op-add-dayTimeDuration-to-time-10'/1]).
-export(['op-add-dayTimeDuration-to-timealt-12'/1]).
-export(['op-add-dayTimeDuration-to-time-13'/1]).
-export(['op-add-dayTimeDuration-to-time-14'/1]).
-export(['op-add-dayTimeDuration-to-time-15'/1]).
-export(['op-add-dayTimeDuration-to-time-16'/1]).
-export(['op-add-dayTimeDuration-to-time-17'/1]).
-export(['K-TimeAddDTD-1'/1]).
-export(['K-TimeAddDTD-2'/1]).
-export(['K2-TimeAddDTD-1'/1]).
-export(['cbcl-add-dayTimeDuration-to-time-001'/1]).
-export(['cbcl-add-dayTimeDuration-to-time-002'/1]).
suite() ->
[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> ct:timetrap({seconds,60}), xqerl_module:unload(all).
init_per_suite(Config) -> 
   ok = application:ensure_started(mnesia),
   ok = application:ensure_started(xqerl_db),
   xqerl_module:one_time_init(), 
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   BaseDir = filename:join(TD, "op")

,[{base_dir, BaseDir}|Config].
all() -> [
   'op-add-dayTimeDuration-to-time2args-1',
   'op-add-dayTimeDuration-to-time2args-2',
   'op-add-dayTimeDuration-to-time2args-3',
   'op-add-dayTimeDuration-to-time2args-4',
   'op-add-dayTimeDuration-to-time2args-5',
   'op-add-dayTimeDuration-to-time-1',
   'op-add-dayTimeDuration-to-time-2',
   'op-add-dayTimeDuration-to-time-3',
   'op-add-dayTimeDuration-to-time-4',
   'op-add-dayTimeDuration-to-time-5',
   'op-add-dayTimeDuration-to-time-6',
   'op-add-dayTimeDuration-to-time-7',
   'op-add-dayTimeDuration-to-time-8',
   'op-add-dayTimeDuration-to-time-9',
   'op-add-dayTimeDuration-to-time-10',
   'op-add-dayTimeDuration-to-timealt-12',
   'op-add-dayTimeDuration-to-time-13',
   'op-add-dayTimeDuration-to-time-14',
   'op-add-dayTimeDuration-to-time-15',
   'op-add-dayTimeDuration-to-time-16',
   'op-add-dayTimeDuration-to-time-17',
   'K-TimeAddDTD-1',
   'K-TimeAddDTD-2',
   'K2-TimeAddDTD-1',
   'cbcl-add-dayTimeDuration-to-time-001',
   'cbcl-add-dayTimeDuration-to-time-002'].
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
'op-add-dayTimeDuration-to-time2args-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "xs:time(\"00:00:00Z\") + xs:dayTimeDuration(\"P0DT0H0M0S\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-add-dayTimeDuration-to-time2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "00:00:00Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-add-dayTimeDuration-to-time2args-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "xs:time(\"08:03:35Z\") + xs:dayTimeDuration(\"P0DT0H0M0S\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-add-dayTimeDuration-to-time2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "08:03:35Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-add-dayTimeDuration-to-time2args-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "xs:time(\"23:59:59Z\") + xs:dayTimeDuration(\"P0DT0H0M0S\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-add-dayTimeDuration-to-time2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "23:59:59Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-add-dayTimeDuration-to-time2args-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "xs:time(\"00:00:00Z\") + xs:dayTimeDuration(\"P15DT11H59M59S\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-add-dayTimeDuration-to-time2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "11:59:59Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-add-dayTimeDuration-to-time2args-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "xs:time(\"00:00:00Z\") + xs:dayTimeDuration(\"P31DT23H59M59S\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-add-dayTimeDuration-to-time2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "23:59:59Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-add-dayTimeDuration-to-time-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "xs:time(\"11:12:00\") + xs:dayTimeDuration(\"P3DT1H15M\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-add-dayTimeDuration-to-time-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "12:27:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-add-dayTimeDuration-to-time-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "xs:time(\"23:12:00+03:00\") + xs:dayTimeDuration(\"P1DT3H15M\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-add-dayTimeDuration-to-time-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "02:27:00+03:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-add-dayTimeDuration-to-time-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:string((xs:time(\"12:12:01Z\") + xs:dayTimeDuration(\"P19DT13H10M\"))) or fn:false()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-add-dayTimeDuration-to-time-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-add-dayTimeDuration-to-time-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:not(fn:string(xs:time(\"13:12:00Z\") + xs:dayTimeDuration(\"P02DT07H01M\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-add-dayTimeDuration-to-time-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-add-dayTimeDuration-to-time-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:boolean(fn:string(xs:time(\"02:02:02Z\") + xs:dayTimeDuration(\"P03DT08H06M\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-add-dayTimeDuration-to-time-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-add-dayTimeDuration-to-time-6'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:number(xs:time(\"01:01:01Z\") + xs:dayTimeDuration(\"P10DT08H01M\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-add-dayTimeDuration-to-time-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "NaN") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-add-dayTimeDuration-to-time-7'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:string(xs:time(\"10:02:03Z\") + xs:dayTimeDuration(\"P01DT09H02M\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-add-dayTimeDuration-to-time-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "19:04:03Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-add-dayTimeDuration-to-time-8'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:time(\"08:02:06\") + xs:dayTimeDuration(\"-P11DT02H02M\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-add-dayTimeDuration-to-time-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "06:00:06") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-add-dayTimeDuration-to-time-9'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:string((xs:time(\"10:10:10Z\") + xs:dayTimeDuration(\"P02DT09H02M\"))) and fn:string((xs:time(\"09:02:02Z\") + xs:dayTimeDuration(\"P04DT04H04M\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-add-dayTimeDuration-to-time-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-add-dayTimeDuration-to-time-10'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:string((xs:time(\"02:03:01Z\") + xs:dayTimeDuration(\"P03DT01H04M\"))) or fn:string((xs:time(\"02:03:01Z\") + xs:dayTimeDuration(\"P01DT01H03M\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-add-dayTimeDuration-to-time-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-add-dayTimeDuration-to-timealt-12'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:string((xs:time(\"02:02:02Z\") + xs:dayTimeDuration(\"P05DT08H11M\"))) and (fn:true())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-add-dayTimeDuration-to-timealt-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-add-dayTimeDuration-to-time-13'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:time(\"01:03:03Z\") + xs:dayTimeDuration(\"P23DT11H11M\")) eq xs:time(\"04:03:05Z\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-add-dayTimeDuration-to-time-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-add-dayTimeDuration-to-time-14'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:time(\"04:04:05Z\") + xs:dayTimeDuration(\"P08DT08H05M\")) ne xs:time(\"05:08:02Z\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-add-dayTimeDuration-to-time-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-add-dayTimeDuration-to-time-15'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:time(\"08:09:09Z\") + xs:dayTimeDuration(\"P17DT10H02M\")) le xs:time(\"09:08:10Z\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-add-dayTimeDuration-to-time-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-add-dayTimeDuration-to-time-16'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:time(\"09:06:07Z\") + xs:dayTimeDuration(\"P18DT02H02M\")) ge xs:time(\"01:01:01Z\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-add-dayTimeDuration-to-time-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-add-dayTimeDuration-to-time-17'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:string(xs:time(\"12:07:08Z\") + xs:dayTimeDuration(\"P12DT10H07M\")) and fn:false()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-add-dayTimeDuration-to-time-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-TimeAddDTD-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "xs:time(\"08:12:32\") + xs:dayTimeDuration(\"P23DT09H32M59S\") eq xs:time(\"17:45:31\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-TimeAddDTD-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-TimeAddDTD-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "xs:dayTimeDuration(\"P23DT09H32M59S\") + xs:time(\"08:12:32\") eq xs:time(\"17:45:31\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-TimeAddDTD-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-TimeAddDTD-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "xs:time(\"10:10:10\") + xs:time(\"23:10:10\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-TimeAddDTD-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-add-dayTimeDuration-to-time-001'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
        declare function local:two-digit($number as xs:integer) { let $string := string($number) return if (string-length($string) lt 2) then concat('0', $string) else $string };
        declare function local:time($hour as xs:integer, $mins as xs:integer) { let $h := local:two-digit($hour), $m := local:two-digit($mins) return xs:time(concat( $h, ':', $m, ':00')) };
        local:time(12, 59) + xs:dayTimeDuration(\"P0D\")
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-add-dayTimeDuration-to-time-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "12:59:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-add-dayTimeDuration-to-time-002'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
        declare function local:two-digit($number as xs:integer) { let $string := string($number) return if (string-length($string) lt 2) then concat('0', $string) else $string };
        declare function local:time($hour as xs:integer, $mins as xs:integer) { let $h := local:two-digit($hour), $m := local:two-digit($mins) return xs:time(concat( $h, ':', $m, ':00')) };
        xs:dayTimeDuration(\"P0D\") + local:time(12, 59)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-add-dayTimeDuration-to-time-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "12:59:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
