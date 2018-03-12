-module('op_subtract_dateTimes_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['op-subtract-dateTimes-yielding-DTD-1'/1]).
-export(['op-subtract-dateTimes-yielding-DTD-2'/1]).
-export(['op-subtract-dateTimes-yielding-DTD-3'/1]).
-export(['op-subtract-dateTimes-yielding-DTD-4'/1]).
-export(['op-subtract-dateTimes-yielding-DTD-5'/1]).
-export(['op-subtract-dateTimes-yielding-DTD-6'/1]).
-export(['op-subtract-dateTimes-yielding-DTD-7'/1]).
-export(['op-subtract-dateTimes-yielding-DTD-8'/1]).
-export(['op-subtract-dateTimes-yielding-DTD-9'/1]).
-export(['op-subtract-dateTimes-yielding-DTD-10'/1]).
-export(['op-subtract-dateTimes-yielding-DTD-11'/1]).
-export(['op-subtract-dateTimes-yielding-DTD-12'/1]).
-export(['op-subtract-dateTimes-yielding-DTD-13'/1]).
-export(['op-subtract-dateTimes-yielding-DTD-14'/1]).
-export(['op-subtract-dateTimes-yielding-DTD-15'/1]).
-export(['op-subtract-dateTimes-yielding-DTD-16'/1]).
-export(['op-subtract-dateTimes-yielding-DTD-17'/1]).
-export(['op-subtract-dateTimes-yielding-DTD-18'/1]).
-export(['op-subtract-dateTimes-yielding-DTD-19'/1]).
-export(['op-subtract-dateTimes-yielding-DTD-20'/1]).
-export(['K-dateTimesSubtract-1'/1]).
-export(['K-dateTimesSubtract-2'/1]).
-export(['K-dateTimesSubtract-3'/1]).
-export(['K-dateTimesSubtract-4'/1]).
-export(['K-dateTimesSubtract-5'/1]).
-export(['K-dateTimesSubtract-6'/1]).
-export(['cbcl-subtract-dateTimes-001'/1]).
-export(['cbcl-subtract-dateTimes-002'/1]).
-export(['cbcl-subtract-dateTimes-003'/1]).
-export(['cbcl-subtract-dateTimes-004'/1]).
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
   'op-subtract-dateTimes-yielding-DTD-1',
   'op-subtract-dateTimes-yielding-DTD-2',
   'op-subtract-dateTimes-yielding-DTD-3',
   'op-subtract-dateTimes-yielding-DTD-4',
   'op-subtract-dateTimes-yielding-DTD-5',
   'op-subtract-dateTimes-yielding-DTD-6',
   'op-subtract-dateTimes-yielding-DTD-7',
   'op-subtract-dateTimes-yielding-DTD-8',
   'op-subtract-dateTimes-yielding-DTD-9',
   'op-subtract-dateTimes-yielding-DTD-10',
   'op-subtract-dateTimes-yielding-DTD-11',
   'op-subtract-dateTimes-yielding-DTD-12',
   'op-subtract-dateTimes-yielding-DTD-13',
   'op-subtract-dateTimes-yielding-DTD-14',
   'op-subtract-dateTimes-yielding-DTD-15',
   'op-subtract-dateTimes-yielding-DTD-16',
   'op-subtract-dateTimes-yielding-DTD-17',
   'op-subtract-dateTimes-yielding-DTD-18',
   'op-subtract-dateTimes-yielding-DTD-19',
   'op-subtract-dateTimes-yielding-DTD-20',
   'K-dateTimesSubtract-1',
   'K-dateTimesSubtract-2',
   'K-dateTimesSubtract-3',
   'K-dateTimesSubtract-4',
   'K-dateTimesSubtract-5',
   'K-dateTimesSubtract-6',
   'cbcl-subtract-dateTimes-001',
   'cbcl-subtract-dateTimes-002',
   'cbcl-subtract-dateTimes-003',
   'cbcl-subtract-dateTimes-004'].
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
'op-subtract-dateTimes-yielding-DTD-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"2000-10-30T06:12:00-05:00\") - xs:dateTime(\"1999-11-28T09:00:00Z\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-subtract-dateTimes-yielding-DTD-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "P337DT2H12M") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-subtract-dateTimes-yielding-DTD-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"2000-12-12T09:08:07+05:00\") - xs:dateTime(\"1999-12-12T09:08:07+05:00\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-subtract-dateTimes-yielding-DTD-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "P366D") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-subtract-dateTimes-yielding-DTD-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"2000-02-03T02:09:07-06:00\") - xs:dateTime(\"1998-02-03T02:09:07-06:00\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-subtract-dateTimes-yielding-DTD-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "P730D") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-subtract-dateTimes-yielding-DTD-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:not(fn:string(xs:dateTime(\"1998-09-12T11:12:12Z\") - xs:dateTime(\"1996-02-02T01:01:01Z\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-subtract-dateTimes-yielding-DTD-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-subtract-dateTimes-yielding-DTD-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:boolean(fn:string(xs:dateTime(\"1962-03-12T10:09:09Z\") - xs:dateTime(\"1961-02-01T20:10:10Z\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-subtract-dateTimes-yielding-DTD-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-subtract-dateTimes-yielding-DTD-6'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:number(xs:dateTime(\"1988-01-28T10:09:08Z\") - xs:dateTime(\"1987-01-01T01:01:02Z\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-subtract-dateTimes-yielding-DTD-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "NaN") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-subtract-dateTimes-yielding-DTD-7'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:string(xs:dateTime(\"1989-07-05T02:02:02Z\") - xs:dateTime(\"1988-01-28T03:03:03Z\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-subtract-dateTimes-yielding-DTD-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "P523DT22H58M59S") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-subtract-dateTimes-yielding-DTD-8'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"0001-01-01T01:01:01Z\") - xs:dateTime(\"2005-07-06T12:12:12Z\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-subtract-dateTimes-yielding-DTD-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-P732132DT11H11M11S") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-subtract-dateTimes-yielding-DTD-9'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:string((xs:dateTime(\"1993-12-09T04:04:04Z\") - xs:dateTime(\"1992-12-09T05:05:05Z\"))) and fn:string((xs:dateTime(\"1993-12-09T01:01:01Z\") - xs:dateTime(\"1992-12-09T06:06:06Z\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-subtract-dateTimes-yielding-DTD-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-subtract-dateTimes-yielding-DTD-10'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:string((xs:dateTime(\"1985-07-05T07:07:07Z\") - xs:dateTime(\"1984-07-05T08:08:08Z\"))) or fn:string((xs:dateTime(\"1985-07-05T09:09:09Z\") - xs:dateTime(\"1984-07-05T10:10:10Z\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-subtract-dateTimes-yielding-DTD-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-subtract-dateTimes-yielding-DTD-11'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:dateTime(\"1985-07-05T07:07:07Z\") - xs:dateTime(\"1985-07-05T07:07:07Z\")) div xs:dayTimeDuration(\"P05DT08H11M\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-subtract-dateTimes-yielding-DTD-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-subtract-dateTimes-yielding-DTD-12'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:string((xs:dateTime(\"1980-03-02T11:11:11Z\") - xs:dateTime(\"1981-12-12T12:12:12Z\"))) and (fn:true())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-subtract-dateTimes-yielding-DTD-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-subtract-dateTimes-yielding-DTD-13'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:string((xs:dateTime(\"1980-05-05T13:13:13Z\") - xs:dateTime(\"1979-10-05T14:14:14Z\"))) eq xs:string(xs:dayTimeDuration(\"P17DT10H02M\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-subtract-dateTimes-yielding-DTD-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-subtract-dateTimes-yielding-DTD-14'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:string((xs:dateTime(\"1979-12-12T16:16:16Z\") - xs:dateTime(\"1978-12-12T17:17:17Z\"))) ne xs:string(xs:dayTimeDuration(\"P17DT10H02M\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-subtract-dateTimes-yielding-DTD-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-subtract-dateTimes-yielding-DTD-15'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:string((xs:dateTime(\"1978-12-12T10:09:08Z\") - xs:dateTime(\"1977-12-12T09:08:07Z\"))) le xs:string(xs:dayTimeDuration(\"P17DT10H02M\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-subtract-dateTimes-yielding-DTD-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-subtract-dateTimes-yielding-DTD-16'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:string((xs:dateTime(\"1977-12-12T01:02:02Z\") - xs:dateTime(\"1976-12-12T02:03:04Z\"))) ge xs:string(xs:dayTimeDuration(\"P18DT02H02M\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-subtract-dateTimes-yielding-DTD-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-subtract-dateTimes-yielding-DTD-17'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:string(xs:dateTime(\"2000-12-12T12:07:08Z\") - xs:dateTime(\"1999-12-12T13:08:09Z\")) and fn:false()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-subtract-dateTimes-yielding-DTD-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-subtract-dateTimes-yielding-DTD-18'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:string((xs:dateTime(\"1999-10-23T03:02:01Z\") - xs:dateTime(\"1998-09-09T04:04:05Z\"))) or fn:false()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-subtract-dateTimes-yielding-DTD-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-subtract-dateTimes-yielding-DTD-19'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:dateTime(\"1999-10-23T01:01:01Z\") - xs:dateTime(\"1998-09-09T02:02:02Z\")) * xs:decimal(2.0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-subtract-dateTimes-yielding-DTD-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "P817DT21H57M58S") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-subtract-dateTimes-yielding-DTD-20'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:dateTime(\"1999-10-23T09:08:07Z\") - xs:dateTime(\"1998-09-09T04:03:02Z\")) + xs:dayTimeDuration(\"P17DT10H02M\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-subtract-dateTimes-yielding-DTD-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "P426DT15H7M5S") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-dateTimesSubtract-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"1999-07-19T08:23:12.765\") - xs:dateTime(\"1999-07-19T08:23:12.765\") eq xs:dayTimeDuration(\"PT0S\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-dateTimesSubtract-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-dateTimesSubtract-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"1999-10-12T08:01:23\") + xs:dateTime(\"1999-10-12T08:01:23\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-dateTimesSubtract-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-dateTimesSubtract-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"1999-10-12T08:01:23\") div xs:dateTime(\"1999-10-12T08:01:23\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-dateTimesSubtract-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-dateTimesSubtract-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"1999-10-12T08:01:23\") * xs:dateTime(\"1999-10-12T08:01:23\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-dateTimesSubtract-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-dateTimesSubtract-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"1999-10-12T08:01:23\") mod xs:dateTime(\"1999-10-12T08:01:23\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-dateTimesSubtract-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-dateTimesSubtract-6'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "xs:dayTimeDuration(\"P3D\") - xs:dateTime(\"1999-08-12T08:01:23\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-dateTimesSubtract-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-subtract-dateTimes-001'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"-25252734927766554-12-31T12:00:00\") - xs:dateTime(\"25252734927766554-12-31T12:00:00\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-subtract-dateTimes-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODT0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-subtract-dateTimes-002'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"-25252734927766554-12-31T12:00:00\") - xs:dateTime(\"25252734927766554-12-31T12:00:00+01:00\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-subtract-dateTimes-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODT0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-subtract-dateTimes-003'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"2008-12-31T12:00:00\") - xs:dateTime(\"2002-12-31T12:00:00+01:00\") + implicit-timezone()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-subtract-dateTimes-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "P2192DT1H") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-subtract-dateTimes-004'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"2002-12-31T12:00:00+01:00\") - xs:dateTime(\"2008-12-31T12:00:00\") - implicit-timezone()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-subtract-dateTimes-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-P2192DT1H") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
