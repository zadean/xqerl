-module('op_add_dayTimeDuration_to_date_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['op-add-dayTimeDuration-to-date2args-1'/1]).
-export(['op-add-dayTimeDuration-to-date2args-2'/1]).
-export(['op-add-dayTimeDuration-to-date2args-3'/1]).
-export(['op-add-dayTimeDuration-to-date2args-4'/1]).
-export(['op-add-dayTimeDuration-to-date2args-5'/1]).
-export(['op-add-dayTimeDuration-to-date-1'/1]).
-export(['op-add-dayTimeDuration-to-datealt-2'/1]).
-export(['op-add-dayTimeDuration-to-date-3'/1]).
-export(['op-add-dayTimeDuration-to-date-4'/1]).
-export(['op-add-dayTimeDuration-to-date-5'/1]).
-export(['op-add-dayTimeDuration-to-date-6'/1]).
-export(['op-add-dayTimeDuration-to-date-7'/1]).
-export(['op-add-dayTimeDuration-to-date-8'/1]).
-export(['op-add-dayTimeDuration-to-date-9'/1]).
-export(['op-add-dayTimeDuration-to-date-10'/1]).
-export(['op-add-dayTimeDuration-to-date-12'/1]).
-export(['op-add-dayTimeDuration-to-date-13'/1]).
-export(['op-add-dayTimeDuration-to-date-14'/1]).
-export(['op-add-dayTimeDuration-to-date-15'/1]).
-export(['op-add-dayTimeDuration-to-date-16'/1]).
-export(['K-DateAddDTD-1'/1]).
-export(['K-DateAddDTD-2'/1]).
-export(['cbcl-add-dayTimeDuration-to-date-001'/1]).
-export(['cbcl-add-dayTimeDuration-to-date-002'/1]).
-export(['cbcl-add-dayTimeDuration-to-date-003'/1]).
-export(['Add-UnionType-36'/1]).
-export(['Add-UnionType-37'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> ct:timetrap({seconds,60}), xqerl_module:unload(all).
init_per_suite(Config) -> 
   DD = filename:dirname(filename:dirname(proplists:get_value(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   BaseDir = filename:join(TD, "op")

,[{base_dir, BaseDir}|Config].
all() -> [
   'op-add-dayTimeDuration-to-date2args-1',
   'op-add-dayTimeDuration-to-date2args-2',
   'op-add-dayTimeDuration-to-date2args-3',
   'op-add-dayTimeDuration-to-date2args-4',
   'op-add-dayTimeDuration-to-date2args-5',
   'op-add-dayTimeDuration-to-date-1',
   'op-add-dayTimeDuration-to-datealt-2',
   'op-add-dayTimeDuration-to-date-3',
   'op-add-dayTimeDuration-to-date-4',
   'op-add-dayTimeDuration-to-date-5',
   'op-add-dayTimeDuration-to-date-6',
   'op-add-dayTimeDuration-to-date-7',
   'op-add-dayTimeDuration-to-date-8',
   'op-add-dayTimeDuration-to-date-9',
   'op-add-dayTimeDuration-to-date-10',
   'op-add-dayTimeDuration-to-date-12',
   'op-add-dayTimeDuration-to-date-13',
   'op-add-dayTimeDuration-to-date-14',
   'op-add-dayTimeDuration-to-date-15',
   'op-add-dayTimeDuration-to-date-16',
   'K-DateAddDTD-1',
   'K-DateAddDTD-2',
   'cbcl-add-dayTimeDuration-to-date-001',
   'cbcl-add-dayTimeDuration-to-date-002',
   'cbcl-add-dayTimeDuration-to-date-003',
   'Add-UnionType-36',
   'Add-UnionType-37'].
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
];
environment('union-List-defined-Types',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, [{filename:join(BaseDir, "../prod/SchemaImport/unionListDefined.xsd"),"http://www.w3.org/XQueryTest/unionListDefined"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'op-add-dayTimeDuration-to-date2args-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:date(\"1970-01-01Z\") + xs:dayTimeDuration(\"P0DT0H0M0S\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-add-dayTimeDuration-to-date2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1970-01-01Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-add-dayTimeDuration-to-date2args-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:date(\"1983-11-17Z\") + xs:dayTimeDuration(\"P0DT0H0M0S\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-add-dayTimeDuration-to-date2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1983-11-17Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-add-dayTimeDuration-to-date2args-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:date(\"2030-12-31Z\") + xs:dayTimeDuration(\"P0DT0H0M0S\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-add-dayTimeDuration-to-date2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2030-12-31Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-add-dayTimeDuration-to-date2args-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:date(\"1970-01-01Z\") + xs:dayTimeDuration(\"P15DT11H59M59S\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-add-dayTimeDuration-to-date2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1970-01-16Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-add-dayTimeDuration-to-date2args-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:date(\"1970-01-01Z\") + xs:dayTimeDuration(\"P31DT23H59M59S\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-add-dayTimeDuration-to-date2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1970-02-01Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-add-dayTimeDuration-to-date-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:date(\"2004-10-30Z\") + xs:dayTimeDuration(\"P2DT2H30M0S\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-add-dayTimeDuration-to-date-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2004-11-01Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-add-dayTimeDuration-to-datealt-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:string((xs:date(\"2000-12-12Z\") + xs:dayTimeDuration(\"P19DT13H10M\"))) and fn:false()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-add-dayTimeDuration-to-datealt-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-add-dayTimeDuration-to-date-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:string((xs:date(\"1999-10-23Z\") + xs:dayTimeDuration(\"P19DT13H10M\"))) or fn:false()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-add-dayTimeDuration-to-date-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-add-dayTimeDuration-to-date-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:not(fn:string(xs:date(\"1998-09-12Z\") + xs:dayTimeDuration(\"P02DT07H01M\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-add-dayTimeDuration-to-date-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-add-dayTimeDuration-to-date-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:boolean(fn:string(xs:date(\"1962-03-12Z\") + xs:dayTimeDuration(\"P03DT08H06M\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-add-dayTimeDuration-to-date-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-add-dayTimeDuration-to-date-6'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:number(xs:date(\"1988-01-28Z\") + xs:dayTimeDuration(\"P10DT08H01M\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-add-dayTimeDuration-to-date-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "NaN") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-add-dayTimeDuration-to-date-7'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:string(xs:date(\"1989-07-05Z\") + xs:dayTimeDuration(\"P01DT09H02M\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-add-dayTimeDuration-to-date-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1989-07-06Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-add-dayTimeDuration-to-date-8'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(xs:date(\"0001-01-01Z\") + xs:dayTimeDuration(\"-P11DT02H02M\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-add-dayTimeDuration-to-date-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "-0001-12-20Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_string_value(Res, "0000-12-20Z") of 
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
'op-add-dayTimeDuration-to-date-9'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:string((xs:date(\"1993-12-09Z\") + xs:dayTimeDuration(\"P03DT01H04M\"))) and fn:string((xs:date(\"1993-12-09Z\") + xs:dayTimeDuration(\"P01DT01H03M\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-add-dayTimeDuration-to-date-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-add-dayTimeDuration-to-date-10'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:string((xs:date(\"1985-07-05Z\") + xs:dayTimeDuration(\"P03DT01H04M\"))) or fn:string((xs:date(\"1985-07-05Z\") + xs:dayTimeDuration(\"P01DT01H03M\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-add-dayTimeDuration-to-date-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-add-dayTimeDuration-to-date-12'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:string((xs:date(\"1980-03-02Z\") + xs:dayTimeDuration(\"P05DT08H11M\"))) and (fn:true())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-add-dayTimeDuration-to-date-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-add-dayTimeDuration-to-date-13'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(xs:date(\"1980-05-05Z\") + xs:dayTimeDuration(\"P23DT11H11M\")) eq xs:date(\"1980-05-05Z\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-add-dayTimeDuration-to-date-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-add-dayTimeDuration-to-date-14'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(xs:date(\"1979-12-12Z\") + xs:dayTimeDuration(\"P08DT08H05M\")) ne xs:date(\"1979-12-12Z\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-add-dayTimeDuration-to-date-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-add-dayTimeDuration-to-date-15'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(xs:date(\"1978-12-12Z\") + xs:dayTimeDuration(\"P17DT10H02M\")) le xs:date(\"1978-12-12Z\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-add-dayTimeDuration-to-date-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-add-dayTimeDuration-to-date-16'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(xs:date(\"1977-12-12Z\") + xs:dayTimeDuration(\"P18DT02H02M\")) ge xs:date(\"1977-12-12Z\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-add-dayTimeDuration-to-date-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-DateAddDTD-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:date(\"1999-08-12\") + xs:dayTimeDuration(\"P23DT09H32M59S\") eq xs:date(\"1999-09-04\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-DateAddDTD-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-DateAddDTD-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:dayTimeDuration(\"P23DT09H32M59S\") + xs:date(\"1999-08-12\") eq xs:date(\"1999-09-04\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-DateAddDTD-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-add-dayTimeDuration-to-date-001'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
      	declare function local:two-digit($number as xs:integer) { 
      		let $string := string($number) 
      		return if (string-length($string) lt 2) then concat('0', $string) else $string 
      	}; 
      	declare function local:date($year as xs:integer, $month as xs:integer, $day as xs:integer) { 
      		let $m := local:two-digit($month), $d := local:two-digit($day) 
      		return xs:date(concat($year, '-', $m, '-', $d)) 
      	}; 
      	local:date(2008, 05, 12) + xs:dayTimeDuration(\"P0D\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-add-dayTimeDuration-to-date-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2008-05-12") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-add-dayTimeDuration-to-date-002'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
      	declare function local:two-digit($number as xs:integer) { 
      		let $string := string($number) 
      		return if (string-length($string) lt 2) then concat('0', $string) else $string 
      	}; 
      	declare function local:date($year as xs:integer, $month as xs:integer, $day as xs:integer) { 
      		let $m := local:two-digit($month), $d := local:two-digit($day) 
      		return xs:date(concat($year, '-', $m, '-', $d)) 
      	}; 
      	xs:dayTimeDuration(\"P0D\") + local:date(2008, 05, 12)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-add-dayTimeDuration-to-date-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2008-05-12") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-add-dayTimeDuration-to-date-003'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
      declare function local:two-digit($number as xs:integer) { 
      	let $string := string($number) return if (string-length($string) lt 2) then concat('0', $string) else $string 
      }; 
      declare function local:date($year as xs:integer, $month as xs:integer, $day as xs:integer) { 
      	let $m := local:two-digit($month), $d := local:two-digit($day) return xs:date(concat($year, '-', $m, '-', $d)) 
      }; 
      local:date(25252734927766555, 05, 12) + xs:dayTimeDuration(\"P4267296D\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-add-dayTimeDuration-to-date-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODT0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Add-UnionType-36'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"schemaImport"}.
'Add-UnionType-37'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"schemaImport"}.
