-module('prod_IfExpr_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['CondExpr002'/1]).
-export(['CondExpr003'/1]).
-export(['CondExpr004'/1]).
-export(['CondExpr005'/1]).
-export(['CondExpr006'/1]).
-export(['CondExpr007'/1]).
-export(['CondExpr008'/1]).
-export(['CondExpr009'/1]).
-export(['CondExpr010'/1]).
-export(['CondExpr011'/1]).
-export(['CondExpr012'/1]).
-export(['CondExpr013'/1]).
-export(['CondExpr014'/1]).
-export(['CondExpr015'/1]).
-export(['CondExpr016'/1]).
-export(['CondExpr017'/1]).
-export(['CondExpr018'/1]).
-export(['CondExpr019'/1]).
-export(['CondExpr20'/1]).
-export(['CondExpr21'/1]).
-export(['CondExpr022'/1]).
-export(['K-CondExpr-1'/1]).
-export(['K-CondExpr-2'/1]).
-export(['K-CondExpr-3'/1]).
-export(['K-CondExpr-4'/1]).
-export(['K-CondExpr-5'/1]).
-export(['K-CondExpr-6'/1]).
-export(['K-CondExpr-7'/1]).
-export(['K-CondExpr-8'/1]).
-export(['K-CondExpr-9'/1]).
-export(['K-CondExpr-10'/1]).
-export(['K-CondExpr-11'/1]).
-export(['K-CondExpr-12'/1]).
-export(['K2-CondExpr-1'/1]).
-export(['K2-CondExpr-2'/1]).
-export(['K2-CondExpr-3'/1]).
-export(['K2-CondExpr-4'/1]).
-export(['K2-CondExpr-5'/1]).
-export(['K2-CondExpr-6'/1]).
-export(['K2-CondExpr-7'/1]).
-export(['cbcl-condexpr-001'/1]).
-export(['cbcl-condexpr-002'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'CondExpr002',
   'CondExpr003',
   'CondExpr004',
   'CondExpr005',
   'CondExpr006',
   'CondExpr007',
   'CondExpr008',
   'CondExpr009',
   'CondExpr010',
   'CondExpr011',
   'CondExpr012',
   'CondExpr013',
   'CondExpr014',
   'CondExpr015',
   'CondExpr016',
   'CondExpr017',
   'CondExpr018',
   'CondExpr019',
   'CondExpr20',
   'CondExpr21',
   'CondExpr022',
   'K-CondExpr-1',
   'K-CondExpr-2',
   'K-CondExpr-3',
   'K-CondExpr-4',
   'K-CondExpr-5',
   'K-CondExpr-6',
   'K-CondExpr-7',
   'K-CondExpr-8',
   'K-CondExpr-9',
   'K-CondExpr-10',
   'K-CondExpr-11',
   'K-CondExpr-12',
   'K2-CondExpr-1',
   'K2-CondExpr-2',
   'K2-CondExpr-3',
   'K2-CondExpr-4',
   'K2-CondExpr-5',
   'K2-CondExpr-6',
   'K2-CondExpr-7',
   'cbcl-condexpr-001',
   'cbcl-condexpr-002'].
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
environment('fsx') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/prod/ForClause/fsx.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/prod/IfExpr.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('nw_Customers') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/prod/AxisStep/nw_Customers.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/prod/IfExpr.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('acme_corp') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/op/union/acme_corp.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/prod/IfExpr.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('xq311A') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/prod/IfExpr/xq311A.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/prod/IfExpr.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'CondExpr002'(_Config) ->
   Qry = "if (fn:true()) then <elem1/> else <elem2/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem1/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CondExpr003'(_Config) ->
   Qry = "if (fn:false()) then <elem1/> else <elem2/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem2/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CondExpr004'(_Config) ->
   Qry = "if (//CompanyName) then <elem1/> else <elem2/>",
   Env = xqerl_test:handle_environment(environment('nw_Customers')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem1/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CondExpr005'(_Config) ->
   Qry = "if (//NodeDoesNotExist) then <elem1/> else <elem2/>",
   Env = xqerl_test:handle_environment(environment('nw_Customers')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem2/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CondExpr006'(_Config) ->
   Qry = "<out>{ if (1 != 0) then if (4 != 5) then 1 else 2 else 3 }</out>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out>1</out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CondExpr007'(_Config) ->
   Qry = "if (//MissingNode) then <elem3/> else if (/Root/Customers[@CustomerID='ALFKI']//Country = \"Germany\") then <elem1/> else <elem2/>",
   Env = xqerl_test:handle_environment(environment('nw_Customers')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem1/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CondExpr008'(_Config) ->
   Qry = "if ( /Root/Customers[1]/@CustomerID = 'ALFKI' and /Root/Customers[1]/FullAddress/City = 'Berlin') then \"pass\" else \"fail\"",
   Env = xqerl_test:handle_environment(environment('nw_Customers')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "pass") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CondExpr009'(_Config) ->
   Qry = "if (/Root/Customers[1]/@CustomerID = 'ALFKI' or /Root/Customers[1]/FullAddress/City = 'Non-Existent') then \"pass\" else \"fail\"",
   Env = xqerl_test:handle_environment(environment('nw_Customers')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "pass") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CondExpr010'(_Config) ->
   Qry = " if (2 != 4) then 1 else 0 ",
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
'CondExpr011'(_Config) ->
   Qry = "fn:string-length(if (2 != 3) then 'foo' else 'expanded-foo')",
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
'CondExpr012'(_Config) ->
   Qry = "if (/doc/widget1/@unit-cost = /doc/widget2/@unit-cost) then /doc/widget1/@name else /doc/widget2/@name",
   Env = xqerl_test:handle_environment(environment('xq311A')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "axolotl") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CondExpr013'(_Config) ->
   Qry = " if (if (5 != 3) then fn:true() else fn:empty(/doc/widget1)) then \"search\" else \"assume\" ",
   Env = xqerl_test:handle_environment(environment('xq311A')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "search") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CondExpr014'(_Config) ->
   Qry = " ( if (3 != 2) then 16 else 0 ) + ( if (8 = 7) then 4 else 1 ) ",
   Env = xqerl_test:handle_environment(environment('xq311A')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"17") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CondExpr015'(_Config) ->
   Qry = " (if (3 != 2) then 16 else 0) + (if (8 = 7) then 4 else 1) ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"17") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CondExpr016'(_Config) ->
   Qry = "(//Folder)[1]/File[ if ( ./@name='File00000000000' ) then 2 else true() ]/FileName",
   Env = xqerl_test:handle_environment(environment('fsx')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<FileName>File00000000001</FileName><FileName>File00000000002</FileName><FileName>File00000000003</FileName><FileName>File00000000004</FileName><FileName>File00000000005</FileName><FileName>File00000000006</FileName><FileName>File00000000007</FileName><FileName>File00000000008</FileName><FileName>File00000000009</FileName><FileName>File00000000010</FileName><FileName>File00000000011</FileName><FileName>File00000000012</FileName><FileName>File00000000013</FileName><FileName>File00000000014</FileName><FileName>File00000000015</FileName><FileName>File00000000016</FileName><FileName>File00000000017</FileName><FileName>File00000000018</FileName><FileName>File00000000019</FileName><FileName>File00000000020</FileName><FileName>File00000000021</FileName><FileName>File00000000022</FileName><FileName>File00000000023</FileName><FileName>File00000000024</FileName><FileName>File00000000025</FileName><FileName>File00000000026</FileName><FileName>File00000000027</FileName><FileName>File00000000028</FileName><FileName>File00000000029</FileName><FileName>File00000000030</FileName>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CondExpr017'(_Config) ->
   Qry = "for $file in (//Folder)[1]/File return if( $file/FileName='File00000000000' ) then $file/FileName else data( $file/FileName )",
   Env = xqerl_test:handle_environment(environment('fsx')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_count(Res, "31") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result[1][. instance of element(FileName)][. = 'File00000000000']") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"every $r in subsequence($result,2) satisfies $r instance of xs:untypedAtomic") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"string-join(subsequence($result,2), ' ') eq \"File00000000001 File00000000002 File00000000003 File00000000004 File00000000005 File00000000006 File00000000007 File00000000008 File00000000009 File00000000010 File00000000011 File00000000012 File00000000013 File00000000014 File00000000015 File00000000016 File00000000017 File00000000018 File00000000019 File00000000020 File00000000021 File00000000022 File00000000023 File00000000024 File00000000025 File00000000026 File00000000027 File00000000028 File00000000029 File00000000030\"") of 
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
'CondExpr018'(_Config) ->
   Qry = "for $file in (//Folder)[1]/File return if( $file/FileName='File00000000004' ) then 1 else data( $file/FileName )",
   Env = xqerl_test:handle_environment(environment('fsx')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "File00000000000 File00000000001 File00000000002 File00000000003 1 File00000000005 File00000000006 File00000000007 File00000000008 File00000000009 File00000000010 File00000000011 File00000000012 File00000000013 File00000000014 File00000000015 File00000000016 File00000000017 File00000000018 File00000000019 File00000000020 File00000000021 File00000000022 File00000000023 File00000000024 File00000000025 File00000000026 File00000000027 File00000000028 File00000000029 File00000000030") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CondExpr019'(_Config) ->
   Qry = "if //File[1] then \"true\" else \"false\"",
   Env = xqerl_test:handle_environment(environment('fsx')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'CondExpr20'(_Config) ->
   Qry = "if( false() ) then /Folder[1] cast as xs:double ? else 10 cast as xs:double ?",
   Env = xqerl_test:handle_environment(environment('fsx')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'CondExpr21'(_Config) ->
   Qry = "if( true() ) then 10 cast as xs:double ? else /Folder[1] cast as xs:double ?",
   Env = xqerl_test:handle_environment(environment('fsx')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'CondExpr022'(_Config) ->
   Qry = "if (doc-available('nodocument.xml')) then doc('nodocument.xml') else 10 cast as xs:double",
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
'K-CondExpr-1'(_Config) ->
   Qry = "(if(2) then 1 else 0) eq 1",
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
'K-CondExpr-2'(_Config) ->
   Qry = "if(()) then false() else true()",
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
'K-CondExpr-3'(_Config) ->
   Qry = "(if((1, current-time())[1] treat as xs:integer) then true() else false()) eq true()",
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
'K-CondExpr-4'(_Config) ->
   Qry = "(if(boolean((1, current-time())[1] treat as xs:integer)) then true() else false()) eq true()",
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
'K-CondExpr-5'(_Config) ->
   Qry = "if((1, 2, 3, hours-from-time(current-time()))[1]) then true() else false()",
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
'K-CondExpr-6'(_Config) ->
   Qry = "string(if(boolean((1, current-time())[1] treat as xs:integer)) then true() else false()) eq \"true\"",
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
'K-CondExpr-7'(_Config) ->
   Qry = "(if(current-time()) then 1 else 0) eq 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-CondExpr-8'(_Config) ->
   Qry = "1 eq (if(xs:anyURI(\"example.com/\")) then 1 else 0)",
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
'K-CondExpr-9'(_Config) ->
   Qry = "0 eq (if(xs:anyURI(\"\")) then 1 else 0)",
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
'K-CondExpr-10'(_Config) ->
   Qry = "if(count((1, 2, 3, current-time(), 4))) then true() else 4",
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
'K-CondExpr-11'(_Config) ->
   Qry = "if(not(count(remove((1, 2, 3, current-time()), 1)))) then 3 else true()",
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
'K-CondExpr-12'(_Config) ->
   Qry = "if(boolean((1, 2, 3, current-time())[1] treat as xs:integer)) then true() else 4",
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
'K2-CondExpr-1'(_Config) ->
   Qry = "empty(if(<e>{current-time()}</e>) then () else ())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
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
'K2-CondExpr-2'(_Config) ->
   Qry = "empty(if(<e>{current-time()}</e>) then 1 else 1)",
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
'K2-CondExpr-3'(_Config) ->
   Qry = "declare default function namespace \"http://www.example.com/\"; declare function unordered() { 1 }; unordered()",
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
'K2-CondExpr-4'(_Config) ->
   Qry = "if(//(employee[location = \"Denver\"]/ancestor::*)) then 1 else 3",
   Env = xqerl_test:handle_environment(environment('acme_corp')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'K2-CondExpr-5'(_Config) ->
   Qry = "if(!true()) then 2 else 3",
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
'K2-CondExpr-6'(_Config) ->
   Qry = "<e/>/if(true()) then 1 else 3",
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
'K2-CondExpr-7'(_Config) ->
   Qry = "if (1) then 1 else if (1) then 1 else if (1) then 1 else if (1) then 1 else if (1) then 1 else if (1) then 1 else if (1) then 1 else if (1) then 1 else if (1) then 1 else if (1) then 1 else if (1) then 1 else if (1) then 1 else if (1) then 1 else if (1) then 1 else if (1) then 1 else if (1) then 1 else if (1) then 1 else if (1) then 1 else if (1) then 1 else if (1) then 1 else if (1) then 1 else if (1) then 1 else if (1) then 1 else if (1) then 1 else if (1) then 1 else if (1) then 1 else if (1) then 1 else if (1) then 1 else ()",
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
'cbcl-condexpr-001'(_Config) ->
   Qry = "
      	let $x := zero-or-one((1 to 10)[. div 2 = 2]) 
      	return if(exists($x)) then xs:string($x) else ()
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "4") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-condexpr-002'(_Config) ->
   Qry = "
      	let $x := zero-or-one((1 to 10)[. div 2 = 2]) 
      	return if(empty($x)) then () else xs:string($x)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "4") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
