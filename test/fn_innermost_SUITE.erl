-module('fn_innermost_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-innermost-001'/1]).
-export(['fn-innermost-002'/1]).
-export(['fn-innermost-003'/1]).
-export(['fn-innermost-004'/1]).
-export(['fn-innermost-005'/1]).
-export(['fn-innermost-006'/1]).
-export(['fn-innermost-007'/1]).
-export(['fn-innermost-008'/1]).
-export(['fn-innermost-009'/1]).
-export(['fn-innermost-010'/1]).
-export(['fn-innermost-011'/1]).
-export(['fn-innermost-012'/1]).
-export(['fn-innermost-013'/1]).
-export(['fn-innermost-014'/1]).
-export(['fn-innermost-015'/1]).
-export(['fn-innermost-016'/1]).
-export(['fn-innermost-017'/1]).
-export(['fn-innermost-018'/1]).
-export(['fn-innermost-019'/1]).
-export(['fn-innermost-020'/1]).
-export(['fn-innermost-021'/1]).
-export(['fn-innermost-022'/1]).
-export(['fn-innermost-023'/1]).
-export(['fn-innermost-024'/1]).
-export(['fn-innermost-025'/1]).
-export(['fn-innermost-026'/1]).
-export(['fn-innermost-027'/1]).
-export(['fn-innermost-028'/1]).
-export(['fn-innermost-029'/1]).
-export(['fn-innermost-030'/1]).
-export(['fn-innermost-031'/1]).
-export(['fn-innermost-032'/1]).
-export(['fn-innermost-033'/1]).
-export(['fn-innermost-034'/1]).
-export(['fn-innermost-035'/1]).
-export(['fn-innermost-036'/1]).
-export(['fn-innermost-037'/1]).
-export(['fn-innermost-038'/1]).
-export(['fn-innermost-039'/1]).
-export(['fn-innermost-040'/1]).
-export(['fn-innermost-041'/1]).
-export(['fn-innermost-042'/1]).
-export(['fn-innermost-043'/1]).
-export(['fn-innermost-044'/1]).
-export(['fn-innermost-045'/1]).
-export(['fn-innermost-046'/1]).
-export(['fn-innermost-047'/1]).
-export(['fn-innermost-048'/1]).
-export(['fn-innermost-049'/1]).
-export(['fn-innermost-050'/1]).
-export(['fn-innermost-051'/1]).
-export(['fn-innermost-052'/1]).
-export(['fn-innermost-053'/1]).
-export(['fn-innermost-054'/1]).
-export(['fn-innermost-055'/1]).
-export(['fn-innermost-056'/1]).
-export(['fn-innermost-057'/1]).
-export(['fn-innermost-058'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-innermost-001',
   'fn-innermost-002',
   'fn-innermost-003',
   'fn-innermost-004',
   'fn-innermost-005',
   'fn-innermost-006',
   'fn-innermost-007',
   'fn-innermost-008',
   'fn-innermost-009',
   'fn-innermost-010',
   'fn-innermost-011',
   'fn-innermost-012',
   'fn-innermost-013',
   'fn-innermost-014',
   'fn-innermost-015',
   'fn-innermost-016',
   'fn-innermost-017',
   'fn-innermost-018',
   'fn-innermost-019',
   'fn-innermost-020',
   'fn-innermost-021',
   'fn-innermost-022',
   'fn-innermost-023',
   'fn-innermost-024',
   'fn-innermost-025',
   'fn-innermost-026',
   'fn-innermost-027',
   'fn-innermost-028',
   'fn-innermost-029',
   'fn-innermost-030',
   'fn-innermost-031',
   'fn-innermost-032',
   'fn-innermost-033',
   'fn-innermost-034',
   'fn-innermost-035',
   'fn-innermost-036',
   'fn-innermost-037',
   'fn-innermost-038',
   'fn-innermost-039',
   'fn-innermost-040',
   'fn-innermost-041',
   'fn-innermost-042',
   'fn-innermost-043',
   'fn-innermost-044',
   'fn-innermost-045',
   'fn-innermost-046',
   'fn-innermost-047',
   'fn-innermost-048',
   'fn-innermost-049',
   'fn-innermost-050',
   'fn-innermost-051',
   'fn-innermost-052',
   'fn-innermost-053',
   'fn-innermost-054',
   'fn-innermost-055',
   'fn-innermost-056',
   'fn-innermost-057',
   'fn-innermost-058'].
environment('empty') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('atomic') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{resources, []},
{modules, []}
];
environment('atomic-xq') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-mod') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/works-mod.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/works.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('staff') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/staff.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-and-staff') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/works.xml","$works",""},
{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/staff.xml","$staff",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('auction') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/auction.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
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
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/QName-source.xml",".",""}]},
{schemas, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/QName-schema.xsd","http://www.example.com/QNameXSD"}]},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
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
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
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
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
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
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
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
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"},
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('innermost') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/fn/innermost/innermost.xml",".",""},
{"C:/git/zadean/xqerl/test/QT3-test-suite/fn/innermost/doc1.xml","$doc1",""},
{"C:/git/zadean/xqerl/test/QT3-test-suite/fn/innermost/doc2.xml","$doc2",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'fn-innermost-001'(_Config) ->
   Qry = "fn:innermost()",
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
'fn-innermost-002'(_Config) ->
   Qry = "fn:innermost#0",
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
'fn-innermost-003'(_Config) ->
   Qry = "fn:innermost( (), 1 )",
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
'fn-innermost-004'(_Config) ->
   Qry = "fn:innermost#2",
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
'fn-innermost-005'(_Config) ->
   Qry = "fn:exists( fn:innermost#1 )",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-innermost-006'(_Config) ->
   Qry = "fn:innermost( 1 )",
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
'fn-innermost-007'(_Config) ->
   Qry = "fn:innermost( fn:dateTime#2 )",
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
'fn-innermost-008'(_Config) ->
   Qry = "fn:innermost( if ( fn:current-dateTime() eq
                                    fn:dateTime( fn:current-date(),
                                                 fn:current-time() ))
                               then .
                               else 1 )",
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost')),
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
'fn-innermost-009'(_Config) ->
   Qry = "( fn:innermost( if (current-date() eq xs:date('1900-01-01'))
                                 then .
                                 else 1 ),
              fn:innermost( if (current-date() eq xs:date('1900-01-01'))
                                 then 1
                                 else . ) )",
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost')),
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
'fn-innermost-010'(_Config) ->
   Qry = "fn:innermost( if ( fn:current-dateTime() eq
                                    fn:dateTime( fn:current-date(),
                                                 fn:current-time() ))
                               then .
                               else fn:dateTime#2 )",
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost')),
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
'fn-innermost-011'(_Config) ->
   Qry = "( fn:innermost( if (current-date() eq xs:date('1900-01-01'))
                                 then .
                                 else fn:dateTime#2 ),
              fn:innermost( if (current-date() eq xs:date('1900-01-01'))
                                 then fn:dateTime#2
                                 else . ) )",
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost')),
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
'fn-innermost-012'(_Config) ->
   Qry = "fn:innermost( / )",
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-innermost-013'(_Config) ->
   Qry = "fn:deep-equal(fn:innermost( / ), / )",
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost')),
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
'fn-innermost-014'(_Config) ->
   Qry = "fn:innermost( //*/@* )",
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_count(Res, "7") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-innermost-015'(_Config) ->
   Qry = "fn:innermost( //*/@* ) ! string()",
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"('0a','00a','000a','01a','010a','02a','020a')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-innermost-016'(_Config) ->
   Qry = "deep-equal(fn:innermost( //*/@* ), //*/@*)",
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost')),
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
'fn-innermost-017'(_Config) ->
   {skip,"XP30+"}.
'fn-innermost-018'(_Config) ->
   {skip,"XP30+"}.
'fn-innermost-019'(_Config) ->
   {skip,"XP30+"}.
'fn-innermost-020'(_Config) ->
   {skip,"XP30+"}.
'fn-innermost-021'(_Config) ->
   {skip,"XP30+"}.
'fn-innermost-022'(_Config) ->
   {skip,"XP30+"}.
'fn-innermost-023'(_Config) ->
   Qry = "fn:innermost( //processing-instruction() )",
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_count(Res, "7") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-innermost-024'(_Config) ->
   Qry = "fn:innermost( //processing-instruction() ) ! local-name() ",
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"('level-0','level-00','level-000','level-01','level-010','level-02','level-020')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-innermost-025'(_Config) ->
   Qry = "fn:deep-equal( fn:innermost( //processing-instruction() ), 
                          //processing-instruction() )",
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost')),
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
'fn-innermost-026'(_Config) ->
   Qry = "fn:innermost( //comment() )",
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_count(Res, "7") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-innermost-027'(_Config) ->
   Qry = "fn:innermost( //comment() ) ! string()",
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"('0c','00c','000c','01c','010c','02c','020c')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-innermost-028'(_Config) ->
   Qry = "fn:deep-equal( fn:innermost( //comment() ),
                           //comment() )",
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost')),
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
'fn-innermost-029'(_Config) ->
   Qry = "fn:innermost( //text() )",
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_count(Res, "14") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-innermost-030'(_Config) ->
   Qry = "fn:innermost( //text() ) ! string() ",
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"('0t',' ',
                         '00t',' ','000t',' ',
                         '01t',' ','010t',' ',
                         '02t',' ','020t',' ')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-innermost-031'(_Config) ->
   Qry = "fn:deep-equal( fn:innermost( //text() ),
                           //text() )",
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost')),
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
'fn-innermost-032'(_Config) ->
   Qry = "fn:innermost( //* )",
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_count(Res, "14") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-innermost-033'(_Config) ->
   Qry = "fn:innermost( //* ) ! local-name(.)",
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"('empty-level-0',   'non-empty-level-0',
                         'empty-level-00',  'non-empty-level-00',
                         'empty-level-000', 'non-empty-level-000',
                         'empty-level-01',  'non-empty-level-01',
                         'empty-level-010', 'non-empty-level-010',
                         'empty-level-02',  'non-empty-level-02',
                         'empty-level-020', 'non-empty-level-020')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-innermost-034'(_Config) ->
   Qry = "fn:deep-equal( fn:innermost( //* ), 
                           let $nodes := //*
                           return $nodes except $nodes/ancestor::node() )",
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost')),
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
'fn-innermost-035'(_Config) ->
   Qry = "fn:innermost( //node() )",
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_count(Res, "35") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-innermost-036'(_Config) ->
   Qry = "fn:deep-equal( fn:innermost( //node() ), 
                           let $nodes := //node()
                           return $nodes except $nodes/ancestor::node() )",
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost')),
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
'fn-innermost-037'(_Config) ->
   Qry = "fn:innermost( /root/node() )",
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_count(Res, "8") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-innermost-038'(_Config) ->
   Qry = "fn:deep-equal( fn:innermost( /root/node() ), 
                           let $nodes := /root/node()
                           return $nodes except $nodes/ancestor::node() )",
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost')),
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
'fn-innermost-039'(_Config) ->
   Qry = "fn:innermost( /root/descendant::node() )",
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_count(Res, "35") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-innermost-040'(_Config) ->
   Qry = "fn:deep-equal( fn:innermost( /root/descendant::node() ), 
                           let $nodes := /root/descendant::node()
                           return $nodes except $nodes/ancestor::node() )",
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost')),
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
'fn-innermost-041'(_Config) ->
   Qry = "fn:innermost( /root/level[1]/level[1]/ancestor::node() )",
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-innermost-042'(_Config) ->
   Qry = "fn:deep-equal( fn:innermost( /root/level[1]/level[1]/ancestor::node() ), 
                           let $nodes := /root/level[1]/level[1]/ancestor::node()
                           return $nodes except $nodes/ancestor::node() )",
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost')),
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
'fn-innermost-043'(_Config) ->
   Qry = "fn:innermost( /root/level[1]/level[last()]/preceding-sibling::node() )",
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_count(Res, "5") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-innermost-044'(_Config) ->
   Qry = "fn:deep-equal( fn:innermost( /root/level[1]/level[last()]/preceding-sibling::node() ), 
                           let $nodes := /root/level[1]/level[last()]/preceding-sibling::node()
                           return $nodes except $nodes/ancestor::node() )",
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost')),
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
'fn-innermost-045'(_Config) ->
   Qry = "fn:innermost( /root/level[1]/level[last()]/preceding::node() )",
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_count(Res, "10") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-innermost-046'(_Config) ->
   Qry = "fn:deep-equal( fn:innermost( /root/level[1]/level[last()]/preceding::node() ), 
                           let $nodes := /root/level[1]/level[last()]/preceding::node()
                           return $nodes except $nodes/ancestor::node() )",
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost')),
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
'fn-innermost-047'(_Config) ->
   Qry = "fn:innermost( /root/level[1]/following-sibling::node() )",
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_count(Res, "2") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-innermost-048'(_Config) ->
   Qry = "fn:deep-equal( fn:innermost( /root/level[1]/following-sibling::node() ), 
                           let $nodes := /root/level[1]/following-sibling::node()
                           return $nodes except $nodes/ancestor::node() )",
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost')),
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
'fn-innermost-049'(_Config) ->
   Qry = "fn:innermost( /root/level[1]/level[1]/following::node() )",
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_count(Res, "20") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-innermost-050'(_Config) ->
   Qry = "fn:deep-equal( fn:innermost( /root/level[1]/level[1]/following::node() ), 
                           let $nodes := /root/level[1]/level[1]/following::node()
                           return $nodes except $nodes/ancestor::node() )",
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost')),
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
'fn-innermost-051'(_Config) ->
   Qry = "fn:innermost( /root/node()/.. )",
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-innermost-052'(_Config) ->
   Qry = "fn:deep-equal( fn:innermost( /root/node()/.. ), 
                           let $nodes := /root/node()/..
                           return $nodes except $nodes/ancestor::node() )",
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost')),
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
'fn-innermost-053'(_Config) ->
   Qry = "fn:innermost( ($doc1//node(), $doc2//node()) )",
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_count(Res, "26") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-innermost-054'(_Config) ->
   Qry = "fn:deep-equal( fn:innermost( ($doc1//node(), $doc2//node()) ),
                           let $nodes := ($doc1//node(), $doc2//node())
                           return $nodes except $nodes/ancestor::node() )",
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost')),
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
'fn-innermost-055'(_Config) ->
   Qry = "let $in := for $x in //* order by local-name($x) return $x
            return deep-equal(fn:innermost($in)/local-name(), fn:innermost(//*)/local-name())",
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost')),
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
'fn-innermost-056'(_Config) ->
   Qry = "let $in := for $x in //* order by local-name($x) return $x
            return deep-equal(fn:innermost(($in, $in))/local-name(), fn:innermost(//*)/local-name())",
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost')),
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
'fn-innermost-057'(_Config) ->
   Qry = "innermost(//rubbish)",
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-innermost-058'(_Config) ->
   Qry = "innermost(//*) except //*",
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
