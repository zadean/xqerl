-module('prod_DirAttributeList_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['Constr-attr-syntax-1'/1]).
-export(['Constr-attr-syntax-2'/1]).
-export(['Constr-attr-syntax-3'/1]).
-export(['Constr-attr-syntax-4'/1]).
-export(['Constr-attr-syntax-5'/1]).
-export(['Constr-attr-syntax-6'/1]).
-export(['Constr-attr-syntax-7'/1]).
-export(['Constr-attr-syntax-8'/1]).
-export(['Constr-attr-syntax-9'/1]).
-export(['Constr-attr-syntax-10'/1]).
-export(['Constr-attr-parent-1'/1]).
-export(['Constr-attr-nsdecl-1'/1]).
-export(['Constr-attr-nsdecl-2'/1]).
-export(['Constr-attr-nspre-1'/1]).
-export(['Constr-attr-nspre-2'/1]).
-export(['Constr-attr-nsprein-1'/1]).
-export(['Constr-attr-nsprein-2'/1]).
-export(['Constr-attr-nsprein-3'/1]).
-export(['Constr-attr-nsprein-4'/1]).
-export(['Constr-attr-distnames-1'/1]).
-export(['Constr-attr-distnames-2'/1]).
-export(['Constr-attr-distnames-3'/1]).
-export(['Constr-attr-distnames-4'/1]).
-export(['Constr-attr-content-1'/1]).
-export(['Constr-attr-content-2'/1]).
-export(['Constr-attr-content-3'/1]).
-export(['Constr-attr-content-4'/1]).
-export(['Constr-attr-content-5'/1]).
-export(['Constr-attr-ws-1'/1]).
-export(['Constr-attr-ws-2'/1]).
-export(['Constr-attr-ws-3'/1]).
-export(['Constr-attr-ws-4'/1]).
-export(['Constr-attr-ws-5'/1]).
-export(['Constr-attr-entref-1'/1]).
-export(['Constr-attr-entref-2'/1]).
-export(['Constr-attr-charref-1'/1]).
-export(['Constr-attr-enclexpr-1'/1]).
-export(['Constr-attr-enclexpr-2'/1]).
-export(['Constr-attr-enclexpr-3'/1]).
-export(['Constr-attr-enclexpr-4'/1]).
-export(['Constr-attr-enclexpr-5'/1]).
-export(['Constr-attr-enclexpr-6'/1]).
-export(['Constr-attr-enclexpr-7'/1]).
-export(['Constr-attr-enclexpr-8'/1]).
-export(['Constr-attr-enclexpr-9'/1]).
-export(['Constr-attr-enclexpr-10'/1]).
-export(['Constr-attr-enclexpr-11'/1]).
-export(['Constr-attr-enclexpr-12'/1]).
-export(['Constr-attr-enclexpr-13'/1]).
-export(['Constr-attr-enclexpr-14'/1]).
-export(['Constr-attr-enclexpr-15'/1]).
-export(['Constr-attr-enclexpr-16'/1]).
-export(['Constr-attr-id-1'/1]).
-export(['Constr-attr-id-2'/1]).
-export(['K2-DirectConElemAttr-1'/1]).
-export(['K2-DirectConElemAttr-2'/1]).
-export(['K2-DirectConElemAttr-3'/1]).
-export(['K2-DirectConElemAttr-4'/1]).
-export(['K2-DirectConElemAttr-4a'/1]).
-export(['K2-DirectConElemAttr-5'/1]).
-export(['K2-DirectConElemAttr-6'/1]).
-export(['K2-DirectConElemAttr-6a'/1]).
-export(['K2-DirectConElemAttr-7'/1]).
-export(['K2-DirectConElemAttr-8'/1]).
-export(['K2-DirectConElemAttr-9'/1]).
-export(['K2-DirectConElemAttr-10'/1]).
-export(['K2-DirectConElemAttr-11'/1]).
-export(['K2-DirectConElemAttr-12'/1]).
-export(['K2-DirectConElemAttr-13'/1]).
-export(['K2-DirectConElemAttr-14'/1]).
-export(['K2-DirectConElemAttr-15'/1]).
-export(['K2-DirectConElemAttr-16'/1]).
-export(['K2-DirectConElemAttr-17'/1]).
-export(['K2-DirectConElemAttr-18'/1]).
-export(['K2-DirectConElemAttr-19'/1]).
-export(['K2-DirectConElemAttr-20'/1]).
-export(['K2-DirectConElemAttr-21'/1]).
-export(['K2-DirectConElemAttr-22'/1]).
-export(['K2-DirectConElemAttr-23'/1]).
-export(['K2-DirectConElemAttr-24'/1]).
-export(['K2-DirectConElemAttr-25'/1]).
-export(['K2-DirectConElemAttr-26'/1]).
-export(['K2-DirectConElemAttr-27'/1]).
-export(['K2-DirectConElemAttr-28'/1]).
-export(['K2-DirectConElemAttr-29'/1]).
-export(['K2-DirectConElemAttr-30'/1]).
-export(['K2-DirectConElemAttr-31'/1]).
-export(['K2-DirectConElemAttr-32'/1]).
-export(['K2-DirectConElemAttr-33'/1]).
-export(['K2-DirectConElemAttr-34'/1]).
-export(['K2-DirectConElemAttr-35'/1]).
-export(['K2-DirectConElemAttr-36'/1]).
-export(['K2-DirectConElemAttr-37'/1]).
-export(['K2-DirectConElemAttr-38'/1]).
-export(['K2-DirectConElemAttr-39'/1]).
-export(['K2-DirectConElemAttr-40'/1]).
-export(['K2-DirectConElemAttr-41'/1]).
-export(['K2-DirectConElemAttr-42'/1]).
-export(['K2-DirectConElemAttr-43'/1]).
-export(['K2-DirectConElemAttr-44'/1]).
-export(['K2-DirectConElemAttr-45'/1]).
-export(['K2-DirectConElemAttr-46'/1]).
-export(['K2-DirectConElemAttr-47'/1]).
-export(['K2-DirectConElemAttr-48'/1]).
-export(['K2-DirectConElemAttr-49'/1]).
-export(['K2-DirectConElemAttr-50'/1]).
-export(['K2-DirectConElemAttr-51'/1]).
-export(['K2-DirectConElemAttr-52'/1]).
-export(['K2-DirectConElemAttr-53'/1]).
-export(['K2-DirectConElemAttr-54'/1]).
-export(['K2-DirectConElemAttr-55'/1]).
-export(['K2-DirectConElemAttr-56'/1]).
-export(['K2-DirectConElemAttr-57'/1]).
-export(['K2-DirectConElemAttr-58'/1]).
-export(['K2-DirectConElemAttr-59'/1]).
-export(['K2-DirectConElemAttr-60'/1]).
-export(['K2-DirectConElemAttr-61'/1]).
-export(['K2-DirectConElemAttr-62'/1]).
-export(['K2-DirectConElemAttr-63'/1]).
-export(['K2-DirectConElemAttr-64'/1]).
-export(['K2-DirectConElemAttr-65'/1]).
-export(['K2-DirectConElemAttr-66'/1]).
-export(['K2-DirectConElemAttr-67'/1]).
-export(['K2-DirectConElemAttr-68'/1]).
-export(['K2-DirectConElemAttr-69'/1]).
-export(['K2-DirectConElemAttr-70'/1]).
-export(['K2-DirectConElemAttr-71'/1]).
-export(['K2-DirectConElemAttr-72'/1]).
-export(['K2-DirectConElemAttr-73'/1]).
-export(['K2-DirectConElemAttr-74'/1]).
-export(['K2-DirectConElemAttr-75'/1]).
-export(['K2-DirectConElemAttr-76'/1]).
-export(['DirectConElemAttr-1'/1]).
-export(['DirectConElemAttr-2'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'Constr-attr-syntax-1',
   'Constr-attr-syntax-2',
   'Constr-attr-syntax-3',
   'Constr-attr-syntax-4',
   'Constr-attr-syntax-5',
   'Constr-attr-syntax-6',
   'Constr-attr-syntax-7',
   'Constr-attr-syntax-8',
   'Constr-attr-syntax-9',
   'Constr-attr-syntax-10',
   'Constr-attr-parent-1',
   'Constr-attr-nsdecl-1',
   'Constr-attr-nsdecl-2',
   'Constr-attr-nspre-1',
   'Constr-attr-nspre-2',
   'Constr-attr-nsprein-1',
   'Constr-attr-nsprein-2',
   'Constr-attr-nsprein-3',
   'Constr-attr-nsprein-4',
   'Constr-attr-distnames-1',
   'Constr-attr-distnames-2',
   'Constr-attr-distnames-3',
   'Constr-attr-distnames-4',
   'Constr-attr-content-1',
   'Constr-attr-content-2',
   'Constr-attr-content-3',
   'Constr-attr-content-4',
   'Constr-attr-content-5',
   'Constr-attr-ws-1',
   'Constr-attr-ws-2',
   'Constr-attr-ws-3',
   'Constr-attr-ws-4',
   'Constr-attr-ws-5',
   'Constr-attr-entref-1',
   'Constr-attr-entref-2',
   'Constr-attr-charref-1',
   'Constr-attr-enclexpr-1',
   'Constr-attr-enclexpr-2',
   'Constr-attr-enclexpr-3',
   'Constr-attr-enclexpr-4',
   'Constr-attr-enclexpr-5',
   'Constr-attr-enclexpr-6',
   'Constr-attr-enclexpr-7',
   'Constr-attr-enclexpr-8',
   'Constr-attr-enclexpr-9',
   'Constr-attr-enclexpr-10',
   'Constr-attr-enclexpr-11',
   'Constr-attr-enclexpr-12',
   'Constr-attr-enclexpr-13',
   'Constr-attr-enclexpr-14',
   'Constr-attr-enclexpr-15',
   'Constr-attr-enclexpr-16',
   'Constr-attr-id-1',
   'Constr-attr-id-2',
   'K2-DirectConElemAttr-1',
   'K2-DirectConElemAttr-2',
   'K2-DirectConElemAttr-3',
   'K2-DirectConElemAttr-4',
   'K2-DirectConElemAttr-4a',
   'K2-DirectConElemAttr-5',
   'K2-DirectConElemAttr-6',
   'K2-DirectConElemAttr-6a',
   'K2-DirectConElemAttr-7',
   'K2-DirectConElemAttr-8',
   'K2-DirectConElemAttr-9',
   'K2-DirectConElemAttr-10',
   'K2-DirectConElemAttr-11',
   'K2-DirectConElemAttr-12',
   'K2-DirectConElemAttr-13',
   'K2-DirectConElemAttr-14',
   'K2-DirectConElemAttr-15',
   'K2-DirectConElemAttr-16',
   'K2-DirectConElemAttr-17',
   'K2-DirectConElemAttr-18',
   'K2-DirectConElemAttr-19',
   'K2-DirectConElemAttr-20',
   'K2-DirectConElemAttr-21',
   'K2-DirectConElemAttr-22',
   'K2-DirectConElemAttr-23',
   'K2-DirectConElemAttr-24',
   'K2-DirectConElemAttr-25',
   'K2-DirectConElemAttr-26',
   'K2-DirectConElemAttr-27',
   'K2-DirectConElemAttr-28',
   'K2-DirectConElemAttr-29',
   'K2-DirectConElemAttr-30',
   'K2-DirectConElemAttr-31',
   'K2-DirectConElemAttr-32',
   'K2-DirectConElemAttr-33',
   'K2-DirectConElemAttr-34',
   'K2-DirectConElemAttr-35',
   'K2-DirectConElemAttr-36',
   'K2-DirectConElemAttr-37',
   'K2-DirectConElemAttr-38',
   'K2-DirectConElemAttr-39',
   'K2-DirectConElemAttr-40',
   'K2-DirectConElemAttr-41',
   'K2-DirectConElemAttr-42',
   'K2-DirectConElemAttr-43',
   'K2-DirectConElemAttr-44',
   'K2-DirectConElemAttr-45',
   'K2-DirectConElemAttr-46',
   'K2-DirectConElemAttr-47',
   'K2-DirectConElemAttr-48',
   'K2-DirectConElemAttr-49',
   'K2-DirectConElemAttr-50',
   'K2-DirectConElemAttr-51',
   'K2-DirectConElemAttr-52',
   'K2-DirectConElemAttr-53',
   'K2-DirectConElemAttr-54',
   'K2-DirectConElemAttr-55',
   'K2-DirectConElemAttr-56',
   'K2-DirectConElemAttr-57',
   'K2-DirectConElemAttr-58',
   'K2-DirectConElemAttr-59',
   'K2-DirectConElemAttr-60',
   'K2-DirectConElemAttr-61',
   'K2-DirectConElemAttr-62',
   'K2-DirectConElemAttr-63',
   'K2-DirectConElemAttr-64',
   'K2-DirectConElemAttr-65',
   'K2-DirectConElemAttr-66',
   'K2-DirectConElemAttr-67',
   'K2-DirectConElemAttr-68',
   'K2-DirectConElemAttr-69',
   'K2-DirectConElemAttr-70',
   'K2-DirectConElemAttr-71',
   'K2-DirectConElemAttr-72',
   'K2-DirectConElemAttr-73',
   'K2-DirectConElemAttr-74',
   'K2-DirectConElemAttr-75',
   'K2-DirectConElemAttr-76',
   'DirectConElemAttr-1',
   'DirectConElemAttr-2'].
environment('empty') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('atomic') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{resources, []},
{modules, []}
];
environment('atomic-xq') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-mod') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xquery-3.1/QT3-test-suite/docs/works-mod.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xquery-3.1/QT3-test-suite/docs/works.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('staff') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xquery-3.1/QT3-test-suite/docs/staff.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-and-staff') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xquery-3.1/QT3-test-suite/docs/works.xml","$works",""},
{"C:/git/zadean/xquery-3.1/QT3-test-suite/docs/staff.xml","$staff",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('auction') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xquery-3.1/QT3-test-suite/docs/auction.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
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
{sources, [{"C:/git/zadean/xquery-3.1/QT3-test-suite/docs/QName-source.xml",".",""}]},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/QName-schema.xsd","http://www.example.com/QNameXSD"}]},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
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
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
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
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
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
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
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
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"},
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
].
'Constr-attr-syntax-1'(_Config) ->
   Qry = "<elem attr=\"value\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem attr=\"value\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-attr-syntax-2'(_Config) ->
   Qry = "<elem attr1=\"val1\" attr2=\"val2\" attr3=\"val3\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem attr1=\"val1\" attr2=\"val2\" attr3=\"val3\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-attr-syntax-3'(_Config) ->
   Qry = "<elem attr='value'/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem attr=\"value\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-attr-syntax-4'(_Config) ->
   Qry = "<elem attr=''''/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem attr=\"'\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-attr-syntax-5'(_Config) ->
   Qry = "<elem attr=\"\"\"\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem attr=\"&quot;\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-attr-syntax-6'(_Config) ->
   Qry = "<elem attr='value\"/>",
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
'Constr-attr-syntax-7'(_Config) ->
   Qry = "<elem attr=\"value'/>",
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
'Constr-attr-syntax-8'(_Config) ->
   Qry = "<elem attr1=\"val1\" attr2=\"val2\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem attr1=\"val1\" attr2=\"val2\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-attr-syntax-9'(_Config) ->
   Qry = "<elem attr = \"value\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem attr=\"value\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-attr-syntax-10'(_Config) ->
   Qry = "<elem attr=\"value\" />",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem attr=\"value\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-attr-parent-1'(_Config) ->
   Qry = "for $x in <elem attr=\"value\"/> return $x is $x/@attr/..",
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
'Constr-attr-nsdecl-1'(_Config) ->
   Qry = "fn:count((<elem xmlns:foo=\"http://ns.example.com/uri\"/>)/@*)",
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
'Constr-attr-nsdecl-2'(_Config) ->
   Qry = "fn:count((<elem xmlns=\"http://ns.example.com/uri\"/>)/@*)",
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
'Constr-attr-nspre-1'(_Config) ->
   Qry = "declare namespace foo=\"http://www.w3.org/XQueryTest/Construct\"; <elem foo:attr=\"value\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem xmlns:foo=\"http://www.w3.org/XQueryTest/Construct\" foo:attr=\"value\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-attr-nspre-2'(_Config) ->
   Qry = "<elem xmlns:foo=\"http://www.w3.org/XQueryTest/Construct\"><child foo:attr=\"value\"/></elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem xmlns:foo=\"http://www.w3.org/XQueryTest/Construct\"><child foo:attr=\"value\"/></elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-attr-nsprein-1'(_Config) ->
   Qry = "<elem xmlns:foo=\"http://www.w3.org/XQueryTest/Construct\" foo:attr=\"value\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem xmlns:foo=\"http://www.w3.org/XQueryTest/Construct\" foo:attr=\"value\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-attr-nsprein-2'(_Config) ->
   Qry = "<elem foo:attr=\"value\" xmlns:foo=\"http://www.w3.org/XQueryTest/Construct\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem xmlns:foo=\"http://www.w3.org/XQueryTest/Construct\" foo:attr=\"value\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-attr-nsprein-3'(_Config) ->
   Qry = "<elem att=\"{<p:e/>/namespace-uri()}\" xmlns:p=\"http://ns.example.com/uri\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem att=\"http://ns.example.com/uri\" xmlns:p=\"http://ns.example.com/uri\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-attr-nsprein-4'(_Config) ->
   Qry = "<elem att=\"{<e2 a2=\"{<e3 a3=\"{<p:e/>/namespace-uri()}\"></e3>/@a3}\"></e2>/@a2}\" 
                                     xmlns:p=\"http://ns.example.com/uri\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem att=\"http://ns.example.com/uri\" xmlns:p=\"http://ns.example.com/uri\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-attr-distnames-1'(_Config) ->
   Qry = "<elem attr=\"val1\" attr=\"val2\" attr2=\"val3\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0040") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-attr-distnames-2'(_Config) ->
   Qry = "<elem attr=\"val1\" attr2=\"val2\" attr=\"val3\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0040") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-attr-distnames-3'(_Config) ->
   Qry = "<elem attr1=\"val1\" attr=\"val2\" attr2=\"val3\" attr=\"val4\" attr3=\"val5\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0040") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-attr-distnames-4'(_Config) ->
   Qry = "<elem xmlns:foo=\"http://www.w3.org/XQueryTest/Construct\" xmlns:bar=\"http://www.w3.org/XQueryTest/Construct\" foo:attr=\"val1\" bar:attr=\"val2\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0040") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-attr-content-1'(_Config) ->
   Qry = "<elem attr=\"abxxyz123890!@#$%^*()[]\\|?/>:;\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<elem attr=\"abxxyz123890!@#$%^*()[]\\|?/&gt;:;\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_xml(Res,"<elem attr=\"abxxyz123890!@#$%^*()[]\\|?/>:;\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-attr-content-2'(_Config) ->
   Qry = "<elem attr=\"{\"/>",
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
'Constr-attr-content-3'(_Config) ->
   Qry = "<elem attr=\"}\"/>",
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
'Constr-attr-content-4'(_Config) ->
   Qry = "<elem attr=\"<\"/>",
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
'Constr-attr-content-5'(_Config) ->
   Qry = "<elem attr=\"&\"/>",
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
'Constr-attr-ws-1'(_Config) ->
   Qry = "<elem attr=\" \"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem attr=\" \"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-attr-ws-2'(_Config) ->
   Qry = "<elem attr=\" \"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem attr=\" \"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-attr-ws-3'(_Config) ->
   Qry = "<elem attr=\"&#xd;\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem attr=\"&#xD;\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-attr-ws-4'(_Config) ->
   Qry = "<elem attr=\"&#xa;\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem attr=\"&#xA;\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-attr-ws-5'(_Config) ->
   Qry = "<elem attr=\"&#x9;\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem attr=\"&#x9;\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-attr-entref-1'(_Config) ->
   Qry = "<elem attr=\"&amp;&lt;&gt;\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem attr=\"&amp;&lt;&gt;\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-attr-entref-2'(_Config) ->
   Qry = "fn:string-length(string((<elem attr=\"&amp;&lt;&gt;\"/>)/@attr))",
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
'Constr-attr-charref-1'(_Config) ->
   Qry = "<elem attr=\"&#x30;&#x31;&#x32;\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem attr=\"012\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-attr-enclexpr-1'(_Config) ->
   Qry = "<elem attr=\"{1,'string',3.14,xs:float('1.2345e-2'),xs:dateTime('2002-04-02T12:00:00-01:00')}\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem attr=\"1 string 3.14 0.012345 2002-04-02T12:00:00-01:00\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-attr-enclexpr-2'(_Config) ->
   Qry = "<elem attr=\"{<elem>123</elem>, (<elem attr='456'/>)/@attr, (<elem>789</elem>)/text()}\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem attr=\"123 456 789\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-attr-enclexpr-3'(_Config) ->
   Qry = "<elem attr=\"{1,'',2}\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem attr=\"1  2\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-attr-enclexpr-4'(_Config) ->
   Qry = "<elem attr=\"{1,<a/>,2}\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem attr=\"1  2\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-attr-enclexpr-5'(_Config) ->
   Qry = "<elem attr=\"123{456}\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem attr=\"123456\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-attr-enclexpr-6'(_Config) ->
   Qry = "<elem attr=\"{123}456\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem attr=\"123456\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-attr-enclexpr-7'(_Config) ->
   Qry = "<elem attr=\"1{2,3}{4,5}6{<a>7</a>}{<a>8</a>}9\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem attr=\"12 34 56789\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-attr-enclexpr-8'(_Config) ->
   Qry = "<elem attr=\"{(1,2)}{3}\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem attr=\"1 23\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-attr-enclexpr-9'(_Config) ->
   {skip,"XQ10 XQ30"}.
'Constr-attr-enclexpr-10'(_Config) ->
   Qry = "<elem attr=\"z{}z\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem attr=\"zz\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-attr-enclexpr-11'(_Config) ->
   Qry = "<elem attr=\"z{ }z\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem attr=\"zz\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-attr-enclexpr-12'(_Config) ->
   Qry = "<elem attr=\"z{ (:comment:) }z\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem attr=\"zz\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-attr-enclexpr-13'(_Config) ->
   Qry = "<e attr=\"abc{ 23 (:\":) }xyz\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e attr=\"abc23xyz\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-attr-enclexpr-14'(_Config) ->
   Qry = "<e attr=\"abc{ 23 (:{:) }xyz\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e attr=\"abc23xyz\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-attr-enclexpr-15'(_Config) ->
   Qry = "<e attr=\"abc{ 23 (:}:) }xyz\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e attr=\"abc23xyz\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-attr-enclexpr-16'(_Config) ->
   Qry = "<e attr=\"abc{ (# }xyz\"/>",
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
'Constr-attr-id-1'(_Config) ->
   Qry = "<elem xml:id=\"ncname\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem xml:id=\"ncname\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-attr-id-2'(_Config) ->
   Qry = "<elem xml:id=\" a{'b c d',' '}\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<elem xml:id=\"ab c d\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XQDY0091") of 
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
'K2-DirectConElemAttr-1'(_Config) ->
   Qry = "<ncname (:a misplaced comment:)/>",
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
'K2-DirectConElemAttr-2'(_Config) ->
   Qry = "<(:a misplaced comment:)ncname/>",
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
'K2-DirectConElemAttr-3'(_Config) ->
   Qry = "<ncname></ ncname>",
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
'K2-DirectConElemAttr-4'(_Config) ->
   {skip,"XQ10"}.
'K2-DirectConElemAttr-4a'(_Config) ->
   Qry = "<ncname></ncname (:a misplaced comment:)>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XQST0118") of 
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
'K2-DirectConElemAttr-5'(_Config) ->
   Qry = "<ncname>content</ncname > = 'content'",
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
'K2-DirectConElemAttr-6'(_Config) ->
   {skip,"XQ10"}.
'K2-DirectConElemAttr-6a'(_Config) ->
   Qry = "<ncname></ncnameNOTBALANCED>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0118") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemAttr-7'(_Config) ->
   Qry = "<![CDATA[a string]]>",
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
'K2-DirectConElemAttr-8'(_Config) ->
   Qry = "<foo attr=\"\"\"/>",
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
'K2-DirectConElemAttr-9'(_Config) ->
   Qry = "<foo attr='''/>",
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
'K2-DirectConElemAttr-10'(_Config) ->
   Qry = "<foo attr=\"content<content\"/>",
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
'K2-DirectConElemAttr-11'(_Config) ->
   Qry = "<foo attr=\"content}content\"/>",
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
'K2-DirectConElemAttr-12'(_Config) ->
   Qry = "<foo attr=\"content{1\"/>",
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
'K2-DirectConElemAttr-13'(_Config) ->
   Qry = "<foo attr=\"{{{\"",
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
'K2-DirectConElemAttr-14'(_Config) ->
   Qry = "<foo attr=\"{\"",
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
'K2-DirectConElemAttr-15'(_Config) ->
   Qry = "<foo attr=\"{",
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
'K2-DirectConElemAttr-16'(_Config) ->
   Qry = "<e attr=\"content}\"/>",
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
'K2-DirectConElemAttr-17'(_Config) ->
   Qry = "<foo attr=\"",
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
'K2-DirectConElemAttr-18'(_Config) ->
   Qry = "<foo attr=\"<foo/>\"/>",
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
'K2-DirectConElemAttr-19'(_Config) ->
   Qry = "<foo attr=\"<?target content?>\"/>",
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
'K2-DirectConElemAttr-20'(_Config) ->
   Qry = "<foo attr=\"<!-- a comment-->\"/>",
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
'K2-DirectConElemAttr-21'(_Config) ->
   Qry = "<foo attr=\"<![CDATA[content]]>\"/>",
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
'K2-DirectConElemAttr-22'(_Config) ->
   Qry = "<foo attr=",
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
'K2-DirectConElemAttr-23'(_Config) ->
   Qry = "<elem attr=\"content'/>",
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
'K2-DirectConElemAttr-24'(_Config) ->
   Qry = "<elem attr='content\"/>",
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
'K2-DirectConElemAttr-25'(_Config) ->
   Qry = "<foo (:comment :)/>",
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
'K2-DirectConElemAttr-26'(_Config) ->
   Qry = "<foo attr=(:comment:)\"value\" />",
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
'K2-DirectConElemAttr-27'(_Config) ->
   Qry = "<foo attr(:comment:)=\"value\" />",
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
'K2-DirectConElemAttr-28'(_Config) ->
   Qry = "<foo attr=\"value\" (:comment:) attr2=\"value\" />",
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
'K2-DirectConElemAttr-29'(_Config) ->
   Qry = "string(<foo attr=\"\"\"\"/>/@attr)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "\"") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemAttr-30'(_Config) ->
   Qry = "string(<foo attr='\"\"'/>/@attr)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "\"\"") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemAttr-31'(_Config) ->
   Qry = "string(<foo attr=\"''\"/>/@attr)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "''") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemAttr-32'(_Config) ->
   Qry = "string(<foo attr=''''/>/@attr)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "'") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemAttr-33'(_Config) ->
   Qry = "<e attr=\"x{<e>a</e>, <e>b</e>, <e>c</e>, 1, 2, 3}y\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e attr=\"xa b c 1 2 3y\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemAttr-34'(_Config) ->
   Qry = "string(<elem attr=\"{comment {\" content \"}}\"/>/@attr)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, " content ") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemAttr-35'(_Config) ->
   Qry = "local-name(<elem attr=\"{comment {\" content \"}}\"/>/@attr)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "attr") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemAttr-36'(_Config) ->
   Qry = "string(<elem attr=\"{processing-instruction name {\" content \"}}\"/>/@attr)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "content ") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemAttr-37'(_Config) ->
   Qry = "local-name(<elem attr=\"{processing-instruction name {\" content \"}}\"/>/@attr)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "attr") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemAttr-38'(_Config) ->
   Qry = "local-name(<elem attr=\"{attribute name {\" content \"}}\"/>/@attr)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "attr") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemAttr-39'(_Config) ->
   Qry = "string(<elem attr=\"{attribute name {\" content \"}}\"/>/@attr)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, " content ") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemAttr-40'(_Config) ->
   Qry = "<elem attr1=\"\"\"\" attr2='''' attr3=\"''\" attr4='\"\"' attr5=\"'\" attr6='\"'/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem attr1=\"&quot;\" attr2=\"'\" attr3=\"''\" attr4=\"&quot;&quot;\" attr5=\"'\" attr6=\"&quot;\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemAttr-41'(_Config) ->
   Qry = "<foo attr=\"{<foo attr=\"foo\"/>}\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<foo attr=\"\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemAttr-42'(_Config) ->
   Qry = "<foo attr=\"{<!-- comment -->}\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<foo attr=\" comment \"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemAttr-43'(_Config) ->
   Qry = "<foo attr=\"{<?target dat a ?>}\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<foo attr=\"dat a \"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemAttr-44'(_Config) ->
   Qry = "declare base-uri \"http://example.com/level/file.ext\"; <e xml:base=\"../\">{ static-base-uri()}</e>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e xml:base=\"../\">http://example.com/level/file.ext</e>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemAttr-45'(_Config) ->
   Qry = "declare base-uri \"http://example.com/level/file.ext\"; <e xml:base=\"http://example.com/2/2\">{ static-base-uri()}</e>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e xml:base=\"http://example.com/2/2\">http://example.com/level/file.ext</e>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemAttr-46'(_Config) ->
   Qry = "<e> { <b attr=\"fo\" a=\"bo\"/>/@* } </e>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e attr=\"fo\" a=\"bo\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemAttr-47'(_Config) ->
   Qry = "data(<e foo=\"content\"/>/@*) instance of xs:untypedAtomic",
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
'K2-DirectConElemAttr-48'(_Config) ->
   Qry = "<a foo=\"1\"fb=\"1\"/>",
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
'K2-DirectConElemAttr-49'(_Config) ->
   Qry = "<a b=\"1\" c=\"1\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a b=\"1\" c=\"1\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemAttr-50'(_Config) ->
   Qry = "<a b=\"1\" c=\"1\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a b=\"1\" c=\"1\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemAttr-51'(_Config) ->
   Qry = "<a foo='1'fb='1'/>",
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
'K2-DirectConElemAttr-52'(_Config) ->
   Qry = "<a b='1' c='1'/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a b=\"1\" c=\"1\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemAttr-53'(_Config) ->
   Qry = "<a b=\"1\"/a=\"1\"/>",
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
'K2-DirectConElemAttr-54'(_Config) ->
   Qry = "<a b='1'/a='1'/>",
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
'K2-DirectConElemAttr-55'(_Config) ->
   Qry = "<a b=\"1\">a=\"1\"/>",
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
'K2-DirectConElemAttr-56'(_Config) ->
   Qry = "<a b='1'>a='1'/>",
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
'K2-DirectConElemAttr-57'(_Config) ->
   Qry = "<a attr=\"content\"",
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
'K2-DirectConElemAttr-58'(_Config) ->
   Qry = "<a attr='content'",
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
'K2-DirectConElemAttr-59'(_Config) ->
   Qry = "<a attr=\"content\"",
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
'K2-DirectConElemAttr-60'(_Config) ->
   Qry = "<a attr='content'",
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
'K2-DirectConElemAttr-61'(_Config) ->
   Qry = "<a attr='con",
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
'K2-DirectConElemAttr-62'(_Config) ->
   Qry = "<a attr=\"con",
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
'K2-DirectConElemAttr-63'(_Config) ->
   Qry = "<a attr=",
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
'K2-DirectConElemAttr-64'(_Config) ->
   Qry = "<a attr=",
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
'K2-DirectConElemAttr-65'(_Config) ->
   Qry = "<a attr",
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
'K2-DirectConElemAttr-66'(_Config) ->
   Qry = "<a b='1'/",
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
'K2-DirectConElemAttr-67'(_Config) ->
   Qry = "<a b='1'/",
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
'K2-DirectConElemAttr-68'(_Config) ->
   Qry = "<e xmlns=\"\" xmlns=\"\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0071") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemAttr-69'(_Config) ->
   Qry = "<e xmlns:xml=\"http://www.w3.org/XML/1998/namespace\" xmlns:xml=\"http://www.w3.org/XML/1998/namespace\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0071") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemAttr-70'(_Config) ->
   Qry = "declare default element namespace \"http://typedecl\"; namespace-uri-from-QName(node-name(exactly-one(<e attr=\"foo\"/>/@attr))) eq \"\"",
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
'K2-DirectConElemAttr-71'(_Config) ->
   Qry = "declare default element namespace \"http://typedecl\"; namespace-uri-from-QName(node-name(exactly-one(<e>{attribute attr {()} }/</e>/@attr))) eq \"\"",
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
'K2-DirectConElemAttr-72'(_Config) ->
   Qry = "namespace-uri-from-QName(node-name(exactly-one(<e xmlns=\"http://example.com/\">{attribute attr {()} }/</e>/@attr))) eq \"\"",
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
'K2-DirectConElemAttr-73'(_Config) ->
   Qry = "declare default element namespace \"http://example.com/\"; namespace-uri-from-QName(node-name(attribute e {()})) eq \"\"",
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
'K2-DirectConElemAttr-74'(_Config) ->
   Qry = "<e attr=\"{1}&#86;{1}&#86;\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e attr=\"1V1V\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemAttr-75'(_Config) ->
   Qry = "(:*******************************************************:)
(: Test: K2-DirectConElemAttr-75                         :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:21+01:00                       :)
(: Purpose: Mix several ways for creating text for various kinds of nodes. This test is useful if an implementation is performing normalization of such constructors. :)
(:*******************************************************:)
<e attribute=\"{
\"abc\",
\"def\",
\"ghi\",
1,
2,
3,
xs:untypedAtomic(\"abc\"),
text {\"a text node\"},
text {\"a text node\"},
xs:untypedAtomic(\"def\"),
xs:untypedAtomic(\"ghi\"),
xs:hexBinary(\"FF\"),
xs:untypedAtomic(\"abc\"),
xs:string(\"def\"),
xs:untypedAtomic(\"ghi\")
}
textNode
{\"xs:string\"}
textNode
{\"xs:string\"}
textNode
{\"xs:string\"}
text {\"a text node\"},
{\"xs:string\"}
{\"xs:string\"}textnode\">
{ 

attribute name
{
text {\"a text node\"},
text {\"a text node\"},
\"abc\",
\"def\",
text {\"a text node\"},
\"ghi\",
1,
2,
text {\"a text node\"},
3,
xs:untypedAtomic(\"abc\"),
xs:untypedAtomic(\"def\"),
text {\"a text node\"},
xs:untypedAtomic(\"ghi\"),
xs:hexBinary(\"FF\"),
xs:untypedAtomic(\"abc\"),
xs:string(\"def\"),
xs:untypedAtomic(\"ghi\"),
\"xs:string\",
xs:untypedAtomic(\"ghi\"),
\"xs:string\",
\"xs:string\",
\"xs:string\",
xs:untypedAtomic(\"ghi\")
}
}
{
text {\"a text node\"},
text {\"a text node\"},
\"abc\",
\"def\",
text {\"a text node\"},
\"ghi\",
1,
2,
text {\"a text node\"},
3,
xs:untypedAtomic(\"abc\"),
text {\"a text node\"},
xs:untypedAtomic(\"def\"),
xs:untypedAtomic(\"ghi\"),
xs:hexBinary(\"FF\"),
xs:untypedAtomic(\"abc\"),
xs:string(\"def\"),
xs:untypedAtomic(\"ghi\")
}
textNode
{\"xs:string\"}
textNode
{\"xs:string\"}
textNode
{\"xs:string\"}
{\"xs:string\"}
{\"xs:string\"}
text {\"a text node\"},
text {\"a text node\"},
text {\"a text node\"},
text {\"a text node\"},

{
comment
{
\"abc\",
\"def\",
\"ghi\",
1,
2,
3,
xs:untypedAtomic(\"abc\"),
xs:untypedAtomic(\"def\"),
xs:untypedAtomic(\"ghi\"),
xs:hexBinary(\"FF\"),
xs:untypedAtomic(\"abc\"),
xs:string(\"def\"),
xs:untypedAtomic(\"ghi\"),
\"xs:string\",
\"xs:string\",
xs:untypedAtomic(\"ghi\"),
\"xs:string\",
text {\"a text node\"},
text {\"a text node\"},
\"xs:string\",
xs:untypedAtomic(\"ghi\"),
\"xs:string\"
},
processing-instruction target
{
\"abc\",
\"def\",
\"ghi\",
1,
2,
3,
xs:untypedAtomic(\"abc\"),
xs:untypedAtomic(\"def\"),
xs:untypedAtomic(\"ghi\"),
text {\"a text node\"},
text {\"a text node\"},
xs:hexBinary(\"FF\"),
xs:untypedAtomic(\"abc\"),
xs:string(\"def\"),
xs:untypedAtomic(\"ghi\"),
\"xs:string\",
\"xs:string\",
xs:untypedAtomic(\"ghi\"),
\"xs:string\",
\"xs:string\",
xs:untypedAtomic(\"ghi\"),
text {\"a text node\"},
\"xs:string\"
},
text
{
text {\"a text node\"},
text {\"a text node\"},
text {\"a text node\"},
text {\"a text node\"},
\"abc\",
\"def\",
\"ghi\",
1,
2,
text {\"a text node\"},
3,
xs:untypedAtomic(\"abc\"),
text {\"a text node\"},
xs:untypedAtomic(\"def\"),
xs:untypedAtomic(\"ghi\"),
xs:hexBinary(\"FF\"),
xs:untypedAtomic(\"abc\"),
xs:string(\"def\"),
xs:untypedAtomic(\"ghi\"),
\"xs:string\",
\"xs:string\",
xs:untypedAtomic(\"ghi\"),
\"xs:string\",
\"xs:string\",
xs:untypedAtomic(\"ghi\"),
\"xs:string\",
text {\"a text node\"}
}

}
</e>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e attribute=\"abc def ghi 1 2 3 abc a text node a text node def ghi FF abc def ghi textNode xs:string textNode xs:string textNode xs:string text a text node, xs:string xs:stringtextnode\" name=\"a text node a text node abc def a text node ghi 1 2 a text node 3 abc def a text node ghi FF abc def ghi xs:string ghi xs:string xs:string xs:string ghi\">a text nodea text nodeabc defa text nodeghi 1 2a text node3 abca text nodedef ghi FF abc def ghi
textNode
xs:string
textNode
xs:string
textNode
xs:stringxs:stringxs:string
text a text node,
text a text node,
text a text node,
text a text node,

<!--abc def ghi 1 2 3 abc def ghi FF abc def ghi xs:string xs:string ghi xs:string a text node a text node xs:string ghi xs:string--><?target abc def ghi 1 2 3 abc def ghi a text node a text node FF abc def ghi xs:string xs:string ghi xs:string xs:string ghi a text node xs:string?>a text node a text node a text node a text node abc def ghi 1 2 a text node 3 abc a text node def ghi FF abc def ghi xs:string xs:string ghi xs:string xs:string ghi xs:string a text node</e>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemAttr-76'(_Config) ->
   Qry = "
        declare function local:t() { text{\"\"}, text{\"[\"}, text{\"3\"}, text{\"]\"}, text{\"\"} }; 
        declare variable $var := (text{\"\"}, text{\"[\"}, text{\"3\"}, text{\"]\"}, text{\"\"}); 
        <out fromFunction=\"{local:t()}\" fromVariable=\"{$var}\"/>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out fromFunction=\" [ 3 ] \" fromVariable=\" [ 3 ] \"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'DirectConElemAttr-1'(_Config) ->
   Qry = "<shoe name=\" \"\"\"\" \"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<shoe name=\" &#34;&#34; \"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'DirectConElemAttr-2'(_Config) ->
   Qry = "<shoe name=\" '''''''' \"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<shoe name=\" '''''''' \"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
