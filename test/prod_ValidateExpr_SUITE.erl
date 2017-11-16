-module('prod_ValidateExpr_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['validateexpr-1'/1]).
-export(['validateexpr-2'/1]).
-export(['validateexpr-3'/1]).
-export(['validateexpr-4'/1]).
-export(['validateexpr-5'/1]).
-export(['validateexpr-6'/1]).
-export(['validateexpr-7'/1]).
-export(['validateexpr-8'/1]).
-export(['validateexpr-9'/1]).
-export(['validateexpr-10'/1]).
-export(['validateexpr-11'/1]).
-export(['validateexpr-12'/1]).
-export(['validateexpr-13'/1]).
-export(['validateexpr-14'/1]).
-export(['validateexpr-15'/1]).
-export(['validateexpr-16'/1]).
-export(['validateexpr-17'/1]).
-export(['validateexpr-18'/1]).
-export(['validateexpr-19'/1]).
-export(['validateexpr-20'/1]).
-export(['validateexpr-21'/1]).
-export(['validateexpr-23'/1]).
-export(['validateexpr-24'/1]).
-export(['validateexpr-25'/1]).
-export(['validateexpr-26'/1]).
-export(['validateexpr-27'/1]).
-export(['validateexpr-28'/1]).
-export(['validateexpr-29'/1]).
-export(['validateexpr-30'/1]).
-export(['validateexpr-31'/1]).
-export(['validateexpr-32'/1]).
-export(['validateexpr-33'/1]).
-export(['validateexpr-34'/1]).
-export(['validateexpr-35'/1]).
-export(['validateexpr-36'/1]).
-export(['validateexpr-37'/1]).
-export(['validateexpr-38'/1]).
-export(['validateexpr-39'/1]).
-export(['validateexpr-40'/1]).
-export(['validateexpr-41'/1]).
-export(['validateexpr-42'/1]).
-export(['K2-ValidateExpression-1'/1]).
-export(['validate-constraints-1'/1]).
-export(['validate-constraints-2'/1]).
-export(['validate-constraints-3'/1]).
-export(['validate-constraints-4'/1]).
-export(['validate-sc-1'/1]).
-export(['validateexpr-sc-2'/1]).
-export(['validateexpr-sc-4'/1]).
-export(['validateexpr-sc-5'/1]).
-export(['validateexpr-sc-6'/1]).
-export(['validateexpr-sc-7'/1]).
-export(['validateexpr-sc-8'/1]).
-export(['validateexpr-sc-9'/1]).
-export(['validate-as-101'/1]).
-export(['validate-as-102'/1]).
-export(['validate-as-103'/1]).
-export(['validate-as-104'/1]).
-export(['validate-as-105'/1]).
-export(['validate-as-106'/1]).
-export(['validate-as-107'/1]).
-export(['validate-as-91011'/1]).
-export(['validate-as-91012'/1]).
-export(['validate-as-91013'/1]).
-export(['validate-as-91014'/1]).
-export(['validate-as-91015'/1]).
-export(['validate-as-91016'/1]).
-export(['validate-as-91017'/1]).
-export(['cbcl-validateexpr-1'/1]).
-export(['cbcl-validateexpr-2'/1]).
-export(['cbcl-validateexpr-3'/1]).
-export(['cbcl-validateexpr-4'/1]).
-export(['cbcl-validateexpr-5'/1]).
-export(['cbcl-validateexpr-6'/1]).
-export(['cbcl-validateexpr-7'/1]).
-export(['cbcl-validateexpr-8'/1]).
-export(['cbcl-validateexpr-9'/1]).
-export(['cbcl-validateexpr-10'/1]).
-export(['cbcl-validateexpr-11'/1]).
-export(['cbcl-validateexpr-12'/1]).
-export(['cbcl-validateexpr-13'/1]).
-export(['cbcl-validateexpr-14'/1]).
-export(['cbcl-validateexpr-15'/1]).
-export(['cbcl-validateexpr-16'/1]).
-export(['cbcl-validateexpr-17'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'validateexpr-1',
   'validateexpr-2',
   'validateexpr-3',
   'validateexpr-4',
   'validateexpr-5',
   'validateexpr-6',
   'validateexpr-7',
   'validateexpr-8',
   'validateexpr-9',
   'validateexpr-10',
   'validateexpr-11',
   'validateexpr-12',
   'validateexpr-13',
   'validateexpr-14',
   'validateexpr-15',
   'validateexpr-16',
   'validateexpr-17',
   'validateexpr-18',
   'validateexpr-19',
   'validateexpr-20',
   'validateexpr-21',
   'validateexpr-23',
   'validateexpr-24',
   'validateexpr-25',
   'validateexpr-26',
   'validateexpr-27',
   'validateexpr-28',
   'validateexpr-29',
   'validateexpr-30',
   'validateexpr-31',
   'validateexpr-32',
   'validateexpr-33',
   'validateexpr-34',
   'validateexpr-35',
   'validateexpr-36',
   'validateexpr-37',
   'validateexpr-38',
   'validateexpr-39',
   'validateexpr-40',
   'validateexpr-41',
   'validateexpr-42',
   'K2-ValidateExpression-1',
   'validate-constraints-1',
   'validate-constraints-2',
   'validate-constraints-3',
   'validate-constraints-4',
   'validate-sc-1',
   'validateexpr-sc-2',
   'validateexpr-sc-4',
   'validateexpr-sc-5',
   'validateexpr-sc-6',
   'validateexpr-sc-7',
   'validateexpr-sc-8',
   'validateexpr-sc-9',
   'validate-as-101',
   'validate-as-102',
   'validate-as-103',
   'validate-as-104',
   'validate-as-105',
   'validate-as-106',
   'validate-as-107',
   'validate-as-91011',
   'validate-as-91012',
   'validate-as-91013',
   'validate-as-91014',
   'validate-as-91015',
   'validate-as-91016',
   'validate-as-91017',
   'cbcl-validateexpr-1',
   'cbcl-validateexpr-2',
   'cbcl-validateexpr-3',
   'cbcl-validateexpr-4',
   'cbcl-validateexpr-5',
   'cbcl-validateexpr-6',
   'cbcl-validateexpr-7',
   'cbcl-validateexpr-8',
   'cbcl-validateexpr-9',
   'cbcl-validateexpr-10',
   'cbcl-validateexpr-11',
   'cbcl-validateexpr-12',
   'cbcl-validateexpr-13',
   'cbcl-validateexpr-14',
   'cbcl-validateexpr-15',
   'cbcl-validateexpr-16',
   'cbcl-validateexpr-17'].
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
];
environment('orderData') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xquery-3.1/QT3-test-suite/prod/OrderByClause/orderData.xml",".",""}]},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/prod/OrderByClause/orderData.xsd","http://www.w3.org/XQueryTestOrderBy"}]},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/prod/ValidateExpr.xml"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('ListUnionTypes') ->
[{'decimal-formats', []},
{sources, []},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/prod/ValidateExpr/listunion.xsd","http://www.w3.org/XQueryTest/ListUnionTypes"}]},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/prod/ValidateExpr.xml"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('simplexsd') ->
[{'decimal-formats', []},
{sources, []},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/prod/ValidateExpr/simple.xsd","http://www.w3.org/XQueryTest/simple"}]},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/prod/ValidateExpr.xml"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('xq-e18xsd') ->
[{'decimal-formats', []},
{sources, []},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/prod/ValidateExpr/xq-e18.xsd","http://www.example.com/ns/test/xq-e18"}]},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/prod/ValidateExpr.xml"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('constraints') ->
[{'decimal-formats', []},
{sources, []},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/prod/ValidateExpr/constraints.xsd","http://www.w3.org/constraints"}]},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/prod/ValidateExpr.xml"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('complexSimple') ->
[{'decimal-formats', []},
{sources, []},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/prod/ValidateExpr/simpleContent.xsd","http://www.w3.org/query-test/complexSimple"}]},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/prod/ValidateExpr.xml"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('hats') ->
[{'decimal-formats', []},
{sources, []},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/prod/SchemaImport/hats.xsd","http://www.w3.org/XQueryTest/hats"}]},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/prod/ValidateExpr.xml"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('complexData') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xquery-3.1/QT3-test-suite/fn/data/complexData.xml",".",""}]},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/fn/data/complexData.xsd","http://www.cbcl.co.uk/XQueryTest/complexData"}]},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/prod/ValidateExpr.xml"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('validate') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xquery-3.1/QT3-test-suite/fn/nilled/validate.xml",".",""}]},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/fn/nilled/validate.xsd","http://www.w3.org/XQueryTest/testcases"}]},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/prod/ValidateExpr.xml"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('user-defined-types') ->
[{'decimal-formats', []},
{sources, []},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/userdefined.xsd","http://www.w3.org/XQueryTest/userDefinedTypes"}]},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/prod/ValidateExpr.xml"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('abstract') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xquery-3.1/QT3-test-suite/prod/ValidateExpr/AbstractType/obj.xml",".",""}]},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/prod/ValidateExpr/AbstractType/schema.xsd","http://myns"}]},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/prod/ValidateExpr.xml"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'validateexpr-1'(_Config) ->
   {skip,"Validation Environment"}.
'validateexpr-2'(_Config) ->
   {skip,"Validation Environment"}.
'validateexpr-3'(_Config) ->
   {skip,"Validation Environment"}.
'validateexpr-4'(_Config) ->
   {skip,"Validation Environment"}.
'validateexpr-5'(_Config) ->
   {skip,"Validation Environment"}.
'validateexpr-6'(_Config) ->
   {skip,"Validation Environment"}.
'validateexpr-7'(_Config) ->
   {skip,"Validation Environment"}.
'validateexpr-8'(_Config) ->
   {skip,"Validation Environment"}.
'validateexpr-9'(_Config) ->
   {skip,"Validation Environment"}.
'validateexpr-10'(_Config) ->
   {skip,"Validation Environment"}.
'validateexpr-11'(_Config) ->
   {skip,"Validation Environment"}.
'validateexpr-12'(_Config) ->
   {skip,"Validation Environment"}.
'validateexpr-13'(_Config) ->
   {skip,"Validation Environment"}.
'validateexpr-14'(_Config) ->
   {skip,"Validation Environment"}.
'validateexpr-15'(_Config) ->
   {skip,"Validation Environment"}.
'validateexpr-16'(_Config) ->
   {skip,"Validation Environment"}.
'validateexpr-17'(_Config) ->
   {skip,"Validation Environment"}.
'validateexpr-18'(_Config) ->
   {skip,"Validation Environment"}.
'validateexpr-19'(_Config) ->
   {skip,"Validation Environment"}.
'validateexpr-20'(_Config) ->
   {skip,"Validation Environment"}.
'validateexpr-21'(_Config) ->
   {skip,"Validation Environment"}.
'validateexpr-23'(_Config) ->
   {skip,"Validation Environment"}.
'validateexpr-24'(_Config) ->
   {skip,"schemaValidation"}.
'validateexpr-25'(_Config) ->
   {skip,"schemaValidation"}.
'validateexpr-26'(_Config) ->
   {skip,"schemaValidation"}.
'validateexpr-27'(_Config) ->
   {skip,"Validation Environment"}.
'validateexpr-28'(_Config) ->
   {skip,"schemaValidation"}.
'validateexpr-29'(_Config) ->
   {skip,"Validation Environment"}.
'validateexpr-30'(_Config) ->
   {skip,"Validation Environment"}.
'validateexpr-31'(_Config) ->
   {skip,"Validation Environment"}.
'validateexpr-32'(_Config) ->
   {skip,"Validation Environment"}.
'validateexpr-33'(_Config) ->
   {skip,"Validation Environment"}.
'validateexpr-34'(_Config) ->
   {skip,"schemaValidation"}.
'validateexpr-35'(_Config) ->
   {skip,"schemaValidation"}.
'validateexpr-36'(_Config) ->
   {skip,"schemaValidation"}.
'validateexpr-37'(_Config) ->
   {skip,"schemaValidation"}.
'validateexpr-38'(_Config) ->
   {skip,"schemaValidation"}.
'validateexpr-39'(_Config) ->
   {skip,"schemaValidation"}.
'validateexpr-40'(_Config) ->
   {skip,"schemaValidation"}.
'validateexpr-41'(_Config) ->
   {skip,"schemaValidation"}.
'validateexpr-42'(_Config) ->
   {skip,"schemaValidation"}.
'K2-ValidateExpression-1'(_Config) ->
   {skip,"schemaValidation"}.
'validate-constraints-1'(_Config) ->
   {skip,"schemaValidation"}.
'validate-constraints-2'(_Config) ->
   {skip,"schemaValidation"}.
'validate-constraints-3'(_Config) ->
   {skip,"schemaValidation"}.
'validate-constraints-4'(_Config) ->
   {skip,"schemaValidation"}.
'validate-sc-1'(_Config) ->
   {skip,"schemaValidation"}.
'validateexpr-sc-2'(_Config) ->
   {skip,"schemaValidation"}.
'validateexpr-sc-4'(_Config) ->
   {skip,"schemaValidation"}.
'validateexpr-sc-5'(_Config) ->
   {skip,"schemaValidation"}.
'validateexpr-sc-6'(_Config) ->
   {skip,"schemaValidation"}.
'validateexpr-sc-7'(_Config) ->
   {skip,"schemaValidation"}.
'validateexpr-sc-8'(_Config) ->
   {skip,"schemaValidation"}.
'validateexpr-sc-9'(_Config) ->
   {skip,"schemaValidation"}.
'validate-as-101'(_Config) ->
   {skip,"schemaValidation"}.
'validate-as-102'(_Config) ->
   {skip,"schemaValidation"}.
'validate-as-103'(_Config) ->
   {skip,"schemaValidation"}.
'validate-as-104'(_Config) ->
   {skip,"schemaValidation"}.
'validate-as-105'(_Config) ->
   {skip,"schemaValidation"}.
'validate-as-106'(_Config) ->
   {skip,"schemaValidation"}.
'validate-as-107'(_Config) ->
   {skip,"Validation Environment"}.
'validate-as-91011'(_Config) ->
   {skip,"schemaValidation"}.
'validate-as-91012'(_Config) ->
   {skip,"schemaValidation"}.
'validate-as-91013'(_Config) ->
   {skip,"schemaValidation"}.
'validate-as-91014'(_Config) ->
   {skip,"schemaValidation"}.
'validate-as-91015'(_Config) ->
   {skip,"schemaValidation"}.
'validate-as-91016'(_Config) ->
   {skip,"schemaValidation"}.
'validate-as-91017'(_Config) ->
   {skip,"schemaValidation"}.
'cbcl-validateexpr-1'(_Config) ->
   {skip,"Validation Environment"}.
'cbcl-validateexpr-2'(_Config) ->
   {skip,"Validation Environment"}.
'cbcl-validateexpr-3'(_Config) ->
   {skip,"Validation Environment"}.
'cbcl-validateexpr-4'(_Config) ->
   {skip,"Validation Environment"}.
'cbcl-validateexpr-5'(_Config) ->
   {skip,"Validation Environment"}.
'cbcl-validateexpr-6'(_Config) ->
   {skip,"Validation Environment"}.
'cbcl-validateexpr-7'(_Config) ->
   {skip,"Validation Environment"}.
'cbcl-validateexpr-8'(_Config) ->
   {skip,"Validation Environment"}.
'cbcl-validateexpr-9'(_Config) ->
   {skip,"Validation Environment"}.
'cbcl-validateexpr-10'(_Config) ->
   {skip,"Validation Environment"}.
'cbcl-validateexpr-11'(_Config) ->
   {skip,"schemaValidation"}.
'cbcl-validateexpr-12'(_Config) ->
   {skip,"schemaValidation"}.
'cbcl-validateexpr-13'(_Config) ->
   {skip,"schemaValidation"}.
'cbcl-validateexpr-14'(_Config) ->
   {skip,"Validation Environment"}.
'cbcl-validateexpr-15'(_Config) ->
   {skip,"Validation Environment"}.
'cbcl-validateexpr-16'(_Config) ->
   {skip,"Validation Environment"}.
'cbcl-validateexpr-17'(_Config) ->
   {skip,"Validation Environment"}.
