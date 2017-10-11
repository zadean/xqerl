-module('prod_ModuleImport_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['K2-ModuleProlog-1'/1]).
-export(['modules-simple'/1]).
-export(['modules-bad-ns'/1]).
-export(['module-URIs-1'/1]).
-export(['module-URIs-2'/1]).
-export(['module-URIs-3'/1]).
-export(['module-URIs-4'/1]).
-export(['module-URIs-7'/1]).
-export(['module-URIs-8'/1]).
-export(['module-URIs-9'/1]).
-export(['module-URIs-10'/1]).
-export(['module-URIs-11'/1]).
-export(['module-URIs-12'/1]).
-export(['module-URIs-13'/1]).
-export(['module-URIs-14'/1]).
-export(['module-URIs-15'/1]).
-export(['module-URIs-16'/1]).
-export(['module-URIs-17'/1]).
-export(['module-URIs-18'/1]).
-export(['module-URIs-19'/1]).
-export(['module-URIs-20'/1]).
-export(['module-URIs-21'/1]).
-export(['module-URIs-22'/1]).
-export(['module-URIs-23'/1]).
-export(['module-URIs-24'/1]).
-export(['module-URIs-25'/1]).
-export(['modules-none'/1]).
-export(['modules-two-import'/1]).
-export(['modules-two-import-ok'/1]).
-export(['modules-collide-var-001'/1]).
-export(['modules-collide-var-002'/1]).
-export(['modules-collide-fn-001'/1]).
-export(['modules-collide-fn-002'/1]).
-export(['modules-emptyns'/1]).
-export(['modules-circular'/1]).
-export(['modules-1'/1]).
-export(['modules-2'/1]).
-export(['modules-3'/1]).
-export(['modules-4'/1]).
-export(['modules-5'/1]).
-export(['modules-6'/1]).
-export(['modules-7'/1]).
-export(['modules-8'/1]).
-export(['modules-9'/1]).
-export(['modules-10'/1]).
-export(['modules-11'/1]).
-export(['modules-12'/1]).
-export(['modules-13'/1]).
-export(['modules-14'/1]).
-export(['modules-15'/1]).
-export(['modules-16'/1]).
-export(['modules-17'/1]).
-export(['modules-18'/1]).
-export(['modules-19'/1]).
-export(['modules-20'/1]).
-export(['modules-21'/1]).
-export(['modules-22'/1]).
-export(['modules-23'/1]).
-export(['modules-24'/1]).
-export(['modules-25'/1]).
-export(['modules-26'/1]).
-export(['modules-27'/1]).
-export(['modules-28'/1]).
-export(['modules-28a'/1]).
-export(['modules-29'/1]).
-export(['K-ModuleImport-1'/1]).
-export(['K-ModuleImport-2'/1]).
-export(['K-ModuleImport-3'/1]).
-export(['K2-ModuleImport-1'/1]).
-export(['errata6-001'/1]).
-export(['errata6-002'/1]).
-export(['errata6-003'/1]).
-export(['errata6-004'/1]).
-export(['errata6-005'/1]).
-export(['errata6-006'/1]).
-export(['errata6-007'/1]).
-export(['errata8-001'/1]).
-export(['errata8-001a'/1]).
-export(['errata8-002'/1]).
-export(['errata8-002a'/1]).
-export(['errata8-003'/1]).
-export(['modules-pub-priv-1'/1]).
-export(['modules-pub-priv-2'/1]).
-export(['modules-pub-priv-3'/1]).
-export(['modules-pub-priv-4'/1]).
-export(['modules-pub-priv-5'/1]).
-export(['modules-pub-priv-6'/1]).
-export(['modules-pub-priv-7'/1]).
-export(['modules-pub-priv-8'/1]).
-export(['modules-pub-priv-9'/1]).
-export(['modules-pub-priv-10'/1]).
-export(['modules-pub-priv-11'/1]).
-export(['modules-pub-priv-12'/1]).
-export(['modules-pub-priv-13'/1]).
-export(['modules-pub-priv-14'/1]).
-export(['modules-pub-priv-15'/1]).
-export(['modules-pub-priv-16'/1]).
-export(['modules-pub-priv-17'/1]).
-export(['modules-pub-priv-18'/1]).
-export(['modules-pub-priv-19'/1]).
-export(['modules-pub-priv-20'/1]).
-export(['modules-pub-priv-21'/1]).
-export(['modules-pub-priv-22'/1]).
-export(['modules-pub-priv-23'/1]).
-export(['modules-pub-priv-24'/1]).
-export(['modules-pub-priv-25'/1]).
-export(['modules-pub-priv-26'/1]).
-export(['modules-pub-priv-27'/1]).
-export(['modules-pub-priv-28'/1]).
-export(['modules-pub-priv-29'/1]).
-export(['modules-pub-priv-30'/1]).
-export(['modules-pub-priv-31'/1]).
-export(['modules-pub-priv-32'/1]).
-export(['modules-pub-priv-33'/1]).
-export(['modules-pub-priv-34'/1]).
-export(['modules-pub-priv-35'/1]).
-export(['modules-pub-priv-36'/1]).
-export(['modules-pub-priv-37'/1]).
-export(['modules-pub-priv-38'/1]).
-export(['cbcl-module-001'/1]).
-export(['cbcl-module-002'/1]).
-export(['cbcl-module-003'/1]).
-export(['cbcl-module-004'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/prod/ModuleImport/test1-lib.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/prod/ModuleImport/module-uris1-lib.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/prod/ModuleImport/module-uris2-lib.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/prod/ModuleImport/module-urisi1-lib.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/prod/ModuleImport/module-uris3-lib.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/prod/ModuleImport/module-uris4-lib.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/prod/ModuleImport/module-uris5-lib.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/prod/ModuleImport/module-uris6-lib.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/prod/ModuleImport/module-uris7-lib.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/prod/ModuleImport/module-uris8-lib.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/prod/ModuleImport/module-uris9-lib.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/prod/ModuleImport/module-uris10-lib.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/prod/ModuleImport/module-uris11-lib.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/prod/ModuleImport/module-uris12-lib.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/prod/ModuleImport/module-uris13-lib.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/prod/ModuleImport/module-uris14-lib.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/prod/ModuleImport/module-uris15-lib.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/prod/ModuleImport/module-uris16-lib.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/prod/ModuleImport/module-uris17-lib.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/prod/ModuleImport/module-uris18-lib.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/prod/ModuleImport/module-uris19-lib.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/prod/ModuleImport/module-uris20-lib.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/prod/ModuleImport/module-uris21-lib.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/prod/ModuleImport/empty-lib.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/prod/ModuleImport/test1collide1-lib.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/prod/ModuleImport/test1collide2-lib.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/prod/ModuleImport/emptyns-lib.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/prod/ModuleImport/test1c1-lib.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/prod/ModuleImport/test2c1-lib.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/prod/ModuleImport/moduleDefs-lib.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/prod/ModuleImport/test2-lib.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/prod/ModuleImport/modulesdiffns-lib.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/prod/ModuleImport/module1-lib.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/prod/ModuleImport/module2-lib.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/prod/ModuleImport/module3-lib.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/prod/ModuleImport/module4-lib.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/prod/ModuleImport/modules-recursive1.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/prod/ModuleImport/modules-recursive2.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/prod/ModuleImport/errata6-module1.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/prod/ModuleImport/errata6-module2.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/prod/ModuleImport/errata6-module4.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/prod/ModuleImport/errata6-module5.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/prod/ModuleImport/errata6-module6.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/prod/ModuleImport/errata6-module7.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/prod/ModuleImport/errata8-module1a.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/prod/ModuleImport/errata8-module1b.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/prod/ModuleImport/errata8-module2a.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/prod/ModuleImport/errata8-module2b.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/prod/ModuleImport/errata8-module3a.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/prod/ModuleImport/errata8-module3b.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/prod/ModuleImport/module-pub-priv.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/prod/ModuleImport/module-pub-priv3.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/prod/ModuleImport/module-pub-priv2.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/prod/ModuleImport/schemalib.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/prod/ModuleImport/baseuri-lib.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/prod/ModuleImport/variabledeclaration-lib.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/prod/ModuleImport/variablereference-lib.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/prod/ModuleImport/contextitem-lib.xq") catch _:_ -> ok end,Config.
all() -> [
   'K2-ModuleProlog-1',
   'modules-simple',
   'modules-bad-ns',
   'module-URIs-1',
   'module-URIs-2',
   'module-URIs-3',
   'module-URIs-4',
   'module-URIs-7',
   'module-URIs-8',
   'module-URIs-9',
   'module-URIs-10',
   'module-URIs-11',
   'module-URIs-12',
   'module-URIs-13',
   'module-URIs-14',
   'module-URIs-15',
   'module-URIs-16',
   'module-URIs-17',
   'module-URIs-18',
   'module-URIs-19',
   'module-URIs-20',
   'module-URIs-21',
   'module-URIs-22',
   'module-URIs-23',
   'module-URIs-24',
   'module-URIs-25',
   'modules-none',
   'modules-two-import',
   'modules-two-import-ok',
   'modules-collide-var-001',
   'modules-collide-var-002',
   'modules-collide-fn-001',
   'modules-collide-fn-002',
   'modules-emptyns',
   'modules-circular',
   'modules-1',
   'modules-2',
   'modules-3',
   'modules-4',
   'modules-5',
   'modules-6',
   'modules-7',
   'modules-8',
   'modules-9',
   'modules-10',
   'modules-11',
   'modules-12',
   'modules-13',
   'modules-14',
   'modules-15',
   'modules-16',
   'modules-17',
   'modules-18',
   'modules-19',
   'modules-20',
   'modules-21',
   'modules-22',
   'modules-23',
   'modules-24',
   'modules-25',
   'modules-26',
   'modules-27',
   'modules-28',
   'modules-28a',
   'modules-29',
   'K-ModuleImport-1',
   'K-ModuleImport-2',
   'K-ModuleImport-3',
   'K2-ModuleImport-1',
   'errata6-001',
   'errata6-002',
   'errata6-003',
   'errata6-004',
   'errata6-005',
   'errata6-006',
   'errata6-007',
   'errata8-001',
   'errata8-001a',
   'errata8-002',
   'errata8-002a',
   'errata8-003',
   'modules-pub-priv-1',
   'modules-pub-priv-2',
   'modules-pub-priv-3',
   'modules-pub-priv-4',
   'modules-pub-priv-5',
   'modules-pub-priv-6',
   'modules-pub-priv-7',
   'modules-pub-priv-8',
   'modules-pub-priv-9',
   'modules-pub-priv-10',
   'modules-pub-priv-11',
   'modules-pub-priv-12',
   'modules-pub-priv-13',
   'modules-pub-priv-14',
   'modules-pub-priv-15',
   'modules-pub-priv-16',
   'modules-pub-priv-17',
   'modules-pub-priv-18',
   'modules-pub-priv-19',
   'modules-pub-priv-20',
   'modules-pub-priv-21',
   'modules-pub-priv-22',
   'modules-pub-priv-23',
   'modules-pub-priv-24',
   'modules-pub-priv-25',
   'modules-pub-priv-26',
   'modules-pub-priv-27',
   'modules-pub-priv-28',
   'modules-pub-priv-29',
   'modules-pub-priv-30',
   'modules-pub-priv-31',
   'modules-pub-priv-32',
   'modules-pub-priv-33',
   'modules-pub-priv-34',
   'modules-pub-priv-35',
   'modules-pub-priv-36',
   'modules-pub-priv-37',
   'modules-pub-priv-38',
   'cbcl-module-001',
   'cbcl-module-002',
   'cbcl-module-003',
   'cbcl-module-004'].
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
];
environment('simple-schema') ->
[{sources, []},
{schemas, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/prod/ModuleImport/simple.xsd","http://www.w3.org/XQueryTest/simple"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('attribute-schema') ->
[{sources, []},
{schemas, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/prod/ModuleImport/attribute.xsd","http://www.w3.org/XQueryTest/sample"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('complexData') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/fn/data/complexData.xml",".",""}]},
{schemas, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/fn/data/complexData.xsd","http://www.cbcl.co.uk/XQueryTest/complexData"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('user-defined-types') ->
[{sources, []},
{schemas, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/userdefined.xsd","http://www.w3.org/XQueryTest/userDefinedTypes"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'K2-ModuleProlog-1'(_Config) ->
   Qry = "module namespace example = \"http://example.com/\"; \"an expression\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-simple'(_Config) ->
   Qry = "
        import module namespace test1=\"http://www.w3.org/TestModules/test1\"; 
        <result>{test1:ok()}</result>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-bad-ns'(_Config) ->
   Qry = "
        import module namespace test2=\"http://www.w3.org/TestModules/test2\";
        <result>{test2:ok()}</result>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0059") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'module-URIs-1'(_Config) ->
   Qry = "
        import module namespace test=\"  http://www.w3.org/TestModules/test \";
        <result>{test:ok()}</result>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'module-URIs-2'(_Config) ->
   Qry = "
        import module namespace test=\"&#x20;&#x9;&#xA;&#xD;http://www.w3.org/TestModules/test&#x20;&#x9;&#xA;&#xD;\";
        <result>{test:ok()}</result>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'module-URIs-3'(_Config) ->
   Qry = "
        import module namespace test=\"http://www.w3.org/Test&#x20;&#x20;&#x20;&#x20;Modules/test\";
        <result>{test:ok()}</result>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'module-URIs-4'(_Config) ->
   Qry = "
        import module namespace test=\"http://www.w3.org/TestModules/test/../../TestModules/./test\";
        <result>{test:ok()}</result>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0059") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'module-URIs-7'(_Config) ->
   Qry = "
        import module namespace test=\"http://www.w3.org/TestModules./test\";
        <result>{test:ok()}</result>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'module-URIs-8'(_Config) ->
   Qry = "
        import module namespace test=\"http://www.w3.org/.TestModules/test\";
        <result>{test:ok()}</result>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'module-URIs-9'(_Config) ->
   Qry = "
        import module namespace test=\"http://www.w3.org/TestModules../test\";
        <result>{test:ok()}</result>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'module-URIs-10'(_Config) ->
   Qry = "
        import module namespace test=\"http://www.w3.org/..TestModules/test\";
        <result>{test:ok()}</result>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'module-URIs-11'(_Config) ->
   Qry = "
        import module namespace test=\"http://www.w3.org/TestModules/&#xd0a4;/test\";
        <result>{test:ok()}</result>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'module-URIs-12'(_Config) ->
   Qry = "
        import module namespace test=\"http://www.w3.org/TestModules/&#x3c;&#x3d;&#x3e;&#x40;/test\";
        <result>{test:ok()}</result>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'module-URIs-13'(_Config) ->
   Qry = "
        import module namespace test=\"urn:example:animal:ferret:nose\";
        <result>{test:ok()}</result>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'module-URIs-14'(_Config) ->
   Qry = "
        import module namespace test=\"ftp://www.w3.org/TestModules/test;type=A\";
        <result>{test:ok()}</result>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'module-URIs-15'(_Config) ->
   Qry = "
        import module namespace test=\"http://www.w3.org/TestModules/test?hello=world\";
        <result>{test:ok()}</result>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'module-URIs-16'(_Config) ->
   Qry = "
        import module namespace test=\"http://www.w3.org/TestModules/test#world\";
        <result>{test:ok()}</result>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'module-URIs-17'(_Config) ->
   Qry = "
        import module namespace test=\"ftp://www.w3.org/TestModules/test;type=A?hello=world&amp;q#world\";
        <result>{test:ok()}</result>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'module-URIs-18'(_Config) ->
   Qry = "
        import module namespace test=\"#1\";
        <result>{test:ok()}</result>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'module-URIs-19'(_Config) ->
   Qry = "
        import module namespace test=\"http:test\";
        <result>{test:ok()}</result>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'module-URIs-20'(_Config) ->
   Qry = "
        import module namespace test=\"ftp://user@www.w3.org/TestModules/test\";
        <result>{test:ok()}</result>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'module-URIs-21'(_Config) ->
   Qry = "
        import module namespace test=\"http://[2001:0db8:85a3:0000:0000:8a2e:0370:7334]/TestModules/test\";
        <result>{test:ok()}</result>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'module-URIs-22'(_Config) ->
   Qry = "
        import module namespace test=\"http://www.w3.org:7334/TestModules/test\";
        <result>{test:ok()}</result>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'module-URIs-23'(_Config) ->
   Qry = "
        import module namespace test=\"mailto:jane.doe@w3c.org\";
        <result>{test:ok()}</result>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'module-URIs-24'(_Config) ->
   Qry = "
        import module namespace test=\"fax:+1-234-567-890\";
        <result>{test:ok()}</result>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'module-URIs-25'(_Config) ->
   Qry = "
        import module namespace test=\"ldap://[2001:db8::7]/c=GB?objectClass?one\";
        <result>{test:ok()}</result>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-none'(_Config) ->
   Qry = "
        import module namespace none=\"http://www.w3.org/TestModules/none\" at \"empty-lib.xq\"; 
        \"abc\"
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0059") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-two-import'(_Config) ->
   Qry = "
        import module namespace test1=\"http://www.w3.org/TestModules/test1\"; 
        import module namespace test2=\"http://www.w3.org/TestModules/test1\"; 
        <result>{test1:ok()}</result>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0047") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-two-import-ok'(_Config) ->
   Qry = "
        import module namespace test1=\"http://www.w3.org/TestModules/test1\"; 
        <result>{test1:ok()}</result>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-collide-var-001'(_Config) ->
   Qry = "
        import module namespace test1=\"http://www.w3.org/TestModules/test1\"; 
        <result>{test1:ok()}</result>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0049") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-collide-var-002'(_Config) ->
   Qry = "
        import module namespace test1=\"http://www.w3.org/TestModules/test1\"; 
        declare variable $test1:flag := 1; 
        <result>{test1:ok()}</result>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0049") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-collide-fn-001'(_Config) ->
   Qry = "
        import module namespace test1=\"http://www.w3.org/TestModules/test1\"; 
        <result>{test1:ok()}</result>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0034") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-collide-fn-002'(_Config) ->
   Qry = "
        import module namespace test1=\"http://www.w3.org/TestModules/test1\"; 
        declare function test1:ok () { \"ok\" }; 
        <result>{test1:ok()}</result>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0034") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-emptyns'(_Config) ->
   Qry = "
        import module namespace test1= \"\"; 
        <result>ok</result>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0088") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-circular'(_Config) ->
   Qry = "
        import module namespace test1=\"http://www.w3.org/TestModules/test1\"; 
        <result>{test1:ok()}</result>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "ok") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-1'(_Config) ->
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/defs\"; 
        <foo:anElement>some Content</foo:anElement>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0081") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-2'(_Config) ->
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/defs\"; 
        declare namespace foo = \"http://example.org\"; 
        <foo:anElement>some Content</foo:anElement>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<foo:anElement xmlns:foo=\"http://example.org\">some Content</foo:anElement>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-3'(_Config) ->
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/defs\"; 
        let $var := $test1:flag + 1 return $var
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0081") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-4'(_Config) ->
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/defs\"; 
        let $var := $defs:var1+ 1 return $var
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-5'(_Config) ->
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/defs\"; 
        let $var := $defs:var2 + 1 return $var
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"4") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-6'(_Config) ->
   Qry = "
        import module namespace test1=\"http://www.w3.org/TestModules/test1\"; 
        declare namespace foo = \"http://example.org\"; 
        declare variable $foo:flag := 3; 
        let $var := $test1:flag + $foo:flag 
        return $var",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"4") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-7'(_Config) ->
   Qry = "
        import module namespace test1=\"http://www.w3.org/TestModules/test1\"; 
        let $var := fn:concat(xs:string($test1:flag),xs:string(test1:ok())) 
        return $var",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1ok") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-8'(_Config) ->
   Qry = "
        import module namespace test1=\"http://www.w3.org/TestModules/test1\"; 
        declare namespace foo = \"http://example.org\"; 
        declare function foo:ok () { \"ok\" }; 
        let $var := fn:concat(test1:ok(),foo:ok()) 
        return $var",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "okok") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-9'(_Config) ->
   Qry = "
        import module namespace test1=\"http://www.w3.org/TestModules/test1\"; 
        fn:upper-case(test1:ok())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "OK") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-10'(_Config) ->
   Qry = "
        import module namespace test1=\"http://www.w3.org/TestModules/test1\"; 
        fn:lower-case(test1:ok())
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "ok") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-11'(_Config) ->
   Qry = "
        import module namespace test1=\"http://www.w3.org/TestModules/test1\"; 
        fn:string-length(test1:ok())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-12'(_Config) ->
   Qry = "
        import module namespace test1=\"http://www.w3.org/TestModules/test1\";
        $test1:flag + $test1:flag
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-13'(_Config) ->
   Qry = "
        import module namespace test1=\"http://www.w3.org/TestModules/test1\"; 
        $test1:flag - $test1:flag
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-14'(_Config) ->
   Qry = "
        import module namespace test1=\"http://www.w3.org/TestModules/test1\"; 
        xs:integer($test1:flag)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-15'(_Config) ->
   Qry = "
        import module namespace test2=\"http://www.w3.org/TestModules/test2\"; 
        \"aaa\"
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0088") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-16'(_Config) ->
   Qry = "
        import module namespace xml=\"http://www.w3.org/TestModules/test1\"; 
        xs:string($xml:flag)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0070") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-17'(_Config) ->
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/diffns\"; 
        \"abc\"
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0048") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-18'(_Config) ->
   Qry = "
        import module namespace mod1=\"http://www.w3.org/TestModules/module1\"; 
        import module namespace mod2=\"http://www.w3.org/TestModules/module2\"; 
        mod1:x(),mod2:y()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "x y x y") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-19'(_Config) ->
   {skip,"schemaImport"}.
'modules-20'(_Config) ->
   {skip,"schemaImport"}.
'modules-21'(_Config) ->
   {skip,"schemaImport"}.
'modules-22'(_Config) ->
   {skip,"schemaImport"}.
'modules-23'(_Config) ->
   {skip,"schemaImport"}.
'modules-24'(_Config) ->
   {skip,"schemaImport"}.
'modules-25'(_Config) ->
   {skip,"schemaImport"}.
'modules-26'(_Config) ->
   {skip,"schemaImport"}.
'modules-27'(_Config) ->
   {skip,"schemaImport"}.
'modules-28'(_Config) ->
   {skip,"XQ10"}.
'modules-28a'(_Config) ->
   Qry = "
        import module namespace defs1 = \"http://www.w3.org/TestModules/defs1\"; 
        $defs1:var
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0054") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-29'(_Config) ->
   Qry = "
        import module namespace xmlns=\"http://www.w3.org/TestModules/test\"; 
        xmlns:ok ()
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0070") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ModuleImport-1'(_Config) ->
   Qry = "import(::)module \"\"; 1 eq 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0088") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ModuleImport-2'(_Config) ->
   Qry = "import(::)module \"\" at \"http://example.com/\", \"http://example.com/2\"; 1 eq 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0088") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ModuleImport-3'(_Config) ->
   Qry = "import module namespace NCName := \"http://example.com/Dummy\"; 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-ModuleImport-1'(_Config) ->
   Qry = "import ne import",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'errata6-001'(_Config) ->
   {skip,"schemaImport"}.
'errata6-002'(_Config) ->
   {skip,"schemaImport"}.
'errata6-003'(_Config) ->
   {skip,"schemaImport"}.
'errata6-004'(_Config) ->
   {skip,"schemaImport"}.
'errata6-005'(_Config) ->
   {skip,"schemaImport"}.
'errata6-006'(_Config) ->
   {skip,"schemaImport"}.
'errata6-007'(_Config) ->
   {skip,"schemaImport"}.
'errata8-001'(_Config) ->
   {skip,"XQ10"}.
'errata8-001a'(_Config) ->
   Qry = "
        import module namespace errata8_1a=\"http://www.w3.org/TestModules/errata8_1a\"; 
        errata8_1a:fun()
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0054") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'errata8-002'(_Config) ->
   {skip,"XQ10"}.
'errata8-002a'(_Config) ->
   Qry = "
        import module namespace errata8_2a=\"http://www.w3.org/TestModules/errata8_2a\"; 
        errata8_2a:fun()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"10") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'errata8-003'(_Config) ->
   Qry = "
        import module namespace errata8_3a=\"http://www.w3.org/TestModules/errata8_3a\"; 
        errata8_3a:fun()
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"10") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-1'(_Config) ->
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/module-pub-priv\"; 
        <a>{defs:g(42)}</a>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>65</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-2'(_Config) ->
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/module-pub-priv\"; 
        defs:f()
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-3'(_Config) ->
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/module-pub-priv\"; 
        <a>{defs:g($defs:one)}</a>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>24</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-4'(_Config) ->
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/module-pub-priv\"; 
        <a>{defs:g($defs:two)}</a>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-5'(_Config) ->
   Qry = "
        declare %public function local:inc($i as xs:integer) {
            $i + 1
        };
        <a>{local:inc(1)}</a>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>2</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-6'(_Config) ->
   Qry = "
        declare %private function local:inc($i as xs:integer) {
            $i + 1
        };
        <a>{local:inc(1)}</a>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>2</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-7'(_Config) ->
   Qry = "
        declare %public variable $i := 1;
        <a>{$i+1}</a>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>2</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-8'(_Config) ->
   Qry = "
        declare %private variable $i := 1;
        <a>{$i+1}</a>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>2</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-9'(_Config) ->
   Qry = "
        declare %public function local:inc($i as xs:integer) {
            $i + 1
        };
        
        declare function local:test() {
            local:inc(1)
        };
        <a>{local:test()}</a>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>2</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-10'(_Config) ->
   Qry = "
        declare %private function local:inc($i as xs:integer) {
            $i + 1
        };
        
        declare function local:test() {
            local:inc(1)
        };
        <a>{local:test()}</a>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>2</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-11'(_Config) ->
   Qry = "
        declare %public variable $i := 1;
        
        declare function local:test() {
            $i + 1
        };
        <a>{local:test()}</a>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>2</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-12'(_Config) ->
   Qry = "
        declare %private variable $i := 1;
        
        declare function local:test() {
           $i + 1
        };
        <a>{local:test()}</a>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>2</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-13'(_Config) ->
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/module-pub-priv\"; 
        declare function local:test() {
            defs:g(42)
        };
        <a>{local:test()}</a>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>65</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-14'(_Config) ->
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/module-pub-priv\"; 
        declare function local:test() {
            defs:f()
        };
        <a>{local:test()}</a>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-15'(_Config) ->
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/module-pub-priv\"; 
        declare function local:test() {
            $defs:one
        };
        <a>{local:test()}</a>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>1</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-16'(_Config) ->
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/module-pub-priv\"; 
        declare function local:test() {
            $defs:two
        };
        <a>{local:test()}</a>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-17'(_Config) ->
   Qry = "
        declare %public function local:inc($i as xs:integer) {
            $i + 1
        };
        
        declare variable $test := local:inc(1);

        <a>{$test}</a>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>2</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-18'(_Config) ->
   Qry = "
        declare %private function local:inc($i as xs:integer) {
            $i + 1
        };
        
        declare variable $test := local:inc(1);

        <a>{$test}</a>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>2</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-19'(_Config) ->
   Qry = "
        declare %public variable $i := 1;
        
	declare variable $test := $i + 1;

        <a>{$test}</a>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>2</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-20'(_Config) ->
   Qry = "
        declare %private variable $i := 1;
        
        declare variable $test := $i + 1;

        <a>{$test}</a>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>2</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-21'(_Config) ->
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/module-pub-priv\"; 

        declare variable $test := defs:g(42);

        <a>{$test}</a>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>65</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-22'(_Config) ->
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/module-pub-priv\"; 

        declare variable $test := defs:f();

        <a>{$test}</a>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-23'(_Config) ->
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/module-pub-priv\"; 

        declare variable $test := $defs:one;

        <a>{$test}</a>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>1</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-24'(_Config) ->
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/module-pub-priv\"; 

        declare variable $test := $defs:two;

        <a>{local:test()}</a>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-25'(_Config) ->
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/module-pub-priv\"; 

        <a>{defs:h(42)}</a>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>65</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-26'(_Config) ->
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/module-pub-priv\"; 

        <a>{$defs:ninety}</a>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>90</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-27'(_Config) ->
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/module-pub-priv3\"; 
        <a>{defs:f(42)}</a>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>65</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-28'(_Config) ->
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/module-pub-priv2\"; 
        <a>{defs:fails()}</a>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-29'(_Config) ->
   Qry = "
        declare %private %public function local:foo() { () };
        local:foo()
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0106") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-30'(_Config) ->
   Qry = "
        declare namespace xq=\"http://www.w3.org/2012/xquery\";
        declare %private %xq:public function local:foo() { () };
        local:foo()
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0106") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-31'(_Config) ->
   Qry = "
        declare %public %public function local:foo() { () };
        local:foo()
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0106") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-32'(_Config) ->
   Qry = "
        declare %private %private function local:foo() { () };
        local:foo()
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0106") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-33'(_Config) ->
   Qry = "
        declare %private %public variable $foo := ();
        $foo
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0116") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-34'(_Config) ->
   Qry = "
        declare namespace xq=\"http://www.w3.org/2012/xquery\";
        declare %private %xq:public variable $foo := ();
        $foo
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0116") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-35'(_Config) ->
   Qry = "
        declare %private %private variable $foo := ();
        $foo
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0116") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-36'(_Config) ->
   Qry = "
        declare %public %public variable $foo := ();
        $foo
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0116") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-37'(_Config) ->
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/module-pub-priv\"; 
        defs:f#0()
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-38'(_Config) ->
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/module-pub-priv\"; 
        <a>{defs:g#1(42)}</a>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>65</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-module-001'(_Config) ->
   {skip,"Validation Environment"}.
'cbcl-module-002'(_Config) ->
   Qry = "
      	import module namespace lib=\"http://www.xqsharp.com/test/baseuri-lib\"; 
      	declare base-uri \"http://www.example.org/wrong/\"; 
      	base-uri($lib:node/node())
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.org/correct/") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-module-003'(_Config) ->
   Qry = "
      	import module namespace foo=\"http://www.xqsharp.com/test/variabledeclaration\"; 
      	import module namespace bar=\"http://www.xqsharp.com/test/variablereference\"; 
      	bar:test()
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-module-004'(_Config) ->
   {skip,"Validation Environment"}.
