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
end_per_suite(_Config) -> ct:timetrap({seconds,60}), xqerl_module:unload(all).
init_per_suite(Config) -> 
   DD = filename:dirname(filename:dirname(proplists:get_value(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   BaseDir = filename:join(TD, "prod")
, try  xqerl_module:compile(filename:join(BaseDir, "ModuleImport/test1-lib.xq")) catch _:_ -> ok end
, try  xqerl_module:compile(filename:join(BaseDir, "ModuleImport/module-uris1-lib.xq")) catch _:_ -> ok end
, try  xqerl_module:compile(filename:join(BaseDir, "ModuleImport/module-uris2-lib.xq")) catch _:_ -> ok end
, try  xqerl_module:compile(filename:join(BaseDir, "ModuleImport/module-urisi1-lib.xq")) catch _:_ -> ok end
, try  xqerl_module:compile(filename:join(BaseDir, "ModuleImport/module-uris3-lib.xq")) catch _:_ -> ok end
, try  xqerl_module:compile(filename:join(BaseDir, "ModuleImport/module-uris4-lib.xq")) catch _:_ -> ok end
, try  xqerl_module:compile(filename:join(BaseDir, "ModuleImport/module-uris5-lib.xq")) catch _:_ -> ok end
, try  xqerl_module:compile(filename:join(BaseDir, "ModuleImport/module-uris6-lib.xq")) catch _:_ -> ok end
, try  xqerl_module:compile(filename:join(BaseDir, "ModuleImport/module-uris7-lib.xq")) catch _:_ -> ok end
, try  xqerl_module:compile(filename:join(BaseDir, "ModuleImport/module-uris8-lib.xq")) catch _:_ -> ok end
, try  xqerl_module:compile(filename:join(BaseDir, "ModuleImport/module-uris9-lib.xq")) catch _:_ -> ok end
, try  xqerl_module:compile(filename:join(BaseDir, "ModuleImport/module-uris10-lib.xq")) catch _:_ -> ok end
, try  xqerl_module:compile(filename:join(BaseDir, "ModuleImport/module-uris11-lib.xq")) catch _:_ -> ok end
, try  xqerl_module:compile(filename:join(BaseDir, "ModuleImport/module-uris12-lib.xq")) catch _:_ -> ok end
, try  xqerl_module:compile(filename:join(BaseDir, "ModuleImport/module-uris13-lib.xq")) catch _:_ -> ok end
, try  xqerl_module:compile(filename:join(BaseDir, "ModuleImport/module-uris14-lib.xq")) catch _:_ -> ok end
, try  xqerl_module:compile(filename:join(BaseDir, "ModuleImport/module-uris15-lib.xq")) catch _:_ -> ok end
, try  xqerl_module:compile(filename:join(BaseDir, "ModuleImport/module-uris16-lib.xq")) catch _:_ -> ok end
, try  xqerl_module:compile(filename:join(BaseDir, "ModuleImport/module-uris17-lib.xq")) catch _:_ -> ok end
, try  xqerl_module:compile(filename:join(BaseDir, "ModuleImport/module-uris18-lib.xq")) catch _:_ -> ok end
, try  xqerl_module:compile(filename:join(BaseDir, "ModuleImport/module-uris19-lib.xq")) catch _:_ -> ok end
, try  xqerl_module:compile(filename:join(BaseDir, "ModuleImport/module-uris20-lib.xq")) catch _:_ -> ok end
, try  xqerl_module:compile(filename:join(BaseDir, "ModuleImport/module-uris21-lib.xq")) catch _:_ -> ok end
, try  xqerl_module:compile(filename:join(BaseDir, "ModuleImport/test1collide1-lib.xq")) catch _:_ -> ok end
, try  xqerl_module:compile(filename:join(BaseDir, "ModuleImport/test1collide2-lib.xq")) catch _:_ -> ok end
, try  xqerl_module:compile(filename:join(BaseDir, "ModuleImport/emptyns-lib.xq")) catch _:_ -> ok end
, try  xqerl_module:compile(filename:join(BaseDir, "ModuleImport/test1c1-lib.xq")) catch _:_ -> ok end
, try  xqerl_module:compile(filename:join(BaseDir, "ModuleImport/test2c1-lib.xq")) catch _:_ -> ok end
, try  xqerl_module:compile(filename:join(BaseDir, "ModuleImport/moduleDefs-lib.xq")) catch _:_ -> ok end
, try  xqerl_module:compile(filename:join(BaseDir, "ModuleImport/test2-lib.xq")) catch _:_ -> ok end
, try  xqerl_module:compile(filename:join(BaseDir, "ModuleImport/modulesdiffns-lib.xq")) catch _:_ -> ok end
, try  xqerl_module:compile(filename:join(BaseDir, "ModuleImport/module1-lib.xq")) catch _:_ -> ok end
, try  xqerl_module:compile(filename:join(BaseDir, "ModuleImport/module2-lib.xq")) catch _:_ -> ok end
, try  xqerl_module:compile(filename:join(BaseDir, "ModuleImport/module3-lib.xq")) catch _:_ -> ok end
, try  xqerl_module:compile(filename:join(BaseDir, "ModuleImport/module4-lib.xq")) catch _:_ -> ok end
, try  xqerl_module:compile(filename:join(BaseDir, "ModuleImport/modules-recursive1.xq")) catch _:_ -> ok end
, try  xqerl_module:compile(filename:join(BaseDir, "ModuleImport/modules-recursive2.xq")) catch _:_ -> ok end
, try  xqerl_module:compile(filename:join(BaseDir, "ModuleImport/errata6-module1.xq")) catch _:_ -> ok end
, try  xqerl_module:compile(filename:join(BaseDir, "ModuleImport/errata6-module2.xq")) catch _:_ -> ok end
, try  xqerl_module:compile(filename:join(BaseDir, "ModuleImport/errata6-module4.xq")) catch _:_ -> ok end
, try  xqerl_module:compile(filename:join(BaseDir, "ModuleImport/errata6-module5.xq")) catch _:_ -> ok end
, try  xqerl_module:compile(filename:join(BaseDir, "ModuleImport/errata6-module6.xq")) catch _:_ -> ok end
, try  xqerl_module:compile(filename:join(BaseDir, "ModuleImport/errata6-module7.xq")) catch _:_ -> ok end
, try  xqerl_module:compile(filename:join(BaseDir, "ModuleImport/errata8-module1a.xq")) catch _:_ -> ok end
, try  xqerl_module:compile(filename:join(BaseDir, "ModuleImport/errata8-module1b.xq")) catch _:_ -> ok end
, try  xqerl_module:compile(filename:join(BaseDir, "ModuleImport/errata8-module2a.xq")) catch _:_ -> ok end
, try  xqerl_module:compile(filename:join(BaseDir, "ModuleImport/errata8-module2b.xq")) catch _:_ -> ok end
, try  xqerl_module:compile(filename:join(BaseDir, "ModuleImport/errata8-module3a.xq")) catch _:_ -> ok end
, try  xqerl_module:compile(filename:join(BaseDir, "ModuleImport/errata8-module3b.xq")) catch _:_ -> ok end
, try  xqerl_module:compile(filename:join(BaseDir, "ModuleImport/module-pub-priv.xq")) catch _:_ -> ok end
, try  xqerl_module:compile(filename:join(BaseDir, "ModuleImport/module-pub-priv3.xq")) catch _:_ -> ok end
, try  xqerl_module:compile(filename:join(BaseDir, "ModuleImport/module-pub-priv2.xq")) catch _:_ -> ok end
, try  xqerl_module:compile(filename:join(BaseDir, "ModuleImport/schemalib.xq")) catch _:_ -> ok end
, try  xqerl_module:compile(filename:join(BaseDir, "ModuleImport/baseuri-lib.xq")) catch _:_ -> ok end
, try  xqerl_module:compile(filename:join(BaseDir, "ModuleImport/variabledeclaration-lib.xq")) catch _:_ -> ok end
, try  xqerl_module:compile(filename:join(BaseDir, "ModuleImport/variablereference-lib.xq")) catch _:_ -> ok end
, try  xqerl_module:compile(filename:join(BaseDir, "ModuleImport/contextitem-lib.xq")) catch _:_ -> ok end
,[{base_dir, BaseDir}|Config].
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
{sources, [{"file://"++filename:join(BaseDir, "../docs/atomic.xml"), ".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{filename:join(BaseDir, "../docs/atomic.xsd"),"http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{resources, []},
{modules, []}
];
environment('atomic-xq',BaseDir) ->
[{'decimal-formats', []},
{sources, [{"file://"++filename:join(BaseDir, "../docs/atomic.xml"), ".","http://www.w3.org/fots/docs/atomic.xml"}]},
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
{sources, [{"file://"++filename:join(BaseDir, "../docs/works-mod.xml"), ".",""}]},
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
{sources, [{"file://"++filename:join(BaseDir, "../docs/works.xml"), ".",""}]},
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
{sources, [{"file://"++filename:join(BaseDir, "../docs/staff.xml"), ".",""}]},
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
{sources, [{"file://"++filename:join(BaseDir, "../docs/works.xml"), "$works",""},
{"file://"++filename:join(BaseDir, "../docs/staff.xml"), "$staff",""}]},
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
{sources, [{"file://"++filename:join(BaseDir, "../docs/auction.xml"), ".",""}]},
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
{sources, [{"file://"++filename:join(BaseDir, "../docs/QName-source.xml"), ".",""}]},
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
];
environment('simple-schema',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, [{filename:join(BaseDir, "ModuleImport/simple.xsd"),"http://www.w3.org/XQueryTest/simple"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('attribute-schema',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, [{filename:join(BaseDir, "ModuleImport/attribute.xsd"),"http://www.w3.org/XQueryTest/sample"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('complexData',BaseDir) ->
[{'decimal-formats', []},
{sources, [{"file://"++filename:join(BaseDir, "../fn/data/complexData.xml"), ".",""}]},
{schemas, [{filename:join(BaseDir, "../fn/data/complexData.xsd"),"http://www.cbcl.co.uk/XQueryTest/complexData"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
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
].
'K2-ModuleProlog-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "module namespace example = \"http://example.com/\"; \"an expression\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-ModuleProlog-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-simple'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace test1=\"http://www.w3.org/TestModules/test1\"; 
        <result>{test1:ok()}</result>",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/test1-lib.xq"),"http://www.w3.org/TestModules/test1"},
{filename:join(BaseDir, "ModuleImport/test1-lib.xq"),"http://www.w3.org/TestModules/test2"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-simple.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-bad-ns'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace test2=\"http://www.w3.org/TestModules/test2\";
        <result>{test2:ok()}</result>
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/test1-lib.xq"),"http://www.w3.org/TestModules/test1"},
{filename:join(BaseDir, "ModuleImport/test1-lib.xq"),"http://www.w3.org/TestModules/test2"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-bad-ns.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0059") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'module-URIs-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace test=\"  http://www.w3.org/TestModules/test \";
        <result>{test:ok()}</result>
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/module-uris1-lib.xq"),"http://www.w3.org/TestModules/test"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "module-URIs-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'module-URIs-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace test=\"&#x20;&#x9;&#xA;&#xD;http://www.w3.org/TestModules/test&#x20;&#x9;&#xA;&#xD;\";
        <result>{test:ok()}</result>
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/module-uris1-lib.xq"),"http://www.w3.org/TestModules/test"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "module-URIs-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'module-URIs-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace test=\"http://www.w3.org/Test&#x20;&#x20;&#x20;&#x20;Modules/test\";
        <result>{test:ok()}</result>
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/module-uris2-lib.xq"),"http://www.w3.org/Test Modules/test"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "module-URIs-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'module-URIs-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace test=\"http://www.w3.org/TestModules/test/../../TestModules/./test\";
        <result>{test:ok()}</result>
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/module-urisi1-lib.xq"),"http://www.w3.org/TestModules/test"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "module-URIs-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0059") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'module-URIs-7'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace test=\"http://www.w3.org/TestModules./test\";
        <result>{test:ok()}</result>
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/module-uris3-lib.xq"),"http://www.w3.org/TestModules./test"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "module-URIs-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'module-URIs-8'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace test=\"http://www.w3.org/.TestModules/test\";
        <result>{test:ok()}</result>
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/module-uris4-lib.xq"),"http://www.w3.org/.TestModules/test"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "module-URIs-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'module-URIs-9'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace test=\"http://www.w3.org/TestModules../test\";
        <result>{test:ok()}</result>
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/module-uris5-lib.xq"),"http://www.w3.org/TestModules../test"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "module-URIs-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'module-URIs-10'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace test=\"http://www.w3.org/..TestModules/test\";
        <result>{test:ok()}</result>
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/module-uris6-lib.xq"),"http://www.w3.org/..TestModules/test"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "module-URIs-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'module-URIs-11'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace test=\"http://www.w3.org/TestModules/&#xd0a4;/test\";
        <result>{test:ok()}</result>
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/module-uris7-lib.xq"),"http://www.w3.org/TestModules/키/test"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "module-URIs-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'module-URIs-12'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace test=\"http://www.w3.org/TestModules/&#x3c;&#x3d;&#x3e;&#x40;/test\";
        <result>{test:ok()}</result>
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/module-uris8-lib.xq"),"http://www.w3.org/TestModules/<=>@/test"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "module-URIs-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'module-URIs-13'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace test=\"urn:example:animal:ferret:nose\";
        <result>{test:ok()}</result>
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/module-uris9-lib.xq"),"urn:example:animal:ferret:nose"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "module-URIs-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'module-URIs-14'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace test=\"ftp://www.w3.org/TestModules/test;type=A\";
        <result>{test:ok()}</result>
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/module-uris10-lib.xq"),"ftp://www.w3.org/TestModules/test;type=A"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "module-URIs-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'module-URIs-15'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace test=\"http://www.w3.org/TestModules/test?hello=world\";
        <result>{test:ok()}</result>
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/module-uris11-lib.xq"),"http://www.w3.org/TestModules/test?hello=world"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "module-URIs-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'module-URIs-16'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace test=\"http://www.w3.org/TestModules/test#world\";
        <result>{test:ok()}</result>
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/module-uris12-lib.xq"),"http://www.w3.org/TestModules/test#world"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "module-URIs-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'module-URIs-17'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace test=\"ftp://www.w3.org/TestModules/test;type=A?hello=world&amp;q#world\";
        <result>{test:ok()}</result>
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/module-uris13-lib.xq"),"ftp://www.w3.org/TestModules/test;type=A?hello=world&q#world"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "module-URIs-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'module-URIs-18'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace test=\"#1\";
        <result>{test:ok()}</result>
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/module-uris14-lib.xq"),"#1"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "module-URIs-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'module-URIs-19'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace test=\"http:test\";
        <result>{test:ok()}</result>
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/module-uris15-lib.xq"),"http:test"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "module-URIs-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'module-URIs-20'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace test=\"ftp://user@www.w3.org/TestModules/test\";
        <result>{test:ok()}</result>
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/module-uris16-lib.xq"),"ftp://user@www.w3.org/TestModules/test"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "module-URIs-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'module-URIs-21'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace test=\"http://[2001:0db8:85a3:0000:0000:8a2e:0370:7334]/TestModules/test\";
        <result>{test:ok()}</result>
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/module-uris17-lib.xq"),"http://[2001:0db8:85a3:0000:0000:8a2e:0370:7334]/TestModules/test"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "module-URIs-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'module-URIs-22'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace test=\"http://www.w3.org:7334/TestModules/test\";
        <result>{test:ok()}</result>
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/module-uris18-lib.xq"),"http://www.w3.org:7334/TestModules/test"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "module-URIs-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'module-URIs-23'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace test=\"mailto:jane.doe@w3c.org\";
        <result>{test:ok()}</result>
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/module-uris19-lib.xq"),"mailto:jane.doe@w3c.org"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "module-URIs-23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'module-URIs-24'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace test=\"fax:+1-234-567-890\";
        <result>{test:ok()}</result>
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/module-uris20-lib.xq"),"fax:+1-234-567-890"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "module-URIs-24.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'module-URIs-25'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace test=\"ldap://[2001:db8::7]/c=GB?objectClass?one\";
        <result>{test:ok()}</result>
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/module-uris21-lib.xq"),"ldap://[2001:db8::7]/c=GB?objectClass?one"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "module-URIs-25.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-two-import'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace test1=\"http://www.w3.org/TestModules/test1\"; 
        import module namespace test2=\"http://www.w3.org/TestModules/test1\"; 
        <result>{test1:ok()}</result>
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/test1-lib.xq"),"http://www.w3.org/TestModules/test1"},
{filename:join(BaseDir, "ModuleImport/test1-lib.xq"),"http://www.w3.org/TestModules/test2"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-two-import.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0047") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-two-import-ok'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace test1=\"http://www.w3.org/TestModules/test1\"; 
        <result>{test1:ok()}</result>
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/test1-lib.xq"),"http://www.w3.org/TestModules/test1"},
{filename:join(BaseDir, "ModuleImport/test1-lib.xq"),"http://www.w3.org/TestModules/test2"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-two-import-ok.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-collide-var-001'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace test1=\"http://www.w3.org/TestModules/test1\"; 
        <result>{test1:ok()}</result>",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/test1-lib.xq"),"http://www.w3.org/TestModules/test1"},
{filename:join(BaseDir, "ModuleImport/test1collide1-lib.xq"),"http://www.w3.org/TestModules/test1"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-collide-var-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0049") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-collide-var-002'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace test1=\"http://www.w3.org/TestModules/test1\"; 
        declare variable $test1:flag := 1; 
        <result>{test1:ok()}</result>
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/test1-lib.xq"),"http://www.w3.org/TestModules/test1"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-collide-var-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0049") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-collide-fn-001'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace test1=\"http://www.w3.org/TestModules/test1\"; 
        <result>{test1:ok()}</result>
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/test1-lib.xq"),"http://www.w3.org/TestModules/test1"},
{filename:join(BaseDir, "ModuleImport/test1collide2-lib.xq"),"http://www.w3.org/TestModules/test1"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-collide-fn-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0034") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-collide-fn-002'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace test1=\"http://www.w3.org/TestModules/test1\"; 
        declare function test1:ok () { \"ok\" }; 
        <result>{test1:ok()}</result>
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/test1-lib.xq"),"http://www.w3.org/TestModules/test1"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-collide-fn-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0034") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-emptyns'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace test1= \"\"; 
        <result>ok</result>
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/emptyns-lib.xq"),""}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-emptyns.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0088") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-circular'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace test1=\"http://www.w3.org/TestModules/test1\"; 
        <result>{test1:ok()}</result>
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/test1c1-lib.xq"),"http://www.w3.org/TestModules/test1"},
{filename:join(BaseDir, "ModuleImport/test2c1-lib.xq"),"http://www.w3.org/TestModules/test2"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-circular.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "ok") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/defs\"; 
        <foo:anElement>some Content</foo:anElement>
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/moduleDefs-lib.xq"),"http://www.w3.org/TestModules/defs"},
{filename:join(BaseDir, "ModuleImport/test1-lib.xq"),"http://www.w3.org/TestModules/test1"},
{filename:join(BaseDir, "ModuleImport/test1-lib.xq"),"http://www.w3.org/TestModules/test2"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0081") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/defs\"; 
        declare namespace foo = \"http://example.org\"; 
        <foo:anElement>some Content</foo:anElement>
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/moduleDefs-lib.xq"),"http://www.w3.org/TestModules/defs"},
{filename:join(BaseDir, "ModuleImport/test1-lib.xq"),"http://www.w3.org/TestModules/test1"},
{filename:join(BaseDir, "ModuleImport/test1-lib.xq"),"http://www.w3.org/TestModules/test2"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<foo:anElement xmlns:foo=\"http://example.org\">some Content</foo:anElement>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/defs\"; 
        let $var := $test1:flag + 1 return $var
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/moduleDefs-lib.xq"),"http://www.w3.org/TestModules/defs"},
{filename:join(BaseDir, "ModuleImport/test1-lib.xq"),"http://www.w3.org/TestModules/test1"},
{filename:join(BaseDir, "ModuleImport/test1-lib.xq"),"http://www.w3.org/TestModules/test2"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0081") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/defs\"; 
        let $var := $defs:var1+ 1 return $var
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/moduleDefs-lib.xq"),"http://www.w3.org/TestModules/defs"},
{filename:join(BaseDir, "ModuleImport/test1-lib.xq"),"http://www.w3.org/TestModules/test1"},
{filename:join(BaseDir, "ModuleImport/test1-lib.xq"),"http://www.w3.org/TestModules/test2"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/defs\"; 
        let $var := $defs:var2 + 1 return $var
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/moduleDefs-lib.xq"),"http://www.w3.org/TestModules/defs"},
{filename:join(BaseDir, "ModuleImport/test1-lib.xq"),"http://www.w3.org/TestModules/test1"},
{filename:join(BaseDir, "ModuleImport/test1-lib.xq"),"http://www.w3.org/TestModules/test2"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"4") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-6'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace test1=\"http://www.w3.org/TestModules/test1\"; 
        declare namespace foo = \"http://example.org\"; 
        declare variable $foo:flag := 3; 
        let $var := $test1:flag + $foo:flag 
        return $var",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/test1-lib.xq"),"http://www.w3.org/TestModules/test1"},
{filename:join(BaseDir, "ModuleImport/test1-lib.xq"),"http://www.w3.org/TestModules/test2"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"4") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-7'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace test1=\"http://www.w3.org/TestModules/test1\"; 
        let $var := fn:concat(xs:string($test1:flag),xs:string(test1:ok())) 
        return $var",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/test1-lib.xq"),"http://www.w3.org/TestModules/test1"},
{filename:join(BaseDir, "ModuleImport/test1-lib.xq"),"http://www.w3.org/TestModules/test2"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1ok") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-8'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace test1=\"http://www.w3.org/TestModules/test1\"; 
        declare namespace foo = \"http://example.org\"; 
        declare function foo:ok () { \"ok\" }; 
        let $var := fn:concat(test1:ok(),foo:ok()) 
        return $var",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/test1-lib.xq"),"http://www.w3.org/TestModules/test1"},
{filename:join(BaseDir, "ModuleImport/test1-lib.xq"),"http://www.w3.org/TestModules/test2"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "okok") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-9'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace test1=\"http://www.w3.org/TestModules/test1\"; 
        fn:upper-case(test1:ok())",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/test1-lib.xq"),"http://www.w3.org/TestModules/test1"},
{filename:join(BaseDir, "ModuleImport/test1-lib.xq"),"http://www.w3.org/TestModules/test2"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "OK") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-10'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace test1=\"http://www.w3.org/TestModules/test1\"; 
        fn:lower-case(test1:ok())
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/test1-lib.xq"),"http://www.w3.org/TestModules/test1"},
{filename:join(BaseDir, "ModuleImport/test1-lib.xq"),"http://www.w3.org/TestModules/test2"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "ok") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-11'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace test1=\"http://www.w3.org/TestModules/test1\"; 
        fn:string-length(test1:ok())",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/test1-lib.xq"),"http://www.w3.org/TestModules/test1"},
{filename:join(BaseDir, "ModuleImport/test1-lib.xq"),"http://www.w3.org/TestModules/test2"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-12'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace test1=\"http://www.w3.org/TestModules/test1\";
        $test1:flag + $test1:flag
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/test1-lib.xq"),"http://www.w3.org/TestModules/test1"},
{filename:join(BaseDir, "ModuleImport/test1-lib.xq"),"http://www.w3.org/TestModules/test2"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-13'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace test1=\"http://www.w3.org/TestModules/test1\"; 
        $test1:flag - $test1:flag
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/test1-lib.xq"),"http://www.w3.org/TestModules/test1"},
{filename:join(BaseDir, "ModuleImport/test1-lib.xq"),"http://www.w3.org/TestModules/test2"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-14'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace test1=\"http://www.w3.org/TestModules/test1\"; 
        xs:integer($test1:flag)
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/test1-lib.xq"),"http://www.w3.org/TestModules/test1"},
{filename:join(BaseDir, "ModuleImport/test1-lib.xq"),"http://www.w3.org/TestModules/test2"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-15'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace test2=\"http://www.w3.org/TestModules/test2\"; 
        \"aaa\"
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/test2-lib.xq"),"http://www.w3.org/TestModules/test2"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0088") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-16'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace xml=\"http://www.w3.org/TestModules/test1\"; 
        xs:string($xml:flag)
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/test1-lib.xq"),"http://www.w3.org/TestModules/test1"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0070") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-17'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/diffns\"; 
        \"abc\"
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/modulesdiffns-lib.xq"),"http://www.w3.org/TestModules/diffns"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0048") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-18'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace mod1=\"http://www.w3.org/TestModules/module1\"; 
        import module namespace mod2=\"http://www.w3.org/TestModules/module2\"; 
        mod1:x(),mod2:y()",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/module1-lib.xq"),"http://www.w3.org/TestModules/module1"},
{filename:join(BaseDir, "ModuleImport/module2-lib.xq"),"http://www.w3.org/TestModules/module2"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "x y x y") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-19'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"schemaImport"}.
'modules-20'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"schemaImport"}.
'modules-21'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"schemaImport"}.
'modules-22'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"schemaImport"}.
'modules-23'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"schemaImport"}.
'modules-24'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"schemaImport"}.
'modules-25'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"schemaImport"}.
'modules-26'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"schemaImport"}.
'modules-27'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"schemaImport"}.
'modules-28'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"XQ10"}.
'modules-28a'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace defs1 = \"http://www.w3.org/TestModules/defs1\"; 
        $defs1:var
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/modules-recursive1.xq"),"http://www.w3.org/TestModules/defs1"},
{filename:join(BaseDir, "ModuleImport/modules-recursive2.xq"),"http://www.w3.org/TestModules/defs2"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-28a.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0054") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-29'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace xmlns=\"http://www.w3.org/TestModules/test\"; 
        xmlns:ok ()
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/test1-lib.xq"),"http://www.w3.org/TestModules/test"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-29.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0070") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ModuleImport-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "import(::)module \"\"; 1 eq 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ModuleImport-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0088") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ModuleImport-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "import(::)module \"\" at \"http://example.com/\", \"http://example.com/2\"; 1 eq 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ModuleImport-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0088") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ModuleImport-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "import module namespace NCName := \"http://example.com/Dummy\"; 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ModuleImport-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-ModuleImport-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "import ne import",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-ModuleImport-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'errata6-001'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"schemaImport"}.
'errata6-002'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"schemaImport"}.
'errata6-003'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"schemaImport"}.
'errata6-004'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"schemaImport"}.
'errata6-005'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'errata6-006'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'errata6-007'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'errata8-001'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"XQ10"}.
'errata8-001a'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace errata8_1a=\"http://www.w3.org/TestModules/errata8_1a\"; 
        errata8_1a:fun()
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/errata8-module1a.xq"),"http://www.w3.org/TestModules/errata8_1a"},
{filename:join(BaseDir, "ModuleImport/errata8-module1b.xq"),"http://www.w3.org/TestModules/errata8_1b"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "errata8-001a.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0054") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'errata8-002'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"XQ10"}.
'errata8-002a'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace errata8_2a=\"http://www.w3.org/TestModules/errata8_2a\"; 
        errata8_2a:fun()",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/errata8-module2a.xq"),"http://www.w3.org/TestModules/errata8_2a"},
{filename:join(BaseDir, "ModuleImport/errata8-module2b.xq"),"http://www.w3.org/TestModules/errata8_2b"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "errata8-002a.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"10") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'errata8-003'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace errata8_3a=\"http://www.w3.org/TestModules/errata8_3a\"; 
        errata8_3a:fun()
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/errata8-module3a.xq"),"http://www.w3.org/TestModules/errata8_3a"},
{filename:join(BaseDir, "ModuleImport/errata8-module3b.xq"),"http://www.w3.org/TestModules/errata8_3b"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "errata8-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"10") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/module-pub-priv\"; 
        <a>{defs:g(42)}</a>
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/module-pub-priv.xq"),"http://www.w3.org/TestModules/module-pub-priv"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-pub-priv-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>65</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/module-pub-priv\"; 
        defs:f()
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/module-pub-priv.xq"),"http://www.w3.org/TestModules/module-pub-priv"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-pub-priv-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/module-pub-priv\"; 
        <a>{defs:g($defs:one)}</a>
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/module-pub-priv.xq"),"http://www.w3.org/TestModules/module-pub-priv"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-pub-priv-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>24</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/module-pub-priv\"; 
        <a>{defs:g($defs:two)}</a>
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/module-pub-priv.xq"),"http://www.w3.org/TestModules/module-pub-priv"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-pub-priv-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare %public function local:inc($i as xs:integer) {
            $i + 1
        };
        <a>{local:inc(1)}</a>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-pub-priv-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>2</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-6'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare %private function local:inc($i as xs:integer) {
            $i + 1
        };
        <a>{local:inc(1)}</a>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-pub-priv-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>2</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-7'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare %public variable $i := 1;
        <a>{$i+1}</a>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-pub-priv-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>2</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-8'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare %private variable $i := 1;
        <a>{$i+1}</a>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-pub-priv-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>2</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-9'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
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
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-pub-priv-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>2</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-10'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
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
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-pub-priv-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>2</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-11'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare %public variable $i := 1;
        
        declare function local:test() {
            $i + 1
        };
        <a>{local:test()}</a>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-pub-priv-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>2</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-12'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare %private variable $i := 1;
        
        declare function local:test() {
           $i + 1
        };
        <a>{local:test()}</a>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-pub-priv-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>2</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-13'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/module-pub-priv\"; 
        declare function local:test() {
            defs:g(42)
        };
        <a>{local:test()}</a>
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/module-pub-priv.xq"),"http://www.w3.org/TestModules/module-pub-priv"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-pub-priv-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>65</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-14'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/module-pub-priv\"; 
        declare function local:test() {
            defs:f()
        };
        <a>{local:test()}</a>
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/module-pub-priv.xq"),"http://www.w3.org/TestModules/module-pub-priv"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-pub-priv-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-15'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/module-pub-priv\"; 
        declare function local:test() {
            $defs:one
        };
        <a>{local:test()}</a>
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/module-pub-priv.xq"),"http://www.w3.org/TestModules/module-pub-priv"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-pub-priv-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>1</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-16'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/module-pub-priv\"; 
        declare function local:test() {
            $defs:two
        };
        <a>{local:test()}</a>
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/module-pub-priv.xq"),"http://www.w3.org/TestModules/module-pub-priv"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-pub-priv-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-17'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare %public function local:inc($i as xs:integer) {
            $i + 1
        };
        
        declare variable $test := local:inc(1);

        <a>{$test}</a>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-pub-priv-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>2</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-18'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare %private function local:inc($i as xs:integer) {
            $i + 1
        };
        
        declare variable $test := local:inc(1);

        <a>{$test}</a>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-pub-priv-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>2</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-19'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare %public variable $i := 1;
        
	declare variable $test := $i + 1;

        <a>{$test}</a>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-pub-priv-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>2</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-20'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare %private variable $i := 1;
        
        declare variable $test := $i + 1;

        <a>{$test}</a>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-pub-priv-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>2</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-21'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/module-pub-priv\"; 

        declare variable $test := defs:g(42);

        <a>{$test}</a>
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/module-pub-priv.xq"),"http://www.w3.org/TestModules/module-pub-priv"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-pub-priv-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>65</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-22'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/module-pub-priv\"; 

        declare variable $test := defs:f();

        <a>{$test}</a>
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/module-pub-priv.xq"),"http://www.w3.org/TestModules/module-pub-priv"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-pub-priv-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-23'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/module-pub-priv\"; 

        declare variable $test := $defs:one;

        <a>{$test}</a>
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/module-pub-priv.xq"),"http://www.w3.org/TestModules/module-pub-priv"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-pub-priv-23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>1</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-24'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/module-pub-priv\"; 

        declare variable $test := $defs:two;

        <a>93.7</a>
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/module-pub-priv.xq"),"http://www.w3.org/TestModules/module-pub-priv"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-pub-priv-24.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-25'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/module-pub-priv\"; 

        <a>{defs:h(42)}</a>
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/module-pub-priv.xq"),"http://www.w3.org/TestModules/module-pub-priv"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-pub-priv-25.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>65</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-26'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/module-pub-priv\"; 

        <a>{$defs:ninety}</a>
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/module-pub-priv.xq"),"http://www.w3.org/TestModules/module-pub-priv"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-pub-priv-26.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>90</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-27'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/module-pub-priv3\"; 
        <a>{defs:f(42)}</a>
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/module-pub-priv.xq"),"http://www.w3.org/TestModules/module-pub-priv"},
{filename:join(BaseDir, "ModuleImport/module-pub-priv3.xq"),"http://www.w3.org/TestModules/module-pub-priv3"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-pub-priv-27.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>65</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-28'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/module-pub-priv2\"; 
        <a>{defs:fails()}</a>
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/module-pub-priv.xq"),"http://www.w3.org/TestModules/module-pub-priv"},
{filename:join(BaseDir, "ModuleImport/module-pub-priv2.xq"),"http://www.w3.org/TestModules/module-pub-priv2"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-pub-priv-28.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-29'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare %private %public function local:foo() { () };
        local:foo()
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-pub-priv-29.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0106") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-30'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare namespace xq=\"http://www.w3.org/2012/xquery\";
        declare %private %xq:public function local:foo() { () };
        local:foo()
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-pub-priv-30.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0106") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-31'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare %public %public function local:foo() { () };
        local:foo()
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-pub-priv-31.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0106") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-32'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare %private %private function local:foo() { () };
        local:foo()
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-pub-priv-32.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0106") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-33'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare %private %public variable $foo := ();
        $foo
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-pub-priv-33.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0116") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-34'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare namespace xq=\"http://www.w3.org/2012/xquery\";
        declare %private %xq:public variable $foo := ();
        $foo
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-pub-priv-34.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0116") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-35'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare %private %private variable $foo := ();
        $foo
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-pub-priv-35.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0116") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-36'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare %public %public variable $foo := ();
        $foo
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-pub-priv-36.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0116") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-37'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/module-pub-priv\"; 
        defs:f#0()
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/module-pub-priv.xq"),"http://www.w3.org/TestModules/module-pub-priv"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-pub-priv-37.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'modules-pub-priv-38'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/module-pub-priv\"; 
        <a>{defs:g#1(42)}</a>
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/module-pub-priv.xq"),"http://www.w3.org/TestModules/module-pub-priv"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "modules-pub-priv-38.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>65</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-module-001'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'cbcl-module-002'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
      	import module namespace lib=\"http://www.xqsharp.com/test/baseuri-lib\"; 
      	declare base-uri \"http://www.example.org/wrong/\"; 
      	base-uri($lib:node/node())
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/baseuri-lib.xq"),"http://www.xqsharp.com/test/baseuri-lib"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-module-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.org/correct/") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-module-003'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
      	import module namespace foo=\"http://www.xqsharp.com/test/variabledeclaration\"; 
      	import module namespace bar=\"http://www.xqsharp.com/test/variablereference\"; 
      	bar:test()
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "ModuleImport/variabledeclaration-lib.xq"),"http://www.xqsharp.com/test/variabledeclaration"},
{filename:join(BaseDir, "ModuleImport/variablereference-lib.xq"),"http://www.xqsharp.com/test/variablereference"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-module-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-module-004'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
