-module('method_html_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['Serialization-html-1'/1]).
-export(['Serialization-html-2'/1]).
-export(['Serialization-html-3'/1]).
-export(['Serialization-html-4'/1]).
-export(['Serialization-html-5'/1]).
-export(['Serialization-html-6'/1]).
-export(['Serialization-html-7'/1]).
-export(['Serialization-html-8'/1]).
-export(['Serialization-html-9'/1]).
-export(['Serialization-html-10'/1]).
-export(['Serialization-html-11'/1]).
-export(['Serialization-html-12'/1]).
-export(['Serialization-html-13'/1]).
-export(['Serialization-html-14'/1]).
-export(['Serialization-html-15'/1]).
-export(['Serialization-html-16'/1]).
-export(['Serialization-html-17'/1]).
-export(['Serialization-html-18'/1]).
-export(['Serialization-html-19a'/1]).
-export(['Serialization-html-19b'/1]).
-export(['Serialization-html-19c'/1]).
-export(['Serialization-html-20'/1]).
-export(['Serialization-html-21'/1]).
-export(['Serialization-html-22'/1]).
-export(['Serialization-html-23'/1]).
-export(['Serialization-html-24'/1]).
-export(['Serialization-html-25'/1]).
-export(['Serialization-html-26'/1]).
-export(['Serialization-html-27'/1]).
-export(['Serialization-html-28'/1]).
-export(['Serialization-html-29'/1]).
-export(['Serialization-html-30'/1]).
-export(['Serialization-html-31'/1]).
-export(['Serialization-html-32'/1]).
-export(['Serialization-html-33'/1]).
-export(['Serialization-html-34'/1]).
-export(['Serialization-html-35'/1]).
-export(['Serialization-html-36'/1]).
-export(['Serialization-html-37'/1]).
-export(['Serialization-html-38'/1]).
-export(['Serialization-html-39'/1]).
-export(['Serialization-html-40'/1]).
-export(['Serialization-html-41'/1]).
-export(['Serialization-html-42'/1]).
-export(['Serialization-html-43'/1]).
-export(['Serialization-html-44'/1]).
-export(['Serialization-html-45'/1]).
-export(['Serialization-html-46'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'Serialization-html-1',
   'Serialization-html-2',
   'Serialization-html-3',
   'Serialization-html-4',
   'Serialization-html-5',
   'Serialization-html-6',
   'Serialization-html-7',
   'Serialization-html-8',
   'Serialization-html-9',
   'Serialization-html-10',
   'Serialization-html-11',
   'Serialization-html-12',
   'Serialization-html-13',
   'Serialization-html-14',
   'Serialization-html-15',
   'Serialization-html-16',
   'Serialization-html-17',
   'Serialization-html-18',
   'Serialization-html-19a',
   'Serialization-html-19b',
   'Serialization-html-19c',
   'Serialization-html-20',
   'Serialization-html-21',
   'Serialization-html-22',
   'Serialization-html-23',
   'Serialization-html-24',
   'Serialization-html-25',
   'Serialization-html-26',
   'Serialization-html-27',
   'Serialization-html-28',
   'Serialization-html-29',
   'Serialization-html-30',
   'Serialization-html-31',
   'Serialization-html-32',
   'Serialization-html-33',
   'Serialization-html-34',
   'Serialization-html-35',
   'Serialization-html-36',
   'Serialization-html-37',
   'Serialization-html-38',
   'Serialization-html-39',
   'Serialization-html-40',
   'Serialization-html-41',
   'Serialization-html-42',
   'Serialization-html-43',
   'Serialization-html-44',
   'Serialization-html-45',
   'Serialization-html-46'].
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
'Serialization-html-1'(_Config) ->
   {skip,"serialization"}.
'Serialization-html-2'(_Config) ->
   {skip,"serialization"}.
'Serialization-html-3'(_Config) ->
   {skip,"serialization"}.
'Serialization-html-4'(_Config) ->
   {skip,"serialization"}.
'Serialization-html-5'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-html-6'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-html-7'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-html-8'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-html-9'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-html-10'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-html-11'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-html-12'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-html-13'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-html-14'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-html-15'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-html-16'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-html-17'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-html-18'(_Config) ->
   {skip,"serialization"}.
'Serialization-html-19a'(_Config) ->
   {skip,"serialization"}.
'Serialization-html-19b'(_Config) ->
   {skip,"serialization"}.
'Serialization-html-19c'(_Config) ->
   {skip,"serialization"}.
'Serialization-html-20'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-html-21'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-html-22'(_Config) ->
   {skip,"serialization"}.
'Serialization-html-23'(_Config) ->
   {skip,"serialization"}.
'Serialization-html-24'(_Config) ->
   {skip,"serialization"}.
'Serialization-html-25'(_Config) ->
   {skip,"serialization"}.
'Serialization-html-26'(_Config) ->
   {skip,"serialization"}.
'Serialization-html-27'(_Config) ->
   {skip,"serialization"}.
'Serialization-html-28'(_Config) ->
   {skip,"serialization"}.
'Serialization-html-29'(_Config) ->
   {skip,"serialization"}.
'Serialization-html-30'(_Config) ->
   {skip,"serialization"}.
'Serialization-html-31'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-html-32'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-html-33'(_Config) ->
   {skip,"serialization"}.
'Serialization-html-34'(_Config) ->
   {skip,"serialization"}.
'Serialization-html-35'(_Config) ->
   {skip,"serialization"}.
'Serialization-html-36'(_Config) ->
   {skip,"serialization"}.
'Serialization-html-37'(_Config) ->
   {skip,"serialization"}.
'Serialization-html-38'(_Config) ->
   {skip,"serialization"}.
'Serialization-html-39'(_Config) ->
   {skip,"serialization"}.
'Serialization-html-40'(_Config) ->
   {skip,"serialization"}.
'Serialization-html-41'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-html-42'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-html-43'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-html-44'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-html-45'(_Config) ->
   {skip,"serialization feature"}.
'Serialization-html-46'(_Config) ->
   {skip,"serialization feature"}.
