-module('prod_FLWORExpr_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['ForExprType010'/1]).
-export(['ForExprType025'/1]).
-export(['ForExprType026'/1]).
-export(['ForExprType027'/1]).
-export(['ForExprType037'/1]).
-export(['ForExprType038'/1]).
-export(['ForExprType039'/1]).
-export(['ForExprType040'/1]).
-export(['ForExprType041'/1]).
-export(['ForExprType042'/1]).
-export(['ForExprType043'/1]).
-export(['ForExprType044'/1]).
-export(['ForExprType048'/1]).
-export(['ForExprType049'/1]).
-export(['ForExprType050'/1]).
-export(['ForExprType051'/1]).
-export(['ForExprType052'/1]).
-export(['ForExprType053'/1]).
-export(['step-expr-si-1'/1]).
-export(['step-expr-si-2'/1]).
-export(['step-expr-si-3'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'ForExprType010',
   'ForExprType025',
   'ForExprType026',
   'ForExprType027',
   'ForExprType037',
   'ForExprType038',
   'ForExprType039',
   'ForExprType040',
   'ForExprType041',
   'ForExprType042',
   'ForExprType043',
   'ForExprType044',
   'ForExprType048',
   'ForExprType049',
   'ForExprType050',
   'ForExprType051',
   'ForExprType052',
   'ForExprType053',
   'step-expr-si-1',
   'step-expr-si-2',
   'step-expr-si-3'].
environment('empty') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('atomic') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{resources, []},
{modules, []}
];
environment('atomic-xq') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-mod') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/works-mod.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/works.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('staff') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/staff.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-and-staff') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/works.xml","$works",""},
{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/staff.xml","$staff",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('auction') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/auction.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
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
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/QName-source.xml",".",""}]},
{schemas, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/QName-schema.xsd","http://www.example.com/QNameXSD"}]},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
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
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
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
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
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
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
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
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"},
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('SpecialTypes') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/prod/ForClause/SpecialTypes.xml",".",""}]},
{schemas, [{"C:/git/zadean/xqerl/test/QT3-test-suite/prod/ForClause/SpecialTypes.xsd","http://www.example.com/typedecl"}]},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/prod/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('orderData') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/prod/OrderByClause/orderData.xml",".",""}]},
{schemas, [{"C:/git/zadean/xqerl/test/QT3-test-suite/prod/OrderByClause/orderData.xsd","http://www.w3.org/XQueryTestOrderBy"}]},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/prod/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('extendedTypes') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/prod/FLWORExpr/extendedTypes.xml",".",""}]},
{schemas, [{"C:/git/zadean/xqerl/test/QT3-test-suite/prod/FLWORExpr/extendedTypes.xsd","http://www.example.com/XQueryTest/extendedTypes"}]},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/prod/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'ForExprType010'(_Config) ->
   {skip,"Validation Environment"}.
'ForExprType025'(_Config) ->
   {skip,"Validation Environment"}.
'ForExprType026'(_Config) ->
   {skip,"Validation Environment"}.
'ForExprType027'(_Config) ->
   {skip,"Validation Environment"}.
'ForExprType037'(_Config) ->
   {skip,"Validation Environment"}.
'ForExprType038'(_Config) ->
   {skip,"Validation Environment"}.
'ForExprType039'(_Config) ->
   {skip,"Validation Environment"}.
'ForExprType040'(_Config) ->
   {skip,"Validation Environment"}.
'ForExprType041'(_Config) ->
   {skip,"Validation Environment"}.
'ForExprType042'(_Config) ->
   {skip,"Validation Environment"}.
'ForExprType043'(_Config) ->
   {skip,"Validation Environment"}.
'ForExprType044'(_Config) ->
   {skip,"Validation Environment"}.
'ForExprType048'(_Config) ->
   {skip,"Validation Environment"}.
'ForExprType049'(_Config) ->
   {skip,"Validation Environment"}.
'ForExprType050'(_Config) ->
   {skip,"Validation Environment"}.
'ForExprType051'(_Config) ->
   {skip,"Validation Environment"}.
'ForExprType052'(_Config) ->
   {skip,"Validation Environment"}.
'ForExprType053'(_Config) ->
   {skip,"Validation Environment"}.
'step-expr-si-1'(_Config) ->
   {skip,"Validation Environment"}.
'step-expr-si-2'(_Config) ->
   {skip,"Validation Environment"}.
'step-expr-si-3'(_Config) ->
   {skip,"Validation Environment"}.
