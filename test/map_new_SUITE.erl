-module('map_new_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['map-new-001'/1]).
-export(['map-new-002'/1]).
-export(['map-new-003'/1]).
-export(['map-new-004'/1]).
-export(['map-new-005'/1]).
-export(['map-new-006'/1]).
-export(['map-new-007'/1]).
-export(['map-new-008'/1]).
-export(['map-new-009'/1]).
-export(['map-new-010'/1]).
-export(['map-new-011'/1]).
-export(['map-new-012'/1]).
-export(['map-new-013'/1]).
-export(['map-new-014'/1]).
-export(['map-new-015'/1]).
-export(['map-new-016'/1]).
-export(['map-new-017'/1]).
-export(['map-new-018'/1]).
-export(['map-new-019'/1]).
-export(['map-new-020'/1]).
-export(['map-new-021'/1]).
-export(['map-new-022'/1]).
-export(['map-new-023'/1]).
-export(['map-new-024'/1]).
-export(['map-new-025'/1]).
-export(['map-new-026'/1]).
-export(['map-new-027'/1]).
-export(['map-new-028'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'map-new-001',
   'map-new-002',
   'map-new-003',
   'map-new-004',
   'map-new-005',
   'map-new-006',
   'map-new-007',
   'map-new-008',
   'map-new-009',
   'map-new-010',
   'map-new-011',
   'map-new-012',
   'map-new-013',
   'map-new-014',
   'map-new-015',
   'map-new-016',
   'map-new-017',
   'map-new-018',
   'map-new-019',
   'map-new-020',
   'map-new-021',
   'map-new-022',
   'map-new-023',
   'map-new-024',
   'map-new-025',
   'map-new-026',
   'map-new-027',
   'map-new-028'].
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
[{sources, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{resources, []},
{modules, []}
];
environment('atomic-xq') ->
[{sources, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-mod') ->
[{sources, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/works-mod.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works') ->
[{sources, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/works.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('staff') ->
[{sources, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/staff.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-and-staff') ->
[{sources, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/works.xml","$works",""},
{"file:///C:/git/xqerl/test/QT3_1_0/docs/staff.xml","$staff",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('auction') ->
[{sources, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/auction.xml",".",""}]},
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
[{sources, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/QName-source.xml",".",""}]},
{schemas, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/QName-schema.xsd","http://www.example.com/QNameXSD"}]},
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
'map-new-001'(_Config) ->
   {skip,"XP30+"}.
'map-new-002'(_Config) ->
   {skip,"XP30+"}.
'map-new-003'(_Config) ->
   {skip,"XP30+"}.
'map-new-004'(_Config) ->
   {skip,"XP30+"}.
'map-new-005'(_Config) ->
   {skip,"XP30+"}.
'map-new-006'(_Config) ->
   {skip,"XP30+"}.
'map-new-007'(_Config) ->
   {skip,"XP30+"}.
'map-new-008'(_Config) ->
   {skip,"XP30+"}.
'map-new-009'(_Config) ->
   {skip,"XP30+"}.
'map-new-010'(_Config) ->
   {skip,"XP30+"}.
'map-new-011'(_Config) ->
   {skip,"XP30+"}.
'map-new-012'(_Config) ->
   {skip,"XP30+"}.
'map-new-013'(_Config) ->
   {skip,"XP30+"}.
'map-new-014'(_Config) ->
   {skip,"XP30+"}.
'map-new-015'(_Config) ->
   {skip,"XP30+"}.
'map-new-016'(_Config) ->
   {skip,"XP30+"}.
'map-new-017'(_Config) ->
   {skip,"XP30+"}.
'map-new-018'(_Config) ->
   {skip,"XP30+"}.
'map-new-019'(_Config) ->
   {skip,"XP30+"}.
'map-new-020'(_Config) ->
   {skip,"XP30+"}.
'map-new-021'(_Config) ->
   {skip,"XP30+"}.
'map-new-022'(_Config) ->
   {skip,"XP30+"}.
'map-new-023'(_Config) ->
   {skip,"XP30+"}.
'map-new-024'(_Config) ->
   {skip,"Collation Environment"}.
'map-new-025'(_Config) ->
   {skip,"Collation Environment"}.
'map-new-026'(_Config) ->
   {skip,"Collation Environment"}.
'map-new-027'(_Config) ->
   {skip,"Collation Environment"}.
'map-new-028'(_Config) ->
   {skip,"Collation Environment"}.
