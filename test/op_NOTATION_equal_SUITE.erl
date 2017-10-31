-module('op_NOTATION_equal_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['Comp-notation-1'/1]).
-export(['Comp-notation-2'/1]).
-export(['Comp-notation-3'/1]).
-export(['Comp-notation-4'/1]).
-export(['Comp-notation-5'/1]).
-export(['Comp-notation-6'/1]).
-export(['Comp-notation-7'/1]).
-export(['Comp-notation-8'/1]).
-export(['Comp-notation-9'/1]).
-export(['Comp-notation-10'/1]).
-export(['Comp-notation-11'/1]).
-export(['Comp-notation-12'/1]).
-export(['Comp-notation-13'/1]).
-export(['Comp-notation-14'/1]).
-export(['Comp-notation-15'/1]).
-export(['Comp-notation-16'/1]).
-export(['Comp-notation-17'/1]).
-export(['Comp-notation-18'/1]).
-export(['Comp-notation-19'/1]).
-export(['Comp-notation-20'/1]).
-export(['Comp-notation-21'/1]).
-export(['Comp-notation-22'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'Comp-notation-1',
   'Comp-notation-2',
   'Comp-notation-3',
   'Comp-notation-4',
   'Comp-notation-5',
   'Comp-notation-6',
   'Comp-notation-7',
   'Comp-notation-8',
   'Comp-notation-9',
   'Comp-notation-10',
   'Comp-notation-11',
   'Comp-notation-12',
   'Comp-notation-13',
   'Comp-notation-14',
   'Comp-notation-15',
   'Comp-notation-16',
   'Comp-notation-17',
   'Comp-notation-18',
   'Comp-notation-19',
   'Comp-notation-20',
   'Comp-notation-21',
   'Comp-notation-22'].
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
environment('notation') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/op/NOTATION-equal/notation.xml",".",""}]},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/op/NOTATION-equal/notationschema.xsd","http://www.example.com/notation"}]},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/op/NOTATION-equal.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'Comp-notation-1'(_Config) ->
   {skip,"Validation Environment"}.
'Comp-notation-2'(_Config) ->
   {skip,"Validation Environment"}.
'Comp-notation-3'(_Config) ->
   {skip,"Validation Environment"}.
'Comp-notation-4'(_Config) ->
   {skip,"Validation Environment"}.
'Comp-notation-5'(_Config) ->
   {skip,"Validation Environment"}.
'Comp-notation-6'(_Config) ->
   {skip,"Validation Environment"}.
'Comp-notation-7'(_Config) ->
   {skip,"Validation Environment"}.
'Comp-notation-8'(_Config) ->
   {skip,"Validation Environment"}.
'Comp-notation-9'(_Config) ->
   {skip,"Validation Environment"}.
'Comp-notation-10'(_Config) ->
   {skip,"Validation Environment"}.
'Comp-notation-11'(_Config) ->
   {skip,"Validation Environment"}.
'Comp-notation-12'(_Config) ->
   {skip,"Validation Environment"}.
'Comp-notation-13'(_Config) ->
   {skip,"Validation Environment"}.
'Comp-notation-14'(_Config) ->
   {skip,"Validation Environment"}.
'Comp-notation-15'(_Config) ->
   {skip,"Validation Environment"}.
'Comp-notation-16'(_Config) ->
   {skip,"Validation Environment"}.
'Comp-notation-17'(_Config) ->
   {skip,"Validation Environment"}.
'Comp-notation-18'(_Config) ->
   {skip,"Validation Environment"}.
'Comp-notation-19'(_Config) ->
   {skip,"Validation Environment"}.
'Comp-notation-20'(_Config) ->
   {skip,"Validation Environment"}.
'Comp-notation-21'(_Config) ->
   {skip,"Validation Environment"}.
'Comp-notation-22'(_Config) ->
   {skip,"Validation Environment"}.
