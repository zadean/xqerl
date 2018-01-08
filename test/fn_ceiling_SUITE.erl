-module('fn_ceiling_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-ceilingint1args-1'/1]).
-export(['fn-ceilingint1args-2'/1]).
-export(['fn-ceilingint1args-3'/1]).
-export(['fn-ceilingintg1args-1'/1]).
-export(['fn-ceilingintg1args-2'/1]).
-export(['fn-ceilingintg1args-3'/1]).
-export(['fn-ceilingdec1args-1'/1]).
-export(['fn-ceilingdec1args-2'/1]).
-export(['fn-ceilingdec1args-3'/1]).
-export(['fn-ceilingdbl1args-1'/1]).
-export(['fn-ceilingdbl1args-2'/1]).
-export(['fn-ceilingdbl1args-3'/1]).
-export(['fn-ceilingflt1args-1'/1]).
-export(['fn-ceilingflt1args-2'/1]).
-export(['fn-ceilingflt1args-3'/1]).
-export(['fn-ceilinglng1args-1'/1]).
-export(['fn-ceilinglng1args-2'/1]).
-export(['fn-ceilinglng1args-3'/1]).
-export(['fn-ceilingusht1args-1'/1]).
-export(['fn-ceilingusht1args-2'/1]).
-export(['fn-ceilingusht1args-3'/1]).
-export(['fn-ceilingnint1args-1'/1]).
-export(['fn-ceilingnint1args-2'/1]).
-export(['fn-ceilingnint1args-3'/1]).
-export(['fn-ceilingpint1args-1'/1]).
-export(['fn-ceilingpint1args-2'/1]).
-export(['fn-ceilingpint1args-3'/1]).
-export(['fn-ceilingulng1args-1'/1]).
-export(['fn-ceilingulng1args-2'/1]).
-export(['fn-ceilingulng1args-3'/1]).
-export(['fn-ceilingnpi1args-1'/1]).
-export(['fn-ceilingnpi1args-2'/1]).
-export(['fn-ceilingnpi1args-3'/1]).
-export(['fn-ceilingnni1args-1'/1]).
-export(['fn-ceilingnni1args-2'/1]).
-export(['fn-ceilingnni1args-3'/1]).
-export(['fn-ceilingsht1args-1'/1]).
-export(['fn-ceilingsht1args-2'/1]).
-export(['fn-ceilingsht1args-3'/1]).
-export(['K-CeilingFunc-1'/1]).
-export(['K-CeilingFunc-2'/1]).
-export(['K-CeilingFunc-3'/1]).
-export(['K-CeilingFunc-4'/1]).
-export(['K-CeilingFunc-5'/1]).
-export(['K-CeilingFunc-6'/1]).
-export(['K2-CeilingFunc-1'/1]).
-export(['K2-CeilingFunc-2'/1]).
-export(['K2-CeilingFunc-3'/1]).
-export(['K2-CeilingFunc-4'/1]).
-export(['K2-CeilingFunc-5'/1]).
-export(['K2-CeilingFunc-6'/1]).
-export(['K2-CeilingFunc-7'/1]).
-export(['K2-CeilingFunc-8'/1]).
-export(['K2-CeilingFunc-9'/1]).
-export(['K2-CeilingFunc-10'/1]).
-export(['K2-CeilingFunc-11'/1]).
-export(['K2-CeilingFunc-12'/1]).
-export(['fn-ceiling-1'/1]).
-export(['fn-ceiling-decimal-1'/1]).
-export(['fn-ceiling-decimal-2'/1]).
-export(['fn-ceiling-decimal-3'/1]).
-export(['fn-ceiling-decimal-4'/1]).
-export(['fn-ceiling-decimal-5'/1]).
-export(['fn-ceiling-decimal-6'/1]).
-export(['fn-ceiling-decimal-7'/1]).
-export(['fn-ceiling-double-1'/1]).
-export(['fn-ceiling-double-2'/1]).
-export(['fn-ceiling-double-3'/1]).
-export(['fn-ceiling-double-4'/1]).
-export(['fn-ceiling-double-5'/1]).
-export(['fn-ceiling-double-6'/1]).
-export(['fn-ceiling-double-7'/1]).
-export(['fn-ceiling-double-8'/1]).
-export(['fn-ceiling-double-9'/1]).
-export(['fn-ceiling-double-10'/1]).
-export(['fn-ceiling-double-11'/1]).
-export(['fn-ceiling-float-1'/1]).
-export(['fn-ceiling-float-2'/1]).
-export(['fn-ceiling-float-3'/1]).
-export(['fn-ceiling-float-4'/1]).
-export(['fn-ceiling-float-5'/1]).
-export(['fn-ceiling-float-6'/1]).
-export(['fn-ceiling-float-7'/1]).
-export(['fn-ceiling-float-8'/1]).
-export(['fn-ceiling-float-9'/1]).
-export(['fn-ceiling-float-10'/1]).
-export(['fn-ceiling-float-11'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> ct:timetrap({seconds,60}), xqerl_module:unload(all).
init_per_suite(Config) -> 
   DD = filename:dirname(filename:dirname(proplists:get_value(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   BaseDir = filename:join(TD, "fn")

,[{base_dir, BaseDir}|Config].
all() -> [
   'fn-ceilingint1args-1',
   'fn-ceilingint1args-2',
   'fn-ceilingint1args-3',
   'fn-ceilingintg1args-1',
   'fn-ceilingintg1args-2',
   'fn-ceilingintg1args-3',
   'fn-ceilingdec1args-1',
   'fn-ceilingdec1args-2',
   'fn-ceilingdec1args-3',
   'fn-ceilingdbl1args-1',
   'fn-ceilingdbl1args-2',
   'fn-ceilingdbl1args-3',
   'fn-ceilingflt1args-1',
   'fn-ceilingflt1args-2',
   'fn-ceilingflt1args-3',
   'fn-ceilinglng1args-1',
   'fn-ceilinglng1args-2',
   'fn-ceilinglng1args-3',
   'fn-ceilingusht1args-1',
   'fn-ceilingusht1args-2',
   'fn-ceilingusht1args-3',
   'fn-ceilingnint1args-1',
   'fn-ceilingnint1args-2',
   'fn-ceilingnint1args-3',
   'fn-ceilingpint1args-1',
   'fn-ceilingpint1args-2',
   'fn-ceilingpint1args-3',
   'fn-ceilingulng1args-1',
   'fn-ceilingulng1args-2',
   'fn-ceilingulng1args-3',
   'fn-ceilingnpi1args-1',
   'fn-ceilingnpi1args-2',
   'fn-ceilingnpi1args-3',
   'fn-ceilingnni1args-1',
   'fn-ceilingnni1args-2',
   'fn-ceilingnni1args-3',
   'fn-ceilingsht1args-1',
   'fn-ceilingsht1args-2',
   'fn-ceilingsht1args-3',
   'K-CeilingFunc-1',
   'K-CeilingFunc-2',
   'K-CeilingFunc-3',
   'K-CeilingFunc-4',
   'K-CeilingFunc-5',
   'K-CeilingFunc-6',
   'K2-CeilingFunc-1',
   'K2-CeilingFunc-2',
   'K2-CeilingFunc-3',
   'K2-CeilingFunc-4',
   'K2-CeilingFunc-5',
   'K2-CeilingFunc-6',
   'K2-CeilingFunc-7',
   'K2-CeilingFunc-8',
   'K2-CeilingFunc-9',
   'K2-CeilingFunc-10',
   'K2-CeilingFunc-11',
   'K2-CeilingFunc-12',
   'fn-ceiling-1',
   'fn-ceiling-decimal-1',
   'fn-ceiling-decimal-2',
   'fn-ceiling-decimal-3',
   'fn-ceiling-decimal-4',
   'fn-ceiling-decimal-5',
   'fn-ceiling-decimal-6',
   'fn-ceiling-decimal-7',
   'fn-ceiling-double-1',
   'fn-ceiling-double-2',
   'fn-ceiling-double-3',
   'fn-ceiling-double-4',
   'fn-ceiling-double-5',
   'fn-ceiling-double-6',
   'fn-ceiling-double-7',
   'fn-ceiling-double-8',
   'fn-ceiling-double-9',
   'fn-ceiling-double-10',
   'fn-ceiling-double-11',
   'fn-ceiling-float-1',
   'fn-ceiling-float-2',
   'fn-ceiling-float-3',
   'fn-ceiling-float-4',
   'fn-ceiling-float-5',
   'fn-ceiling-float-6',
   'fn-ceiling-float-7',
   'fn-ceiling-float-8',
   'fn-ceiling-float-9',
   'fn-ceiling-float-10',
   'fn-ceiling-float-11'].
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
{sources, [{"file://"++filename:join(BaseDir, "../docs/atomic.xml"), ".","http://www.w3.org/fots/docs/atomic.xml"}]},
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
{sources, [{"file://"++filename:join(BaseDir, "../docs/atomic.xml"), ".","http://www.w3.org/fots/docs/atomic.xml"}]},
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
{sources, [{"file://"++filename:join(BaseDir, "../docs/works-mod.xml"), ".",""}]},
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
{sources, [{"file://"++filename:join(BaseDir, "../docs/works.xml"), ".",""}]},
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
{sources, [{"file://"++filename:join(BaseDir, "../docs/staff.xml"), ".",""}]},
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
{sources, [{"file://"++filename:join(BaseDir, "../docs/works.xml"), "$works",""},
{"file://"++filename:join(BaseDir, "../docs/staff.xml"), "$staff",""}]},
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
{sources, [{"file://"++filename:join(BaseDir, "../docs/auction.xml"), ".",""}]},
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
{sources, [{"file://"++filename:join(BaseDir, "../docs/QName-source.xml"), ".",""}]},
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
environment('emptydoc',BaseDir) ->
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
environment('e0',BaseDir) ->
[{'decimal-formats', []},
{sources, [{"file://"++filename:join(BaseDir, "abs/e0.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('e1',BaseDir) ->
[{'decimal-formats', []},
{sources, [{"file://"++filename:join(BaseDir, "abs/e1.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('e-1',BaseDir) ->
[{'decimal-formats', []},
{sources, [{"file://"++filename:join(BaseDir, "abs/e-1.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'fn-ceilingint1args-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:ceiling(xs:int(\"-2147483648\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceilingint1args-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-2147483648") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-ceilingint1args-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:ceiling(xs:int(\"-1873914410\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceilingint1args-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1873914410") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-ceilingint1args-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:ceiling(xs:int(\"2147483647\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceilingint1args-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2147483647") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-ceilingintg1args-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:ceiling(xs:integer(\"-999999999999999999\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceilingintg1args-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-ceilingintg1args-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:ceiling(xs:integer(\"830993497117024304\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceilingintg1args-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"830993497117024304") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-ceilingintg1args-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:ceiling(xs:integer(\"999999999999999999\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceilingintg1args-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-ceilingdec1args-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:ceiling(xs:decimal(\"-999999999999999999\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceilingdec1args-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-ceilingdec1args-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:ceiling(xs:decimal(\"617375191608514839\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceilingdec1args-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"617375191608514839") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-ceilingdec1args-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:ceiling(xs:decimal(\"999999999999999999\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceilingdec1args-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-ceilingdbl1args-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:ceiling(xs:double(\"-1.7976931348623157E308\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceilingdbl1args-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-1.7976931348623157E308") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-ceilingdbl1args-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:ceiling(xs:double(\"0\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceilingdbl1args-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-ceilingdbl1args-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:ceiling(xs:double(\"1.7976931348623157E308\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceilingdbl1args-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1.7976931348623157E308") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-ceilingflt1args-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:ceiling(xs:float(\"-3.4028235E38\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceilingflt1args-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-3.4028235E38") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-ceilingflt1args-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:ceiling(xs:float(\"0\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceilingflt1args-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-ceilingflt1args-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:ceiling(xs:float(\"3.4028235E38\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceilingflt1args-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "3.4028235E38") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-ceilinglng1args-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:ceiling(xs:long(\"-92233720368547758\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceilinglng1args-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-92233720368547758") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-ceilinglng1args-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:ceiling(xs:long(\"-47175562203048468\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceilinglng1args-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-47175562203048468") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-ceilinglng1args-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:ceiling(xs:long(\"92233720368547758\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceilinglng1args-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"92233720368547758") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-ceilingusht1args-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:ceiling(xs:unsignedShort(\"0\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceilingusht1args-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-ceilingusht1args-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:ceiling(xs:unsignedShort(\"44633\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceilingusht1args-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"44633") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-ceilingusht1args-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:ceiling(xs:unsignedShort(\"65535\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceilingusht1args-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"65535") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-ceilingnint1args-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:ceiling(xs:negativeInteger(\"-999999999999999999\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceilingnint1args-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-ceilingnint1args-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:ceiling(xs:negativeInteger(\"-297014075999096793\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceilingnint1args-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-297014075999096793") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-ceilingnint1args-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:ceiling(xs:negativeInteger(\"-1\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceilingnint1args-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-ceilingpint1args-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:ceiling(xs:positiveInteger(\"1\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceilingpint1args-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-ceilingpint1args-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:ceiling(xs:positiveInteger(\"52704602390610033\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceilingpint1args-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"52704602390610033") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-ceilingpint1args-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:ceiling(xs:positiveInteger(\"999999999999999999\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceilingpint1args-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-ceilingulng1args-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:ceiling(xs:unsignedLong(\"0\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceilingulng1args-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-ceilingulng1args-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:ceiling(xs:unsignedLong(\"130747108607674654\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceilingulng1args-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"130747108607674654") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-ceilingulng1args-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:ceiling(xs:unsignedLong(\"184467440737095516\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceilingulng1args-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"184467440737095516") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-ceilingnpi1args-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:ceiling(xs:nonPositiveInteger(\"-999999999999999999\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceilingnpi1args-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-ceilingnpi1args-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:ceiling(xs:nonPositiveInteger(\"-475688437271870490\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceilingnpi1args-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-475688437271870490") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-ceilingnpi1args-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:ceiling(xs:nonPositiveInteger(\"0\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceilingnpi1args-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-ceilingnni1args-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:ceiling(xs:nonNegativeInteger(\"0\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceilingnni1args-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-ceilingnni1args-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:ceiling(xs:nonNegativeInteger(\"303884545991464527\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceilingnni1args-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"303884545991464527") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-ceilingnni1args-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:ceiling(xs:nonNegativeInteger(\"999999999999999999\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceilingnni1args-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-ceilingsht1args-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:ceiling(xs:short(\"-32768\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceilingsht1args-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-32768") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-ceilingsht1args-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:ceiling(xs:short(\"-5324\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceilingsht1args-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-5324") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-ceilingsht1args-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:ceiling(xs:short(\"32767\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceilingsht1args-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"32767") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-CeilingFunc-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "ceiling()",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-CeilingFunc-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-CeilingFunc-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "ceiling(1, 2)",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-CeilingFunc-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-CeilingFunc-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "empty(ceiling(()))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-CeilingFunc-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-CeilingFunc-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "ceiling(10.5) eq 11",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-CeilingFunc-4.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-CeilingFunc-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "ceiling(-10.5) eq -10",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-CeilingFunc-5.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-CeilingFunc-6'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "ceiling(\"a string\")",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-CeilingFunc-6.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-CeilingFunc-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "ceiling(xs:unsignedShort(.)) instance of xs:integer",
   {Env,Opts} = xqerl_test:handle_environment(environment('e0',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-CeilingFunc-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-CeilingFunc-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "ceiling(xs:unsignedLong(.)) instance of xs:integer",
   {Env,Opts} = xqerl_test:handle_environment(environment('e0',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-CeilingFunc-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-CeilingFunc-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "ceiling(xs:unsignedInt(.)) instance of xs:integer",
   {Env,Opts} = xqerl_test:handle_environment(environment('e0',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-CeilingFunc-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-CeilingFunc-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "ceiling(xs:unsignedByte(.)) instance of xs:integer",
   {Env,Opts} = xqerl_test:handle_environment(environment('e0',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-CeilingFunc-4.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-CeilingFunc-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "ceiling(xs:positiveInteger(.)) instance of xs:integer",
   {Env,Opts} = xqerl_test:handle_environment(environment('e1',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-CeilingFunc-5.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-CeilingFunc-6'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "ceiling(xs:nonPositiveInteger(.)) instance of xs:integer",
   {Env,Opts} = xqerl_test:handle_environment(environment('e0',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-CeilingFunc-6.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-CeilingFunc-7'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "ceiling(xs:nonNegativeInteger(.)) instance of xs:integer",
   {Env,Opts} = xqerl_test:handle_environment(environment('e0',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-CeilingFunc-7.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-CeilingFunc-8'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "ceiling(xs:negativeInteger(.)) instance of xs:integer",
   {Env,Opts} = xqerl_test:handle_environment(environment('e-1',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-CeilingFunc-8.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-CeilingFunc-9'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "ceiling(xs:long(.)) instance of xs:integer",
   {Env,Opts} = xqerl_test:handle_environment(environment('e0',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-CeilingFunc-9.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-CeilingFunc-10'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "ceiling(xs:int(.)) instance of xs:integer",
   {Env,Opts} = xqerl_test:handle_environment(environment('e0',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-CeilingFunc-10.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-CeilingFunc-11'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "ceiling(xs:short(.)) instance of xs:integer",
   {Env,Opts} = xqerl_test:handle_environment(environment('e0',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-CeilingFunc-11.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-CeilingFunc-12'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "ceiling(xs:byte(.)) instance of xs:integer",
   {Env,Opts} = xqerl_test:handle_environment(environment('e0',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-CeilingFunc-12.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-ceiling-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "for $x in (1, xs:decimal(2), xs:float(3), xs:double(4)) return 
           if ((ceiling($x)) instance of xs:integer) then \"integer\" 
           else if ((ceiling($x)) instance of xs:decimal) then \"decimal\" 
           else if ((ceiling($x)) instance of xs:float) then \"float\"
           else if ((ceiling($x)) instance of xs:double) then \"double\" 
           else error()
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceiling-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"integer\", \"decimal\", \"float\", \"double\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-ceiling-decimal-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "ceiling(12.5)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceiling-decimal-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"13.0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"xs:decimal") of 
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
'fn-ceiling-decimal-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "ceiling(12.9)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceiling-decimal-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"13.0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"xs:decimal") of 
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
'fn-ceiling-decimal-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "ceiling(0.000000001)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceiling-decimal-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"1.0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"xs:decimal") of 
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
'fn-ceiling-decimal-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "ceiling(0.0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceiling-decimal-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0.0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"xs:decimal") of 
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
'fn-ceiling-decimal-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "ceiling(-0.1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceiling-decimal-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0.0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"xs:decimal") of 
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
'fn-ceiling-decimal-6'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "ceiling(-12345678.567890)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceiling-decimal-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-12345678") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"xs:decimal") of 
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
'fn-ceiling-decimal-7'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "ceiling(-1234567891234567.2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceiling-decimal-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-1234567891234567.0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"xs:decimal") of 
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
'fn-ceiling-double-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "ceiling(12.5e0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceiling-double-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"13.0e0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"xs:double") of 
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
'fn-ceiling-double-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "ceiling(12.9e0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceiling-double-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"13.0e0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"xs:double") of 
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
'fn-ceiling-double-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "ceiling(0.000000001e0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceiling-double-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"1.0e0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"xs:double") of 
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
'fn-ceiling-double-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "ceiling(0.0e0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceiling-double-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0.0e0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"xs:double") of 
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
'fn-ceiling-double-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "ceiling(-0.1e0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceiling-double-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-0.0e0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_eq(Res,"-0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"xs:double") of 
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
'fn-ceiling-double-6'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "ceiling(-12345678.567890e0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceiling-double-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-12345678e0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"xs:double") of 
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
'fn-ceiling-double-7'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "ceiling(-1234567891234567.2e0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceiling-double-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-1234567891234567.0e0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"xs:double") of 
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
'fn-ceiling-double-8'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "ceiling(xs:double('NaN'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceiling-double-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "NaN") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"xs:double") of 
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
'fn-ceiling-double-9'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "ceiling(xs:double('INF'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceiling-double-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "INF") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"xs:double") of 
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
'fn-ceiling-double-10'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "ceiling(xs:double('-INF'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceiling-double-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "-INF") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"xs:double") of 
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
'fn-ceiling-double-11'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "ceiling(xs:double('-0'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceiling-double-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"xs:double") of 
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
'fn-ceiling-float-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "ceiling(xs:float(12.5e0))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceiling-float-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"13.0e0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"xs:float") of 
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
'fn-ceiling-float-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "ceiling(xs:float(12.9e0))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceiling-float-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"13.0e0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"xs:float") of 
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
'fn-ceiling-float-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "ceiling(xs:float(0.000000001e0))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceiling-float-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"1.0e0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"xs:float") of 
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
'fn-ceiling-float-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "ceiling(xs:float(0.0e0))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceiling-float-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0.0e0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"xs:float") of 
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
'fn-ceiling-float-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "ceiling(xs:float(-0.1e0))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceiling-float-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0.0e0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_eq(Res,"-0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"xs:float") of 
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
'fn-ceiling-float-6'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "ceiling(xs:float(-12345678.1e0))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceiling-float-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-12345678e0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"xs:float") of 
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
'fn-ceiling-float-7'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "ceiling(xs:float(-1234567.2e0))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceiling-float-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-1234567e0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"xs:float") of 
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
'fn-ceiling-float-8'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "ceiling(xs:float(xs:float('NaN')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceiling-float-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "NaN") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"xs:float") of 
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
'fn-ceiling-float-9'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "ceiling(xs:float(xs:float('INF')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceiling-float-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "INF") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"xs:float") of 
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
'fn-ceiling-float-10'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "ceiling(xs:float(xs:float('-INF')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceiling-float-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "-INF") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"xs:float") of 
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
'fn-ceiling-float-11'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "ceiling(xs:float(xs:float('-0')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-ceiling-float-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"xs:float") of 
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
