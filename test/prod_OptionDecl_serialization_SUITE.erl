-module('prod_OptionDecl_serialization_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['Serialization-001'/1]).
-export(['Serialization-002'/1]).
-export(['Serialization-003'/1]).
-export(['Serialization-004'/1]).
-export(['Serialization-005'/1]).
-export(['Serialization-006'/1]).
-export(['Serialization-007'/1]).
-export(['Serialization-008'/1]).
-export(['Serialization-009'/1]).
-export(['Serialization-010'/1]).
-export(['Serialization-011'/1]).
-export(['Serialization-012'/1]).
-export(['Serialization-013'/1]).
-export(['Serialization-014'/1]).
-export(['Serialization-015'/1]).
-export(['Serialization-016'/1]).
-export(['Serialization-017'/1]).
-export(['Serialization-018'/1]).
-export(['Serialization-019'/1]).
-export(['Serialization-020'/1]).
-export(['Serialization-021'/1]).
-export(['Serialization-022'/1]).
-export(['Serialization-023'/1]).
-export(['Serialization-024'/1]).
-export(['Serialization-025'/1]).
-export(['Serialization-026'/1]).
-export(['Serialization-026a'/1]).
-export(['Serialization-027'/1]).
-export(['Serialization-027a'/1]).
-export(['Serialization-028'/1]).
-export(['Serialization-029'/1]).
-export(['Serialization-030'/1]).
-export(['Serialization-031'/1]).
-export(['Serialization-032'/1]).
-export(['Serialization-033'/1]).
-export(['Serialization-034'/1]).
-export(['Serialization-035'/1]).
-export(['Serialization-036'/1]).
-export(['Serialization-037'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
, try  xqerl:compile("C:/git/zadean/xquery-3.1/QT3-test-suite/prod/Serialization/serialization1-lib.xq") catch _:_ -> ok end,Config.
all() -> [
   'Serialization-001',
   'Serialization-002',
   'Serialization-003',
   'Serialization-004',
   'Serialization-005',
   'Serialization-006',
   'Serialization-007',
   'Serialization-008',
   'Serialization-009',
   'Serialization-010',
   'Serialization-011',
   'Serialization-012',
   'Serialization-013',
   'Serialization-014',
   'Serialization-015',
   'Serialization-016',
   'Serialization-017',
   'Serialization-018',
   'Serialization-019',
   'Serialization-020',
   'Serialization-021',
   'Serialization-022',
   'Serialization-023',
   'Serialization-024',
   'Serialization-025',
   'Serialization-026',
   'Serialization-026a',
   'Serialization-027',
   'Serialization-027a',
   'Serialization-028',
   'Serialization-029',
   'Serialization-030',
   'Serialization-031',
   'Serialization-032',
   'Serialization-033',
   'Serialization-034',
   'Serialization-035',
   'Serialization-036',
   'Serialization-037'].
environment('empty') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('atomic') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{resources, []},
{modules, []}
];
environment('atomic-xq') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-mod') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/works-mod.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/works.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('staff') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/staff.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
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
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('auction') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/auction.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
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
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.example.com/QNameXSD",""}]},
{resources, []},
{modules, []}
];
environment('math') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/math","math"}]},
{resources, []},
{modules, []}
];
environment('array') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"}]},
{resources, []},
{modules, []}
];
environment('map') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('array-and-map') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"},
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('user-defined-types') ->
[{sources, []},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/userdefined.xsd","http://www.w3.org/XQueryTest/userDefinedTypes"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'Serialization-001'(_Config) ->
   Qry = "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
         declare option output:cdata-section-elements \"\";
         declare option output:doctype-public \"none\";
         declare option output:doctype-system \"none\";
         declare option output:indent \"no\";
         declare option output:method \"xml\";
         declare option output:suppress-indentation \"\";
         declare option output:undeclare-prefixes \"no\";
         <result>ok</result>
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-002'(_Config) ->
   Qry = "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
         declare option output:indent \"yes\";
         <result>ok</result>
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-003'(_Config) ->
   Qry = "
         import module namespace test=\"http://www.w3.org/TestModules/test\";
         <result>{test:ok()}</result>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0108") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-004'(_Config) ->
   {skip,"serialization"}.
'Serialization-005'(_Config) ->
   {skip,"serialization"}.
'Serialization-006'(_Config) ->
   Qry = "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
         declare option output:parameter-document \"Serialization/serialization-parameters.xml\";
         <result>ok</result>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XQST0119") of 
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
'Serialization-007'(_Config) ->
   Qry = "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
         declare option output:parameter-document \"Serialization/serialization-parameters.xml\";
         declare option output:indent \"yes\";
         <result>ok</result>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-008'(_Config) ->
   Qry = "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
         declare option output:byte-order-mark \"INVALID_VALUE\";
         <result>ok</result>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"SEPM0016") of 
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
'Serialization-009'(_Config) ->
   Qry = "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
         declare option output:doctype-public \"&#xc381;\";
         <result>ok</result>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"SEPM0016") of 
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
'Serialization-010'(_Config) ->
   Qry = "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
         declare option output:cdata-section-elements \"::INVALID_VALUE\";
         <result>ok</result>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"SEPM0016") of 
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
'Serialization-011'(_Config) ->
   Qry = "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
         declare option output:doctype-system \"mustnotincludebothanapostrophe&#x27;andquotationmark&#x22;\";
         <result>ok</result>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"SEPM0016") of 
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
'Serialization-012'(_Config) ->
   Qry = "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
         declare option output:encoding \"onlyasciiallowedlessthan&#x7f;\";
         <result>ok</result>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"SEPM0016") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"SESU0007") of 
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
'Serialization-013'(_Config) ->
   Qry = "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
         declare option output:escape-uri-attributes \"INVALID_VALUE\";
         <result>ok</result>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"SEPM0016") of 
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
'Serialization-014'(_Config) ->
   Qry = "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
         declare option output:include-content-type \"INVALID_VALUE\";
         <result>ok</result>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"SEPM0016") of 
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
'Serialization-015'(_Config) ->
   Qry = "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
         declare option output:indent \"INVALID_VALUE\";
         <result>ok</result>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"SEPM0016") of 
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
'Serialization-016'(_Config) ->
   Qry = "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
         (: the charset parameter of the media type MUST NOT be specified explicitly in the value of the media-type parameter. :)
         declare option output:media-type \"text/html; charset=ISO-8859-4\";
         <result>ok</result>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"SEPM0016") of 
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
'Serialization-017'(_Config) ->
   Qry = "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
         (: An expanded QName with a null namespace URI, and the local part of the name equal to one of xml, xhtml, html or text, or having a non-null namespace URI :)
         declare option output:method \"INVALID_VALUE\";
         <result>ok</result>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"SEPM0016") of 
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
'Serialization-018'(_Config) ->
   Qry = "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
         declare option output:normalization-form \"__NOT_SUPPORTED__\";
         <result>ok</result>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"SESU0011") of 
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
'Serialization-019'(_Config) ->
   Qry = "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
         declare option output:omit-xml-declaration \"INVALID_VALUE\";
         <result>ok</result>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"SEPM0016") of 
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
'Serialization-020'(_Config) ->
   Qry = "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
         declare option output:standalone \"INVALID_VALUE\";
         <result>ok</result>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"SEPM0016") of 
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
'Serialization-021'(_Config) ->
   Qry = "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
         declare option output:suppress-indentation \"::INVALID_VALUE\";
         <result>ok</result>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"SEPM0016") of 
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
'Serialization-022'(_Config) ->
   Qry = "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
         declare option output:undeclare-prefixes \"INVALID_VALUE\";
         <result>ok</result>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"SEPM0016") of 
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
'Serialization-023'(_Config) ->
   Qry = "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
         declare option output:use-character-maps \"...\";
         <result>ok</result>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0109") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-024'(_Config) ->
   Qry = "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
         (: An unsupported xml version which matches the VersionNum of XML Recommendation XML10 :)
         declare option output:version \"1.14159265\";
         <result>ok</result>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"SESU0013") of 
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
'Serialization-025'(_Config) ->
   Qry = "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
         declare option output:method \"html\";
         (: control characters not allowed in html :)
         <result>ok&#x7f;</result>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"SEPM0014") of 
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
'Serialization-026'(_Config) ->
   {skip,"serialization"}.
'Serialization-026a'(_Config) ->
   {skip,"serialization"}.
'Serialization-027'(_Config) ->
   {skip,"serialization"}.
'Serialization-027a'(_Config) ->
   {skip,"serialization"}.
'Serialization-028'(_Config) ->
   {skip,"serialization"}.
'Serialization-029'(_Config) ->
   {skip,"serialization"}.
'Serialization-030'(_Config) ->
   {skip,"serialization"}.
'Serialization-031'(_Config) ->
   {skip,"serialization"}.
'Serialization-032'(_Config) ->
   {skip,"serialization"}.
'Serialization-033'(_Config) ->
   Qry = "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
         declare option output:indent \"&#x6e;&#x6f;\";
         <result>ok</result>
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-034'(_Config) ->
   Qry = "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
         declare option output:indent \" no \";
         <result>ok</result>
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-035'(_Config) ->
   Qry = "
         declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
         declare option output:parameter-document \"Serialization/serialization-eqnames.xml\";
         <result>
           <e xmlns=\"http://example.com/a\">ta</e>
           <e xmlns=\"http://example.com/b\">tb</e>
           <e xmlns=\"http://example.com/c\">tc</e>
           <e xmlns=\"http://example.com/d\">td</e>
           <e xmlns=\"http://example.com/e\">te</e>
           <e>tt</e>
         </result>
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">CDATA\\[ta\\]</serialization-matches>", Res]),
   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">CDATA\\[tb\\]</serialization-matches>", Res]),
   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">CDATA\\[tc\\]</serialization-matches>", Res]),
   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">CDATA\\[td\\]</serialization-matches>", Res]),
   ct:fail(["<not xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">
  <serialization-matches>CDATA\\[te\\]</serialization-matches>
</not>", Res]),
   ct:fail(["<not xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">
  <serialization-matches>CDATA\\[tt\\]</serialization-matches>
</not>", Res])]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-036'(_Config) ->
   Qry = "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
         declare option output:indent \" 0 \";
         <result>ok</result>
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-037'(_Config) ->
   Qry = "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
         declare option output:indent \"1\";
         <result>ok</result>
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
