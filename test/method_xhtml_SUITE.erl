-module('method_xhtml_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['Serialization-xhtml-1'/1]).
-export(['Serialization-xhtml-1a'/1]).
-export(['Serialization-xhtml-2'/1]).
-export(['Serialization-xhtml-3'/1]).
-export(['Serialization-xhtml-4'/1]).
-export(['Serialization-xhtml-18'/1]).
-export(['Serialization-xhtml-19a'/1]).
-export(['Serialization-xhtml-19b'/1]).
-export(['Serialization-xhtml-19c'/1]).
-export(['Serialization-xhtml-20'/1]).
-export(['Serialization-xhtml-21'/1]).
-export(['Serialization-xhtml-22'/1]).
-export(['Serialization-xhtml-23'/1]).
-export(['Serialization-xhtml-24'/1]).
-export(['Serialization-xhtml-25'/1]).
-export(['Serialization-xhtml-26'/1]).
-export(['Serialization-xhtml-27'/1]).
-export(['Serialization-xhtml-27a'/1]).
-export(['Serialization-xhtml-28'/1]).
-export(['Serialization-xhtml-29'/1]).
-export(['Serialization-xhtml-30'/1]).
-export(['Serialization-xhtml-31'/1]).
-export(['Serialization-xhtml-32'/1]).
-export(['Serialization-xhtml-33'/1]).
-export(['Serialization-xhtml-34'/1]).
-export(['Serialization-xhtml-35'/1]).
-export(['Serialization-xhtml-36'/1]).
-export(['Serialization-xhtml-36a'/1]).
-export(['Serialization-xhtml-37'/1]).
-export(['Serialization-xhtml-37a'/1]).
-export(['Serialization-xhtml-38'/1]).
-export(['Serialization-xhtml-39'/1]).
-export(['Serialization-xhtml-40'/1]).
-export(['Serialization-xhtml-41'/1]).
-export(['Serialization-xhtml-42'/1]).
-export(['Serialization-xhtml-50'/1]).
-export(['Serialization-xhtml-51'/1]).
-export(['Serialization-xhtml-52'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'Serialization-xhtml-1',
   'Serialization-xhtml-1a',
   'Serialization-xhtml-2',
   'Serialization-xhtml-3',
   'Serialization-xhtml-4',
   'Serialization-xhtml-18',
   'Serialization-xhtml-19a',
   'Serialization-xhtml-19b',
   'Serialization-xhtml-19c',
   'Serialization-xhtml-20',
   'Serialization-xhtml-21',
   'Serialization-xhtml-22',
   'Serialization-xhtml-23',
   'Serialization-xhtml-24',
   'Serialization-xhtml-25',
   'Serialization-xhtml-26',
   'Serialization-xhtml-27',
   'Serialization-xhtml-27a',
   'Serialization-xhtml-28',
   'Serialization-xhtml-29',
   'Serialization-xhtml-30',
   'Serialization-xhtml-31',
   'Serialization-xhtml-32',
   'Serialization-xhtml-33',
   'Serialization-xhtml-34',
   'Serialization-xhtml-35',
   'Serialization-xhtml-36',
   'Serialization-xhtml-36a',
   'Serialization-xhtml-37',
   'Serialization-xhtml-37a',
   'Serialization-xhtml-38',
   'Serialization-xhtml-39',
   'Serialization-xhtml-40',
   'Serialization-xhtml-41',
   'Serialization-xhtml-42',
   'Serialization-xhtml-50',
   'Serialization-xhtml-51',
   'Serialization-xhtml-52'].
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
'Serialization-xhtml-1'(_Config) ->
   {skip,"serialization"}.
'Serialization-xhtml-1a'(_Config) ->
   {skip,"serialization"}.
'Serialization-xhtml-2'(_Config) ->
   {skip,"serialization"}.
'Serialization-xhtml-3'(_Config) ->
   {skip,"serialization"}.
'Serialization-xhtml-4'(_Config) ->
   {skip,"serialization"}.
'Serialization-xhtml-18'(_Config) ->
   {skip,"serialization"}.
'Serialization-xhtml-19a'(_Config) ->
   {skip,"serialization"}.
'Serialization-xhtml-19b'(_Config) ->
   {skip,"serialization"}.
'Serialization-xhtml-19c'(_Config) ->
   {skip,"serialization"}.
'Serialization-xhtml-20'(_Config) ->
   {skip,"serialization"}.
'Serialization-xhtml-21'(_Config) ->
   {skip,"serialization"}.
'Serialization-xhtml-22'(_Config) ->
   {skip,"serialization"}.
'Serialization-xhtml-23'(_Config) ->
   {skip,"serialization"}.
'Serialization-xhtml-24'(_Config) ->
   {skip,"serialization"}.
'Serialization-xhtml-25'(_Config) ->
   {skip,"serialization"}.
'Serialization-xhtml-26'(_Config) ->
   {skip,"serialization"}.
'Serialization-xhtml-27'(_Config) ->
   {skip,"serialization"}.
'Serialization-xhtml-27a'(_Config) ->
   {skip,"serialization"}.
'Serialization-xhtml-28'(_Config) ->
   {skip,"serialization"}.
'Serialization-xhtml-29'(_Config) ->
   {skip,"serialization"}.
'Serialization-xhtml-30'(_Config) ->
   {skip,"serialization"}.
'Serialization-xhtml-31'(_Config) ->
   {skip,"serialization"}.
'Serialization-xhtml-32'(_Config) ->
   {skip,"serialization"}.
'Serialization-xhtml-33'(_Config) ->
   {skip,"serialization"}.
'Serialization-xhtml-34'(_Config) ->
   {skip,"serialization"}.
'Serialization-xhtml-35'(_Config) ->
   {skip,"serialization"}.
'Serialization-xhtml-36'(_Config) ->
   {skip,"serialization"}.
'Serialization-xhtml-36a'(_Config) ->
   {skip,"serialization"}.
'Serialization-xhtml-37'(_Config) ->
   {skip,"serialization"}.
'Serialization-xhtml-37a'(_Config) ->
   {skip,"serialization"}.
'Serialization-xhtml-38'(_Config) ->
   {skip,"serialization"}.
'Serialization-xhtml-39'(_Config) ->
   {skip,"serialization"}.
'Serialization-xhtml-40'(_Config) ->
   {skip,"serialization"}.
'Serialization-xhtml-41'(_Config) ->
   {skip,"serialization"}.
'Serialization-xhtml-42'(_Config) ->
   {skip,"serialization"}.
'Serialization-xhtml-50'(_Config) ->
   {skip,"serialization"}.
'Serialization-xhtml-51'(_Config) ->
   {skip,"serialization"}.
'Serialization-xhtml-52'(_Config) ->
   {skip,"serialization"}.
