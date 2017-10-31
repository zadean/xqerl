-module('method_xml_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['K2-Serialization-1'/1]).
-export(['K2-Serialization-2'/1]).
-export(['K2-Serialization-3'/1]).
-export(['K2-Serialization-4'/1]).
-export(['K2-Serialization-5'/1]).
-export(['K2-Serialization-6'/1]).
-export(['K2-Serialization-7'/1]).
-export(['K2-Serialization-7a'/1]).
-export(['K2-Serialization-8'/1]).
-export(['K2-Serialization-8a'/1]).
-export(['K2-Serialization-9'/1]).
-export(['K2-Serialization-10'/1]).
-export(['K2-Serialization-11'/1]).
-export(['K2-Serialization-12'/1]).
-export(['K2-Serialization-13'/1]).
-export(['K2-Serialization-14'/1]).
-export(['K2-Serialization-15'/1]).
-export(['K2-Serialization-16'/1]).
-export(['K2-Serialization-17'/1]).
-export(['K2-Serialization-18'/1]).
-export(['K2-Serialization-20'/1]).
-export(['K2-Serialization-21'/1]).
-export(['K2-Serialization-22'/1]).
-export(['K2-Serialization-23'/1]).
-export(['K2-Serialization-24'/1]).
-export(['K2-Serialization-25'/1]).
-export(['K2-Serialization-26'/1]).
-export(['K2-Serialization-27'/1]).
-export(['K2-Serialization-28'/1]).
-export(['K2-Serialization-29'/1]).
-export(['K2-Serialization-30'/1]).
-export(['K2-Serialization-31'/1]).
-export(['K2-Serialization-32'/1]).
-export(['K2-Serialization-33'/1]).
-export(['K2-Serialization-34'/1]).
-export(['K2-Serialization-35'/1]).
-export(['K2-Serialization-36'/1]).
-export(['K2-Serialization-37'/1]).
-export(['K2-Serialization-38'/1]).
-export(['K2-Serialization-39'/1]).
-export(['Serialization-xml-01'/1]).
-export(['Serialization-xml-02'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'K2-Serialization-1',
   'K2-Serialization-2',
   'K2-Serialization-3',
   'K2-Serialization-4',
   'K2-Serialization-5',
   'K2-Serialization-6',
   'K2-Serialization-7',
   'K2-Serialization-7a',
   'K2-Serialization-8',
   'K2-Serialization-8a',
   'K2-Serialization-9',
   'K2-Serialization-10',
   'K2-Serialization-11',
   'K2-Serialization-12',
   'K2-Serialization-13',
   'K2-Serialization-14',
   'K2-Serialization-15',
   'K2-Serialization-16',
   'K2-Serialization-17',
   'K2-Serialization-18',
   'K2-Serialization-20',
   'K2-Serialization-21',
   'K2-Serialization-22',
   'K2-Serialization-23',
   'K2-Serialization-24',
   'K2-Serialization-25',
   'K2-Serialization-26',
   'K2-Serialization-27',
   'K2-Serialization-28',
   'K2-Serialization-29',
   'K2-Serialization-30',
   'K2-Serialization-31',
   'K2-Serialization-32',
   'K2-Serialization-33',
   'K2-Serialization-34',
   'K2-Serialization-35',
   'K2-Serialization-36',
   'K2-Serialization-37',
   'K2-Serialization-38',
   'K2-Serialization-39',
   'Serialization-xml-01',
   'Serialization-xml-02'].
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
'K2-Serialization-1'(_Config) ->
   Qry = "attribute name {<anElement/>}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"SENR0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Serialization-2'(_Config) ->
   Qry = "<e/>, attribute name {<anElement/>}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"SENR0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Serialization-3'(_Config) ->
   Qry = "attribute name {<anElement/>}, <e/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"SENR0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Serialization-4'(_Config) ->
   Qry = "<e/>, attribute name {<anElement/>}, <e/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"SENR0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Serialization-5'(_Config) ->
   Qry = "<a>&#xD;&#x85;&#x2028;</a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\" flags=\"i\">&amp;#xD;&amp;#x85;&amp;#x2028;</serialization-matches>", Res]),
   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">&amp;#13;&amp;#133;&amp;#8232;</serialization-matches>", Res])]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Serialization-6'(_Config) ->
   Qry = "<a attr=\"&#xD;&#xA;&#x9;&#x85;&#x2028;\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\" flags=\"i\">&amp;#xD;&amp;#xA;&amp;#x9;&amp;#x85;&amp;#x2028;</serialization-matches>", Res]),
   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">&amp;#13;&amp;#10;&amp;#9;&amp;#133;&amp;#8232;</serialization-matches>", Res])]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Serialization-7'(_Config) ->
   {skip,"XML 1.1"}.
'K2-Serialization-7a'(_Config) ->
   Qry = "<a>{codepoints-to-string(1 to 31)}</a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"FOCH0001") of 
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
'K2-Serialization-8'(_Config) ->
   {skip,"XML 1.1"}.
'K2-Serialization-8a'(_Config) ->
   Qry = "<a attr=\"{codepoints-to-string(1 to 31)}\"></a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Serialization-9'(_Config) ->
   Qry = "<a attr=\"{codepoints-to-string(127 to 159)}\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\" flags=\"i\">&amp;#x7f;&amp;#x80;&amp;#x81;&amp;#x82;&amp;#x83;&amp;#x84;&amp;#x85;&amp;#x86;&amp;#x87;&amp;#x88;&amp;#x89;&amp;#x8a;&amp;#x8b;&amp;#x8c;&amp;#x8d;&amp;#x8e;&amp;#x8f;&amp;#x90;&amp;#x91;&amp;#x92;&amp;#x93;&amp;#x94;&amp;#x95;&amp;#x96;&amp;#x97;&amp;#x98;&amp;#x99;&amp;#x9a;&amp;#x9b;&amp;#x9c;&amp;#x9d;&amp;#x9e;&amp;#x9f;</serialization-matches>", Res]),
   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">&amp;#127;&amp;#128;&amp;#129;&amp;#130;&amp;#131;&amp;#132;&amp;#133;&amp;#134;&amp;#135;&amp;#136;&amp;#137;&amp;#138;&amp;#139;&amp;#140;&amp;#141;&amp;#142;&amp;#143;&amp;#144;&amp;#145;&amp;#146;&amp;#147;&amp;#148;&amp;#149;&amp;#150;&amp;#151;&amp;#152;&amp;#153;&amp;#154;&amp;#155;&amp;#156;&amp;#157;&amp;#158;&amp;#159;</serialization-matches>", Res])]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Serialization-10'(_Config) ->
   Qry = "<a>{codepoints-to-string(127 to 159)}</a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\" flags=\"i\">&amp;#x7f;&amp;#x80;&amp;#x81;&amp;#x82;&amp;#x83;&amp;#x84;&amp;#x85;&amp;#x86;&amp;#x87;&amp;#x88;&amp;#x89;&amp;#x8a;&amp;#x8b;&amp;#x8c;&amp;#x8d;&amp;#x8e;&amp;#x8f;&amp;#x90;&amp;#x91;&amp;#x92;&amp;#x93;&amp;#x94;&amp;#x95;&amp;#x96;&amp;#x97;&amp;#x98;&amp;#x99;&amp;#x9a;&amp;#x9b;&amp;#x9c;&amp;#x9d;&amp;#x9e;&amp;#x9f;</serialization-matches>", Res]),
   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">&amp;#127;&amp;#128;&amp;#129;&amp;#130;&amp;#131;&amp;#132;&amp;#133;&amp;#134;&amp;#135;&amp;#136;&amp;#137;&amp;#138;&amp;#139;&amp;#140;&amp;#141;&amp;#142;&amp;#143;&amp;#144;&amp;#145;&amp;#146;&amp;#147;&amp;#148;&amp;#149;&amp;#150;&amp;#151;&amp;#152;&amp;#153;&amp;#154;&amp;#155;&amp;#156;&amp;#157;&amp;#158;&amp;#159;</serialization-matches>", Res])]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Serialization-11'(_Config) ->
   Qry = "\"a&#xD;aa&#xD;&#xA;a&#xD;&#xA;\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\" flags=\"i\">a&amp;#xD;aa&amp;#xD;</serialization-matches>", Res]),
   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">a&amp;#13;aa&amp;#13;</serialization-matches>", Res])]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end,
   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">\\r?\\n.*\\r?\\n</serialization-matches>", Res])]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Serialization-12'(_Config) ->
   Qry = "<e> <a:a xmlns:a=\"http://www.example.com/A\" a:a=\"value\"/> <b:a xmlns:b=\"http://www.example.com/A\" b:a=\"value\"/> </e>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e><a:a xmlns:a=\"http://www.example.com/A\" a:a=\"value\"/><b:a xmlns:b=\"http://www.example.com/A\" b:a=\"value\"/></e>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Serialization-13'(_Config) ->
   {skip,"serialization"}.
'K2-Serialization-14'(_Config) ->
   {skip,"serialization"}.
'K2-Serialization-15'(_Config) ->
   {skip,"serialization"}.
'K2-Serialization-16'(_Config) ->
   {skip,"serialization"}.
'K2-Serialization-17'(_Config) ->
   {skip,"serialization"}.
'K2-Serialization-18'(_Config) ->
   {skip,"serialization"}.
'K2-Serialization-20'(_Config) ->
   {skip,"serialization"}.
'K2-Serialization-21'(_Config) ->
   {skip,"serialization"}.
'K2-Serialization-22'(_Config) ->
   {skip,"serialization"}.
'K2-Serialization-23'(_Config) ->
   {skip,"serialization"}.
'K2-Serialization-24'(_Config) ->
   {skip,"serialization"}.
'K2-Serialization-25'(_Config) ->
   {skip,"serialization"}.
'K2-Serialization-26'(_Config) ->
   {skip,"serialization"}.
'K2-Serialization-27'(_Config) ->
   {skip,"serialization"}.
'K2-Serialization-28'(_Config) ->
   {skip,"serialization"}.
'K2-Serialization-29'(_Config) ->
   {skip,"serialization"}.
'K2-Serialization-30'(_Config) ->
   {skip,"serialization"}.
'K2-Serialization-31'(_Config) ->
   {skip,"serialization"}.
'K2-Serialization-32'(_Config) ->
   {skip,"serialization"}.
'K2-Serialization-33'(_Config) ->
   {skip,"serialization"}.
'K2-Serialization-34'(_Config) ->
   {skip,"serialization"}.
'K2-Serialization-35'(_Config) ->
   {skip,"serialization"}.
'K2-Serialization-36'(_Config) ->
   {skip,"serialization"}.
'K2-Serialization-37'(_Config) ->
   {skip,"serialization"}.
'K2-Serialization-38'(_Config) ->
   {skip,"serialization"}.
'K2-Serialization-39'(_Config) ->
   {skip,"serialization"}.
'Serialization-xml-01'(_Config) ->
   Qry = "
      	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"xml\";
        declare option output:item-separator \"|\";
        [1, 2, 3, 4, 5]
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">&lt;\\?xml[^&gt;]+&gt;1\\|2\\|3\\|4\\|5$</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-xml-02'(_Config) ->
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"xml\";
        map { } 

      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"SENR0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
