-module('fn_load_xquery_module_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-load-xquery-module-001'/1]).
-export(['fn-load-xquery-module-002'/1]).
-export(['fn-load-xquery-module-003'/1]).
-export(['fn-load-xquery-module-004'/1]).
-export(['fn-load-xquery-module-005'/1]).
-export(['fn-load-xquery-module-006'/1]).
-export(['fn-load-xquery-module-007'/1]).
-export(['fn-load-xquery-module-008'/1]).
-export(['fn-load-xquery-module-009'/1]).
-export(['fn-load-xquery-module-010'/1]).
-export(['fn-load-xquery-module-011'/1]).
-export(['fn-load-xquery-module-012'/1]).
-export(['fn-load-xquery-module-013'/1]).
-export(['fn-load-xquery-module-014'/1]).
-export(['fn-load-xquery-module-015'/1]).
-export(['fn-load-xquery-module-016'/1]).
-export(['fn-load-xquery-module-017'/1]).
-export(['fn-load-xquery-module-018'/1]).
-export(['fn-load-xquery-module-019'/1]).
-export(['fn-load-xquery-module-020'/1]).
-export(['fn-load-xquery-module-021'/1]).
-export(['fn-load-xquery-module-022'/1]).
-export(['fn-load-xquery-module-023'/1]).
-export(['fn-load-xquery-module-024'/1]).
-export(['fn-load-xquery-module-025'/1]).
-export(['fn-load-xquery-module-026'/1]).
-export(['fn-load-xquery-module-027'/1]).
-export(['fn-load-xquery-module-028'/1]).
-export(['fn-load-xquery-module-029'/1]).
-export(['fn-load-xquery-module-030'/1]).
-export(['fn-load-xquery-module-031'/1]).
-export(['fn-load-xquery-module-032'/1]).
-export(['fn-load-xquery-module-033'/1]).
-export(['fn-load-xquery-module-034'/1]).
-export(['fn-load-xquery-module-035'/1]).
-export(['fn-load-xquery-module-036'/1]).
-export(['fn-load-xquery-module-037'/1]).
-export(['fn-load-xquery-module-038'/1]).
-export(['fn-load-xquery-module-040'/1]).
-export(['fn-load-xquery-module-041'/1]).
-export(['fn-load-xquery-module-042'/1]).
-export(['fn-load-xquery-module-043'/1]).
-export(['fn-load-xquery-module-044'/1]).
-export(['fn-load-xquery-module-045'/1]).
-export(['fn-load-xquery-module-046'/1]).
-export(['fn-load-xquery-module-050'/1]).
-export(['fn-load-xquery-module-051'/1]).
-export(['fn-load-xquery-module-052'/1]).
-export(['fn-load-xquery-module-053'/1]).
-export(['fn-load-xquery-module-054'/1]).
-export(['fn-load-xquery-module-055'/1]).
-export(['fn-load-xquery-module-056'/1]).
-export(['fn-load-xquery-module-057'/1]).
-export(['fn-load-xquery-module-060'/1]).
-export(['fn-load-xquery-module-061'/1]).
-export(['fn-load-xquery-module-062'/1]).
-export(['fn-load-xquery-module-063'/1]).
-export(['fn-load-xquery-module-064'/1]).
-export(['fn-load-xquery-module-065'/1]).
-export(['fn-load-xquery-module-066'/1]).
-export(['fn-load-xquery-module-067'/1]).
-export(['fn-load-xquery-module-068'/1]).
-export(['fn-load-xquery-module-069'/1]).
-export(['fn-load-xquery-module-070'/1]).
-export(['fn-load-xquery-module-071'/1]).
-export(['fn-load-xquery-module-072'/1]).
-export(['fn-load-xquery-module-073'/1]).
-export(['fn-load-xquery-module-901'/1]).
-export(['fn-load-xquery-module-902'/1]).
-export(['fn-load-xquery-module-903'/1]).
-export(['fn-load-xquery-module-904'/1]).
-export(['fn-load-xquery-module-905'/1]).
-export(['fn-load-xquery-module-906'/1]).
-export(['fn-load-xquery-module-907'/1]).
-export(['fn-load-xquery-module-908'/1]).
-export(['fn-load-xquery-module-909'/1]).
-export(['fn-load-xquery-module-910'/1]).
-export(['fn-load-xquery-module-911'/1]).
-export(['fn-load-xquery-module-912'/1]).
-export(['fn-load-xquery-module-913'/1]).
-export(['fn-load-xquery-module-914'/1]).
-export(['fn-load-xquery-module-915'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
, try  xqerl:compile("C:/git/zadean/xquery-3.1/QT3-test-suite/fn/load-xquery-module/invalid-module.xqm") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xquery-3.1/QT3-test-suite/fn/load-xquery-module/external-var-module.xqm") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xquery-3.1/QT3-test-suite/fn/load-xquery-module/context-item-module.xqm") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xquery-3.1/QT3-test-suite/fn/load-xquery-module/dynamic-error-module.xqm") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xquery-3.1/QT3-test-suite/fn/load-xquery-module/valid-module.xqm") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xquery-3.1/QT3-test-suite/fn/load-xquery-module/functions-module.xqm") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xquery-3.1/QT3-test-suite/fn/load-xquery-module/functions2-module.xqm") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xquery-3.1/QT3-test-suite/fn/load-xquery-module/external-vars-module.xqm") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xquery-3.1/QT3-test-suite/fn/load-xquery-module/import-func-module.xqm") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xquery-3.1/QT3-test-suite/fn/load-xquery-module/import-module.xqm") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xquery-3.1/QT3-test-suite/prod/ModuleImport/module1-lib.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xquery-3.1/QT3-test-suite/prod/ModuleImport/module2-lib.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xquery-3.1/QT3-test-suite/fn/load-xquery-module/import-vars-module.xqm") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xquery-3.1/QT3-test-suite/fn/load-xquery-module/import-vars2-module.xqm") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xquery-3.1/QT3-test-suite/fn/load-xquery-module/external-vars2-module.xqm") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xquery-3.1/QT3-test-suite/fn/load-xquery-module/import2-module.xqm") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xquery-3.1/QT3-test-suite/fn/load-xquery-module/middle-module.xqm") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xquery-3.1/QT3-test-suite/fn/load-xquery-module/import-vars3-module.xqm") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xquery-3.1/QT3-test-suite/fn/load-xquery-module/import-self-module.xqm") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xquery-3.1/QT3-test-suite/prod/ModuleImport/test1c1-lib.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xquery-3.1/QT3-test-suite/prod/ModuleImport/test2c1-lib.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xquery-3.1/QT3-test-suite/fn/load-xquery-module/load-module.xqm") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xquery-3.1/QT3-test-suite/fn/load-xquery-module/load-self-module.xqm") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xquery-3.1/QT3-test-suite/fn/load-xquery-module/decimal-format-module.xqm") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xquery-3.1/QT3-test-suite/fn/load-xquery-module/empty-least-module.xqm") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xquery-3.1/QT3-test-suite/fn/load-xquery-module/empty-greatest-module.xqm") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xquery-3.1/QT3-test-suite/fn/load-xquery-module/boundary-space1-module.xqm") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xquery-3.1/QT3-test-suite/fn/load-xquery-module/boundary-space2-module.xqm") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xquery-3.1/QT3-test-suite/fn/load-xquery-module/import-schema-hats-module.xqm") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xquery-3.1/QT3-test-suite/fn/load-xquery-module/import-schema-abf-module.xqm") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xquery-3.1/QT3-test-suite/fn/load-xquery-module/import-schema-abf2-module.xqm") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xquery-3.1/QT3-test-suite/fn/load-xquery-module/context-item2-module.xqm") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xquery-3.1/QT3-test-suite/fn/load-xquery-module/main-module.xqm") catch _:_ -> ok end,Config.
all() -> [
   'fn-load-xquery-module-001',
   'fn-load-xquery-module-002',
   'fn-load-xquery-module-003',
   'fn-load-xquery-module-004',
   'fn-load-xquery-module-005',
   'fn-load-xquery-module-006',
   'fn-load-xquery-module-007',
   'fn-load-xquery-module-008',
   'fn-load-xquery-module-009',
   'fn-load-xquery-module-010',
   'fn-load-xquery-module-011',
   'fn-load-xquery-module-012',
   'fn-load-xquery-module-013',
   'fn-load-xquery-module-014',
   'fn-load-xquery-module-015',
   'fn-load-xquery-module-016',
   'fn-load-xquery-module-017',
   'fn-load-xquery-module-018',
   'fn-load-xquery-module-019',
   'fn-load-xquery-module-020',
   'fn-load-xquery-module-021',
   'fn-load-xquery-module-022',
   'fn-load-xquery-module-023',
   'fn-load-xquery-module-024',
   'fn-load-xquery-module-025',
   'fn-load-xquery-module-026',
   'fn-load-xquery-module-027',
   'fn-load-xquery-module-028',
   'fn-load-xquery-module-029',
   'fn-load-xquery-module-030',
   'fn-load-xquery-module-031',
   'fn-load-xquery-module-032',
   'fn-load-xquery-module-033',
   'fn-load-xquery-module-034',
   'fn-load-xquery-module-035',
   'fn-load-xquery-module-036',
   'fn-load-xquery-module-037',
   'fn-load-xquery-module-038',
   'fn-load-xquery-module-040',
   'fn-load-xquery-module-041',
   'fn-load-xquery-module-042',
   'fn-load-xquery-module-043',
   'fn-load-xquery-module-044',
   'fn-load-xquery-module-045',
   'fn-load-xquery-module-046',
   'fn-load-xquery-module-050',
   'fn-load-xquery-module-051',
   'fn-load-xquery-module-052',
   'fn-load-xquery-module-053',
   'fn-load-xquery-module-054',
   'fn-load-xquery-module-055',
   'fn-load-xquery-module-056',
   'fn-load-xquery-module-057',
   'fn-load-xquery-module-060',
   'fn-load-xquery-module-061',
   'fn-load-xquery-module-062',
   'fn-load-xquery-module-063',
   'fn-load-xquery-module-064',
   'fn-load-xquery-module-065',
   'fn-load-xquery-module-066',
   'fn-load-xquery-module-067',
   'fn-load-xquery-module-068',
   'fn-load-xquery-module-069',
   'fn-load-xquery-module-070',
   'fn-load-xquery-module-071',
   'fn-load-xquery-module-072',
   'fn-load-xquery-module-073',
   'fn-load-xquery-module-901',
   'fn-load-xquery-module-902',
   'fn-load-xquery-module-903',
   'fn-load-xquery-module-904',
   'fn-load-xquery-module-905',
   'fn-load-xquery-module-906',
   'fn-load-xquery-module-907',
   'fn-load-xquery-module-908',
   'fn-load-xquery-module-909',
   'fn-load-xquery-module-910',
   'fn-load-xquery-module-911',
   'fn-load-xquery-module-912',
   'fn-load-xquery-module-913',
   'fn-load-xquery-module-914',
   'fn-load-xquery-module-915'].
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
environment('hats') ->
[{sources, []},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/prod/SchemaImport/hats.xsd","http://www.w3.org/XQueryTest/hats"}]},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/fn/load-xquery-module.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('abf') ->
[{sources, []},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/prod/SchemaImport/abf.xsd","http://www.w3.org/XQueryTest/abf"}]},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/fn/load-xquery-module.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'fn-load-xquery-module-001'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-002'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-003'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-004'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-005'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-006'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-007'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-008'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-009'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-010'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-011'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-012'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-013'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-014'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-015'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-016'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-017'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-018'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-019'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-020'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-021'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-022'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-023'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-024'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-025'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-026'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-027'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-028'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-029'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-030'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-031'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-032'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-033'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-034'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-035'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-036'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-037'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-038'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-040'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-041'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-042'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-043'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-044'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-045'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-046'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-050'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-051'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-052'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-053'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-054'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-055'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-056'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-057'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-060'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-061'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-062'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-063'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-064'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-065'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-066'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-067'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-068'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-069'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-070'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-071'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-072'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-073'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-901'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-902'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-903'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-904'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-905'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-906'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-907'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-908'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-909'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-910'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-911'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-912'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-913'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-914'(_Config) ->
   {skip,"load-xquery-module"}.
'fn-load-xquery-module-915'(_Config) ->
   {skip,"load-xquery-module"}.
