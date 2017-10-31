-module('fn_in_scope_prefixes_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-in-scope-prefixes-1'/1]).
-export(['fn-in-scope-prefixes-2'/1]).
-export(['fn-in-scope-prefixes-3'/1]).
-export(['fn-in-scope-prefixes-4'/1]).
-export(['fn-in-scope-prefixes-5'/1]).
-export(['fn-in-scope-prefixes-6'/1]).
-export(['fn-in-scope-prefixes-7'/1]).
-export(['fn-in-scope-prefixes-8'/1]).
-export(['fn-in-scope-prefixes-9'/1]).
-export(['fn-in-scope-prefixes-10'/1]).
-export(['fn-in-scope-prefixes-11'/1]).
-export(['fn-in-scope-prefixes-12'/1]).
-export(['fn-in-scope-prefixes-13'/1]).
-export(['fn-in-scope-prefixes-14'/1]).
-export(['fn-in-scope-prefixes-15'/1]).
-export(['fn-in-scope-prefixes-16'/1]).
-export(['fn-in-scope-prefixes-17'/1]).
-export(['fn-in-scope-prefixes-18'/1]).
-export(['fn-in-scope-prefixes-19'/1]).
-export(['fn-in-scope-prefixes-20'/1]).
-export(['fn-in-scope-prefixes-21'/1]).
-export(['fn-in-scope-prefixes-22'/1]).
-export(['fn-in-scope-prefixes-23'/1]).
-export(['fn-in-scope-prefixes-24'/1]).
-export(['fn-in-scope-prefixes-25'/1]).
-export(['fn-in-scope-prefixes-26'/1]).
-export(['fn-in-scope-prefixes-27'/1]).
-export(['fn-in-scope-prefixes-28'/1]).
-export(['fn-in-scope-prefixes-29'/1]).
-export(['fn-in-scope-prefixes-30'/1]).
-export(['K-InScopePrefixesFunc-1'/1]).
-export(['K-InScopePrefixesFunc-2'/1]).
-export(['K2-InScopePrefixesFunc-1'/1]).
-export(['K2-InScopePrefixesFunc-2'/1]).
-export(['K2-InScopePrefixesFunc-3'/1]).
-export(['K2-InScopePrefixesFunc-4'/1]).
-export(['K2-InScopePrefixesFunc-5'/1]).
-export(['K2-InScopePrefixesFunc-6'/1]).
-export(['K2-InScopePrefixesFunc-7'/1]).
-export(['K2-InScopePrefixesFunc-8'/1]).
-export(['K2-InScopePrefixesFunc-9'/1]).
-export(['K2-InScopePrefixesFunc-10'/1]).
-export(['K2-InScopePrefixesFunc-11'/1]).
-export(['K2-InScopePrefixesFunc-12'/1]).
-export(['K2-InScopePrefixesFunc-13'/1]).
-export(['K2-InScopePrefixesFunc-14'/1]).
-export(['K2-InScopePrefixesFunc-15'/1]).
-export(['K2-InScopePrefixesFunc-16'/1]).
-export(['K2-InScopePrefixesFunc-17'/1]).
-export(['K2-InScopePrefixesFunc-18'/1]).
-export(['K2-InScopePrefixesFunc-19'/1]).
-export(['K2-InScopePrefixesFunc-20'/1]).
-export(['K2-InScopePrefixesFunc-21'/1]).
-export(['K2-InScopePrefixesFunc-22'/1]).
-export(['K2-InScopePrefixesFunc-23'/1]).
-export(['K2-InScopePrefixesFunc-24'/1]).
-export(['K2-InScopePrefixesFunc-25'/1]).
-export(['K2-InScopePrefixesFunc-26'/1]).
-export(['K2-InScopePrefixesFunc-27'/1]).
-export(['K2-InScopePrefixesFunc-28'/1]).
-export(['K2-InScopePrefixesFunc-29'/1]).
-export(['K2-InScopePrefixesFunc-30'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-in-scope-prefixes-1',
   'fn-in-scope-prefixes-2',
   'fn-in-scope-prefixes-3',
   'fn-in-scope-prefixes-4',
   'fn-in-scope-prefixes-5',
   'fn-in-scope-prefixes-6',
   'fn-in-scope-prefixes-7',
   'fn-in-scope-prefixes-8',
   'fn-in-scope-prefixes-9',
   'fn-in-scope-prefixes-10',
   'fn-in-scope-prefixes-11',
   'fn-in-scope-prefixes-12',
   'fn-in-scope-prefixes-13',
   'fn-in-scope-prefixes-14',
   'fn-in-scope-prefixes-15',
   'fn-in-scope-prefixes-16',
   'fn-in-scope-prefixes-17',
   'fn-in-scope-prefixes-18',
   'fn-in-scope-prefixes-19',
   'fn-in-scope-prefixes-20',
   'fn-in-scope-prefixes-21',
   'fn-in-scope-prefixes-22',
   'fn-in-scope-prefixes-23',
   'fn-in-scope-prefixes-24',
   'fn-in-scope-prefixes-25',
   'fn-in-scope-prefixes-26',
   'fn-in-scope-prefixes-27',
   'fn-in-scope-prefixes-28',
   'fn-in-scope-prefixes-29',
   'fn-in-scope-prefixes-30',
   'K-InScopePrefixesFunc-1',
   'K-InScopePrefixesFunc-2',
   'K2-InScopePrefixesFunc-1',
   'K2-InScopePrefixesFunc-2',
   'K2-InScopePrefixesFunc-3',
   'K2-InScopePrefixesFunc-4',
   'K2-InScopePrefixesFunc-5',
   'K2-InScopePrefixesFunc-6',
   'K2-InScopePrefixesFunc-7',
   'K2-InScopePrefixesFunc-8',
   'K2-InScopePrefixesFunc-9',
   'K2-InScopePrefixesFunc-10',
   'K2-InScopePrefixesFunc-11',
   'K2-InScopePrefixesFunc-12',
   'K2-InScopePrefixesFunc-13',
   'K2-InScopePrefixesFunc-14',
   'K2-InScopePrefixesFunc-15',
   'K2-InScopePrefixesFunc-16',
   'K2-InScopePrefixesFunc-17',
   'K2-InScopePrefixesFunc-18',
   'K2-InScopePrefixesFunc-19',
   'K2-InScopePrefixesFunc-20',
   'K2-InScopePrefixesFunc-21',
   'K2-InScopePrefixesFunc-22',
   'K2-InScopePrefixesFunc-23',
   'K2-InScopePrefixesFunc-24',
   'K2-InScopePrefixesFunc-25',
   'K2-InScopePrefixesFunc-26',
   'K2-InScopePrefixesFunc-27',
   'K2-InScopePrefixesFunc-28',
   'K2-InScopePrefixesFunc-29',
   'K2-InScopePrefixesFunc-30'].
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
environment('NamespaceSuppliedInternally') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/fn/in-scope-prefixes/NamespaceSuppliedInternally.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/fn/in-scope-prefixes.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('pathdata') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/fn/path/pathdata.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/fn/in-scope-prefixes.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('namespaces11') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/fn/in-scope-prefixes/namespaces11.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/fn/in-scope-prefixes.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'fn-in-scope-prefixes-1'(_Config) ->
   Qry = "fn:in-scope-prefixes(<a1 xmlns:p1=\"http://www.exampole.com\"></a1>,\"Second Argument\")",
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
'fn-in-scope-prefixes-2'(_Config) ->
   Qry = "fn:in-scope-prefixes(200)",
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
'fn-in-scope-prefixes-3'(_Config) ->
   Qry = "fn:in-scope-prefixes(<anElement>some content</anElement>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "xml") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-in-scope-prefixes-4'(_Config) ->
   Qry = "fn:in-scope-prefixes(<anElement xmlns:p1 = \"http://www.example.com\">some content</anElement>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "xml p1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_string_value(Res, "p1 xml") of 
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
'fn-in-scope-prefixes-5'(_Config) ->
   Qry = "fn:in-scope-prefixes(element anElement {\"Some content\"})",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "xml") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-in-scope-prefixes-6'(_Config) ->
   Qry = "declare default element namespace \"http://www.example.com\"; let $seq := fn:in-scope-prefixes(element anElement {\"Some content\"}) return (count($seq),$seq=(\"xml\",\"\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2 true") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-in-scope-prefixes-7'(_Config) ->
   Qry = "declare default element namespace \"http://www.example.com\"; let $seq := fn:in-scope-prefixes(<anElement>Some content</anElement>) return (count($seq),$seq=(\"xml\",\"\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2 true") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-in-scope-prefixes-8'(_Config) ->
   Qry = "declare namespace p1 = \"http://www.example.com\"; fn:in-scope-prefixes(<anElement xmlns:p1=\"http://www.somenamespace.com\">Some content</anElement>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "xml p1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_string_value(Res, "p1 xml") of 
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
'fn-in-scope-prefixes-9'(_Config) ->
   Qry = "declare namespace p1 = \"http://www.example.com\"; fn:in-scope-prefixes(<anElement>Some content</anElement>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "xml") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-in-scope-prefixes-10'(_Config) ->
   Qry = "fn:string-length(fn:in-scope-prefixes(<anElement>Some content</anElement>)[1])",
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
'fn-in-scope-prefixes-11'(_Config) ->
   Qry = "fn:upper-case(fn:in-scope-prefixes(<anElement>Some content</anElement>)[1])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "XML") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-in-scope-prefixes-12'(_Config) ->
   Qry = "fn:lower-case(fn:in-scope-prefixes(<anElement>Some content</anElement>)[1])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "xml") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-in-scope-prefixes-13'(_Config) ->
   Qry = "fn:string-to-codepoints(fn:in-scope-prefixes(<anElement>Some content</anElement>)[1])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "120 109 108") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-in-scope-prefixes-14'(_Config) ->
   Qry = "xs:string(fn:in-scope-prefixes(<anElement>Some content</anElement>)[1])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "xml") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-in-scope-prefixes-15'(_Config) ->
   Qry = "fn:substring-before(fn:in-scope-prefixes(<anElement>Some content</anElement>)[1],\"m\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "x") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-in-scope-prefixes-16'(_Config) ->
   Qry = "fn:substring-after(fn:in-scope-prefixes(<anElement>Some content</anElement>)[1],\"m\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "l") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-in-scope-prefixes-17'(_Config) ->
   Qry = "fn:concat(fn:in-scope-prefixes(<anElement>Some content</anElement>),\"m\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "xmlm") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-in-scope-prefixes-18'(_Config) ->
   Qry = "fn:string-join((fn:in-scope-prefixes(<anElement>Some content</anElement>),\"xml\"),\"\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "xmlxml") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-in-scope-prefixes-19'(_Config) ->
   Qry = "fn:substring(fn:in-scope-prefixes(<anElement>Some content</anElement>)[1],2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "ml") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-in-scope-prefixes-20'(_Config) ->
   Qry = "fn:contains(fn:in-scope-prefixes(<anElement>Some content</anElement>)[1],\"l\")",
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
'fn-in-scope-prefixes-21'(_Config) ->
   Qry = "in-scope-prefixes(/*)",
   Env = xqerl_test:handle_environment(environment('auction')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"\"ma\", \"xlink\", \"anyzone\", \"eachbay\", \"yabadoo\", \"xml\"") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-in-scope-prefixes-22'(_Config) ->
   Qry = "in-scope-prefixes((//*)[19])",
   Env = xqerl_test:handle_environment(environment('auction')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"\"ma\", \"xlink\", \"anyzone\", \"eachbay\", \"yabadoo\", \"xml\"") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-in-scope-prefixes-23'(_Config) ->
   Qry = "in-scope-prefixes(/)",
   Env = xqerl_test:handle_environment(environment('auction')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'fn-in-scope-prefixes-24'(_Config) ->
   {skip,"Validation Environment"}.
'fn-in-scope-prefixes-25'(_Config) ->
   Qry = "in-scope-prefixes(/*)",
   Env = xqerl_test:handle_environment(environment('NamespaceSuppliedInternally')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"\"\", \"xml\", \"xlink\"") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-in-scope-prefixes-26'(_Config) ->
   Qry = "in-scope-prefixes(/*/p)",
   Env = xqerl_test:handle_environment(environment('pathdata')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "xml") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-in-scope-prefixes-27'(_Config) ->
   {skip,"XML 1.1"}.
'fn-in-scope-prefixes-28'(_Config) ->
   {skip,"XML 1.1"}.
'fn-in-scope-prefixes-29'(_Config) ->
   {skip,"XML 1.1"}.
'fn-in-scope-prefixes-30'(_Config) ->
   {skip,"XML 1.1"}.
'K-InScopePrefixesFunc-1'(_Config) ->
   Qry = "in-scope-prefixes()",
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
'K-InScopePrefixesFunc-2'(_Config) ->
   Qry = "in-scope-prefixes(\"string\", \"nodetest\", \"wrong param\")",
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
'K2-InScopePrefixesFunc-1'(_Config) ->
   Qry = "count(in-scope-prefixes(<e/>))",
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
'K2-InScopePrefixesFunc-2'(_Config) ->
   Qry = "count(in-scope-prefixes(element name {7}))",
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
'K2-InScopePrefixesFunc-3'(_Config) ->
   Qry = "in-scope-prefixes(text {\"some text\"})",
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
'K2-InScopePrefixesFunc-4'(_Config) ->
   Qry = "in-scope-prefixes(comment {\"content\"})",
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
'K2-InScopePrefixesFunc-5'(_Config) ->
   Qry = "in-scope-prefixes(<?target data?>)",
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
'K2-InScopePrefixesFunc-6'(_Config) ->
   Qry = "count(in-scope-prefixes(<a xmlns=\"http://www.example.com\" xmlns:p=\"http://ns.example.com/asd\" xmlns:b=\"http://ns.example.com/asd\"/>))",
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
'K2-InScopePrefixesFunc-7'(_Config) ->
   Qry = "count(in-scope-prefixes(<a xmlns=\"\"/>))",
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
'K2-InScopePrefixesFunc-8'(_Config) ->
   Qry = "declare default element namespace \"http://www.example.com/A\"; count(in-scope-prefixes(<anElement xmlns=\"http://www.example.com/B\"/>))",
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
'K2-InScopePrefixesFunc-9'(_Config) ->
   Qry = "for $i in fn:in-scope-prefixes(<e xmlns:p=\"http://example.com\" xmlns:a=\"http://example.com\"> <b/> </e>/b) order by $i return $i",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "a p xml") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-InScopePrefixesFunc-10'(_Config) ->
   Qry = "declare default element namespace \"http://www.example.com\"; count(fn:in-scope-prefixes(<e/>))",
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
'K2-InScopePrefixesFunc-11'(_Config) ->
   Qry = "
         declare default element namespace \"http://www.example.com/\"; 
         let $i := <e> <a xmlns=\"\"/> <b xmlns=\"http://www.example.com/\"/> <c xmlns=\"http://www.example.com/Second\"/> </e> 
         return (count(in-scope-prefixes($i)), 
                 count(in-scope-prefixes(exactly-one($i/*[namespace-uri() eq \"\"]))), 
                 count(in-scope-prefixes(exactly-one($i/b))), 
                 count(in-scope-prefixes(exactly-one($i/*[namespace-uri() eq \"http://www.example.com/Second\"])))
                )",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"2, 1, 2, 2") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-InScopePrefixesFunc-12'(_Config) ->
   Qry = "
         declare default element namespace \"http://www.example.com/\"; 
         let $i := element e { element {QName(\"\", \"a\")} {}, element {QName(\"http://www.example.com/\", \"b\")} {}, element {QName(\"http://www.example.com/Second\", \"c\")} {} } 
         return (count(in-scope-prefixes($i)), 
                 count(in-scope-prefixes(exactly-one($i/*[namespace-uri() eq \"\"]))), 
                 count(in-scope-prefixes(exactly-one($i/b))), 
                 count(in-scope-prefixes(exactly-one($i/*[namespace-uri() eq \"http://www.example.com/Second\"])))
                )",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"2, 1, 2, 2") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-InScopePrefixesFunc-13'(_Config) ->
   Qry = "declare default element namespace \"http://www.example.com/\"; let $i := element e { element b {()} } return (count(in-scope-prefixes($i/b)), count(in-scope-prefixes($i)))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2 2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-InScopePrefixesFunc-14'(_Config) ->
   Qry = "count(in-scope-prefixes(element e{()}))",
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
'K2-InScopePrefixesFunc-15'(_Config) ->
   Qry = "let $i := element e { element b {()} } return (count(in-scope-prefixes($i/b)), count(in-scope-prefixes($i)))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-InScopePrefixesFunc-16'(_Config) ->
   Qry = "
        let $i := <e xmlns=\"http://example.com/\"> 
                    {element a {()}} 
                  </e> 
        return (count(in-scope-prefixes($i)), count(in-scope-prefixes(exactly-one($i/*))))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2 2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-InScopePrefixesFunc-17'(_Config) ->
   Qry = "declare namespace p = \"http://example.com/\"; count(in-scope-prefixes(<p:e/>)), count(in-scope-prefixes(element p:e {()}))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2 2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-InScopePrefixesFunc-18'(_Config) ->
   Qry = "declare default element namespace \"http://example.com/\"; <e xmlns:p=\"http://example.com/\"> { count(in-scope-prefixes(<e/>)), count(in-scope-prefixes(element e {()})) } </e>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e xmlns=\"http://example.com/\" xmlns:p=\"http://example.com/\">3 3</e>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-InScopePrefixesFunc-19'(_Config) ->
   Qry = "count(in-scope-prefixes(element xml:space {()}))",
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
'K2-InScopePrefixesFunc-20'(_Config) ->
   Qry = "count(in-scope-prefixes(element fn:space {()}))",
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
'K2-InScopePrefixesFunc-21'(_Config) ->
   Qry = "count(in-scope-prefixes(element xs:space {()}))",
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
'K2-InScopePrefixesFunc-22'(_Config) ->
   Qry = "count(in-scope-prefixes(<fn:space/>))",
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
'K2-InScopePrefixesFunc-23'(_Config) ->
   Qry = "count(in-scope-prefixes(<xs:space/>))",
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
'K2-InScopePrefixesFunc-24'(_Config) ->
   Qry = "declare namespace p = \"http://example.com/\"; count(in-scope-prefixes(<element/>))",
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
'K2-InScopePrefixesFunc-25'(_Config) ->
   Qry = "
        declare namespace a = \"http://example.com/1\"; 
        declare namespace b = \"http://example.com/2\"; 
        declare namespace unused = \"http://example.com/3\"; 
        declare namespace unused2 = \"http://example.com/4\"; 
        <unused:e/>[2], 
        <e a:n1=\"content\" b:n1=\"content\"> <a:n1/> </e>/
            (for $i in in-scope-prefixes(.) order by $i return $i, 
             '|', 
             for $i in a:n1/in-scope-prefixes(.) order by $i return $i)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "a b xml | a xml") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-InScopePrefixesFunc-26'(_Config) ->
   Qry = "
         let $i := <e> { attribute {QName(\"http://example.com/\", \"prefix:attributeName\")} {()} } </e> 
         return document {$i, for $ps in in-scope-prefixes($i) order by $ps return $ps}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e xmlns:prefix=\"http://example.com/\" prefix:attributeName=\"\"/>prefix xml") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-InScopePrefixesFunc-27'(_Config) ->
   Qry = "declare namespace a = \"http://example.com/1\"; declare namespace b = \"http://example.com/2\"; <e a:n1=\"content\" b:n1=\"content\"/>/(for $i in in-scope-prefixes(.) order by $i return $i)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "a b xml") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-InScopePrefixesFunc-28'(_Config) ->
   Qry = "
         declare default element namespace \"http://www.example.com/\"; 
         let $i := <e> <a xmlns=\"\"/> <b xmlns=\"http://www.example.com/\"/> <c xmlns=\"http://www.example.com/Second\"/> </e> 
         return document{
                (count(in-scope-prefixes($i)), 
                 count(in-scope-prefixes(exactly-one($i/*[namespace-uri() eq \"\"]))), 
                 count(in-scope-prefixes(exactly-one($i/b))), 
                 count(in-scope-prefixes(exactly-one($i/*[namespace-uri() eq \"http://www.example.com/Second\"]))), 
                $i)}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"2 1 2 2<e xmlns=\"http://www.example.com/\"><a xmlns=\"\"/><b/><c xmlns=\"http://www.example.com/Second\"/></e>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-InScopePrefixesFunc-29'(_Config) ->
   Qry = "declare default element namespace \"http://www.example.com/\"; <a2/>/element e { element {QName(\"\", \"a\")} {} }",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e xmlns=\"http://www.example.com/\"><a xmlns=\"\"/></e>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-InScopePrefixesFunc-30'(_Config) ->
   Qry = "declare default element namespace \"http://www.example.com/\"; <a2 xmlns:p=\"http://ns.example.com/foo\"/>/element e { element {QName(\"http://example.com/2\", \"p:a\")} {} }",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e xmlns=\"http://www.example.com/\"><p:a xmlns:p=\"http://example.com/2\"/></e>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
