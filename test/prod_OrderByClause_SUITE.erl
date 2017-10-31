-module('prod_OrderByClause_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['orderBy1'/1]).
-export(['orderBy2'/1]).
-export(['orderBy3'/1]).
-export(['orderBy4'/1]).
-export(['orderBy5'/1]).
-export(['orderBy6'/1]).
-export(['orderBy7'/1]).
-export(['orderBy8'/1]).
-export(['orderBy9'/1]).
-export(['orderBy10'/1]).
-export(['orderBy11'/1]).
-export(['orderBy12'/1]).
-export(['orderBy13'/1]).
-export(['orderBy14'/1]).
-export(['orderBy15'/1]).
-export(['orderBy16'/1]).
-export(['orderBy17'/1]).
-export(['orderBy18'/1]).
-export(['orderBy19'/1]).
-export(['orderBy20'/1]).
-export(['orderBy21'/1]).
-export(['orderBy22'/1]).
-export(['orderBy23'/1]).
-export(['orderBy24'/1]).
-export(['orderBy25'/1]).
-export(['orderBy26'/1]).
-export(['orderBy27'/1]).
-export(['orderBy28'/1]).
-export(['orderBy29'/1]).
-export(['orderBy29a'/1]).
-export(['orderBy30'/1]).
-export(['orderBy31'/1]).
-export(['orderBy32'/1]).
-export(['orderBy33'/1]).
-export(['orderBy34'/1]).
-export(['orderBy35'/1]).
-export(['orderBy36'/1]).
-export(['orderBy37'/1]).
-export(['orderBy38'/1]).
-export(['orderBy39'/1]).
-export(['orderBy40'/1]).
-export(['orderBy41'/1]).
-export(['orderBy42'/1]).
-export(['orderBy43'/1]).
-export(['orderBy44'/1]).
-export(['orderBy45'/1]).
-export(['orderBy46'/1]).
-export(['orderBy47'/1]).
-export(['orderBy49'/1]).
-export(['orderBy50'/1]).
-export(['orderBy51'/1]).
-export(['orderBy52'/1]).
-export(['orderBy52a'/1]).
-export(['orderBy53'/1]).
-export(['orderBy54'/1]).
-export(['orderBy55'/1]).
-export(['orderBy56'/1]).
-export(['orderBy57'/1]).
-export(['orderBy59'/1]).
-export(['orderBy60'/1]).
-export(['orderBy61'/1]).
-export(['orderBy62'/1]).
-export(['orderBy63'/1]).
-export(['orderBy64'/1]).
-export(['orderBy65'/1]).
-export(['orderBy66'/1]).
-export(['orderBy67'/1]).
-export(['orderBy68'/1]).
-export(['orderbylocal-1'/1]).
-export(['orderbylocal-2'/1]).
-export(['orderbylocal-3'/1]).
-export(['orderbylocal-4'/1]).
-export(['orderbylocal-5'/1]).
-export(['orderbylocal-6'/1]).
-export(['orderbylocal-7'/1]).
-export(['orderbylocal-8'/1]).
-export(['orderbylocal-9'/1]).
-export(['orderbylocal-10'/1]).
-export(['orderbylocal-11'/1]).
-export(['orderbylocal-12'/1]).
-export(['orderbylocal-16'/1]).
-export(['orderbylocal-17'/1]).
-export(['orderbylocal-18'/1]).
-export(['orderbylocal-19'/1]).
-export(['orderbylocal-20'/1]).
-export(['orderbylocal-21'/1]).
-export(['orderbylocal-22'/1]).
-export(['orderbylocal-25'/1]).
-export(['orderbylocal-26'/1]).
-export(['orderbylocal-27'/1]).
-export(['orderbylocal-28'/1]).
-export(['orderbylocal-29'/1]).
-export(['orderbylocal-30'/1]).
-export(['orderbylocal-31'/1]).
-export(['orderbylocal-32'/1]).
-export(['orderbylocal-35'/1]).
-export(['orderbylocal-36'/1]).
-export(['orderbylocal-37'/1]).
-export(['orderbylocal-38'/1]).
-export(['orderbylocal-39'/1]).
-export(['orderbylocal-40'/1]).
-export(['orderbylocal-41'/1]).
-export(['orderbylocal-42'/1]).
-export(['orderbylocal-43'/1]).
-export(['orderbylocal-44'/1]).
-export(['orderbylocal-45'/1]).
-export(['orderbylocal-46'/1]).
-export(['orderbylocal-47'/1]).
-export(['orderbylocal-49'/1]).
-export(['orderbylocal-50'/1]).
-export(['orderbylocal-51'/1]).
-export(['orderbylocal-52'/1]).
-export(['orderbylocal-55'/1]).
-export(['orderbylocal-56'/1]).
-export(['orderbylocal-57'/1]).
-export(['orderbylocal-59'/1]).
-export(['orderbylocal-60'/1]).
-export(['orderbywithout-1'/1]).
-export(['orderbywithout-2'/1]).
-export(['orderbywithout-3'/1]).
-export(['orderbywithout-4'/1]).
-export(['orderbywithout-5'/1]).
-export(['orderbywithout-6'/1]).
-export(['orderbywithout-7'/1]).
-export(['orderbywithout-8'/1]).
-export(['orderbywithout-9'/1]).
-export(['orderbywithout-10'/1]).
-export(['orderbywithout-11'/1]).
-export(['orderbywithout-12'/1]).
-export(['orderbywithout-13'/1]).
-export(['orderbywithout-14'/1]).
-export(['orderbywithout-15'/1]).
-export(['orderbywithout-16'/1]).
-export(['orderbywithout-17'/1]).
-export(['orderbywithout-18'/1]).
-export(['orderbywithout-19'/1]).
-export(['orderbywithout-20'/1]).
-export(['orderbywithout-21'/1]).
-export(['orderbywithout-22'/1]).
-export(['orderbywithout-23'/1]).
-export(['orderbywithout-24'/1]).
-export(['orderbywithout-25'/1]).
-export(['orderbywithout-26'/1]).
-export(['orderbywithout-27'/1]).
-export(['orderbywithout-28'/1]).
-export(['orderbywithout-29'/1]).
-export(['orderbywithout-30'/1]).
-export(['orderbywithout-31'/1]).
-export(['orderbywithout-32'/1]).
-export(['orderbywithout-33'/1]).
-export(['orderbywithout-34'/1]).
-export(['orderbywithout-35'/1]).
-export(['orderbywithout-36'/1]).
-export(['orderbywithout-37'/1]).
-export(['orderbywithout-38'/1]).
-export(['orderbywithout-39'/1]).
-export(['orderbywithout-40'/1]).
-export(['K2-OrderbyExprWithout-1'/1]).
-export(['K2-OrderbyExprWithout-2'/1]).
-export(['K2-OrderbyExprWithout-3'/1]).
-export(['K2-OrderbyExprWithout-5'/1]).
-export(['K2-OrderbyExprWithout-6'/1]).
-export(['K2-OrderbyExprWithout-7'/1]).
-export(['K2-OrderbyExprWithout-8'/1]).
-export(['K2-OrderbyExprWithout-9'/1]).
-export(['K2-OrderbyExprWithout-10'/1]).
-export(['K2-OrderbyExprWithout-11'/1]).
-export(['K2-OrderbyExprWithout-12'/1]).
-export(['K2-OrderbyExprWithout-13'/1]).
-export(['K2-OrderbyExprWithout-14'/1]).
-export(['K2-OrderbyExprWithout-15'/1]).
-export(['K2-OrderbyExprWithout-16'/1]).
-export(['K2-OrderbyExprWithout-17'/1]).
-export(['K2-OrderbyExprWithout-18'/1]).
-export(['K2-OrderbyExprWithout-19'/1]).
-export(['K2-OrderbyExprWithout-20'/1]).
-export(['K2-OrderbyExprWithout-21'/1]).
-export(['K2-OrderbyExprWithout-22'/1]).
-export(['K2-OrderbyExprWithout-23'/1]).
-export(['K2-OrderbyExprWithout-24'/1]).
-export(['K2-OrderbyExprWithout-25'/1]).
-export(['K2-OrderbyExprWithout-26'/1]).
-export(['K2-OrderbyExprWithout-27'/1]).
-export(['K2-OrderbyExprWithout-28'/1]).
-export(['K2-OrderbyExprWithout-29'/1]).
-export(['K2-OrderbyExprWithout-30'/1]).
-export(['K2-OrderbyExprWithout-31'/1]).
-export(['K2-OrderbyExprWithout-32'/1]).
-export(['K2-OrderbyExprWithout-33'/1]).
-export(['K2-OrderbyExprWithout-34'/1]).
-export(['K2-OrderbyExprWithout-35'/1]).
-export(['K2-OrderbyExprWithout-36'/1]).
-export(['K2-OrderbyExprWithout-37'/1]).
-export(['K2-OrderbyExprWithout-38'/1]).
-export(['K2-OrderbyExprWithout-39'/1]).
-export(['K2-OrderbyExprWithout-40'/1]).
-export(['K2-OrderbyExprWithout-41'/1]).
-export(['K2-OrderbyExprWithout-42'/1]).
-export(['K2-OrderbyExprWithout-43'/1]).
-export(['K2-OrderbyExprWithout-44'/1]).
-export(['K2-OrderbyExprWithout-45'/1]).
-export(['K2-OrderbyExprWithout-46'/1]).
-export(['K2-OrderbyExprWithout-47'/1]).
-export(['K2-OrderbyExprWithout-48'/1]).
-export(['K2-OrderbyExprWithout-49'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'orderBy1',
   'orderBy2',
   'orderBy3',
   'orderBy4',
   'orderBy5',
   'orderBy6',
   'orderBy7',
   'orderBy8',
   'orderBy9',
   'orderBy10',
   'orderBy11',
   'orderBy12',
   'orderBy13',
   'orderBy14',
   'orderBy15',
   'orderBy16',
   'orderBy17',
   'orderBy18',
   'orderBy19',
   'orderBy20',
   'orderBy21',
   'orderBy22',
   'orderBy23',
   'orderBy24',
   'orderBy25',
   'orderBy26',
   'orderBy27',
   'orderBy28',
   'orderBy29',
   'orderBy29a',
   'orderBy30',
   'orderBy31',
   'orderBy32',
   'orderBy33',
   'orderBy34',
   'orderBy35',
   'orderBy36',
   'orderBy37',
   'orderBy38',
   'orderBy39',
   'orderBy40',
   'orderBy41',
   'orderBy42',
   'orderBy43',
   'orderBy44',
   'orderBy45',
   'orderBy46',
   'orderBy47',
   'orderBy49',
   'orderBy50',
   'orderBy51',
   'orderBy52',
   'orderBy52a',
   'orderBy53',
   'orderBy54',
   'orderBy55',
   'orderBy56',
   'orderBy57',
   'orderBy59',
   'orderBy60',
   'orderBy61',
   'orderBy62',
   'orderBy63',
   'orderBy64',
   'orderBy65',
   'orderBy66',
   'orderBy67',
   'orderBy68',
   'orderbylocal-1',
   'orderbylocal-2',
   'orderbylocal-3',
   'orderbylocal-4',
   'orderbylocal-5',
   'orderbylocal-6',
   'orderbylocal-7',
   'orderbylocal-8',
   'orderbylocal-9',
   'orderbylocal-10',
   'orderbylocal-11',
   'orderbylocal-12',
   'orderbylocal-16',
   'orderbylocal-17',
   'orderbylocal-18',
   'orderbylocal-19',
   'orderbylocal-20',
   'orderbylocal-21',
   'orderbylocal-22',
   'orderbylocal-25',
   'orderbylocal-26',
   'orderbylocal-27',
   'orderbylocal-28',
   'orderbylocal-29',
   'orderbylocal-30',
   'orderbylocal-31',
   'orderbylocal-32',
   'orderbylocal-35',
   'orderbylocal-36',
   'orderbylocal-37',
   'orderbylocal-38',
   'orderbylocal-39',
   'orderbylocal-40',
   'orderbylocal-41',
   'orderbylocal-42',
   'orderbylocal-43',
   'orderbylocal-44',
   'orderbylocal-45',
   'orderbylocal-46',
   'orderbylocal-47',
   'orderbylocal-49',
   'orderbylocal-50',
   'orderbylocal-51',
   'orderbylocal-52',
   'orderbylocal-55',
   'orderbylocal-56',
   'orderbylocal-57',
   'orderbylocal-59',
   'orderbylocal-60',
   'orderbywithout-1',
   'orderbywithout-2',
   'orderbywithout-3',
   'orderbywithout-4',
   'orderbywithout-5',
   'orderbywithout-6',
   'orderbywithout-7',
   'orderbywithout-8',
   'orderbywithout-9',
   'orderbywithout-10',
   'orderbywithout-11',
   'orderbywithout-12',
   'orderbywithout-13',
   'orderbywithout-14',
   'orderbywithout-15',
   'orderbywithout-16',
   'orderbywithout-17',
   'orderbywithout-18',
   'orderbywithout-19',
   'orderbywithout-20',
   'orderbywithout-21',
   'orderbywithout-22',
   'orderbywithout-23',
   'orderbywithout-24',
   'orderbywithout-25',
   'orderbywithout-26',
   'orderbywithout-27',
   'orderbywithout-28',
   'orderbywithout-29',
   'orderbywithout-30',
   'orderbywithout-31',
   'orderbywithout-32',
   'orderbywithout-33',
   'orderbywithout-34',
   'orderbywithout-35',
   'orderbywithout-36',
   'orderbywithout-37',
   'orderbywithout-38',
   'orderbywithout-39',
   'orderbywithout-40',
   'K2-OrderbyExprWithout-1',
   'K2-OrderbyExprWithout-2',
   'K2-OrderbyExprWithout-3',
   'K2-OrderbyExprWithout-5',
   'K2-OrderbyExprWithout-6',
   'K2-OrderbyExprWithout-7',
   'K2-OrderbyExprWithout-8',
   'K2-OrderbyExprWithout-9',
   'K2-OrderbyExprWithout-10',
   'K2-OrderbyExprWithout-11',
   'K2-OrderbyExprWithout-12',
   'K2-OrderbyExprWithout-13',
   'K2-OrderbyExprWithout-14',
   'K2-OrderbyExprWithout-15',
   'K2-OrderbyExprWithout-16',
   'K2-OrderbyExprWithout-17',
   'K2-OrderbyExprWithout-18',
   'K2-OrderbyExprWithout-19',
   'K2-OrderbyExprWithout-20',
   'K2-OrderbyExprWithout-21',
   'K2-OrderbyExprWithout-22',
   'K2-OrderbyExprWithout-23',
   'K2-OrderbyExprWithout-24',
   'K2-OrderbyExprWithout-25',
   'K2-OrderbyExprWithout-26',
   'K2-OrderbyExprWithout-27',
   'K2-OrderbyExprWithout-28',
   'K2-OrderbyExprWithout-29',
   'K2-OrderbyExprWithout-30',
   'K2-OrderbyExprWithout-31',
   'K2-OrderbyExprWithout-32',
   'K2-OrderbyExprWithout-33',
   'K2-OrderbyExprWithout-34',
   'K2-OrderbyExprWithout-35',
   'K2-OrderbyExprWithout-36',
   'K2-OrderbyExprWithout-37',
   'K2-OrderbyExprWithout-38',
   'K2-OrderbyExprWithout-39',
   'K2-OrderbyExprWithout-40',
   'K2-OrderbyExprWithout-41',
   'K2-OrderbyExprWithout-42',
   'K2-OrderbyExprWithout-43',
   'K2-OrderbyExprWithout-44',
   'K2-OrderbyExprWithout-45',
   'K2-OrderbyExprWithout-46',
   'K2-OrderbyExprWithout-47',
   'K2-OrderbyExprWithout-48',
   'K2-OrderbyExprWithout-49'].
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
environment('orderdata') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/prod/OrderByClause/orderData.xml",".",""}]},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/prod/OrderByClause/orderData.xsd","http://www.w3.org/XQueryTestOrderBy"}]},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/prod/OrderByClause.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('orderdata2') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/prod/OrderByClause/orderData.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/prod/OrderByClause.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'orderBy1'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy2'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy3'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy4'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy5'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy6'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy7'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy8'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy9'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy10'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy11'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy12'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy13'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy14'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy15'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy16'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy17'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy18'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy19'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy20'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy21'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy22'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy23'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy24'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy25'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy26'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy27'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy28'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy29'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy29a'(_Config) ->
   {skip,"schemaImport"}.
'orderBy30'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy31'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy32'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy33'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy34'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy35'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy36'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy37'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy38'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy39'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy40'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy41'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy42'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy43'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy44'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy45'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy46'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy47'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy49'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy50'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy51'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy52'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy52a'(_Config) ->
   {skip,"schemaImport"}.
'orderBy53'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy54'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy55'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy56'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy57'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy59'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy60'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy61'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy62'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy63'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy64'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy65'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy66'(_Config) ->
   {skip,"Validation Environment"}.
'orderBy67'(_Config) ->
   Qry = "
         for $j in (text{'Az'}, text{'Bx'}, text{'Cy'}) 
         order by $j/substring(., $j/string-length(.)) 
         return $j/string()
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"Bx\", \"Cy\", \"Az\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderBy68'(_Config) ->
   Qry = "
         declare variable $in := <in><e on=\"2017-09-18\"/><e on=\"2016-04-15\"/><e on=\"2012-07-09\"/></in>;
         for $j in ($in//e/@on, xs:date('1999-12-17')) 
         order by $j 
         return $j
      ",
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
'orderbylocal-1'(_Config) ->
   Qry = "<results> { for $x in (\"A String\",\"B String\",\"C String\",\"D String\",\"E String\",\"F String\",\"G String\",\"H String\",
        \"I String\",\"J String\",\"K String\",\"L String\",\"M String\",\"N String\",\"O String\",\"P String\",\"R String\",\"S String\",\"T String\",
        \"U String\",\"V String\",\"W String\",\"X String\",\"Y String\",\"Z String\") order by xs:string($x) 
        ascending return xs:string($x) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>A String B String C String D String E String F String G String H String I String J String K String L String M String N String O String P String R String S String T String U String V String W String X String Y String Z String</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbylocal-2'(_Config) ->
   Qry = "<results> { for $x in (\"A String\",\"B String\",\"C String\",\"D String\",\"E String\",\"F String\",\"G String\",\"H String\",
        \"I String\",\"J String\",\"K String\",\"L String\",\"M String\",\"N String\",\"O String\",\"P String\",\"R String\",\"S String\",
        \"T String\",\"U String\",\"V String\",\"W String\",\"X String\",\"Y String\",\"Z String\") order by xs:string($x) 
        descending return xs:string($x) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>Z String Y String X String W String V String U String T String S String R String P String O String N String M String L String K String J String I String H String G String F String E String D String C String B String A String</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbylocal-3'(_Config) ->
   Qry = "<results> { for $x in (\"A String\",\"B String\",\"C String\",\"D String\",\"E String\",\"F String\",\"G String\",\"H String\",
        \"I String\",\"J String\",\"K String\",\"L String\",\"M String\",\"N String\",\"O String\",\"P String\",\"R String\",\"S String\",\"T String\",
        \"U String\",\"V String\",\"W String\",\"X String\",\"Y String\",\"Z String\") order by concat(xs:string($x),\"()\") 
        ascending return concat(xs:string($x),\"()\") } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>A String() B String() C String() D String() E String() F String() G String() H String() I String() J String() K String() L String() M String() N String() O String() P String() R String() S String() T String() U String() V String() W String() X String() Y String() Z String()</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbylocal-4'(_Config) ->
   Qry = "<results> { for $x in (\"A String\",\"B String\",\"C String\",\"D String\",\"E String\",\"F String\",\"G String\",\"H String\",\"I String\",\"J String\",\"K String\",\"L String\",\"M String\",\"N String\",\"O String\",\"P String\",\"R String\",\"S String\",\"T String\",\"U String\",\"V String\",\"W String\",\"X String\",\"Y String\",\"Z String\") order by concat(xs:string($x),\"()\") descending return concat(xs:string($x),\"()\") } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>Z String() Y String() X String() W String() V String() U String() T String() S String() R String() P String() O String() N String() M String() L String() K String() J String() I String() H String() G String() F String() E String() D String() C String() B String() A String()</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbylocal-5'(_Config) ->
   Qry = "<results> { for $x in (\"A String\",\"B String\",\"C String\",\"D String\",\"E String\",\"F String\",\"G String\",\"H String\",\"I String\",\"J String\",\"K String\",\"L String\",\"M String\",\"N String\",\"O String\",\"P String\",\"R String\",\"S String\",\"T String\",\"U String\",\"V String\",\"W String\",\"X String\",\"Y String\",\"Z String\") order by concat(xs:string($x),\"another String After\") ascending return concat(xs:string($x),\"another String After\") } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>A Stringanother String After B Stringanother String After C Stringanother String After D Stringanother String After E Stringanother String After F Stringanother String After G Stringanother String After H Stringanother String After I Stringanother String After J Stringanother String After K Stringanother String After L Stringanother String After M Stringanother String After N Stringanother String After O Stringanother String After P Stringanother String After R Stringanother String After S Stringanother String After T Stringanother String After U Stringanother String After V Stringanother String After W Stringanother String After X Stringanother String After Y Stringanother String After Z Stringanother String After</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbylocal-6'(_Config) ->
   Qry = "<results> { for $x in (\"A String\",\"B String\",\"C String\",\"D String\",\"E String\",\"F String\",\"G String\",\"H String\",\"I String\",\"J String\",\"K String\",\"L String\",\"M String\",\"N String\",\"O String\",\"P String\",\"R String\",\"S String\",\"T String\",\"U String\",\"V String\",\"W String\",\"X String\",\"Y String\",\"Z String\") order by concat(xs:string($x),\"another String After\") descending return concat(xs:string($x),\"another String After\") } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>Z Stringanother String After Y Stringanother String After X Stringanother String After W Stringanother String After V Stringanother String After U Stringanother String After T Stringanother String After S Stringanother String After R Stringanother String After P Stringanother String After O Stringanother String After N Stringanother String After M Stringanother String After L Stringanother String After K Stringanother String After J Stringanother String After I Stringanother String After H Stringanother String After G Stringanother String After F Stringanother String After E Stringanother String After D Stringanother String After C Stringanother String After B Stringanother String After A Stringanother String After</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbylocal-7'(_Config) ->
   Qry = "<results> { for $x in (\"A String\",\"B String\",\"C String\",\"D String\",\"E String\",\"F String\",\"G String\",\"H String\",\"I String\",\"J String\",\"K String\",\"L String\",\"M String\",\"N String\",\"O String\",\"P String\",\"R String\",\"S String\",\"T String\",\"U String\",\"V String\",\"W String\",\"X String\",\"Y String\",\"Z String\") order by concat(\"another String Before\",xs:string($x)) ascending return concat(\"another String Before\",xs:string($x)) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>another String BeforeA String another String BeforeB String another String BeforeC String another String BeforeD String another String BeforeE String another String BeforeF String another String BeforeG String another String BeforeH String another String BeforeI String another String BeforeJ String another String BeforeK String another String BeforeL String another String BeforeM String another String BeforeN String another String BeforeO String another String BeforeP String another String BeforeR String another String BeforeS String another String BeforeT String another String BeforeU String another String BeforeV String another String BeforeW String another String BeforeX String another String BeforeY String another String BeforeZ String</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbylocal-8'(_Config) ->
   Qry = "<results> { for $x in (\"A String\",\"B String\",\"C String\",\"D String\",\"E String\",\"F String\",\"G String\",\"H String\",\"I String\",\"J String\",\"K String\",\"L String\",\"M String\",\"N String\",\"O String\",\"P String\",\"R String\",\"S String\",\"T String\",\"U String\",\"V String\",\"W String\",\"X String\",\"Y String\",\"Z String\") order by concat(\"another String Before\",xs:string($x)) descending return concat(\"another String Before\",xs:string($x)) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>another String BeforeZ String another String BeforeY String another String BeforeX String another String BeforeW String another String BeforeV String another String BeforeU String another String BeforeT String another String BeforeS String another String BeforeR String another String BeforeP String another String BeforeO String another String BeforeN String another String BeforeM String another String BeforeL String another String BeforeK String another String BeforeJ String another String BeforeI String another String BeforeH String another String BeforeG String another String BeforeF String another String BeforeE String another String BeforeD String another String BeforeC String another String BeforeB String another String BeforeA String</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbylocal-9'(_Config) ->
   Qry = "<results> { for $x in (\"A String\",\"B String\",\"C String\",\"D String\",\"E String\",\"F String\",\"G String\",\"H String\",\"I String\",\"J String\",\"K String\",\"L String\",\"M String\",\"N String\",\"O String\",\"P String\",\"R String\",\"S String\",\"T String\",\"U String\",\"V String\",\"W String\",\"X String\",\"Y String\",\"Z String\") order by concat(xs:string($x),\"\") descending return concat(xs:string($x),\"\") } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>Z String Y String X String W String V String U String T String S String R String P String O String N String M String L String K String J String I String H String G String F String E String D String C String B String A String</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbylocal-10'(_Config) ->
   Qry = "<results> { for $x in (\"A String\",\"B String\",\"C String\",\"D String\",\"E String\",\"F String\",\"G String\",\"H String\",\"I String\",\"J String\",\"K String\",\"L String\",\"M String\",\"N String\",\"O String\",\"P String\",\"R String\",\"S String\",\"T String\",\"U String\",\"V String\",\"W String\",\"X String\",\"Y String\",\"Z String\") order by concat(xs:string($x),\"\") ascending return concat(xs:string($x),\"\") } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>A String B String C String D String E String F String G String H String I String J String K String L String M String N String O String P String R String S String T String U String V String W String X String Y String Z String</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbylocal-11'(_Config) ->
   Qry = "<results> { for $x in (\"A String\",\"B String\",\"C String\",\"D String\",\"E String\",\"F String\",\"G String\",\"H String\",\"I String\",\"J String\",\"K String\",\"L String\",\"M String\",\"N String\",\"O String\",\"P String\",\"R String\",\"S String\",\"T String\",\"U String\",\"V String\",\"W String\",\"X String\",\"Y String\",\"Z String\") order by concat(\"\",xs:string($x)) descending return concat(\"\",xs:string($x)) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>Z String Y String X String W String V String U String T String S String R String P String O String N String M String L String K String J String I String H String G String F String E String D String C String B String A String</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbylocal-12'(_Config) ->
   Qry = "<results> { for $x in (\"A String\",\"B String\",\"C String\",\"D String\",\"E String\",\"F String\",\"G String\",\"H String\",\"I String\",\"J String\",\"K String\",\"L String\",\"M String\",\"N String\",\"O String\",\"P String\",\"R String\",\"S String\",\"T String\",\"U String\",\"V String\",\"W String\",\"X String\",\"Y String\",\"Z String\") order by concat(\"\",xs:string($x)) ascending return concat(\"\",xs:string($x)) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>A String B String C String D String E String F String G String H String I String J String K String L String M String N String O String P String R String S String T String U String V String W String X String Y String Z String</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbylocal-16'(_Config) ->
   Qry = "<results> { for $x in (\"A String\",\"B String\",\"C String\",\"D String\",\"E String\",\"F String\",\"G String\",\"H String\",\"I String\",\"J String\",\"K String\",\"L String\",\"M String\",\"N String\",\"O String\",\"P String\",\"R String\",\"S String\",\"T String\",\"U String\",\"V String\",\"W String\",\"X String\",\"Y String\",\"Z String\") order by concat(xs:string($x),xs:string($x)) ascending return concat(xs:string($x),xs:string($x)) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>A StringA String B StringB String C StringC String D StringD String E StringE String F StringF String G StringG String H StringH String I StringI String J StringJ String K StringK String L StringL String M StringM String N StringN String O StringO String P StringP String R StringR String S StringS String T StringT String U StringU String V StringV String W StringW String X StringX String Y StringY String Z StringZ String</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbylocal-17'(_Config) ->
   Qry = "<results> { for $x in(\"A String\",\"B String\",\"C String\",\"D String\",\"E String\",\"F String\",\"G String\",\"H String\",\"I String\",\"J String\",\"K String\",\"L String\",\"M String\",\"N String\",\"O String\",\"P String\",\"R String\",\"S String\",\"T String\",\"U String\",\"V String\",\"W String\",\"X String\",\"Y String\",\"Z String\") order by string-length(xs:string($x)) ascending return string-length(xs:string($x)) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbylocal-18'(_Config) ->
   Qry = "<results> { for $x in (\"A String\",\"B String\",\"C String\",\"D String\",\"E String\",\"F String\",\"G String\",\"H String\",\"I String\",\"J String\",\"K String\",\"L String\",\"M String\",\"N String\",\"O String\",\"P String\",\"R String\",\"S String\",\"T String\",\"U String\",\"V String\",\"W String\",\"X String\",\"Y String\",\"Z String\") order by count(xs:string($x)) ascending return count(xs:string($x)) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbylocal-19'(_Config) ->
   Qry = "<results> { for $x in (\"A String\",\"B String\",\"C String\",\"D String\",\"E String\",\"F String\",\"G String\",\"H String\",\"I String\",\"J String\",\"K String\",\"L String\",\"M String\",\"N String\",\"O String\",\"P String\",\"R String\",\"S String\",\"T String\",\"U String\",\"V String\",\"W String\",\"X String\",\"Y String\",\"Z String\") order by string-length(xs:string($x)) ascending return string-length(xs:string($x)) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbylocal-20'(_Config) ->
   Qry = "<results> { for $x in (-100000000000000000,-10000000000000000,-1000000000000000,-100000000000000,-10000000000000,-1000000000000,-100000000000,-10000000000,-1000000000,-100000000,-10000000,-1000000,-100000,-10000,-1000,-100,-10,-1,-0) order by xs:decimal($x) ascending return xs:decimal($x) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>-100000000000000000 -10000000000000000 -1000000000000000 -100000000000000 -10000000000000 -1000000000000 -100000000000 -10000000000 -1000000000 -100000000 -10000000 -1000000 -100000 -10000 -1000 -100 -10 -1 0</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbylocal-21'(_Config) ->
   Qry = "<results> { for $x in (-100000000000000000,-10000000000000000,-1000000000000000,-100000000000000,-10000000000000,-1000000000000,-100000000000,-10000000000,-1000000000,-100000000,-10000000,-1000000,-100000,-10000,-1000,-100,-10,-1,-0) order by xs:decimal($x) descending return xs:decimal($x) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0 -1 -10 -100 -1000 -10000 -100000 -1000000 -10000000 -100000000 -1000000000 -10000000000 -100000000000 -1000000000000 -10000000000000 -100000000000000 -1000000000000000 -10000000000000000 -100000000000000000</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbylocal-22'(_Config) ->
   Qry = "<results> { for $x in (-100000000000000000,-10000000000000000,-1000000000000000,-100000000000000,-10000000000000,-1000000000000,-100000000000,-10000000000,-1000000000,-100000000,-10000000,-1000000,-100000,-10000,-1000,-100,-10,-1,-0) order by (xs:decimal($x) + xs:decimal($x)) descending return xs:decimal($x) + xs:decimal($x) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0 -2 -20 -200 -2000 -20000 -200000 -2000000 -20000000 -200000000 -2000000000 -20000000000 -200000000000 -2000000000000 -20000000000000 -200000000000000 -2000000000000000 -20000000000000000 -200000000000000000</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbylocal-25'(_Config) ->
   Qry = "<results> { for $x in (-100000000000000000,-10000000000000000,-1000000000000000,-100000000000000,-10000000000000,-1000000000000,-100000000000,-10000000000,-1000000000,-100000000,-10000000,-1000000,-100000,-10000,-1000,-100,-10,-1,-0) order by xs:float($x) descending return xs:float($x) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0 -1 -10 -100 -1000 -10000 -100000 -1.0E6 -1.0E7 -1.0E8 -1.0E9 -1.0E10 -1.0E11 -1.0E12 -1.0E13 -1.0E14 -1.0E15 -1.0E16 -1.0E17</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbylocal-26'(_Config) ->
   Qry = "<results> { for $x in (-100000000000000000,-10000000000000000,-1000000000000000,-100000000000000,-10000000000000,-1000000000000,-100000000000,-10000000000,-1000000000,-100000000,-10000000,-1000000,-100000,-10000,-1000,-100,-10,-1,-0) order by xs:decimal($x) descending return xs:decimal($x) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0 -1 -10 -100 -1000 -10000 -100000 -1000000 -10000000 -100000000 -1000000000 -10000000000 -100000000000 -1000000000000 -10000000000000 -100000000000000 -1000000000000000 -10000000000000000 -100000000000000000</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbylocal-27'(_Config) ->
   Qry = "<results> { for $x in (-100000000000000000,-10000000000000000,-1000000000000000,-100000000000000,-10000000000000,-1000000000000,-100000000000,-10000000000,-1000000000,-100000000,-10000000,-1000000,-100000,-10000,-1000,-100,-10,-1,-0) order by xs:double($x) descending return xs:double($x) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0 -1 -10 -100 -1000 -10000 -100000 -1.0E6 -1.0E7 -1.0E8 -1.0E9 -1.0E10 -1.0E11 -1.0E12 -1.0E13 -1.0E14 -1.0E15 -1.0E16 -1.0E17</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbylocal-28'(_Config) ->
   Qry = "<results> { for $x in (-100000000000000000,-10000000000000000,-1000000000000000,-100000000000000,-10000000000000,-1000000000000,-100000000000,-10000000000,-1000000000,-100000000,-10000000,-1000000,-100000,-10000,-1000,-100,-10,-1,-0) order by xs:integer($x) descending return xs:integer($x) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0 -1 -10 -100 -1000 -10000 -100000 -1000000 -10000000 -100000000 -1000000000 -10000000000 -100000000000 -1000000000000 -10000000000000 -100000000000000 -1000000000000000 -10000000000000000 -100000000000000000</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbylocal-29'(_Config) ->
   Qry = "<results> { for $x in (-100000000000000000,-10000000000000000,-1000000000000000,-100000000000000,-10000000000000,-1000000000000,-100000000000,-10000000000,-1000000000,-100000000,-10000000,-1000000,-100000,-10000,-1000,-100,-10,-1,-0) order by (xs:decimal($x) * -1) descending return (xs:decimal($x) * -1) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>100000000000000000 10000000000000000 1000000000000000 100000000000000 10000000000000 1000000000000 100000000000 10000000000 1000000000 100000000 10000000 1000000 100000 10000 1000 100 10 1 0</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbylocal-30'(_Config) ->
   Qry = "<results> { for $x in (100000000000000000,10000000000000000,1000000000000000,100000000000000,10000000000000,1000000000000,100000000000,10000000000,1000000000,100000000,10000000,1000000,100000,10000,1000,100,10,1,0) order by xs:decimal($x) ascending return xs:decimal($x) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0 1 10 100 1000 10000 100000 1000000 10000000 100000000 1000000000 10000000000 100000000000 1000000000000 10000000000000 100000000000000 1000000000000000 10000000000000000 100000000000000000</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbylocal-31'(_Config) ->
   Qry = "<results> { for $x in (100000000000000000,10000000000000000,1000000000000000,100000000000000,10000000000000,1000000000000,100000000000,10000000000,1000000000,100000000,10000000,1000000,100000,10000,1000,100,10,1,0) order by xs:decimal($x) descending return xs:decimal($x) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>100000000000000000 10000000000000000 1000000000000000 100000000000000 10000000000000 1000000000000 100000000000 10000000000 1000000000 100000000 10000000 1000000 100000 10000 1000 100 10 1 0</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbylocal-32'(_Config) ->
   Qry = "<results> { for $x in (100000000000000000,10000000000000000,1000000000000000,100000000000000,10000000000000,1000000000000,100000000000,10000000000,1000000000,100000000,10000000,1000000,100000,10000,1000,100,10,1,0) order by (xs:decimal($x) + xs:decimal($x)) descending return xs:decimal($x) + xs:decimal($x) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>200000000000000000 20000000000000000 2000000000000000 200000000000000 20000000000000 2000000000000 200000000000 20000000000 2000000000 200000000 20000000 2000000 200000 20000 2000 200 20 2 0</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbylocal-35'(_Config) ->
   Qry = "<results> { for $x in (100000000000000000,10000000000000000,1000000000000000,100000000000000,10000000000000,1000000000000,100000000000,10000000000,1000000000,100000000,10000000,1000000,100000,10000,1000,100,10,1,0) order by xs:float($x) descending return xs:float($x) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>1.0E17 1.0E16 1.0E15 1.0E14 1.0E13 1.0E12 1.0E11 1.0E10 1.0E9 1.0E8 1.0E7 1.0E6 100000 10000 1000 100 10 1 0</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbylocal-36'(_Config) ->
   Qry = "<results> { for $x in (100000000000000000,10000000000000000,1000000000000000,100000000000000,10000000000000,1000000000000,100000000000,10000000000,1000000000,100000000,10000000,1000000,100000,10000,1000,100,10,1,0) order by xs:decimal($x) descending return xs:decimal($x) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>100000000000000000 10000000000000000 1000000000000000 100000000000000 10000000000000 1000000000000 100000000000 10000000000 1000000000 100000000 10000000 1000000 100000 10000 1000 100 10 1 0</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbylocal-37'(_Config) ->
   Qry = "<results> { for $x in (100000000000000000,10000000000000000,1000000000000000,100000000000000,10000000000000,1000000000000,100000000000,10000000000,1000000000,100000000,10000000,1000000,100000,10000,1000,100,10,1,0) order by xs:double($x) descending return xs:double($x) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>1.0E17 1.0E16 1.0E15 1.0E14 1.0E13 1.0E12 1.0E11 1.0E10 1.0E9 1.0E8 1.0E7 1.0E6 100000 10000 1000 100 10 1 0</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbylocal-38'(_Config) ->
   Qry = "<results> { for $x in (100000000000000000,10000000000000000,1000000000000000,100000000000000,10000000000000,1000000000000,100000000000,10000000000,1000000000,100000000,10000000,1000000,100000,10000,1000,100,10,1,0) order by xs:integer($x) descending return xs:integer($x) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>100000000000000000 10000000000000000 1000000000000000 100000000000000 10000000000000 1000000000000 100000000000 10000000000 1000000000 100000000 10000000 1000000 100000 10000 1000 100 10 1 0</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbylocal-39'(_Config) ->
   Qry = "<results> { for $x in (100000000000000000,10000000000000000,1000000000000000,100000000000000,10000000000000,1000000000000,100000000000,10000000000,1000000000,100000000,10000000,1000000,100000,10000,1000,100,10,1,0) order by string($x) ascending return string($x) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0 1 10 100 1000 10000 100000 1000000 10000000 100000000 1000000000 10000000000 100000000000 1000000000000 10000000000000 100000000000000 1000000000000000 10000000000000000 100000000000000000</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbylocal-40'(_Config) ->
   Qry = "<results> { for $x in (0.000000000000000001,0.00000000000000001,0.0000000000000001,0.000000000000001,0.00000000000001,0.0000000000001,0.000000000001,0.00000000001,0.0000000001,0.000000001,0.00000001,0.0000001,0.000001,0.00001,0.0001,0.001,0.01,0.1,0.0) order by $x ascending return $x } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0 0.000000000000000001 0.00000000000000001 0.0000000000000001 0.000000000000001 0.00000000000001 0.0000000000001 0.000000000001 0.00000000001 0.0000000001 0.000000001 0.00000001 0.0000001 0.000001 0.00001 0.0001 0.001 0.01 0.1</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbylocal-41'(_Config) ->
   Qry = "<results> { for $x in (0.000000000000000001,0.00000000000000001,0.0000000000000001,0.000000000000001,0.00000000000001,0.0000000000001,0.000000000001,0.00000000001,0.0000000001,0.000000001,0.00000001,0.0000001,0.000001,0.00001,0.0001,0.001,0.01,0.1,0.0) order by xs:decimal($x) descending return xs:decimal($x) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0.1 0.01 0.001 0.0001 0.00001 0.000001 0.0000001 0.00000001 0.000000001 0.0000000001 0.00000000001 0.000000000001 0.0000000000001 0.00000000000001 0.000000000000001 0.0000000000000001 0.00000000000000001 0.000000000000000001 0</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbylocal-42'(_Config) ->
   Qry = "<results> { for $x in (0.000000000000000001,0.00000000000000001,0.0000000000000001,0.000000000000001,0.00000000000001,0.0000000000001,0.000000000001,0.00000000001,0.0000000001,0.000000001,0.00000001,0.0000001,0.000001,0.00001,0.0001,0.001,0.01,0.1,0.0) order by (xs:decimal($x) + xs:decimal($x)) descending return xs:decimal($x) + xs:decimal($x) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0.2 0.02 0.002 0.0002 0.00002 0.000002 0.0000002 0.00000002 0.000000002 0.0000000002 0.00000000002 0.000000000002 0.0000000000002 0.00000000000002 0.000000000000002 0.0000000000000002 0.00000000000000002 0.000000000000000002 0</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbylocal-43'(_Config) ->
   Qry = "<results>{ for $x in (<a>0.000000000000000001</a>,<a>0.00000000000000001</a>,<a>0.0000000000000001</a>,<a>0.000000000000001</a>,<a>0.00000000000001</a>,<a>0.0000000000001</a>,<a>0.000000000001</a>,<a>0.00000000001</a>,<a>0.0000000001</a>,<a>0.000000001</a>,<a>0.00000001</a>,<a>0.0000001</a>,<a>0.000001</a>,<a>0.00001</a>,<a>0.0001</a>,<a>0.001</a>,<a>0.01</a>,<a>0.1</a>,<a>0.0</a>) order by $x is $x ascending return $x is $x}</results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>true true true true true true true true true true true true true true true true true true true</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbylocal-44'(_Config) ->
   Qry = "<results>{ for $x in (<a>0.000000000000000001</a>,<a>0.00000000000000001</a>,<a>0.0000000000000001</a>,<a>0.000000000000001</a>,<a>0.00000000000001</a>,<a>0.0000000000001</a>,<a>0.000000000001</a>,<a>0.00000000001</a>,<a>0.0000000001</a>,<a>0.000000001</a>,<a>0.00000001</a>,<a>0.0000001</a>,<a>0.000001</a>,<a>0.00001</a>,<a>0.0001</a>,<a>0.001</a>,<a>0.01</a>,<a>0.1</a>,<a>0.0</a>) order by $x is $x descending return $x is $x }</results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>true true true true true true true true true true true true true true true true true true true</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbylocal-45'(_Config) ->
   Qry = "<results> { for $x in (0.000000000000000001,0.00000000000000001,0.0000000000000001,0.000000000000001,0.00000000000001,0.0000000000001,0.000000000001,0.00000000001,0.0000000001,0.000000001,0.00000001,0.0000001,0.000001,0.00001,0.0001,0.001,0.01,0.1,0.0) order by xs:float($x) descending return xs:float($x) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0.1 0.01 0.001 0.0001 0.00001 0.000001 1.0E-7 1.0E-8 1.0E-9 1.0E-10 1.0E-11 1.0E-12 1.0E-13 1.0E-14 1.0E-15 1.0E-16 1.0E-17 1.0E-18 0</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbylocal-46'(_Config) ->
   Qry = "<results> { for $x in (0.000000000000000001,0.00000000000000001,0.0000000000000001,0.000000000000001,0.00000000000001,0.0000000000001,0.000000000001,0.00000000001,0.0000000001,0.000000001,0.00000001,0.0000001,0.000001,0.00001,0.0001,0.001,0.01,0.1,0.0) order by xs:decimal($x) descending return xs:decimal($x) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0.1 0.01 0.001 0.0001 0.00001 0.000001 0.0000001 0.00000001 0.000000001 0.0000000001 0.00000000001 0.000000000001 0.0000000000001 0.00000000000001 0.000000000000001 0.0000000000000001 0.00000000000000001 0.000000000000000001 0</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbylocal-47'(_Config) ->
   Qry = "<results> { for $x in (0.000000000000000001,0.00000000000000001,0.0000000000000001,0.000000000000001,0.00000000000001,0.0000000000001,0.000000000001,0.00000000001,0.0000000001,0.000000001,0.00000001,0.0000001,0.000001,0.00001,0.0001,0.001,0.01,0.1,0.0) order by xs:double($x) descending return xs:double($x) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0.1 0.01 0.001 0.0001 0.00001 0.000001 1.0E-7 1.0E-8 1.0E-9 1.0E-10 1.0E-11 1.0E-12 1.0E-13 1.0E-14 1.0E-15 1.0E-16 1.0E-17 1.0E-18 0</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbylocal-49'(_Config) ->
   Qry = "<results> { for $x in (0.000000000000000001,0.00000000000000001,0.0000000000000001,0.000000000000001,0.00000000000001,0.0000000000001,0.000000000001,0.00000000001,0.0000000001,0.000000001,0.00000001,0.0000001,0.000001,0.00001,0.0001,0.001,0.01,0.1,0.0) order by string($x) ascending return string($x) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0 0.000000000000000001 0.00000000000000001 0.0000000000000001 0.000000000000001 0.00000000000001 0.0000000000001 0.000000000001 0.00000000001 0.0000000001 0.000000001 0.00000001 0.0000001 0.000001 0.00001 0.0001 0.001 0.01 0.1</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbylocal-50'(_Config) ->
   Qry = "<results> { for $x in (-0.000000000000000001,-0.00000000000000001,-0.0000000000000001,-0.000000000000001,-0.00000000000001,-0.0000000000001,-0.000000000001,-0.00000000001,-0.0000000001,-0.000000001,-0.00000001,-0.0000001,-0.000001,-0.00001,-0.0001,-0.001,-0.01,-0.0,-0.1) order by xs:decimal($x) ascending return xs:decimal($x) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>-0.1 -0.01 -0.001 -0.0001 -0.00001 -0.000001 -0.0000001 -0.00000001 -0.000000001 -0.0000000001 -0.00000000001 -0.000000000001 -0.0000000000001 -0.00000000000001 -0.000000000000001 -0.0000000000000001 -0.00000000000000001 -0.000000000000000001 0</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbylocal-51'(_Config) ->
   Qry = "<results> { for $x in (-0.000000000000000001,-0.00000000000000001,-0.0000000000000001,-0.000000000000001,-0.00000000000001,-0.0000000000001,-0.000000000001,-0.00000000001,-0.0000000001,-0.000000001,-0.00000001,-0.0000001,-0.000001,-0.00001,-0.0001,-0.001,-0.01,-0.0,-0.1) order by xs:decimal($x) descending return xs:decimal($x) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0 -0.000000000000000001 -0.00000000000000001 -0.0000000000000001 -0.000000000000001 -0.00000000000001 -0.0000000000001 -0.000000000001 -0.00000000001 -0.0000000001 -0.000000001 -0.00000001 -0.0000001 -0.000001 -0.00001 -0.0001 -0.001 -0.01 -0.1</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbylocal-52'(_Config) ->
   Qry = "<results> { for $x in (-0.000000000000000001,-0.00000000000000001,-0.0000000000000001,-0.000000000000001,-0.00000000000001,-0.0000000000001,-0.000000000001,-0.00000000001,-0.0000000001,-0.000000001,-0.00000001,-0.0000001,-0.000001,-0.00001,-0.0001,-0.001,-0.01,-0.0,-0.1) order by (xs:decimal($x) + xs:decimal($x)) descending return xs:decimal($x) + xs:decimal($x) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0 -0.000000000000000002 -0.00000000000000002 -0.0000000000000002 -0.000000000000002 -0.00000000000002 -0.0000000000002 -0.000000000002 -0.00000000002 -0.0000000002 -0.000000002 -0.00000002 -0.0000002 -0.000002 -0.00002 -0.0002 -0.002 -0.02 -0.2</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbylocal-55'(_Config) ->
   Qry = "<results> { for $x in (-0.000000000000000001,-0.00000000000000001,-0.0000000000000001,-0.000000000000001,-0.00000000000001,-0.0000000000001,-0.000000000001,-0.00000000001,-0.0000000001,-0.000000001,-0.00000001,-0.0000001,-0.000001,-0.00001,-0.0001,-0.001,-0.01,-0.0,-0.1) order by xs:float($x) descending return xs:float($x) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0 -1.0E-18 -1.0E-17 -1.0E-16 -1.0E-15 -1.0E-14 -1.0E-13 -1.0E-12 -1.0E-11 -1.0E-10 -1.0E-9 -1.0E-8 -1.0E-7 -0.000001 -0.00001 -0.0001 -0.001 -0.01 -0.1</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbylocal-56'(_Config) ->
   Qry = "<results> { for $x in (-0.000000000000000001,-0.00000000000000001,-0.0000000000000001,-0.000000000000001,-0.00000000000001,-0.0000000000001,-0.000000000001,-0.00000000001,-0.0000000001,-0.000000001,-0.00000001,-0.0000001,-0.000001,-0.00001,-0.0001,-0.001,-0.01,-0.0,-0.1) order by xs:decimal($x) descending return xs:decimal($x) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0 -0.000000000000000001 -0.00000000000000001 -0.0000000000000001 -0.000000000000001 -0.00000000000001 -0.0000000000001 -0.000000000001 -0.00000000001 -0.0000000001 -0.000000001 -0.00000001 -0.0000001 -0.000001 -0.00001 -0.0001 -0.001 -0.01 -0.1</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbylocal-57'(_Config) ->
   Qry = "<results> { for $x in (-0.000000000000000001,-0.00000000000000001,-0.0000000000000001,-0.000000000000001,-0.00000000000001,-0.0000000000001,-0.000000000001,-0.00000000001,-0.0000000001,-0.000000001,-0.00000001,-0.0000001,-0.000001,-0.00001,-0.0001,-0.001,-0.01,-0.0,-0.1) order by xs:double($x) descending return xs:double($x) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0 -1.0E-18 -1.0E-17 -1.0E-16 -1.0E-15 -1.0E-14 -1.0E-13 -1.0E-12 -1.0E-11 -1.0E-10 -1.0E-9 -1.0E-8 -1.0E-7 -0.000001 -0.00001 -0.0001 -0.001 -0.01 -0.1</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbylocal-59'(_Config) ->
   Qry = "<results> { for $x in (-0.000000000000000001,-0.00000000000000001,-0.0000000000000001,-0.000000000000001,-0.00000000000001,-0.0000000000001,-0.000000000001,-0.00000000001,-0.0000000001,-0.000000001,-0.00000001,-0.0000001,-0.000001,-0.00001,-0.0001,-0.001,-0.01,-0.0,-0.1) order by string($x) ascending return string($x) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>-0.000000000000000001 -0.00000000000000001 -0.0000000000000001 -0.000000000000001 -0.00000000000001 -0.0000000000001 -0.000000000001 -0.00000000001 -0.0000000001 -0.000000001 -0.00000001 -0.0000001 -0.000001 -0.00001 -0.0001 -0.001 -0.01 -0.1 0</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbylocal-60'(_Config) ->
   Qry = "for $x in (\"A\",\"B\",\"C\") order by string($x) ascending collation \"http://nonexistentcollition.org/ifsupportedwoooayouarethebestQueryimplementation/makeitharder\" return string($x)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0076") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbywithout-1'(_Config) ->
   Qry = "<results> { for $x in (\"A String\",\"B String\",\"C String\",\"D String\",\"E String\",\"F String\",\"G String\",\"H String\",\"I String\",\"J String\",\"K String\",\"L String\",\"M String\",\"N String\",\"O String\",\"P String\",\"R String\",\"S String\",\"T String\",\"U String\",\"V String\",\"W String\",\"X String\",\"Y String\",\"Z String\") order by xs:string($x) return xs:string($x) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>A String B String C String D String E String F String G String H String I String J String K String L String M String N String O String P String R String S String T String U String V String W String X String Y String Z String</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbywithout-2'(_Config) ->
   Qry = "<results> { for $x in (\"A String\",\"B String\",\"C String\",\"D String\",\"E String\",\"F String\",\"G String\",\"H String\",\"I String\",\"J String\",\"K String\",\"L String\",\"M String\",\"N String\",\"O String\",\"P String\",\"R String\",\"S String\",\"T String\",\"U String\",\"V String\",\"W String\",\"X String\",\"Y String\",\"Z String\") order by concat(xs:string($x),\"()\") return concat(xs:string($x),\"()\") } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>A String() B String() C String() D String() E String() F String() G String() H String() I String() J String() K String() L String() M String() N String() O String() P String() R String() S String() T String() U String() V String() W String() X String() Y String() Z String()</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbywithout-3'(_Config) ->
   Qry = "<results> { for $x in (\"A String\",\"B String\",\"C String\",\"D String\",\"E String\",\"F String\",\"G String\",\"H String\",\"I String\",\"J String\",\"K String\",\"L String\",\"M String\",\"N String\",\"O String\",\"P String\",\"R String\",\"S String\",\"T String\",\"U String\",\"V String\",\"W String\",\"X String\",\"Y String\",\"Z String\") order by concat(xs:string($x),\"another String After\") return concat(xs:string($x),\"another String After\") } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>A Stringanother String After B Stringanother String After C Stringanother String After D Stringanother String After E Stringanother String After F Stringanother String After G Stringanother String After H Stringanother String After I Stringanother String After J Stringanother String After K Stringanother String After L Stringanother String After M Stringanother String After N Stringanother String After O Stringanother String After P Stringanother String After R Stringanother String After S Stringanother String After T Stringanother String After U Stringanother String After V Stringanother String After W Stringanother String After X Stringanother String After Y Stringanother String After Z Stringanother String After</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbywithout-4'(_Config) ->
   Qry = "<results> { for $x in (\"A String\",\"B String\",\"C String\",\"D String\",\"E String\",\"F String\",\"G String\",\"H String\",\"I String\",\"J String\",\"K String\",\"L String\",\"M String\",\"N String\",\"O String\",\"P String\",\"R String\",\"S String\",\"T String\",\"U String\",\"V String\",\"W String\",\"X String\",\"Y String\",\"Z String\") order by concat(\"another String Before\",xs:string($x)) return concat(\"another String Before\",xs:string($x)) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>another String BeforeA String another String BeforeB String another String BeforeC String another String BeforeD String another String BeforeE String another String BeforeF String another String BeforeG String another String BeforeH String another String BeforeI String another String BeforeJ String another String BeforeK String another String BeforeL String another String BeforeM String another String BeforeN String another String BeforeO String another String BeforeP String another String BeforeR String another String BeforeS String another String BeforeT String another String BeforeU String another String BeforeV String another String BeforeW String another String BeforeX String another String BeforeY String another String BeforeZ String</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbywithout-5'(_Config) ->
   Qry = "<results> { for $x in (\"A String\",\"B String\",\"C String\",\"D String\",\"E String\",\"F String\",\"G String\",\"H String\",\"I String\",\"J String\",\"K String\",\"L String\",\"M String\",\"N String\",\"O String\",\"P String\",\"R String\",\"S String\",\"T String\",\"U String\",\"V String\",\"W String\",\"X String\",\"Y String\",\"Z String\") order by concat(xs:string($x),\"\") return concat(xs:string($x),\"\") } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>A String B String C String D String E String F String G String H String I String J String K String L String M String N String O String P String R String S String T String U String V String W String X String Y String Z String</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbywithout-6'(_Config) ->
   Qry = "<results> { for $x in (\"A String\",\"B String\",\"C String\",\"D String\",\"E String\",\"F String\",\"G String\",\"H String\",\"I String\",\"J String\",\"K String\",\"L String\",\"M String\",\"N String\",\"O String\",\"P String\",\"R String\",\"S String\",\"T String\",\"U String\",\"V String\",\"W String\",\"X String\",\"Y String\",\"Z String\") order by concat(\"\",xs:string($x)) return concat(\"\",xs:string($x)) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>A String B String C String D String E String F String G String H String I String J String K String L String M String N String O String P String R String S String T String U String V String W String X String Y String Z String</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbywithout-7'(_Config) ->
   Qry = "<results> { for $x in (<a>A String</a>,<a>B String</a>,<a>C String</a>,<a>D String</a>,<a>E String</a>,<a>F String</a>,<a>G String</a>,<a>H String</a>,<a>I String</a>, <a>J String</a>,<a>K String</a>,<a>L String</a>,<a>M String</a>,<a>N String</a>,<a>O String</a>,<a>P String</a>,<a>R String</a>,<a>S String</a>,<a>T String</a>, <a>U String</a>,<a>V String</a>,<a>W String</a>,<a>X String</a>,<a>Y String</a>,<a>Z String</a>) order by $x is $x return $x is $x } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>true true true true true true true true true true true true true true true true true true true true true true true true true</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbywithout-8'(_Config) ->
   Qry = "<results> { for $x in (\"A String\",\"B String\",\"C String\",\"D String\",\"E String\",\"F String\",\"G String\",\"H String\",\"I String\",\"J String\",\"K String\",\"L String\",\"M String\",\"N String\",\"O String\",\"P String\",\"R String\",\"S String\",\"T String\",\"U String\",\"V String\",\"W String\",\"X String\",\"Y String\",\"Z String\") order by concat(xs:string($x),xs:string($x)) return concat(xs:string($x),xs:string($x)) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>A StringA String B StringB String C StringC String D StringD String E StringE String F StringF String G StringG String H StringH String I StringI String J StringJ String K StringK String L StringL String M StringM String N StringN String O StringO String P StringP String R StringR String S StringS String T StringT String U StringU String V StringV String W StringW String X StringX String Y StringY String Z StringZ String</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbywithout-9'(_Config) ->
   Qry = "<results> { for $x in (<a>A String</a>,<a>B String</a>,<a>C String</a>,<a>D String</a>,<a>E String</a>,<a>F String</a>,<a>G String</a>,<a>H String</a>,<a>I String</a>, <a>J String</a>,<a>K String</a>,<a>L String</a>,<a>M String</a>,<a>N String</a>,<a>O String</a>,<a>P String</a>,<a>R String</a>,<a>S String</a>,<a>T String</a>, <a>U String</a>,<a>V String</a>,<a>W String</a>,<a>X String</a>,<a>Y String</a>,<a>Z String</a>) order by string-length($x) return string-length($x) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbywithout-10'(_Config) ->
   Qry = "<results> { for $x in (\"A String\",\"B String\",\"C String\",\"D String\",\"E String\",\"F String\",\"G String\",\"H String\",\"I String\",\"J String\",\"K String\",\"L String\",\"M String\",\"N String\",\"O String\",\"P String\",\"R String\",\"S String\",\"T String\",\"U String\",\"V String\",\"W String\",\"X String\",\"Y String\",\"Z String\") order by count(xs:string($x)) return count(xs:string($x)) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbywithout-11'(_Config) ->
   Qry = "<results> { for $x in (-100000000000000000,-10000000000000000,-1000000000000000,-100000000000000,-10000000000000,-1000000000000,-100000000000,-10000000000,-1000000000,-100000000,-10000000,-1000000,-100000,-10000,-1000,-100,-10,-1,-0) order by xs:decimal($x) return xs:decimal($x) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>-100000000000000000 -10000000000000000 -1000000000000000 -100000000000000 -10000000000000 -1000000000000 -100000000000 -10000000000 -1000000000 -100000000 -10000000 -1000000 -100000 -10000 -1000 -100 -10 -1 0</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbywithout-12'(_Config) ->
   Qry = "<results> { for $x in (-100000000000000000,-10000000000000000,-1000000000000000,-100000000000000,-10000000000000,-1000000000000,-100000000000,-10000000000,-1000000000,-100000000,-10000000,-1000000,-100000,-10000,-1000,-100,-10,-1,-0) order by (xs:decimal($x) + xs:decimal($x)) return xs:decimal($x) + xs:decimal($x) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>-200000000000000000 -20000000000000000 -2000000000000000 -200000000000000 -20000000000000 -2000000000000 -200000000000 -20000000000 -2000000000 -200000000 -20000000 -2000000 -200000 -20000 -2000 -200 -20 -2 0</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbywithout-13'(_Config) ->
   Qry = "<results> { for $x in (<orderData>-100000000000000000</orderData>,<orderData>-10000000000000000</orderData>,<orderData>-1000000000000000</orderData>,<orderData>-100000000000000</orderData>, <orderData>-10000000000000</orderData>,<orderData>-1000000000000</orderData>,<orderData>-100000000000</orderData>,<orderData>-10000000000</orderData>,<orderData>-1000000000</orderData>, <orderData>-100000000</orderData>,<orderData>-10000000</orderData>,<orderData>-1000000</orderData>,<orderData>-100000</orderData>,<orderData>-10000</orderData>,<orderData>-1000</orderData>, <orderData>-100</orderData>,<orderData>-10</orderData>,<orderData>-1</orderData>,<orderData>-0</orderData>) order by $x is $x return $x is $x } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>true true true true true true true true true true true true true true true true true true true</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbywithout-14'(_Config) ->
   Qry = "<results> { for $x in (-100000000000000000,-10000000000000000,-1000000000000000,-100000000000000,-10000000000000,-1000000000000,-100000000000,-10000000000,-1000000000,-100000000,-10000000,-1000000,-100000,-10000,-1000,-100,-10,-1,-0) order by xs:float($x) return xs:float($x) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>-1.0E17 -1.0E16 -1.0E15 -1.0E14 -1.0E13 -1.0E12 -1.0E11 -1.0E10 -1.0E9 -1.0E8 -1.0E7 -1.0E6 -100000 -10000 -1000 -100 -10 -1 0</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbywithout-15'(_Config) ->
   Qry = "<results> { for $x in (-100000000000000000,-10000000000000000,-1000000000000000,-100000000000000,-10000000000000,-1000000000000,-100000000000,-10000000000,-1000000000,-100000000,-10000000,-1000000,-100000,-10000,-1000,-100,-10,-1,-0) order by xs:double($x) return xs:double($x) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>-1.0E17 -1.0E16 -1.0E15 -1.0E14 -1.0E13 -1.0E12 -1.0E11 -1.0E10 -1.0E9 -1.0E8 -1.0E7 -1.0E6 -100000 -10000 -1000 -100 -10 -1 0</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbywithout-16'(_Config) ->
   Qry = "<results> { for $x in (-100000000000000000,-10000000000000000,-1000000000000000,-100000000000000,-10000000000000,-1000000000000,-100000000000,-10000000000,-1000000000,-100000000,-10000000,-1000000,-100000,-10000,-1000,-100,-10,-1,-0) order by xs:integer($x) return xs:integer($x) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>-100000000000000000 -10000000000000000 -1000000000000000 -100000000000000 -10000000000000 -1000000000000 -100000000000 -10000000000 -1000000000 -100000000 -10000000 -1000000 -100000 -10000 -1000 -100 -10 -1 0</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbywithout-17'(_Config) ->
   Qry = "<results> { for $x in (-100000000000000000,-10000000000000000,-1000000000000000,-100000000000000,-10000000000000,-1000000000000,-100000000000,-10000000000,-1000000000,-100000000,-10000000,-1000000,-100000,-10000,-1000,-100,-10,-1,-0) order by (xs:decimal($x) * -1) return (xs:decimal($x) * -1) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0 1 10 100 1000 10000 100000 1000000 10000000 100000000 1000000000 10000000000 100000000000 1000000000000 10000000000000 100000000000000 1000000000000000 10000000000000000 100000000000000000</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbywithout-18'(_Config) ->
   Qry = "<results> { for $x in (100000000000000000,10000000000000000,1000000000000000,100000000000000,10000000000000,1000000000000,100000000000,10000000000,1000000000,100000000,10000000,1000000,100000,10000,1000,100,10,1,0) order by xs:decimal($x) return xs:decimal($x) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0 1 10 100 1000 10000 100000 1000000 10000000 100000000 1000000000 10000000000 100000000000 1000000000000 10000000000000 100000000000000 1000000000000000 10000000000000000 100000000000000000</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbywithout-19'(_Config) ->
   Qry = "<results> { for $x in (100000000000000000,10000000000000000,1000000000000000,100000000000000,10000000000000,1000000000000,100000000000,10000000000,1000000000,100000000,10000000,1000000,100000,10000,1000,100,10,1,0) order by (xs:decimal($x) + xs:decimal($x)) return xs:decimal($x) + xs:decimal($x) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0 2 20 200 2000 20000 200000 2000000 20000000 200000000 2000000000 20000000000 200000000000 2000000000000 20000000000000 200000000000000 2000000000000000 20000000000000000 200000000000000000</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbywithout-20'(_Config) ->
   Qry = "<results> { for $x in (<orderData>100000000000000000</orderData>,<orderData>10000000000000000</orderData>,<orderData>1000000000000000</orderData>, <orderData>100000000000000</orderData>,<orderData>10000000000000</orderData>,<orderData>1000000000000</orderData>,<orderData>100000000000</orderData>, <orderData>10000000000</orderData>,<orderData>1000000000</orderData>,<orderData>100000000</orderData>,<orderData>10000000</orderData>, <orderData>1000000</orderData>,<orderData>100000</orderData>,<orderData>10000</orderData>,<orderData>1000</orderData>,<orderData>100</orderData>, <orderData>10</orderData>,<orderData>1</orderData>,<orderData>0</orderData>) order by $x is $x return $x is $x } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>true true true true true true true true true true true true true true true true true true true</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbywithout-21'(_Config) ->
   Qry = "<results> { for $x in (100000000000000000,10000000000000000,1000000000000000,100000000000000,10000000000000,1000000000000,100000000000,10000000000,1000000000,100000000,10000000,1000000,100000,10000,1000,100,10,1,0) order by xs:float($x) return xs:float($x) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0 1 10 100 1000 10000 100000 1.0E6 1.0E7 1.0E8 1.0E9 1.0E10 1.0E11 1.0E12 1.0E13 1.0E14 1.0E15 1.0E16 1.0E17</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbywithout-22'(_Config) ->
   Qry = "<results> { for $x in (100000000000000000,10000000000000000,1000000000000000,100000000000000,10000000000000,1000000000000,100000000000,10000000000,1000000000,100000000,10000000,1000000,100000,10000,1000,100,10,1,0) order by xs:decimal($x) return xs:decimal($x) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0 1 10 100 1000 10000 100000 1000000 10000000 100000000 1000000000 10000000000 100000000000 1000000000000 10000000000000 100000000000000 1000000000000000 10000000000000000 100000000000000000</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbywithout-23'(_Config) ->
   Qry = "<results> { for $x in (100000000000000000,10000000000000000,1000000000000000,100000000000000,10000000000000,1000000000000,100000000000,10000000000,1000000000,100000000,10000000,1000000,100000,10000,1000,100,10,1,0) order by xs:double($x) return xs:double($x) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0 1 10 100 1000 10000 100000 1.0E6 1.0E7 1.0E8 1.0E9 1.0E10 1.0E11 1.0E12 1.0E13 1.0E14 1.0E15 1.0E16 1.0E17</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbywithout-24'(_Config) ->
   Qry = "<results> { for $x in (100000000000000000,10000000000000000,1000000000000000,100000000000000,10000000000000,1000000000000,100000000000,10000000000,1000000000,100000000,10000000,1000000,100000,10000,1000,100,10,1,0) order by xs:integer($x) return xs:integer($x) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0 1 10 100 1000 10000 100000 1000000 10000000 100000000 1000000000 10000000000 100000000000 1000000000000 10000000000000 100000000000000 1000000000000000 10000000000000000 100000000000000000</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbywithout-25'(_Config) ->
   Qry = "<results> { for $x in (100000000000000000,10000000000000000,1000000000000000,100000000000000,10000000000000,1000000000000,100000000000,10000000000,1000000000,100000000,10000000,1000000,100000,10000,1000,100,10,1,0) order by string($x) return string($x) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0 1 10 100 1000 10000 100000 1000000 10000000 100000000 1000000000 10000000000 100000000000 1000000000000 10000000000000 100000000000000 1000000000000000 10000000000000000 100000000000000000</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbywithout-26'(_Config) ->
   Qry = "<results> { for $x in (0.000000000000000001,0.00000000000000001,0.0000000000000001,0.000000000000001,0.00000000000001,0.0000000000001,0.000000000001,0.00000000001,0.0000000001,0.000000001,0.00000001,0.0000001,0.000001,0.00001,0.0001,0.001,0.01,0.1,0.0) order by $x return $x } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0 0.000000000000000001 0.00000000000000001 0.0000000000000001 0.000000000000001 0.00000000000001 0.0000000000001 0.000000000001 0.00000000001 0.0000000001 0.000000001 0.00000001 0.0000001 0.000001 0.00001 0.0001 0.001 0.01 0.1</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbywithout-27'(_Config) ->
   Qry = "<results> { for $x in (0.000000000000000001,0.00000000000000001,0.0000000000000001,0.000000000000001,0.00000000000001,0.0000000000001,0.000000000001,0.00000000001,0.0000000001,0.000000001,0.00000001,0.0000001,0.000001,0.00001,0.0001,0.001,0.01,0.1,0.0) order by xs:decimal($x) return xs:decimal($x) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0 0.000000000000000001 0.00000000000000001 0.0000000000000001 0.000000000000001 0.00000000000001 0.0000000000001 0.000000000001 0.00000000001 0.0000000001 0.000000001 0.00000001 0.0000001 0.000001 0.00001 0.0001 0.001 0.01 0.1</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbywithout-28'(_Config) ->
   Qry = "<results> { for $x in (0.000000000000000001,0.00000000000000001,0.0000000000000001,0.000000000000001,0.00000000000001,0.0000000000001,0.000000000001,0.00000000001,0.0000000001,0.000000001,0.00000001,0.0000001,0.000001,0.00001,0.0001,0.001,0.01,0.1,0.0) order by (xs:decimal($x) + xs:decimal($x)) return xs:decimal($x) + xs:decimal($x) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0 0.000000000000000002 0.00000000000000002 0.0000000000000002 0.000000000000002 0.00000000000002 0.0000000000002 0.000000000002 0.00000000002 0.0000000002 0.000000002 0.00000002 0.0000002 0.000002 0.00002 0.0002 0.002 0.02 0.2</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbywithout-29'(_Config) ->
   Qry = "<results> { for $x in (<orderData>0.000000000000000001</orderData>,<orderData>0.00000000000000001</orderData>,<orderData>0.0000000000000001</orderData>,<orderData>0.000000000000001</orderData>, <orderData>0.00000000000001</orderData>,<orderData>0.0000000000001</orderData>,<orderData>0.000000000001</orderData>,<orderData>0.00000000001</orderData>,<orderData>0.0000000001</orderData>, <orderData>0.000000001</orderData>,<orderData>0.00000001</orderData>,<orderData>0.0000001</orderData>,<orderData>0.000001</orderData>,<orderData>0.00001</orderData>, <orderData>0.0001</orderData>,<orderData>0.001</orderData>,<orderData>0.01</orderData>,<orderData>0.1</orderData>,<orderData>0.0</orderData>) order by $x is $x return $x is $x } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>true true true true true true true true true true true true true true true true true true true</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbywithout-30'(_Config) ->
   Qry = "<results> { for $x in (0.000000000000000001,0.00000000000000001,0.0000000000000001,0.000000000000001,0.00000000000001,0.0000000000001,0.000000000001,0.00000000001,0.0000000001,0.000000001,0.00000001,0.0000001,0.000001,0.00001,0.0001,0.001,0.01,0.1,0.0) order by xs:float($x) return xs:float($x) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0 1.0E-18 1.0E-17 1.0E-16 1.0E-15 1.0E-14 1.0E-13 1.0E-12 1.0E-11 1.0E-10 1.0E-9 1.0E-8 1.0E-7 0.000001 0.00001 0.0001 0.001 0.01 0.1</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbywithout-31'(_Config) ->
   Qry = "<results> { for $x in (0.000000000000000001,0.00000000000000001,0.0000000000000001,0.000000000000001,0.00000000000001,0.0000000000001,0.000000000001,0.00000000001,0.0000000001,0.000000001,0.00000001,0.0000001,0.000001,0.00001,0.0001,0.001,0.01,0.1,0.0) order by xs:decimal($x) return xs:decimal($x) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0 0.000000000000000001 0.00000000000000001 0.0000000000000001 0.000000000000001 0.00000000000001 0.0000000000001 0.000000000001 0.00000000001 0.0000000001 0.000000001 0.00000001 0.0000001 0.000001 0.00001 0.0001 0.001 0.01 0.1</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbywithout-32'(_Config) ->
   Qry = "<results> { for $x in (0.000000000000000001,0.00000000000000001,0.0000000000000001,0.000000000000001,0.00000000000001,0.0000000000001,0.000000000001,0.00000000001,0.0000000001,0.000000001,0.00000001,0.0000001,0.000001,0.00001,0.0001,0.001,0.01,0.1,0.0) order by xs:double($x) return xs:double($x) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0 1.0E-18 1.0E-17 1.0E-16 1.0E-15 1.0E-14 1.0E-13 1.0E-12 1.0E-11 1.0E-10 1.0E-9 1.0E-8 1.0E-7 0.000001 0.00001 0.0001 0.001 0.01 0.1</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbywithout-33'(_Config) ->
   Qry = "<results> { for $x in (0.000000000000000001,0.00000000000000001,0.0000000000000001,0.000000000000001,0.00000000000001,0.0000000000001,0.000000000001,0.00000000001,0.0000000001,0.000000001,0.00000001,0.0000001,0.000001,0.00001,0.0001,0.001,0.01,0.1,0.0) order by string($x) return string($x) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0 0.000000000000000001 0.00000000000000001 0.0000000000000001 0.000000000000001 0.00000000000001 0.0000000000001 0.000000000001 0.00000000001 0.0000000001 0.000000001 0.00000001 0.0000001 0.000001 0.00001 0.0001 0.001 0.01 0.1</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbywithout-34'(_Config) ->
   Qry = "<results> { for $x in (-0.000000000000000001,-0.00000000000000001,-0.0000000000000001,-0.000000000000001,-0.00000000000001,-0.0000000000001,-0.000000000001,-0.00000000001,-0.0000000001,-0.000000001,-0.00000001,-0.0000001,-0.000001,-0.00001,-0.0001,-0.001,-0.01,-0.0,-0.1) order by xs:decimal($x) return xs:decimal($x) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>-0.1 -0.01 -0.001 -0.0001 -0.00001 -0.000001 -0.0000001 -0.00000001 -0.000000001 -0.0000000001 -0.00000000001 -0.000000000001 -0.0000000000001 -0.00000000000001 -0.000000000000001 -0.0000000000000001 -0.00000000000000001 -0.000000000000000001 0</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbywithout-35'(_Config) ->
   Qry = "<results> { for $x in (-0.000000000000000001,-0.00000000000000001,-0.0000000000000001,-0.000000000000001,-0.00000000000001,-0.0000000000001,-0.000000000001,-0.00000000001,-0.0000000001,-0.000000001,-0.00000001,-0.0000001,-0.000001,-0.00001,-0.0001,-0.001,-0.01,-0.0,-0.1) order by (xs:decimal($x) + xs:decimal($x)) return xs:decimal($x) + xs:decimal($x) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>-0.2 -0.02 -0.002 -0.0002 -0.00002 -0.000002 -0.0000002 -0.00000002 -0.000000002 -0.0000000002 -0.00000000002 -0.000000000002 -0.0000000000002 -0.00000000000002 -0.000000000000002 -0.0000000000000002 -0.00000000000000002 -0.000000000000000002 0</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbywithout-36'(_Config) ->
   Qry = "<results> { for $x in (<orderData>-0.000000000000000001</orderData>,<orderData>-0.00000000000000001</orderData>,<orderData>-0.0000000000000001</orderData>,<orderData>-0.000000000000001</orderData>,<orderData>-0.00000000000001</orderData>,<orderData>-0.0000000000001</orderData>, <orderData>-0.000000000001</orderData>,<orderData>-0.00000000001</orderData>,<orderData>-0.0000000001</orderData>,<orderData>-0.000000001</orderData>, <orderData>-0.00000001</orderData>,<orderData>-0.0000001</orderData>,<orderData>-0.000001</orderData>,<orderData>-0.00001</orderData>,<orderData>-0.0001</orderData>,<orderData>-0.001</orderData>,<orderData>-0.01</orderData>,<orderData>-0.0</orderData>, <orderData>-0.1</orderData>) order by $x is $x return $x is $x } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>true true true true true true true true true true true true true true true true true true true</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbywithout-37'(_Config) ->
   Qry = "<results> { for $x in (-0.000000000000000001,-0.00000000000000001,-0.0000000000000001,-0.000000000000001,-0.00000000000001,-0.0000000000001,-0.000000000001,-0.00000000001,-0.0000000001,-0.000000001,-0.00000001,-0.0000001,-0.000001,-0.00001,-0.0001,-0.001,-0.01,-0.0,-0.1) order by xs:float($x) return xs:float($x) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>-0.1 -0.01 -0.001 -0.0001 -0.00001 -0.000001 -1.0E-7 -1.0E-8 -1.0E-9 -1.0E-10 -1.0E-11 -1.0E-12 -1.0E-13 -1.0E-14 -1.0E-15 -1.0E-16 -1.0E-17 -1.0E-18 0</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbywithout-38'(_Config) ->
   Qry = "<results> { for $x in (-0.000000000000000001,-0.00000000000000001,-0.0000000000000001,-0.000000000000001,-0.00000000000001,-0.0000000000001,-0.000000000001,-0.00000000001,-0.0000000001,-0.000000001,-0.00000001,-0.0000001,-0.000001,-0.00001,-0.0001,-0.001,-0.01,-0.0,-0.1) order by xs:decimal($x) return xs:decimal($x) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>-0.1 -0.01 -0.001 -0.0001 -0.00001 -0.000001 -0.0000001 -0.00000001 -0.000000001 -0.0000000001 -0.00000000001 -0.000000000001 -0.0000000000001 -0.00000000000001 -0.000000000000001 -0.0000000000000001 -0.00000000000000001 -0.000000000000000001 0</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbywithout-39'(_Config) ->
   Qry = "<results> { for $x in (-0.000000000000000001,-0.00000000000000001,-0.0000000000000001,-0.000000000000001,-0.00000000000001,-0.0000000000001,-0.000000000001,-0.00000000001,-0.0000000001,-0.000000001,-0.00000001,-0.0000001,-0.000001,-0.00001,-0.0001,-0.001,-0.01,-0.0,-0.1) order by xs:double($x) return xs:double($x) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>-0.1 -0.01 -0.001 -0.0001 -0.00001 -0.000001 -1.0E-7 -1.0E-8 -1.0E-9 -1.0E-10 -1.0E-11 -1.0E-12 -1.0E-13 -1.0E-14 -1.0E-15 -1.0E-16 -1.0E-17 -1.0E-18 0</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderbywithout-40'(_Config) ->
   Qry = "<results> { for $x in (-0.000000000000000001,-0.00000000000000001,-0.0000000000000001,-0.000000000000001,-0.00000000000001,-0.0000000000001,-0.000000000001,-0.00000000001,-0.0000000001,-0.000000001,-0.00000001,-0.0000001,-0.000001,-0.00001,-0.0001,-0.001,-0.01,-0.0,-0.1) order by string($x) return string($x) } </results>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>-0.000000000000000001 -0.00000000000000001 -0.0000000000000001 -0.000000000000001 -0.00000000000001 -0.0000000000001 -0.000000000001 -0.00000000001 -0.0000000001 -0.000000001 -0.00000001 -0.0000001 -0.000001 -0.00001 -0.0001 -0.001 -0.01 -0.1 0</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-OrderbyExprWithout-1'(_Config) ->
   Qry = "declare base-uri \"http://www.w3.org/2005/xpath-functions/\"; let $i as xs:integer* := (1, 2, 3) order by 1 collation \"collation/codepoint\" return $i",
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
'K2-OrderbyExprWithout-2'(_Config) ->
   Qry = "declare base-uri \"http://www.w3.org/2005/xpath-functions/\"; let $i as xs:integer* := (1, 2, 3) order by 1 collation \"collation/\" return $i",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0076") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-OrderbyExprWithout-3'(_Config) ->
   Qry = "declare base-uri \"http://www.w3.org/2005/xpath-functions/\"; let $i as xs:integer* := (1, 2, 3) order by 1 collation \"collation/\" return $i",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0076") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-OrderbyExprWithout-5'(_Config) ->
   Qry = "for $i in (1, 3, 2) order by $i return $i",
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
'K2-OrderbyExprWithout-6'(_Config) ->
   Qry = "for $i in (1, 3, 2) order by $i return ($i, 2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 2 2 2 3 2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-OrderbyExprWithout-7'(_Config) ->
   Qry = "for $i in (1, 3, 2) order by $i empty INVALID return ($i, 2)",
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
'K2-OrderbyExprWithout-8'(_Config) ->
   Qry = "let $i := (1, 3, 2) order by $i return $i",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "1 3 2") of 
      true -> {comment, "String correct"};
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
'K2-OrderbyExprWithout-9'(_Config) ->
   Qry = "let $i := (1, 3, 2), $b := (4, 6, 5) order by $b return $b",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "4 6 5") of 
      true -> {comment, "String correct"};
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
'K2-OrderbyExprWithout-10'(_Config) ->
   Qry = "for $a in (1, 4, 2) let $i := (1, $a, 2) order by $i return $i",
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
'K2-OrderbyExprWithout-11'(_Config) ->
   Qry = "for $a in (1, 4, 2) let $i := (1, 3, 2) order by $a return $i",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 3 2 1 3 2 1 3 2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-OrderbyExprWithout-12'(_Config) ->
   Qry = "for $a in (3, 2, 1), $b in (6, 5, 4) order by $a return $a",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 1 1 2 2 2 3 3 3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-OrderbyExprWithout-13'(_Config) ->
   Qry = "for $a in (3, 2, 1), $b in (6, 5, 4) stable order by $b return $a",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "3 2 1 3 2 1 3 2 1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-OrderbyExprWithout-14'(_Config) ->
   Qry = "declare variable $e := <e> <a>3</a> <a>2</a> <a>1</a> </e>; <result> { avg(for $i in $e/a order by $i return $i) } </result>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>2</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-OrderbyExprWithout-15'(_Config) ->
   Qry = "declare variable $e := <e> <a>3</a> <a>2</a> <a>1</a> </e>; exactly-one(for $i in $e/a order by $i return $i)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-OrderbyExprWithout-16'(_Config) ->
   Qry = "for $i in (false(), true(), true(), false(), true(), false()) order by $i return $i",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "false false false true true true") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-OrderbyExprWithout-17'(_Config) ->
   Qry = "boolean((for $i in (false(), true(), true(), false(), true(), false()) order by $i return $i)[1])",
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
'K2-OrderbyExprWithout-18'(_Config) ->
   Qry = "(for $i in current-time() order by $i return $i) eq current-time()",
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
'K2-OrderbyExprWithout-19'(_Config) ->
   Qry = "let $i := (1, 3, 2) order by $i return $i",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "1 3 2") of 
      true -> {comment, "String correct"};
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
'K2-OrderbyExprWithout-20'(_Config) ->
   Qry = "let $i := (<e>1</e>, <e>3</e>, <e>2</e>) order by $i return $i",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<e>1</e><e>3</e><e>2</e>") of 
      true -> {comment, "XML Deep equal"};
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
'K2-OrderbyExprWithout-21'(_Config) ->
   Qry = "let $i := (<e>1</e>, <e>3</e>, <e>2</e>) order by 1 return $i",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e>1</e><e>3</e><e>2</e>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-OrderbyExprWithout-22'(_Config) ->
   Qry = "for $i in (1, 3, 2) let $c := 3 stable order by () return $i",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "1 3 2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_string_value(Res, "1 2 3") of 
      true -> {comment, "String correct"};
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
'K2-OrderbyExprWithout-23'(_Config) ->
   Qry = "let $i := (1, 3, 2) stable order by $i return $i",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "1 3 2") of 
      true -> {comment, "String correct"};
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
'K2-OrderbyExprWithout-24'(_Config) ->
   Qry = "let $i := (<e>1</e>, <e>3</e>, <e>2</e>) stable order by $i return $i",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<e>1</e><e>3</e><e>2</e>") of 
      true -> {comment, "XML Deep equal"};
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
'K2-OrderbyExprWithout-25'(_Config) ->
   Qry = "let $i := (xs:hexBinary(\"FF\"), xs:hexBinary(\"FF\")) stable order by $i return $i",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "FF FF") of 
      true -> {comment, "String correct"};
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
'K2-OrderbyExprWithout-26'(_Config) ->
   Qry = "let $i := (xs:hexBinary(\"FF\"), xs:hexBinary(\"FF\")) order by $i return $i",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "FF FF") of 
      true -> {comment, "String correct"};
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
'K2-OrderbyExprWithout-27'(_Config) ->
   Qry = "let $i := (xs:date(\"2001-02-03\"), xs:time(\"01:02:03Z\")) stable order by $i return $i",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "2001-02-03 01:02:03Z") of 
      true -> {comment, "String correct"};
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
'K2-OrderbyExprWithout-28'(_Config) ->
   Qry = "let $i := (xs:date(\"2001-02-03\"), xs:time(\"01:02:03Z\")) order by $i return $i",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "2001-02-03 01:02:03Z") of 
      true -> {comment, "String correct"};
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
'K2-OrderbyExprWithout-29'(_Config) ->
   Qry = "<r> { for $i in attribute name {()} order by () return () } </r>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<r/>") of 
      true -> {comment, "XML Deep equal"};
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
'K2-OrderbyExprWithout-30'(_Config) ->
   Qry = "<r> { for $i in 1 order by () return () } </r>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<r/>") of 
      true -> {comment, "XML Deep equal"};
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
'K2-OrderbyExprWithout-31'(_Config) ->
   Qry = "let $i := (1, 2, 3) order by $i return $i",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "1 2 3") of 
      true -> {comment, "String correct"};
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
'K2-OrderbyExprWithout-32'(_Config) ->
   Qry = "let $i := (1, 2, 3) stable order by $i return $i",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "1 2 3") of 
      true -> {comment, "String correct"};
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
'K2-OrderbyExprWithout-33'(_Config) ->
   Qry = "let $i := (xs:hexBinary(\"FF\"), xs:hexBinary(\"FF\")) stable order by $i[1] return $i",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "FF FF") of 
      true -> {comment, "String correct"};
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
'K2-OrderbyExprWithout-34'(_Config) ->
   Qry = "let $i := (xs:hexBinary(\"FF\"), xs:hexBinary(\"FF\")) order by $i[1] return $i",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "FF FF") of 
      true -> {comment, "String correct"};
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
'K2-OrderbyExprWithout-35'(_Config) ->
   Qry = "let $i := (xs:hexBinary(\"FF\"), xs:time(\"03:03:03Z\"), xs:hexBinary(\"FF\")) stable order by $i[1] return $i",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "FF 03:03:03Z FF") of 
      true -> {comment, "String correct"};
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
'K2-OrderbyExprWithout-36'(_Config) ->
   Qry = "let $i := (xs:hexBinary(\"FF\"), xs:time(\"03:03:03Z\"), xs:hexBinary(\"FF\")) order by $i[1] return $i",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "FF 03:03:03Z FF") of 
      true -> {comment, "String correct"};
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
'K2-OrderbyExprWithout-37'(_Config) ->
   Qry = "for $i in (1, 3, 2) stable order by () return $i",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "1 3 2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_string_value(Res, "1 2 3") of 
      true -> {comment, "String correct"};
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
'K2-OrderbyExprWithout-38'(_Config) ->
   Qry = "for $i in (1, 2, 3) stable order by 1 return reverse(($i, \"FO\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "FO 1 FO 2 FO 3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-OrderbyExprWithout-39'(_Config) ->
   Qry = "for $a in (1, 4, 2) let $i := (1, 3, 2) order by $i return 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "1 1 1") of 
      true -> {comment, "String correct"};
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
'K2-OrderbyExprWithout-40'(_Config) ->
   Qry = "for $a in (3, 2, 1) let $a := ($a, 1), $b := (2, 1), $c := (2, 1), $d:= (2, 1) order by $a return $a",
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
'K2-OrderbyExprWithout-41'(_Config) ->
   Qry = "for $a in (3, 2, 1) let $b := (2, 1), $c := (2, 1), $d := (2, 1), $e := (2, 1) order by $a return $a",
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
'K2-OrderbyExprWithout-42'(_Config) ->
   Qry = "string(for $i in current-date() order by $i return $i)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-OrderbyExprWithout-43'(_Config) ->
   Qry = "if(for $i in <e> <a id=\"3\"/> <b id=\"2\"/> <c id=\"1\"/> </e>/* order by xs:integer($i/@id) return $i) then 4 else 9",
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
'K2-OrderbyExprWithout-44'(_Config) ->
   Qry = "for $a in (2, 1) let $b := 1 where true() order by $a return $a",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-OrderbyExprWithout-45'(_Config) ->
   Qry = "for $a in (3, 2, 1), $b in (6) stable order by $b return $a",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "3 2 1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-OrderbyExprWithout-46'(_Config) ->
   Qry = "let $numbers := (1, 2, 1.3, 3e3, xs:double(\"NaN\"), xs:double(\"-INF\"), xs:double(\"INF\")) return (for $i in $numbers order by $i empty least return $i, \"SEP\", for $i in $numbers order by $i empty greatest return $i)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "NaN -INF 1 1.3 2 3000 INF SEP -INF 1 1.3 2 3000 INF NaN") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-OrderbyExprWithout-47'(_Config) ->
   Qry = "let $numbers := (1, 2, 1.3, 3e3, xs:double(\"NaN\"), xs:double(\"-INF\"), xs:double(\"INF\")) return (for $i in $numbers stable order by $i empty least return $i, \"SEP\", for $i in $numbers order by $i empty greatest return $i)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "NaN -INF 1 1.3 2 3000 INF SEP -INF 1 1.3 2 3000 INF NaN") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-OrderbyExprWithout-48'(_Config) ->
   Qry = "let $numbers := (<e>NaN</e>, <e/>, <e/>, <e>NaN</e>, <e>NaN</e>, <e>INF</e>, <e>NaN</e>, <e/>, <e>3</e>, comment{\"3\"}) return (for $i in $numbers order by xs:double($i/text()) empty least return xs:double($i/text()), \"SEP\", for $i in $numbers order by xs:double($i/text()) empty greatest return xs:double($i/text()))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "NaN NaN NaN NaN 3 INF SEP 3 INF NaN NaN NaN NaN") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-OrderbyExprWithout-49'(_Config) ->
   Qry = "let $numbers := (<e>NaN</e>, <e/>, <e/>, <e>NaN</e>, <e>NaN</e>, <e>INF</e>, <e>NaN</e>, <e/>, <e>3</e>, comment{\"3\"}) return (for $i in $numbers stable order by xs:double($i/text()) empty least return xs:double($i/text()), \"SEP\", for $i in $numbers stable order by xs:double($i/text()) empty greatest return xs:double($i/text()))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "NaN NaN NaN NaN 3 INF SEP 3 INF NaN NaN NaN NaN") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
