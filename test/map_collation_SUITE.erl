-module('map_collation_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['map-collation-001'/1]).
-export(['map-collation-002'/1]).
-export(['map-collation-003'/1]).
-export(['map-collation-004'/1]).
-export(['map-collation-005'/1]).
-export(['map-collation-006'/1]).
-export(['map-collation-007'/1]).
-export(['map-collation-008'/1]).
-export(['map-collation-009'/1]).
-export(['map-collation-010'/1]).
-export(['map-collation-011'/1]).
-export(['map-collation-012'/1]).
-export(['map-collation-013'/1]).
-export(['map-collation-014'/1]).
-export(['map-collation-015'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'map-collation-001',
   'map-collation-002',
   'map-collation-003',
   'map-collation-004',
   'map-collation-005',
   'map-collation-006',
   'map-collation-007',
   'map-collation-008',
   'map-collation-009',
   'map-collation-010',
   'map-collation-011',
   'map-collation-012',
   'map-collation-013',
   'map-collation-014',
   'map-collation-015'].
environment('empty') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('atomic') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{resources, []},
{modules, []}
];
environment('atomic-xq') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-mod') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/works-mod.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/works.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('staff') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/staff.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-and-staff') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/works.xml","$works",""},
{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/staff.xml","$staff",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('auction') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/auction.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.example.com/AuctionWatch","ma"},
{"http://www.w3.org/1999/xlink","xlink"},
{"http://www.example.com/auctioneers#anyzone","anyzone"},
{"http://www.example.com/auctioneers#eachbay","eachbay"},
{"http://www.example.com/auctioneers#yabadoo","yabadoo"}]},
{resources, []},
{modules, []}
];
environment('qname') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/QName-source.xml",".",""}]},
{schemas, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/QName-schema.xsd","http://www.example.com/QNameXSD"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.example.com/QNameXSD",""}]},
{resources, []},
{modules, []}
];
environment('math') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/math","math"}]},
{resources, []},
{modules, []}
].
'map-collation-001'(_Config) ->
   {skip,"XP30+"}.
'map-collation-002'(_Config) ->
   {skip,"XP30+"}.
'map-collation-003'(_Config) ->
   {skip,"XP30+"}.
'map-collation-004'(_Config) ->
   {skip,"XP30+"}.
'map-collation-005'(_Config) ->
   {skip,"XP30+"}.
'map-collation-006'(_Config) ->
   {skip,"XP30+"}.
'map-collation-007'(_Config) ->
   {skip,"XP30+"}.
'map-collation-008'(_Config) ->
   {skip,"XP30+"}.
'map-collation-009'(_Config) ->
   {skip,"XP30+"}.
'map-collation-010'(_Config) ->
   {skip,"Collation Environment"}.
'map-collation-011'(_Config) ->
   {skip,"Collation Environment"}.
'map-collation-012'(_Config) ->
   {skip,"Collation Environment"}.
'map-collation-013'(_Config) ->
   {skip,"Collation Environment"}.
'map-collation-014'(_Config) ->
   {skip,"Collation Environment"}.
'map-collation-015'(_Config) ->
   {skip,"Collation Environment"}.
