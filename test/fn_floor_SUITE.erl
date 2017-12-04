-module('fn_floor_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-floorint1args-1'/1]).
-export(['fn-floorint1args-2'/1]).
-export(['fn-floorint1args-3'/1]).
-export(['fn-floorintg1args-1'/1]).
-export(['fn-floorintg1args-2'/1]).
-export(['fn-floorintg1args-3'/1]).
-export(['fn-floordec1args-1'/1]).
-export(['fn-floordec1args-2'/1]).
-export(['fn-floordec1args-3'/1]).
-export(['fn-floordbl1args-1'/1]).
-export(['fn-floordbl1args-2'/1]).
-export(['fn-floordbl1args-3'/1]).
-export(['fn-floorflt1args-1'/1]).
-export(['fn-floorflt1args-2'/1]).
-export(['fn-floorflt1args-3'/1]).
-export(['fn-floorlng1args-1'/1]).
-export(['fn-floorlng1args-2'/1]).
-export(['fn-floorlng1args-3'/1]).
-export(['fn-floorusht1args-1'/1]).
-export(['fn-floorusht1args-2'/1]).
-export(['fn-floorusht1args-3'/1]).
-export(['fn-floornint1args-1'/1]).
-export(['fn-floornint1args-2'/1]).
-export(['fn-floornint1args-3'/1]).
-export(['fn-floorpint1args-1'/1]).
-export(['fn-floorpint1args-2'/1]).
-export(['fn-floorpint1args-3'/1]).
-export(['fn-floorulng1args-1'/1]).
-export(['fn-floorulng1args-2'/1]).
-export(['fn-floorulng1args-3'/1]).
-export(['fn-floornpi1args-1'/1]).
-export(['fn-floornpi1args-2'/1]).
-export(['fn-floornpi1args-3'/1]).
-export(['fn-floornni1args-1'/1]).
-export(['fn-floornni1args-2'/1]).
-export(['fn-floornni1args-3'/1]).
-export(['fn-floorsht1args-1'/1]).
-export(['fn-floorsht1args-2'/1]).
-export(['fn-floorsht1args-3'/1]).
-export(['K-FloorFunc-1'/1]).
-export(['K-FloorFunc-2'/1]).
-export(['K-FloorFunc-3'/1]).
-export(['K-FloorFunc-4'/1]).
-export(['K-FloorFunc-5'/1]).
-export(['K-FloorFunc-6'/1]).
-export(['K2-FloorFunc-1'/1]).
-export(['K2-FloorFunc-2'/1]).
-export(['K2-FloorFunc-3'/1]).
-export(['K2-FloorFunc-4'/1]).
-export(['K2-FloorFunc-5'/1]).
-export(['K2-FloorFunc-6'/1]).
-export(['K2-FloorFunc-7'/1]).
-export(['K2-FloorFunc-8'/1]).
-export(['K2-FloorFunc-9'/1]).
-export(['K2-FloorFunc-10'/1]).
-export(['K2-FloorFunc-11'/1]).
-export(['K2-FloorFunc-12'/1]).
-export(['K2-FloorFunc-13'/1]).
-export(['fn-floor-1'/1]).
-export(['fn-floor-decimal-1'/1]).
-export(['fn-floor-decimal-2'/1]).
-export(['fn-floor-decimal-3'/1]).
-export(['fn-floor-decimal-4'/1]).
-export(['fn-floor-decimal-5'/1]).
-export(['fn-floor-decimal-6'/1]).
-export(['fn-floor-decimal-7'/1]).
-export(['fn-floor-double-1'/1]).
-export(['fn-floor-double-2'/1]).
-export(['fn-floor-double-3'/1]).
-export(['fn-floor-double-4'/1]).
-export(['fn-floor-double-5'/1]).
-export(['fn-floor-double-6'/1]).
-export(['fn-floor-double-7'/1]).
-export(['fn-floor-double-8'/1]).
-export(['fn-floor-double-9'/1]).
-export(['fn-floor-double-10'/1]).
-export(['fn-floor-double-11'/1]).
-export(['fn-floor-float-1'/1]).
-export(['fn-floor-float-2'/1]).
-export(['fn-floor-float-3'/1]).
-export(['fn-floor-float-4'/1]).
-export(['fn-floor-float-5'/1]).
-export(['fn-floor-float-6'/1]).
-export(['fn-floor-float-7'/1]).
-export(['fn-floor-float-8'/1]).
-export(['fn-floor-float-9'/1]).
-export(['fn-floor-float-10'/1]).
-export(['fn-floor-float-11'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-floorint1args-1',
   'fn-floorint1args-2',
   'fn-floorint1args-3',
   'fn-floorintg1args-1',
   'fn-floorintg1args-2',
   'fn-floorintg1args-3',
   'fn-floordec1args-1',
   'fn-floordec1args-2',
   'fn-floordec1args-3',
   'fn-floordbl1args-1',
   'fn-floordbl1args-2',
   'fn-floordbl1args-3',
   'fn-floorflt1args-1',
   'fn-floorflt1args-2',
   'fn-floorflt1args-3',
   'fn-floorlng1args-1',
   'fn-floorlng1args-2',
   'fn-floorlng1args-3',
   'fn-floorusht1args-1',
   'fn-floorusht1args-2',
   'fn-floorusht1args-3',
   'fn-floornint1args-1',
   'fn-floornint1args-2',
   'fn-floornint1args-3',
   'fn-floorpint1args-1',
   'fn-floorpint1args-2',
   'fn-floorpint1args-3',
   'fn-floorulng1args-1',
   'fn-floorulng1args-2',
   'fn-floorulng1args-3',
   'fn-floornpi1args-1',
   'fn-floornpi1args-2',
   'fn-floornpi1args-3',
   'fn-floornni1args-1',
   'fn-floornni1args-2',
   'fn-floornni1args-3',
   'fn-floorsht1args-1',
   'fn-floorsht1args-2',
   'fn-floorsht1args-3',
   'K-FloorFunc-1',
   'K-FloorFunc-2',
   'K-FloorFunc-3',
   'K-FloorFunc-4',
   'K-FloorFunc-5',
   'K-FloorFunc-6',
   'K2-FloorFunc-1',
   'K2-FloorFunc-2',
   'K2-FloorFunc-3',
   'K2-FloorFunc-4',
   'K2-FloorFunc-5',
   'K2-FloorFunc-6',
   'K2-FloorFunc-7',
   'K2-FloorFunc-8',
   'K2-FloorFunc-9',
   'K2-FloorFunc-10',
   'K2-FloorFunc-11',
   'K2-FloorFunc-12',
   'K2-FloorFunc-13',
   'fn-floor-1',
   'fn-floor-decimal-1',
   'fn-floor-decimal-2',
   'fn-floor-decimal-3',
   'fn-floor-decimal-4',
   'fn-floor-decimal-5',
   'fn-floor-decimal-6',
   'fn-floor-decimal-7',
   'fn-floor-double-1',
   'fn-floor-double-2',
   'fn-floor-double-3',
   'fn-floor-double-4',
   'fn-floor-double-5',
   'fn-floor-double-6',
   'fn-floor-double-7',
   'fn-floor-double-8',
   'fn-floor-double-9',
   'fn-floor-double-10',
   'fn-floor-double-11',
   'fn-floor-float-1',
   'fn-floor-float-2',
   'fn-floor-float-3',
   'fn-floor-float-4',
   'fn-floor-float-5',
   'fn-floor-float-6',
   'fn-floor-float-7',
   'fn-floor-float-8',
   'fn-floor-float-9',
   'fn-floor-float-10',
   'fn-floor-float-11'].
environment('empty') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('atomic') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{resources, []},
{modules, []}
];
environment('atomic-xq') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-mod') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/docs/works-mod.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/docs/works.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('staff') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/docs/staff.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-and-staff') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/docs/works.xml","$works",""},
{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/docs/staff.xml","$staff",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('auction') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/docs/auction.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
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
environment('qname') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/docs/QName-source.xml",".",""}]},
{schemas, [{"docs/QName-schema.xsd","http://www.example.com/QNameXSD"}]},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.example.com/QNameXSD",""}]},
{resources, []},
{modules, []}
];
environment('math') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/math","math"}]},
{resources, []},
{modules, []}
];
environment('array') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"}]},
{resources, []},
{modules, []}
];
environment('map') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('array-and-map') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"},
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('emptydoc') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('e0') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/abs/e0.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('e1') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/abs/e1.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('e-1') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/abs/e-1.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'fn-floorint1args-1'(_Config) ->
   Qry = "fn:floor(xs:int(\"-2147483648\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-2147483648") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-floorint1args-2'(_Config) ->
   Qry = "fn:floor(xs:int(\"-1873914410\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-1873914410") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-floorint1args-3'(_Config) ->
   Qry = "fn:floor(xs:int(\"2147483647\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2147483647") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-floorintg1args-1'(_Config) ->
   Qry = "fn:floor(xs:integer(\"-999999999999999999\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-999999999999999999") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-floorintg1args-2'(_Config) ->
   Qry = "fn:floor(xs:integer(\"830993497117024304\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "830993497117024304") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-floorintg1args-3'(_Config) ->
   Qry = "fn:floor(xs:integer(\"999999999999999999\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "999999999999999999") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-floordec1args-1'(_Config) ->
   Qry = "fn:floor(xs:decimal(\"-999999999999999999\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-999999999999999999") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-floordec1args-2'(_Config) ->
   Qry = "fn:floor(xs:decimal(\"617375191608514839\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "617375191608514839") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-floordec1args-3'(_Config) ->
   Qry = "fn:floor(xs:decimal(\"999999999999999999\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "999999999999999999") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-floordbl1args-1'(_Config) ->
   Qry = "fn:floor(xs:double(\"-1.7976931348623157E308\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-1.7976931348623157E308") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-floordbl1args-2'(_Config) ->
   Qry = "fn:floor(xs:double(\"0\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-floordbl1args-3'(_Config) ->
   Qry = "fn:floor(xs:double(\"1.7976931348623157E308\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1.7976931348623157E308") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-floorflt1args-1'(_Config) ->
   Qry = "fn:floor(xs:float(\"-3.4028235E38\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-3.4028235E38") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-floorflt1args-2'(_Config) ->
   Qry = "fn:floor(xs:float(\"0\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-floorflt1args-3'(_Config) ->
   Qry = "fn:floor(xs:float(\"3.4028235E38\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "3.4028235E38") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-floorlng1args-1'(_Config) ->
   Qry = "fn:floor(xs:long(\"-92233720368547758\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-92233720368547758") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-floorlng1args-2'(_Config) ->
   Qry = "fn:floor(xs:long(\"-47175562203048468\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-47175562203048468") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-floorlng1args-3'(_Config) ->
   Qry = "fn:floor(xs:long(\"92233720368547758\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "92233720368547758") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-floorusht1args-1'(_Config) ->
   Qry = "fn:floor(xs:unsignedShort(\"0\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-floorusht1args-2'(_Config) ->
   Qry = "fn:floor(xs:unsignedShort(\"44633\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "44633") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-floorusht1args-3'(_Config) ->
   Qry = "fn:floor(xs:unsignedShort(\"65535\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "65535") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-floornint1args-1'(_Config) ->
   Qry = "fn:floor(xs:negativeInteger(\"-999999999999999999\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-999999999999999999") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-floornint1args-2'(_Config) ->
   Qry = "fn:floor(xs:negativeInteger(\"-297014075999096793\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-297014075999096793") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-floornint1args-3'(_Config) ->
   Qry = "fn:floor(xs:negativeInteger(\"-1\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-floorpint1args-1'(_Config) ->
   Qry = "fn:floor(xs:positiveInteger(\"1\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-floorpint1args-2'(_Config) ->
   Qry = "fn:floor(xs:positiveInteger(\"52704602390610033\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "52704602390610033") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-floorpint1args-3'(_Config) ->
   Qry = "fn:floor(xs:positiveInteger(\"999999999999999999\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "999999999999999999") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-floorulng1args-1'(_Config) ->
   Qry = "fn:floor(xs:unsignedLong(\"0\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-floorulng1args-2'(_Config) ->
   Qry = "fn:floor(xs:unsignedLong(\"130747108607674654\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "130747108607674654") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-floorulng1args-3'(_Config) ->
   Qry = "fn:floor(xs:unsignedLong(\"184467440737095516\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "184467440737095516") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-floornpi1args-1'(_Config) ->
   Qry = "fn:floor(xs:nonPositiveInteger(\"-999999999999999999\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-999999999999999999") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-floornpi1args-2'(_Config) ->
   Qry = "fn:floor(xs:nonPositiveInteger(\"-475688437271870490\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-475688437271870490") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-floornpi1args-3'(_Config) ->
   Qry = "fn:floor(xs:nonPositiveInteger(\"0\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-floornni1args-1'(_Config) ->
   Qry = "fn:floor(xs:nonNegativeInteger(\"0\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-floornni1args-2'(_Config) ->
   Qry = "fn:floor(xs:nonNegativeInteger(\"303884545991464527\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "303884545991464527") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-floornni1args-3'(_Config) ->
   Qry = "fn:floor(xs:nonNegativeInteger(\"999999999999999999\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "999999999999999999") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-floorsht1args-1'(_Config) ->
   Qry = "fn:floor(xs:short(\"-32768\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-32768") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-floorsht1args-2'(_Config) ->
   Qry = "fn:floor(xs:short(\"-5324\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-5324") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-floorsht1args-3'(_Config) ->
   Qry = "fn:floor(xs:short(\"32767\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "32767") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FloorFunc-1'(_Config) ->
   Qry = "floor()",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FloorFunc-2'(_Config) ->
   Qry = "floor(1, 2)",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FloorFunc-3'(_Config) ->
   Qry = "empty(floor(()))",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FloorFunc-4'(_Config) ->
   Qry = "floor(10.5) eq 10",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FloorFunc-5'(_Config) ->
   Qry = "floor(-10.5) eq -11",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FloorFunc-6'(_Config) ->
   Qry = "floor(\"a string\")",
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-FloorFunc-1'(_Config) ->
   Qry = "floor(xs:unsignedShort(.)) instance of xs:integer",
   {Env,Opts} = xqerl_test:handle_environment(environment('e1')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-FloorFunc-2'(_Config) ->
   Qry = "floor(xs:unsignedShort(.)) instance of xs:integer",
   {Env,Opts} = xqerl_test:handle_environment(environment('e0')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-FloorFunc-3'(_Config) ->
   Qry = "floor(xs:unsignedLong(.)) instance of xs:integer",
   {Env,Opts} = xqerl_test:handle_environment(environment('e0')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-FloorFunc-4'(_Config) ->
   Qry = "floor(xs:unsignedInt(.)) instance of xs:integer",
   {Env,Opts} = xqerl_test:handle_environment(environment('e0')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-FloorFunc-5'(_Config) ->
   Qry = "floor(xs:unsignedByte(.)) instance of xs:integer",
   {Env,Opts} = xqerl_test:handle_environment(environment('e0')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-FloorFunc-6'(_Config) ->
   Qry = "floor(xs:positiveInteger(.)) instance of xs:integer",
   {Env,Opts} = xqerl_test:handle_environment(environment('e1')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-FloorFunc-7'(_Config) ->
   Qry = "floor(xs:nonPositiveInteger(.)) instance of xs:integer",
   {Env,Opts} = xqerl_test:handle_environment(environment('e0')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-FloorFunc-8'(_Config) ->
   Qry = "floor(xs:nonNegativeInteger(.)) instance of xs:integer",
   {Env,Opts} = xqerl_test:handle_environment(environment('e0')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-FloorFunc-9'(_Config) ->
   Qry = "floor(xs:negativeInteger(.)) instance of xs:integer",
   {Env,Opts} = xqerl_test:handle_environment(environment('e-1')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-FloorFunc-10'(_Config) ->
   Qry = "floor(xs:long(.)) instance of xs:integer",
   {Env,Opts} = xqerl_test:handle_environment(environment('e0')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-FloorFunc-11'(_Config) ->
   Qry = "floor(xs:int(.)) instance of xs:integer",
   {Env,Opts} = xqerl_test:handle_environment(environment('e0')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-FloorFunc-12'(_Config) ->
   Qry = "floor(xs:short(.)) instance of xs:integer",
   {Env,Opts} = xqerl_test:handle_environment(environment('e0')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-FloorFunc-13'(_Config) ->
   Qry = "floor(xs:byte(.)) instance of xs:integer",
   {Env,Opts} = xqerl_test:handle_environment(environment('e0')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-floor-1'(_Config) ->
   Qry = "for $x in (1, xs:decimal(2), xs:float(3), xs:double(4)) return 
           if ((floor($x)) instance of xs:integer) then \"integer\" 
           else if ((floor($x)) instance of xs:decimal) then \"decimal\" 
           else if ((floor($x)) instance of xs:float) then \"float\"
           else if ((floor($x)) instance of xs:double) then \"double\" 
           else error()
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"integer\", \"decimal\", \"float\", \"double\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-floor-decimal-1'(_Config) ->
   Qry = "floor(12.5)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"12.0") of 
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
'fn-floor-decimal-2'(_Config) ->
   Qry = "floor(12.9)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"12.0") of 
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
'fn-floor-decimal-3'(_Config) ->
   Qry = "floor(0.000000001)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
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
'fn-floor-decimal-4'(_Config) ->
   Qry = "floor(0.0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
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
'fn-floor-decimal-5'(_Config) ->
   Qry = "floor(-0.1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-1.0") of 
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
'fn-floor-decimal-6'(_Config) ->
   Qry = "floor(-12345678.567890)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-12345679") of 
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
'fn-floor-decimal-7'(_Config) ->
   Qry = "floor(-1234567891234567.2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-1234567891234568.0") of 
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
'fn-floor-double-1'(_Config) ->
   Qry = "floor(12.5e0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"12.0e0") of 
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
'fn-floor-double-2'(_Config) ->
   Qry = "floor(12.9e0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"12.0e0") of 
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
'fn-floor-double-3'(_Config) ->
   Qry = "floor(0.000000001e0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
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
'fn-floor-double-4'(_Config) ->
   Qry = "floor(0.0e0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
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
'fn-floor-double-5'(_Config) ->
   Qry = "floor(-0.1e0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-1.0e0") of 
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
'fn-floor-double-6'(_Config) ->
   Qry = "floor(-12345678.567890e0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-12345679e0") of 
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
'fn-floor-double-7'(_Config) ->
   Qry = "floor(-1234567891234567.2e0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-1234567891234568.0e0") of 
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
'fn-floor-double-8'(_Config) ->
   Qry = "floor(xs:double('NaN'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
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
'fn-floor-double-9'(_Config) ->
   Qry = "floor(xs:double('INF'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
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
'fn-floor-double-10'(_Config) ->
   Qry = "floor(xs:double('-INF'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
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
'fn-floor-double-11'(_Config) ->
   Qry = "floor(xs:double('-0'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "-0") of 
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
'fn-floor-float-1'(_Config) ->
   Qry = "floor(xs:float(12.5e0))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"12.0e0") of 
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
'fn-floor-float-2'(_Config) ->
   Qry = "floor(xs:float(12.9e0))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"12.0e0") of 
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
'fn-floor-float-3'(_Config) ->
   Qry = "floor(xs:float(0.000000001e0))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
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
'fn-floor-float-4'(_Config) ->
   Qry = "floor(xs:float(0.0e0))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
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
'fn-floor-float-5'(_Config) ->
   Qry = "floor(xs:float(-0.1e0))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-1.0e0") of 
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
'fn-floor-float-6'(_Config) ->
   Qry = "floor(xs:float(-12345678.567890e0))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-12345679e0") of 
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
'fn-floor-float-7'(_Config) ->
   Qry = "floor(xs:float(-1234567.2e0))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-1234568e0") of 
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
'fn-floor-float-8'(_Config) ->
   Qry = "floor(xs:float(xs:float('NaN')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
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
'fn-floor-float-9'(_Config) ->
   Qry = "floor(xs:float(xs:float('INF')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
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
'fn-floor-float-10'(_Config) ->
   Qry = "floor(xs:float(xs:float('-INF')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
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
'fn-floor-float-11'(_Config) ->
   Qry = "floor(xs:float(xs:float('-0')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "-0") of 
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
