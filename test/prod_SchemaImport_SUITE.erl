-module('prod_SchemaImport_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['schema-import-1'/1]).
-export(['schema-import-2'/1]).
-export(['schema-import-3'/1]).
-export(['schema-import-4'/1]).
-export(['schema-import-5'/1]).
-export(['schema-import-6'/1]).
-export(['schema-import-7'/1]).
-export(['schema-import-8'/1]).
-export(['schema-import-9'/1]).
-export(['schema-import-10'/1]).
-export(['schema-import-11'/1]).
-export(['schema-import-12'/1]).
-export(['schema-import-13'/1]).
-export(['schema-import-14'/1]).
-export(['schema-import-15'/1]).
-export(['schema-import-16'/1]).
-export(['schema-import-17'/1]).
-export(['schema-import-18'/1]).
-export(['schema-import-19'/1]).
-export(['schema-import-20'/1]).
-export(['schema-import-21'/1]).
-export(['schema-import-22'/1]).
-export(['schema-import-23'/1]).
-export(['schema-import-25'/1]).
-export(['schema-import-26'/1]).
-export(['schema-import-27'/1]).
-export(['schema-import-28'/1]).
-export(['schema-import-29'/1]).
-export(['schema-import-30'/1]).
-export(['modules-schema-context'/1]).
-export(['schema-import-31'/1]).
-export(['qischema001'/1]).
-export(['qischema002'/1]).
-export(['qischema003'/1]).
-export(['qischema004'/1]).
-export(['qischema005'/1]).
-export(['qischema006'/1]).
-export(['qischema007'/1]).
-export(['qischema008'/1]).
-export(['qischema009'/1]).
-export(['qischema010'/1]).
-export(['qischema011'/1]).
-export(['qischema012'/1]).
-export(['qischema016'/1]).
-export(['qischema030'/1]).
-export(['qischema031'/1]).
-export(['qischema032'/1]).
-export(['qischema032a'/1]).
-export(['qischema032b'/1]).
-export(['qischema032c'/1]).
-export(['qischema040'/1]).
-export(['qischema040a'/1]).
-export(['qischema041'/1]).
-export(['qischema042'/1]).
-export(['qischema043'/1]).
-export(['qischema044'/1]).
-export(['qischema061'/1]).
-export(['qischema062'/1]).
-export(['qischema063'/1]).
-export(['qischema063q02-err'/1]).
-export(['qischema064'/1]).
-export(['qischema065'/1]).
-export(['qischema070'/1]).
-export(['qischema072-01'/1]).
-export(['qischema072-02'/1]).
-export(['qischema072-03'/1]).
-export(['qischema072-04'/1]).
-export(['qischema072-05'/1]).
-export(['qischema072-06'/1]).
-export(['qischema080'/1]).
-export(['qischema083'/1]).
-export(['qischema265'/1]).
-export(['qischema266'/1]).
-export(['qischema90007'/1]).
-export(['qischema90008'/1]).
-export(['qischema90031-err'/1]).
-export(['qischema90041-err'/1]).
-export(['qischema90042-err'/1]).
-export(['qischema90051-err'/1]).
-export(['qischema90061-err'/1]).
-export(['qischema90071-err'/1]).
-export(['qischema90081-err'/1]).
-export(['qischema90082-err'/1]).
-export(['qischema90101-err'/1]).
-export(['qischema90102-err'/1]).
-export(['qischema90131-err'/1]).
-export(['qischema90151-err'/1]).
-export(['qischema90171-err'/1]).
-export(['qischema90172-err'/1]).
-export(['qischema90401-err'/1]).
-export(['qischema90431-err'/1]).
-export(['qischema90611-err'/1]).
-export(['qischema90612-err'/1]).
-export(['qischema90613-err'/1]).
-export(['qischema90614-err'/1]).
-export(['qischema90621-err'/1]).
-export(['qischema90631-err'/1]).
-export(['qischema90701-err'/1]).
-export(['qischema90702-err'/1]).
-export(['qischema90703-err'/1]).
-export(['substitution-001'/1]).
-export(['substitution-002'/1]).
-export(['substitution-003'/1]).
-export(['substitution-004'/1]).
-export(['substitution-005'/1]).
-export(['substitution-006'/1]).
-export(['substitution-007'/1]).
-export(['substitution-008'/1]).
-export(['substitution-009'/1]).
-export(['substitution-010'/1]).
-export(['substitution-011'/1]).
-export(['substitution-020'/1]).
-export(['substitution-021'/1]).
-export(['substitution-022'/1]).
-export(['substitution-023'/1]).
-export(['substitution-024'/1]).
-export(['substitution-025'/1]).
-export(['substitution-030'/1]).
-export(['substitution-031'/1]).
-export(['substitution-032'/1]).
-export(['cbcl-schema-element-1'/1]).
-export(['cbcl-schema-element-2'/1]).
-export(['cbcl-schema-element-3'/1]).
-export(['cbcl-schema-element-4'/1]).
-export(['cbcl-schema-element-5'/1]).
-export(['cbcl-schema-element-6'/1]).
-export(['cbcl-schema-element-7'/1]).
-export(['cbcl-schema-element-8'/1]).
-export(['cbcl-schema-element-9'/1]).
-export(['cbcl-validated-schema-element-1'/1]).
-export(['cbcl-validated-schema-element-2'/1]).
-export(['cbcl-validated-schema-element-3'/1]).
-export(['cbcl-validated-schema-element-4'/1]).
-export(['cbcl-schema-attribute-1'/1]).
-export(['cbcl-schema-attribute-2'/1]).
-export(['cbcl-default-attribute-1'/1]).
-export(['cbcl-default-attribute-2'/1]).
-export(['cbcl-fixed-attribute-1'/1]).
-export(['cbcl-fixed-attribute-2'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
, try  xqerl:compile("C:/git/xqerl/test/QT3_1_0/prod/SchemaImport/context-lib.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/xqerl/test/QT3_1_0/prod/SchemaImport/xmod040a.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/xqerl/test/QT3_1_0/prod/SchemaImport/xmod043a.xq") catch _:_ -> ok end,Config.
all() -> [
   'schema-import-1',
   'schema-import-2',
   'schema-import-3',
   'schema-import-4',
   'schema-import-5',
   'schema-import-6',
   'schema-import-7',
   'schema-import-8',
   'schema-import-9',
   'schema-import-10',
   'schema-import-11',
   'schema-import-12',
   'schema-import-13',
   'schema-import-14',
   'schema-import-15',
   'schema-import-16',
   'schema-import-17',
   'schema-import-18',
   'schema-import-19',
   'schema-import-20',
   'schema-import-21',
   'schema-import-22',
   'schema-import-23',
   'schema-import-25',
   'schema-import-26',
   'schema-import-27',
   'schema-import-28',
   'schema-import-29',
   'schema-import-30',
   'modules-schema-context',
   'schema-import-31',
   'qischema001',
   'qischema002',
   'qischema003',
   'qischema004',
   'qischema005',
   'qischema006',
   'qischema007',
   'qischema008',
   'qischema009',
   'qischema010',
   'qischema011',
   'qischema012',
   'qischema016',
   'qischema030',
   'qischema031',
   'qischema032',
   'qischema032a',
   'qischema032b',
   'qischema032c',
   'qischema040',
   'qischema040a',
   'qischema041',
   'qischema042',
   'qischema043',
   'qischema044',
   'qischema061',
   'qischema062',
   'qischema063',
   'qischema063q02-err',
   'qischema064',
   'qischema065',
   'qischema070',
   'qischema072-01',
   'qischema072-02',
   'qischema072-03',
   'qischema072-04',
   'qischema072-05',
   'qischema072-06',
   'qischema080',
   'qischema083',
   'qischema265',
   'qischema266',
   'qischema90007',
   'qischema90008',
   'qischema90031-err',
   'qischema90041-err',
   'qischema90042-err',
   'qischema90051-err',
   'qischema90061-err',
   'qischema90071-err',
   'qischema90081-err',
   'qischema90082-err',
   'qischema90101-err',
   'qischema90102-err',
   'qischema90131-err',
   'qischema90151-err',
   'qischema90171-err',
   'qischema90172-err',
   'qischema90401-err',
   'qischema90431-err',
   'qischema90611-err',
   'qischema90612-err',
   'qischema90613-err',
   'qischema90614-err',
   'qischema90621-err',
   'qischema90631-err',
   'qischema90701-err',
   'qischema90702-err',
   'qischema90703-err',
   'substitution-001',
   'substitution-002',
   'substitution-003',
   'substitution-004',
   'substitution-005',
   'substitution-006',
   'substitution-007',
   'substitution-008',
   'substitution-009',
   'substitution-010',
   'substitution-011',
   'substitution-020',
   'substitution-021',
   'substitution-022',
   'substitution-023',
   'substitution-024',
   'substitution-025',
   'substitution-030',
   'substitution-031',
   'substitution-032',
   'cbcl-schema-element-1',
   'cbcl-schema-element-2',
   'cbcl-schema-element-3',
   'cbcl-schema-element-4',
   'cbcl-schema-element-5',
   'cbcl-schema-element-6',
   'cbcl-schema-element-7',
   'cbcl-schema-element-8',
   'cbcl-schema-element-9',
   'cbcl-validated-schema-element-1',
   'cbcl-validated-schema-element-2',
   'cbcl-validated-schema-element-3',
   'cbcl-validated-schema-element-4',
   'cbcl-schema-attribute-1',
   'cbcl-schema-attribute-2',
   'cbcl-default-attribute-1',
   'cbcl-default-attribute-2',
   'cbcl-fixed-attribute-1',
   'cbcl-fixed-attribute-2'].
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
];
environment('hats') ->
[{sources, []},
{schemas, [{"file:///C:/git/xqerl/test/QT3_1_0/prod/SchemaImport/hats.xsd","http://www.w3.org/XQueryTest/hats"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('abf') ->
[{sources, []},
{schemas, [{"file:///C:/git/xqerl/test/QT3_1_0/prod/SchemaImport/abf.xsd","http://www.w3.org/XQueryTest/abf"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('abf-emptydoc') ->
[{sources, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/emptydoc.xml",".",""}]},
{schemas, [{"file:///C:/git/xqerl/test/QT3_1_0/prod/SchemaImport/abf.xsd","http://www.w3.org/XQueryTest/abf"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('mini-fpml') ->
[{sources, []},
{schemas, [{"file:///C:/git/xqerl/test/QT3_1_0/prod/SchemaImport/mini-fpml.xsd","http://www.fpml.org/2005/FpML-4-2"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('addresses') ->
[{sources, []},
{schemas, [{"file:///C:/git/xqerl/test/QT3_1_0/prod/SchemaImport/addresses.xsd","http://www.w3.org/XQueryTest/addresses"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('money') ->
[{sources, []},
{schemas, [{"file:///C:/git/xqerl/test/QT3_1_0/prod/SchemaImport/money.xsd","http://www.w3.org/XQueryTest/money"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('QNameComparisonTest') ->
[{sources, []},
{schemas, [{"file:///C:/git/xqerl/test/QT3_1_0/prod/SchemaImport/QNameComparisonTest.xsd","http://www.w3.org/XQueryTest/QNameComparisonTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('emptydoc') ->
[{sources, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/emptydoc.xml","$emptydoc1",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('substitution') ->
[{sources, []},
{schemas, [{"file:///C:/git/xqerl/test/QT3_1_0/prod/SchemaImport/substitution.xsd","http://www.w3.org/XQueryTest/substitution"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('substitution11') ->
[{sources, []},
{schemas, [{"file:///C:/git/xqerl/test/QT3_1_0/prod/SchemaImport/substitution11.xsd","http://www.w3.org/XQueryTest/substitution11"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('validate') ->
[{sources, [{"file:///C:/git/xqerl/test/QT3_1_0/fn/nilled/validate.xml",".",""}]},
{schemas, [{"file:///C:/git/xqerl/test/QT3_1_0/fn/nilled/validate.xsd","http://www.w3.org/XQueryTest/testcases"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'schema-import-1'(_Config) ->
   {skip,"schemaImport"}.
'schema-import-2'(_Config) ->
   {skip,"schemaImport"}.
'schema-import-3'(_Config) ->
   {skip,"schemaImport"}.
'schema-import-4'(_Config) ->
   {skip,"Validation Environment"}.
'schema-import-5'(_Config) ->
   {skip,"Validation Environment"}.
'schema-import-6'(_Config) ->
   {skip,"Validation Environment"}.
'schema-import-7'(_Config) ->
   {skip,"Validation Environment"}.
'schema-import-8'(_Config) ->
   {skip,"Validation Environment"}.
'schema-import-9'(_Config) ->
   {skip,"Validation Environment"}.
'schema-import-10'(_Config) ->
   {skip,"Validation Environment"}.
'schema-import-11'(_Config) ->
   {skip,"Validation Environment"}.
'schema-import-12'(_Config) ->
   {skip,"Validation Environment"}.
'schema-import-13'(_Config) ->
   {skip,"Validation Environment"}.
'schema-import-14'(_Config) ->
   {skip,"Validation Environment"}.
'schema-import-15'(_Config) ->
   {skip,"Validation Environment"}.
'schema-import-16'(_Config) ->
   {skip,"Validation Environment"}.
'schema-import-17'(_Config) ->
   {skip,"Validation Environment"}.
'schema-import-18'(_Config) ->
   {skip,"Validation Environment"}.
'schema-import-19'(_Config) ->
   {skip,"Validation Environment"}.
'schema-import-20'(_Config) ->
   {skip,"Validation Environment"}.
'schema-import-21'(_Config) ->
   {skip,"Validation Environment"}.
'schema-import-22'(_Config) ->
   {skip,"Validation Environment"}.
'schema-import-23'(_Config) ->
   {skip,"Validation Environment"}.
'schema-import-25'(_Config) ->
   {skip,"Validation Environment"}.
'schema-import-26'(_Config) ->
   {skip,"Validation Environment"}.
'schema-import-27'(_Config) ->
   {skip,"Validation Environment"}.
'schema-import-28'(_Config) ->
   {skip,"Validation Environment"}.
'schema-import-29'(_Config) ->
   {skip,"Validation Environment"}.
'schema-import-30'(_Config) ->
   {skip,"Validation Environment"}.
'modules-schema-context'(_Config) ->
   {skip,"schemaImport"}.
'schema-import-31'(_Config) ->
   {skip,"Validation Environment"}.
'qischema001'(_Config) ->
   {skip,"schemaImport"}.
'qischema002'(_Config) ->
   {skip,"schemaImport"}.
'qischema003'(_Config) ->
   {skip,"schemaImport"}.
'qischema004'(_Config) ->
   {skip,"schemaImport"}.
'qischema005'(_Config) ->
   {skip,"schemaImport"}.
'qischema006'(_Config) ->
   {skip,"schemaImport"}.
'qischema007'(_Config) ->
   {skip,"schemaImport"}.
'qischema008'(_Config) ->
   {skip,"schemaImport"}.
'qischema009'(_Config) ->
   {skip,"schemaImport"}.
'qischema010'(_Config) ->
   {skip,"schemaImport"}.
'qischema011'(_Config) ->
   {skip,"schemaImport"}.
'qischema012'(_Config) ->
   {skip,"schemaImport"}.
'qischema016'(_Config) ->
   {skip,"schemaImport"}.
'qischema030'(_Config) ->
   {skip,"schemaImport"}.
'qischema031'(_Config) ->
   {skip,"schemaImport"}.
'qischema032'(_Config) ->
   {skip,"schemaImport"}.
'qischema032a'(_Config) ->
   {skip,"schemaImport"}.
'qischema032b'(_Config) ->
   {skip,"schemaImport"}.
'qischema032c'(_Config) ->
   {skip,"schemaImport"}.
'qischema040'(_Config) ->
   {skip,"schemaImport"}.
'qischema040a'(_Config) ->
   {skip,"schemaImport"}.
'qischema041'(_Config) ->
   {skip,"schemaImport"}.
'qischema042'(_Config) ->
   {skip,"schemaImport"}.
'qischema043'(_Config) ->
   {skip,"schemaImport"}.
'qischema044'(_Config) ->
   {skip,"schemaImport"}.
'qischema061'(_Config) ->
   {skip,"schemaImport"}.
'qischema062'(_Config) ->
   {skip,"schemaImport"}.
'qischema063'(_Config) ->
   {skip,"schemaImport"}.
'qischema063q02-err'(_Config) ->
   {skip,"schemaImport"}.
'qischema064'(_Config) ->
   {skip,"schemaImport"}.
'qischema065'(_Config) ->
   {skip,"schemaImport"}.
'qischema070'(_Config) ->
   {skip,"schemaImport"}.
'qischema072-01'(_Config) ->
   {skip,"schemaImport"}.
'qischema072-02'(_Config) ->
   {skip,"schemaImport"}.
'qischema072-03'(_Config) ->
   {skip,"schemaImport"}.
'qischema072-04'(_Config) ->
   {skip,"schemaImport"}.
'qischema072-05'(_Config) ->
   {skip,"schemaImport"}.
'qischema072-06'(_Config) ->
   {skip,"schemaImport"}.
'qischema080'(_Config) ->
   {skip,"schemaImport"}.
'qischema083'(_Config) ->
   {skip,"schemaImport"}.
'qischema265'(_Config) ->
   {skip,"Validation Environment"}.
'qischema266'(_Config) ->
   {skip,"schemaImport"}.
'qischema90007'(_Config) ->
   {skip,"schemaImport"}.
'qischema90008'(_Config) ->
   {skip,"schemaImport"}.
'qischema90031-err'(_Config) ->
   {skip,"schemaImport"}.
'qischema90041-err'(_Config) ->
   {skip,"schemaImport"}.
'qischema90042-err'(_Config) ->
   {skip,"schemaImport"}.
'qischema90051-err'(_Config) ->
   {skip,"schemaImport"}.
'qischema90061-err'(_Config) ->
   {skip,"schemaImport"}.
'qischema90071-err'(_Config) ->
   {skip,"schemaImport"}.
'qischema90081-err'(_Config) ->
   {skip,"schemaImport"}.
'qischema90082-err'(_Config) ->
   {skip,"schemaImport"}.
'qischema90101-err'(_Config) ->
   {skip,"schemaImport"}.
'qischema90102-err'(_Config) ->
   {skip,"schemaImport"}.
'qischema90131-err'(_Config) ->
   {skip,"schemaImport"}.
'qischema90151-err'(_Config) ->
   {skip,"schemaImport"}.
'qischema90171-err'(_Config) ->
   {skip,"schemaImport"}.
'qischema90172-err'(_Config) ->
   {skip,"schemaImport"}.
'qischema90401-err'(_Config) ->
   {skip,"schemaImport"}.
'qischema90431-err'(_Config) ->
   {skip,"schemaImport"}.
'qischema90611-err'(_Config) ->
   {skip,"schemaImport"}.
'qischema90612-err'(_Config) ->
   {skip,"schemaImport"}.
'qischema90613-err'(_Config) ->
   {skip,"schemaImport"}.
'qischema90614-err'(_Config) ->
   {skip,"schemaImport"}.
'qischema90621-err'(_Config) ->
   {skip,"schemaImport"}.
'qischema90631-err'(_Config) ->
   {skip,"schemaImport"}.
'qischema90701-err'(_Config) ->
   {skip,"schemaImport"}.
'qischema90702-err'(_Config) ->
   {skip,"schemaImport"}.
'qischema90703-err'(_Config) ->
   {skip,"schemaImport"}.
'substitution-001'(_Config) ->
   {skip,"schemaImport"}.
'substitution-002'(_Config) ->
   {skip,"schemaImport"}.
'substitution-003'(_Config) ->
   {skip,"schemaImport"}.
'substitution-004'(_Config) ->
   {skip,"schemaImport"}.
'substitution-005'(_Config) ->
   {skip,"schemaImport"}.
'substitution-006'(_Config) ->
   {skip,"schemaImport"}.
'substitution-007'(_Config) ->
   {skip,"schemaImport"}.
'substitution-008'(_Config) ->
   {skip,"schemaImport"}.
'substitution-009'(_Config) ->
   {skip,"schemaImport"}.
'substitution-010'(_Config) ->
   {skip,"schemaImport"}.
'substitution-011'(_Config) ->
   {skip,"schemaImport"}.
'substitution-020'(_Config) ->
   {skip,"schemaImport"}.
'substitution-021'(_Config) ->
   {skip,"schemaImport"}.
'substitution-022'(_Config) ->
   {skip,"schemaImport"}.
'substitution-023'(_Config) ->
   {skip,"schemaImport"}.
'substitution-024'(_Config) ->
   {skip,"schemaImport"}.
'substitution-025'(_Config) ->
   {skip,"schemaImport"}.
'substitution-030'(_Config) ->
   {skip,"schemaImport"}.
'substitution-031'(_Config) ->
   {skip,"schemaImport"}.
'substitution-032'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-schema-element-1'(_Config) ->
   {skip,"Validation Environment"}.
'cbcl-schema-element-2'(_Config) ->
   {skip,"Validation Environment"}.
'cbcl-schema-element-3'(_Config) ->
   {skip,"Validation Environment"}.
'cbcl-schema-element-4'(_Config) ->
   {skip,"Validation Environment"}.
'cbcl-schema-element-5'(_Config) ->
   {skip,"Validation Environment"}.
'cbcl-schema-element-6'(_Config) ->
   {skip,"Validation Environment"}.
'cbcl-schema-element-7'(_Config) ->
   {skip,"Validation Environment"}.
'cbcl-schema-element-8'(_Config) ->
   {skip,"Validation Environment"}.
'cbcl-schema-element-9'(_Config) ->
   {skip,"Validation Environment"}.
'cbcl-validated-schema-element-1'(_Config) ->
   {skip,"Validation Environment"}.
'cbcl-validated-schema-element-2'(_Config) ->
   {skip,"Validation Environment"}.
'cbcl-validated-schema-element-3'(_Config) ->
   {skip,"Validation Environment"}.
'cbcl-validated-schema-element-4'(_Config) ->
   {skip,"Validation Environment"}.
'cbcl-schema-attribute-1'(_Config) ->
   {skip,"Validation Environment"}.
'cbcl-schema-attribute-2'(_Config) ->
   {skip,"Validation Environment"}.
'cbcl-default-attribute-1'(_Config) ->
   {skip,"Validation Environment"}.
'cbcl-default-attribute-2'(_Config) ->
   {skip,"Validation Environment"}.
'cbcl-fixed-attribute-1'(_Config) ->
   {skip,"Validation Environment"}.
'cbcl-fixed-attribute-2'(_Config) ->
   {skip,"Validation Environment"}.
