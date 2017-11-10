-module('method_json_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['Serialization-json-1'/1]).
-export(['Serialization-json-2'/1]).
-export(['Serialization-json-3'/1]).
-export(['Serialization-json-4'/1]).
-export(['Serialization-json-5'/1]).
-export(['Serialization-json-6'/1]).
-export(['Serialization-json-7'/1]).
-export(['Serialization-json-8'/1]).
-export(['Serialization-json-9'/1]).
-export(['Serialization-json-10'/1]).
-export(['Serialization-json-11'/1]).
-export(['Serialization-json-12'/1]).
-export(['Serialization-json-13'/1]).
-export(['Serialization-json-14'/1]).
-export(['Serialization-json-15'/1]).
-export(['Serialization-json-16'/1]).
-export(['Serialization-json-17'/1]).
-export(['Serialization-json-18'/1]).
-export(['Serialization-json-19'/1]).
-export(['Serialization-json-20'/1]).
-export(['Serialization-json-21'/1]).
-export(['Serialization-json-22'/1]).
-export(['Serialization-json-23'/1]).
-export(['Serialization-json-24'/1]).
-export(['Serialization-json-25'/1]).
-export(['Serialization-json-26'/1]).
-export(['Serialization-json-27'/1]).
-export(['Serialization-json-28'/1]).
-export(['Serialization-json-29'/1]).
-export(['Serialization-json-30'/1]).
-export(['Serialization-json-31'/1]).
-export(['Serialization-json-32'/1]).
-export(['Serialization-json-33'/1]).
-export(['Serialization-json-34'/1]).
-export(['Serialization-json-35'/1]).
-export(['Serialization-json-36'/1]).
-export(['Serialization-json-37'/1]).
-export(['Serialization-json-38'/1]).
-export(['Serialization-json-39'/1]).
-export(['Serialization-json-40'/1]).
-export(['Serialization-json-41'/1]).
-export(['Serialization-json-42'/1]).
-export(['Serialization-json-43'/1]).
-export(['Serialization-json-44'/1]).
-export(['Serialization-json-45'/1]).
-export(['Serialization-json-46'/1]).
-export(['Serialization-json-47'/1]).
-export(['Serialization-json-48'/1]).
-export(['Serialization-json-49'/1]).
-export(['Serialization-json-50'/1]).
-export(['Serialization-json-51'/1]).
-export(['Serialization-json-52'/1]).
-export(['Serialization-json-53'/1]).
-export(['Serialization-json-54'/1]).
-export(['Serialization-json-55'/1]).
-export(['Serialization-json-56'/1]).
-export(['Serialization-json-57'/1]).
-export(['Serialization-json-58'/1]).
-export(['Serialization-json-59'/1]).
-export(['Serialization-json-60'/1]).
-export(['Serialization-json-61'/1]).
-export(['Serialization-json-62'/1]).
-export(['Serialization-json-63'/1]).
-export(['Serialization-json-64'/1]).
-export(['Serialization-json-65'/1]).
-export(['Serialization-json-66'/1]).
-export(['Serialization-json-67'/1]).
-export(['Serialization-json-68'/1]).
-export(['Serialization-json-69'/1]).
-export(['Serialization-json-70'/1]).
-export(['Serialization-json-71'/1]).
-export(['Serialization-json-72'/1]).
-export(['Serialization-json-73'/1]).
-export(['Serialization-json-74'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'Serialization-json-1',
   'Serialization-json-2',
   'Serialization-json-3',
   'Serialization-json-4',
   'Serialization-json-5',
   'Serialization-json-6',
   'Serialization-json-7',
   'Serialization-json-8',
   'Serialization-json-9',
   'Serialization-json-10',
   'Serialization-json-11',
   'Serialization-json-12',
   'Serialization-json-13',
   'Serialization-json-14',
   'Serialization-json-15',
   'Serialization-json-16',
   'Serialization-json-17',
   'Serialization-json-18',
   'Serialization-json-19',
   'Serialization-json-20',
   'Serialization-json-21',
   'Serialization-json-22',
   'Serialization-json-23',
   'Serialization-json-24',
   'Serialization-json-25',
   'Serialization-json-26',
   'Serialization-json-27',
   'Serialization-json-28',
   'Serialization-json-29',
   'Serialization-json-30',
   'Serialization-json-31',
   'Serialization-json-32',
   'Serialization-json-33',
   'Serialization-json-34',
   'Serialization-json-35',
   'Serialization-json-36',
   'Serialization-json-37',
   'Serialization-json-38',
   'Serialization-json-39',
   'Serialization-json-40',
   'Serialization-json-41',
   'Serialization-json-42',
   'Serialization-json-43',
   'Serialization-json-44',
   'Serialization-json-45',
   'Serialization-json-46',
   'Serialization-json-47',
   'Serialization-json-48',
   'Serialization-json-49',
   'Serialization-json-50',
   'Serialization-json-51',
   'Serialization-json-52',
   'Serialization-json-53',
   'Serialization-json-54',
   'Serialization-json-55',
   'Serialization-json-56',
   'Serialization-json-57',
   'Serialization-json-58',
   'Serialization-json-59',
   'Serialization-json-60',
   'Serialization-json-61',
   'Serialization-json-62',
   'Serialization-json-63',
   'Serialization-json-64',
   'Serialization-json-65',
   'Serialization-json-66',
   'Serialization-json-67',
   'Serialization-json-68',
   'Serialization-json-69',
   'Serialization-json-70',
   'Serialization-json-71',
   'Serialization-json-72',
   'Serialization-json-73',
   'Serialization-json-74'].
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
].
'Serialization-json-1'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-2'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-3'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-4'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-5'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-6'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-7'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-8'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-9'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-10'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-11'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-12'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-13'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-14'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-15'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-16'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-17'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-18'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-19'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-20'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-21'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-22'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-23'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-24'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-25'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-26'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-27'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-28'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-29'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-30'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-31'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-32'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-33'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-34'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-35'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-36'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-37'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-38'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-39'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-40'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-41'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-42'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-43'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-44'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-45'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-46'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-47'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-48'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-49'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-50'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-51'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-52'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-53'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-54'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-55'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-56'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-57'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-58'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-59'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-60'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-61'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-62'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-63'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-64'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-65'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-66'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-67'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-68'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-69'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-70'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-71'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-72'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-73'(_Config) ->
   {skip,"serialization"}.
'Serialization-json-74'(_Config) ->
   {skip,"serialization"}.
