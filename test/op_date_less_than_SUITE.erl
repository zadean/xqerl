-module('op_date_less_than_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['op-date-less-than2args-1'/1]).
-export(['op-date-less-than2args-2'/1]).
-export(['op-date-less-than2args-3'/1]).
-export(['op-date-less-than2args-4'/1]).
-export(['op-date-less-than2args-5'/1]).
-export(['op-date-less-than2args-6'/1]).
-export(['op-date-less-than2args-7'/1]).
-export(['op-date-less-than2args-8'/1]).
-export(['op-date-less-than2args-9'/1]).
-export(['op-date-less-than2args-10'/1]).
-export(['op-date-less-than-1'/1]).
-export(['op-date-less-than-2'/1]).
-export(['op-date-less-than-3'/1]).
-export(['op-date-less-than-4'/1]).
-export(['op-date-less-than-5'/1]).
-export(['op-date-less-than-6'/1]).
-export(['op-date-less-than-7'/1]).
-export(['op-date-less-than-8'/1]).
-export(['op-date-less-than-9'/1]).
-export(['op-date-less-than-10'/1]).
-export(['op-date-less-than-11'/1]).
-export(['op-date-less-than-12'/1]).
-export(['op-date-less-than-13'/1]).
-export(['op-date-less-than-14'/1]).
-export(['K-DateLT-1'/1]).
-export(['K-DateLT-2'/1]).
-export(['K-DateLT-3'/1]).
-export(['K-DateLT-4'/1]).
-export(['K-DateLT-5'/1]).
-export(['K-DateLT-6'/1]).
-export(['cbcl-date-ge-001'/1]).
-export(['cbcl-date-lt-001'/1]).
-export(['cbcl-date-less-than-001'/1]).
-export(['cbcl-date-less-than-002'/1]).
-export(['cbcl-date-less-than-003'/1]).
-export(['cbcl-date-less-than-004'/1]).
-export(['cbcl-date-less-than-005'/1]).
-export(['cbcl-date-less-than-006'/1]).
-export(['cbcl-date-less-than-007'/1]).
-export(['cbcl-date-less-than-008'/1]).
-export(['cbcl-date-less-than-009'/1]).
-export(['cbcl-date-less-than-010'/1]).
-export(['cbcl-date-less-than-011'/1]).
-export(['cbcl-date-less-than-012'/1]).
-export(['cbcl-date-less-than-013'/1]).
-export(['cbcl-date-less-than-014'/1]).
-export(['cbcl-date-less-than-015'/1]).
-export(['cbcl-date-less-than-016'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> ct:timetrap({seconds,60}), xqerl_module:unload(all).
init_per_suite(Config) -> 
   DD = filename:dirname(filename:dirname(proplists:get_value(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   BaseDir = filename:join(TD, "op")

,[{base_dir, BaseDir}|Config].
all() -> [
   'op-date-less-than2args-1',
   'op-date-less-than2args-2',
   'op-date-less-than2args-3',
   'op-date-less-than2args-4',
   'op-date-less-than2args-5',
   'op-date-less-than2args-6',
   'op-date-less-than2args-7',
   'op-date-less-than2args-8',
   'op-date-less-than2args-9',
   'op-date-less-than2args-10',
   'op-date-less-than-1',
   'op-date-less-than-2',
   'op-date-less-than-3',
   'op-date-less-than-4',
   'op-date-less-than-5',
   'op-date-less-than-6',
   'op-date-less-than-7',
   'op-date-less-than-8',
   'op-date-less-than-9',
   'op-date-less-than-10',
   'op-date-less-than-11',
   'op-date-less-than-12',
   'op-date-less-than-13',
   'op-date-less-than-14',
   'K-DateLT-1',
   'K-DateLT-2',
   'K-DateLT-3',
   'K-DateLT-4',
   'K-DateLT-5',
   'K-DateLT-6',
   'cbcl-date-ge-001',
   'cbcl-date-lt-001',
   'cbcl-date-less-than-001',
   'cbcl-date-less-than-002',
   'cbcl-date-less-than-003',
   'cbcl-date-less-than-004',
   'cbcl-date-less-than-005',
   'cbcl-date-less-than-006',
   'cbcl-date-less-than-007',
   'cbcl-date-less-than-008',
   'cbcl-date-less-than-009',
   'cbcl-date-less-than-010',
   'cbcl-date-less-than-011',
   'cbcl-date-less-than-012',
   'cbcl-date-less-than-013',
   'cbcl-date-less-than-014',
   'cbcl-date-less-than-015',
   'cbcl-date-less-than-016'].
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
'op-date-less-than2args-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:date(\"1970-01-01Z\") lt xs:date(\"1970-01-01Z\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-date-less-than2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-date-less-than2args-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:date(\"1983-11-17Z\") lt xs:date(\"1970-01-01Z\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-date-less-than2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-date-less-than2args-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:date(\"2030-12-31Z\") lt xs:date(\"1970-01-01Z\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-date-less-than2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-date-less-than2args-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:date(\"1970-01-01Z\") lt xs:date(\"1983-11-17Z\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-date-less-than2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-date-less-than2args-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:date(\"1970-01-01Z\") lt xs:date(\"2030-12-31Z\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-date-less-than2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-date-less-than2args-6'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:date(\"1970-01-01Z\") ge xs:date(\"1970-01-01Z\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-date-less-than2args-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-date-less-than2args-7'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:date(\"1983-11-17Z\") ge xs:date(\"1970-01-01Z\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-date-less-than2args-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-date-less-than2args-8'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:date(\"2030-12-31Z\") ge xs:date(\"1970-01-01Z\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-date-less-than2args-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-date-less-than2args-9'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:date(\"1970-01-01Z\") ge xs:date(\"1983-11-17Z\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-date-less-than2args-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-date-less-than2args-10'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:date(\"1970-01-01Z\") ge xs:date(\"2030-12-31Z\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-date-less-than2args-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-date-less-than-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(xs:date(\"2004-12-25Z\") lt xs:date(\"2004-12-25-05:00\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-date-less-than-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-date-less-than-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(xs:date(\"2004-12-25-12:00\") le xs:date(\"2004-12-26+12:00\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-date-less-than-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-date-less-than-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:not((xs:date(\"2005-12-25Z\") lt xs:date(\"2005-12-26Z\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-date-less-than-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-date-less-than-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:not(xs:date(\"2005-04-02Z\") le xs:date(\"2005-04-02Z\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-date-less-than-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-date-less-than-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:not(xs:date(\"2000-12-25Z\") lt xs:date(\"2000-11-25Z\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-date-less-than-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-date-less-than-6'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:not(xs:date(\"2005-10-25Z\") le xs:date(\"2005-10-23Z\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-date-less-than-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-date-less-than-7'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(xs:date(\"2000-01-01Z\") lt xs:date(\"2000-01-01Z\")) and (xs:date(\"2001-02-02Z\") lt xs:date(\"2001-03-02Z\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-date-less-than-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-date-less-than-8'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(xs:date(\"2000-01-25Z\") le xs:date(\"2000-10-26Z\")) and (xs:date(\"1975-10-26Z\") le xs:date(\"1975-10-28Z\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-date-less-than-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-date-less-than-9'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(xs:date(\"2000-10-26Z\") lt xs:date(\"2000-10-28Z\")) or (xs:date(\"1976-10-28Z\") lt xs:date(\"1976-10-28Z\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-date-less-than-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-date-less-than-10'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(xs:date(\"1976-10-25Z\") le xs:date(\"1976-10-28Z\")) or (xs:date(\"1980-08-11Z\") le xs:date(\"1980-08-10Z\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-date-less-than-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-date-less-than-11'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(xs:date(\"1980-05-18Z\") lt xs:date(\"1980-05-17Z\")) or (fn:true())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-date-less-than-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-date-less-than-12'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(xs:date(\"2000-10-25Z\") le xs:date(\"2000-10-26Z\")) or (fn:true())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-date-less-than-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-date-less-than-13'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(xs:date(\"1980-01-01Z\") lt xs:date(\"1980-10-01Z\")) or (fn:false())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-date-less-than-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-date-less-than-14'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(xs:date(\"1980-10-25Z\") le xs:date(\"1980-10-26Z\")) or (fn:false())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-date-less-than-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-DateLT-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:date(\"2004-07-12\") lt xs:date(\"2004-07-13\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-DateLT-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-DateLT-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "not(xs:date(\"2004-07-13\") lt xs:date(\"2004-07-12\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-DateLT-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-DateLT-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "not(xs:date(\"2004-07-13\") lt xs:date(\"2004-07-13\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-DateLT-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-DateLT-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:date(\"2004-07-12\") le xs:date(\"2004-07-12\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-DateLT-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-DateLT-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:date(\"2004-07-12\") le xs:date(\"2004-07-12\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-DateLT-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-DateLT-6'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "not(xs:date(\"2004-07-13\") le xs:date(\"2004-07-12\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-DateLT-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-date-ge-001'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:date(\"25252734927766555-07-28\") >= xs:date(\"-25252734927766555-06-07+02:00\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-date-ge-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"FODT0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-date-lt-001'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:date(\"-25252734927766555-06-07+02:00\") < xs:date(\"25252734927766555-07-28\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-date-lt-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"FODT0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-date-less-than-001'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
      	declare function local:two-digit($number as xs:integer) { 
      		let $string := string($number) return if (string-length($string) lt 2) then concat('0', $string) else $string 
      	}; 
      	declare function local:date($year as xs:integer, $month as xs:integer, $day as xs:integer) { 
      		let $m := local:two-digit($month), $d := local:two-digit($day) return xs:date(concat($year, '-', $m, '-', $d)) 
      	}; 
      	not(local:date(2008, 05, 12) lt xs:date(\"1972-12-15\"))
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-date-less-than-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-date-less-than-002'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:date(\"2008-01-30\") lt xs:date(\"2008-01-31+09:00\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-date-less-than-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-date-less-than-003'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:date(\"2008-01-31+09:00\") lt xs:date(\"2008-01-30\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-date-less-than-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-date-less-than-004'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:date(\"2008-01-31\") lt xs:date(\"2008-01-31+09:00\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-date-less-than-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-date-less-than-005'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:date(\"2008-01-31+09:00\") lt xs:date(\"2008-01-31\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-date-less-than-005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-date-less-than-006'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
      	declare function local:two-digit($number as xs:integer) { let $string := string($number) return if (string-length($string) lt 2) then concat('0', $string) else $string }; 
      	declare function local:date($year as xs:integer, $month as xs:integer, $day as xs:integer) { let $m := local:two-digit($month), $d := local:two-digit($day) return xs:date(concat($year, '-', $m, '-', $d)) }; 
      	not(local:date(2008, 05, 12) le xs:date(\"1972-12-15\"))
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-date-less-than-006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-date-less-than-007'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:date(\"2008-01-30\") le xs:date(\"2008-01-31+09:00\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-date-less-than-007.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-date-less-than-008'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:date(\"2008-01-31+09:00\") le xs:date(\"2008-01-30\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-date-less-than-008.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-date-less-than-009'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:date(\"2008-01-31\") le xs:date(\"2008-01-31+09:00\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-date-less-than-009.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-date-less-than-010'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:date(\"2008-01-31+09:00\") le xs:date(\"2008-01-31\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-date-less-than-010.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-date-less-than-011'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
      	declare function local:date($date as xs:date, $null as xs:boolean) { if ($null) then () else $date }; 
      	exists(local:date(xs:date(\"1972-12-15\"), fn:true()) lt xs:date(\"1972-12-15\"))
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-date-less-than-011.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-date-less-than-012'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
      	declare function local:date($date as xs:date, $null as xs:boolean) { if ($null) then () else $date }; 
      	local:date(xs:date(\"1972-12-15\"), fn:false()) lt xs:date(\"1972-12-15\")
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-date-less-than-012.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-date-less-than-013'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
      	declare function local:date($date as xs:date, $null as xs:boolean) { if ($null) then () else $date }; 
      	exists(local:date(xs:date(\"1972-12-15\"), fn:true()) ge xs:date(\"1972-12-15\"))
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-date-less-than-013.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-date-less-than-014'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
      	declare function local:date($date as xs:date, $null as xs:boolean) { if ($null) then () else $date }; 
      	local:date(xs:date(\"1972-12-15\"), fn:false()) ge xs:date(\"1972-12-15\")
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-date-less-than-014.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-date-less-than-015'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
      	declare function local:date($date as xs:string, $timezone as xs:string) { xs:date( concat($date, $timezone) ) }; 
      	adjust-date-to-timezone(local:date(\"1972-12-14\", \"-12:00\")) lt adjust-date-to-timezone(xs:date(\"1972-12-15+12:00\"))
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-date-less-than-015.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-date-less-than-016'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
      	declare function local:date($date as xs:string, $timezone as xs:string) { xs:date( concat($date, $timezone) ) }; 
      	adjust-date-to-timezone(local:date(\"1972-12-14\", \"-12:00\")) le adjust-date-to-timezone(xs:date(\"1972-12-15+12:00\"))
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-date-less-than-016.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
