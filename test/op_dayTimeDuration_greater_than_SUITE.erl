-module('op_dayTimeDuration_greater_than_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['op-dayTimeDuration-greater-than2args-1'/1]).
-export(['op-dayTimeDuration-greater-than2args-2'/1]).
-export(['op-dayTimeDuration-greater-than2args-3'/1]).
-export(['op-dayTimeDuration-greater-than2args-4'/1]).
-export(['op-dayTimeDuration-greater-than2args-5'/1]).
-export(['op-dayTimeDuration-greater-than2args-6'/1]).
-export(['op-dayTimeDuration-greater-than2args-7'/1]).
-export(['op-dayTimeDuration-greater-than2args-8'/1]).
-export(['op-dayTimeDuration-greater-than2args-9'/1]).
-export(['op-dayTimeDuration-greater-than2args-10'/1]).
-export(['op-dayTimeDuration-greater-than-3'/1]).
-export(['op-dayTimeDuration-greater-than-4'/1]).
-export(['op-dayTimeDuration-greater-than-5'/1]).
-export(['op-dayTimeDuration-greater-than-6'/1]).
-export(['op-dayTimeDuration-greater-than-7'/1]).
-export(['op-dayTimeDuration-greater-than-8'/1]).
-export(['op-dayTimeDuration-greater-than-9'/1]).
-export(['op-dayTimeDuration-greater-than-10'/1]).
-export(['op-dayTimeDuration-greater-than-11'/1]).
-export(['op-dayTimeDuration-greater-than-12'/1]).
-export(['op-dayTimeDuration-greater-than-13'/1]).
-export(['op-dayTimeDuration-greater-than-14'/1]).
-export(['K-DayTimeDurationGT-1'/1]).
-export(['K-DayTimeDurationGT-2'/1]).
-export(['K-DayTimeDurationGT-3'/1]).
-export(['K-DayTimeDurationGT-4'/1]).
-export(['K-DayTimeDurationGT-5'/1]).
-export(['K-DayTimeDurationGT-6'/1]).
-export(['cbcl-dayTimeDuration-greater-than-001'/1]).
-export(['cbcl-dayTimeDuration-greater-than-002'/1]).
-export(['cbcl-dayTimeDuration-greater-than-003'/1]).
-export(['cbcl-dayTimeDuration-greater-than-004'/1]).
-export(['cbcl-dayTimeDuration-greater-than-005'/1]).
-export(['cbcl-dayTimeDuration-greater-than-006'/1]).
-export(['cbcl-value-greater-equal-001'/1]).
-export(['cbcl-value-greater-equal-002'/1]).
-export(['cbcl-value-greater-equal-003'/1]).
-export(['cbcl-value-greater-equal-004'/1]).
-export(['cbcl-value-greater-equal-005'/1]).
-export(['cbcl-value-greater-equal-006'/1]).
-export(['cbcl-value-greater-equal-007'/1]).
-export(['cbcl-value-greater-equal-008'/1]).
-export(['cbcl-value-greater-equal-009'/1]).
-export(['cbcl-value-greater-equal-010'/1]).
-export(['cbcl-value-greater-equal-011'/1]).
-export(['cbcl-value-greater-equal-012'/1]).
-export(['cbcl-value-greater-than-001'/1]).
-export(['cbcl-value-greater-than-002'/1]).
-export(['cbcl-value-greater-than-003'/1]).
-export(['cbcl-value-greater-than-004'/1]).
-export(['cbcl-value-greater-than-005'/1]).
-export(['cbcl-value-greater-than-006'/1]).
-export(['cbcl-value-greater-than-007'/1]).
-export(['cbcl-value-greater-than-008'/1]).
-export(['cbcl-value-greater-than-009'/1]).
-export(['cbcl-value-greater-than-010'/1]).
-export(['cbcl-value-greater-than-011'/1]).
-export(['cbcl-value-greater-than-012'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> ct:timetrap({seconds,60}), xqerl_module:unload(all).
init_per_suite(Config) -> 
   DD = filename:dirname(filename:dirname(proplists:get_value(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   BaseDir = filename:join(TD, "op")

,[{base_dir, BaseDir}|Config].
all() -> [
   'op-dayTimeDuration-greater-than2args-1',
   'op-dayTimeDuration-greater-than2args-2',
   'op-dayTimeDuration-greater-than2args-3',
   'op-dayTimeDuration-greater-than2args-4',
   'op-dayTimeDuration-greater-than2args-5',
   'op-dayTimeDuration-greater-than2args-6',
   'op-dayTimeDuration-greater-than2args-7',
   'op-dayTimeDuration-greater-than2args-8',
   'op-dayTimeDuration-greater-than2args-9',
   'op-dayTimeDuration-greater-than2args-10',
   'op-dayTimeDuration-greater-than-3',
   'op-dayTimeDuration-greater-than-4',
   'op-dayTimeDuration-greater-than-5',
   'op-dayTimeDuration-greater-than-6',
   'op-dayTimeDuration-greater-than-7',
   'op-dayTimeDuration-greater-than-8',
   'op-dayTimeDuration-greater-than-9',
   'op-dayTimeDuration-greater-than-10',
   'op-dayTimeDuration-greater-than-11',
   'op-dayTimeDuration-greater-than-12',
   'op-dayTimeDuration-greater-than-13',
   'op-dayTimeDuration-greater-than-14',
   'K-DayTimeDurationGT-1',
   'K-DayTimeDurationGT-2',
   'K-DayTimeDurationGT-3',
   'K-DayTimeDurationGT-4',
   'K-DayTimeDurationGT-5',
   'K-DayTimeDurationGT-6',
   'cbcl-dayTimeDuration-greater-than-001',
   'cbcl-dayTimeDuration-greater-than-002',
   'cbcl-dayTimeDuration-greater-than-003',
   'cbcl-dayTimeDuration-greater-than-004',
   'cbcl-dayTimeDuration-greater-than-005',
   'cbcl-dayTimeDuration-greater-than-006',
   'cbcl-value-greater-equal-001',
   'cbcl-value-greater-equal-002',
   'cbcl-value-greater-equal-003',
   'cbcl-value-greater-equal-004',
   'cbcl-value-greater-equal-005',
   'cbcl-value-greater-equal-006',
   'cbcl-value-greater-equal-007',
   'cbcl-value-greater-equal-008',
   'cbcl-value-greater-equal-009',
   'cbcl-value-greater-equal-010',
   'cbcl-value-greater-equal-011',
   'cbcl-value-greater-equal-012',
   'cbcl-value-greater-than-001',
   'cbcl-value-greater-than-002',
   'cbcl-value-greater-than-003',
   'cbcl-value-greater-than-004',
   'cbcl-value-greater-than-005',
   'cbcl-value-greater-than-006',
   'cbcl-value-greater-than-007',
   'cbcl-value-greater-than-008',
   'cbcl-value-greater-than-009',
   'cbcl-value-greater-than-010',
   'cbcl-value-greater-than-011',
   'cbcl-value-greater-than-012'].
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
'op-dayTimeDuration-greater-than2args-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:dayTimeDuration(\"P0DT0H0M0S\") gt xs:dayTimeDuration(\"P0DT0H0M0S\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-dayTimeDuration-greater-than2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-dayTimeDuration-greater-than2args-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:dayTimeDuration(\"P15DT11H59M59S\") gt xs:dayTimeDuration(\"P0DT0H0M0S\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-dayTimeDuration-greater-than2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-dayTimeDuration-greater-than2args-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:dayTimeDuration(\"P31DT23H59M59S\") gt xs:dayTimeDuration(\"P0DT0H0M0S\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-dayTimeDuration-greater-than2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-dayTimeDuration-greater-than2args-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:dayTimeDuration(\"P0DT0H0M0S\") gt xs:dayTimeDuration(\"P15DT11H59M59S\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-dayTimeDuration-greater-than2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-dayTimeDuration-greater-than2args-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:dayTimeDuration(\"P0DT0H0M0S\") gt xs:dayTimeDuration(\"P31DT23H59M59S\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-dayTimeDuration-greater-than2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-dayTimeDuration-greater-than2args-6'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:dayTimeDuration(\"P0DT0H0M0S\") le xs:dayTimeDuration(\"P0DT0H0M0S\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-dayTimeDuration-greater-than2args-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-dayTimeDuration-greater-than2args-7'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:dayTimeDuration(\"P15DT11H59M59S\") le xs:dayTimeDuration(\"P0DT0H0M0S\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-dayTimeDuration-greater-than2args-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-dayTimeDuration-greater-than2args-8'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:dayTimeDuration(\"P31DT23H59M59S\") le xs:dayTimeDuration(\"P0DT0H0M0S\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-dayTimeDuration-greater-than2args-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-dayTimeDuration-greater-than2args-9'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:dayTimeDuration(\"P0DT0H0M0S\") le xs:dayTimeDuration(\"P15DT11H59M59S\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-dayTimeDuration-greater-than2args-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-dayTimeDuration-greater-than2args-10'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:dayTimeDuration(\"P0DT0H0M0S\") le xs:dayTimeDuration(\"P31DT23H59M59S\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-dayTimeDuration-greater-than2args-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-dayTimeDuration-greater-than-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:not((xs:dayTimeDuration(\"P15DT12H\") gt xs:dayTimeDuration(\"P14DT11H\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-dayTimeDuration-greater-than-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-dayTimeDuration-greater-than-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:not(xs:dayTimeDuration(\"P10DT11H\") ge xs:dayTimeDuration(\"P10DT10H\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-dayTimeDuration-greater-than-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-dayTimeDuration-greater-than-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:not(xs:dayTimeDuration(\"P08DT10H\") gt xs:dayTimeDuration(\"P9DT09H\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-dayTimeDuration-greater-than-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-dayTimeDuration-greater-than-6'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:not(xs:dayTimeDuration(\"P07DT09H\") ge xs:dayTimeDuration(\"P09DT09H\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-dayTimeDuration-greater-than-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-dayTimeDuration-greater-than-7'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(xs:dayTimeDuration(\"P10DT09H\") gt xs:dayTimeDuration(\"P09DT10H\")) and (xs:dayTimeDuration(\"P10DT01H\") gt xs:dayTimeDuration(\"P08DT06H\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-dayTimeDuration-greater-than-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-dayTimeDuration-greater-than-8'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(xs:dayTimeDuration(\"P10DT09H\") ge xs:dayTimeDuration(\"P10DT01H\")) and (xs:dayTimeDuration(\"P02DT04H\") ge xs:dayTimeDuration(\"P09DT07H\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-dayTimeDuration-greater-than-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-dayTimeDuration-greater-than-9'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(xs:dayTimeDuration(\"P10DT08H\") gt xs:dayTimeDuration(\"P10DT07H\")) or (xs:dayTimeDuration(\"P10DT09H\") gt xs:dayTimeDuration(\"P10DT09H\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-dayTimeDuration-greater-than-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-dayTimeDuration-greater-than-10'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(xs:dayTimeDuration(\"P10DT01H\") ge xs:dayTimeDuration(\"P09DT06H\")) or (xs:dayTimeDuration(\"P15DT01H\") ge xs:dayTimeDuration(\"P02DT04H\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-dayTimeDuration-greater-than-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-dayTimeDuration-greater-than-11'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(xs:dayTimeDuration(\"P10DT02H\") gt xs:dayTimeDuration(\"P01DT10H\")) or (fn:true())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-dayTimeDuration-greater-than-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-dayTimeDuration-greater-than-12'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(xs:dayTimeDuration(\"P10DT01H\") ge xs:dayTimeDuration(\"P09DT05H\")) or (fn:true())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-dayTimeDuration-greater-than-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-dayTimeDuration-greater-than-13'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(xs:dayTimeDuration(\"P30DT10H\") gt xs:dayTimeDuration(\"P01DT02H\")) or (fn:false())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-dayTimeDuration-greater-than-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-dayTimeDuration-greater-than-14'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(xs:dayTimeDuration(\"P10DT05H\") ge xs:dayTimeDuration(\"P20DT10H\")) or (fn:false())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-dayTimeDuration-greater-than-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-DayTimeDurationGT-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:dayTimeDuration(\"P3DT08H34M12.144S\") gt xs:dayTimeDuration(\"P3DT08H34M12.143S\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-DayTimeDurationGT-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-DayTimeDurationGT-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "not(xs:dayTimeDuration(\"P3DT08H34M12.144S\") gt xs:dayTimeDuration(\"P3DT08H34M12.144S\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-DayTimeDurationGT-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-DayTimeDurationGT-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "not(xs:dayTimeDuration(\"P3DT08H34M12.144S\") gt xs:dayTimeDuration(\"P3DT08H34M12.145S\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-DayTimeDurationGT-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-DayTimeDurationGT-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:dayTimeDuration(\"P3DT08H34M12.143S\") ge xs:dayTimeDuration(\"P3DT08H34M12.143S\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-DayTimeDurationGT-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-DayTimeDurationGT-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:dayTimeDuration(\"P3DT08H34M12.144S\") ge xs:dayTimeDuration(\"P3DT08H34M12.143S\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-DayTimeDurationGT-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-DayTimeDurationGT-6'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "not(xs:dayTimeDuration(\"P3DT08H34M12.143S\") ge xs:dayTimeDuration(\"P3DT08H34M12.144S\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-DayTimeDurationGT-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-dayTimeDuration-greater-than-001'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare function local:dayTimeDuration($days as xs:integer, $hours as xs:integer ) { xs:dayTimeDuration(concat('P', $days, 'DT', $hours, 'H')) }; 
         not(local:dayTimeDuration(1, 1) gt xs:dayTimeDuration(\"P0D\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-dayTimeDuration-greater-than-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-dayTimeDuration-greater-than-002'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare function local:dayTimeDuration($days as xs:integer, $hours as xs:integer ) { xs:dayTimeDuration(concat('P', $days, 'DT', $hours, 'H')) }; 
         not(local:dayTimeDuration(1, 1) ge xs:dayTimeDuration(\"P0D\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-dayTimeDuration-greater-than-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-dayTimeDuration-greater-than-003'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare function local:dayTimeDuration($dayTimeDuration as xs:dayTimeDuration, $null as xs:boolean) { if ($null) then () else $dayTimeDuration }; 
         exists(local:dayTimeDuration(xs:dayTimeDuration(\"P0D\"), fn:true()) gt xs:dayTimeDuration(\"P0D\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-dayTimeDuration-greater-than-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-dayTimeDuration-greater-than-004'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare function local:dayTimeDuration($dayTimeDuration as xs:dayTimeDuration, $null as xs:boolean) { if ($null) then () else $dayTimeDuration }; 
         local:dayTimeDuration(xs:dayTimeDuration(\"P0D\"), fn:false()) gt xs:dayTimeDuration(\"P0D\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-dayTimeDuration-greater-than-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-dayTimeDuration-greater-than-005'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare function local:dayTimeDuration($dayTimeDuration as xs:dayTimeDuration, $null as xs:boolean) { if ($null) then () else $dayTimeDuration }; 
         exists(local:dayTimeDuration(xs:dayTimeDuration(\"P0D\"), fn:true()) le xs:dayTimeDuration(\"P0D\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-dayTimeDuration-greater-than-005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-dayTimeDuration-greater-than-006'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare function local:dayTimeDuration($dayTimeDuration as xs:dayTimeDuration, $null as xs:boolean) { if ($null) then () else $dayTimeDuration }; 
         local:dayTimeDuration(xs:dayTimeDuration(\"P0D\"), fn:false()) le xs:dayTimeDuration(\"P0D\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-dayTimeDuration-greater-than-006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-value-greater-equal-001'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:yearMonthDuration(\"P1M\") };
        local:f(false()) ge xs:yearMonthDuration(\"P1Y\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-value-greater-equal-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-value-greater-equal-002'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:yearMonthDuration(\"P1M\") };
        local:f(true()) ge xs:yearMonthDuration(\"P1Y\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-value-greater-equal-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-value-greater-equal-003'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:dayTimeDuration(\"PT1H\") };
        local:f(false()) ge xs:dayTimeDuration(\"P1D\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-value-greater-equal-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-value-greater-equal-004'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:dayTimeDuration(\"PT1H\") };
        local:f(true()) ge xs:dayTimeDuration(\"P1D\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-value-greater-equal-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-value-greater-equal-005'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:yearMonthDuration(\"P1M\") };
        xs:yearMonthDuration(\"P1Y\") ge local:f(false())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-value-greater-equal-005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-value-greater-equal-006'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:yearMonthDuration(\"P1M\") };
        xs:yearMonthDuration(\"P1Y\") ge local:f(true())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-value-greater-equal-006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-value-greater-equal-007'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:dayTimeDuration(\"PT1H\") };
        xs:dayTimeDuration(\"P1D\") ge local:f(false())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-value-greater-equal-007.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-value-greater-equal-008'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:dayTimeDuration(\"PT1H\") };
        xs:dayTimeDuration(\"P1D\") ge local:f(true())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-value-greater-equal-008.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-value-greater-equal-009'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:yearMonthDuration(\"P1M\") };
        local:f(false()) ge local:f(false())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-value-greater-equal-009.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-value-greater-equal-010'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:yearMonthDuration(\"P1M\") };
        local:f(true()) ge local:f(false())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-value-greater-equal-010.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-value-greater-equal-011'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:dayTimeDuration(\"PT1H\") };
        local:f(false()) ge local:f(false())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-value-greater-equal-011.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-value-greater-equal-012'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:dayTimeDuration(\"PT1H\") };
        local:f(false()) ge local:f(true())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-value-greater-equal-012.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-value-greater-than-001'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:yearMonthDuration(\"P1M\") };
        local:f(false()) gt xs:yearMonthDuration(\"P1Y\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-value-greater-than-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-value-greater-than-002'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:yearMonthDuration(\"P1M\") };
        local:f(true()) gt xs:yearMonthDuration(\"P1Y\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-value-greater-than-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-value-greater-than-003'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:dayTimeDuration(\"PT1H\") };
        local:f(false()) gt xs:dayTimeDuration(\"P1D\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-value-greater-than-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-value-greater-than-004'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:dayTimeDuration(\"PT1H\") };
        local:f(true()) gt xs:dayTimeDuration(\"P1D\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-value-greater-than-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-value-greater-than-005'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:yearMonthDuration(\"P1M\") };
        xs:yearMonthDuration(\"P1Y\") gt local:f(false())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-value-greater-than-005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-value-greater-than-006'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:yearMonthDuration(\"P1M\") };
        xs:yearMonthDuration(\"P1Y\") gt local:f(true())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-value-greater-than-006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-value-greater-than-007'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:dayTimeDuration(\"PT1H\") };
        xs:dayTimeDuration(\"P1D\") gt local:f(false())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-value-greater-than-007.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-value-greater-than-008'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:dayTimeDuration(\"PT1H\") };
        xs:dayTimeDuration(\"P1D\") gt local:f(true())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-value-greater-than-008.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-value-greater-than-009'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:yearMonthDuration(\"P1M\") };
        local:f(false()) gt local:f(false())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-value-greater-than-009.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-value-greater-than-010'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:yearMonthDuration(\"P1M\") };
        local:f(true()) gt local:f(false())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-value-greater-than-010.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-value-greater-than-011'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:dayTimeDuration(\"PT1H\") };
        local:f(false()) gt local:f(false())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-value-greater-than-011.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-value-greater-than-012'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:dayTimeDuration(\"PT1H\") };
        local:f(false()) gt local:f(true())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-value-greater-than-012.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
