-module('fn_local_name_from_QName_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['LocalNameFromQNameFunc001'/1]).
-export(['LocalNameFromQNameFunc002'/1]).
-export(['LocalNameFromQNameFunc003'/1]).
-export(['LocalNameFromQNameFunc004'/1]).
-export(['LocalNameFromQNameFunc005'/1]).
-export(['LocalNameFromQNameFunc006'/1]).
-export(['LocalNameFromQNameFunc007'/1]).
-export(['LocalNameFromQNameFunc009'/1]).
-export(['LocalNameFromQNameFunc010'/1]).
-export(['LocalNameFromQNameFunc011'/1]).
-export(['LocalNameFromQNameFunc012'/1]).
-export(['LocalNameFromQNameFunc013'/1]).
-export(['LocalNameFromQNameFunc014'/1]).
-export(['LocalNameFromQNameFunc015'/1]).
-export(['LocalNameFromQNameFunc015a'/1]).
-export(['LocalNameFromQNameFunc016'/1]).
-export(['LocalNameFromQNameFunc017'/1]).
-export(['LocalNameFromQNameFunc018'/1]).
-export(['LocalNameFromQNameFunc019'/1]).
-export(['LocalNameFromQNameFunc020'/1]).
-export(['LocalNameFromQNameFunc021'/1]).
-export(['fn-local-name-from-qname-022'/1]).
-export(['fn-local-name-from-qname-023'/1]).
-export(['fn-local-name-from-qname-024'/1]).
-export(['K-LocalNameFromQNameFunc-1'/1]).
-export(['K-LocalNameFromQNameFunc-2'/1]).
-export(['K-LocalNameFromQNameFunc-3'/1]).
-export(['K-LocalNameFromQNameFunc-4'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'LocalNameFromQNameFunc001',
   'LocalNameFromQNameFunc002',
   'LocalNameFromQNameFunc003',
   'LocalNameFromQNameFunc004',
   'LocalNameFromQNameFunc005',
   'LocalNameFromQNameFunc006',
   'LocalNameFromQNameFunc007',
   'LocalNameFromQNameFunc009',
   'LocalNameFromQNameFunc010',
   'LocalNameFromQNameFunc011',
   'LocalNameFromQNameFunc012',
   'LocalNameFromQNameFunc013',
   'LocalNameFromQNameFunc014',
   'LocalNameFromQNameFunc015',
   'LocalNameFromQNameFunc015a',
   'LocalNameFromQNameFunc016',
   'LocalNameFromQNameFunc017',
   'LocalNameFromQNameFunc018',
   'LocalNameFromQNameFunc019',
   'LocalNameFromQNameFunc020',
   'LocalNameFromQNameFunc021',
   'fn-local-name-from-qname-022',
   'fn-local-name-from-qname-023',
   'fn-local-name-from-qname-024',
   'K-LocalNameFromQNameFunc-1',
   'K-LocalNameFromQNameFunc-2',
   'K-LocalNameFromQNameFunc-3',
   'K-LocalNameFromQNameFunc-4'].
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
environment('fsx') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/prod/ForClause/fsx.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'LocalNameFromQNameFunc001'(_Config) ->
   {skip,"Validation Environment"}.
'LocalNameFromQNameFunc002'(_Config) ->
   {skip,"Validation Environment"}.
'LocalNameFromQNameFunc003'(_Config) ->
   {skip,"Validation Environment"}.
'LocalNameFromQNameFunc004'(_Config) ->
   {skip,"Validation Environment"}.
'LocalNameFromQNameFunc005'(_Config) ->
   {skip,"Validation Environment"}.
'LocalNameFromQNameFunc006'(_Config) ->
   Qry = "fn:local-name-from-QName(())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'LocalNameFromQNameFunc007'(_Config) ->
   Qry = "fn:local-name-from-QName(((),()))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'LocalNameFromQNameFunc009'(_Config) ->
   Qry = "fn:local-name-from-QName(\"\")",
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
'LocalNameFromQNameFunc010'(_Config) ->
   {skip,"Validation Environment"}.
'LocalNameFromQNameFunc011'(_Config) ->
   Qry = "fn:local-name-from-QName()",
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
'LocalNameFromQNameFunc012'(_Config) ->
   {skip,"Validation Environment"}.
'LocalNameFromQNameFunc013'(_Config) ->
   {skip,"Validation Environment"}.
'LocalNameFromQNameFunc014'(_Config) ->
   {skip,"Validation Environment"}.
'LocalNameFromQNameFunc015'(_Config) ->
   {skip,"XQ10 XP20"}.
'LocalNameFromQNameFunc015a'(_Config) ->
   Qry = "fn:local-name-from-QName((//Folder)[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('fsx')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0117") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'LocalNameFromQNameFunc016'(_Config) ->
   Qry = "fn:local-name-from-QName(xs:integer(\"100\"))",
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
'LocalNameFromQNameFunc017'(_Config) ->
   Qry = "fn:local-name-from-QName(xs:time(\"12:00:00Z\"))",
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
'LocalNameFromQNameFunc018'(_Config) ->
   {skip,"Validation Environment"}.
'LocalNameFromQNameFunc019'(_Config) ->
   {skip,"Validation Environment"}.
'LocalNameFromQNameFunc020'(_Config) ->
   {skip,"Validation Environment"}.
'LocalNameFromQNameFunc021'(_Config) ->
   {skip,"Validation Environment"}.
'fn-local-name-from-qname-022'(_Config) ->
   {skip,"Validation Environment"}.
'fn-local-name-from-qname-023'(_Config) ->
   {skip,"Validation Environment"}.
'fn-local-name-from-qname-024'(_Config) ->
   Qry = "fn:local-name-from-QName(node-name(/*))",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "works") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-LocalNameFromQNameFunc-1'(_Config) ->
   Qry = "local-name-from-QName()",
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
'K-LocalNameFromQNameFunc-2'(_Config) ->
   Qry = "local-name-from-QName(1, 2)",
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
'K-LocalNameFromQNameFunc-3'(_Config) ->
   Qry = "empty(local-name-from-QName( () ))",
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
'K-LocalNameFromQNameFunc-4'(_Config) ->
   Qry = "local-name-from-QName( QName(\"example.com/\", \"pre:lname\")) eq \"lname\"",
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
