-module('op_gMonthDay_equal_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['op-gMonthDay-equal2args-1'/1]).
-export(['op-gMonthDay-equal2args-2'/1]).
-export(['op-gMonthDay-equal2args-3'/1]).
-export(['op-gMonthDay-equal2args-4'/1]).
-export(['op-gMonthDay-equal2args-5'/1]).
-export(['op-gMonthDay-equal2args-6'/1]).
-export(['op-gMonthDay-equal2args-7'/1]).
-export(['op-gMonthDay-equal2args-8'/1]).
-export(['op-gMonthDay-equal2args-9'/1]).
-export(['op-gMonthDay-equal2args-10'/1]).
-export(['op-gMonthDay-equal-2'/1]).
-export(['op-gMonthDay-equal-3'/1]).
-export(['op-gMonthDay-equal-4'/1]).
-export(['op-gMonthDay-equal-5'/1]).
-export(['op-gMonthDay-equal-6'/1]).
-export(['op-gMonthDay-equal-7'/1]).
-export(['op-gMonthDay-equal-8'/1]).
-export(['op-gMonthDay-equal-9'/1]).
-export(['op-gMonthDay-equal-10'/1]).
-export(['op-gMonthDay-equal-11'/1]).
-export(['op-gMonthDay-equal-12'/1]).
-export(['op-gMonthDay-equal-13'/1]).
-export(['op-gMonthDay-equal-14'/1]).
-export(['K-gMonthDayEQ-1'/1]).
-export(['K-gMonthDayEQ-2'/1]).
-export(['K-gMonthDayEQ-3'/1]).
-export(['K-gMonthDayEQ-4'/1]).
-export(['K-gMonthDayEQ-5'/1]).
-export(['K-gMonthDayEQ-6'/1]).
-export(['K-gMonthDayEQ-7'/1]).
-export(['K-gMonthDayEQ-8'/1]).
-export(['cbcl-gMonthDay-equal-001'/1]).
-export(['cbcl-gMonthDay-equal-002'/1]).
-export(['cbcl-gMonthDay-equal-003'/1]).
-export(['cbcl-gMonthDay-equal-004'/1]).
-export(['cbcl-gMonthDay-equal-005'/1]).
-export(['cbcl-gMonthDay-equal-006'/1]).
-export(['cbcl-gMonthDay-equal-007'/1]).
-export(['cbcl-gMonthDay-equal-008'/1]).
-export(['cbcl-gMonthDay-equal-009'/1]).
-export(['cbcl-gMonthDay-equal-010'/1]).
-export(['cbcl-gMonthDay-equal-011'/1]).
-export(['cbcl-gMonthDay-equal-012'/1]).
-export(['cbcl-gMonthDay-equal-013'/1]).
-export(['cbcl-gMonthDay-equal-014'/1]).
-export(['cbcl-gMonthDay-equal-015'/1]).
-export(['cbcl-gMonthDay-equal-016'/1]).
-export(['cbcl-gMonthDay-equal-017'/1]).
-export(['cbcl-gMonthDay-equal-018'/1]).
-export(['cbcl-gMonthDay-equal-019'/1]).
-export(['cbcl-gMonthDay-equal-020'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> ct:timetrap({seconds,60}), xqerl_module:unload(all).
init_per_suite(Config) -> 
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   BaseDir = filename:join(TD, "op")

,[{base_dir, BaseDir}|Config].
all() -> [
   'op-gMonthDay-equal2args-1',
   'op-gMonthDay-equal2args-2',
   'op-gMonthDay-equal2args-3',
   'op-gMonthDay-equal2args-4',
   'op-gMonthDay-equal2args-5',
   'op-gMonthDay-equal2args-6',
   'op-gMonthDay-equal2args-7',
   'op-gMonthDay-equal2args-8',
   'op-gMonthDay-equal2args-9',
   'op-gMonthDay-equal2args-10',
   'op-gMonthDay-equal-2',
   'op-gMonthDay-equal-3',
   'op-gMonthDay-equal-4',
   'op-gMonthDay-equal-5',
   'op-gMonthDay-equal-6',
   'op-gMonthDay-equal-7',
   'op-gMonthDay-equal-8',
   'op-gMonthDay-equal-9',
   'op-gMonthDay-equal-10',
   'op-gMonthDay-equal-11',
   'op-gMonthDay-equal-12',
   'op-gMonthDay-equal-13',
   'op-gMonthDay-equal-14',
   'K-gMonthDayEQ-1',
   'K-gMonthDayEQ-2',
   'K-gMonthDayEQ-3',
   'K-gMonthDayEQ-4',
   'K-gMonthDayEQ-5',
   'K-gMonthDayEQ-6',
   'K-gMonthDayEQ-7',
   'K-gMonthDayEQ-8',
   'cbcl-gMonthDay-equal-001',
   'cbcl-gMonthDay-equal-002',
   'cbcl-gMonthDay-equal-003',
   'cbcl-gMonthDay-equal-004',
   'cbcl-gMonthDay-equal-005',
   'cbcl-gMonthDay-equal-006',
   'cbcl-gMonthDay-equal-007',
   'cbcl-gMonthDay-equal-008',
   'cbcl-gMonthDay-equal-009',
   'cbcl-gMonthDay-equal-010',
   'cbcl-gMonthDay-equal-011',
   'cbcl-gMonthDay-equal-012',
   'cbcl-gMonthDay-equal-013',
   'cbcl-gMonthDay-equal-014',
   'cbcl-gMonthDay-equal-015',
   'cbcl-gMonthDay-equal-016',
   'cbcl-gMonthDay-equal-017',
   'cbcl-gMonthDay-equal-018',
   'cbcl-gMonthDay-equal-019',
   'cbcl-gMonthDay-equal-020'].
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
'op-gMonthDay-equal2args-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "xs:gMonthDay(\"--01-01Z\") eq xs:gMonthDay(\"--01-01Z\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-gMonthDay-equal2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-gMonthDay-equal2args-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "xs:gMonthDay(\"--04-10Z\") eq xs:gMonthDay(\"--01-01Z\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-gMonthDay-equal2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-gMonthDay-equal2args-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "xs:gMonthDay(\"--12-31Z\") eq xs:gMonthDay(\"--01-01Z\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-gMonthDay-equal2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-gMonthDay-equal2args-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "xs:gMonthDay(\"--01-01Z\") eq xs:gMonthDay(\"--04-10Z\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-gMonthDay-equal2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-gMonthDay-equal2args-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "xs:gMonthDay(\"--01-01Z\") eq xs:gMonthDay(\"--12-31Z\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-gMonthDay-equal2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-gMonthDay-equal2args-6'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "xs:gMonthDay(\"--01-01Z\") ne xs:gMonthDay(\"--01-01Z\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-gMonthDay-equal2args-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-gMonthDay-equal2args-7'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "xs:gMonthDay(\"--04-10Z\") ne xs:gMonthDay(\"--01-01Z\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-gMonthDay-equal2args-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-gMonthDay-equal2args-8'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "xs:gMonthDay(\"--12-31Z\") ne xs:gMonthDay(\"--01-01Z\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-gMonthDay-equal2args-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-gMonthDay-equal2args-9'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "xs:gMonthDay(\"--01-01Z\") ne xs:gMonthDay(\"--04-10Z\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-gMonthDay-equal2args-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-gMonthDay-equal2args-10'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "xs:gMonthDay(\"--01-01Z\") ne xs:gMonthDay(\"--12-31Z\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-gMonthDay-equal2args-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-gMonthDay-equal-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:gMonthDay(\"--12-25Z\") eq xs:gMonthDay(\"--12-26Z\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-gMonthDay-equal-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-gMonthDay-equal-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:not((xs:gMonthDay(\"--12-10Z\") eq xs:gMonthDay(\"--12-10Z\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-gMonthDay-equal-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-gMonthDay-equal-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:not(xs:gMonthDay(\"--05-01Z\") ne xs:gMonthDay(\"--06-12Z\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-gMonthDay-equal-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-gMonthDay-equal-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:not(xs:gMonthDay(\"--11-10Z\") eq xs:gMonthDay(\"--10-02Z\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-gMonthDay-equal-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-gMonthDay-equal-6'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:not(xs:gMonthDay(\"--05-10Z\") ne xs:gMonthDay(\"--05-10Z\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-gMonthDay-equal-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-gMonthDay-equal-7'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:gMonthDay(\"--04-02Z\") eq xs:gMonthDay(\"--02-03Z\")) and (xs:gMonthDay(\"--01-07Z\") eq xs:gMonthDay(\"--12-10Z\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-gMonthDay-equal-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-gMonthDay-equal-8'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:gMonthDay(\"--12-10Z\") ne xs:gMonthDay(\"--03-11Z\")) and (xs:gMonthDay(\"--05-12Z\") ne xs:gMonthDay(\"--08-08Z\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-gMonthDay-equal-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-gMonthDay-equal-9'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:gMonthDay(\"--02-01Z\") eq xs:gMonthDay(\"--02-10Z\")) or (xs:gMonthDay(\"--06-02Z\") eq xs:gMonthDay(\"--06-03Z\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-gMonthDay-equal-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-gMonthDay-equal-10'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:gMonthDay(\"--06-02Z\") ne xs:gMonthDay(\"--06-09Z\")) or (xs:gMonthDay(\"--08-06Z\") ne xs:gMonthDay(\"--09-01Z\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-gMonthDay-equal-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-gMonthDay-equal-11'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:gMonthDay(\"--03-04Z\") eq xs:gMonthDay(\"--01-07Z\")) or (fn:true())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-gMonthDay-equal-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-gMonthDay-equal-12'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:gMonthDay(\"--08-04Z\") ne xs:gMonthDay(\"--07-12Z\")) or (fn:true())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-gMonthDay-equal-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-gMonthDay-equal-13'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:gMonthDay(\"--05-05Z\") eq xs:gMonthDay(\"--05-05Z\")) or (fn:false())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-gMonthDay-equal-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-gMonthDay-equal-14'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:gMonthDay(\"--09-09Z\") ne xs:gMonthDay(\"--09-10Z\")) or (fn:false())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-gMonthDay-equal-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-gMonthDayEQ-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "xs:gMonthDay(\"--04-01 \") eq xs:gMonthDay(\"--04-01\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-gMonthDayEQ-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-gMonthDayEQ-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "not(xs:gMonthDay(\"--03-03\") eq xs:gMonthDay(\"--04-03\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-gMonthDayEQ-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-gMonthDayEQ-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "xs:gMonthDay(\"--04-12\") ne xs:gMonthDay(\"--04-11\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-gMonthDayEQ-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-gMonthDayEQ-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "not(xs:gMonthDay(\"--04-11\") ne xs:gMonthDay(\"--04-11\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-gMonthDayEQ-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-gMonthDayEQ-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "xs:gMonthDay(\"--03-01-00:00\") eq xs:gMonthDay(\"--03-01Z\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-gMonthDayEQ-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-gMonthDayEQ-6'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "xs:gMonthDay(\"--03-01+00:00\") eq xs:gMonthDay(\"--03-01Z\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-gMonthDayEQ-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-gMonthDayEQ-7'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "xs:gMonthDay(\"--03-01Z\") eq xs:gMonthDay(\"--03-01Z\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-gMonthDayEQ-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-gMonthDayEQ-8'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "xs:gMonthDay(\"--03-01-00:00\") eq xs:gMonthDay(\"--03-01+00:00\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-gMonthDayEQ-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-gMonthDay-equal-001'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:gMonthDay($day as xs:integer) { if ($day lt 10) then xs:gMonthDay(concat(\"--12-0\", $day)) else xs:gMonthDay(concat(\"--12-\", $day)) }; not(local:gMonthDay(1) eq xs:gMonthDay(\"--12-31\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-gMonthDay-equal-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-gMonthDay-equal-002'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "if (implicit-timezone() eq xs:dayTimeDuration('PT9M'))
            then xs:gMonthDay(\"--12-30\") eq xs:gMonthDay(\"--12-31+09:01\")
            else xs:gMonthDay(\"--12-30\") eq xs:gMonthDay(\"--12-31+09:00\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-gMonthDay-equal-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-gMonthDay-equal-003'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "if (implicit-timezone() eq xs:dayTimeDuration('PT9M'))
            then xs:gMonthDay(\"--12-31+09:01\") eq xs:gMonthDay(\"--12-30\")
            else xs:gMonthDay(\"--12-31+09:00\") eq xs:gMonthDay(\"--12-30\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-gMonthDay-equal-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-gMonthDay-equal-004'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "if (implicit-timezone() eq xs:dayTimeDuration('-PT9M'))
            then xs:gMonthDay(\"--12-30\") eq xs:gMonthDay(\"--12-31-09:01\")
            else xs:gMonthDay(\"--12-30\") eq xs:gMonthDay(\"--12-31-09:00\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-gMonthDay-equal-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-gMonthDay-equal-005'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "if (implicit-timezone() eq xs:dayTimeDuration('-PT9M'))
            then xs:gMonthDay(\"--12-31-09:01\") eq xs:gMonthDay(\"--12-30\")
            else xs:gMonthDay(\"--12-31-09:00\") eq xs:gMonthDay(\"--12-30\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-gMonthDay-equal-005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-gMonthDay-equal-006'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:gMonthDay($day as xs:integer) { if ($day lt 10) then xs:gMonthDay(concat(\"--12-0\", $day)) else xs:gMonthDay(concat(\"--12-\", $day)) }; not(local:gMonthDay(1) ne xs:gMonthDay(\"--12-31\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-gMonthDay-equal-006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-gMonthDay-equal-007'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "if (implicit-timezone() eq xs:dayTimeDuration('PT9M'))
            then xs:gMonthDay(\"--12-30\") ne xs:gMonthDay(\"--12-31+09:01\")
            else xs:gMonthDay(\"--12-30\") ne xs:gMonthDay(\"--12-31+09:00\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-gMonthDay-equal-007.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-gMonthDay-equal-008'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "if (implicit-timezone() eq xs:dayTimeDuration('PT9M'))
            then xs:gMonthDay(\"--12-31+09:01\") ne xs:gMonthDay(\"--12-30\")
            else xs:gMonthDay(\"--12-31+09:00\") ne xs:gMonthDay(\"--12-30\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-gMonthDay-equal-008.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-gMonthDay-equal-009'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "if (implicit-timezone() eq xs:dayTimeDuration('-PT9M'))
            then xs:gMonthDay(\"--12-30\") ne xs:gMonthDay(\"--12-31-09:01\")
            else xs:gMonthDay(\"--12-30\") ne xs:gMonthDay(\"--12-31-09:00\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-gMonthDay-equal-009.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-gMonthDay-equal-010'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "if (implicit-timezone() eq xs:dayTimeDuration('-PT9M'))
            then xs:gMonthDay(\"--12-31-09:01\") ne xs:gMonthDay(\"--12-30\")
            else xs:gMonthDay(\"--12-31-09:00\") ne xs:gMonthDay(\"--12-30\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-gMonthDay-equal-010.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-gMonthDay-equal-011'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:gMonthDay($gMonthDay as xs:gMonthDay, $null as xs:boolean) { if ($null) then () else $gMonthDay }; exists(local:gMonthDay(xs:gMonthDay(\"--12-31\"), fn:true()) eq xs:gMonthDay(\"--12-31\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-gMonthDay-equal-011.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-gMonthDay-equal-012'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:gMonthDay($gMonthDay as xs:gMonthDay, $null as xs:boolean) { if ($null) then () else $gMonthDay }; local:gMonthDay(xs:gMonthDay(\"--12-31\"), fn:false()) eq xs:gMonthDay(\"--12-31\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-gMonthDay-equal-012.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-gMonthDay-equal-013'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:gMonthDay($gMonthDay as xs:gMonthDay, $null as xs:boolean) { if ($null) then () else $gMonthDay }; exists(local:gMonthDay(xs:gMonthDay(\"--12-31\"), fn:true()) ne xs:gMonthDay(\"--12-31\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-gMonthDay-equal-013.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-gMonthDay-equal-014'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:gMonthDay($gMonthDay as xs:gMonthDay, $null as xs:boolean) { if ($null) then () else $gMonthDay }; local:gMonthDay(xs:gMonthDay(\"--12-31\"), fn:false()) ne xs:gMonthDay(\"--12-31\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-gMonthDay-equal-014.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-gMonthDay-equal-015'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "xs:gMonthDay(\"--01-30-12:00\") eq xs:gMonthDay(\"--01-31+12:00\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-gMonthDay-equal-015.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-gMonthDay-equal-016'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "xs:gMonthDay(\"--01-31+12:00\") eq xs:gMonthDay(\"--01-30-12:00\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-gMonthDay-equal-016.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-gMonthDay-equal-017'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "xs:gMonthDay(\"--01-30-12:00\") ne xs:gMonthDay(\"--01-31+12:00\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-gMonthDay-equal-017.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-gMonthDay-equal-018'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "xs:gMonthDay(\"--01-31+12:00\") ne xs:gMonthDay(\"--01-30-12:00\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-gMonthDay-equal-018.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-gMonthDay-equal-019'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "if (implicit-timezone() eq xs:dayTimeDuration('PT1M'))
            then xs:gMonthDay(\"--12-30\") eq xs:gMonthDay(\"--12-31+01:01\")
            else xs:gMonthDay(\"--12-30\") eq xs:gMonthDay(\"--12-31+01:00\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-gMonthDay-equal-019.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-gMonthDay-equal-020'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "if (implicit-timezone() eq xs:dayTimeDuration('PT1M'))
            then xs:gMonthDay(\"--12-31+01:01\") eq xs:gMonthDay(\"--12-30\")
            else xs:gMonthDay(\"--12-31+01:00\") eq xs:gMonthDay(\"--12-30\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-gMonthDay-equal-020.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
