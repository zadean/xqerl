-module('prod_CastExpr_schema_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['qname-cast-1'/1]).
-export(['qname-cast-2'/1]).
-export(['qname-cast-3'/1]).
-export(['qname-cast-4'/1]).
-export(['notation-cast-2'/1]).
-export(['notation-cast-3'/1]).
-export(['casthcds1'/1]).
-export(['casthcds2'/1]).
-export(['casthcds3'/1]).
-export(['casthcds4'/1]).
-export(['casthcds5'/1]).
-export(['casthcds6'/1]).
-export(['casthcds7'/1]).
-export(['casthcds8'/1]).
-export(['casthcds9'/1]).
-export(['casthcds10'/1]).
-export(['casthcds11'/1]).
-export(['casthcds12'/1]).
-export(['casthcds13'/1]).
-export(['casthcds14'/1]).
-export(['casthcds15'/1]).
-export(['casthcds16'/1]).
-export(['casthcds17'/1]).
-export(['casthcds18'/1]).
-export(['casthcds19'/1]).
-export(['casthcds20'/1]).
-export(['casthcds21'/1]).
-export(['casthcds22'/1]).
-export(['casthcds23'/1]).
-export(['casthcds24'/1]).
-export(['casthcds25'/1]).
-export(['casthcds26'/1]).
-export(['casthcds27'/1]).
-export(['casthcds28'/1]).
-export(['casthcds29'/1]).
-export(['casthcds30'/1]).
-export(['casthcds31'/1]).
-export(['casthcds32'/1]).
-export(['casthcds33'/1]).
-export(['casthcds34'/1]).
-export(['casthcds35'/1]).
-export(['casthcds36'/1]).
-export(['casthcds37'/1]).
-export(['casthcds38'/1]).
-export(['casthcds39'/1]).
-export(['casthcds40'/1]).
-export(['casthcds41'/1]).
-export(['casthcds42'/1]).
-export(['user-defined-1'/1]).
-export(['user-defined-2'/1]).
-export(['user-defined-3'/1]).
-export(['user-defined-4'/1]).
-export(['user-defined-5'/1]).
-export(['user-defined-6'/1]).
-export(['user-defined-7'/1]).
-export(['user-defined-8'/1]).
-export(['user-defined-9'/1]).
-export(['user-defined-10'/1]).
-export(['CastAs-UnionType-1'/1]).
-export(['CastAs-UnionType-2'/1]).
-export(['CastAs-UnionType-3'/1]).
-export(['CastAs-UnionType-4'/1]).
-export(['CastAs-UnionType-5'/1]).
-export(['CastAs-UnionType-5a'/1]).
-export(['CastAs-UnionType-6'/1]).
-export(['CastAs-UnionType-7'/1]).
-export(['CastAs-UnionType-8'/1]).
-export(['CastAs-UnionType-9'/1]).
-export(['CastAs-UnionType-10'/1]).
-export(['CastAs-UnionType-11'/1]).
-export(['CastAs-UnionType-12'/1]).
-export(['CastAs-UnionType-13'/1]).
-export(['CastAs-UnionType-14'/1]).
-export(['CastAs-UnionType-15'/1]).
-export(['CastAs-UnionType-16'/1]).
-export(['CastAs-UnionType-17'/1]).
-export(['CastAs-UnionType-18'/1]).
-export(['CastAs-UnionType-19'/1]).
-export(['CastAs-UnionType-20'/1]).
-export(['CastAs-UnionType-21'/1]).
-export(['CastAs-UnionType-22'/1]).
-export(['CastAs-UnionType-23'/1]).
-export(['CastAs-UnionType-24'/1]).
-export(['CastAs-UnionType-25'/1]).
-export(['CastAs-UnionType-26'/1]).
-export(['CastAs-UnionType-27'/1]).
-export(['CastAs-UnionType-28'/1]).
-export(['CastAs-UnionType-29'/1]).
-export(['CastAs-UnionType-30'/1]).
-export(['CastAs-UnionType-31'/1]).
-export(['CastAs-UnionType-32'/1]).
-export(['CastAs-UnionType-33'/1]).
-export(['CastAs-UnionType-34'/1]).
-export(['CastAs-UnionType-35'/1]).
-export(['CastAs-UnionType-36'/1]).
-export(['CastAs-UnionType-37'/1]).
-export(['CastAs-UnionType-38'/1]).
-export(['CastAs-ListType-1'/1]).
-export(['CastAs-ListType-2'/1]).
-export(['CastAs-ListType-3'/1]).
-export(['CastAs-ListType-4'/1]).
-export(['CastAs-ListType-5'/1]).
-export(['CastAs-ListType-6'/1]).
-export(['CastAs-ListType-7'/1]).
-export(['CastAs-ListType-8'/1]).
-export(['CastAs-ListType-9'/1]).
-export(['CastAs-ListType-10'/1]).
-export(['CastAs-ListType-11'/1]).
-export(['CastAs-ListType-12'/1]).
-export(['CastAs-ListType-13'/1]).
-export(['CastAs-ListType-14'/1]).
-export(['CastAs-ListType-15'/1]).
-export(['CastAs-ListType-16'/1]).
-export(['CastAs-ListType-17'/1]).
-export(['CastAs-ListType-18'/1]).
-export(['CastAs-ListType-19'/1]).
-export(['CastAs-ListType-20'/1]).
-export(['CastAs-ListType-21'/1]).
-export(['CastAs-ListType-22'/1]).
-export(['CastAs-ListType-23'/1]).
-export(['CastAs-ListType-24'/1]).
-export(['CastAs-ListType-25'/1]).
-export(['CastAs-ListType-26'/1]).
-export(['CastAs-ListType-27'/1]).
-export(['CastAs-ListType-28'/1]).
-export(['CastAs-ListType-29'/1]).
-export(['CastAs-ListType-30'/1]).
-export(['CastAs-ListType-31'/1]).
-export(['CastAs-ListType-32'/1]).
suite() ->
[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> ct:timetrap({seconds,60}), xqerl_module:unload(all).
init_per_suite(Config) -> 
   ok = application:ensure_started(mnesia),
   ok = application:ensure_started(xqerl_ds),
   xqerl_module:one_time_init(), 
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   BaseDir = filename:join(TD, "prod")

,[{base_dir, BaseDir}|Config].
all() -> [
   'qname-cast-1',
   'qname-cast-2',
   'qname-cast-3',
   'qname-cast-4',
   'notation-cast-2',
   'notation-cast-3',
   'casthcds1',
   'casthcds2',
   'casthcds3',
   'casthcds4',
   'casthcds5',
   'casthcds6',
   'casthcds7',
   'casthcds8',
   'casthcds9',
   'casthcds10',
   'casthcds11',
   'casthcds12',
   'casthcds13',
   'casthcds14',
   'casthcds15',
   'casthcds16',
   'casthcds17',
   'casthcds18',
   'casthcds19',
   'casthcds20',
   'casthcds21',
   'casthcds22',
   'casthcds23',
   'casthcds24',
   'casthcds25',
   'casthcds26',
   'casthcds27',
   'casthcds28',
   'casthcds29',
   'casthcds30',
   'casthcds31',
   'casthcds32',
   'casthcds33',
   'casthcds34',
   'casthcds35',
   'casthcds36',
   'casthcds37',
   'casthcds38',
   'casthcds39',
   'casthcds40',
   'casthcds41',
   'casthcds42',
   'user-defined-1',
   'user-defined-2',
   'user-defined-3',
   'user-defined-4',
   'user-defined-5',
   'user-defined-6',
   'user-defined-7',
   'user-defined-8',
   'user-defined-9',
   'user-defined-10',
   'CastAs-UnionType-1',
   'CastAs-UnionType-2',
   'CastAs-UnionType-3',
   'CastAs-UnionType-4',
   'CastAs-UnionType-5',
   'CastAs-UnionType-5a',
   'CastAs-UnionType-6',
   'CastAs-UnionType-7',
   'CastAs-UnionType-8',
   'CastAs-UnionType-9',
   'CastAs-UnionType-10',
   'CastAs-UnionType-11',
   'CastAs-UnionType-12',
   'CastAs-UnionType-13',
   'CastAs-UnionType-14',
   'CastAs-UnionType-15',
   'CastAs-UnionType-16',
   'CastAs-UnionType-17',
   'CastAs-UnionType-18',
   'CastAs-UnionType-19',
   'CastAs-UnionType-20',
   'CastAs-UnionType-21',
   'CastAs-UnionType-22',
   'CastAs-UnionType-23',
   'CastAs-UnionType-24',
   'CastAs-UnionType-25',
   'CastAs-UnionType-26',
   'CastAs-UnionType-27',
   'CastAs-UnionType-28',
   'CastAs-UnionType-29',
   'CastAs-UnionType-30',
   'CastAs-UnionType-31',
   'CastAs-UnionType-32',
   'CastAs-UnionType-33',
   'CastAs-UnionType-34',
   'CastAs-UnionType-35',
   'CastAs-UnionType-36',
   'CastAs-UnionType-37',
   'CastAs-UnionType-38',
   'CastAs-ListType-1',
   'CastAs-ListType-2',
   'CastAs-ListType-3',
   'CastAs-ListType-4',
   'CastAs-ListType-5',
   'CastAs-ListType-6',
   'CastAs-ListType-7',
   'CastAs-ListType-8',
   'CastAs-ListType-9',
   'CastAs-ListType-10',
   'CastAs-ListType-11',
   'CastAs-ListType-12',
   'CastAs-ListType-13',
   'CastAs-ListType-14',
   'CastAs-ListType-15',
   'CastAs-ListType-16',
   'CastAs-ListType-17',
   'CastAs-ListType-18',
   'CastAs-ListType-19',
   'CastAs-ListType-20',
   'CastAs-ListType-21',
   'CastAs-ListType-22',
   'CastAs-ListType-23',
   'CastAs-ListType-24',
   'CastAs-ListType-25',
   'CastAs-ListType-26',
   'CastAs-ListType-27',
   'CastAs-ListType-28',
   'CastAs-ListType-29',
   'CastAs-ListType-30',
   'CastAs-ListType-31',
   'CastAs-ListType-32'].
environment('empty',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('atomic',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/atomic.xml"), ".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{filename:join(BaseDir, "../docs/atomic.xsd"),"http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{resources, []},
{modules, []}
];
environment('user-defined-types',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, [{filename:join(BaseDir, "../docs/userdefined.xsd"),"http://www.w3.org/XQueryTest/userDefinedTypes"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('union-List-defined-Types',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, [{filename:join(BaseDir, "SchemaImport/unionListDefined.xsd"),"http://www.w3.org/XQueryTest/unionListDefined"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('atomic-xq',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/atomic.xml"), ".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{filename:join(BaseDir, "../docs/atomic.xsd"),"http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-mod',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/works-mod.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/works.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('staff',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/staff.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-and-staff',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/works.xml"), "$works",""},
{filename:join(BaseDir, "../docs/staff.xml"), "$staff",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('auction',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/auction.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
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
environment('qname',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/QName-source.xml"), ".",""}]},
{schemas, [{filename:join(BaseDir, "../docs/QName-schema.xsd"),"http://www.example.com/QNameXSD"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.example.com/QNameXSD",""}]},
{resources, []},
{modules, []}
];
environment('math',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/math","math"}]},
{resources, []},
{modules, []}
];
environment('array',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"}]},
{resources, []},
{modules, []}
];
environment('map',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('array-and-map',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"},
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
].
'qname-cast-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'qname-cast-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'qname-cast-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'qname-cast-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'notation-cast-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'notation-cast-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'casthcds1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'casthcds2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'casthcds3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'casthcds4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'casthcds5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'casthcds6'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'casthcds7'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'casthcds8'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'casthcds9'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'casthcds10'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'casthcds11'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'casthcds12'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'casthcds13'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'casthcds14'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'casthcds15'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'casthcds16'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'casthcds17'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'casthcds18'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'casthcds19'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'casthcds20'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'casthcds21'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'casthcds22'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'casthcds23'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'casthcds24'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'casthcds25'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'casthcds26'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'casthcds27'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'casthcds28'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'casthcds29'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'casthcds30'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'casthcds31'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'casthcds32'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'casthcds33'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'casthcds34'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'casthcds35'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'casthcds36'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'casthcds37'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'casthcds38'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'casthcds39'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'casthcds40'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'casthcds41'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'casthcds42'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'user-defined-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'user-defined-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'user-defined-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'user-defined-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'user-defined-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'user-defined-6'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'user-defined-7'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'user-defined-8'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'user-defined-9'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'user-defined-10'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-UnionType-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-UnionType-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-UnionType-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-UnionType-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-UnionType-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-UnionType-5a'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-UnionType-6'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-UnionType-7'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-UnionType-8'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-UnionType-9'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-UnionType-10'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-UnionType-11'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-UnionType-12'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-UnionType-13'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-UnionType-14'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-UnionType-15'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-UnionType-16'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-UnionType-17'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-UnionType-18'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-UnionType-19'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-UnionType-20'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-UnionType-21'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-UnionType-22'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-UnionType-23'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-UnionType-24'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-UnionType-25'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-UnionType-26'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-UnionType-27'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-UnionType-28'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-UnionType-29'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-UnionType-30'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-UnionType-31'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-UnionType-32'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-UnionType-33'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-UnionType-34'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-UnionType-35'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-UnionType-36'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-UnionType-37'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-UnionType-38'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-ListType-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-ListType-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-ListType-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-ListType-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-ListType-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-ListType-6'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-ListType-7'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-ListType-8'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-ListType-9'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-ListType-10'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-ListType-11'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-ListType-12'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-ListType-13'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-ListType-14'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-ListType-15'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-ListType-16'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-ListType-17'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-ListType-18'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-ListType-19'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-ListType-20'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-ListType-21'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-ListType-22'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-ListType-23'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-ListType-24'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-ListType-25'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-ListType-26'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-ListType-27'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-ListType-28'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-ListType-29'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-ListType-30'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-ListType-31'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
'CastAs-ListType-32'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.
