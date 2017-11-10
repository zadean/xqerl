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
'K2-Serialization-1'(_Config) ->
   {skip,"serialization feature"}.
'K2-Serialization-2'(_Config) ->
   {skip,"serialization feature"}.
'K2-Serialization-3'(_Config) ->
   {skip,"serialization feature"}.
'K2-Serialization-4'(_Config) ->
   {skip,"serialization feature"}.
'K2-Serialization-5'(_Config) ->
   {skip,"serialization feature"}.
'K2-Serialization-6'(_Config) ->
   {skip,"serialization feature"}.
'K2-Serialization-7'(_Config) ->
   {skip,"serialization feature"}.
'K2-Serialization-7a'(_Config) ->
   {skip,"serialization feature"}.
'K2-Serialization-8'(_Config) ->
   {skip,"serialization feature"}.
'K2-Serialization-8a'(_Config) ->
   {skip,"serialization feature"}.
'K2-Serialization-9'(_Config) ->
   {skip,"serialization feature"}.
'K2-Serialization-10'(_Config) ->
   {skip,"serialization feature"}.
'K2-Serialization-11'(_Config) ->
   {skip,"serialization feature"}.
'K2-Serialization-12'(_Config) ->
   {skip,"serialization feature"}.
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
   {skip,"serialization feature"}.
'Serialization-xml-02'(_Config) ->
   {skip,"serialization feature"}.
