-module('op_numeric_add_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['op-numeric-addint2args-1'/1]).
-export(['op-numeric-addint2args-2'/1]).
-export(['op-numeric-addint2args-3'/1]).
-export(['op-numeric-addint2args-4'/1]).
-export(['op-numeric-addintg2args-1'/1]).
-export(['op-numeric-addintg2args-2'/1]).
-export(['op-numeric-addintg2args-3'/1]).
-export(['op-numeric-addintg2args-4'/1]).
-export(['op-numeric-adddec2args-1'/1]).
-export(['op-numeric-adddec2args-2'/1]).
-export(['op-numeric-adddec2args-3'/1]).
-export(['op-numeric-adddec2args-4'/1]).
-export(['op-numeric-adddbl2args-1'/1]).
-export(['op-numeric-adddbl2args-2'/1]).
-export(['op-numeric-adddbl2args-3'/1]).
-export(['op-numeric-adddbl2args-4'/1]).
-export(['op-numeric-addflt2args-1'/1]).
-export(['op-numeric-addflt2args-2'/1]).
-export(['op-numeric-addflt2args-3'/1]).
-export(['op-numeric-addflt2args-4'/1]).
-export(['op-numeric-addlng2args-1'/1]).
-export(['op-numeric-addlng2args-2'/1]).
-export(['op-numeric-addlng2args-3'/1]).
-export(['op-numeric-addlng2args-4'/1]).
-export(['op-numeric-addusht2args-1'/1]).
-export(['op-numeric-addusht2args-2'/1]).
-export(['op-numeric-addusht2args-3'/1]).
-export(['op-numeric-addusht2args-4'/1]).
-export(['op-numeric-addusht2args-5'/1]).
-export(['op-numeric-addnint2args-1'/1]).
-export(['op-numeric-addnint2args-2'/1]).
-export(['op-numeric-addnint2args-3'/1]).
-export(['op-numeric-addnint2args-4'/1]).
-export(['op-numeric-addpint2args-1'/1]).
-export(['op-numeric-addpint2args-2'/1]).
-export(['op-numeric-addpint2args-3'/1]).
-export(['op-numeric-addpint2args-4'/1]).
-export(['op-numeric-addpint2args-5'/1]).
-export(['op-numeric-addulng2args-1'/1]).
-export(['op-numeric-addulng2args-2'/1]).
-export(['op-numeric-addulng2args-3'/1]).
-export(['op-numeric-addulng2args-4'/1]).
-export(['op-numeric-addulng2args-5'/1]).
-export(['op-numeric-addnpi2args-1'/1]).
-export(['op-numeric-addnpi2args-2'/1]).
-export(['op-numeric-addnpi2args-3'/1]).
-export(['op-numeric-addnpi2args-4'/1]).
-export(['op-numeric-addnni2args-1'/1]).
-export(['op-numeric-addnni2args-2'/1]).
-export(['op-numeric-addnni2args-3'/1]).
-export(['op-numeric-addnni2args-4'/1]).
-export(['op-numeric-addnni2args-5'/1]).
-export(['op-numeric-addsht2args-1'/1]).
-export(['op-numeric-addsht2args-2'/1]).
-export(['op-numeric-addsht2args-3'/1]).
-export(['op-numeric-addsht2args-4'/1]).
-export(['op-numeric-addmix2args-1'/1]).
-export(['op-numeric-addmix2args-2'/1]).
-export(['op-numeric-addmix2args-3'/1]).
-export(['op-numeric-addmix2args-4'/1]).
-export(['op-numeric-addmix2args-5'/1]).
-export(['op-numeric-addmix2args-6'/1]).
-export(['op-numeric-addmix2args-7'/1]).
-export(['op-numeric-addmix2args-8'/1]).
-export(['op-numeric-addmix2args-9'/1]).
-export(['op-numeric-add-derived-1'/1]).
-export(['op-numeric-add-derived-2'/1]).
-export(['op-numeric-add-derived-3'/1]).
-export(['op-numeric-add-derived-4'/1]).
-export(['op-numeric-add-derived-5'/1]).
-export(['K-NumericAdd-1'/1]).
-export(['K-NumericAdd-2'/1]).
-export(['K-NumericAdd-3'/1]).
-export(['K-NumericAdd-4'/1]).
-export(['K-NumericAdd-5'/1]).
-export(['K-NumericAdd-6'/1]).
-export(['K-NumericAdd-7'/1]).
-export(['K-NumericAdd-8'/1]).
-export(['K-NumericAdd-9'/1]).
-export(['K-NumericAdd-10'/1]).
-export(['K-NumericAdd-11'/1]).
-export(['K-NumericAdd-12'/1]).
-export(['K-NumericAdd-13'/1]).
-export(['K-NumericAdd-14'/1]).
-export(['K-NumericAdd-15'/1]).
-export(['K-NumericAdd-16'/1]).
-export(['K-NumericAdd-17'/1]).
-export(['K-NumericAdd-18'/1]).
-export(['K-NumericAdd-19'/1]).
-export(['K-NumericAdd-20'/1]).
-export(['K-NumericAdd-21'/1]).
-export(['K-NumericAdd-22'/1]).
-export(['K-NumericAdd-23'/1]).
-export(['K-NumericAdd-24'/1]).
-export(['K-NumericAdd-25'/1]).
-export(['K-NumericAdd-26'/1]).
-export(['K-NumericAdd-27'/1]).
-export(['K-NumericAdd-28'/1]).
-export(['K-NumericAdd-29'/1]).
-export(['K-NumericAdd-30'/1]).
-export(['K-NumericAdd-31'/1]).
-export(['K-NumericAdd-32'/1]).
-export(['K-NumericAdd-33'/1]).
-export(['K-NumericAdd-34'/1]).
-export(['K-NumericAdd-35'/1]).
-export(['K-NumericAdd-36'/1]).
-export(['K-NumericAdd-37'/1]).
-export(['K-NumericAdd-38'/1]).
-export(['K-NumericAdd-39'/1]).
-export(['K-NumericAdd-40'/1]).
-export(['K-NumericAdd-41'/1]).
-export(['K-NumericAdd-42'/1]).
-export(['K-NumericAdd-43'/1]).
-export(['K-NumericAdd-44'/1]).
-export(['K-NumericAdd-45'/1]).
-export(['K-NumericAdd-46'/1]).
-export(['K-NumericAdd-47'/1]).
-export(['K-NumericAdd-48'/1]).
-export(['K-NumericAdd-49'/1]).
-export(['K-NumericAdd-50'/1]).
-export(['K-NumericAdd-51'/1]).
-export(['K-NumericAdd-52'/1]).
-export(['K-NumericAdd-53'/1]).
-export(['K-NumericAdd-54'/1]).
-export(['K-NumericAdd-55'/1]).
-export(['K-NumericAdd-56'/1]).
-export(['K-NumericAdd-57'/1]).
-export(['K-NumericAdd-58'/1]).
-export(['K-NumericAdd-59'/1]).
-export(['K-NumericAdd-60'/1]).
-export(['K-NumericAdd-61'/1]).
-export(['K-NumericAdd-62'/1]).
-export(['K-NumericAdd-63'/1]).
-export(['K-NumericAdd-64'/1]).
-export(['K-NumericAdd-65'/1]).
-export(['K-NumericAdd-66'/1]).
-export(['K2-NumericAdd-1'/1]).
-export(['K2-NumericAdd-2'/1]).
-export(['K2-NumericAdd-3'/1]).
-export(['op-numeric-add-1'/1]).
-export(['op-numeric-add-2'/1]).
-export(['op-numeric-add-3'/1]).
-export(['op-numeric-add-4'/1]).
-export(['op-numeric-add-5'/1]).
-export(['op-numeric-add-6'/1]).
-export(['op-numeric-add-7'/1]).
-export(['op-numeric-add-8'/1]).
-export(['op-numeric-add-9'/1]).
-export(['op-numeric-add-10'/1]).
-export(['op-numeric-add-11'/1]).
-export(['op-numeric-add-12'/1]).
-export(['op-numeric-add-13'/1]).
-export(['op-numeric-add-14'/1]).
-export(['op-numeric-add-15'/1]).
-export(['op-numeric-add-16'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'op-numeric-addint2args-1',
   'op-numeric-addint2args-2',
   'op-numeric-addint2args-3',
   'op-numeric-addint2args-4',
   'op-numeric-addintg2args-1',
   'op-numeric-addintg2args-2',
   'op-numeric-addintg2args-3',
   'op-numeric-addintg2args-4',
   'op-numeric-adddec2args-1',
   'op-numeric-adddec2args-2',
   'op-numeric-adddec2args-3',
   'op-numeric-adddec2args-4',
   'op-numeric-adddbl2args-1',
   'op-numeric-adddbl2args-2',
   'op-numeric-adddbl2args-3',
   'op-numeric-adddbl2args-4',
   'op-numeric-addflt2args-1',
   'op-numeric-addflt2args-2',
   'op-numeric-addflt2args-3',
   'op-numeric-addflt2args-4',
   'op-numeric-addlng2args-1',
   'op-numeric-addlng2args-2',
   'op-numeric-addlng2args-3',
   'op-numeric-addlng2args-4',
   'op-numeric-addusht2args-1',
   'op-numeric-addusht2args-2',
   'op-numeric-addusht2args-3',
   'op-numeric-addusht2args-4',
   'op-numeric-addusht2args-5',
   'op-numeric-addnint2args-1',
   'op-numeric-addnint2args-2',
   'op-numeric-addnint2args-3',
   'op-numeric-addnint2args-4',
   'op-numeric-addpint2args-1',
   'op-numeric-addpint2args-2',
   'op-numeric-addpint2args-3',
   'op-numeric-addpint2args-4',
   'op-numeric-addpint2args-5',
   'op-numeric-addulng2args-1',
   'op-numeric-addulng2args-2',
   'op-numeric-addulng2args-3',
   'op-numeric-addulng2args-4',
   'op-numeric-addulng2args-5',
   'op-numeric-addnpi2args-1',
   'op-numeric-addnpi2args-2',
   'op-numeric-addnpi2args-3',
   'op-numeric-addnpi2args-4',
   'op-numeric-addnni2args-1',
   'op-numeric-addnni2args-2',
   'op-numeric-addnni2args-3',
   'op-numeric-addnni2args-4',
   'op-numeric-addnni2args-5',
   'op-numeric-addsht2args-1',
   'op-numeric-addsht2args-2',
   'op-numeric-addsht2args-3',
   'op-numeric-addsht2args-4',
   'op-numeric-addmix2args-1',
   'op-numeric-addmix2args-2',
   'op-numeric-addmix2args-3',
   'op-numeric-addmix2args-4',
   'op-numeric-addmix2args-5',
   'op-numeric-addmix2args-6',
   'op-numeric-addmix2args-7',
   'op-numeric-addmix2args-8',
   'op-numeric-addmix2args-9',
   'op-numeric-add-derived-1',
   'op-numeric-add-derived-2',
   'op-numeric-add-derived-3',
   'op-numeric-add-derived-4',
   'op-numeric-add-derived-5',
   'K-NumericAdd-1',
   'K-NumericAdd-2',
   'K-NumericAdd-3',
   'K-NumericAdd-4',
   'K-NumericAdd-5',
   'K-NumericAdd-6',
   'K-NumericAdd-7',
   'K-NumericAdd-8',
   'K-NumericAdd-9',
   'K-NumericAdd-10',
   'K-NumericAdd-11',
   'K-NumericAdd-12',
   'K-NumericAdd-13',
   'K-NumericAdd-14',
   'K-NumericAdd-15',
   'K-NumericAdd-16',
   'K-NumericAdd-17',
   'K-NumericAdd-18',
   'K-NumericAdd-19',
   'K-NumericAdd-20',
   'K-NumericAdd-21',
   'K-NumericAdd-22',
   'K-NumericAdd-23',
   'K-NumericAdd-24',
   'K-NumericAdd-25',
   'K-NumericAdd-26',
   'K-NumericAdd-27',
   'K-NumericAdd-28',
   'K-NumericAdd-29',
   'K-NumericAdd-30',
   'K-NumericAdd-31',
   'K-NumericAdd-32',
   'K-NumericAdd-33',
   'K-NumericAdd-34',
   'K-NumericAdd-35',
   'K-NumericAdd-36',
   'K-NumericAdd-37',
   'K-NumericAdd-38',
   'K-NumericAdd-39',
   'K-NumericAdd-40',
   'K-NumericAdd-41',
   'K-NumericAdd-42',
   'K-NumericAdd-43',
   'K-NumericAdd-44',
   'K-NumericAdd-45',
   'K-NumericAdd-46',
   'K-NumericAdd-47',
   'K-NumericAdd-48',
   'K-NumericAdd-49',
   'K-NumericAdd-50',
   'K-NumericAdd-51',
   'K-NumericAdd-52',
   'K-NumericAdd-53',
   'K-NumericAdd-54',
   'K-NumericAdd-55',
   'K-NumericAdd-56',
   'K-NumericAdd-57',
   'K-NumericAdd-58',
   'K-NumericAdd-59',
   'K-NumericAdd-60',
   'K-NumericAdd-61',
   'K-NumericAdd-62',
   'K-NumericAdd-63',
   'K-NumericAdd-64',
   'K-NumericAdd-65',
   'K-NumericAdd-66',
   'K2-NumericAdd-1',
   'K2-NumericAdd-2',
   'K2-NumericAdd-3',
   'op-numeric-add-1',
   'op-numeric-add-2',
   'op-numeric-add-3',
   'op-numeric-add-4',
   'op-numeric-add-5',
   'op-numeric-add-6',
   'op-numeric-add-7',
   'op-numeric-add-8',
   'op-numeric-add-9',
   'op-numeric-add-10',
   'op-numeric-add-11',
   'op-numeric-add-12',
   'op-numeric-add-13',
   'op-numeric-add-14',
   'op-numeric-add-15',
   'op-numeric-add-16'].
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
];
environment('user-defined-types') ->
[{'decimal-formats', []},
{sources, []},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/userdefined.xsd","http://www.w3.org/XQueryTest/userDefinedTypes"}]},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/op/numeric-add.xml"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'op-numeric-addint2args-1'(_Config) ->
   Qry = "xs:int(\"-1873914410\") + xs:int(\"-273569238\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-2147483648") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-addint2args-2'(_Config) ->
   Qry = "xs:int(\"2147483647\") + xs:int(\"-2147483648\")",
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
'op-numeric-addint2args-3'(_Config) ->
   Qry = "xs:int(\"-273569238\") + xs:int(\"-1873914410\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-2147483648") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-addint2args-4'(_Config) ->
   Qry = "xs:int(\"-2147483648\") + xs:int(\"2147483647\")",
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
'op-numeric-addintg2args-1'(_Config) ->
   Qry = "xs:integer(\"830993497117024304\") + xs:integer(\"-999999999999999999\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-169006502882975695") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-addintg2args-2'(_Config) ->
   Qry = "xs:integer(\"999999999999999999\") + xs:integer(\"-999999999999999999\")",
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
'op-numeric-addintg2args-3'(_Config) ->
   Qry = "xs:integer(\"-999999999999999999\") + xs:integer(\"830993497117024304\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-169006502882975695") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-addintg2args-4'(_Config) ->
   Qry = "xs:integer(\"-999999999999999999\") + xs:integer(\"999999999999999999\")",
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
'op-numeric-adddec2args-1'(_Config) ->
   Qry = "xs:decimal(\"617375191608514839\") + xs:decimal(\"-999999999999999999\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-382624808391485160") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-adddec2args-2'(_Config) ->
   Qry = "xs:decimal(\"999999999999999999\") + xs:decimal(\"-999999999999999999\")",
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
'op-numeric-adddec2args-3'(_Config) ->
   Qry = "xs:decimal(\"-999999999999999999\") + xs:decimal(\"617375191608514839\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-382624808391485160") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-adddec2args-4'(_Config) ->
   Qry = "xs:decimal(\"-999999999999999999\") + xs:decimal(\"999999999999999999\")",
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
'op-numeric-adddbl2args-1'(_Config) ->
   Qry = "xs:double(\"0\") + xs:double(\"-1.7976931348623157E308\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1.7976931348623157E308") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-adddbl2args-2'(_Config) ->
   Qry = "xs:double(\"1.7976931348623157E308\") + xs:double(\"-1.7976931348623157E308\")",
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
'op-numeric-adddbl2args-3'(_Config) ->
   Qry = "xs:double(\"-1.7976931348623157E308\") + xs:double(\"0\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1.7976931348623157E308") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-adddbl2args-4'(_Config) ->
   Qry = "xs:double(\"-1.7976931348623157E308\") + xs:double(\"1.7976931348623157E308\")",
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
'op-numeric-addflt2args-1'(_Config) ->
   Qry = "xs:float(\"0\") + xs:float(\"-3.4028235E38\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"xs:float(-3.4028235E38)") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-addflt2args-2'(_Config) ->
   Qry = "xs:float(\"3.4028235E38\") + xs:float(\"-3.4028235E38\")",
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
'op-numeric-addflt2args-3'(_Config) ->
   Qry = "xs:float(\"-3.4028235E38\") + xs:float(\"0\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"xs:float(-3.4028235E38)") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-addflt2args-4'(_Config) ->
   Qry = "xs:float(\"-3.4028235E38\") + xs:float(\"3.4028235E38\")",
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
'op-numeric-addlng2args-1'(_Config) ->
   Qry = "xs:long(\"-47175562203048468\") + xs:long(\"-45058158165499290\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-92233720368547758") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-addlng2args-2'(_Config) ->
   Qry = "xs:long(\"92233720368547758\") + xs:long(\"-92233720368547758\")",
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
'op-numeric-addlng2args-3'(_Config) ->
   Qry = "xs:long(\"-45058158165499290\") + xs:long(\"-47175562203048468\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-92233720368547758") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-addlng2args-4'(_Config) ->
   Qry = "xs:long(\"-92233720368547758\") + xs:long(\"92233720368547758\")",
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
'op-numeric-addusht2args-1'(_Config) ->
   Qry = "xs:unsignedShort(\"0\") + xs:unsignedShort(\"0\")",
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
'op-numeric-addusht2args-2'(_Config) ->
   Qry = "xs:unsignedShort(\"44633\") + xs:unsignedShort(\"0\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"44633") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-addusht2args-3'(_Config) ->
   Qry = "xs:unsignedShort(\"65535\") + xs:unsignedShort(\"0\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"65535") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-addusht2args-4'(_Config) ->
   Qry = "xs:unsignedShort(\"0\") + xs:unsignedShort(\"44633\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"44633") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-addusht2args-5'(_Config) ->
   Qry = "xs:unsignedShort(\"0\") + xs:unsignedShort(\"65535\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"65535") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-addnint2args-1'(_Config) ->
   Qry = "xs:negativeInteger(\"-297014075999096793\") + xs:negativeInteger(\"-702985924000903206\")",
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
'op-numeric-addnint2args-2'(_Config) ->
   Qry = "xs:negativeInteger(\"-1\") + xs:negativeInteger(\"-999999999999999999\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1000000000000000000") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-addnint2args-3'(_Config) ->
   Qry = "xs:negativeInteger(\"-702985924000903206\") + xs:negativeInteger(\"-297014075999096793\")",
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
'op-numeric-addnint2args-4'(_Config) ->
   Qry = "xs:negativeInteger(\"-999999999999999999\") + xs:negativeInteger(\"-1\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1000000000000000000") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-addpint2args-1'(_Config) ->
   Qry = "xs:positiveInteger(\"1\") + xs:positiveInteger(\"1\")",
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
'op-numeric-addpint2args-2'(_Config) ->
   Qry = "xs:positiveInteger(\"52704602390610033\") + xs:positiveInteger(\"1\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"52704602390610034") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-addpint2args-3'(_Config) ->
   Qry = "xs:positiveInteger(\"999999999999999998\") + xs:positiveInteger(\"1\")",
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
'op-numeric-addpint2args-4'(_Config) ->
   Qry = "xs:positiveInteger(\"1\") + xs:positiveInteger(\"52704602390610033\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"52704602390610034") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-addpint2args-5'(_Config) ->
   Qry = "xs:positiveInteger(\"1\") + xs:positiveInteger(\"999999999999999998\")",
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
'op-numeric-addulng2args-1'(_Config) ->
   Qry = "xs:unsignedLong(\"0\") + xs:unsignedLong(\"0\")",
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
'op-numeric-addulng2args-2'(_Config) ->
   Qry = "xs:unsignedLong(\"130747108607674654\") + xs:unsignedLong(\"0\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"130747108607674654") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-addulng2args-3'(_Config) ->
   Qry = "xs:unsignedLong(\"184467440737095516\") + xs:unsignedLong(\"0\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"184467440737095516") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-addulng2args-4'(_Config) ->
   Qry = "xs:unsignedLong(\"0\") + xs:unsignedLong(\"130747108607674654\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"130747108607674654") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-addulng2args-5'(_Config) ->
   Qry = "xs:unsignedLong(\"0\") + xs:unsignedLong(\"184467440737095516\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"184467440737095516") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-addnpi2args-1'(_Config) ->
   Qry = "xs:nonPositiveInteger(\"-475688437271870490\") + xs:nonPositiveInteger(\"-524311562728129509\")",
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
'op-numeric-addnpi2args-2'(_Config) ->
   Qry = "xs:nonPositiveInteger(\"0\") + xs:nonPositiveInteger(\"-999999999999999999\")",
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
'op-numeric-addnpi2args-3'(_Config) ->
   Qry = "xs:nonPositiveInteger(\"-524311562728129509\") + xs:nonPositiveInteger(\"-475688437271870490\")",
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
'op-numeric-addnpi2args-4'(_Config) ->
   Qry = "xs:nonPositiveInteger(\"-999999999999999999\") + xs:nonPositiveInteger(\"0\")",
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
'op-numeric-addnni2args-1'(_Config) ->
   Qry = "xs:nonNegativeInteger(\"0\") + xs:nonNegativeInteger(\"0\")",
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
'op-numeric-addnni2args-2'(_Config) ->
   Qry = "xs:nonNegativeInteger(\"303884545991464527\") + xs:nonNegativeInteger(\"0\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"303884545991464527") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-addnni2args-3'(_Config) ->
   Qry = "xs:nonNegativeInteger(\"999999999999999999\") + xs:nonNegativeInteger(\"0\")",
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
'op-numeric-addnni2args-4'(_Config) ->
   Qry = "xs:nonNegativeInteger(\"0\") + xs:nonNegativeInteger(\"303884545991464527\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"303884545991464527") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-addnni2args-5'(_Config) ->
   Qry = "xs:nonNegativeInteger(\"0\") + xs:nonNegativeInteger(\"999999999999999999\")",
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
'op-numeric-addsht2args-1'(_Config) ->
   Qry = "xs:short(\"-5324\") + xs:short(\"-27444\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-32768") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-addsht2args-2'(_Config) ->
   Qry = "xs:short(\"32767\") + xs:short(\"-32768\")",
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
'op-numeric-addsht2args-3'(_Config) ->
   Qry = "xs:short(\"-27444\") + xs:short(\"-5324\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-32768") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-addsht2args-4'(_Config) ->
   Qry = "xs:short(\"-32768\") + xs:short(\"32767\")",
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
'op-numeric-addmix2args-1'(_Config) ->
   Qry = "1 + ()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
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
'op-numeric-addmix2args-2'(_Config) ->
   Qry = "1 + '1'",
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
'op-numeric-addmix2args-3'(_Config) ->
   Qry = "1 + xs:integer('1')",
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
'op-numeric-addmix2args-4'(_Config) ->
   Qry = "1 + <a> 2 </a>",
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
'op-numeric-addmix2args-5'(_Config) ->
   Qry = "1+<a> <b> 2 </b> </a>",
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
'op-numeric-addmix2args-6'(_Config) ->
   Qry = "1 + <a> <b> 2</b> <c> 2</c> </a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-addmix2args-7'(_Config) ->
   Qry = "<a> 1 </a> + <b> 2 </b>",
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
'op-numeric-addmix2args-8'(_Config) ->
   Qry = "1 + <a> x </a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-addmix2args-9'(_Config) ->
   Qry = "1 + <a/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-add-derived-1'(_Config) ->
   Qry = "xs:long(10) + xs:unsignedLong(35)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"45") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-add-derived-2'(_Config) ->
   Qry = "xs:positiveInteger(10) + xs:nonPositiveInteger(-15)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-5") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-add-derived-3'(_Config) ->
   Qry = "xs:nonNegativeInteger(10) + xs:short(15)",
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
'op-numeric-add-derived-4'(_Config) ->
   Qry = "xs:short(10) + xs:long(145)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"155") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-add-derived-5'(_Config) ->
   Qry = "xs:positiveInteger(10) + xs:negativeInteger(-5)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"5") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NumericAdd-1'(_Config) ->
   Qry = "xs:double(6) + xs:double(2) eq 8",
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
'K-NumericAdd-2'(_Config) ->
   Qry = "xs:decimal(6) + xs:decimal(2) eq 8",
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
'K-NumericAdd-3'(_Config) ->
   Qry = "xs:decimal(6.1) + xs:decimal(2.1) eq 8.2",
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
'K-NumericAdd-4'(_Config) ->
   Qry = "1.1 + 2.2 eq 3.3",
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
'K-NumericAdd-5'(_Config) ->
   Qry = "xs:double(1.1) + xs:double(2.2) ne 3.3",
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
'K-NumericAdd-6'(_Config) ->
   Qry = "xs:float(1.1) + xs:float(2.2) ne 3.3",
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
'K-NumericAdd-7'(_Config) ->
   Qry = "xs:integer(6) + xs:integer(2) eq 8",
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
'K-NumericAdd-8'(_Config) ->
   Qry = "xs:float(6) + xs:float(2) eq 8",
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
'K-NumericAdd-9'(_Config) ->
   Qry = "string(xs:float(\"NaN\") + 3) eq \"NaN\"",
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
'K-NumericAdd-10'(_Config) ->
   Qry = "string(xs:double(\"NaN\") + 3) eq \"NaN\"",
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
'K-NumericAdd-11'(_Config) ->
   Qry = "string(3 + xs:float(\"NaN\")) eq \"NaN\"",
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
'K-NumericAdd-12'(_Config) ->
   Qry = "string(3 + xs:double(\"NaN\")) eq \"NaN\"",
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
'K-NumericAdd-13'(_Config) ->
   Qry = "(xs:decimal(6) + xs:integer(2)) instance of xs:decimal",
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
'K-NumericAdd-14'(_Config) ->
   Qry = "(xs:integer(6) + xs:decimal(2)) instance of xs:decimal",
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
'K-NumericAdd-15'(_Config) ->
   Qry = "(xs:integer(6) + xs:integer(2)) instance of xs:integer",
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
'K-NumericAdd-16'(_Config) ->
   Qry = "(xs:decimal(6) + xs:decimal(2)) instance of xs:decimal",
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
'K-NumericAdd-17'(_Config) ->
   Qry = "(xs:decimal(6) + xs:float(2)) instance of xs:float",
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
'K-NumericAdd-18'(_Config) ->
   Qry = "(xs:float(6) + xs:decimal(2)) instance of xs:float",
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
'K-NumericAdd-19'(_Config) ->
   Qry = "(xs:float(6) + xs:integer(2)) instance of xs:float",
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
'K-NumericAdd-20'(_Config) ->
   Qry = "(xs:integer(6) + xs:float(2)) instance of xs:float",
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
'K-NumericAdd-21'(_Config) ->
   Qry = "(xs:float(6) + xs:float(2)) instance of xs:float",
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
'K-NumericAdd-22'(_Config) ->
   Qry = "(xs:decimal(6) + xs:double(2)) instance of xs:double",
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
'K-NumericAdd-23'(_Config) ->
   Qry = "(xs:double(6) + xs:decimal(2)) instance of xs:double",
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
'K-NumericAdd-24'(_Config) ->
   Qry = "(xs:double(6) + xs:float(2)) instance of xs:double",
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
'K-NumericAdd-25'(_Config) ->
   Qry = "(xs:float(6) + xs:double(2)) instance of xs:double",
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
'K-NumericAdd-26'(_Config) ->
   Qry = "(xs:double(6) + xs:integer(2)) instance of xs:double",
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
'K-NumericAdd-27'(_Config) ->
   Qry = "(xs:integer(6) + xs:double(2)) instance of xs:double",
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
'K-NumericAdd-28'(_Config) ->
   Qry = "(xs:double(6) + xs:double(2)) instance of xs:double",
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
'K-NumericAdd-29'(_Config) ->
   Qry = "1+1 eq 2",
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
'K-NumericAdd-30'(_Config) ->
   Qry = "2 eq 1+1",
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
'K-NumericAdd-31'(_Config) ->
   Qry = "3 + error()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOER0000") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NumericAdd-32'(_Config) ->
   Qry = "error() + 3",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOER0000") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NumericAdd-33'(_Config) ->
   Qry = "3 + (error(), 4)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOER0000") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NumericAdd-34'(_Config) ->
   Qry = "(4, error()) + 3",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"FOER0000") of 
      true -> {comment, "Correct error"};
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
'K-NumericAdd-35'(_Config) ->
   Qry = "3 + (4, error())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"FOER0000") of 
      true -> {comment, "Correct error"};
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
'K-NumericAdd-36'(_Config) ->
   Qry = "(error(), 4) + 3",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOER0000") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NumericAdd-37'(_Config) ->
   Qry = "(1, 2) + 1",
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
'K-NumericAdd-38'(_Config) ->
   Qry = "empty((1, 2) + ())",
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
'K-NumericAdd-39'(_Config) ->
   Qry = "1 + (1, 2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
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
'K-NumericAdd-40'(_Config) ->
   Qry = "empty(() + (1, 2))",
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
'K-NumericAdd-41'(_Config) ->
   Qry = "error() + 3",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"FOER0000") of 
      true -> {comment, "Correct error"};
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
'K-NumericAdd-42'(_Config) ->
   Qry = "3 + error()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOER0000") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NumericAdd-43'(_Config) ->
   Qry = "\"3\" + \"3\"",
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
'K-NumericAdd-44'(_Config) ->
   Qry = "\"3\" + xs:untypedAtomic(\"3\")",
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
'K-NumericAdd-45'(_Config) ->
   Qry = "(3 + xs:untypedAtomic(\"3\")) eq 6",
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
'K-NumericAdd-46'(_Config) ->
   Qry = "(xs:untypedAtomic(\"3\") + 3.0) eq 6",
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
'K-NumericAdd-47'(_Config) ->
   Qry = "(2 + 4) * 5 eq 30",
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
'K-NumericAdd-48'(_Config) ->
   Qry = "2 + 4 * 5 eq 22",
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
'K-NumericAdd-49'(_Config) ->
   Qry = "1 + 2 * 4 + (1 + 2 + 3 * 4) eq 24",
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
'K-NumericAdd-50'(_Config) ->
   Qry = "empty(() + ())",
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
'K-NumericAdd-51'(_Config) ->
   Qry = "(remove((1, \"two\"), 2) + 1) eq 2",
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
'K-NumericAdd-52'(_Config) ->
   Qry = "2 eq (1 + remove((1, \"two\"), 2))",
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
'K-NumericAdd-53'(_Config) ->
   Qry = "(remove((1, \"two\"), 2) + xs:untypedAtomic(\"1\")) eq 2",
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
'K-NumericAdd-54'(_Config) ->
   Qry = "2 eq (xs:untypedAtomic(\"1\") + remove((1, \"two\"), 2))",
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
'K-NumericAdd-55'(_Config) ->
   Qry = "(remove((xs:untypedAtomic(\"1\"), \"two\"), 2) + 1) eq 2",
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
'K-NumericAdd-56'(_Config) ->
   Qry = "2 eq (1 + remove((xs:untypedAtomic(\"1\"), \"two\"), 2))",
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
'K-NumericAdd-57'(_Config) ->
   Qry = "(remove((1, \"two\"), 2) + xs:untypedAtomic(\"1\")) eq 2",
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
'K-NumericAdd-58'(_Config) ->
   Qry = "2 eq (xs:untypedAtomic(\"1\") + remove((1, \"two\"), 2))",
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
'K-NumericAdd-59'(_Config) ->
   Qry = "xs:untypedAtomic(\"3\") + 3 eq 6",
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
'K-NumericAdd-60'(_Config) ->
   Qry = "(xs:untypedAtomic(\"3\") + 3) instance of xs:double",
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
'K-NumericAdd-61'(_Config) ->
   Qry = "(remove((5, 1e0), 2) + 1) eq 6",
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
'K-NumericAdd-62'(_Config) ->
   Qry = "(1 + remove((5, 1e0), 2)) eq 6",
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
'K-NumericAdd-63'(_Config) ->
   Qry = "1 + subsequence(\"a string\", 1, 1)",
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
'K-NumericAdd-64'(_Config) ->
   Qry = "subsequence(\"a string\", 1, 1) + 1",
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
'K-NumericAdd-65'(_Config) ->
   Qry = "\"foo\" + 1",
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
'K-NumericAdd-66'(_Config) ->
   Qry = "1 + \"foo\"",
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
'K2-NumericAdd-1'(_Config) ->
   Qry = "(1, 2) + (1, 2)",
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
'K2-NumericAdd-2'(_Config) ->
   Qry = "<a>1</a> + <b>2</b>",
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
'K2-NumericAdd-3'(_Config) ->
   Qry = "<a foo=\"1\"/>/@foo + <b foo=\"2\"/>/@foo",
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
'op-numeric-add-1'(_Config) ->
   Qry = "
         for $x in (1, xs:decimal(2), xs:float(3), xs:double(4), xs:untypedAtomic(5)) 
         for $y in (1, xs:decimal(2), xs:float(3), xs:double(4), xs:untypedAtomic(5))
         return ($x + $y)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"$result[1] instance of xs:integer") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result[2] instance of xs:decimal") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result[3] instance of xs:float") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result[4] instance of xs:double") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result[5] instance of xs:double") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result[6] instance of xs:decimal") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result[7] instance of xs:decimal") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result[8] instance of xs:float") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result[9] instance of xs:double") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result[10] instance of xs:double") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result[11] instance of xs:float") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result[12] instance of xs:float") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result[13] instance of xs:float") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result[14] instance of xs:double") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result[15] instance of xs:double") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result[16] instance of xs:double") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result[17] instance of xs:double") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result[18] instance of xs:double") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result[19] instance of xs:double") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result[20] instance of xs:double") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result[21] instance of xs:double") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result[22] instance of xs:double") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result[23] instance of xs:double") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result[24] instance of xs:double") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result[25] instance of xs:double") of 
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
'op-numeric-add-2'(_Config) ->
   {skip,"Validation Environment"}.
'op-numeric-add-3'(_Config) ->
   {skip,"Validation Environment"}.
'op-numeric-add-4'(_Config) ->
   {skip,"Validation Environment"}.
'op-numeric-add-5'(_Config) ->
   {skip,"Validation Environment"}.
'op-numeric-add-6'(_Config) ->
   {skip,"Validation Environment"}.
'op-numeric-add-7'(_Config) ->
   {skip,"Validation Environment"}.
'op-numeric-add-8'(_Config) ->
   {skip,"Validation Environment"}.
'op-numeric-add-9'(_Config) ->
   {skip,"Validation Environment"}.
'op-numeric-add-10'(_Config) ->
   {skip,"Validation Environment"}.
'op-numeric-add-11'(_Config) ->
   {skip,"Validation Environment"}.
'op-numeric-add-12'(_Config) ->
   {skip,"Validation Environment"}.
'op-numeric-add-13'(_Config) ->
   {skip,"schemaImport"}.
'op-numeric-add-14'(_Config) ->
   {skip,"schemaImport"}.
'op-numeric-add-15'(_Config) ->
   {skip,"schemaImport"}.
'op-numeric-add-16'(_Config) ->
   {skip,"schemaImport"}.
