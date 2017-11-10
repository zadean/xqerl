-module('prod_VarDecl_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['VarDecl001'/1]).
-export(['VarDecl002'/1]).
-export(['VarDecl003'/1]).
-export(['VarDecl004'/1]).
-export(['VarDecl005'/1]).
-export(['VarDecl006'/1]).
-export(['VarDecl007'/1]).
-export(['VarDecl008'/1]).
-export(['VarDecl009'/1]).
-export(['VarDecl010'/1]).
-export(['VarDecl011'/1]).
-export(['VarDecl012'/1]).
-export(['VarDecl013'/1]).
-export(['VarDecl014'/1]).
-export(['VarDecl015'/1]).
-export(['VarDecl016'/1]).
-export(['VarDecl017'/1]).
-export(['VarDecl018'/1]).
-export(['VarDecl019'/1]).
-export(['VarDecl020'/1]).
-export(['VarDecl021'/1]).
-export(['VarDecl022'/1]).
-export(['VarDecl023'/1]).
-export(['VarDecl024'/1]).
-export(['VarDecl025'/1]).
-export(['VarDecl026'/1]).
-export(['VarDecl027'/1]).
-export(['VarDecl028'/1]).
-export(['VarDecl029'/1]).
-export(['VarDecl030'/1]).
-export(['VarDecl031'/1]).
-export(['VarDecl032'/1]).
-export(['VarDecl033'/1]).
-export(['VarDecl034'/1]).
-export(['VarDecl035'/1]).
-export(['VarDecl036'/1]).
-export(['VarDecl037'/1]).
-export(['VarDecl038'/1]).
-export(['VarDecl039'/1]).
-export(['VarDecl040'/1]).
-export(['VarDecl041'/1]).
-export(['VarDecl042'/1]).
-export(['VarDecl043'/1]).
-export(['VarDecl044'/1]).
-export(['VarDecl045'/1]).
-export(['VarDecl046'/1]).
-export(['VarDecl047'/1]).
-export(['VarDecl048'/1]).
-export(['VarDecl049'/1]).
-export(['VarDecl050'/1]).
-export(['VarDecl051'/1]).
-export(['VarDecl052'/1]).
-export(['VarDecl053'/1]).
-export(['VarDecl054'/1]).
-export(['VarDecl055'/1]).
-export(['VarDecl056'/1]).
-export(['VarDecl057'/1]).
-export(['VarDecl058'/1]).
-export(['VarDecl059'/1]).
-export(['VarDecl060'/1]).
-export(['VarDecl061'/1]).
-export(['VarDecl062'/1]).
-export(['VarDecl063'/1]).
-export(['VarDecl064'/1]).
-export(['vardeclerr'/1]).
-export(['vardeclerr-1'/1]).
-export(['internalvar-2'/1]).
-export(['K2-InternalVariablesWithout-1'/1]).
-export(['K2-InternalVariablesWithout-1a'/1]).
-export(['K2-InternalVariablesWithout-2'/1]).
-export(['K2-InternalVariablesWithout-2a'/1]).
-export(['K2-InternalVariablesWithout-3'/1]).
-export(['K2-InternalVariablesWithout-3a'/1]).
-export(['K2-InternalVariablesWithout-4'/1]).
-export(['K2-InternalVariablesWithout-4a'/1]).
-export(['K2-InternalVariablesWithout-5'/1]).
-export(['K2-InternalVariablesWithout-5a'/1]).
-export(['K2-InternalVariablesWithout-6'/1]).
-export(['K2-InternalVariablesWithout-6a'/1]).
-export(['K2-InternalVariablesWithout-7'/1]).
-export(['K2-InternalVariablesWithout-7a'/1]).
-export(['K2-InternalVariablesWithout-8'/1]).
-export(['K2-InternalVariablesWithout-8a'/1]).
-export(['K2-InternalVariablesWithout-9'/1]).
-export(['K2-InternalVariablesWithout-9a'/1]).
-export(['K2-InternalVariablesWithout-10'/1]).
-export(['K2-InternalVariablesWithout-11'/1]).
-export(['K2-InternalVariablesWithout-12'/1]).
-export(['K2-InternalVariablesWithout-13'/1]).
-export(['K2-InternalVariablesWithout-14'/1]).
-export(['K2-InternalVariablesWithout-15'/1]).
-export(['vardeclwithtype-1'/1]).
-export(['vardeclwithtype-2'/1]).
-export(['vardeclwithtype-3'/1]).
-export(['vardeclwithtype-4'/1]).
-export(['vardeclwithtype-5'/1]).
-export(['vardeclwithtype-6'/1]).
-export(['vardeclwithtype-7'/1]).
-export(['vardeclwithtype-8'/1]).
-export(['vardeclwithtype-9'/1]).
-export(['vardeclwithtype-10'/1]).
-export(['vardeclwithtype-11'/1]).
-export(['vardeclwithtype-12'/1]).
-export(['vardeclwithtype-13'/1]).
-export(['vardeclwithtype-14'/1]).
-export(['vardeclwithtype-15a'/1]).
-export(['vardeclwithtype-15b'/1]).
-export(['vardeclwithtype-16'/1]).
-export(['vardeclwithtype-17'/1]).
-export(['vardeclwithtype-18'/1]).
-export(['vardeclwithtype-19'/1]).
-export(['vardeclwithtype-20'/1]).
-export(['vardeclwithtype-21'/1]).
-export(['vardeclwithtype-22'/1]).
-export(['internalvar-1'/1]).
-export(['K-InternalVariablesWith-1'/1]).
-export(['K-InternalVariablesWith-2'/1]).
-export(['K-InternalVariablesWith-3'/1]).
-export(['K-InternalVariablesWith-4'/1]).
-export(['K-InternalVariablesWith-5'/1]).
-export(['K-InternalVariablesWith-6a'/1]).
-export(['K-InternalVariablesWith-6b'/1]).
-export(['K-InternalVariablesWith-7'/1]).
-export(['K-InternalVariablesWith-8'/1]).
-export(['K-InternalVariablesWith-9a'/1]).
-export(['K-InternalVariablesWith-9b'/1]).
-export(['K-InternalVariablesWith-10'/1]).
-export(['K-InternalVariablesWith-11'/1]).
-export(['K-InternalVariablesWith-12'/1]).
-export(['K-InternalVariablesWith-13'/1]).
-export(['K-InternalVariablesWith-14'/1]).
-export(['K-InternalVariablesWith-15a'/1]).
-export(['K-InternalVariablesWith-15b'/1]).
-export(['K-InternalVariablesWith-16'/1]).
-export(['K-InternalVariablesWith-16a'/1]).
-export(['K-InternalVariablesWith-17'/1]).
-export(['K-InternalVariablesWith-17a'/1]).
-export(['K-InternalVariablesWith-18'/1]).
-export(['K-InternalVariablesWith-18a'/1]).
-export(['K-InternalVariablesWith-19'/1]).
-export(['K-InternalVariablesWith-19a'/1]).
-export(['K-InternalVariablesWith-20'/1]).
-export(['K-InternalVariablesWith-20a'/1]).
-export(['K-InternalVariablesWith-21'/1]).
-export(['K2-InternalVariablesWith-1'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'VarDecl001',
   'VarDecl002',
   'VarDecl003',
   'VarDecl004',
   'VarDecl005',
   'VarDecl006',
   'VarDecl007',
   'VarDecl008',
   'VarDecl009',
   'VarDecl010',
   'VarDecl011',
   'VarDecl012',
   'VarDecl013',
   'VarDecl014',
   'VarDecl015',
   'VarDecl016',
   'VarDecl017',
   'VarDecl018',
   'VarDecl019',
   'VarDecl020',
   'VarDecl021',
   'VarDecl022',
   'VarDecl023',
   'VarDecl024',
   'VarDecl025',
   'VarDecl026',
   'VarDecl027',
   'VarDecl028',
   'VarDecl029',
   'VarDecl030',
   'VarDecl031',
   'VarDecl032',
   'VarDecl033',
   'VarDecl034',
   'VarDecl035',
   'VarDecl036',
   'VarDecl037',
   'VarDecl038',
   'VarDecl039',
   'VarDecl040',
   'VarDecl041',
   'VarDecl042',
   'VarDecl043',
   'VarDecl044',
   'VarDecl045',
   'VarDecl046',
   'VarDecl047',
   'VarDecl048',
   'VarDecl049',
   'VarDecl050',
   'VarDecl051',
   'VarDecl052',
   'VarDecl053',
   'VarDecl054',
   'VarDecl055',
   'VarDecl056',
   'VarDecl057',
   'VarDecl058',
   'VarDecl059',
   'VarDecl060',
   'VarDecl061',
   'VarDecl062',
   'VarDecl063',
   'VarDecl064',
   'vardeclerr',
   'vardeclerr-1',
   'internalvar-2',
   'K2-InternalVariablesWithout-1',
   'K2-InternalVariablesWithout-1a',
   'K2-InternalVariablesWithout-2',
   'K2-InternalVariablesWithout-2a',
   'K2-InternalVariablesWithout-3',
   'K2-InternalVariablesWithout-3a',
   'K2-InternalVariablesWithout-4',
   'K2-InternalVariablesWithout-4a',
   'K2-InternalVariablesWithout-5',
   'K2-InternalVariablesWithout-5a',
   'K2-InternalVariablesWithout-6',
   'K2-InternalVariablesWithout-6a',
   'K2-InternalVariablesWithout-7',
   'K2-InternalVariablesWithout-7a',
   'K2-InternalVariablesWithout-8',
   'K2-InternalVariablesWithout-8a',
   'K2-InternalVariablesWithout-9',
   'K2-InternalVariablesWithout-9a',
   'K2-InternalVariablesWithout-10',
   'K2-InternalVariablesWithout-11',
   'K2-InternalVariablesWithout-12',
   'K2-InternalVariablesWithout-13',
   'K2-InternalVariablesWithout-14',
   'K2-InternalVariablesWithout-15',
   'vardeclwithtype-1',
   'vardeclwithtype-2',
   'vardeclwithtype-3',
   'vardeclwithtype-4',
   'vardeclwithtype-5',
   'vardeclwithtype-6',
   'vardeclwithtype-7',
   'vardeclwithtype-8',
   'vardeclwithtype-9',
   'vardeclwithtype-10',
   'vardeclwithtype-11',
   'vardeclwithtype-12',
   'vardeclwithtype-13',
   'vardeclwithtype-14',
   'vardeclwithtype-15a',
   'vardeclwithtype-15b',
   'vardeclwithtype-16',
   'vardeclwithtype-17',
   'vardeclwithtype-18',
   'vardeclwithtype-19',
   'vardeclwithtype-20',
   'vardeclwithtype-21',
   'vardeclwithtype-22',
   'internalvar-1',
   'K-InternalVariablesWith-1',
   'K-InternalVariablesWith-2',
   'K-InternalVariablesWith-3',
   'K-InternalVariablesWith-4',
   'K-InternalVariablesWith-5',
   'K-InternalVariablesWith-6a',
   'K-InternalVariablesWith-6b',
   'K-InternalVariablesWith-7',
   'K-InternalVariablesWith-8',
   'K-InternalVariablesWith-9a',
   'K-InternalVariablesWith-9b',
   'K-InternalVariablesWith-10',
   'K-InternalVariablesWith-11',
   'K-InternalVariablesWith-12',
   'K-InternalVariablesWith-13',
   'K-InternalVariablesWith-14',
   'K-InternalVariablesWith-15a',
   'K-InternalVariablesWith-15b',
   'K-InternalVariablesWith-16',
   'K-InternalVariablesWith-16a',
   'K-InternalVariablesWith-17',
   'K-InternalVariablesWith-17a',
   'K-InternalVariablesWith-18',
   'K-InternalVariablesWith-18a',
   'K-InternalVariablesWith-19',
   'K-InternalVariablesWith-19a',
   'K-InternalVariablesWith-20',
   'K-InternalVariablesWith-20a',
   'K-InternalVariablesWith-21',
   'K2-InternalVariablesWith-1'].
environment('empty') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('atomic') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{resources, []},
{modules, []}
];
environment('atomic-xq') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-mod') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/works-mod.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/works.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('staff') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/staff.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-and-staff') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/works.xml","$works",""},
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
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/auction.xml",".",""}]},
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
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/QName-source.xml",".",""}]},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/QName-schema.xsd","http://www.example.com/QNameXSD"}]},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.example.com/QNameXSD",""}]},
{resources, []},
{modules, []}
];
environment('math') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/math","math"}]},
{resources, []},
{modules, []}
];
environment('array') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"}]},
{resources, []},
{modules, []}
];
environment('map') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('array-and-map') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"},
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('bib') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/bib.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/prod/VarDecl.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('bib2') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/op/union/bib2.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/prod/VarDecl.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'VarDecl001'(_Config) ->
   Qry = "declare variable $x := \"\" ; $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'VarDecl002'(_Config) ->
   Qry = "declare variable $x := '' ; $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'VarDecl003'(_Config) ->
   Qry = "declare variable $x := 'a string' ; $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "a string") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'VarDecl004'(_Config) ->
   Qry = "declare variable $x := \"a string\" ; $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "a string") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'VarDecl005'(_Config) ->
   Qry = "declare variable $x := \"This is a string, isn't it?\" ; $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "This is a string, isn't it?") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'VarDecl006'(_Config) ->
   Qry = "declare variable $x := 'This is a \"String\"' ; $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "This is a \"String\"") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'VarDecl007'(_Config) ->
   Qry = "declare variable $x := \"a \"\" or a ' delimits a string literal\" ; $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "a \" or a ' delimits a string literal") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'VarDecl008'(_Config) ->
   Qry = "declare variable $x := 'a \" or a '' delimits a string literal' ; $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "a \" or a ' delimits a string literal") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'VarDecl009'(_Config) ->
   Qry = "declare variable $x := '&lt;bold&gt;A sample element.&lt;/bold&gt;' ; $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "<bold>A sample element.</bold>") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'VarDecl010'(_Config) ->
   Qry = "declare variable $x := 0 ; $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'VarDecl011'(_Config) ->
   Qry = "declare variable $x := 1 ; $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'VarDecl012'(_Config) ->
   Qry = "declare variable $x := -1 ; $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'VarDecl013'(_Config) ->
   Qry = "declare variable $x := +1 ; $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'VarDecl014'(_Config) ->
   Qry = "declare variable $x := 1.23 ; $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1.23") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'VarDecl015'(_Config) ->
   Qry = "declare variable $x := -1.23 ; $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-1.23") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'VarDecl016'(_Config) ->
   Qry = "declare variable $x := 1.2e5 ; $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"120000") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'VarDecl017'(_Config) ->
   Qry = "declare variable $x := -1.2E5 ; $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-120000") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'VarDecl018'(_Config) ->
   Qry = "declare variable $x := 0.0E0 ; $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'VarDecl019'(_Config) ->
   Qry = "declare variable $x := 1e-5 ; $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0.00001") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'VarDecl020'(_Config) ->
   Qry = "declare variable $x := 9.999999999999999; $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "9.999999999999999") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'VarDecl021'(_Config) ->
   Qry = "declare variable $x := -10000000 ; $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-10000000") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'VarDecl022'(_Config) ->
   Qry = "declare variable $x := 1 to 10 ; $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 2 3 4 5 6 7 8 9 10") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'VarDecl023'(_Config) ->
   Qry = "declare variable $x := xs:double('NaN'); $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "NaN") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'VarDecl024'(_Config) ->
   Qry = "declare variable $x := xs:double('INF'); $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "INF") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'VarDecl025'(_Config) ->
   Qry = "declare variable $x := xs:double('-INF'); $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-INF") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'VarDecl026'(_Config) ->
   Qry = "declare variable $x := fn:false() ; $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'VarDecl027'(_Config) ->
   Qry = "declare variable $x := false(); $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'VarDecl028'(_Config) ->
   Qry = "declare variable $x := fn:true() ; $x",
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
'VarDecl029'(_Config) ->
   Qry = "declare variable $x := true() ; $x",
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
'VarDecl030'(_Config) ->
   Qry = "declare variable $x := true(); $x",
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
'VarDecl031'(_Config) ->
   Qry = "declare variable $x := 2+2 ; $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"4") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'VarDecl032'(_Config) ->
   Qry = "declare variable $x := 2*2 ; $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"4") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'VarDecl033'(_Config) ->
   Qry = "declare variable $x := 3-2 ; $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'VarDecl034'(_Config) ->
   Qry = "declare variable $x := 3 div 2 ; $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1.5") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'VarDecl035'(_Config) ->
   Qry = "declare variable $x := 3 mod 2 ; $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'VarDecl036'(_Config) ->
   Qry = "declare variable $x := 3 idiv 2 ; $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'VarDecl037'(_Config) ->
   Qry = "declare variable $x := -1.7976931348623157E308 ; $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-1.7976931348623157E308") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'VarDecl038'(_Config) ->
   Qry = "declare variable $x := xs:double(\"-1.7976931348623157E308\") ; $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-1.7976931348623157E308") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'VarDecl039'(_Config) ->
   Qry = "declare variable $x := -999999999999999999 ; $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'VarDecl040'(_Config) ->
   Qry = "declare variable $x := xs:decimal(\"-999999999999999999\") ; $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'VarDecl041'(_Config) ->
   Qry = "declare variable $x := 999999999999999999 ; $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'VarDecl042'(_Config) ->
   Qry = "declare variable $x := xs:decimal(\"999999999999999999\") ; $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'VarDecl043'(_Config) ->
   Qry = "declare variable $x := -3.4028235E38 ; $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-3.4028235E38") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'VarDecl044'(_Config) ->
   Qry = "declare variable $x := xs:float(\"-3.4028235E38\") ; $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-3.4028235E38") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'VarDecl045'(_Config) ->
   Qry = "declare variable $x := xs:date(\"1970-01-01Z\") ; $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1970-01-01Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'VarDecl046'(_Config) ->
   Qry = "declare variable $x := xs:date(\"1970-01-01Z\") + xs:dayTimeDuration(\"P31DT23H59M59S\") ; $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1970-02-01Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'VarDecl047'(_Config) ->
   Qry = "declare variable $x := xs:time(\"08:03:35Z\") ; $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "08:03:35Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'VarDecl048'(_Config) ->
   Qry = "declare variable $x := xs:time(\"08:03:35Z\") + xs:dayTimeDuration(\"P0DT0H0M0S\") ; $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "08:03:35Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'VarDecl049'(_Config) ->
   Qry = "declare variable $x := xs:dateTime(\"2030-12-31T23:59:59Z\") ; $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2030-12-31T23:59:59Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'VarDecl050'(_Config) ->
   Qry = "declare variable $x := (1,2,3) ; $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 2 3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'VarDecl051'(_Config) ->
   Qry = "declare variable $x := (xs:string(\"a\") , (), \"xyz\") ; $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "a xyz") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'VarDecl052'(_Config) ->
   Qry = "declare variable $x := (xs:string(\"a\") , xs:anyURI(\"www.example.com\")) ; $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "a www.example.com") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'VarDecl053'(_Config) ->
   Qry = "declare variable $x := (xs:float(\"INF\") , xs:double(\"NaN\")) ; $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "INF NaN") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'VarDecl054'(_Config) ->
   Qry = "declare variable $x := (xs:boolean(\"true\") , xs:boolean(\"0\"), xs:integer(\"0\")) ; $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "true false 0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'VarDecl055'(_Config) ->
   Qry = "declare variable $x := (xs:date(\"1993-03-31\") , xs:boolean(\"true\"), xs:string(\"abc\")) ; $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1993-03-31 true abc") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'VarDecl056'(_Config) ->
   Qry = "declare variable $x := (xs:time(\"12:30:00\") , xs:string(\" \") , xs:decimal(\"2.000000000000002\")) ; $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "12:30:00   2.000000000000002") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'VarDecl057'(_Config) ->
   Qry = "declare variable $x := ((1+1), (2-2)) ; $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2 0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'VarDecl058'(_Config) ->
   Qry = "declare variable $x := ((1,2,2),(1,2,3),(123,\"\"),(),(\"\")) ; $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 2 2 1 2 3 123  ") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'VarDecl059'(_Config) ->
   Qry = "declare variable $x := (//book/price, (), (1)) ; document{$x}",
   Env = xqerl_test:handle_environment(environment('bib')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<price>65.95</price><price>65.95</price><price>39.95</price><price>129.95</price>1") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'VarDecl060'(_Config) ->
   Qry = "declare variable $x := //Price/text() ; $x",
   Env = xqerl_test:handle_environment(environment('bib')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'VarDecl061'(_Config) ->
   Qry = "declare variable $x := /comment() ; $x",
   Env = xqerl_test:handle_environment(environment('bib2')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<!-- this file is a copy of bib.xml; just adds a few comments and PI nodes for testing --><!-- Comment 1 --><!-- Comment 2 -->") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'VarDecl062'(_Config) ->
   Qry = "declare variable $x := /processing-instruction() ; $x",
   Env = xqerl_test:handle_environment(environment('bib2')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<?PI1 Processing Instruction 1?><?PI2 Processing Instruction 2?>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'VarDecl063'(_Config) ->
   Qry = "
        declare variable $x := $y + 3;
        declare variable $y := 17;
        $x + 5
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"25") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'VarDecl064'(_Config) ->
   Qry = "
        declare function local:f1() {$a};
        declare function local:f2() {$a};
        declare variable $a := 19;      
        local:f1() + local:f2()
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"38") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'vardeclerr'(_Config) ->
   {skip,"XQ10"}.
'vardeclerr-1'(_Config) ->
   Qry = "
      declare namespace foo = \"http://www..oracle.com/xquery/test\"; 
      declare variable $var1 as xs:integer := foo:price(xs:integer(2)); 
      declare function foo:price ($b as xs:integer) as xs:integer { $var1 + 1 }; 
      $var1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0054") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'internalvar-2'(_Config) ->
   Qry = "(::)declare(::)variable(::)$var(::):=(::)1(::);(::) 1(::)eq(::)1",
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
'K2-InternalVariablesWithout-1'(_Config) ->
   {skip,"XQ10"}.
'K2-InternalVariablesWithout-1a'(_Config) ->
   Qry = "
        declare variable $local:myVar := local:myFunction();
        declare function local:myFunction() {
            if (current-date() lt xs:date('1990-01-01')) then local:myFunction() else (), 1, $local:myVar
                                             };
        $local:myVar
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0054") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-InternalVariablesWithout-2'(_Config) ->
   {skip,"XQ10"}.
'K2-InternalVariablesWithout-2a'(_Config) ->
   Qry = "
        declare variable $local:myVar := local:myFunction();
        declare function local:myFunction() { $local:myVar, 1, local:myFunction() };
        $local:myVar
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0054") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-InternalVariablesWithout-3'(_Config) ->
   {skip,"XQ10"}.
'K2-InternalVariablesWithout-3a'(_Config) ->
   Qry = "declare variable $local:myVar := local:myFunction(); declare function local:myFunction() { $local:myVar, 1, local:myFunction() }; $local:myVar",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0054") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-InternalVariablesWithout-4'(_Config) ->
   {skip,"XQ10"}.
'K2-InternalVariablesWithout-4a'(_Config) ->
   Qry = "declare variable $local:myVar := local:myFunction(); declare function local:myFunction() { $local:myVar, 1, local:myFunction() }; $local:myVar",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0054") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-InternalVariablesWithout-5'(_Config) ->
   {skip,"XQ10"}.
'K2-InternalVariablesWithout-5a'(_Config) ->
   Qry = "declare variable $local:myVar := local:myFunction(); declare function local:myFunction2() { $local:myVar, 1, local:myFunction() }; declare function local:myFunction() { local:myFunction2() }; $local:myVar",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0054") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-InternalVariablesWithout-6'(_Config) ->
   {skip,"XQ10"}.
'K2-InternalVariablesWithout-6a'(_Config) ->
   Qry = "declare variable $local:myVar := local:myFunction();

         declare function local:myFunction2() {
            if (current-date() lt xs:date('1990-01-01')) then local:myFunction() else (), $local:myVar };

         declare function local:myFunction() {
         local:myFunction2() };

         local:myFunction()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0054") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-InternalVariablesWithout-7'(_Config) ->
   {skip,"XQ10"}.
'K2-InternalVariablesWithout-7a'(_Config) ->
   Qry = "declare variable $local:myVar := local:myFunction();
         declare function local:myFunction2() {
         if (current-date() lt xs:date('1990-01-01')) then local:myFunction() else (), $local:myVar };

         declare function local:myFunction4() {
            local:myFunction2() };

         declare function local:myFunction3() {
            local:myFunction4() };

         declare function local:myFunction() {
            local:myFunction3() };

         local:myFunction()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0054") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-InternalVariablesWithout-8'(_Config) ->
   {skip,"XQ10"}.
'K2-InternalVariablesWithout-8a'(_Config) ->
   Qry = "declare variable $local:myVar := local:myFunction();

         declare function local:myFunction2() { local:myFunction4() };

         declare function local:myFunction4() {
         if (current-date() lt xs:date('1990-01-01')) then local:myFunction2() else (), $local:myVar };

         declare function local:myFunction3() { local:myFunction4() };

         declare function local:myFunction() { local:myFunction3() };

         local:myFunction()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0054") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-InternalVariablesWithout-9'(_Config) ->
   {skip,"XQ10"}.
'K2-InternalVariablesWithout-9a'(_Config) ->
   Qry = "declare variable $local:myVar := local:myFunc(3); declare function local:myFunc($arg) { local:myFunc($local:myVar) }; $local:myVar",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0054") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-InternalVariablesWithout-10'(_Config) ->
   Qry = "declare variable $local:myVar := local:myFunc(3); declare function local:myFunc($local:myVar) { $local:myVar }; local:myFunc(6)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"6") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-InternalVariablesWithout-11'(_Config) ->
   Qry = "declare variable $local:myVar := local:thisFunctionDoesNotExist(); 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0017") of 
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
'K2-InternalVariablesWithout-12'(_Config) ->
   Qry = "declare variable $local:myVar := local:thisFunctionDoesNotExist(); $local:myVar",
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
'K2-InternalVariablesWithout-13'(_Config) ->
   Qry = "declare variable $local:var1 := 1; declare variable $local:var2 := 2; declare variable $local:var3 := 3; declare variable $local:var4 := 4; declare variable $local:var5 := 5; declare variable $local:var6 := 6; declare variable $local:var7 := 7; declare variable $local:var8 := 8; declare variable $local:var9 := 9; declare variable $local:var10 := 10; declare variable $local:var11 := 11; declare variable $local:var12 := 12; declare variable $local:var13 := 13; declare variable $local:var14 := 14; declare variable $local:var15 := 15; declare variable $local:var16 := 16; declare variable $local:var17 := 17; declare variable $local:var18 := 18; declare variable $local:var19 := 19; declare variable $local:var20 := 20; deep-equal((1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20), ($local:var1, $local:var2, $local:var3, $local:var4, $local:var5, $local:var6, $local:var7, $local:var8, $local:var9, $local:var10, $local:var11, $local:var12, $local:var13, $local:var14, $local:var15, $local:var16, $local:var17, $local:var18, $local:var19, $local:var20))",
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
'K2-InternalVariablesWithout-14'(_Config) ->
   Qry = "declare variable $myVar := <e>{nametest}</e>; <e/>/$myVar",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-InternalVariablesWithout-15'(_Config) ->
   Qry = "declare variable $var := 1 := 2; 3",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'vardeclwithtype-1'(_Config) ->
   Qry = "declare variable $var as xs:string := \"abc\"; $var",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "abc") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'vardeclwithtype-2'(_Config) ->
   Qry = "declare variable $var as xs:integer := 100; $var",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"100") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'vardeclwithtype-3'(_Config) ->
   Qry = "declare variable $var as xs:decimal := 100; $var",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"100") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'vardeclwithtype-4'(_Config) ->
   Qry = "declare variable $var as xs:boolean := fn:true(); $var",
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
'vardeclwithtype-5'(_Config) ->
   Qry = "declare variable $var as xs:boolean := fn:false(); $var",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'vardeclwithtype-6'(_Config) ->
   Qry = "declare variable $var as xs:float := xs:float(12.5E10); $var",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1.25E11") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'vardeclwithtype-7'(_Config) ->
   Qry = "declare variable $var as xs:double := xs:double(1267.43233E12); $var",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1.26743233E15") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'vardeclwithtype-8'(_Config) ->
   Qry = "declare variable $var as xs:anyURI := xs:anyURI(\"http://example.com\"); $var",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://example.com") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'vardeclwithtype-9'(_Config) ->
   Qry = "declare variable $var as xs:dateTime := xs:dateTime(\"1999-11-28T09:00:00Z\"); $var",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1999-11-28T09:00:00Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'vardeclwithtype-10'(_Config) ->
   Qry = "declare variable $var as xs:time := xs:time(\"11:12:00Z\"); $var",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "11:12:00Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'vardeclwithtype-11'(_Config) ->
   Qry = "declare variable $var as xs:date := xs:date(\"1999-11-28Z\"); $var",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1999-11-28Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'vardeclwithtype-12'(_Config) ->
   Qry = "
      	declare variable $var as xs:date := xs:date(\"1999-11-28Z\"); 
      	declare variable $var as xs:date := xs:date(\"1999-11-28Z\"); 
      	$var
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0049") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'vardeclwithtype-13'(_Config) ->
   Qry = "declare variable $var as xs:date := fn:true() and fn:true(); $var",
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
'vardeclwithtype-14'(_Config) ->
   Qry = "declare variable $x as xs:integer := 10; declare variable $var as xs:integer := $x +1; $var",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"11") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'vardeclwithtype-15a'(_Config) ->
   {skip,"XQ10"}.
'vardeclwithtype-15b'(_Config) ->
   Qry = "
      declare variable $var as xs:integer := $e +1; 
      declare variable $e as xs:integer := 10;  
      $var",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"11") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'vardeclwithtype-16'(_Config) ->
   Qry = "
      	declare namespace p1 = \"http://www.example.com\"; 
      	declare variable $p1:var as xs:integer := 10; 
      	$p1:var
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"10") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'vardeclwithtype-17'(_Config) ->
   Qry = "
      	declare namespace p1 = \"http://www.example.com\"; 
      	declare namespace p2 = \"http://www.example.com/examples\"; 
      	declare variable $p1:var as xs:integer := 10; 
      	declare variable $p2:var as xs:integer := 20; 
      	$p2:var
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"20") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'vardeclwithtype-18'(_Config) ->
   Qry = "
      	declare namespace p1 = \"http://www.example.com\"; 
      	declare namespace p2 = \"http://www.example.com\"; 
      	declare variable $p1:var as xs:integer := 10; 
      	declare variable $p2:var as xs:integer := 20; 
      	$p2:var
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0049") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'vardeclwithtype-19'(_Config) ->
   Qry = "declare variable $var as xs:integer := fn:count((10,2)); $var",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'vardeclwithtype-20'(_Config) ->
   Qry = "declare variable $var as xs:integer := fn:string-length(\"ABC\"); $var",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"3") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'vardeclwithtype-21'(_Config) ->
   Qry = "declare variable $var as xs:boolean := fn:not(fn:true()); $var",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'vardeclwithtype-22'(_Config) ->
   Qry = "declare variable $var as xs:boolean := fn:empty((1,2,3)); $var",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'internalvar-1'(_Config) ->
   Qry = "declare(::)variable(::)$var(::)as(::)item((: :))*(::):=(::)1(::);(::) 1(::)eq(::)1(::)",
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
'K-InternalVariablesWith-1'(_Config) ->
   Qry = "declare(::)variable(::)$local:var(::)as(::)item((: :))* :=3(::);(::)1(::)eq(::)1",
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
'K-InternalVariablesWith-2'(_Config) ->
   Qry = "(::)declare(::)variable(::)$local:var(::):=(::)3;(::)1(::)eq(::)1(::)",
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
'K-InternalVariablesWith-3'(_Config) ->
   Qry = "declare variable $myVar as xs:integer := subsequence((1, 2, \"a string\"), 3, 1); $myVar eq 3",
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
'K-InternalVariablesWith-4'(_Config) ->
   Qry = "declare variable $myVar as xs:gYear := 2006; true()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPTY0004") of 
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
'K-InternalVariablesWith-5'(_Config) ->
   Qry = "declare variable $myVar as xs:gYear := 2006; $myVar",
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
'K-InternalVariablesWith-6a'(_Config) ->
   {skip,"XQ10"}.
'K-InternalVariablesWith-6b'(_Config) ->
   Qry = "declare variable $var1 := $var2; declare variable $var2 := 2; true()",
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
'K-InternalVariablesWith-7'(_Config) ->
   Qry = "declare variable var1 := 1; 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-InternalVariablesWith-8'(_Config) ->
   Qry = "declare variable $var1 = 1; 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-InternalVariablesWith-9a'(_Config) ->
   {skip,"XQ10"}.
'K-InternalVariablesWith-9b'(_Config) ->
   Qry = "declare variable $var1 := $var2; declare variable $var2 := 2; $var1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-InternalVariablesWith-10'(_Config) ->
   Qry = "declare variable $prefix:var1 := 2; declare namespace prefix = \"http://example.com/myNamespace\"; true()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0081") of 
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
'K-InternalVariablesWith-11'(_Config) ->
   Qry = "declare variable $var1 := 2; declare variable $var2 := $var1; $var2 eq 2",
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
'K-InternalVariablesWith-12'(_Config) ->
   Qry = "declare variable $var1 := local:myFunc(); declare function local:myFunc() { 1 }; $var1 eq 1",
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
'K-InternalVariablesWith-13'(_Config) ->
   Qry = "declare variable $var1 as xs:string := local:myFunc(); declare function local:myFunc() as xs:integer { 1 }; $var1 eq 1",
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
'K-InternalVariablesWith-14'(_Config) ->
   Qry = "declare variable $var1 as xs:string := local:myFunc(); declare function local:myFunc() { 1 }; $var1 eq 1",
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
'K-InternalVariablesWith-15a'(_Config) ->
   {skip,"XQ10"}.
'K-InternalVariablesWith-15b'(_Config) ->
   Qry = "declare variable $var1 := $var1; true()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-InternalVariablesWith-16'(_Config) ->
   {skip,"XQ10"}.
'K-InternalVariablesWith-16a'(_Config) ->
   Qry = "
      declare variable $var := local:func1(); 
      declare function local:func1() { local:func2() }; 
      declare function local:func2() { local:func3() }; 
      declare function local:func3() { local:func4() }; 
      declare function local:func4() { $var }; 
      boolean($var)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0054") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-InternalVariablesWith-17'(_Config) ->
   {skip,"XQ10"}.
'K-InternalVariablesWith-17a'(_Config) ->
   Qry = "declare variable $var := local:func1(); declare function local:func1() { local:func2($var) }; declare function local:func2($arg2) { 1 }; true()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0054") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-InternalVariablesWith-18'(_Config) ->
   {skip,"XQ10"}.
'K-InternalVariablesWith-18a'(_Config) ->
   Qry = "declare variable $var := local:func1(); declare function local:func1() { local:func2($var) }; declare function local:func2($arg2) { $arg2 }; $var",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0054") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-InternalVariablesWith-19'(_Config) ->
   {skip,"XQ10"}.
'K-InternalVariablesWith-19a'(_Config) ->
   Qry = "declare variable $var2 := local:func1(); declare variable $var := ($var2 treat as xs:integer) + 1; declare function local:func1() { local:func2() }; declare function local:func2() { local:func3() }; declare function local:func3() { local:func4() }; declare function local:func4() { $var }; boolean($var)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0054") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-InternalVariablesWith-20'(_Config) ->
   {skip,"XQ10"}.
'K-InternalVariablesWith-20a'(_Config) ->
   Qry = "declare variable $var := local:func1(); declare function local:func1() { local:func2() }; declare function local:func2() { local:func3() }; declare variable $var2 := local:func2(); declare function local:func3() { $var2 }; boolean($var)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0054") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-InternalVariablesWith-21'(_Config) ->
   Qry = "declare variable $local:var as item() *:=3; true()",
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
'K2-InternalVariablesWith-1'(_Config) ->
   Qry = "declare variable $var1 as xs:string := 1 treat as item(); $var1",
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
