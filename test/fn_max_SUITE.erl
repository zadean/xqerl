-module('fn_max_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-maxint1args-1'/1]).
-export(['fn-maxint1args-2'/1]).
-export(['fn-maxint1args-3'/1]).
-export(['fn-maxintg1args-1'/1]).
-export(['fn-maxintg1args-2'/1]).
-export(['fn-maxintg1args-3'/1]).
-export(['fn-maxdec1args-1'/1]).
-export(['fn-maxdec1args-2'/1]).
-export(['fn-maxdec1args-3'/1]).
-export(['fn-maxdbl1args-1'/1]).
-export(['fn-maxdbl1args-2'/1]).
-export(['fn-maxdbl1args-3'/1]).
-export(['fn-maxflt1args-1'/1]).
-export(['fn-maxflt1args-2'/1]).
-export(['fn-maxflt1args-3'/1]).
-export(['fn-maxlng1args-1'/1]).
-export(['fn-maxlng1args-2'/1]).
-export(['fn-maxlng1args-3'/1]).
-export(['fn-maxusht1args-1'/1]).
-export(['fn-maxusht1args-2'/1]).
-export(['fn-maxusht1args-3'/1]).
-export(['fn-maxnint1args-1'/1]).
-export(['fn-maxnint1args-2'/1]).
-export(['fn-maxnint1args-3'/1]).
-export(['fn-maxpint1args-1'/1]).
-export(['fn-maxpint1args-2'/1]).
-export(['fn-maxpint1args-3'/1]).
-export(['fn-maxulng1args-1'/1]).
-export(['fn-maxulng1args-2'/1]).
-export(['fn-maxulng1args-3'/1]).
-export(['fn-maxnpi1args-1'/1]).
-export(['fn-maxnpi1args-2'/1]).
-export(['fn-maxnpi1args-3'/1]).
-export(['fn-maxnni1args-1'/1]).
-export(['fn-maxnni1args-2'/1]).
-export(['fn-maxnni1args-3'/1]).
-export(['fn-maxsht1args-1'/1]).
-export(['fn-maxsht1args-2'/1]).
-export(['fn-maxsht1args-3'/1]).
-export(['fn-maxint2args-1'/1]).
-export(['fn-maxint2args-2'/1]).
-export(['fn-maxint2args-3'/1]).
-export(['fn-maxint2args-4'/1]).
-export(['fn-maxint2args-5'/1]).
-export(['fn-maxintg2args-1'/1]).
-export(['fn-maxintg2args-2'/1]).
-export(['fn-maxintg2args-3'/1]).
-export(['fn-maxintg2args-4'/1]).
-export(['fn-maxintg2args-5'/1]).
-export(['fn-maxdec2args-1'/1]).
-export(['fn-maxdec2args-2'/1]).
-export(['fn-maxdec2args-3'/1]).
-export(['fn-maxdec2args-4'/1]).
-export(['fn-maxdec2args-5'/1]).
-export(['fn-maxdbl2args-1'/1]).
-export(['fn-maxdbl2args-2'/1]).
-export(['fn-maxdbl2args-3'/1]).
-export(['fn-maxdbl2args-4'/1]).
-export(['fn-maxdbl2args-5'/1]).
-export(['fn-maxflt2args-1'/1]).
-export(['fn-maxflt2args-2'/1]).
-export(['fn-maxflt2args-3'/1]).
-export(['fn-maxflt2args-4'/1]).
-export(['fn-maxflt2args-5'/1]).
-export(['fn-maxlng2args-1'/1]).
-export(['fn-maxlng2args-2'/1]).
-export(['fn-maxlng2args-3'/1]).
-export(['fn-maxlng2args-4'/1]).
-export(['fn-maxlng2args-5'/1]).
-export(['fn-maxusht2args-1'/1]).
-export(['fn-maxusht2args-2'/1]).
-export(['fn-maxusht2args-3'/1]).
-export(['fn-maxusht2args-4'/1]).
-export(['fn-maxusht2args-5'/1]).
-export(['fn-maxnint2args-1'/1]).
-export(['fn-maxnint2args-2'/1]).
-export(['fn-maxnint2args-3'/1]).
-export(['fn-maxnint2args-4'/1]).
-export(['fn-maxnint2args-5'/1]).
-export(['fn-maxpint2args-1'/1]).
-export(['fn-maxpint2args-2'/1]).
-export(['fn-maxpint2args-3'/1]).
-export(['fn-maxpint2args-4'/1]).
-export(['fn-maxpint2args-5'/1]).
-export(['fn-maxulng2args-1'/1]).
-export(['fn-maxulng2args-2'/1]).
-export(['fn-maxulng2args-3'/1]).
-export(['fn-maxulng2args-4'/1]).
-export(['fn-maxulng2args-5'/1]).
-export(['fn-maxnpi2args-1'/1]).
-export(['fn-maxnpi2args-2'/1]).
-export(['fn-maxnpi2args-3'/1]).
-export(['fn-maxnpi2args-4'/1]).
-export(['fn-maxnpi2args-5'/1]).
-export(['fn-maxnni2args-1'/1]).
-export(['fn-maxnni2args-2'/1]).
-export(['fn-maxnni2args-3'/1]).
-export(['fn-maxnni2args-4'/1]).
-export(['fn-maxnni2args-5'/1]).
-export(['fn-maxsht2args-1'/1]).
-export(['fn-maxsht2args-2'/1]).
-export(['fn-maxsht2args-3'/1]).
-export(['fn-maxsht2args-4'/1]).
-export(['fn-maxsht2args-5'/1]).
-export(['K-SeqMAXFunc-1'/1]).
-export(['K-SeqMAXFunc-2'/1]).
-export(['K-SeqMAXFunc-3'/1]).
-export(['K-SeqMAXFunc-4'/1]).
-export(['K-SeqMAXFunc-5'/1]).
-export(['K-SeqMAXFunc-6'/1]).
-export(['K-SeqMAXFunc-7'/1]).
-export(['K-SeqMAXFunc-8'/1]).
-export(['K-SeqMAXFunc-9'/1]).
-export(['K-SeqMAXFunc-10'/1]).
-export(['K-SeqMAXFunc-11'/1]).
-export(['K-SeqMAXFunc-12'/1]).
-export(['K-SeqMAXFunc-13'/1]).
-export(['K-SeqMAXFunc-14'/1]).
-export(['K-SeqMAXFunc-15'/1]).
-export(['K-SeqMAXFunc-16'/1]).
-export(['K-SeqMAXFunc-17'/1]).
-export(['K-SeqMAXFunc-18'/1]).
-export(['K-SeqMAXFunc-19'/1]).
-export(['K-SeqMAXFunc-20'/1]).
-export(['K-SeqMAXFunc-21'/1]).
-export(['K-SeqMAXFunc-22'/1]).
-export(['K-SeqMAXFunc-23'/1]).
-export(['K-SeqMAXFunc-24'/1]).
-export(['K-SeqMAXFunc-25'/1]).
-export(['K-SeqMAXFunc-26'/1]).
-export(['K-SeqMAXFunc-27'/1]).
-export(['K-SeqMAXFunc-28'/1]).
-export(['K-SeqMAXFunc-29'/1]).
-export(['K-SeqMAXFunc-30'/1]).
-export(['K-SeqMAXFunc-31'/1]).
-export(['K-SeqMAXFunc-32'/1]).
-export(['K-SeqMAXFunc-33'/1]).
-export(['K-SeqMAXFunc-34'/1]).
-export(['K-SeqMAXFunc-35'/1]).
-export(['K-SeqMAXFunc-36'/1]).
-export(['K-SeqMAXFunc-37'/1]).
-export(['K-SeqMAXFunc-38'/1]).
-export(['K-SeqMAXFunc-39'/1]).
-export(['K-SeqMAXFunc-40'/1]).
-export(['K-SeqMAXFunc-41'/1]).
-export(['K-SeqMAXFunc-42'/1]).
-export(['K-SeqMAXFunc-43'/1]).
-export(['K-SeqMAXFunc-44'/1]).
-export(['K-SeqMAXFunc-45'/1]).
-export(['K-SeqMAXFunc-46'/1]).
-export(['K-SeqMAXFunc-47'/1]).
-export(['K-SeqMAXFunc-48'/1]).
-export(['K-SeqMAXFunc-49'/1]).
-export(['K-SeqMAXFunc-50'/1]).
-export(['K-SeqMAXFunc-51'/1]).
-export(['K-SeqMAXFunc-52'/1]).
-export(['K-SeqMAXFunc-53'/1]).
-export(['K-SeqMAXFunc-54'/1]).
-export(['K-SeqMAXFunc-55'/1]).
-export(['K-SeqMAXFunc-56'/1]).
-export(['K-SeqMAXFunc-57'/1]).
-export(['K-SeqMAXFunc-58'/1]).
-export(['K-SeqMAXFunc-59'/1]).
-export(['K2-SeqMAXFunc-1'/1]).
-export(['K2-SeqMAXFunc-2'/1]).
-export(['K2-SeqMAXFunc-3'/1]).
-export(['K2-SeqMAXFunc-4'/1]).
-export(['K2-SeqMAXFunc-5'/1]).
-export(['K2-SeqMAXFunc-6'/1]).
-export(['K2-SeqMAXFunc-7'/1]).
-export(['fn-max-1'/1]).
-export(['fn-max-2'/1]).
-export(['fn-max-3'/1]).
-export(['fn-max-4'/1]).
-export(['fn-max-5'/1]).
-export(['fn-max-6'/1]).
-export(['fn-max-7'/1]).
-export(['fn-max-8'/1]).
-export(['fn-max-9'/1]).
-export(['fn-max-10'/1]).
-export(['fn-max-11'/1]).
-export(['fn-max-12'/1]).
-export(['fn-max-13'/1]).
-export(['fn-max-14'/1]).
-export(['fn-max-15'/1]).
-export(['fn-max-16'/1]).
-export(['fn-max-17'/1]).
-export(['fn-max-18'/1]).
-export(['fn-max-19'/1]).
-export(['cbcl-max-001'/1]).
-export(['cbcl-max-002'/1]).
-export(['cbcl-max-003'/1]).
-export(['cbcl-max-004'/1]).
-export(['cbcl-max-005'/1]).
-export(['cbcl-max-006'/1]).
-export(['cbcl-max-007'/1]).
-export(['cbcl-max-008'/1]).
-export(['cbcl-max-009'/1]).
-export(['cbcl-max-010'/1]).
-export(['cbcl-max-011'/1]).
-export(['cbcl-max-012'/1]).
-export(['cbcl-max-013'/1]).
-export(['cbcl-max-014'/1]).
-export(['cbcl-max-015'/1]).
-export(['cbcl-max-016'/1]).
-export(['cbcl-max-017'/1]).
-export(['cbcl-max-018'/1]).
-export(['cbcl-max-019'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> ct:timetrap({seconds,60}), xqerl_module:unload(all).
init_per_suite(Config) -> 
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   BaseDir = filename:join(TD, "fn")

,[{base_dir, BaseDir}|Config].
all() -> [
   'fn-maxint1args-1',
   'fn-maxint1args-2',
   'fn-maxint1args-3',
   'fn-maxintg1args-1',
   'fn-maxintg1args-2',
   'fn-maxintg1args-3',
   'fn-maxdec1args-1',
   'fn-maxdec1args-2',
   'fn-maxdec1args-3',
   'fn-maxdbl1args-1',
   'fn-maxdbl1args-2',
   'fn-maxdbl1args-3',
   'fn-maxflt1args-1',
   'fn-maxflt1args-2',
   'fn-maxflt1args-3',
   'fn-maxlng1args-1',
   'fn-maxlng1args-2',
   'fn-maxlng1args-3',
   'fn-maxusht1args-1',
   'fn-maxusht1args-2',
   'fn-maxusht1args-3',
   'fn-maxnint1args-1',
   'fn-maxnint1args-2',
   'fn-maxnint1args-3',
   'fn-maxpint1args-1',
   'fn-maxpint1args-2',
   'fn-maxpint1args-3',
   'fn-maxulng1args-1',
   'fn-maxulng1args-2',
   'fn-maxulng1args-3',
   'fn-maxnpi1args-1',
   'fn-maxnpi1args-2',
   'fn-maxnpi1args-3',
   'fn-maxnni1args-1',
   'fn-maxnni1args-2',
   'fn-maxnni1args-3',
   'fn-maxsht1args-1',
   'fn-maxsht1args-2',
   'fn-maxsht1args-3',
   'fn-maxint2args-1',
   'fn-maxint2args-2',
   'fn-maxint2args-3',
   'fn-maxint2args-4',
   'fn-maxint2args-5',
   'fn-maxintg2args-1',
   'fn-maxintg2args-2',
   'fn-maxintg2args-3',
   'fn-maxintg2args-4',
   'fn-maxintg2args-5',
   'fn-maxdec2args-1',
   'fn-maxdec2args-2',
   'fn-maxdec2args-3',
   'fn-maxdec2args-4',
   'fn-maxdec2args-5',
   'fn-maxdbl2args-1',
   'fn-maxdbl2args-2',
   'fn-maxdbl2args-3',
   'fn-maxdbl2args-4',
   'fn-maxdbl2args-5',
   'fn-maxflt2args-1',
   'fn-maxflt2args-2',
   'fn-maxflt2args-3',
   'fn-maxflt2args-4',
   'fn-maxflt2args-5',
   'fn-maxlng2args-1',
   'fn-maxlng2args-2',
   'fn-maxlng2args-3',
   'fn-maxlng2args-4',
   'fn-maxlng2args-5',
   'fn-maxusht2args-1',
   'fn-maxusht2args-2',
   'fn-maxusht2args-3',
   'fn-maxusht2args-4',
   'fn-maxusht2args-5',
   'fn-maxnint2args-1',
   'fn-maxnint2args-2',
   'fn-maxnint2args-3',
   'fn-maxnint2args-4',
   'fn-maxnint2args-5',
   'fn-maxpint2args-1',
   'fn-maxpint2args-2',
   'fn-maxpint2args-3',
   'fn-maxpint2args-4',
   'fn-maxpint2args-5',
   'fn-maxulng2args-1',
   'fn-maxulng2args-2',
   'fn-maxulng2args-3',
   'fn-maxulng2args-4',
   'fn-maxulng2args-5',
   'fn-maxnpi2args-1',
   'fn-maxnpi2args-2',
   'fn-maxnpi2args-3',
   'fn-maxnpi2args-4',
   'fn-maxnpi2args-5',
   'fn-maxnni2args-1',
   'fn-maxnni2args-2',
   'fn-maxnni2args-3',
   'fn-maxnni2args-4',
   'fn-maxnni2args-5',
   'fn-maxsht2args-1',
   'fn-maxsht2args-2',
   'fn-maxsht2args-3',
   'fn-maxsht2args-4',
   'fn-maxsht2args-5',
   'K-SeqMAXFunc-1',
   'K-SeqMAXFunc-2',
   'K-SeqMAXFunc-3',
   'K-SeqMAXFunc-4',
   'K-SeqMAXFunc-5',
   'K-SeqMAXFunc-6',
   'K-SeqMAXFunc-7',
   'K-SeqMAXFunc-8',
   'K-SeqMAXFunc-9',
   'K-SeqMAXFunc-10',
   'K-SeqMAXFunc-11',
   'K-SeqMAXFunc-12',
   'K-SeqMAXFunc-13',
   'K-SeqMAXFunc-14',
   'K-SeqMAXFunc-15',
   'K-SeqMAXFunc-16',
   'K-SeqMAXFunc-17',
   'K-SeqMAXFunc-18',
   'K-SeqMAXFunc-19',
   'K-SeqMAXFunc-20',
   'K-SeqMAXFunc-21',
   'K-SeqMAXFunc-22',
   'K-SeqMAXFunc-23',
   'K-SeqMAXFunc-24',
   'K-SeqMAXFunc-25',
   'K-SeqMAXFunc-26',
   'K-SeqMAXFunc-27',
   'K-SeqMAXFunc-28',
   'K-SeqMAXFunc-29',
   'K-SeqMAXFunc-30',
   'K-SeqMAXFunc-31',
   'K-SeqMAXFunc-32',
   'K-SeqMAXFunc-33',
   'K-SeqMAXFunc-34',
   'K-SeqMAXFunc-35',
   'K-SeqMAXFunc-36',
   'K-SeqMAXFunc-37',
   'K-SeqMAXFunc-38',
   'K-SeqMAXFunc-39',
   'K-SeqMAXFunc-40',
   'K-SeqMAXFunc-41',
   'K-SeqMAXFunc-42',
   'K-SeqMAXFunc-43',
   'K-SeqMAXFunc-44',
   'K-SeqMAXFunc-45',
   'K-SeqMAXFunc-46',
   'K-SeqMAXFunc-47',
   'K-SeqMAXFunc-48',
   'K-SeqMAXFunc-49',
   'K-SeqMAXFunc-50',
   'K-SeqMAXFunc-51',
   'K-SeqMAXFunc-52',
   'K-SeqMAXFunc-53',
   'K-SeqMAXFunc-54',
   'K-SeqMAXFunc-55',
   'K-SeqMAXFunc-56',
   'K-SeqMAXFunc-57',
   'K-SeqMAXFunc-58',
   'K-SeqMAXFunc-59',
   'K2-SeqMAXFunc-1',
   'K2-SeqMAXFunc-2',
   'K2-SeqMAXFunc-3',
   'K2-SeqMAXFunc-4',
   'K2-SeqMAXFunc-5',
   'K2-SeqMAXFunc-6',
   'K2-SeqMAXFunc-7',
   'fn-max-1',
   'fn-max-2',
   'fn-max-3',
   'fn-max-4',
   'fn-max-5',
   'fn-max-6',
   'fn-max-7',
   'fn-max-8',
   'fn-max-9',
   'fn-max-10',
   'fn-max-11',
   'fn-max-12',
   'fn-max-13',
   'fn-max-14',
   'fn-max-15',
   'fn-max-16',
   'fn-max-17',
   'fn-max-18',
   'fn-max-19',
   'cbcl-max-001',
   'cbcl-max-002',
   'cbcl-max-003',
   'cbcl-max-004',
   'cbcl-max-005',
   'cbcl-max-006',
   'cbcl-max-007',
   'cbcl-max-008',
   'cbcl-max-009',
   'cbcl-max-010',
   'cbcl-max-011',
   'cbcl-max-012',
   'cbcl-max-013',
   'cbcl-max-014',
   'cbcl-max-015',
   'cbcl-max-016',
   'cbcl-max-017',
   'cbcl-max-018',
   'cbcl-max-019'].
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
'fn-maxint1args-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:int(\"-2147483648\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxint1args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-2147483648") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxint1args-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:int(\"-1873914410\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxint1args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1873914410") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxint1args-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:int(\"2147483647\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxint1args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2147483647") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxintg1args-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:integer(\"-999999999999999999\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxintg1args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxintg1args-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:integer(\"830993497117024304\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxintg1args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"830993497117024304") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxintg1args-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:integer(\"999999999999999999\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxintg1args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxdec1args-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:decimal(\"-999999999999999999\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxdec1args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxdec1args-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:decimal(\"617375191608514839\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxdec1args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"617375191608514839") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxdec1args-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:decimal(\"999999999999999999\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxdec1args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxdbl1args-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:double(\"-1.7976931348623157E308\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxdbl1args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1.7976931348623157E308") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxdbl1args-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:double(\"0\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxdbl1args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxdbl1args-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:double(\"1.7976931348623157E308\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxdbl1args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1.7976931348623157E308") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxflt1args-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:float(\"-3.4028235E38\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxflt1args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"xs:float(\"-3.4028235E38\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxflt1args-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:float(\"0\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxflt1args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxflt1args-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:float(\"3.4028235E38\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxflt1args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"xs:float(\"3.4028235E38\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxlng1args-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:long(\"-92233720368547758\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxlng1args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-92233720368547758") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxlng1args-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:long(\"-47175562203048468\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxlng1args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-47175562203048468") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxlng1args-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:long(\"92233720368547758\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxlng1args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"92233720368547758") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxusht1args-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:unsignedShort(\"0\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxusht1args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxusht1args-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:unsignedShort(\"44633\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxusht1args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"44633") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxusht1args-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:unsignedShort(\"65535\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxusht1args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"65535") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxnint1args-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:negativeInteger(\"-999999999999999999\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxnint1args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxnint1args-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:negativeInteger(\"-297014075999096793\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxnint1args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-297014075999096793") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxnint1args-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:negativeInteger(\"-1\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxnint1args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxpint1args-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:positiveInteger(\"1\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxpint1args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxpint1args-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:positiveInteger(\"52704602390610033\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxpint1args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"52704602390610033") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxpint1args-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:positiveInteger(\"999999999999999999\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxpint1args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxulng1args-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:unsignedLong(\"0\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxulng1args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxulng1args-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:unsignedLong(\"130747108607674654\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxulng1args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"130747108607674654") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxulng1args-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:unsignedLong(\"184467440737095516\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxulng1args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"184467440737095516") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxnpi1args-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:nonPositiveInteger(\"-999999999999999999\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxnpi1args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxnpi1args-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:nonPositiveInteger(\"-475688437271870490\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxnpi1args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-475688437271870490") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxnpi1args-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:nonPositiveInteger(\"0\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxnpi1args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxnni1args-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:nonNegativeInteger(\"0\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxnni1args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxnni1args-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:nonNegativeInteger(\"303884545991464527\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxnni1args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"303884545991464527") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxnni1args-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:nonNegativeInteger(\"999999999999999999\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxnni1args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxsht1args-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:short(\"-32768\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxsht1args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-32768") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxsht1args-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:short(\"-5324\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxsht1args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-5324") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxsht1args-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:short(\"32767\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxsht1args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"32767") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxint2args-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:int(\"-2147483648\"),xs:int(\"-2147483648\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxint2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-2147483648") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxint2args-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:int(\"-1873914410\"),xs:int(\"-2147483648\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxint2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1873914410") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxint2args-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:int(\"2147483647\"),xs:int(\"-2147483648\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxint2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2147483647") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxint2args-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:int(\"-2147483648\"),xs:int(\"-1873914410\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxint2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1873914410") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxint2args-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:int(\"-2147483648\"),xs:int(\"2147483647\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxint2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2147483647") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxintg2args-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:integer(\"-999999999999999999\"),xs:integer(\"-999999999999999999\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxintg2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxintg2args-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:integer(\"830993497117024304\"),xs:integer(\"-999999999999999999\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxintg2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"830993497117024304") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxintg2args-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:integer(\"999999999999999999\"),xs:integer(\"-999999999999999999\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxintg2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxintg2args-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:integer(\"-999999999999999999\"),xs:integer(\"830993497117024304\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxintg2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"830993497117024304") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxintg2args-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:integer(\"-999999999999999999\"),xs:integer(\"999999999999999999\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxintg2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxdec2args-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:decimal(\"-999999999999999999\"),xs:decimal(\"-999999999999999999\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxdec2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxdec2args-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:decimal(\"617375191608514839\"),xs:decimal(\"-999999999999999999\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxdec2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"617375191608514839") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxdec2args-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:decimal(\"999999999999999999\"),xs:decimal(\"-999999999999999999\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxdec2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxdec2args-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:decimal(\"-999999999999999999\"),xs:decimal(\"617375191608514839\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxdec2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"617375191608514839") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxdec2args-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:decimal(\"-999999999999999999\"),xs:decimal(\"999999999999999999\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxdec2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxdbl2args-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:double(\"-1.7976931348623157E308\"),xs:double(\"-1.7976931348623157E308\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxdbl2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1.7976931348623157E308") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxdbl2args-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:double(\"0\"),xs:double(\"-1.7976931348623157E308\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxdbl2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxdbl2args-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:double(\"1.7976931348623157E308\"),xs:double(\"-1.7976931348623157E308\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxdbl2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1.7976931348623157E308") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxdbl2args-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:double(\"-1.7976931348623157E308\"),xs:double(\"0\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxdbl2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxdbl2args-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:double(\"-1.7976931348623157E308\"),xs:double(\"1.7976931348623157E308\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxdbl2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1.7976931348623157E308") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxflt2args-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:float(\"-3.4028235E38\"),xs:float(\"-3.4028235E38\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxflt2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"xs:float(-3.4028235E38)") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxflt2args-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:float(\"0\"),xs:float(\"-3.4028235E38\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxflt2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxflt2args-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:float(\"3.4028235E38\"),xs:float(\"-3.4028235E38\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxflt2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"xs:float(3.4028235E38)") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxflt2args-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:float(\"-3.4028235E38\"),xs:float(\"0\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxflt2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxflt2args-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:float(\"-3.4028235E38\"),xs:float(\"3.4028235E38\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxflt2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"xs:float(3.4028235E38)") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxlng2args-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:long(\"-92233720368547758\"),xs:long(\"-92233720368547758\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxlng2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-92233720368547758") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxlng2args-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:long(\"-47175562203048468\"),xs:long(\"-92233720368547758\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxlng2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-47175562203048468") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxlng2args-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:long(\"92233720368547758\"),xs:long(\"-92233720368547758\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxlng2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"92233720368547758") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxlng2args-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:long(\"-92233720368547758\"),xs:long(\"-47175562203048468\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxlng2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-47175562203048468") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxlng2args-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:long(\"-92233720368547758\"),xs:long(\"92233720368547758\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxlng2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"92233720368547758") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxusht2args-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:unsignedShort(\"0\"),xs:unsignedShort(\"0\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxusht2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxusht2args-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:unsignedShort(\"44633\"),xs:unsignedShort(\"0\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxusht2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"44633") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxusht2args-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:unsignedShort(\"65535\"),xs:unsignedShort(\"0\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxusht2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"65535") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxusht2args-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:unsignedShort(\"0\"),xs:unsignedShort(\"44633\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxusht2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"44633") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxusht2args-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:unsignedShort(\"0\"),xs:unsignedShort(\"65535\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxusht2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"65535") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxnint2args-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:negativeInteger(\"-999999999999999999\"),xs:negativeInteger(\"-999999999999999999\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxnint2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxnint2args-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:negativeInteger(\"-297014075999096793\"),xs:negativeInteger(\"-999999999999999999\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxnint2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-297014075999096793") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxnint2args-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:negativeInteger(\"-1\"),xs:negativeInteger(\"-999999999999999999\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxnint2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxnint2args-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:negativeInteger(\"-999999999999999999\"),xs:negativeInteger(\"-297014075999096793\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxnint2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-297014075999096793") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxnint2args-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:negativeInteger(\"-999999999999999999\"),xs:negativeInteger(\"-1\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxnint2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxpint2args-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:positiveInteger(\"1\"),xs:positiveInteger(\"1\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxpint2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxpint2args-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:positiveInteger(\"52704602390610033\"),xs:positiveInteger(\"1\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxpint2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"52704602390610033") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxpint2args-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:positiveInteger(\"999999999999999999\"),xs:positiveInteger(\"1\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxpint2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxpint2args-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:positiveInteger(\"1\"),xs:positiveInteger(\"52704602390610033\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxpint2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"52704602390610033") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxpint2args-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:positiveInteger(\"1\"),xs:positiveInteger(\"999999999999999999\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxpint2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxulng2args-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:unsignedLong(\"0\"),xs:unsignedLong(\"0\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxulng2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxulng2args-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:unsignedLong(\"130747108607674654\"),xs:unsignedLong(\"0\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxulng2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"130747108607674654") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxulng2args-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:unsignedLong(\"184467440737095516\"),xs:unsignedLong(\"0\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxulng2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"184467440737095516") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxulng2args-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:unsignedLong(\"0\"),xs:unsignedLong(\"130747108607674654\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxulng2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"130747108607674654") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxulng2args-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:unsignedLong(\"0\"),xs:unsignedLong(\"184467440737095516\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxulng2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"184467440737095516") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxnpi2args-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:nonPositiveInteger(\"-999999999999999999\"),xs:nonPositiveInteger(\"-999999999999999999\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxnpi2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxnpi2args-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:nonPositiveInteger(\"-475688437271870490\"),xs:nonPositiveInteger(\"-999999999999999999\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxnpi2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-475688437271870490") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxnpi2args-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:nonPositiveInteger(\"0\"),xs:nonPositiveInteger(\"-999999999999999999\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxnpi2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxnpi2args-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:nonPositiveInteger(\"-999999999999999999\"),xs:nonPositiveInteger(\"-475688437271870490\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxnpi2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-475688437271870490") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxnpi2args-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:nonPositiveInteger(\"-999999999999999999\"),xs:nonPositiveInteger(\"0\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxnpi2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxnni2args-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:nonNegativeInteger(\"0\"),xs:nonNegativeInteger(\"0\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxnni2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxnni2args-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:nonNegativeInteger(\"303884545991464527\"),xs:nonNegativeInteger(\"0\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxnni2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"303884545991464527") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxnni2args-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:nonNegativeInteger(\"999999999999999999\"),xs:nonNegativeInteger(\"0\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxnni2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxnni2args-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:nonNegativeInteger(\"0\"),xs:nonNegativeInteger(\"303884545991464527\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxnni2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"303884545991464527") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxnni2args-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:nonNegativeInteger(\"0\"),xs:nonNegativeInteger(\"999999999999999999\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxnni2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxsht2args-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:short(\"-32768\"),xs:short(\"-32768\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxsht2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-32768") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxsht2args-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:short(\"-5324\"),xs:short(\"-32768\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxsht2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-5324") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxsht2args-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:short(\"32767\"),xs:short(\"-32768\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxsht2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"32767") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxsht2args-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:short(\"-32768\"),xs:short(\"-5324\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxsht2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-5324") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-maxsht2args-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:short(\"-32768\"),xs:short(\"32767\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-maxsht2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"32767") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqMAXFunc-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqMAXFunc-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqMAXFunc-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max(\"a string\", \"http://www.w3.org/2005/xpath-functions/collation/codepoint\", \"wrong param\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqMAXFunc-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqMAXFunc-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "empty(max(()))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqMAXFunc-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqMAXFunc-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max((3, 3, 3, 3, 3, 3)) eq 3",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqMAXFunc-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqMAXFunc-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max((3, 1, 1, 1, 1, 1)) eq 3",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqMAXFunc-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqMAXFunc-6'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max((1, 1, 1, 1, 1, 3)) eq 3",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqMAXFunc-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqMAXFunc-7'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max((3, 1, 5, 1, 1, 3)) eq 5",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqMAXFunc-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqMAXFunc-8'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max((3, -5.0, 5, 1, -3, 3)) eq 5",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqMAXFunc-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqMAXFunc-9'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max(xs:untypedAtomic(\"3\")) instance of xs:double",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqMAXFunc-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqMAXFunc-10'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max(xs:untypedAtomic(\"3\")) eq 3",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqMAXFunc-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqMAXFunc-11'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max((xs:untypedAtomic(\"3\"), 1, 2)) instance of xs:double",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqMAXFunc-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqMAXFunc-12'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max((1, xs:float(2), xs:untypedAtomic(\"3\"))) eq 3",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqMAXFunc-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqMAXFunc-13'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max((1, xs:float(2), xs:untypedAtomic(\"3\"))) instance of xs:double",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqMAXFunc-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqMAXFunc-14'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max((1, xs:float(2), xs:decimal(3))) instance of xs:float",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqMAXFunc-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqMAXFunc-15'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max((1, xs:untypedAtomic(\"3\"), xs:float(2))) instance of xs:double",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqMAXFunc-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqMAXFunc-16'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "string(max((1, xs:untypedAtomic(\"NaN\"), xs:float(2)))) eq \"NaN\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqMAXFunc-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqMAXFunc-17'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "string(max((xs:float(\"NaN\"), xs:untypedAtomic(\"3\"), xs:float(2)))) eq \"NaN\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqMAXFunc-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqMAXFunc-18'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max((xs:float(\"NaN\"), xs:untypedAtomic(\"3\"), xs:float(2))) instance of xs:double",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqMAXFunc-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqMAXFunc-19'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max((xs:float(\"NaN\"), 1, 1, 2, xs:double(\"NaN\"))) instance of xs:double",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqMAXFunc-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqMAXFunc-20'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max((xs:double(\"NaN\"), 1, 1, 2, xs:float(\"NaN\"))) instance of xs:double",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqMAXFunc-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqMAXFunc-21'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max((xs:float(\"NaN\"), 1, \"a string\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqMAXFunc-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqMAXFunc-22'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max((\"a string\", 1, xs:float(\"NaN\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqMAXFunc-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqMAXFunc-23'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max((xs:float(\"NaN\"), 1, xs:untypedAtomic(\"one\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqMAXFunc-23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqMAXFunc-24'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max((xs:untypedAtomic(\"one\"), 1, xs:float(\"NaN\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqMAXFunc-24.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqMAXFunc-25'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "string(max((xs:double(\"NaN\"), xs:double(\"NaN\")))) eq \"NaN\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqMAXFunc-25.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqMAXFunc-26'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "string(max((xs:float(\"NaN\"), xs:float(\"NaN\")))) eq \"NaN\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqMAXFunc-26.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqMAXFunc-27'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "string(max((3, xs:double(\"NaN\")))) eq \"NaN\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqMAXFunc-27.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqMAXFunc-28'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "string(max((3, xs:float(\"NaN\")))) eq \"NaN\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqMAXFunc-28.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqMAXFunc-29'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max((3, xs:double(\"NaN\"))) instance of xs:double",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqMAXFunc-29.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqMAXFunc-30'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max((3, xs:float(\"NaN\"))) instance of xs:float",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqMAXFunc-30.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqMAXFunc-31'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "string(max((xs:float(-3), xs:untypedAtomic(\"3\"), xs:double(\"NaN\")))) eq \"NaN\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqMAXFunc-31.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqMAXFunc-32'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max((xs:float(-3), xs:untypedAtomic(\"3\"), xs:double(\"NaN\"))) instance of xs:double",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqMAXFunc-32.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqMAXFunc-33'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "string(max(xs:float(\"NaN\"))) eq \"NaN\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqMAXFunc-33.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqMAXFunc-34'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "string(max(xs:double(\"NaN\"))) eq \"NaN\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqMAXFunc-34.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqMAXFunc-35'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max(xs:untypedAtomic(\"three\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqMAXFunc-35.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqMAXFunc-36'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max((xs:untypedAtomic(\"3\"), \"a string\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqMAXFunc-36.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqMAXFunc-37'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max((\"a string\", xs:untypedAtomic(\"3\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqMAXFunc-37.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqMAXFunc-38'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max(QName(\"example.com/\", \"ncname\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqMAXFunc-38.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqMAXFunc-39'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max(xs:anyURI(\"example.com/\")) eq xs:anyURI(\"example.com/\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqMAXFunc-39.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqMAXFunc-40'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max((xs:anyURI(\"example.com/\"), xs:anyURI(\"example.com/\"))) eq xs:anyURI(\"example.com/\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqMAXFunc-40.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqMAXFunc-41'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max((\"a string\")) eq \"a string\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqMAXFunc-41.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqMAXFunc-42'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max((\"a string\", QName(\"example.com/\", \"ncname\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqMAXFunc-42.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqMAXFunc-43'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max((5, 5.0e0)) eq 5.0e0",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqMAXFunc-43.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqMAXFunc-44'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max((5, 5.0e0)) instance of xs:double",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqMAXFunc-44.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqMAXFunc-45'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max((5, 3.0e0)) instance of xs:double",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqMAXFunc-45.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqMAXFunc-46'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max((5.0e0, 5)) instance of xs:double",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqMAXFunc-46.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqMAXFunc-47'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max((3, 5.0e0)) instance of xs:double",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqMAXFunc-47.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqMAXFunc-48'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max((5.0e0, 3)) instance of xs:double",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqMAXFunc-48.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqMAXFunc-49'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max((1, 1, 1, 1, 1.0)) instance of xs:decimal",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqMAXFunc-49.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqMAXFunc-50'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max((1.0, 1, 1, 1, 1)) instance of xs:decimal",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqMAXFunc-50.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqMAXFunc-51'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max((1.0, 1, 1.0, 1, 1)) instance of xs:decimal",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqMAXFunc-51.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqMAXFunc-52'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max((5.0e0, 5)) eq 5.0e0",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqMAXFunc-52.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqMAXFunc-53'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max((3, 5.0e0)) eq 5.0e0",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqMAXFunc-53.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqMAXFunc-54'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max((5.0e0, 3)) eq 5.0e0",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqMAXFunc-54.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqMAXFunc-55'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max((current-date(), xs:date(\"1999-01-01\"))) eq current-date()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqMAXFunc-55.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqMAXFunc-56'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max((3,4,5)) eq 5",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqMAXFunc-56.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqMAXFunc-57'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max((5, 5.0e0)) eq 5.0e0",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqMAXFunc-57.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqMAXFunc-58'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max((3,4, \"Zero\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqMAXFunc-58.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqMAXFunc-59'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max((\"a\", \"b\", \"c\")) eq \"c\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqMAXFunc-59.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-SeqMAXFunc-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max((xs:anyURI(\"http://example.com/A\"), xs:anyURI(\"http://example.com/A\"))) eq xs:anyURI(\"http://example.com/A\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-SeqMAXFunc-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-SeqMAXFunc-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max((xs:anyURI(\"http://example.com/B\"), xs:anyURI(\"http://example.com/A\"))) eq xs:anyURI(\"http://example.com/B\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-SeqMAXFunc-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-SeqMAXFunc-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max((xs:anyURI(\"http://example.com/8\"), xs:anyURI(\"http://example.com/4\"))) eq xs:anyURI(\"http://example.com/8\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-SeqMAXFunc-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-SeqMAXFunc-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max((\"str1\", \"str2\"), \"http://example.com/UNSUPPORTED_COLLATION\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-SeqMAXFunc-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-SeqMAXFunc-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max((\"str1\", \"str2\"), \"http://www.w3.org/2005/xpath-functions/collation/codepoint\", ())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-SeqMAXFunc-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-SeqMAXFunc-6'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max(xs:anyURI(\"str1\"), \"max://example.com/UNSUPPORTED_COLLATION\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-SeqMAXFunc-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"xs:anyURI(\"str1\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-SeqMAXFunc-7'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max(xs:unsignedShort(\"1\")) instance of xs:unsignedShort",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-SeqMAXFunc-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-max-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((3,4,\"Zero\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-max-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-max-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:max((xs:integer(5000000000),xs:double(3e0)))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-max-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"5.0E9") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-max-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "let $var := fn:max((xs:long(20),xs:short(13))) return $var instance of xs:integer",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-max-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-max-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max((xs:dayTimeDuration(\"P1D\"), xs:dayTimeDuration(\"PT2H\"))) instance of xs:dayTimeDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-max-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-max-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max(for $x in 1 to 10 return xs:dayTimeDuration(concat(\"PT\",$x,\"H\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-max-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "PT10H") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-max-6'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max((xs:yearMonthDuration(\"P1Y\"), xs:yearMonthDuration(\"P1M\"))) instance of xs:yearMonthDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-max-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-max-7'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max(for $x in 1 to 10 return xs:yearMonthDuration(concat(\"P\",$x,\"M\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-max-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "P10M") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-max-8'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max((xs:yearMonthDuration(\"P1Y\"), xs:dayTimeDuration(\"P1D\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-max-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"FORG0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-max-9'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max(xs:duration(\"P1Y1M1D\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-max-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"FORG0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-max-10'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "for $p in 1 to 4 let $x := (xs:integer(1), xs:decimal(2), xs:float(3), xs:double(4))[position() le $p] return typeswitch (max($x)) case xs:integer return \"integer\" case xs:decimal return \"decimal\" case xs:float return \"float\" case xs:double return \"double\" default return error()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-max-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "integer decimal float double") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-max-11'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max((\"a\", \"b\", \"c\", \"d\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-max-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "d") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-max-12'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max((xs:date('1066-10-02'), xs:date('1588-08-08'), xs:date('2011-06-29')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-max-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2011-06-29") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-max-13'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max((xs:NCName('c'), xs:ID('b'), xs:token('a')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-max-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"\"c\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"xs:NCName") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-max-14'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max((xs:positiveInteger(123), xs:unsignedShort(124)))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-max-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"124") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"xs:nonNegativeInteger") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-max-15'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max((xs:positiveInteger(123), xs:unsignedShort(124)))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-max-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"124") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"xs:unsignedShort") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-max-16'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max((xs:anyURI(\"http://c.com\"), \"http://b.com\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-max-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"\"http://c.com\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-max-17'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max((xs:anyURI(\"http://a.com\"), xs:anyURI(\"http://b.com\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-max-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"\"http://b.com\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"xs:anyURI") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-max-18'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max((xs:token(\"zither\"), xs:anyURI(\"http://b.com\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-max-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"\"zither\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"xs:token") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-max-19'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "max([1,2,3,4,5])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-max-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"5") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-max-001'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:f($x as xs:integer) { 
      		if ($x = 0) then true() else false() 
      	}; 
      	max(for $x in (1,2,3) return local:f($x))
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-max-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-max-002'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:f($x as xs:integer) { 
      		if ($x = 2) then true() else false() 
      	}; 
      	max(for $x in (1,2,3) return local:f($x))
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-max-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-max-003'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:f($x as xs:integer) { 
      		if ($x = 3) then $x else false() 
      	}; 
      	max(for $x in (1,2,3) return local:f($x))
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-max-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-max-004'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:f($x as xs:integer) {
      		 if ($x < 3) then current-date() else current-time() 
      	}; 
      	max(for $x in (1,2,3) return local:f($x))
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-max-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-max-005'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:f($x as xs:integer) { 
      		if ($x = 2) then xs:dateTime(\"3000-12-01T12:00:00\") else current-dateTime() 
      	}; 
      	max(for $x in (1,2,3) return local:f($x))
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-max-005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "3000-12-01T12:00:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-max-006'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:f($x as xs:integer) { 
      		if ($x < 3) then current-dateTime() else xs:dayTimeDuration(\"PT3S\") 
      	}; 
      	max(for $x in (1,2,3) return local:f($x))
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-max-006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-max-007'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:f($x as xs:integer) { 
      		if ($x = 2) then xs:dayTimeDuration(\"P1D\") else xs:dayTimeDuration(\"PT3S\") 
      	}; 
      	max(for $x in (1,2,3) return local:f($x))
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-max-007.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "P1D") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-max-008'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:f($x as xs:integer) {
      		 if ($x = 3) then xs:duration(\"P1D\") else xs:dayTimeDuration(\"PT3S\") 
      	}; 
      	max(for $x in (1,2,3) return local:f($x))
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-max-008.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-max-009'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:f($x as xs:integer) {
      		 (xs:decimal(1.1), xs:float(2.2), xs:double(1.4), xs:integer(2))[$x] 
      	}; 
      	max(for $x in (1,2,3) return local:f($x)) instance of xs:double
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-max-009.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-max-010'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:f($x as xs:integer) { 
      		(xs:decimal(1.3), xs:float(1.2), xs:double(1.4), xs:integer(2))[$x] 
      	}; 
      	max(for $x in (1,2,3) return local:f($x)) instance of xs:double
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-max-010.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-max-011'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:f($x as xs:integer) {
      		 (xs:decimal(1.1), xs:float(1.2), xs:double(0.4), xs:string(\"2\"))[$x] 
      	}; 
      	max(for $x in (1,4,2,3) return local:f($x))
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-max-011.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-max-012'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:f($x as xs:integer) { 
      		(xs:decimal(1.1), xs:float(1.2), xs:double(0.4), xs:integer(\"-3\"))[$x] 
      	}; 
      	max(for $x in (4,2,1,3) return local:f($x)) instance of xs:double
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-max-012.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-max-013'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:f($x as xs:integer) { 
      		if ($x = 2) then xs:time(\"12:00:00-01:00\") else xs:time(\"12:00:00+01:00\") 
      	}; 
      	max(for $x in (1,2,3) return local:f($x))
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-max-013.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "12:00:00-01:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-max-014'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:f($x as xs:integer) { 
      		if ($x < 3) then current-time() else xs:dayTimeDuration(\"PT3S\") 
      	}; 
      	max(for $x in (1,2,3) return local:f($x))
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-max-014.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-max-015'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:f($x as xs:integer) { 
      		if ($x = 2) then xs:yearMonthDuration(\"P13M\") else xs:yearMonthDuration(\"P1Y\") 
      	};
      	max(for $x in (1,2,3) return local:f($x))
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-max-015.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "P1Y1M") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-max-016'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:f($x as xs:integer) { 
      		if ($x = 3) then xs:duration(\"P1Y\") else xs:yearMonthDuration(\"P11M\") 
      	}; 
      	max(for $x in (1,2,3) return local:f($x))
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-max-016.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-max-017'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:f($x as xs:integer) as xs:duration { 
      		if ($x = 1) then xs:duration(\"P1Y\") else xs:yearMonthDuration(\"P11M\") 
      	}; 
      	max(for $x in (1,2,3) return local:f($x))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-max-017.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-max-018'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:f($x as xs:integer) as xs:integer { $x }; 
      	max(local:f(4) to local:f(10))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-max-018.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "10") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-max-019'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "if (max(for $x in 1 to 10 return $x mod 9 = 0)) then true() else false()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-max-019.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
