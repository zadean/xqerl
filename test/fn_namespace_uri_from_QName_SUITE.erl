-module('fn_namespace_uri_from_QName_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['NamespaceURIFromQNameFunc001'/1]).
-export(['NamespaceURIFromQNameFunc002'/1]).
-export(['NamespaceURIFromQNameFunc003'/1]).
-export(['NamespaceURIFromQNameFunc004'/1]).
-export(['NamespaceURIFromQNameFunc005'/1]).
-export(['NamespaceURIFromQNameFunc006'/1]).
-export(['NamespaceURIFromQNameFunc007'/1]).
-export(['NamespaceURIFromQNameFunc009'/1]).
-export(['NamespaceURIFromQNameFunc010'/1]).
-export(['NamespaceURIFromQNameFunc011'/1]).
-export(['NamespaceURIFromQNameFunc012'/1]).
-export(['NamespaceURIFromQNameFunc013'/1]).
-export(['NamespaceURIFromQNameFunc014'/1]).
-export(['NamespaceURIFromQNameFunc015'/1]).
-export(['NamespaceURIFromQNameFunc015a'/1]).
-export(['NamespaceURIFromQNameFunc016'/1]).
-export(['NamespaceURIFromQNameFunc017'/1]).
-export(['NamespaceURIFromQNameFunc018'/1]).
-export(['NamespaceURIFromQNameFunc019'/1]).
-export(['NamespaceURIFromQNameFunc020'/1]).
-export(['NamespaceURIFromQNameFunc021'/1]).
-export(['K-NamespaceURIFromQNameFunc-1'/1]).
-export(['K-NamespaceURIFromQNameFunc-2'/1]).
-export(['K-NamespaceURIFromQNameFunc-3'/1]).
-export(['K-NamespaceURIFromQNameFunc-4'/1]).
-export(['K-NamespaceURIFromQNameFunc-5'/1]).
-export(['K2-NamespaceURIFromQNameFunc-1'/1]).
-export(['K2-NamespaceURIFromQNameFunc-2'/1]).
-export(['K2-NamespaceURIFromQNameFunc-3'/1]).
-export(['K2-NamespaceURIFromQNameFunc-4'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'NamespaceURIFromQNameFunc001',
   'NamespaceURIFromQNameFunc002',
   'NamespaceURIFromQNameFunc003',
   'NamespaceURIFromQNameFunc004',
   'NamespaceURIFromQNameFunc005',
   'NamespaceURIFromQNameFunc006',
   'NamespaceURIFromQNameFunc007',
   'NamespaceURIFromQNameFunc009',
   'NamespaceURIFromQNameFunc010',
   'NamespaceURIFromQNameFunc011',
   'NamespaceURIFromQNameFunc012',
   'NamespaceURIFromQNameFunc013',
   'NamespaceURIFromQNameFunc014',
   'NamespaceURIFromQNameFunc015',
   'NamespaceURIFromQNameFunc015a',
   'NamespaceURIFromQNameFunc016',
   'NamespaceURIFromQNameFunc017',
   'NamespaceURIFromQNameFunc018',
   'NamespaceURIFromQNameFunc019',
   'NamespaceURIFromQNameFunc020',
   'NamespaceURIFromQNameFunc021',
   'K-NamespaceURIFromQNameFunc-1',
   'K-NamespaceURIFromQNameFunc-2',
   'K-NamespaceURIFromQNameFunc-3',
   'K-NamespaceURIFromQNameFunc-4',
   'K-NamespaceURIFromQNameFunc-5',
   'K2-NamespaceURIFromQNameFunc-1',
   'K2-NamespaceURIFromQNameFunc-2',
   'K2-NamespaceURIFromQNameFunc-3',
   'K2-NamespaceURIFromQNameFunc-4'].
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
];
environment('fsx') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/prod/ForClause/fsx.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/fn/namespace-uri-from-QName.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'NamespaceURIFromQNameFunc001'(_Config) ->
   {skip,"Validation Environment"}.
'NamespaceURIFromQNameFunc002'(_Config) ->
   {skip,"Validation Environment"}.
'NamespaceURIFromQNameFunc003'(_Config) ->
   {skip,"Validation Environment"}.
'NamespaceURIFromQNameFunc004'(_Config) ->
   {skip,"Validation Environment"}.
'NamespaceURIFromQNameFunc005'(_Config) ->
   {skip,"Validation Environment"}.
'NamespaceURIFromQNameFunc006'(_Config) ->
   Qry = "fn:namespace-uri-from-QName(())",
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
'NamespaceURIFromQNameFunc007'(_Config) ->
   Qry = "fn:namespace-uri-from-QName(((),()))",
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
'NamespaceURIFromQNameFunc009'(_Config) ->
   Qry = "fn:namespace-uri-from-QName(\"\")",
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
'NamespaceURIFromQNameFunc010'(_Config) ->
   {skip,"Validation Environment"}.
'NamespaceURIFromQNameFunc011'(_Config) ->
   Qry = "fn:namespace-uri-from-QName()",
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
'NamespaceURIFromQNameFunc012'(_Config) ->
   {skip,"Validation Environment"}.
'NamespaceURIFromQNameFunc013'(_Config) ->
   {skip,"Validation Environment"}.
'NamespaceURIFromQNameFunc014'(_Config) ->
   {skip,"Validation Environment"}.
'NamespaceURIFromQNameFunc015'(_Config) ->
   {skip,"XQ10 XP20"}.
'NamespaceURIFromQNameFunc015a'(_Config) ->
   Qry = "fn:namespace-uri-from-QName((//Folder)[1])",
   Env = xqerl_test:handle_environment(environment('fsx')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0117") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'NamespaceURIFromQNameFunc016'(_Config) ->
   Qry = "fn:namespace-uri-from-QName(xs:integer(\"100\"))",
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
'NamespaceURIFromQNameFunc017'(_Config) ->
   Qry = "fn:namespace-uri-from-QName(xs:time(\"12:00:00Z\"))",
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
'NamespaceURIFromQNameFunc018'(_Config) ->
   {skip,"Validation Environment"}.
'NamespaceURIFromQNameFunc019'(_Config) ->
   {skip,"Validation Environment"}.
'NamespaceURIFromQNameFunc020'(_Config) ->
   {skip,"Validation Environment"}.
'NamespaceURIFromQNameFunc021'(_Config) ->
   {skip,"Validation Environment"}.
'K-NamespaceURIFromQNameFunc-1'(_Config) ->
   Qry = "namespace-uri-from-QName()",
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
'K-NamespaceURIFromQNameFunc-2'(_Config) ->
   Qry = "namespace-uri-from-QName(1, 2)",
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
'K-NamespaceURIFromQNameFunc-3'(_Config) ->
   Qry = "empty(namespace-uri-from-QName( () ))",
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
'K-NamespaceURIFromQNameFunc-4'(_Config) ->
   Qry = "namespace-uri-from-QName( QName(\"example.com/\", \"pre:lname\")) eq xs:anyURI(\"example.com/\")",
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
'K-NamespaceURIFromQNameFunc-5'(_Config) ->
   Qry = "namespace-uri-from-QName( QName(\"example.com/\", \"pre:lname\")) instance of xs:anyURI",
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
'K2-NamespaceURIFromQNameFunc-1'(_Config) ->
   Qry = "
        declare namespace ns = \"http://example.com/ANamespace\"; 
        string(<name xmlns:ns=\"http://example.com/BNamespace\">{namespace-uri-from-QName(\"ns:foo\" cast as xs:QName)}</name>)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://example.com/BNamespace") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NamespaceURIFromQNameFunc-2'(_Config) ->
   Qry = "
        <e xmlns=\"http://example.com/\"> {namespace-uri-from-QName(node-name(element anElement{\"text\"}))} </e>/string()
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://example.com/") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NamespaceURIFromQNameFunc-3'(_Config) ->
   Qry = "
        declare default element namespace \"http://example.com/\"; 
        <e xmlns=\"\">{namespace-uri-from-QName(xs:QName(\"l\"))}</e>/string()
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NamespaceURIFromQNameFunc-4'(_Config) ->
   Qry = "
        declare default element namespace \"http://example.com/\"; 
        declare namespace p = \"http://example.com/2\"; 
        <e xmlns=\"\" xmlns:p=\"http://example.com/3\">[{namespace-uri-from-QName(xs:QName(\"n1\"))}|{namespace-uri-from-QName(xs:QName(\"p:n2\"))}]</e>/text()
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "[|http://example.com/3]") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
