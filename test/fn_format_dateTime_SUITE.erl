-module('fn_format_dateTime_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['format-dateTime-001a'/1]).
-export(['format-dateTime-001b'/1]).
-export(['format-dateTime-001c'/1]).
-export(['format-dateTime-001d'/1]).
-export(['format-dateTime-001e'/1]).
-export(['format-dateTime-001f'/1]).
-export(['format-dateTime-001g'/1]).
-export(['format-dateTime-002a'/1]).
-export(['format-dateTime-002b'/1]).
-export(['format-dateTime-002c'/1]).
-export(['format-dateTime-002d'/1]).
-export(['format-dateTime-002e'/1]).
-export(['format-dateTime-002f'/1]).
-export(['format-dateTime-002g'/1]).
-export(['format-dateTime-002h'/1]).
-export(['format-dateTime-002i'/1]).
-export(['format-dateTime-002j'/1]).
-export(['format-dateTime-003a'/1]).
-export(['format-dateTime-003b'/1]).
-export(['format-dateTime-003c'/1]).
-export(['format-dateTime-003d'/1]).
-export(['format-dateTime-003e'/1]).
-export(['format-dateTime-003f'/1]).
-export(['format-dateTime-003g'/1]).
-export(['format-dateTime-003h'/1]).
-export(['format-dateTime-003i'/1]).
-export(['format-dateTime-003j'/1]).
-export(['format-dateTime-003k'/1]).
-export(['format-dateTime-003L'/1]).
-export(['format-dateTime-003m'/1]).
-export(['format-dateTime-003n'/1]).
-export(['format-dateTime-003p'/1]).
-export(['format-dateTime-003q'/1]).
-export(['format-dateTime-003r'/1]).
-export(['format-dateTime-004'/1]).
-export(['format-dateTime-005'/1]).
-export(['format-dateTime-006'/1]).
-export(['format-dateTime-006a'/1]).
-export(['format-dateTime-009'/1]).
-export(['format-dateTime-010'/1]).
-export(['format-dateTime-011'/1]).
-export(['format-dateTime-012'/1]).
-export(['format-dateTime-013a'/1]).
-export(['format-dateTime-013b'/1]).
-export(['format-dateTime-013c'/1]).
-export(['format-dateTime-013d'/1]).
-export(['format-dateTime-013e'/1]).
-export(['format-dateTime-013f'/1]).
-export(['format-dateTime-013g'/1]).
-export(['format-dateTime-013h'/1]).
-export(['format-dateTime-013i'/1]).
-export(['format-dateTime-013j'/1]).
-export(['format-dateTime-013k'/1]).
-export(['format-dateTime-013L'/1]).
-export(['format-dateTime-013m'/1]).
-export(['format-dateTime-013n'/1]).
-export(['format-dateTime-013p'/1]).
-export(['format-dateTime-013q'/1]).
-export(['format-dateTime-013r'/1]).
-export(['format-dateTime-013s'/1]).
-export(['format-dateTime-013t'/1]).
-export(['format-dateTime-013u'/1]).
-export(['format-dateTime-013v'/1]).
-export(['format-dateTime-014'/1]).
-export(['format-dateTime-015'/1]).
-export(['format-dateTime-016'/1]).
-export(['format-dateTime-017'/1]).
-export(['format-dateTime-018'/1]).
-export(['format-dateTime-019a'/1]).
-export(['format-dateTime-019b'/1]).
-export(['format-dateTime-019c'/1]).
-export(['format-dateTime-019d'/1]).
-export(['format-dateTime-019e'/1]).
-export(['format-dateTime-019f'/1]).
-export(['format-dateTime-019g'/1]).
-export(['format-dateTime-019h'/1]).
-export(['format-dateTime-801err'/1]).
-export(['format-dateTime-en141'/1]).
-export(['format-dateTime-en142'/1]).
-export(['format-dateTime-en143'/1]).
-export(['format-dateTime-en151'/1]).
-export(['format-dateTime-en152'/1]).
-export(['format-dateTime-inpt-er1'/1]).
-export(['format-dateTime-inpt-er2'/1]).
-export(['format-dateTime-inpt-er3'/1]).
-export(['format-dateTime-inpt-er4'/1]).
-export(['format-dateTime-1340err'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'format-dateTime-001a',
   'format-dateTime-001b',
   'format-dateTime-001c',
   'format-dateTime-001d',
   'format-dateTime-001e',
   'format-dateTime-001f',
   'format-dateTime-001g',
   'format-dateTime-002a',
   'format-dateTime-002b',
   'format-dateTime-002c',
   'format-dateTime-002d',
   'format-dateTime-002e',
   'format-dateTime-002f',
   'format-dateTime-002g',
   'format-dateTime-002h',
   'format-dateTime-002i',
   'format-dateTime-002j',
   'format-dateTime-003a',
   'format-dateTime-003b',
   'format-dateTime-003c',
   'format-dateTime-003d',
   'format-dateTime-003e',
   'format-dateTime-003f',
   'format-dateTime-003g',
   'format-dateTime-003h',
   'format-dateTime-003i',
   'format-dateTime-003j',
   'format-dateTime-003k',
   'format-dateTime-003L',
   'format-dateTime-003m',
   'format-dateTime-003n',
   'format-dateTime-003p',
   'format-dateTime-003q',
   'format-dateTime-003r',
   'format-dateTime-004',
   'format-dateTime-005',
   'format-dateTime-006',
   'format-dateTime-006a',
   'format-dateTime-009',
   'format-dateTime-010',
   'format-dateTime-011',
   'format-dateTime-012',
   'format-dateTime-013a',
   'format-dateTime-013b',
   'format-dateTime-013c',
   'format-dateTime-013d',
   'format-dateTime-013e',
   'format-dateTime-013f',
   'format-dateTime-013g',
   'format-dateTime-013h',
   'format-dateTime-013i',
   'format-dateTime-013j',
   'format-dateTime-013k',
   'format-dateTime-013L',
   'format-dateTime-013m',
   'format-dateTime-013n',
   'format-dateTime-013p',
   'format-dateTime-013q',
   'format-dateTime-013r',
   'format-dateTime-013s',
   'format-dateTime-013t',
   'format-dateTime-013u',
   'format-dateTime-013v',
   'format-dateTime-014',
   'format-dateTime-015',
   'format-dateTime-016',
   'format-dateTime-017',
   'format-dateTime-018',
   'format-dateTime-019a',
   'format-dateTime-019b',
   'format-dateTime-019c',
   'format-dateTime-019d',
   'format-dateTime-019e',
   'format-dateTime-019f',
   'format-dateTime-019g',
   'format-dateTime-019h',
   'format-dateTime-801err',
   'format-dateTime-en141',
   'format-dateTime-en142',
   'format-dateTime-en143',
   'format-dateTime-en151',
   'format-dateTime-en152',
   'format-dateTime-inpt-er1',
   'format-dateTime-inpt-er2',
   'format-dateTime-inpt-er3',
   'format-dateTime-inpt-er4',
   'format-dateTime-1340err'].
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
].
'format-dateTime-001a'(_Config) ->
   Qry = "format-dateTime($d,\"[Y]-[M01]-[D]\")",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"d","xs:dateTime","xs:dateTime('2003-09-07T12:00:00')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2003-09-7") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-001b'(_Config) ->
   Qry = "format-dateTime($d,\"[M]-[D]-[Y]\")",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"d","xs:dateTime","xs:dateTime('2003-09-07T12:00:00')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "9-7-2003") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-001c'(_Config) ->
   Qry = "format-dateTime($d,\"[D]-[M]-[Y]\")",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"d","xs:dateTime","xs:dateTime('2003-09-07T12:00:00')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "7-9-2003") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-001d'(_Config) ->
   Qry = "format-dateTime($d,\"[D1] [MI] [Y]\")",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"d","xs:dateTime","xs:dateTime('2003-09-07T12:00:00')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "7 IX 2003") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-001e'(_Config) ->
   Qry = "format-dateTime($d,\"[[[Y]-[M01]-[D01]]]\")",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"d","xs:dateTime","xs:dateTime('2003-09-07T12:00:00')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "[2003-09-07]") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-001f'(_Config) ->
   Qry = "format-dateTime($d,\"[[[Y0001]-[M01]-[D01]]]\")",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"d","xs:dateTime","xs:dateTime('2003-09-07T12:00:00')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "[2003-09-07]") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-001g'(_Config) ->
   Qry = "format-dateTime($d,\"([Y01]-[M01]-[D01])\")",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"d","xs:dateTime","xs:dateTime('2003-09-07T12:00:00')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "(03-09-07)") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-002a'(_Config) ->
   Qry = "format-dateTime($t,\"[H01]:[m01]\")",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"t","xs:dateTime","xs:dateTime('2011-07-01T09:15:06.456')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "09:15") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-002b'(_Config) ->
   Qry = "format-dateTime($t,\"[H]:[m]\")",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"t","xs:dateTime","xs:dateTime('2011-07-01T09:15:06.456')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "9:15") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-002c'(_Config) ->
   Qry = "format-dateTime($t,\"[H01]:[m01]:[s01]\")",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"t","xs:dateTime","xs:dateTime('2011-07-01T09:15:06.456')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "09:15:06") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-002d'(_Config) ->
   Qry = "format-dateTime($t,\"[H]:[m]:[s]\")",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"t","xs:dateTime","xs:dateTime('2011-07-01T09:15:06.456')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "9:15:06") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-002e'(_Config) ->
   Qry = "format-dateTime($t,\"[H]:[m]:[s1]\")",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"t","xs:dateTime","xs:dateTime('2011-07-01T09:15:06.456')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "9:15:6") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-002f'(_Config) ->
   Qry = "format-dateTime($t,\"[H]:[m]:[s01]:[f001]\")",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"t","xs:dateTime","xs:dateTime('2011-07-01T09:15:06.456')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "9:15:06:456") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-002g'(_Config) ->
   Qry = "format-dateTime($t,\"[H]:[m]:[s].[f,1-1]\")",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"t","xs:dateTime","xs:dateTime('2011-07-01T09:15:06.456')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "9:15:06.4") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-002h'(_Config) ->
   Qry = "format-dateTime($t,\"[H]:[m]:[s].[f1,1-1]\")",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"t","xs:dateTime","xs:dateTime('2011-07-01T09:15:06.456')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "9:15:06.4") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-002i'(_Config) ->
   Qry = "format-dateTime($t,\"[H]:[m]:[s].[f01]\")",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"t","xs:dateTime","xs:dateTime('2011-07-01T09:15:06.456')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "9:15:06.45") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-002j'(_Config) ->
   Qry = "format-dateTime($t,\"[H]:[m]:[s].[f001]\")",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"t","xs:dateTime","xs:dateTime('2011-07-01T09:15:06.456')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "9:15:06.456") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-003a'(_Config) ->
   Qry = "format-dateTime($t,\"[Y]-[M01]-[D]\")",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"t","xs:dateTime","xs:dateTime('2003-09-07T09:15:06.456')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2003-09-7") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-003b'(_Config) ->
   Qry = "format-dateTime($t,\"[M]-[D]-[Y]\")",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"t","xs:dateTime","xs:dateTime('2003-09-07T09:15:06.456')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "9-7-2003") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-003c'(_Config) ->
   Qry = "format-dateTime($t,\"[D]-[M]-[Y]\")",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"t","xs:dateTime","xs:dateTime('2003-09-07T09:15:06.456')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "7-9-2003") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-003d'(_Config) ->
   Qry = "format-dateTime($t,\"[D1] [MI] [Y]\")",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"t","xs:dateTime","xs:dateTime('2003-09-07T09:15:06.456')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "7 IX 2003") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-003e'(_Config) ->
   Qry = "format-dateTime($t,\"[[[Y]-[M01]-[D01]]]\")",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"t","xs:dateTime","xs:dateTime('2003-09-07T09:15:06.456')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "[2003-09-07]") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-003f'(_Config) ->
   Qry = "format-dateTime($t,\"[[[Y0001]-[M01]-[D01]]]\")",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"t","xs:dateTime","xs:dateTime('2003-09-07T09:15:06.456')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "[2003-09-07]") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-003g'(_Config) ->
   Qry = "format-dateTime($t,\"([Y01]-[M01]-[D01])\")",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"t","xs:dateTime","xs:dateTime('2003-09-07T09:15:06.456')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "(03-09-07)") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-003h'(_Config) ->
   Qry = "format-dateTime($t,\"[H01]:[m01]\")",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"t","xs:dateTime","xs:dateTime('2003-09-07T09:15:06.456')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "09:15") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-003i'(_Config) ->
   Qry = "format-dateTime($t,\"[H]:[m]\")",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"t","xs:dateTime","xs:dateTime('2003-09-07T09:15:06.456')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "9:15") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-003j'(_Config) ->
   Qry = "format-dateTime($t,\"[H01]:[m01]:[s01]\")",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"t","xs:dateTime","xs:dateTime('2003-09-07T09:15:06.456')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "09:15:06") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-003k'(_Config) ->
   Qry = "format-dateTime($t,\"[H]:[m]:[s]\")",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"t","xs:dateTime","xs:dateTime('2003-09-07T09:15:06.456')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "9:15:06") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-003L'(_Config) ->
   Qry = "format-dateTime($t,\"[H]:[m]:[s1]\")",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"t","xs:dateTime","xs:dateTime('2003-09-07T09:15:06.456')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "9:15:6") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-003m'(_Config) ->
   Qry = "format-dateTime($t,\"[H]:[m]:[s].[f,1-1]\")",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"t","xs:dateTime","xs:dateTime('2003-09-07T09:15:06.456')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "9:15:06.4") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-003n'(_Config) ->
   Qry = "format-dateTime($t,\"[H]:[m]:[s].[f1,1-1]\")",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"t","xs:dateTime","xs:dateTime('2003-09-07T09:15:06.456')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "9:15:06.4") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-003p'(_Config) ->
   Qry = "format-dateTime($t,\"[H]:[m]:[s].[f01]\")",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"t","xs:dateTime","xs:dateTime('2003-09-07T09:15:06.456')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "9:15:06.45") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-003q'(_Config) ->
   Qry = "format-dateTime($t,\"[H]:[m]:[s].[f001]\")",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"t","xs:dateTime","xs:dateTime('2003-09-07T09:15:06.456')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "9:15:06.456") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-003r'(_Config) ->
   Qry = "format-dateTime($t,'[Y0001]-[M01]-[D01]T[H01]:[m01]:[s01].[f001]')",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"t","xs:dateTime","xs:dateTime('2003-09-07T09:15:06.456')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2003-09-07T09:15:06.456") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-004'(_Config) ->
   Qry = "
        for $i in 1 to 24 return
        format-dateTime($t + xs:dayTimeDuration('PT1H')*$i, '[h].[m]')",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"t","xs:dateTime","xs:dateTime('2003-09-07T09:15:06.456')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_norm_string_value(Res, "10.15 11.15 12.15 1.15 2.15 3.15 4.15 5.15 6.15 7.15 8.15 9.15 10.15 11.15 12.15 1.15 2.15 3.15 4.15 5.15 6.15 7.15 8.15 9.15") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-005'(_Config) ->
   Qry = "
        string-join(
          for $i in 1 to 100 return
          format-dateTime($t + xs:yearMonthDuration('P1Y')*$i, '[YI]'), '; ')",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"t","xs:dateTime","xs:dateTime('1950-01-01T12:00:00')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_norm_string_value(Res, "MCMLI; MCMLII; MCMLIII; MCMLIV; MCMLV; MCMLVI; MCMLVII; MCMLVIII; MCMLIX; MCMLX; MCMLXI; MCMLXII; MCMLXIII; MCMLXIV; MCMLXV; MCMLXVI; MCMLXVII; MCMLXVIII; MCMLXIX; MCMLXX; MCMLXXI; MCMLXXII; MCMLXXIII; MCMLXXIV; MCMLXXV; MCMLXXVI; MCMLXXVII; MCMLXXVIII; MCMLXXIX; MCMLXXX; MCMLXXXI; MCMLXXXII; MCMLXXXIII; MCMLXXXIV; MCMLXXXV; MCMLXXXVI; MCMLXXXVII; MCMLXXXVIII; MCMLXXXIX; MCMXC; MCMXCI; MCMXCII; MCMXCIII; MCMXCIV; MCMXCV; MCMXCVI; MCMXCVII; MCMXCVIII; MCMXCIX; MM; MMI; MMII; MMIII; MMIV; MMV; MMVI; MMVII; MMVIII; MMIX; MMX; MMXI; MMXII; MMXIII; MMXIV; MMXV; MMXVI; MMXVII; MMXVIII; MMXIX; MMXX; MMXXI; MMXXII; MMXXIII; MMXXIV; MMXXV; MMXXVI; MMXXVII; MMXXVIII; MMXXIX; MMXXX; MMXXXI; MMXXXII; MMXXXIII; MMXXXIV; MMXXXV; MMXXXVI; MMXXXVII; MMXXXVIII; MMXXXIX; MMXL; MMXLI; MMXLII; MMXLIII; MMXLIV; MMXLV; MMXLVI; MMXLVII; MMXLVIII; MMXLIX; MML") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-006'(_Config) ->
   Qry = "
        string-join(
          for $i in 1 to 100 return
          format-dateTime($t + xs:yearMonthDuration('P17Y')*$i, '[Yi,3-3]'), '; ')",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"t","xs:dateTime","xs:dateTime('0800-01-01T12:00:00')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_norm_string_value(Res, "dcccxvii; dcccxxxiv; dcccli; dccclxviii; dccclxxxv; cmii; cmxix; cmxxxvi; cmliii; cmlxx; cmlxxxvii; iv ; xxi; xxxviii; lv ; lxxii; lxxxix; cvi; cxxiii; cxl; clvii; clxxiv; cxci; ccviii; ccxxv; ccxlii; cclix; cclxxvi; ccxciii; cccx; cccxxvii; cccxliv; ccclxi; ccclxxviii; cccxcv; cdxii; cdxxix; cdxlvi; cdlxiii; cdlxxx; cdxcvii; dxiv; dxxxi; dxlviii; dlxv; dlxxxii; dxcix; dcxvi; dcxxxiii; dcl; dclxvii; dclxxxiv; dcci; dccxviii; dccxxxv; dcclii; dcclxix; dcclxxxvi; dccciii; dcccxx; dcccxxxvii; dcccliv; dccclxxi; dccclxxxviii; cmv; cmxxii; cmxxxix; cmlvi; cmlxxiii; cmxc; vii; xxiv; xli; lviii; lxxv; xcii; cix; cxxvi; cxliii; clx; clxxvii; cxciv; ccxi; ccxxviii; ccxlv; cclxii; cclxxix; ccxcvi; cccxiii; cccxxx; cccxlvii; ccclxiv; ccclxxxi; cccxcviii; cdxv; cdxxxii; cdxlix; cdlxvi; cdlxxxiii; d") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-006a'(_Config) ->
   Qry = "
        format-dateTime($t, '[Yi,4-4]')",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"t","xs:dateTime","xs:dateTime('1004-01-01T12:00:00')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "miv ") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-009'(_Config) ->
   Qry = "for $i in 1 to 48,
                $d in $t + xs:yearMonthDuration('P1M')*$i
            return concat(\"[\", $d, \": \", format-dateTime($d, '[W]', (), 'ISO', ()), \"]\")",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"t","xs:dateTime","xs:dateTime('2003-12-01T12:00:00')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_norm_string_value(Res, "[2004-01-01T12:00:00: 1] [2004-02-01T12:00:00: 5] [2004-03-01T12:00:00: 10] [2004-04-01T12:00:00: 14] [2004-05-01T12:00:00: 18] [2004-06-01T12:00:00: 23] [2004-07-01T12:00:00: 27] [2004-08-01T12:00:00: 31] [2004-09-01T12:00:00: 36] [2004-10-01T12:00:00: 40] [2004-11-01T12:00:00: 45] [2004-12-01T12:00:00: 49] [2005-01-01T12:00:00: 53] [2005-02-01T12:00:00: 5] [2005-03-01T12:00:00: 9] [2005-04-01T12:00:00: 13] [2005-05-01T12:00:00: 17] [2005-06-01T12:00:00: 22] [2005-07-01T12:00:00: 26] [2005-08-01T12:00:00: 31] [2005-09-01T12:00:00: 35] [2005-10-01T12:00:00: 39] [2005-11-01T12:00:00: 44] [2005-12-01T12:00:00: 48] [2006-01-01T12:00:00: 52] [2006-02-01T12:00:00: 5] [2006-03-01T12:00:00: 9] [2006-04-01T12:00:00: 13] [2006-05-01T12:00:00: 18] [2006-06-01T12:00:00: 22] [2006-07-01T12:00:00: 26] [2006-08-01T12:00:00: 31] [2006-09-01T12:00:00: 35] [2006-10-01T12:00:00: 39] [2006-11-01T12:00:00: 44] [2006-12-01T12:00:00: 48] [2007-01-01T12:00:00: 1] [2007-02-01T12:00:00: 5] [2007-03-01T12:00:00: 9] [2007-04-01T12:00:00: 13] [2007-05-01T12:00:00: 18] [2007-06-01T12:00:00: 22] [2007-07-01T12:00:00: 26] [2007-08-01T12:00:00: 31] [2007-09-01T12:00:00: 35] [2007-10-01T12:00:00: 40] [2007-11-01T12:00:00: 44] [2007-12-01T12:00:00: 48]") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-010'(_Config) ->
   Qry = "for $i in 1 to 48,
                $d in $t + xs:yearMonthDuration('P1M')*$i
            return concat(\"[\", $d, \": \", format-dateTime($d, '[F01]', (), 'ISO', ()))",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"t","xs:dateTime","xs:dateTime('2003-12-01T12:00:00')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_norm_string_value(Res, "[2004-01-01T12:00:00: 04 [2004-02-01T12:00:00: 07 [2004-03-01T12:00:00: 01 [2004-04-01T12:00:00: 04 [2004-05-01T12:00:00: 06 [2004-06-01T12:00:00: 02 [2004-07-01T12:00:00: 04 [2004-08-01T12:00:00: 07 [2004-09-01T12:00:00: 03 [2004-10-01T12:00:00: 05 [2004-11-01T12:00:00: 01 [2004-12-01T12:00:00: 03 [2005-01-01T12:00:00: 06 [2005-02-01T12:00:00: 02 [2005-03-01T12:00:00: 02 [2005-04-01T12:00:00: 05 [2005-05-01T12:00:00: 07 [2005-06-01T12:00:00: 03 [2005-07-01T12:00:00: 05 [2005-08-01T12:00:00: 01 [2005-09-01T12:00:00: 04 [2005-10-01T12:00:00: 06 [2005-11-01T12:00:00: 02 [2005-12-01T12:00:00: 04 [2006-01-01T12:00:00: 07 [2006-02-01T12:00:00: 03 [2006-03-01T12:00:00: 03 [2006-04-01T12:00:00: 06 [2006-05-01T12:00:00: 01 [2006-06-01T12:00:00: 04 [2006-07-01T12:00:00: 06 [2006-08-01T12:00:00: 02 [2006-09-01T12:00:00: 05 [2006-10-01T12:00:00: 07 [2006-11-01T12:00:00: 03 [2006-12-01T12:00:00: 05 [2007-01-01T12:00:00: 01 [2007-02-01T12:00:00: 04 [2007-03-01T12:00:00: 04 [2007-04-01T12:00:00: 07 [2007-05-01T12:00:00: 02 [2007-06-01T12:00:00: 05 [2007-07-01T12:00:00: 07 [2007-08-01T12:00:00: 03 [2007-09-01T12:00:00: 06 [2007-10-01T12:00:00: 01 [2007-11-01T12:00:00: 04 [2007-12-01T12:00:00: 06") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-011'(_Config) ->
   Qry = "for $i in 1 to 48,
                $d in $t + xs:yearMonthDuration('P1M')*$i
            return concat(\"[\", $d, \": \", format-dateTime($d, '[w]', (), 'ISO', ()))",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"t","xs:dateTime","xs:dateTime('2005-12-01T12:00:00')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_norm_string_value(Res, "[2006-01-01T12:00:00: 5 [2006-02-01T12:00:00: 1 [2006-03-01T12:00:00: 1 [2006-04-01T12:00:00: 5 [2006-05-01T12:00:00: 1 [2006-06-01T12:00:00: 1 [2006-07-01T12:00:00: 5 [2006-08-01T12:00:00: 1 [2006-09-01T12:00:00: 5 [2006-10-01T12:00:00: 4 [2006-11-01T12:00:00: 1 [2006-12-01T12:00:00: 5 [2007-01-01T12:00:00: 1 [2007-02-01T12:00:00: 1 [2007-03-01T12:00:00: 1 [2007-04-01T12:00:00: 5 [2007-05-01T12:00:00: 1 [2007-06-01T12:00:00: 5 [2007-07-01T12:00:00: 4 [2007-08-01T12:00:00: 1 [2007-09-01T12:00:00: 5 [2007-10-01T12:00:00: 1 [2007-11-01T12:00:00: 1 [2007-12-01T12:00:00: 5 [2008-01-01T12:00:00: 1 [2008-02-01T12:00:00: 5 [2008-03-01T12:00:00: 4 [2008-04-01T12:00:00: 1 [2008-05-01T12:00:00: 1 [2008-06-01T12:00:00: 5 [2008-07-01T12:00:00: 1 [2008-08-01T12:00:00: 5 [2008-09-01T12:00:00: 1 [2008-10-01T12:00:00: 1 [2008-11-01T12:00:00: 5 [2008-12-01T12:00:00: 1 [2009-01-01T12:00:00: 1 [2009-02-01T12:00:00: 5 [2009-03-01T12:00:00: 4 [2009-04-01T12:00:00: 1 [2009-05-01T12:00:00: 5 [2009-06-01T12:00:00: 1 [2009-07-01T12:00:00: 1 [2009-08-01T12:00:00: 5 [2009-09-01T12:00:00: 1 [2009-10-01T12:00:00: 1 [2009-11-01T12:00:00: 5 [2009-12-01T12:00:00: 1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-012'(_Config) ->
   Qry = "for $i in 1 to 60 return
            format-dateTime($t + xs:dayTimeDuration('PT61S')*$i, '[mA].[sa]')",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"t","xs:dateTime","xs:dateTime('2011-07-01T09:15:06.456')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_norm_string_value(Res, "P.g Q.h R.i S.j T.k U.l V.m W.n X.o Y.p Z.q AA.r AB.s AC.t AD.u AE.v AF.w AG.x AH.y AI.z AJ.aa AK.ab AL.ac AM.ad AN.ae AO.af AP.ag AQ.ah AR.ai AS.aj AT.ak AU.al AV.am AW.an AX.ao AY.ap AZ.aq BA.ar BB.as BC.at BD.au BE.av BF.aw BG.ax 0.ay A.az B.ba C.bb D.bc E.bd F.be G.bf H.bg J.0 K.a L.b M.c N.d O.e P.f") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-013a'(_Config) ->
   Qry = "format-dateTime($t, '[Y,4-4]')",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"t","xs:dateTime","xs:dateTime('0985-03-01T09:15:06.456')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0985") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-013b'(_Config) ->
   Qry = "format-dateTime($t, '[Y,3-4]')",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"t","xs:dateTime","xs:dateTime('0985-03-01T09:15:06.456')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "985") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-013c'(_Config) ->
   Qry = "format-dateTime($t, '[Y,2-5]')",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"t","xs:dateTime","xs:dateTime('0985-03-01T09:15:06.456')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "985") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-013d'(_Config) ->
   Qry = "format-dateTime($t, '[Y,2-2]')",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"t","xs:dateTime","xs:dateTime('0985-03-01T09:15:06.456')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "85") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-013e'(_Config) ->
   Qry = "format-dateTime($t, '[Y,2-*]')",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"t","xs:dateTime","xs:dateTime('0985-03-01T09:15:06.456')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "985") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-013f'(_Config) ->
   Qry = "format-dateTime($t, '[Y,*-4]')",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"t","xs:dateTime","xs:dateTime('0985-03-01T09:15:06.456')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "985") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-013g'(_Config) ->
   Qry = "format-dateTime($t, '[Y,3]')",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"t","xs:dateTime","xs:dateTime('0985-03-01T09:15:06.456')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "985") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-013h'(_Config) ->
   Qry = "format-dateTime($t, '[M,4-4]')",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"t","xs:dateTime","xs:dateTime('0985-03-01T09:15:06.456')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0003") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-013i'(_Config) ->
   Qry = "format-dateTime($t, '[M,1-4]')",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"t","xs:dateTime","xs:dateTime('0985-03-01T09:15:06.456')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-013j'(_Config) ->
   Qry = "format-dateTime($t, '[M,2-5]')",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"t","xs:dateTime","xs:dateTime('0985-03-01T09:15:06.456')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "03") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-013k'(_Config) ->
   Qry = "format-dateTime($t, '[M,2-2]')",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"t","xs:dateTime","xs:dateTime('0985-03-01T09:15:06.456')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "03") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-013L'(_Config) ->
   Qry = "format-dateTime($t, '[M,1-*]')",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"t","xs:dateTime","xs:dateTime('0985-03-01T09:15:06.456')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-013m'(_Config) ->
   Qry = "format-dateTime($t, '[M,*-2]')",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"t","xs:dateTime","xs:dateTime('0985-03-01T09:15:06.456')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-013n'(_Config) ->
   Qry = "format-dateTime($t, '[M,3]')",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"t","xs:dateTime","xs:dateTime('0985-03-01T09:15:06.456')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "003") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-013p'(_Config) ->
   Qry = "format-dateTime($t, '[f,4-4]')",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"t","xs:dateTime","xs:dateTime('0985-03-01T09:15:06.456')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "4560") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-013q'(_Config) ->
   Qry = "format-dateTime($t, '[f,1-4]')",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"t","xs:dateTime","xs:dateTime('0985-03-01T09:15:06.456')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "456") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-013r'(_Config) ->
   Qry = "format-dateTime($t, '[f,2-5]')",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"t","xs:dateTime","xs:dateTime('0985-03-01T09:15:06.456')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "456") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-013s'(_Config) ->
   Qry = "format-dateTime($t, '[f,2-2]')",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"t","xs:dateTime","xs:dateTime('0985-03-01T09:15:06.456')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "45") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-013t'(_Config) ->
   Qry = "format-dateTime($t, '[f,1-*]')",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"t","xs:dateTime","xs:dateTime('0985-03-01T09:15:06.456')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "456") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-013u'(_Config) ->
   Qry = "format-dateTime($t, '[f,*-2]')",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"t","xs:dateTime","xs:dateTime('0985-03-01T09:15:06.456')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "45") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-013v'(_Config) ->
   Qry = "format-dateTime($t, '[f,3]')",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"t","xs:dateTime","xs:dateTime('0985-03-01T09:15:06.456')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "456") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-014'(_Config) ->
   Qry = "string-join(
               for $z in -28 to +28
               return format-dateTime(adjust-dateTime-to-timezone(
                   $t, $z*xs:dayTimeDuration('PT30M')), '[h01][m01][Z]'), '; ')
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"t","xs:dateTime","xs:dateTime('0985-03-01T09:15:06.456Z')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_norm_string_value(Res, "0715-14:00; 0745-13:30; 0815-13:00; 0845-12:30; 0915-12:00; 0945-11:30; 1015-11:00; 1045-10:30; 1115-10:00; 1145-09:30; 1215-09:00; 1245-08:30; 0115-08:00; 0145-07:30; 0215-07:00; 0245-06:30; 0315-06:00; 0345-05:30; 0415-05:00; 0445-04:30; 0515-04:00; 0545-03:30; 0615-03:00; 0645-02:30; 0715-02:00; 0745-01:30; 0815-01:00; 0845-00:30; 0915+00:00; 0945+00:30; 1015+01:00; 1045+01:30; 1115+02:00; 1145+02:30; 1215+03:00; 1245+03:30; 0115+04:00; 0145+04:30; 0215+05:00; 0245+05:30; 0315+06:00; 0345+06:30; 0415+07:00; 0445+07:30; 0515+08:00; 0545+08:30; 0615+09:00; 0645+09:30; 0715+10:00; 0745+10:30; 0815+11:00; 0845+11:30; 0915+12:00; 0945+12:30; 1015+13:00; 1045+13:30; 1115+14:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-015'(_Config) ->
   Qry = "string-join(
               for $z in -28 to +28
               return format-dateTime(adjust-dateTime-to-timezone(
                          $t, $z*xs:dayTimeDuration('PT30M')), '[h01][m01][z0]'), '; ')",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"t","xs:dateTime","xs:dateTime('0985-03-01T09:15:06.456Z')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_norm_string_value(Res, "0715GMT-14; 0745GMT-13:30; 0815GMT-13; 0845GMT-12:30; 0915GMT-12; 0945GMT-11:30; 1015GMT-11; 1045GMT-10:30; 1115GMT-10; 1145GMT-9:30; 1215GMT-9; 1245GMT-8:30; 0115GMT-8; 0145GMT-7:30; 0215GMT-7; 0245GMT-6:30; 0315GMT-6; 0345GMT-5:30; 0415GMT-5; 0445GMT-4:30; 0515GMT-4; 0545GMT-3:30; 0615GMT-3; 0645GMT-2:30; 0715GMT-2; 0745GMT-1:30; 0815GMT-1; 0845GMT-0:30; 0915GMT+0; 0945GMT+0:30; 1015GMT+1; 1045GMT+1:30; 1115GMT+2; 1145GMT+2:30; 1215GMT+3; 1245GMT+3:30; 0115GMT+4; 0145GMT+4:30; 0215GMT+5; 0245GMT+5:30; 0315GMT+6; 0345GMT+6:30; 0415GMT+7; 0445GMT+7:30; 0515GMT+8; 0545GMT+8:30; 0615GMT+9; 0645GMT+9:30; 0715GMT+10; 0745GMT+10:30; 0815GMT+11; 0845GMT+11:30; 0915GMT+12; 0945GMT+12:30; 1015GMT+13; 1045GMT+13:30; 1115GMT+14") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-016'(_Config) ->
   Qry = "string-join(
               for $z in -28 to +28
               return format-dateTime(adjust-dateTime-to-timezone(
               $t, $z*xs:dayTimeDuration('PT30M')), '[h01][m01][z00:00]'), '; ')
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"t","xs:dateTime","xs:dateTime('0985-03-01T09:15:06.456Z')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_norm_string_value(Res, "0715GMT-14:00; 0745GMT-13:30; 0815GMT-13:00; 0845GMT-12:30; 0915GMT-12:00; 0945GMT-11:30; 1015GMT-11:00; 1045GMT-10:30; 1115GMT-10:00; 1145GMT-09:30; 1215GMT-09:00; 1245GMT-08:30; 0115GMT-08:00; 0145GMT-07:30; 0215GMT-07:00; 0245GMT-06:30; 0315GMT-06:00; 0345GMT-05:30; 0415GMT-05:00; 0445GMT-04:30; 0515GMT-04:00; 0545GMT-03:30; 0615GMT-03:00; 0645GMT-02:30; 0715GMT-02:00; 0745GMT-01:30; 0815GMT-01:00; 0845GMT-00:30; 0915GMT+00:00; 0945GMT+00:30; 1015GMT+01:00; 1045GMT+01:30; 1115GMT+02:00; 1145GMT+02:30; 1215GMT+03:00; 1245GMT+03:30; 0115GMT+04:00; 0145GMT+04:30; 0215GMT+05:00; 0245GMT+05:30; 0315GMT+06:00; 0345GMT+06:30; 0415GMT+07:00; 0445GMT+07:30; 0515GMT+08:00; 0545GMT+08:30; 0615GMT+09:00; 0645GMT+09:30; 0715GMT+10:00; 0745GMT+10:30; 0815GMT+11:00; 0845GMT+11:30; 0915GMT+12:00; 0945GMT+12:30; 1015GMT+13:00; 1045GMT+13:30; 1115GMT+14:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-017'(_Config) ->
   Qry = "string-join(
               for $z in -28 to +28
               return format-dateTime(adjust-dateTime-to-timezone($t, $z*xs:dayTimeDuration('PT30M')), '[h01][m01][z00]'), '; ')",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"t","xs:dateTime","xs:dateTime('0985-03-01T09:15:06.456Z')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_norm_string_value(Res, "0715GMT-14; 0745GMT-13:30; 0815GMT-13; 0845GMT-12:30; 0915GMT-12; 0945GMT-11:30; 1015GMT-11; 1045GMT-10:30; 1115GMT-10; 1145GMT-09:30; 1215GMT-09; 1245GMT-08:30; 0115GMT-08; 0145GMT-07:30; 0215GMT-07; 0245GMT-06:30; 0315GMT-06; 0345GMT-05:30; 0415GMT-05; 0445GMT-04:30; 0515GMT-04; 0545GMT-03:30; 0615GMT-03; 0645GMT-02:30; 0715GMT-02; 0745GMT-01:30; 0815GMT-01; 0845GMT-00:30; 0915GMT+00; 0945GMT+00:30; 1015GMT+01; 1045GMT+01:30; 1115GMT+02; 1145GMT+02:30; 1215GMT+03; 1245GMT+03:30; 0115GMT+04; 0145GMT+04:30; 0215GMT+05; 0245GMT+05:30; 0315GMT+06; 0345GMT+06:30; 0415GMT+07; 0445GMT+07:30; 0515GMT+08; 0545GMT+08:30; 0615GMT+09; 0645GMT+09:30; 0715GMT+10; 0745GMT+10:30; 0815GMT+11; 0845GMT+11:30; 0915GMT+12; 0945GMT+12:30; 1015GMT+13; 1045GMT+13:30; 1115GMT+14") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-018'(_Config) ->
   Qry = "string-join(
               for $z in -28 to +28
               return format-dateTime(adjust-dateTime-to-timezone($t, $z*xs:dayTimeDuration('PT30M')), '[h01][m01][z00]'), '; ')",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"t","xs:dateTime","xs:dateTime('0985-03-01T09:15:06.456Z')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_norm_string_value(Res, "0715GMT-14; 0745GMT-13:30; 0815GMT-13; 0845GMT-12:30; 0915GMT-12; 0945GMT-11:30; 1015GMT-11; 1045GMT-10:30; 1115GMT-10; 1145GMT-09:30; 1215GMT-09; 1245GMT-08:30; 0115GMT-08; 0145GMT-07:30; 0215GMT-07; 0245GMT-06:30; 0315GMT-06; 0345GMT-05:30; 0415GMT-05; 0445GMT-04:30; 0515GMT-04; 0545GMT-03:30; 0615GMT-03; 0645GMT-02:30; 0715GMT-02; 0745GMT-01:30; 0815GMT-01; 0845GMT-00:30; 0915GMT+00; 0945GMT+00:30; 1015GMT+01; 1045GMT+01:30; 1115GMT+02; 1145GMT+02:30; 1215GMT+03; 1245GMT+03:30; 0115GMT+04; 0145GMT+04:30; 0215GMT+05; 0245GMT+05:30; 0315GMT+06; 0345GMT+06:30; 0415GMT+07; 0445GMT+07:30; 0515GMT+08; 0545GMT+08:30; 0615GMT+09; 0645GMT+09:30; 0715GMT+10; 0745GMT+10:30; 0815GMT+11; 0845GMT+11:30; 0915GMT+12; 0945GMT+12:30; 1015GMT+13; 1045GMT+13:30; 1115GMT+14") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-019a'(_Config) ->
   Qry = "
         format-dateTime(xs:dateTime('2015-02-15T12:00:00Z'), '[D] [MNn] [Y0001] @ [H01]:[m01] [Z]', 'en', (), 'America/New_York')
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'15 February 2015 @ 07:00 -05:00'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-019b'(_Config) ->
   Qry = "
         format-dateTime(xs:dateTime('2015-08-15T12:00:00Z'), '[D] [MNn] [Y0001] @ [H01]:[m01] [Z]', 'en', (), 'America/New_York')
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'15 August 2015 @ 08:00 -04:00'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-019c'(_Config) ->
   Qry = "
         format-dateTime(xs:dateTime('2015-02-15T12:00:00Z'), '[D] [MNn] [Y0001] @ [H01]:[m01] [ZN]', 'en', (), 'America/New_York')
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'15 February 2015 @ 07:00 EST'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-019d'(_Config) ->
   Qry = "
         format-dateTime(xs:dateTime('2015-08-15T12:00:00Z'), '[D] [MNn] [Y0001] @ [H01]:[m01] [ZN]', 'en', (), 'America/New_York')
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'15 August 2015 @ 08:00 EDT'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-019e'(_Config) ->
   Qry = "
         format-dateTime(xs:dateTime('2015-02-15T12:00:00Z'), '[D] [MNn] [Y0001] @ [H01]:[m01] [Z]', 'en', (), 'Europe/Paris')
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'15 February 2015 @ 13:00 +01:00'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-019f'(_Config) ->
   Qry = "
         format-dateTime(xs:dateTime('2015-08-15T12:00:00Z'), '[D] [MNn] [Y0001] @ [H01]:[m01] [Z]', 'en', (), 'Europe/Paris')
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'15 August 2015 @ 14:00 +02:00'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-019g'(_Config) ->
   Qry = "
         format-dateTime(xs:dateTime('2015-02-15T12:00:00Z'), '[D] [MNn] [Y0001] @ [H01]:[m01] [ZN]', 'en', (), 'Europe/Paris')
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'15 February 2015 @ 13:00 CET'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-019h'(_Config) ->
   Qry = "
         format-dateTime(xs:dateTime('2015-08-15T12:00:00Z'), '[D] [MNn] [Y0001] @ [H01]:[m01] [ZN]', 'en', (), 'Europe/Paris')
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'15 August 2015 @ 14:00 CEST'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-801err'(_Config) ->
   Qry = "format-dateTime(current-dateTime(), '[bla]', 'en', (), ())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XTDE1340") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOFD1340") of 
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
'format-dateTime-en141'(_Config) ->
   Qry = "
        format-dateTime($d1, '[Y][EN]', 'en', (), ()),
        format-dateTime($d2, '[Y][EN]', 'en', (), ())
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"d1","xs:dateTime","xs:dateTime('1990-12-01T12:00:00')"},
{"d2","xs:dateTime","xs:dateTime('-0055-12-01T12:00:00')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_deep_eq(Res,"\"1990AD\", \"55BC\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_deep_eq(Res,"\"1990CE\", \"55BCE\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_deep_eq(Res,"\"1990A.D.\", \"55B.C.\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_deep_eq(Res,"\"1990C.E.\", \"55B.C.E.\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-en142'(_Config) ->
   Qry = "
        for $i in 0 to 23 return
        let $t := $b + xs:dayTimeDuration('PT1H')*$i return
        translate(format-dateTime($t, '[h]~[m][P]', 'en', (), ()), '.- ', '')
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"b","xs:dateTime","xs:dateTime('2011-07-01T00:10:00')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_norm_string_value(Res, "12~10am 1~10am 2~10am 3~10am 4~10am 5~10am 6~10am 7~10am 8~10am 9~10am 10~10am 11~10am 12~10pm 1~10pm 2~10pm 3~10pm 4~10pm 5~10pm 6~10pm 7~10pm 8~10pm 9~10pm 10~10pm 11~10pm") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-en143'(_Config) ->
   Qry = "
        for $i in 0 to 1 return
        let $t := $b + xs:dayTimeDuration('PT12H')*$i return
        translate(format-dateTime($t, '[h]~[m][P]', 'en', (), ()), '.- ', '')
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"b","xs:dateTime","xs:dateTime('2011-07-01T00:00:00')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "12~00am 12~00pm") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-en151'(_Config) ->
   Qry = "format-dateTime($b, '[MNn]', 'xib', (), ())",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"b","xs:dateTime","xs:dateTime('2006-03-01T12:00:00')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"matches($result, \"en\")") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"matches($result, \"March\")") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-en152'(_Config) ->
   Qry = "format-dateTime($b, '[M01]', 'en', 'CB', ())",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{vars, [{"b","xs:dateTime","xs:dateTime('2006-03-01T12:00:00')"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"matches($result, \"AD\")") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"matches($result, \"03\")") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-inpt-er1'(_Config) ->
   Qry = "format-dateTime('abc', '[bla]', 'en', (), ())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-inpt-er2'(_Config) ->
   Qry = "format-dateTime(current-dateTime(), '[bla]', 'en', (), (), 6)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-inpt-er3'(_Config) ->
   Qry = "format-dateTime(current-dateTime(), '[bla]', 'en', (), 5)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-inpt-er4'(_Config) ->
   Qry = "format-dateTime(current-dateTime(), \"[D01]\", \"\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-dateTime-1340err'(_Config) ->
   Qry = "format-dateTime(current-dateTime(), '[yY]', 'en', (), ())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOFD1340") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
