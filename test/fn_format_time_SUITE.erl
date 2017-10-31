-module('fn_format_time_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['format-time-002a'/1]).
-export(['format-time-002b'/1]).
-export(['format-time-002c'/1]).
-export(['format-time-002d'/1]).
-export(['format-time-002e'/1]).
-export(['format-time-002f'/1]).
-export(['format-time-002g'/1]).
-export(['format-time-002h'/1]).
-export(['format-time-002i'/1]).
-export(['format-time-002j'/1]).
-export(['format-time-004'/1]).
-export(['format-time-013n'/1]).
-export(['format-time-013p'/1]).
-export(['format-time-013q'/1]).
-export(['format-time-013r'/1]).
-export(['format-time-013s'/1]).
-export(['format-time-013t'/1]).
-export(['format-time-013u'/1]).
-export(['format-time-013v'/1]).
-export(['format-time-014'/1]).
-export(['format-time-015'/1]).
-export(['format-time-016'/1]).
-export(['format-time-017'/1]).
-export(['format-time-018'/1]).
-export(['format-time-019'/1]).
-export(['format-time-020'/1]).
-export(['format-time-021'/1]).
-export(['format-time-022'/1]).
-export(['format-time-023p'/1]).
-export(['format-time-023q'/1]).
-export(['format-time-023r'/1]).
-export(['format-time-023s'/1]).
-export(['format-time-023t'/1]).
-export(['format-time-023u'/1]).
-export(['format-time-023v'/1]).
-export(['format-time-024p'/1]).
-export(['format-time-024q'/1]).
-export(['format-time-024r'/1]).
-export(['format-time-024s'/1]).
-export(['format-time-024t'/1]).
-export(['format-time-024u'/1]).
-export(['format-time-024v'/1]).
-export(['format-time-809err'/1]).
-export(['format-time-810err'/1]).
-export(['format-time-811err'/1]).
-export(['format-time-812err'/1]).
-export(['format-time-813err'/1]).
-export(['format-time-814err'/1]).
-export(['format-time-815err'/1]).
-export(['format-time-816err'/1]).
-export(['format-time-817err'/1]).
-export(['format-time-818err'/1]).
-export(['format-time-inpt-er1'/1]).
-export(['format-time-inpt-er2'/1]).
-export(['format-time-inpt-er3'/1]).
-export(['format-time-inpt-er4'/1]).
-export(['format-time-1340err'/1]).
-export(['millisecs-001'/1]).
-export(['millisecs-002'/1]).
-export(['millisecs-003'/1]).
-export(['millisecs-004'/1]).
-export(['millisecs-005'/1]).
-export(['millisecs-006'/1]).
-export(['millisecs-007'/1]).
-export(['millisecs-008'/1]).
-export(['millisecs-009'/1]).
-export(['millisecs-010'/1]).
-export(['millisecs-011'/1]).
-export(['millisecs-012'/1]).
-export(['millisecs-013'/1]).
-export(['millisecs-014'/1]).
-export(['millisecs-015'/1]).
-export(['millisecs-016'/1]).
-export(['millisecs-017'/1]).
-export(['millisecs-018'/1]).
-export(['millisecs-019'/1]).
-export(['millisecs-020'/1]).
-export(['millisecs-021'/1]).
-export(['millisecs-022'/1]).
-export(['millisecs-023'/1]).
-export(['millisecs-024'/1]).
-export(['millisecs-025'/1]).
-export(['millisecs-026'/1]).
-export(['millisecs-901'/1]).
-export(['millisecs-902'/1]).
-export(['millisecs-903'/1]).
-export(['millisecs-904'/1]).
-export(['millisecs-905'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'format-time-002a',
   'format-time-002b',
   'format-time-002c',
   'format-time-002d',
   'format-time-002e',
   'format-time-002f',
   'format-time-002g',
   'format-time-002h',
   'format-time-002i',
   'format-time-002j',
   'format-time-004',
   'format-time-013n',
   'format-time-013p',
   'format-time-013q',
   'format-time-013r',
   'format-time-013s',
   'format-time-013t',
   'format-time-013u',
   'format-time-013v',
   'format-time-014',
   'format-time-015',
   'format-time-016',
   'format-time-017',
   'format-time-018',
   'format-time-019',
   'format-time-020',
   'format-time-021',
   'format-time-022',
   'format-time-023p',
   'format-time-023q',
   'format-time-023r',
   'format-time-023s',
   'format-time-023t',
   'format-time-023u',
   'format-time-023v',
   'format-time-024p',
   'format-time-024q',
   'format-time-024r',
   'format-time-024s',
   'format-time-024t',
   'format-time-024u',
   'format-time-024v',
   'format-time-809err',
   'format-time-810err',
   'format-time-811err',
   'format-time-812err',
   'format-time-813err',
   'format-time-814err',
   'format-time-815err',
   'format-time-816err',
   'format-time-817err',
   'format-time-818err',
   'format-time-inpt-er1',
   'format-time-inpt-er2',
   'format-time-inpt-er3',
   'format-time-inpt-er4',
   'format-time-1340err',
   'millisecs-001',
   'millisecs-002',
   'millisecs-003',
   'millisecs-004',
   'millisecs-005',
   'millisecs-006',
   'millisecs-007',
   'millisecs-008',
   'millisecs-009',
   'millisecs-010',
   'millisecs-011',
   'millisecs-012',
   'millisecs-013',
   'millisecs-014',
   'millisecs-015',
   'millisecs-016',
   'millisecs-017',
   'millisecs-018',
   'millisecs-019',
   'millisecs-020',
   'millisecs-021',
   'millisecs-022',
   'millisecs-023',
   'millisecs-024',
   'millisecs-025',
   'millisecs-026',
   'millisecs-901',
   'millisecs-902',
   'millisecs-903',
   'millisecs-904',
   'millisecs-905'].
environment('empty') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('atomic') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{resources, []},
{modules, []}
];
environment('atomic-xq') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-mod') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/works-mod.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/works.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('staff') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/staff.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-and-staff') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/works.xml","$works",""},
{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/staff.xml","$staff",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('auction') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/auction.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
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
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/QName-source.xml",".",""}]},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/QName-schema.xsd","http://www.example.com/QNameXSD"}]},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.example.com/QNameXSD",""}]},
{resources, []},
{modules, []}
];
environment('math') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/math","math"}]},
{resources, []},
{modules, []}
];
environment('array') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"}]},
{resources, []},
{modules, []}
];
environment('map') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('array-and-map') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"},
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
].
'format-time-002a'(_Config) ->
   Qry = "format-time($t,\"[H01]:[m01]\")",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:time","xs:time('09:15:06.456')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "09:15") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-time-002b'(_Config) ->
   Qry = "format-time($t,\"[H]:[m]\")",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:time","xs:time('09:15:06.456')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "9:15") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-time-002c'(_Config) ->
   Qry = "format-time($t,\"[H01]:[m01]:[s01]\")",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:time","xs:time('09:15:06.456')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "09:15:06") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-time-002d'(_Config) ->
   Qry = "format-time($t,\"[H]:[m]:[s]\")",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:time","xs:time('09:15:06.456')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "9:15:06") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-time-002e'(_Config) ->
   Qry = "format-time($t,\"[H]:[m]:[s1]\")",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:time","xs:time('09:15:06.456')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "9:15:6") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-time-002f'(_Config) ->
   Qry = "format-time($t,\"[H]:[m]:[s01]:[f001]\")",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:time","xs:time('09:15:06.456')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "9:15:06:456") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-time-002g'(_Config) ->
   Qry = "format-time($t,\"[H]:[m]:[s].[f,1-1]\")",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:time","xs:time('09:15:06.456')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "9:15:06.4") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-time-002h'(_Config) ->
   Qry = "format-time($t,\"[H]:[m]:[s].[f1,1-1]\")",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:time","xs:time('09:15:06.456')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "9:15:06.4") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-time-002i'(_Config) ->
   Qry = "format-time($t,\"[H]:[m]:[s].[f01]\")",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:time","xs:time('09:15:06.456')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "9:15:06.45") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-time-002j'(_Config) ->
   Qry = "format-time($t,\"[H]:[m]:[s].[f001]\")",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:time","xs:time('09:15:06.456')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "9:15:06.456") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-time-004'(_Config) ->
   Qry = "
        for $i in 1 to 24 return
        format-time($t + xs:dayTimeDuration('PT1H')*$i, '[h].[m]')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:time","xs:time('09:15:06.456')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_norm_string_value(Res, "10.15 11.15 12.15 1.15 2.15 3.15 4.15 5.15 6.15 7.15 8.15 9.15 10.15 11.15 12.15 1.15 2.15 3.15 4.15 5.15 6.15 7.15 8.15 9.15") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-time-013n'(_Config) ->
   Qry = "format-time($t, '[m,3]')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:time","xs:time('09:15:06.456')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "015") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-time-013p'(_Config) ->
   Qry = "format-time($t, '[f,4-4]')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:time","xs:time('09:15:06.456')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "4560") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-time-013q'(_Config) ->
   Qry = "format-time($t, '[f,1-4]')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:time","xs:time('09:15:06.456')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "456") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-time-013r'(_Config) ->
   Qry = "format-time($t, '[f,2-5]')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:time","xs:time('09:15:06.456')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "456") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-time-013s'(_Config) ->
   Qry = "format-time($t, '[f,2-2]')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:time","xs:time('09:15:06.456')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "45") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-time-013t'(_Config) ->
   Qry = "format-time($t, '[f,1-*]')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:time","xs:time('09:15:06.456')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "456") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-time-013u'(_Config) ->
   Qry = "format-time($t, '[f,*-2]')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:time","xs:time('09:15:06.456')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "45") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-time-013v'(_Config) ->
   Qry = "format-time($t, '[f,3]')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:time","xs:time('09:15:06.456')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "456") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-time-014'(_Config) ->
   Qry = "string-join(
               for $z in -28 to +28
               return format-time(adjust-time-to-timezone(
               $t, $z*xs:dayTimeDuration('PT30M')), '[h01][m01][Z]'), '; ')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:time","xs:time('09:15:06.456Z')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_norm_string_value(Res, "0715-14:00; 0745-13:30; 0815-13:00; 0845-12:30; 0915-12:00; 0945-11:30; 1015-11:00; 1045-10:30; 1115-10:00; 1145-09:30; 1215-09:00; 1245-08:30; 0115-08:00; 0145-07:30; 0215-07:00; 0245-06:30; 0315-06:00; 0345-05:30; 0415-05:00; 0445-04:30; 0515-04:00; 0545-03:30; 0615-03:00; 0645-02:30; 0715-02:00; 0745-01:30; 0815-01:00; 0845-00:30; 0915+00:00; 0945+00:30; 1015+01:00; 1045+01:30; 1115+02:00; 1145+02:30; 1215+03:00; 1245+03:30; 0115+04:00; 0145+04:30; 0215+05:00; 0245+05:30; 0315+06:00; 0345+06:30; 0415+07:00; 0445+07:30; 0515+08:00; 0545+08:30; 0615+09:00; 0645+09:30; 0715+10:00; 0745+10:30; 0815+11:00; 0845+11:30; 0915+12:00; 0945+12:30; 1015+13:00; 1045+13:30; 1115+14:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-time-015'(_Config) ->
   Qry = "string-join(
               for $z in -28 to +28
               return format-time(adjust-time-to-timezone(
                        $t, $z*xs:dayTimeDuration('PT30M')), '[h01][m01][z]'), '; ')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:time","xs:time('09:15:06.456Z')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_norm_string_value(Res, "0715GMT-14:00; 0745GMT-13:30; 0815GMT-13:00; 0845GMT-12:30; 0915GMT-12:00; 0945GMT-11:30; 1015GMT-11:00; 1045GMT-10:30; 1115GMT-10:00; 1145GMT-09:30; 1215GMT-09:00; 1245GMT-08:30; 0115GMT-08:00; 0145GMT-07:30; 0215GMT-07:00; 0245GMT-06:30; 0315GMT-06:00; 0345GMT-05:30; 0415GMT-05:00; 0445GMT-04:30; 0515GMT-04:00; 0545GMT-03:30; 0615GMT-03:00; 0645GMT-02:30; 0715GMT-02:00; 0745GMT-01:30; 0815GMT-01:00; 0845GMT-00:30; 0915GMT+00:00; 0945GMT+00:30; 1015GMT+01:00; 1045GMT+01:30; 1115GMT+02:00; 1145GMT+02:30; 1215GMT+03:00; 1245GMT+03:30; 0115GMT+04:00; 0145GMT+04:30; 0215GMT+05:00; 0245GMT+05:30; 0315GMT+06:00; 0345GMT+06:30; 0415GMT+07:00; 0445GMT+07:30; 0515GMT+08:00; 0545GMT+08:30; 0615GMT+09:00; 0645GMT+09:30; 0715GMT+10:00; 0745GMT+10:30; 0815GMT+11:00; 0845GMT+11:30; 0915GMT+12:00; 0945GMT+12:30; 1015GMT+13:00; 1045GMT+13:30; 1115GMT+14:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-time-016'(_Config) ->
   Qry = "string-join(
               for $z in -28 to +28
               return format-time(adjust-time-to-timezone(
                        $t, $z*xs:dayTimeDuration('PT30M')), '[h01][m01][z,6-6]'), '; ')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:time","xs:time('09:15:06.456Z')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_norm_string_value(Res, "0715GMT-14:00; 0745GMT-13:30; 0815GMT-13:00; 0845GMT-12:30; 0915GMT-12:00; 0945GMT-11:30; 1015GMT-11:00; 1045GMT-10:30; 1115GMT-10:00; 1145GMT-09:30; 1215GMT-09:00; 1245GMT-08:30; 0115GMT-08:00; 0145GMT-07:30; 0215GMT-07:00; 0245GMT-06:30; 0315GMT-06:00; 0345GMT-05:30; 0415GMT-05:00; 0445GMT-04:30; 0515GMT-04:00; 0545GMT-03:30; 0615GMT-03:00; 0645GMT-02:30; 0715GMT-02:00; 0745GMT-01:30; 0815GMT-01:00; 0845GMT-00:30; 0915GMT+00:00; 0945GMT+00:30; 1015GMT+01:00; 1045GMT+01:30; 1115GMT+02:00; 1145GMT+02:30; 1215GMT+03:00; 1245GMT+03:30; 0115GMT+04:00; 0145GMT+04:30; 0215GMT+05:00; 0245GMT+05:30; 0315GMT+06:00; 0345GMT+06:30; 0415GMT+07:00; 0445GMT+07:30; 0515GMT+08:00; 0545GMT+08:30; 0615GMT+09:00; 0645GMT+09:30; 0715GMT+10:00; 0745GMT+10:30; 0815GMT+11:00; 0845GMT+11:30; 0915GMT+12:00; 0945GMT+12:30; 1015GMT+13:00; 1045GMT+13:30; 1115GMT+14:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-time-017'(_Config) ->
   Qry = "string-join(
               for $z in -28 to +28
               return format-time(adjust-time-to-timezone($t, $z*xs:dayTimeDuration('PT30M')), '[h01][m01][z,5-6]'), '; ')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:time","xs:time('09:15:06.456Z')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_norm_string_value(Res, "0715GMT-14:00; 0745GMT-13:30; 0815GMT-13:00; 0845GMT-12:30; 0915GMT-12:00; 0945GMT-11:30; 1015GMT-11:00; 1045GMT-10:30; 1115GMT-10:00; 1145GMT-09:30; 1215GMT-09:00; 1245GMT-08:30; 0115GMT-08:00; 0145GMT-07:30; 0215GMT-07:00; 0245GMT-06:30; 0315GMT-06:00; 0345GMT-05:30; 0415GMT-05:00; 0445GMT-04:30; 0515GMT-04:00; 0545GMT-03:30; 0615GMT-03:00; 0645GMT-02:30; 0715GMT-02:00; 0745GMT-01:30; 0815GMT-01:00; 0845GMT-00:30; 0915GMT+00:00; 0945GMT+00:30; 1015GMT+01:00; 1045GMT+01:30; 1115GMT+02:00; 1145GMT+02:30; 1215GMT+03:00; 1245GMT+03:30; 0115GMT+04:00; 0145GMT+04:30; 0215GMT+05:00; 0245GMT+05:30; 0315GMT+06:00; 0345GMT+06:30; 0415GMT+07:00; 0445GMT+07:30; 0515GMT+08:00; 0545GMT+08:30; 0615GMT+09:00; 0645GMT+09:30; 0715GMT+10:00; 0745GMT+10:30; 0815GMT+11:00; 0845GMT+11:30; 0915GMT+12:00; 0945GMT+12:30; 1015GMT+13:00; 1045GMT+13:30; 1115GMT+14:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-time-018'(_Config) ->
   Qry = "string-join(
               for $z in -28 to +28
               return format-time(adjust-time-to-timezone($t, $z*xs:dayTimeDuration('PT30M')), '[h01][m01][z,2-6]'), '; ')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:time","xs:time('09:15:06.456Z')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_norm_string_value(Res, "0715GMT-14:00; 0745GMT-13:30; 0815GMT-13:00; 0845GMT-12:30; 0915GMT-12:00; 0945GMT-11:30; 1015GMT-11:00; 1045GMT-10:30; 1115GMT-10:00; 1145GMT-09:30; 1215GMT-09:00; 1245GMT-08:30; 0115GMT-08:00; 0145GMT-07:30; 0215GMT-07:00; 0245GMT-06:30; 0315GMT-06:00; 0345GMT-05:30; 0415GMT-05:00; 0445GMT-04:30; 0515GMT-04:00; 0545GMT-03:30; 0615GMT-03:00; 0645GMT-02:30; 0715GMT-02:00; 0745GMT-01:30; 0815GMT-01:00; 0845GMT-00:30; 0915GMT+00:00; 0945GMT+00:30; 1015GMT+01:00; 1045GMT+01:30; 1115GMT+02:00; 1145GMT+02:30; 1215GMT+03:00; 1245GMT+03:30; 0115GMT+04:00; 0145GMT+04:30; 0215GMT+05:00; 0245GMT+05:30; 0315GMT+06:00; 0345GMT+06:30; 0415GMT+07:00; 0445GMT+07:30; 0515GMT+08:00; 0545GMT+08:30; 0615GMT+09:00; 0645GMT+09:30; 0715GMT+10:00; 0745GMT+10:30; 0815GMT+11:00; 0845GMT+11:30; 0915GMT+12:00; 0945GMT+12:30; 1015GMT+13:00; 1045GMT+13:30; 1115GMT+14:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-time-019'(_Config) ->
   Qry = "format-time(xs:time('09:15:06.456'),\"[f๐๐๐]\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "๔๕๖") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-time-020'(_Config) ->
   Qry = "format-time(xs:time('09:15:06.456'),\"[H٠]:[m٠]:[s٠٠]:[f٠٠٠]\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "٩:١٥:٠٦:٤٥٦") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-time-021'(_Config) ->
   Qry = "format-time(xs:time('09:15:06.456'),\"[Pn]/[PNn]/[PN]\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "am/Am/AM") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_string_value(Res, "a.m./A.M./A.M.") of 
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
'format-time-022'(_Config) ->
   Qry = "format-time(xs:time('15:15:06.456'),\"[Pn]/[PNn]/[PN]\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "pm/Pm/PM") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_string_value(Res, "p.m./P.M./P.M.") of 
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
'format-time-023p'(_Config) ->
   Qry = "format-time($t, '[f,4-4]')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:time","xs:time('09:15:06.006')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0060") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-time-023q'(_Config) ->
   Qry = "format-time($t, '[f,1-4]')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:time","xs:time('09:15:06.006')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "006") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-time-023r'(_Config) ->
   Qry = "format-time($t, '[f,2-5]')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:time","xs:time('09:15:06.006')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "006") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-time-023s'(_Config) ->
   Qry = "format-time($t, '[f,2-2]')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:time","xs:time('09:15:06.006')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-time-023t'(_Config) ->
   Qry = "format-time($t, '[f,1-*]')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:time","xs:time('09:15:06.006')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "006") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-time-023u'(_Config) ->
   Qry = "format-time($t, '[f,*-2]')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:time","xs:time('09:15:06.006')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-time-023v'(_Config) ->
   Qry = "format-time($t, '[f,3]')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:time","xs:time('09:15:06.006')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "006") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-time-024p'(_Config) ->
   Qry = "format-time($t, '[f,4-4]')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:time","xs:time('09:15:06.100')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1000") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-time-024q'(_Config) ->
   Qry = "format-time($t, '[f,1-4]')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:time","xs:time('09:15:06.100')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-time-024r'(_Config) ->
   Qry = "format-time($t, '[f,2-5]')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:time","xs:time('09:15:06.100')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "10") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-time-024s'(_Config) ->
   Qry = "format-time($t, '[f,2-2]')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:time","xs:time('09:15:06.100')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "10") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-time-024t'(_Config) ->
   Qry = "format-time($t, '[f,1-*]')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:time","xs:time('09:15:06.100')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-time-024u'(_Config) ->
   Qry = "format-time($t, '[f,*-2]')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:time","xs:time('09:15:06.100')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-time-024v'(_Config) ->
   Qry = "format-time($t, '[f,3]')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:time","xs:time('09:15:06.100')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "100") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'format-time-809err'(_Config) ->
   Qry = "format-time(current-time(), '[Y]', 'en', (), ())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XTDE1350") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOFD1350") of 
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
'format-time-810err'(_Config) ->
   Qry = "format-time(current-time(), '[M]', 'en', (), ())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XTDE1350") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOFD1350") of 
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
'format-time-811err'(_Config) ->
   Qry = "format-time(current-time(), '[d]', 'en', (), ())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XTDE1350") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOFD1350") of 
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
'format-time-812err'(_Config) ->
   Qry = "format-time(current-time(), '[d]', 'en', (), ())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XTDE1350") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOFD1350") of 
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
'format-time-813err'(_Config) ->
   Qry = "format-time(current-time(), '[F]', 'en', (), ())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XTDE1350") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOFD1350") of 
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
'format-time-814err'(_Config) ->
   Qry = "format-time(current-time(), '[W]', 'en', (), ())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XTDE1350") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOFD1350") of 
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
'format-time-815err'(_Config) ->
   Qry = "format-time(current-time(), '[w]', 'en', (), ())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XTDE1350") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOFD1350") of 
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
'format-time-816err'(_Config) ->
   Qry = "format-time(current-time(), '[E]', 'en', (), ())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XTDE1350") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOFD1350") of 
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
'format-time-817err'(_Config) ->
   Qry = "format-time(current-time(), '[bla]', 'en', (), ())",
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
'format-time-818err'(_Config) ->
   Qry = "format-time(current-time(), '[H9#]')",
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
'format-time-inpt-er1'(_Config) ->
   Qry = "format-time('abc', '[bla]', 'en', (), ())",
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
'format-time-inpt-er2'(_Config) ->
   Qry = "format-time(current-time(), '[bla]', 'en', (), (), 6)",
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
'format-time-inpt-er3'(_Config) ->
   Qry = "format-time(current-time(), '[bla]', 'en', (), (), 6)",
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
'format-time-inpt-er4'(_Config) ->
   Qry = "format-time(current-time(), \"[H01]\", \"\")",
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
'format-time-1340err'(_Config) ->
   Qry = "format-time(current-time(), '[y]', 'en', (), ())",
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
'millisecs-001'(_Config) ->
   Qry = "format-time(xs:time('12:01:01.123'), '[f]')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"123\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'millisecs-002'(_Config) ->
   Qry = "format-time(xs:time('12:01:01.123'), '[f1]')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"123\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'millisecs-003'(_Config) ->
   Qry = "format-time(xs:time('12:01:01.123'), '[f99]')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"12\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'millisecs-004'(_Config) ->
   Qry = "format-time(xs:time('12:01:01.123'), '[f001]')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"123\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'millisecs-005'(_Config) ->
   Qry = "format-time(xs:time('12:01:01.123'), '[f99#]')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"123\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'millisecs-006'(_Config) ->
   Qry = "format-time(xs:time('12:01:01.12'), '[f99#]')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"12\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'millisecs-007'(_Config) ->
   Qry = "format-time(xs:time('12:01:01.12'), '[f777]')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"120\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'millisecs-008'(_Config) ->
   Qry = "format-time(xs:time('12:01:01.127'), '[f01]')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"12\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'millisecs-009'(_Config) ->
   Qry = "format-time(xs:time('12:01:01.125'), '[f01]')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"12\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'millisecs-010'(_Config) ->
   Qry = "format-time(xs:time('12:01:01.135'), '[f01]')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"13\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'millisecs-011'(_Config) ->
   Qry = "format-time(xs:time('12:01:01.135'), \"[f0'0'0]\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"1'3'5\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'millisecs-012'(_Config) ->
   Qry = "format-time(xs:time('12:01:01.135'), \"[f00'0]\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"13'5\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'millisecs-013'(_Config) ->
   Qry = "format-time(xs:time('12:01:01.135'), \"[f,6-*]\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"135000\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'millisecs-014'(_Config) ->
   Qry = "format-time(xs:time('12:01:01.133'), \"[f,*-2]\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"13\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'millisecs-015'(_Config) ->
   Qry = "format-time(xs:time('12:01:01.133'), \"[f,2-4]\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"133\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'millisecs-016'(_Config) ->
   Qry = "format-time(xs:time('12:01:01'), \"[f,2-4]\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"00\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'millisecs-017'(_Config) ->
   Qry = "format-time(xs:time('12:01:01'), \"[f]\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"0\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'millisecs-018'(_Config) ->
   Qry = "format-time(xs:time('12:01:01.123'), \"[f111,2-2]\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"123\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'millisecs-019'(_Config) ->
   Qry = "format-time(xs:time('12:01:01.123'), \"[fi]\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'millisecs-020'(_Config) ->
   Qry = "format-time(xs:time('12:01:01.123'), \"[f٠٠٠]\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"١٢٣\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'millisecs-021'(_Config) ->
   Qry = "format-time(xs:time('12:01:01.123'), \"[f٠~٠~٠]\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"١~٢~٣\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'millisecs-022'(_Config) ->
   Qry = "format-time(xs:time('12:01:01.999'), \"[f99]\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"99\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'millisecs-023'(_Config) ->
   Qry = "format-time(xs:time('12:01:01.123'), \"[ f 0 0 0 ]\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"123\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'millisecs-024'(_Config) ->
   Qry = "format-time(xs:time('12:01:01.189'), \"[f٠#,3-3]\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"١٨٩\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'millisecs-025'(_Config) ->
   Qry = "format-time(xs:time('12:01:01.1'), \"[f1###,3-3]\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"100\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'millisecs-026'(_Config) ->
   Qry = "format-time(xs:time('12:01:01.5'), \"[f1###,2-3]\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"50\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'millisecs-901'(_Config) ->
   Qry = "format-time(xs:time('12:01:01.123'), \"[f#99]\")",
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
'millisecs-902'(_Config) ->
   Qry = "format-time(xs:time('12:01:01.123'), \"[f1,0-3]\")",
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
'millisecs-903'(_Config) ->
   Qry = "format-time(xs:time('12:01:01.123'), \"[f1,*-0]\")",
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
'millisecs-904'(_Config) ->
   Qry = "format-time(xs:time('12:01:01.123'), \"[f1,3-2]\")",
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
'millisecs-905'(_Config) ->
   Qry = "format-time(xs:time('12:01:01.123'), \"[f#9٠]\")",
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
