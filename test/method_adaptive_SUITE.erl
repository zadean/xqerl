-module('method_adaptive_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['Serialization-adaptive-01'/1]).
-export(['Serialization-adaptive-02'/1]).
-export(['Serialization-adaptive-03'/1]).
-export(['Serialization-adaptive-04'/1]).
-export(['Serialization-adaptive-05'/1]).
-export(['Serialization-adaptive-06'/1]).
-export(['Serialization-adaptive-07'/1]).
-export(['Serialization-adaptive-08'/1]).
-export(['Serialization-adaptive-09'/1]).
-export(['Serialization-adaptive-10'/1]).
-export(['Serialization-adaptive-11'/1]).
-export(['Serialization-adaptive-12'/1]).
-export(['Serialization-adaptive-13'/1]).
-export(['Serialization-adaptive-14'/1]).
-export(['Serialization-adaptive-15'/1]).
-export(['Serialization-adaptive-16'/1]).
-export(['Serialization-adaptive-17'/1]).
-export(['Serialization-adaptive-18'/1]).
-export(['Serialization-adaptive-19'/1]).
-export(['Serialization-adaptive-20'/1]).
-export(['Serialization-adaptive-21'/1]).
-export(['Serialization-adaptive-22'/1]).
-export(['Serialization-adaptive-23'/1]).
-export(['Serialization-adaptive-24'/1]).
-export(['Serialization-adaptive-25'/1]).
-export(['Serialization-adaptive-26'/1]).
-export(['Serialization-adaptive-27'/1]).
-export(['Serialization-adaptive-28'/1]).
-export(['Serialization-adaptive-29'/1]).
-export(['Serialization-adaptive-30'/1]).
-export(['Serialization-adaptive-31'/1]).
-export(['Serialization-adaptive-32'/1]).
-export(['Serialization-adaptive-33'/1]).
-export(['Serialization-adaptive-34'/1]).
-export(['Serialization-adaptive-35'/1]).
-export(['Serialization-adaptive-36'/1]).
-export(['Serialization-adaptive-37'/1]).
-export(['Serialization-adaptive-38'/1]).
-export(['Serialization-adaptive-39'/1]).
-export(['Serialization-adaptive-40'/1]).
-export(['Serialization-adaptive-41'/1]).
-export(['Serialization-adaptive-42'/1]).
-export(['Serialization-adaptive-43'/1]).
-export(['Serialization-adaptive-44'/1]).
-export(['Serialization-adaptive-45'/1]).
-export(['Serialization-adaptive-46'/1]).
-export(['Serialization-adaptive-47'/1]).
-export(['Serialization-adaptive-48'/1]).
-export(['Serialization-adaptive-49'/1]).
-export(['Serialization-adaptive-50'/1]).
-export(['Serialization-adaptive-51'/1]).
-export(['Serialization-adaptive-52'/1]).
-export(['Serialization-adaptive-53'/1]).
-export(['Serialization-adaptive-54'/1]).
-export(['Serialization-adaptive-55'/1]).
-export(['Serialization-adaptive-56'/1]).
-export(['Serialization-adaptive-57'/1]).
-export(['Serialization-adaptive-58'/1]).
-export(['Serialization-adaptive-59'/1]).
-export(['Serialization-adaptive-60'/1]).
-export(['Serialization-adaptive-61'/1]).
-export(['Serialization-adaptive-62'/1]).
-export(['Serialization-adaptive-63'/1]).
-export(['Serialization-adaptive-64'/1]).
-export(['Serialization-adaptive-65'/1]).
-export(['Serialization-adaptive-66'/1]).
-export(['Serialization-adaptive-67'/1]).
-export(['Serialization-adaptive-68'/1]).
-export(['Serialization-adaptive-69'/1]).
-export(['Serialization-adaptive-70'/1]).
-export(['Serialization-adaptive-71'/1]).
-export(['Serialization-adaptive-72'/1]).
-export(['Serialization-adaptive-73'/1]).
-export(['Serialization-adaptive-74'/1]).
-export(['Serialization-adaptive-75'/1]).
-export(['Serialization-adaptive-76'/1]).
-export(['Serialization-adaptive-77'/1]).
-export(['Serialization-adaptive-78'/1]).
-export(['Serialization-adaptive-79'/1]).
-export(['Serialization-adaptive-80'/1]).
-export(['Serialization-adaptive-81'/1]).
-export(['Serialization-adaptive-82'/1]).
-export(['Serialization-adaptive-83'/1]).
-export(['Serialization-adaptive-84'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'Serialization-adaptive-01',
   'Serialization-adaptive-02',
   'Serialization-adaptive-03',
   'Serialization-adaptive-04',
   'Serialization-adaptive-05',
   'Serialization-adaptive-06',
   'Serialization-adaptive-07',
   'Serialization-adaptive-08',
   'Serialization-adaptive-09',
   'Serialization-adaptive-10',
   'Serialization-adaptive-11',
   'Serialization-adaptive-12',
   'Serialization-adaptive-13',
   'Serialization-adaptive-14',
   'Serialization-adaptive-15',
   'Serialization-adaptive-16',
   'Serialization-adaptive-17',
   'Serialization-adaptive-18',
   'Serialization-adaptive-19',
   'Serialization-adaptive-20',
   'Serialization-adaptive-21',
   'Serialization-adaptive-22',
   'Serialization-adaptive-23',
   'Serialization-adaptive-24',
   'Serialization-adaptive-25',
   'Serialization-adaptive-26',
   'Serialization-adaptive-27',
   'Serialization-adaptive-28',
   'Serialization-adaptive-29',
   'Serialization-adaptive-30',
   'Serialization-adaptive-31',
   'Serialization-adaptive-32',
   'Serialization-adaptive-33',
   'Serialization-adaptive-34',
   'Serialization-adaptive-35',
   'Serialization-adaptive-36',
   'Serialization-adaptive-37',
   'Serialization-adaptive-38',
   'Serialization-adaptive-39',
   'Serialization-adaptive-40',
   'Serialization-adaptive-41',
   'Serialization-adaptive-42',
   'Serialization-adaptive-43',
   'Serialization-adaptive-44',
   'Serialization-adaptive-45',
   'Serialization-adaptive-46',
   'Serialization-adaptive-47',
   'Serialization-adaptive-48',
   'Serialization-adaptive-49',
   'Serialization-adaptive-50',
   'Serialization-adaptive-51',
   'Serialization-adaptive-52',
   'Serialization-adaptive-53',
   'Serialization-adaptive-54',
   'Serialization-adaptive-55',
   'Serialization-adaptive-56',
   'Serialization-adaptive-57',
   'Serialization-adaptive-58',
   'Serialization-adaptive-59',
   'Serialization-adaptive-60',
   'Serialization-adaptive-61',
   'Serialization-adaptive-62',
   'Serialization-adaptive-63',
   'Serialization-adaptive-64',
   'Serialization-adaptive-65',
   'Serialization-adaptive-66',
   'Serialization-adaptive-67',
   'Serialization-adaptive-68',
   'Serialization-adaptive-69',
   'Serialization-adaptive-70',
   'Serialization-adaptive-71',
   'Serialization-adaptive-72',
   'Serialization-adaptive-73',
   'Serialization-adaptive-74',
   'Serialization-adaptive-75',
   'Serialization-adaptive-76',
   'Serialization-adaptive-77',
   'Serialization-adaptive-78',
   'Serialization-adaptive-79',
   'Serialization-adaptive-80',
   'Serialization-adaptive-81',
   'Serialization-adaptive-82',
   'Serialization-adaptive-83',
   'Serialization-adaptive-84'].
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
'Serialization-adaptive-01'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-02'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-03'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-04'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-05'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-06'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-07'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-08'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-09'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-10'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-11'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-12'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-13'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-14'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-15'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-16'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-17'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-18'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-19'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-20'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-21'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-22'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-23'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-24'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-25'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-26'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-27'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-28'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-29'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-30'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-31'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-32'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-33'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-34'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-35'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-36'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-37'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-38'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-39'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-40'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-41'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-42'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-43'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-44'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-45'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-46'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-47'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-48'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-49'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-50'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-51'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-52'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-53'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-54'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-55'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-56'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-57'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-58'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-59'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-60'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-61'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-62'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-63'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-64'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-65'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-66'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-67'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-68'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-69'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-70'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-71'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-72'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-73'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-74'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-75'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-76'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-77'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-78'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-79'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-80'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-81'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-82'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-83'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-adaptive-84'(_Config) ->
   {skip,"serialization feature"}.
