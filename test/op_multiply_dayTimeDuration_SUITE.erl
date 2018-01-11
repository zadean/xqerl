-module('op_multiply_dayTimeDuration_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['op-multiply-dayTimeDuration2args-1'/1]).
-export(['op-multiply-dayTimeDuration2args-2'/1]).
-export(['op-multiply-dayTimeDuration2args-3'/1]).
-export(['op-multiply-dayTimeDuration2args-4'/1]).
-export(['op-multiply-dayTimeDuration2args-5'/1]).
-export(['op-multiply-dayTimeDuration-1'/1]).
-export(['op-multiply-dayTimeDuration-2'/1]).
-export(['op-multiply-dayTimeDuration-3'/1]).
-export(['op-multiply-dayTimeDuration-4'/1]).
-export(['op-multiply-dayTimeDuration-5'/1]).
-export(['op-multiply-dayTimeDuration-6'/1]).
-export(['op-multiply-dayTimeDuration-7'/1]).
-export(['op-multiply-dayTimeDuration-8'/1]).
-export(['op-multiply-dayTimeDuration-9'/1]).
-export(['op-multiply-dayTimeDuration-10'/1]).
-export(['op-multiply-dayTimeDuration-11'/1]).
-export(['op-multiply-dayTimeDuration-12'/1]).
-export(['op-multiply-dayTimeDuration-13'/1]).
-export(['op-multiply-dayTimeDuration-14'/1]).
-export(['op-multiply-dayTimeDuration-15'/1]).
-export(['op-multiply-dayTimeDuration-16'/1]).
-export(['op-multiply-dayTimeDuration-17'/1]).
-export(['op-multiply-dayTimeDuration-18'/1]).
-export(['K-DayTimeDurationMultiply-1'/1]).
-export(['K-DayTimeDurationMultiply-2'/1]).
-export(['K-DayTimeDurationMultiply-3'/1]).
-export(['K-DayTimeDurationMultiply-4'/1]).
-export(['K-DayTimeDurationMultiply-5'/1]).
-export(['K-DayTimeDurationMultiply-6'/1]).
-export(['K-DayTimeDurationMultiply-7'/1]).
-export(['K-DayTimeDurationMultiply-8'/1]).
-export(['K-DayTimeDurationMultiply-9'/1]).
-export(['cbcl-multiply-dayTimeDuration-001'/1]).
-export(['cbcl-multiply-dayTimeDuration-002'/1]).
-export(['cbcl-multiply-dayTimeDuration-003'/1]).
-export(['cbcl-multiply-dayTimeDuration-004'/1]).
-export(['cbcl-multiply-dayTimeDuration-005'/1]).
-export(['cbcl-multiply-dayTimeDuration-006'/1]).
-export(['cbcl-times-001'/1]).
-export(['cbcl-times-002'/1]).
-export(['cbcl-times-003'/1]).
-export(['cbcl-times-004'/1]).
-export(['cbcl-times-005'/1]).
-export(['cbcl-times-006'/1]).
-export(['cbcl-times-007'/1]).
-export(['cbcl-times-008'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> ct:timetrap({seconds,60}), xqerl_module:unload(all).
init_per_suite(Config) -> 
   DD = filename:dirname(filename:dirname(proplists:get_value(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   BaseDir = filename:join(TD, "op")

,[{base_dir, BaseDir}|Config].
all() -> [
   'op-multiply-dayTimeDuration2args-1',
   'op-multiply-dayTimeDuration2args-2',
   'op-multiply-dayTimeDuration2args-3',
   'op-multiply-dayTimeDuration2args-4',
   'op-multiply-dayTimeDuration2args-5',
   'op-multiply-dayTimeDuration-1',
   'op-multiply-dayTimeDuration-2',
   'op-multiply-dayTimeDuration-3',
   'op-multiply-dayTimeDuration-4',
   'op-multiply-dayTimeDuration-5',
   'op-multiply-dayTimeDuration-6',
   'op-multiply-dayTimeDuration-7',
   'op-multiply-dayTimeDuration-8',
   'op-multiply-dayTimeDuration-9',
   'op-multiply-dayTimeDuration-10',
   'op-multiply-dayTimeDuration-11',
   'op-multiply-dayTimeDuration-12',
   'op-multiply-dayTimeDuration-13',
   'op-multiply-dayTimeDuration-14',
   'op-multiply-dayTimeDuration-15',
   'op-multiply-dayTimeDuration-16',
   'op-multiply-dayTimeDuration-17',
   'op-multiply-dayTimeDuration-18',
   'K-DayTimeDurationMultiply-1',
   'K-DayTimeDurationMultiply-2',
   'K-DayTimeDurationMultiply-3',
   'K-DayTimeDurationMultiply-4',
   'K-DayTimeDurationMultiply-5',
   'K-DayTimeDurationMultiply-6',
   'K-DayTimeDurationMultiply-7',
   'K-DayTimeDurationMultiply-8',
   'K-DayTimeDurationMultiply-9',
   'cbcl-multiply-dayTimeDuration-001',
   'cbcl-multiply-dayTimeDuration-002',
   'cbcl-multiply-dayTimeDuration-003',
   'cbcl-multiply-dayTimeDuration-004',
   'cbcl-multiply-dayTimeDuration-005',
   'cbcl-multiply-dayTimeDuration-006',
   'cbcl-times-001',
   'cbcl-times-002',
   'cbcl-times-003',
   'cbcl-times-004',
   'cbcl-times-005',
   'cbcl-times-006',
   'cbcl-times-007',
   'cbcl-times-008'].
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
'op-multiply-dayTimeDuration2args-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:dayTimeDuration(\"P0DT0H0M0S\") * xs:double(\"-1.7976931348623157E308\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-multiply-dayTimeDuration2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "PT0S") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-multiply-dayTimeDuration2args-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:dayTimeDuration(\"P15DT11H59M59S\") * xs:double(\"0\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-multiply-dayTimeDuration2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "PT0S") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-multiply-dayTimeDuration2args-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:dayTimeDuration(\"P31DT23H59M59S\") * xs:double(\"0\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-multiply-dayTimeDuration2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "PT0S") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-multiply-dayTimeDuration2args-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:dayTimeDuration(\"P0DT0H0M0S\") * xs:double(\"0\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-multiply-dayTimeDuration2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "PT0S") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-multiply-dayTimeDuration2args-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:dayTimeDuration(\"P0DT0H0M0S\") * xs:double(\"1.7976931348623157E308\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-multiply-dayTimeDuration2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "PT0S") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-multiply-dayTimeDuration-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:dayTimeDuration(\"PT2H10M\") * 2.1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-multiply-dayTimeDuration-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "PT4H33M") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-multiply-dayTimeDuration-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:string((xs:dayTimeDuration(\"P10DT10H11M\")) * 2.0) and fn:false()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-multiply-dayTimeDuration-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-multiply-dayTimeDuration-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:string((xs:dayTimeDuration(\"P20DT20H10M\") * 2.0)) or fn:false()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-multiply-dayTimeDuration-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-multiply-dayTimeDuration-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:not(fn:string(xs:dayTimeDuration(\"P11DT12H04M\") * 2.0))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-multiply-dayTimeDuration-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-multiply-dayTimeDuration-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:boolean(fn:string(xs:dayTimeDuration(\"P05DT09H08M\") *2.0))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-multiply-dayTimeDuration-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-multiply-dayTimeDuration-6'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:number(xs:dayTimeDuration(\"P02DT06H09M\") *2.0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-multiply-dayTimeDuration-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "NaN") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-multiply-dayTimeDuration-7'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:string(xs:dayTimeDuration(\"P03DT04H08M\") * 2.0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-multiply-dayTimeDuration-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "P6DT8H16M") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-multiply-dayTimeDuration-8'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(xs:dayTimeDuration(\"P10DT01H01M\") * -2.0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-multiply-dayTimeDuration-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-P20DT2H2M") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-multiply-dayTimeDuration-9'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:string((xs:dayTimeDuration(\"P01DT02H01M\") * 2.0)) and fn:string((xs:dayTimeDuration(\"P02DT03H03M\") * 2.0 ))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-multiply-dayTimeDuration-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-multiply-dayTimeDuration-10'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:string((xs:dayTimeDuration(\"P05DT09H02M\") * 2.0)) or fn:string((xs:dayTimeDuration(\"P05DT05H03M\") * 2.0))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-multiply-dayTimeDuration-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-multiply-dayTimeDuration-11'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(xs:dayTimeDuration(\"P42DT10H10M\") * 2.0) div (xs:dayTimeDuration(\"P42DT10H10M\") * 2.0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-multiply-dayTimeDuration-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-multiply-dayTimeDuration-12'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:string((xs:dayTimeDuration(\"P10DT08H11M\") * 2.0)) and (fn:true())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-multiply-dayTimeDuration-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-multiply-dayTimeDuration-13'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(xs:dayTimeDuration(\"P23DT11H11M\") * 2.0) eq xs:dayTimeDuration(\"P23DT11H11M\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-multiply-dayTimeDuration-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-multiply-dayTimeDuration-14'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(xs:dayTimeDuration(\"P21DT08H12M\") * 2.0) ne xs:dayTimeDuration(\"P08DT08H05M\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-multiply-dayTimeDuration-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-multiply-dayTimeDuration-15'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(xs:dayTimeDuration(\"P10DT10H01M\") * 2.0) le xs:dayTimeDuration(\"P17DT10H02M\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-multiply-dayTimeDuration-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-multiply-dayTimeDuration-16'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(xs:dayTimeDuration(\"P13DT09H09M\") * 2.0) ge xs:dayTimeDuration(\"P18DT02H02M\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-multiply-dayTimeDuration-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-multiply-dayTimeDuration-17'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:count(xs:dayTimeDuration(\"P13DT09H09M\") * -0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-multiply-dayTimeDuration-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-multiply-dayTimeDuration-18'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:count(xs:dayTimeDuration(\"P13DT09H09M\") * +0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-multiply-dayTimeDuration-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-DayTimeDurationMultiply-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:dayTimeDuration(\"P3DT4H3M3.100S\") * 3 eq xs:dayTimeDuration(\"P9DT12H9M9.3S\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-DayTimeDurationMultiply-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-DayTimeDurationMultiply-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "3 * xs:dayTimeDuration(\"P3DT4H3M3.100S\") eq xs:dayTimeDuration(\"P9DT12H9M9.3S\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-DayTimeDurationMultiply-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-DayTimeDurationMultiply-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:dayTimeDuration(\"P3DT4H3M3.100S\") * 0 eq xs:dayTimeDuration(\"PT0S\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-DayTimeDurationMultiply-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-DayTimeDurationMultiply-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "0 * xs:dayTimeDuration(\"P3DT4H3M3.100S\") eq xs:dayTimeDuration(\"PT0S\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-DayTimeDurationMultiply-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-DayTimeDurationMultiply-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:dayTimeDuration(\"P3DT4H3M3.100S\") * xs:double(\"-0\") eq xs:dayTimeDuration(\"PT0S\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-DayTimeDurationMultiply-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-DayTimeDurationMultiply-6'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:double(\"-0\") * xs:dayTimeDuration(\"P3DT4H3M3.100S\") eq xs:dayTimeDuration(\"PT0S\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-DayTimeDurationMultiply-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-DayTimeDurationMultiply-7'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:dayTimeDuration(\"P3DT4H3M3.100S\") * xs:double(\"INF\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-DayTimeDurationMultiply-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODT0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-DayTimeDurationMultiply-8'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:dayTimeDuration(\"P3DT4H3M3.100S\") * xs:double(\"-INF\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-DayTimeDurationMultiply-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODT0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-DayTimeDurationMultiply-9'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:dayTimeDuration(\"P3DT4H3M3.100S\") * xs:double(\"NaN\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-DayTimeDurationMultiply-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCA0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-multiply-dayTimeDuration-001'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare function local:dayTimeDuration($days as xs:integer) as xs:dayTimeDuration { xs:dayTimeDuration(concat(\"P\", $days, \"D\")) }; local:dayTimeDuration(2) * 0",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-multiply-dayTimeDuration-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "PT0S") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-multiply-dayTimeDuration-002'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare function local:dayTimeDuration($days as xs:integer) as xs:dayTimeDuration { xs:dayTimeDuration(concat(\"P\", $days, \"D\")) }; local:dayTimeDuration(2) * 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-multiply-dayTimeDuration-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "P2D") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-multiply-dayTimeDuration-003'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare function local:dayTimeDuration($days as xs:integer) as xs:dayTimeDuration { xs:dayTimeDuration(concat(\"P\", $days, \"D\")) }; local:dayTimeDuration(2) * xs:double(\"NaN\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-multiply-dayTimeDuration-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCA0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-multiply-dayTimeDuration-004'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare function local:dayTimeDuration($days as xs:integer) as xs:dayTimeDuration { xs:dayTimeDuration(concat(\"P\", $days, \"D\")) }; 0 * local:dayTimeDuration(2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-multiply-dayTimeDuration-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "PT0S") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-multiply-dayTimeDuration-005'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare function local:dayTimeDuration($days as xs:integer) as xs:dayTimeDuration { xs:dayTimeDuration(concat(\"P\", $days, \"D\")) }; 1 * local:dayTimeDuration(2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-multiply-dayTimeDuration-005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "P2D") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-multiply-dayTimeDuration-006'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare function local:dayTimeDuration($days as xs:integer) as xs:dayTimeDuration { xs:dayTimeDuration(concat(\"P\", $days, \"D\")) }; xs:double(\"NaN\") * local:dayTimeDuration(2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-multiply-dayTimeDuration-006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCA0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-times-001'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:yearMonthDuration(\"P1M\") };
        local:f(false()) * 2",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-times-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "P2M") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-times-002'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:yearMonthDuration(\"P1M\") };
        local:f(true()) * 2",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-times-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-times-003'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:dayTimeDuration(\"P1D\") };
        local:f(false()) * 2",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-times-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "P2D") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-times-004'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:dayTimeDuration(\"P1D\") };
        local:f(true()) * 2",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-times-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-times-005'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:yearMonthDuration(\"P1M\") };
        2 * local:f(false())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-times-005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "P2M") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-times-006'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:yearMonthDuration(\"P1M\") };
        2 * local:f(true())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-times-006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-times-007'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:dayTimeDuration(\"P1D\") };
        2 * local:f(false())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-times-007.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "P2D") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-times-008'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:dayTimeDuration(\"P1D\") };
        2 * local:f(true())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-times-008.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
