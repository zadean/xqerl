-module('op_concat_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['op-concatint2args-1'/1]).
-export(['op-concatint2args-2'/1]).
-export(['op-concatint2args-3'/1]).
-export(['op-concatint2args-4'/1]).
-export(['op-concatint2args-5'/1]).
-export(['op-concatintg2args-1'/1]).
-export(['op-concatintg2args-2'/1]).
-export(['op-concatintg2args-3'/1]).
-export(['op-concatintg2args-4'/1]).
-export(['op-concatintg2args-5'/1]).
-export(['op-concatdec2args-1'/1]).
-export(['op-concatdec2args-2'/1]).
-export(['op-concatdec2args-3'/1]).
-export(['op-concatdec2args-4'/1]).
-export(['op-concatdec2args-5'/1]).
-export(['op-concatdbl2args-1'/1]).
-export(['op-concatdbl2args-2'/1]).
-export(['op-concatdbl2args-3'/1]).
-export(['op-concatdbl2args-4'/1]).
-export(['op-concatdbl2args-5'/1]).
-export(['op-concatflt2args-1'/1]).
-export(['op-concatflt2args-2'/1]).
-export(['op-concatflt2args-3'/1]).
-export(['op-concatflt2args-4'/1]).
-export(['op-concatflt2args-5'/1]).
-export(['op-concatlng2args-1'/1]).
-export(['op-concatlng2args-2'/1]).
-export(['op-concatlng2args-3'/1]).
-export(['op-concatlng2args-4'/1]).
-export(['op-concatlng2args-5'/1]).
-export(['op-concatusht2args-1'/1]).
-export(['op-concatusht2args-2'/1]).
-export(['op-concatusht2args-3'/1]).
-export(['op-concatusht2args-4'/1]).
-export(['op-concatusht2args-5'/1]).
-export(['op-concatnint2args-1'/1]).
-export(['op-concatnint2args-2'/1]).
-export(['op-concatnint2args-3'/1]).
-export(['op-concatnint2args-4'/1]).
-export(['op-concatnint2args-5'/1]).
-export(['op-concatpint2args-1'/1]).
-export(['op-concatpint2args-2'/1]).
-export(['op-concatpint2args-3'/1]).
-export(['op-concatpint2args-4'/1]).
-export(['op-concatpint2args-5'/1]).
-export(['op-concatulng2args-1'/1]).
-export(['op-concatulng2args-2'/1]).
-export(['op-concatulng2args-3'/1]).
-export(['op-concatulng2args-4'/1]).
-export(['op-concatulng2args-5'/1]).
-export(['op-concatnpi2args-1'/1]).
-export(['op-concatnpi2args-2'/1]).
-export(['op-concatnpi2args-3'/1]).
-export(['op-concatnpi2args-4'/1]).
-export(['op-concatnpi2args-5'/1]).
-export(['op-concatnni2args-1'/1]).
-export(['op-concatnni2args-2'/1]).
-export(['op-concatnni2args-3'/1]).
-export(['op-concatnni2args-4'/1]).
-export(['op-concatnni2args-5'/1]).
-export(['op-concatsht2args-1'/1]).
-export(['op-concatsht2args-2'/1]).
-export(['op-concatsht2args-3'/1]).
-export(['op-concatsht2args-4'/1]).
-export(['op-concatsht2args-5'/1]).
-export(['op-concat-1'/1]).
-export(['op-concat-2'/1]).
-export(['op-concat-3'/1]).
-export(['op-concat-4'/1]).
-export(['op-concat-5'/1]).
-export(['op-concat-6'/1]).
-export(['op-concat-7'/1]).
-export(['op-concat-8'/1]).
-export(['op-concat-9'/1]).
-export(['op-concat-10'/1]).
-export(['op-concat-11'/1]).
-export(['op-concat-12'/1]).
-export(['op-concat-13'/1]).
-export(['op-concat-14'/1]).
-export(['op-concat-15'/1]).
-export(['op-concat-16'/1]).
-export(['op-concat-17'/1]).
-export(['op-concat-18'/1]).
-export(['op-concat-19'/1]).
-export(['op-concat-20'/1]).
-export(['K-ConcatOp-3'/1]).
-export(['K-ConcatOp-4'/1]).
-export(['K-ConcatOp-5'/1]).
-export(['K-ConcatOp-6'/1]).
-export(['K-ConcatOp-7'/1]).
-export(['K-ConcatOp-8'/1]).
-export(['K-ConcatOp-9'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> ct:timetrap({seconds,60}), xqerl_module:unload(all).
init_per_suite(Config) -> 
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   BaseDir = filename:join(TD, "op")

,[{base_dir, BaseDir}|Config].
all() -> [
   'op-concatint2args-1',
   'op-concatint2args-2',
   'op-concatint2args-3',
   'op-concatint2args-4',
   'op-concatint2args-5',
   'op-concatintg2args-1',
   'op-concatintg2args-2',
   'op-concatintg2args-3',
   'op-concatintg2args-4',
   'op-concatintg2args-5',
   'op-concatdec2args-1',
   'op-concatdec2args-2',
   'op-concatdec2args-3',
   'op-concatdec2args-4',
   'op-concatdec2args-5',
   'op-concatdbl2args-1',
   'op-concatdbl2args-2',
   'op-concatdbl2args-3',
   'op-concatdbl2args-4',
   'op-concatdbl2args-5',
   'op-concatflt2args-1',
   'op-concatflt2args-2',
   'op-concatflt2args-3',
   'op-concatflt2args-4',
   'op-concatflt2args-5',
   'op-concatlng2args-1',
   'op-concatlng2args-2',
   'op-concatlng2args-3',
   'op-concatlng2args-4',
   'op-concatlng2args-5',
   'op-concatusht2args-1',
   'op-concatusht2args-2',
   'op-concatusht2args-3',
   'op-concatusht2args-4',
   'op-concatusht2args-5',
   'op-concatnint2args-1',
   'op-concatnint2args-2',
   'op-concatnint2args-3',
   'op-concatnint2args-4',
   'op-concatnint2args-5',
   'op-concatpint2args-1',
   'op-concatpint2args-2',
   'op-concatpint2args-3',
   'op-concatpint2args-4',
   'op-concatpint2args-5',
   'op-concatulng2args-1',
   'op-concatulng2args-2',
   'op-concatulng2args-3',
   'op-concatulng2args-4',
   'op-concatulng2args-5',
   'op-concatnpi2args-1',
   'op-concatnpi2args-2',
   'op-concatnpi2args-3',
   'op-concatnpi2args-4',
   'op-concatnpi2args-5',
   'op-concatnni2args-1',
   'op-concatnni2args-2',
   'op-concatnni2args-3',
   'op-concatnni2args-4',
   'op-concatnni2args-5',
   'op-concatsht2args-1',
   'op-concatsht2args-2',
   'op-concatsht2args-3',
   'op-concatsht2args-4',
   'op-concatsht2args-5',
   'op-concat-1',
   'op-concat-2',
   'op-concat-3',
   'op-concat-4',
   'op-concat-5',
   'op-concat-6',
   'op-concat-7',
   'op-concat-8',
   'op-concat-9',
   'op-concat-10',
   'op-concat-11',
   'op-concat-12',
   'op-concat-13',
   'op-concat-14',
   'op-concat-15',
   'op-concat-16',
   'op-concat-17',
   'op-concat-18',
   'op-concat-19',
   'op-concat-20',
   'K-ConcatOp-3',
   'K-ConcatOp-4',
   'K-ConcatOp-5',
   'K-ConcatOp-6',
   'K-ConcatOp-7',
   'K-ConcatOp-8',
   'K-ConcatOp-9'].
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
'op-concatint2args-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "xs:int(\"-2147483648\")||xs:int(\"-2147483648\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatint2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-2147483648-2147483648") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatint2args-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "xs:int(\"-1873914410\")||xs:int(\"-2147483648\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatint2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-1873914410-2147483648") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatint2args-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "xs:int(\"2147483647\")||xs:int(\"-2147483648\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatint2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2147483647-2147483648") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatint2args-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:int(\"-2147483648\")||xs:int(\"-1873914410\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatint2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-2147483648-1873914410") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatint2args-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:int(\"-2147483648\")||xs:int(\"2147483647\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatint2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-21474836482147483647") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatintg2args-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:integer(\"-999999999999999999\")||xs:integer(\"-999999999999999999\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatintg2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-999999999999999999-999999999999999999") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatintg2args-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:integer(\"830993497117024304\")||xs:integer(\"-999999999999999999\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatintg2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "830993497117024304-999999999999999999") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatintg2args-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:integer(\"999999999999999999\")||xs:integer(\"-999999999999999999\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatintg2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "999999999999999999-999999999999999999") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatintg2args-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:integer(\"-999999999999999999\")||xs:integer(\"830993497117024304\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatintg2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-999999999999999999830993497117024304") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatintg2args-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:integer(\"-999999999999999999\")||xs:integer(\"999999999999999999\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatintg2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-999999999999999999999999999999999999") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatdec2args-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:decimal(\"-999999999999999999\")||xs:decimal(\"-999999999999999999\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatdec2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-999999999999999999-999999999999999999") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatdec2args-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:decimal(\"617375191608514839\")||xs:decimal(\"-999999999999999999\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatdec2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "617375191608514839-999999999999999999") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatdec2args-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:decimal(\"999999999999999999\")||xs:decimal(\"-999999999999999999\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatdec2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "999999999999999999-999999999999999999") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatdec2args-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:decimal(\"-999999999999999999\")||xs:decimal(\"617375191608514839\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatdec2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-999999999999999999617375191608514839") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatdec2args-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:decimal(\"-999999999999999999\")||xs:decimal(\"999999999999999999\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatdec2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-999999999999999999999999999999999999") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatdbl2args-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:double(\"-1.7976931348623157E308\")||xs:double(\"-1.7976931348623157E308\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatdbl2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-1.7976931348623157E308-1.7976931348623157E308") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatdbl2args-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:double(\"0\")||xs:double(\"-1.7976931348623157E308\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatdbl2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0-1.7976931348623157E308") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatdbl2args-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:double(\"1.7976931348623157E308\")||xs:double(\"-1.7976931348623157E308\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatdbl2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1.7976931348623157E308-1.7976931348623157E308") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatdbl2args-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:double(\"-1.7976931348623157E308\") || xs:double(\"0\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatdbl2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-1.7976931348623157E3080") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatdbl2args-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:double(\"-1.7976931348623157E308\") || xs:double(\"1.7976931348623157E308\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatdbl2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-1.7976931348623157E3081.7976931348623157E308") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatflt2args-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:float(\"-3.4028235E38\") || xs:float(\"-3.4028235E38\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatflt2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-3.4028235E38-3.4028235E38") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatflt2args-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:float(\"0\") || xs:float(\"-3.4028235E38\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatflt2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0-3.4028235E38") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatflt2args-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:float(\"3.4028235E38\") || xs:float(\"-3.4028235E38\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatflt2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "3.4028235E38-3.4028235E38") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatflt2args-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:float(\"-3.4028235E38\") || xs:float(\"0\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatflt2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-3.4028235E380") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatflt2args-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:float(\"-3.4028235E38\") || xs:float(\"3.4028235E38\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatflt2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-3.4028235E383.4028235E38") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatlng2args-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:long(\"-92233720368547758\") || xs:long(\"-92233720368547758\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatlng2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-92233720368547758-92233720368547758") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatlng2args-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:long(\"-47175562203048468\") || xs:long(\"-92233720368547758\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatlng2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-47175562203048468-92233720368547758") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatlng2args-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:long(\"92233720368547758\") || xs:long(\"-92233720368547758\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatlng2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "92233720368547758-92233720368547758") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatlng2args-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:long(\"-92233720368547758\") || xs:long(\"-47175562203048468\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatlng2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-92233720368547758-47175562203048468") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatlng2args-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:long(\"-92233720368547758\") || xs:long(\"92233720368547758\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatlng2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-9223372036854775892233720368547758") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatusht2args-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:unsignedShort(\"0\") || xs:unsignedShort(\"0\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatusht2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatusht2args-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:unsignedShort(\"44633\") || xs:unsignedShort(\"0\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatusht2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "446330") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatusht2args-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:unsignedShort(\"65535\") || xs:unsignedShort(\"0\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatusht2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "655350") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatusht2args-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:unsignedShort(\"0\") || xs:unsignedShort(\"44633\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatusht2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "044633") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatusht2args-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:unsignedShort(\"0\") || xs:unsignedShort(\"65535\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatusht2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "065535") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatnint2args-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:negativeInteger(\"-999999999999999999\") || xs:negativeInteger(\"-999999999999999999\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatnint2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-999999999999999999-999999999999999999") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatnint2args-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:negativeInteger(\"-297014075999096793\") || xs:negativeInteger(\"-999999999999999999\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatnint2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-297014075999096793-999999999999999999") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatnint2args-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:negativeInteger(\"-1\") || xs:negativeInteger(\"-999999999999999999\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatnint2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-1-999999999999999999") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatnint2args-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:negativeInteger(\"-999999999999999999\") || xs:negativeInteger(\"-297014075999096793\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatnint2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-999999999999999999-297014075999096793") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatnint2args-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:negativeInteger(\"-999999999999999999\") || xs:negativeInteger(\"-1\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatnint2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-999999999999999999-1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatpint2args-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:positiveInteger(\"1\") || xs:positiveInteger(\"1\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatpint2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "11") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatpint2args-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:positiveInteger(\"52704602390610033\") || xs:positiveInteger(\"1\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatpint2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "527046023906100331") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatpint2args-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:positiveInteger(\"999999999999999999\") || xs:positiveInteger(\"1\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatpint2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "9999999999999999991") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatpint2args-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:positiveInteger(\"1\") || xs:positiveInteger(\"52704602390610033\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatpint2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "152704602390610033") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatpint2args-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:positiveInteger(\"1\") || xs:positiveInteger(\"999999999999999999\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatpint2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1999999999999999999") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatulng2args-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:unsignedLong(\"0\") || xs:unsignedLong(\"0\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatulng2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatulng2args-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:unsignedLong(\"130747108607674654\") || xs:unsignedLong(\"0\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatulng2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1307471086076746540") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatulng2args-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:unsignedLong(\"184467440737095516\") || xs:unsignedLong(\"0\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatulng2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1844674407370955160") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatulng2args-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:unsignedLong(\"0\") || xs:unsignedLong(\"130747108607674654\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatulng2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0130747108607674654") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatulng2args-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:unsignedLong(\"0\") || xs:unsignedLong(\"184467440737095516\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatulng2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0184467440737095516") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatnpi2args-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:nonPositiveInteger(\"-999999999999999999\") || xs:nonPositiveInteger(\"-999999999999999999\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatnpi2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-999999999999999999-999999999999999999") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatnpi2args-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:nonPositiveInteger(\"-475688437271870490\") || xs:nonPositiveInteger(\"-999999999999999999\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatnpi2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-475688437271870490-999999999999999999") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatnpi2args-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:nonPositiveInteger(\"0\") || xs:nonPositiveInteger(\"-999999999999999999\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatnpi2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0-999999999999999999") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatnpi2args-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:nonPositiveInteger(\"-999999999999999999\") || xs:nonPositiveInteger(\"-475688437271870490\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatnpi2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-999999999999999999-475688437271870490") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatnpi2args-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:nonPositiveInteger(\"-999999999999999999\") || xs:nonPositiveInteger(\"0\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatnpi2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-9999999999999999990") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatnni2args-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:nonNegativeInteger(\"0\") || xs:nonNegativeInteger(\"0\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatnni2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatnni2args-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:nonNegativeInteger(\"303884545991464527\") || xs:nonNegativeInteger(\"0\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatnni2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "3038845459914645270") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatnni2args-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:nonNegativeInteger(\"999999999999999999\") || xs:nonNegativeInteger(\"0\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatnni2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "9999999999999999990") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatnni2args-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:nonNegativeInteger(\"0\") || xs:nonNegativeInteger(\"303884545991464527\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatnni2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0303884545991464527") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatnni2args-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:nonNegativeInteger(\"0\") || xs:nonNegativeInteger(\"999999999999999999\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatnni2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0999999999999999999") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatsht2args-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:short(\"-32768\") || xs:short(\"-32768\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatsht2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-32768-32768") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatsht2args-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:short(\"-5324\") || xs:short(\"-32768\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatsht2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-5324-32768") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatsht2args-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:short(\"32767\") || xs:short(\"-32768\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatsht2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "32767-32768") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatsht2args-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:short(\"-32768\") || xs:short(\"-5324\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatsht2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-32768-5324") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concatsht2args-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(xs:short(\"-32768\") || xs:short(\"32767\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concatsht2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-3276832767") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concat-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "('un' ||  'grateful')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concat-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "ungrateful") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concat-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "('Thy ' ||  () ||  'old ' ||  \"groans\" ||  \"\" ||  ' ring' ||  ' yet' ||  ' in' ||  ' my' ||  ' ancient' || ' ears.')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concat-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Thy old groans ring yet in my ancient ears.") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concat-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "('Ciao!' || ())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concat-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Ciao!") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concat-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "('Ingratitude, ' ||  'thou ' ||  'marble-hearted' ||  ' fiend!')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concat-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Ingratitude, thou marble-hearted fiend!") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concat-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(\"AB\" || \"CD\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concat-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "ABCD") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concat-6'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(\"abc\" || \"de\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concat-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "abcde") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concat-7'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(\"ABCDE\" || \"abcde\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concat-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "ABCDEabcde") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concat-8'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count((\"\" || \"\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concat-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concat-9'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(fn:upper-case(\"Abc\") || fn:upper-case(\"DH\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concat-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "ABCDH") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concat-10'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(\"**\" || \"***\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concat-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "*****") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concat-11'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "((\"zzz\" || \"zz\") || \"123\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concat-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "zzzzz123") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concat-12'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:boolean((\"ab\" || \"cde\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concat-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concat-13'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:string((\"abc\" || \"de\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concat-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "abcde") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concat-14'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:not((\"ab\" || \"cde\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concat-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concat-15'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(\"%$\" || \"#@!\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concat-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "%$#@!") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concat-16'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(\"concat\" || \"concat\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concat-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "concatconcat") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concat-17'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(\"abc\" || \"abc\") and (\"abc\" || \"abc\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concat-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concat-18'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(\"abc\" || \"abc\" ||  fn:concat#3)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concat-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOTY0013") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-concat-19'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "12 || 34 - 50",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concat-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"\"12-16\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"xs:string") of 
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
'op-concat-20'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "\"1234\" eq 12 || 34",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "op-concat-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ConcatOp-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(\"ab\" ||  \"c\") eq \"abc\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ConcatOp-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ConcatOp-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(\"ab\" ||  \"c\") instance of xs:string",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ConcatOp-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ConcatOp-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(() ||  ()) instance of xs:string",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ConcatOp-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ConcatOp-6'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(() ||  ()) eq \"\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ConcatOp-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ConcatOp-7'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "('a' ||  'b' ||  'c' ||  () ||  'd' ||  'e' ||  'f' ||  'g' ||  'h' ||  ' ' ||  'i' ||  'j' ||  'k l') eq \"abcdefgh ijk l\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ConcatOp-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ConcatOp-8'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(1 ||  2 ||  3) eq \"123\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ConcatOp-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ConcatOp-9'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(1 ||  \"2\" ||  3) eq \"123\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ConcatOp-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
