-module('fn_data_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-dataint1args-1'/1]).
-export(['fn-dataint1args-2'/1]).
-export(['fn-dataint1args-3'/1]).
-export(['fn-dataintg1args-1'/1]).
-export(['fn-dataintg1args-2'/1]).
-export(['fn-dataintg1args-3'/1]).
-export(['fn-datadec1args-1'/1]).
-export(['fn-datadec1args-2'/1]).
-export(['fn-datadec1args-3'/1]).
-export(['fn-datadbl1args-1'/1]).
-export(['fn-datadbl1args-2'/1]).
-export(['fn-datadbl1args-3'/1]).
-export(['fn-dataflt1args-1'/1]).
-export(['fn-dataflt1args-2'/1]).
-export(['fn-dataflt1args-3'/1]).
-export(['fn-datalng1args-1'/1]).
-export(['fn-datalng1args-2'/1]).
-export(['fn-datalng1args-3'/1]).
-export(['fn-datausht1args-1'/1]).
-export(['fn-datausht1args-2'/1]).
-export(['fn-datausht1args-3'/1]).
-export(['fn-datanint1args-1'/1]).
-export(['fn-datanint1args-2'/1]).
-export(['fn-datanint1args-3'/1]).
-export(['fn-datapint1args-1'/1]).
-export(['fn-datapint1args-2'/1]).
-export(['fn-datapint1args-3'/1]).
-export(['fn-dataulng1args-1'/1]).
-export(['fn-dataulng1args-2'/1]).
-export(['fn-dataulng1args-3'/1]).
-export(['fn-datanpi1args-1'/1]).
-export(['fn-datanpi1args-2'/1]).
-export(['fn-datanpi1args-3'/1]).
-export(['fn-datanni1args-1'/1]).
-export(['fn-datanni1args-2'/1]).
-export(['fn-datanni1args-3'/1]).
-export(['fn-datasht1args-1'/1]).
-export(['fn-datasht1args-2'/1]).
-export(['fn-datasht1args-3'/1]).
-export(['K-DataFunc-1'/1]).
-export(['K-DataFunc-2'/1]).
-export(['K-DataFunc-3'/1]).
-export(['K-DataFunc-4'/1]).
-export(['K2-DataFunc-1'/1]).
-export(['K2-DataFunc-2'/1]).
-export(['K2-DataFunc-3'/1]).
-export(['K2-DataFunc-4'/1]).
-export(['K2-DataFunc-5'/1]).
-export(['K2-DataFunc-6'/1]).
-export(['fn-datacomplextype-1'/1]).
-export(['ST-Data001'/1]).
-export(['fn-data-1'/1]).
-export(['fn-data-2'/1]).
-export(['fn-data-3'/1]).
-export(['fn-data-4'/1]).
-export(['fn-data-5'/1]).
-export(['fn-data-6'/1]).
-export(['fn-data-7'/1]).
-export(['cbcl-data-001'/1]).
-export(['cbcl-data-002'/1]).
-export(['cbcl-data-003'/1]).
-export(['cbcl-data-004'/1]).
-export(['cbcl-data-005'/1]).
-export(['cbcl-data-006'/1]).
-export(['cbcl-data-007'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> ct:timetrap({seconds,60}), xqerl_module:unload(all).
init_per_suite(Config) -> 
   DD = filename:dirname(filename:dirname(proplists:get_value(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   BaseDir = filename:join(TD, "fn")

,[{base_dir, BaseDir}|Config].
all() -> [
   'fn-dataint1args-1',
   'fn-dataint1args-2',
   'fn-dataint1args-3',
   'fn-dataintg1args-1',
   'fn-dataintg1args-2',
   'fn-dataintg1args-3',
   'fn-datadec1args-1',
   'fn-datadec1args-2',
   'fn-datadec1args-3',
   'fn-datadbl1args-1',
   'fn-datadbl1args-2',
   'fn-datadbl1args-3',
   'fn-dataflt1args-1',
   'fn-dataflt1args-2',
   'fn-dataflt1args-3',
   'fn-datalng1args-1',
   'fn-datalng1args-2',
   'fn-datalng1args-3',
   'fn-datausht1args-1',
   'fn-datausht1args-2',
   'fn-datausht1args-3',
   'fn-datanint1args-1',
   'fn-datanint1args-2',
   'fn-datanint1args-3',
   'fn-datapint1args-1',
   'fn-datapint1args-2',
   'fn-datapint1args-3',
   'fn-dataulng1args-1',
   'fn-dataulng1args-2',
   'fn-dataulng1args-3',
   'fn-datanpi1args-1',
   'fn-datanpi1args-2',
   'fn-datanpi1args-3',
   'fn-datanni1args-1',
   'fn-datanni1args-2',
   'fn-datanni1args-3',
   'fn-datasht1args-1',
   'fn-datasht1args-2',
   'fn-datasht1args-3',
   'K-DataFunc-1',
   'K-DataFunc-2',
   'K-DataFunc-3',
   'K-DataFunc-4',
   'K2-DataFunc-1',
   'K2-DataFunc-2',
   'K2-DataFunc-3',
   'K2-DataFunc-4',
   'K2-DataFunc-5',
   'K2-DataFunc-6',
   'fn-datacomplextype-1',
   'ST-Data001',
   'fn-data-1',
   'fn-data-2',
   'fn-data-3',
   'fn-data-4',
   'fn-data-5',
   'fn-data-6',
   'fn-data-7',
   'cbcl-data-001',
   'cbcl-data-002',
   'cbcl-data-003',
   'cbcl-data-004',
   'cbcl-data-005',
   'cbcl-data-006',
   'cbcl-data-007'].
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
environment('mixed',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "data/mixed.xml"), ".",""}]},
{schemas, [{filename:join(BaseDir, "data/mixedcontent.xsd"),"http://www.w3.org/XQueryTest/mixedcontent"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('complexData',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "data/complexData.xml"), ".",""}]},
{schemas, [{filename:join(BaseDir, "data/complexData.xsd"),"http://www.cbcl.co.uk/XQueryTest/complexData"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'fn-dataint1args-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:data((xs:int(\"-2147483648\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-dataint1args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-2147483648") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-dataint1args-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:data((xs:int(\"-1873914410\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-dataint1args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1873914410") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-dataint1args-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:data((xs:int(\"2147483647\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-dataint1args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2147483647") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-dataintg1args-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:data((xs:integer(\"-999999999999999999\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-dataintg1args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-dataintg1args-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:data((xs:integer(\"830993497117024304\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-dataintg1args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"830993497117024304") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-dataintg1args-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:data((xs:integer(\"999999999999999999\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-dataintg1args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-datadec1args-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:data((xs:decimal(\"-999999999999999999\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-datadec1args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-datadec1args-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:data((xs:decimal(\"617375191608514839\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-datadec1args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"617375191608514839") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-datadec1args-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:data((xs:decimal(\"999999999999999999\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-datadec1args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-datadbl1args-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:data((xs:double(\"-1.7976931348623157E308\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-datadbl1args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-1.7976931348623157E308") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-datadbl1args-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:data((xs:double(\"0\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-datadbl1args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-datadbl1args-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:data((xs:double(\"1.7976931348623157E308\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-datadbl1args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1.7976931348623157E308") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-dataflt1args-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:data((xs:float(\"-3.4028235E38\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-dataflt1args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-3.4028235E38") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-dataflt1args-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:data((xs:float(\"0\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-dataflt1args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-dataflt1args-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:data((xs:float(\"3.4028235E38\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-dataflt1args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "3.4028235E38") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-datalng1args-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:data((xs:long(\"-92233720368547758\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-datalng1args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-92233720368547758") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-datalng1args-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:data((xs:long(\"-47175562203048468\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-datalng1args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-47175562203048468") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-datalng1args-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:data((xs:long(\"92233720368547758\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-datalng1args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"92233720368547758") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-datausht1args-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:data((xs:unsignedShort(\"0\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-datausht1args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-datausht1args-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:data((xs:unsignedShort(\"44633\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-datausht1args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"44633") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-datausht1args-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:data((xs:unsignedShort(\"65535\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-datausht1args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"65535") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-datanint1args-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:data((xs:negativeInteger(\"-999999999999999999\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-datanint1args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-datanint1args-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:data((xs:negativeInteger(\"-297014075999096793\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-datanint1args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-297014075999096793") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-datanint1args-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:data((xs:negativeInteger(\"-1\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-datanint1args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-datapint1args-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:data((xs:positiveInteger(\"1\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-datapint1args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-datapint1args-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:data((xs:positiveInteger(\"52704602390610033\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-datapint1args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"52704602390610033") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-datapint1args-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:data((xs:positiveInteger(\"999999999999999999\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-datapint1args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-dataulng1args-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:data((xs:unsignedLong(\"0\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-dataulng1args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-dataulng1args-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:data((xs:unsignedLong(\"130747108607674654\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-dataulng1args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"130747108607674654") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-dataulng1args-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:data((xs:unsignedLong(\"184467440737095516\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-dataulng1args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"184467440737095516") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-datanpi1args-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:data((xs:nonPositiveInteger(\"-999999999999999999\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-datanpi1args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-datanpi1args-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:data((xs:nonPositiveInteger(\"-475688437271870490\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-datanpi1args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-475688437271870490") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-datanpi1args-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:data((xs:nonPositiveInteger(\"0\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-datanpi1args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-datanni1args-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:data((xs:nonNegativeInteger(\"0\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-datanni1args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-datanni1args-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:data((xs:nonNegativeInteger(\"303884545991464527\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-datanni1args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"303884545991464527") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-datanni1args-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:data((xs:nonNegativeInteger(\"999999999999999999\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-datanni1args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-datasht1args-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:data((xs:short(\"-32768\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-datasht1args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-32768") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-datasht1args-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:data((xs:short(\"-5324\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-datasht1args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-5324") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-datasht1args-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:data((xs:short(\"32767\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-datasht1args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"32767") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-DataFunc-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"XP20 XQ10"}.
'K-DataFunc-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "data(1, \"wrong param\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-DataFunc-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-DataFunc-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "count(data((1, 2, 3, 4, 5))) eq 5",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-DataFunc-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-DataFunc-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "empty(data( () ))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-DataFunc-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DataFunc-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "1!data()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DataFunc-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DataFunc-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "data(1, 2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DataFunc-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DataFunc-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
      	let $x := <e><f>1</f></e>
      	return $x/data()
      	
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DataFunc-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"xs:untypedAtomic") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DataFunc-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
      	data()
      	
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DataFunc-4.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DataFunc-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
      	(1, data#0)[data()]
      	
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DataFunc-5.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOTY0013") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DataFunc-6'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'fn-datacomplextype-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'ST-Data001'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'fn-data-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'fn-data-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "data([])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-data-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-data-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "data([1,2,3])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-data-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1,2,3") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-data-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "data([<a>1</a>, <a>2</a>, <a>3</a>])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-data-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_deep_eq(Res,"'1','2','3'") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"xs:untypedAtomic*") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-data-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "data([(1,2), (3,4), (5,6)])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-data-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1,2,3,4,5,6") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-data-6'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "data([[1,2], [3,4], [5,6], []])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-data-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1,2,3,4,5,6") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-data-7'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "data([[1,2], [3,4], [5,6], [map{1:2}]])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-data-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOTY0013") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-data-001'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:data(fn:error()) instance of xs:integer",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-data-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOER0000") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-data-002'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'cbcl-data-003'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'cbcl-data-004'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'cbcl-data-005'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'cbcl-data-006'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'cbcl-data-007'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
