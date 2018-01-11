-module('prod_Predicate_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['filterexpressionhc1'/1]).
-export(['filterexpressionhc2'/1]).
-export(['filterexpressionhc3'/1]).
-export(['filterexpressionhc4'/1]).
-export(['filterexpressionhc5'/1]).
-export(['filterexpressionhc6'/1]).
-export(['filterexpressionhc7'/1]).
-export(['filterexpressionhc8'/1]).
-export(['filterexpressionhc9'/1]).
-export(['filterexpressionhc10'/1]).
-export(['filterexpressionhc11'/1]).
-export(['filterexpressionhc12'/1]).
-export(['filterexpressionhc13'/1]).
-export(['filterexpressionhc14'/1]).
-export(['filterexpressionhc15'/1]).
-export(['filterexpressionhc16'/1]).
-export(['filterexpressionhc17'/1]).
-export(['filterexpressionhc18'/1]).
-export(['filterexpressionhc19'/1]).
-export(['filterexpressionhc20'/1]).
-export(['filterexpressionhc21'/1]).
-export(['filterexpressionhc22'/1]).
-export(['K-FilterExpr-1'/1]).
-export(['K-FilterExpr-2'/1]).
-export(['K-FilterExpr-3'/1]).
-export(['K-FilterExpr-4'/1]).
-export(['K-FilterExpr-5'/1]).
-export(['K-FilterExpr-6'/1]).
-export(['K-FilterExpr-7'/1]).
-export(['K-FilterExpr-8'/1]).
-export(['K-FilterExpr-9'/1]).
-export(['K-FilterExpr-10'/1]).
-export(['K-FilterExpr-11'/1]).
-export(['K-FilterExpr-12'/1]).
-export(['K-FilterExpr-13'/1]).
-export(['K-FilterExpr-14'/1]).
-export(['K-FilterExpr-15'/1]).
-export(['K-FilterExpr-16'/1]).
-export(['K-FilterExpr-17'/1]).
-export(['K-FilterExpr-18'/1]).
-export(['K-FilterExpr-19'/1]).
-export(['K-FilterExpr-20'/1]).
-export(['K-FilterExpr-21'/1]).
-export(['K-FilterExpr-22'/1]).
-export(['K-FilterExpr-23'/1]).
-export(['K-FilterExpr-24'/1]).
-export(['K-FilterExpr-25'/1]).
-export(['K-FilterExpr-26'/1]).
-export(['K-FilterExpr-27'/1]).
-export(['K-FilterExpr-28'/1]).
-export(['K-FilterExpr-29'/1]).
-export(['K-FilterExpr-30'/1]).
-export(['K-FilterExpr-31'/1]).
-export(['K-FilterExpr-32'/1]).
-export(['K-FilterExpr-33'/1]).
-export(['K-FilterExpr-34'/1]).
-export(['K-FilterExpr-35'/1]).
-export(['K-FilterExpr-36'/1]).
-export(['K-FilterExpr-37'/1]).
-export(['K-FilterExpr-38'/1]).
-export(['K-FilterExpr-39'/1]).
-export(['K-FilterExpr-40'/1]).
-export(['K-FilterExpr-41'/1]).
-export(['K-FilterExpr-42'/1]).
-export(['K-FilterExpr-43'/1]).
-export(['K-FilterExpr-44'/1]).
-export(['K-FilterExpr-45'/1]).
-export(['K-FilterExpr-46'/1]).
-export(['K-FilterExpr-47'/1]).
-export(['K-FilterExpr-48'/1]).
-export(['K-FilterExpr-49'/1]).
-export(['K-FilterExpr-50'/1]).
-export(['K-FilterExpr-51'/1]).
-export(['K-FilterExpr-52'/1]).
-export(['K-FilterExpr-53'/1]).
-export(['K-FilterExpr-54'/1]).
-export(['K-FilterExpr-55'/1]).
-export(['K-FilterExpr-56'/1]).
-export(['K-FilterExpr-57'/1]).
-export(['K-FilterExpr-58'/1]).
-export(['K-FilterExpr-59'/1]).
-export(['K-FilterExpr-60'/1]).
-export(['K-FilterExpr-61'/1]).
-export(['K-FilterExpr-62'/1]).
-export(['K-FilterExpr-63'/1]).
-export(['K-FilterExpr-64'/1]).
-export(['K-FilterExpr-65'/1]).
-export(['K-FilterExpr-66'/1]).
-export(['K-FilterExpr-67'/1]).
-export(['K-FilterExpr-68'/1]).
-export(['K-FilterExpr-69'/1]).
-export(['K-FilterExpr-70'/1]).
-export(['K-FilterExpr-71'/1]).
-export(['K-FilterExpr-72'/1]).
-export(['K-FilterExpr-73'/1]).
-export(['K-FilterExpr-74'/1]).
-export(['K-FilterExpr-75'/1]).
-export(['K-FilterExpr-76'/1]).
-export(['K-FilterExpr-77'/1]).
-export(['K-FilterExpr-78'/1]).
-export(['K-FilterExpr-79'/1]).
-export(['K-FilterExpr-80'/1]).
-export(['K-FilterExpr-81'/1]).
-export(['K-FilterExpr-82'/1]).
-export(['K-FilterExpr-83'/1]).
-export(['K-FilterExpr-84'/1]).
-export(['K-FilterExpr-85'/1]).
-export(['K-FilterExpr-86'/1]).
-export(['K-FilterExpr-87'/1]).
-export(['K-FilterExpr-88'/1]).
-export(['K-FilterExpr-89'/1]).
-export(['K-FilterExpr-90'/1]).
-export(['K-FilterExpr-91'/1]).
-export(['K-FilterExpr-92'/1]).
-export(['K-FilterExpr-93'/1]).
-export(['K-FilterExpr-94'/1]).
-export(['K-FilterExpr-95'/1]).
-export(['K-FilterExpr-96'/1]).
-export(['K2-FilterExpr-1'/1]).
-export(['K2-FilterExpr-2'/1]).
-export(['K2-FilterExpr-3'/1]).
-export(['K2-FilterExpr-4'/1]).
-export(['K2-FilterExpr-5'/1]).
-export(['K2-FilterExpr-6'/1]).
-export(['K2-FilterExpr-7'/1]).
-export(['K2-FilterExpr-8'/1]).
-export(['predicates-1'/1]).
-export(['predicates-2'/1]).
-export(['predicates-3'/1]).
-export(['predicates-4'/1]).
-export(['predicates-5'/1]).
-export(['predicates-6'/1]).
-export(['predicates-7'/1]).
-export(['predicates-8'/1]).
-export(['predicates-9'/1]).
-export(['predicates-10'/1]).
-export(['predicates-11'/1]).
-export(['predicates-12'/1]).
-export(['predicates-13'/1]).
-export(['predicates-14'/1]).
-export(['predicates-17'/1]).
-export(['predicates-18'/1]).
-export(['predicates-19'/1]).
-export(['predicates-20'/1]).
-export(['predicates-21'/1]).
-export(['predicates-22'/1]).
-export(['predicates-23'/1]).
-export(['predicates-24'/1]).
-export(['predicates-25'/1]).
-export(['predicates-26'/1]).
-export(['predicates-27'/1]).
-export(['predicates-28'/1]).
-export(['predicates-29'/1]).
-export(['predicates-30'/1]).
-export(['predicates-31'/1]).
-export(['predicates-32'/1]).
-export(['predicatesns-1'/1]).
-export(['predicatesns-2'/1]).
-export(['predicatesns-3'/1]).
-export(['predicatesns-4'/1]).
-export(['predicatesns-5'/1]).
-export(['predicatesns-6'/1]).
-export(['predicatesns-7'/1]).
-export(['predicatesns-8'/1]).
-export(['predicatesns-9'/1]).
-export(['predicatesns-10'/1]).
-export(['predicatesns-11'/1]).
-export(['predicatesns-12'/1]).
-export(['predicatesns-13'/1]).
-export(['predicatesns-14'/1]).
-export(['K2-Predicates-1'/1]).
-export(['K2-Predicates-2'/1]).
-export(['K2-Predicates-3'/1]).
-export(['K2-Predicates-4'/1]).
-export(['K2-Predicates-5'/1]).
-export(['K2-Predicates-6'/1]).
-export(['K2-Predicates-7'/1]).
-export(['K2-Predicates-8'/1]).
-export(['K2-Predicates-9'/1]).
-export(['cbcl-filterexpr-001'/1]).
-export(['cbcl-first-in-sequence-001'/1]).
-export(['cbcl-first-in-sequence-002'/1]).
-export(['cbcl-first-in-sequence-003'/1]).
-export(['cbcl-first-in-sequence-004'/1]).
-export(['cbcl-first-in-sequence-005'/1]).
-export(['cbcl-first-in-sequence-006'/1]).
-export(['cbcl-first-in-sequence-007'/1]).
-export(['cbcl-first-in-sequence-008'/1]).
-export(['cbcl-first-in-sequence-009'/1]).
-export(['cbcl-first-in-sequence-010'/1]).
-export(['cbcl-first-in-sequence-011'/1]).
-export(['cbcl-first-in-sequence-012'/1]).
-export(['cbcl-filter-001'/1]).
-export(['filter-limits-001'/1]).
-export(['filter-limits-002'/1]).
-export(['filter-limits-003'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> ct:timetrap({seconds,60}), xqerl_module:unload(all).
init_per_suite(Config) -> 
   DD = filename:dirname(filename:dirname(proplists:get_value(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   BaseDir = filename:join(TD, "prod")

,[{base_dir, BaseDir}|Config].
all() -> [
   'filterexpressionhc1',
   'filterexpressionhc2',
   'filterexpressionhc3',
   'filterexpressionhc4',
   'filterexpressionhc5',
   'filterexpressionhc6',
   'filterexpressionhc7',
   'filterexpressionhc8',
   'filterexpressionhc9',
   'filterexpressionhc10',
   'filterexpressionhc11',
   'filterexpressionhc12',
   'filterexpressionhc13',
   'filterexpressionhc14',
   'filterexpressionhc15',
   'filterexpressionhc16',
   'filterexpressionhc17',
   'filterexpressionhc18',
   'filterexpressionhc19',
   'filterexpressionhc20',
   'filterexpressionhc21',
   'filterexpressionhc22',
   'K-FilterExpr-1',
   'K-FilterExpr-2',
   'K-FilterExpr-3',
   'K-FilterExpr-4',
   'K-FilterExpr-5',
   'K-FilterExpr-6',
   'K-FilterExpr-7',
   'K-FilterExpr-8',
   'K-FilterExpr-9',
   'K-FilterExpr-10',
   'K-FilterExpr-11',
   'K-FilterExpr-12',
   'K-FilterExpr-13',
   'K-FilterExpr-14',
   'K-FilterExpr-15',
   'K-FilterExpr-16',
   'K-FilterExpr-17',
   'K-FilterExpr-18',
   'K-FilterExpr-19',
   'K-FilterExpr-20',
   'K-FilterExpr-21',
   'K-FilterExpr-22',
   'K-FilterExpr-23',
   'K-FilterExpr-24',
   'K-FilterExpr-25',
   'K-FilterExpr-26',
   'K-FilterExpr-27',
   'K-FilterExpr-28',
   'K-FilterExpr-29',
   'K-FilterExpr-30',
   'K-FilterExpr-31',
   'K-FilterExpr-32',
   'K-FilterExpr-33',
   'K-FilterExpr-34',
   'K-FilterExpr-35',
   'K-FilterExpr-36',
   'K-FilterExpr-37',
   'K-FilterExpr-38',
   'K-FilterExpr-39',
   'K-FilterExpr-40',
   'K-FilterExpr-41',
   'K-FilterExpr-42',
   'K-FilterExpr-43',
   'K-FilterExpr-44',
   'K-FilterExpr-45',
   'K-FilterExpr-46',
   'K-FilterExpr-47',
   'K-FilterExpr-48',
   'K-FilterExpr-49',
   'K-FilterExpr-50',
   'K-FilterExpr-51',
   'K-FilterExpr-52',
   'K-FilterExpr-53',
   'K-FilterExpr-54',
   'K-FilterExpr-55',
   'K-FilterExpr-56',
   'K-FilterExpr-57',
   'K-FilterExpr-58',
   'K-FilterExpr-59',
   'K-FilterExpr-60',
   'K-FilterExpr-61',
   'K-FilterExpr-62',
   'K-FilterExpr-63',
   'K-FilterExpr-64',
   'K-FilterExpr-65',
   'K-FilterExpr-66',
   'K-FilterExpr-67',
   'K-FilterExpr-68',
   'K-FilterExpr-69',
   'K-FilterExpr-70',
   'K-FilterExpr-71',
   'K-FilterExpr-72',
   'K-FilterExpr-73',
   'K-FilterExpr-74',
   'K-FilterExpr-75',
   'K-FilterExpr-76',
   'K-FilterExpr-77',
   'K-FilterExpr-78',
   'K-FilterExpr-79',
   'K-FilterExpr-80',
   'K-FilterExpr-81',
   'K-FilterExpr-82',
   'K-FilterExpr-83',
   'K-FilterExpr-84',
   'K-FilterExpr-85',
   'K-FilterExpr-86',
   'K-FilterExpr-87',
   'K-FilterExpr-88',
   'K-FilterExpr-89',
   'K-FilterExpr-90',
   'K-FilterExpr-91',
   'K-FilterExpr-92',
   'K-FilterExpr-93',
   'K-FilterExpr-94',
   'K-FilterExpr-95',
   'K-FilterExpr-96',
   'K2-FilterExpr-1',
   'K2-FilterExpr-2',
   'K2-FilterExpr-3',
   'K2-FilterExpr-4',
   'K2-FilterExpr-5',
   'K2-FilterExpr-6',
   'K2-FilterExpr-7',
   'K2-FilterExpr-8',
   'predicates-1',
   'predicates-2',
   'predicates-3',
   'predicates-4',
   'predicates-5',
   'predicates-6',
   'predicates-7',
   'predicates-8',
   'predicates-9',
   'predicates-10',
   'predicates-11',
   'predicates-12',
   'predicates-13',
   'predicates-14',
   'predicates-17',
   'predicates-18',
   'predicates-19',
   'predicates-20',
   'predicates-21',
   'predicates-22',
   'predicates-23',
   'predicates-24',
   'predicates-25',
   'predicates-26',
   'predicates-27',
   'predicates-28',
   'predicates-29',
   'predicates-30',
   'predicates-31',
   'predicates-32',
   'predicatesns-1',
   'predicatesns-2',
   'predicatesns-3',
   'predicatesns-4',
   'predicatesns-5',
   'predicatesns-6',
   'predicatesns-7',
   'predicatesns-8',
   'predicatesns-9',
   'predicatesns-10',
   'predicatesns-11',
   'predicatesns-12',
   'predicatesns-13',
   'predicatesns-14',
   'K2-Predicates-1',
   'K2-Predicates-2',
   'K2-Predicates-3',
   'K2-Predicates-4',
   'K2-Predicates-5',
   'K2-Predicates-6',
   'K2-Predicates-7',
   'K2-Predicates-8',
   'K2-Predicates-9',
   'cbcl-filterexpr-001',
   'cbcl-first-in-sequence-001',
   'cbcl-first-in-sequence-002',
   'cbcl-first-in-sequence-003',
   'cbcl-first-in-sequence-004',
   'cbcl-first-in-sequence-005',
   'cbcl-first-in-sequence-006',
   'cbcl-first-in-sequence-007',
   'cbcl-first-in-sequence-008',
   'cbcl-first-in-sequence-009',
   'cbcl-first-in-sequence-010',
   'cbcl-first-in-sequence-011',
   'cbcl-first-in-sequence-012',
   'cbcl-filter-001',
   'filter-limits-001',
   'filter-limits-002',
   'filter-limits-003'].
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
];
environment('atomicns',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/atomicns.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'filterexpressionhc1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(/works/employee[xs:integer(hours[1]) gt 20])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "filterexpressionhc1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<employee>
   <empnum>E1</empnum>
   <pnum>P1</pnum>
   <hours>40</hours>
  </employee><employee>
   <empnum>E1</empnum>
   <pnum>P3</pnum>
   <hours>80</hours>
  </employee><employee>
   <empnum>E2</empnum>
   <pnum>P1</pnum>
   <hours>40</hours>
  </employee><employee>
   <empnum>E2</empnum>
   <pnum>P2</pnum>
   <hours>80</hours>
  </employee><employee>
   <empnum>E4</empnum>
   <pnum>P4</pnum>
   <hours>40</hours>
  </employee><employee>
   <empnum>E4</empnum>
   <pnum>P5</pnum>
   <hours>80</hours>
  </employee>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'filterexpressionhc2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "((1 to 25)[. mod 2 eq 0])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "filterexpressionhc2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2 4 6 8 10 12 14 16 18 20 22 24") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'filterexpressionhc3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "((1 to 25)[25])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "filterexpressionhc3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"25") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'filterexpressionhc4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(//empnum | (/))//employee[xs:integer(hours[1]) gt 20]",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "filterexpressionhc4.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<employee>
   <empnum>E1</empnum>
   <pnum>P1</pnum>
   <hours>40</hours>
  </employee><employee>
   <empnum>E1</empnum>
   <pnum>P3</pnum>
   <hours>80</hours>
  </employee><employee>
   <empnum>E2</empnum>
   <pnum>P1</pnum>
   <hours>40</hours>
  </employee><employee>
   <empnum>E2</empnum>
   <pnum>P2</pnum>
   <hours>80</hours>
  </employee><employee>
   <empnum>E4</empnum>
   <pnum>P4</pnum>
   <hours>40</hours>
  </employee><employee>
   <empnum>E4</empnum>
   <pnum>P5</pnum>
   <hours>80</hours>
  </employee>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'filterexpressionhc5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(//employee[fn:last()])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "filterexpressionhc5.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<employee>
   <empnum>E4</empnum>
   <pnum>P5</pnum>
   <hours>80</hours>
  </employee>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'filterexpressionhc6'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "((1 to 25)[. ge 10])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "filterexpressionhc6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'filterexpressionhc7'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "((1 to 25)[. lt 10])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "filterexpressionhc7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 2 3 4 5 6 7 8 9") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'filterexpressionhc8'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "((1 to 25)[. le 10])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "filterexpressionhc8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 2 3 4 5 6 7 8 9 10") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'filterexpressionhc9'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "((1 to 25)[. eq 10])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "filterexpressionhc9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"10") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'filterexpressionhc10'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "((1 to 11)[. ne 10])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "filterexpressionhc10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 2 3 4 5 6 7 8 9 11") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'filterexpressionhc11'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "((1 to 11)[(. eq 10) and (. mod 5 eq 0)])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "filterexpressionhc11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"10") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'filterexpressionhc12'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "((1 to 11)[(. eq 10) or (. eq 5)])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "filterexpressionhc12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "5 10") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'filterexpressionhc13'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "((1,2,4,5,6,7,8,9,10,11)[(. div 2 eq 5)])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "filterexpressionhc13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"10") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'filterexpressionhc14'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "((1,2,4,5,6,7,8,9,10,11)[(. * 2 eq 10)])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "filterexpressionhc14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"5") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'filterexpressionhc15'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "((1,2,4,5,6,7,8,9,10,11)[(. + 2 eq 10)])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "filterexpressionhc15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"8") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'filterexpressionhc16'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "((1,2,4,5,6,7,8,9,10,11)[(. - 2 eq 6)])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "filterexpressionhc16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"8") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'filterexpressionhc17'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "((1,2,4,5,6,7,8,9,10,11)[(. idiv 2 eq 3)])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "filterexpressionhc17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "6 7") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'filterexpressionhc18'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "((1,2,3,4,5,6,7,8,9,10,11)[(xs:string(.) eq \"3\")])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "filterexpressionhc18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"3") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'filterexpressionhc19'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "((1,2,3,4,5,6,7,8,9,10,11)[. gt 1][. gt 5])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "filterexpressionhc19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "6 7 8 9 10 11") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'filterexpressionhc20'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "((1,2,3,4,5,6,7,8,9,10,11)[(. gt 1) and (. gt 2)][(. gt 5) and (. gt 6)])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "filterexpressionhc20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "7 8 9 10 11") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'filterexpressionhc21'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "((1,2,3,4,5,6,7,8,9,10,11)[fn:true()])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "filterexpressionhc21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 2 3 4 5 6 7 8 9 10 11") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'filterexpressionhc22'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:count(((1,2,3,4,5,6,7,8,9,10,11)[fn:false()]))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "filterexpressionhc22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
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
'K-FilterExpr-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(1, 2, 3)[",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(1, 2, 3)]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(1, 2, 3)[]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"XP20 XP30 XQ10 XQ30"}.
'K-FilterExpr-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"XP20 XP30 XQ10 XQ30"}.
'K-FilterExpr-6'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "empty((1, 2, 3)[0])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-7'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "empty((1, 2, 3)[4])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-8'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "empty((1, 2, 3)[0])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-9'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "empty((1, 2, 3)[4])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-10'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "empty((1, 2, 3)[0.1])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-11'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "empty((1, 2, 3)[1.1])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-12'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "empty((1, 2, 3)[1.01])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-13'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "empty((1, 2, 3)[4])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-14'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "empty((1, 2, 3)[4.1])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-15'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "empty((1, 2, 3)[4.01])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-16'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "not(empty((1, 2, 3)[1]))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-17'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "not(empty((1, 2, 3)[3]))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-18'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(1, 2, 3)[1] eq 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-19'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(1, 2, 3)[1.0] eq 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-20'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(1, 2, 3)[1.0e0] eq 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-21'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(1, 2, 3)[3] eq 3",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-22'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(1, 2, 3)[3.0] eq 3",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-23'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(1, 2, 3)[3.0e0] eq 3",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-24'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(0, 1, 2)[1] eq 0",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-24.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-25'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(0, 1, 2)[2] eq 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-25.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-26'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(0, 1, 2)[3] eq 2",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-26.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-27'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(0)[1] eq 0",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-27.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-28'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "0[1] eq 0",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-28.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-29'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(0, 1)[1] eq 0",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-29.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-30'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "empty((1, 2, 3)[false()])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-30.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
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
'K-FilterExpr-31'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "deep-equal((1, 2, 3), (1, 2, 3)[true()])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-31.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-32'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "deep-equal((1, 2, 3), (1, 2, 3)[. instance of xs:integer])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-32.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-33'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "deep-equal((true(), true(), true()), (false(), true(), true(), false(), true(), false())[.])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-33.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-34'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "deep-equal((2, 3, 4, 5, 7, 8, 9), (0, 2, 3, 4, 5, 5, 7, 8, 10 - 1)[.])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-34.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-35'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "1[true()] eq 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-35.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-36'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(1, current-time())[1]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-36.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-37'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "deep-equal((1, 2, 3), (1, 2, 3)[xs:anyURI(\"example.com/\")])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-37.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-38'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(1, 2, 3)[(xs:anyURI(\"example.com/\"), xs:anyURI(\"example.com/\"))]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-38.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-39'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "deep-equal((1, 2, 3), (1, 2, 3)[xs:untypedAtomic(\"content\")])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-39.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-40'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(1, 2, 3)[(xs:untypedAtomic(\"content\"), xs:untypedAtomic(\"content\"))]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-40.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-41'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(0, 1, 2)[true()][1] eq 0",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-41.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-42'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(1, 2, 3)[position() eq 2 or position() eq 3][2] eq 3",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-42.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-43'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "empty((1, 2, 3)[position() eq 2 or position() eq 3][3])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-43.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-44'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "deep-equal((1, 2, 3), (1, 2, 3)[2 or 3])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-44.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-45'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "empty((1, 2, 3)[3][2])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-45.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-46'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "empty((1, 2, 3)[3][0])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-46.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-47'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(0, 2, 4, 5)[1][1][1][true()][1][true()][1] eq 0",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-47.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-48'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "empty((1, 2, 3)[3e8])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-48.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-49'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "empty((0, 1, 2)[false()][1])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-49.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
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
'K-FilterExpr-50'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "deep-equal((\"a\", \"b\", \"c\"), (0, 1, 2, \"a\", \"b\", \"c\")[. instance of xs:string])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-50.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-51'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "((0, 1, 2, \"a\", \"b\", \"c\")[. instance of xs:string][. treat as xs:string eq \"c\"] treat as xs:string) eq \"c\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-51.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPDY0050") of 
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
'K-FilterExpr-52'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "((0, 1, 2, \"a\", \"b\", \"c\")[. instance of xs:integer][. treat as xs:integer eq 0] treat as xs:integer) eq 0",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-52.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPDY0050") of 
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
'K-FilterExpr-53'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(0, 1, 2, \"a\", \"b\", \"c\")[. instance of xs:integer][. eq \"c\"] eq 0",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-53.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-54'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "empty(()[()])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-54.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
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
'K-FilterExpr-55'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "empty((1, 2, 3)[()])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-55.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
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
'K-FilterExpr-56'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "empty(()[last()])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-56.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
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
'K-FilterExpr-57'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "empty(()[1])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-57.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
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
'K-FilterExpr-58'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "empty(()[position()])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-58.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
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
'K-FilterExpr-59'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "empty(()[count(remove((current-time(), 1), 1)) eq 1])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-59.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
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
'K-FilterExpr-60'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "deep-equal((1, 2, 3), (1, 2, 3)[position() >= 1])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-60.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-61'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "deep-equal((1, 2, 3), (1, 2, 3)[3 >= position()])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-61.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-62'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "deep-equal((1, 2, 3), (1, 2, 3)[position() ge 1])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-62.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-63'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "deep-equal((1, 2, 3), (1, 2, 3)[3 ge position()])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-63.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-64'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "deep-equal((0, 1, 2), (0, 1, 2)[position() eq position()])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-64.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-65'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "deep-equal((0, 1, 2), (0, 1, 2)[position() = position()])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-65.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-66'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(0, 1, 2)[1 eq position()]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-66.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-67'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(0, 1, 2)[3 eq position()]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-67.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-68'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(0, 1, 2)[position() eq 3]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-68.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-69'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "deep-equal((1, 2, 3), (1, 2, 3)[number(.)])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-69.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-70'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "deep-equal((1, 2), (0, 1, 2)[if(. eq 1) then 2 else 3])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-70.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-71'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "deep-equal((0, 1, 2), (0, 1, 2)[if(. eq 8) then \"str\" else position()])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-71.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-72'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "deep-equal((0, 1, 2), (0, 1, 2)[if(. eq 8) then 0 else position()])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-72.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-73'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(0, 1, 2)[last()]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-73.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-74'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(0, 1, \"2\")[last()]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-74.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-75'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "2 eq (0, 1, \"2\")[last()]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-75.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-76'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "empty((())[last()])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-76.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
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
'K-FilterExpr-77'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "empty(()[last()])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-77.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
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
'K-FilterExpr-78'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(0, 1, 2)[. eq 0]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-78.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-79'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(0, 1, 2)[. eq 1]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-79.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-80'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(0, 1, 2)[. eq 2]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-80.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-81'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "deep-equal((0, 1, 2), (0, 1, 2)[. eq 0 or . eq 1 or . eq 2])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-81.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-82'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(0, 1, 2)[remove((1, \"a string\"), 2)]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-82.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
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
'K-FilterExpr-83'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "deep-equal((1, 2), (1, 2)[remove((true(), \"a string\"), 2)])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-83.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
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
'K-FilterExpr-84'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "empty((1, 2, 3)[remove((false(), \"a string\"), 2)])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-84.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
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
'K-FilterExpr-85'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "empty((1, 2, 3)[remove((false(), \"a string\"), 2)])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-85.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
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
'K-FilterExpr-86'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "empty(current-time()[2])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-86.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-87'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "empty((1, 2, 3, current-time())[0])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-87.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-88'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "empty(remove((1, 2, 3, current-time()), 4)[false()])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-88.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
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
'K-FilterExpr-89'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "deep-equal(remove((1, 2, 3, current-time()), 4)[true()], (1, 2, 3))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-89.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-90'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(1, 2, 3)[(last(), last())[2]]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-90.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"3") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-91'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(1, 2, 3)[xs:hexBinary(\"FF\")]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-91.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-92'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(1, 2, 3)[1, 2]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-92.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-93'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(1, 2, 3)[1, \"a string\"]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-93.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-94'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(1, 2, 3)[\"a string\", 1]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-94.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-95'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "/works/employee[@name=/works/employee[1]/@name]/@name/string()",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-95.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"Jane Doe 1\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-FilterExpr-96'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
         document{<works>{/tail(works/employee)}</works>}/works/employee[@name=/works/employee[2]/@name]/@name/string()
         ",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-FilterExpr-96.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"Jane Doe 3\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-FilterExpr-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare variable $var := (for $i in 1 to 100 return <e>{$i}</e>); $var[last()]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-FilterExpr-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e>100</e>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-FilterExpr-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare variable $var := (for $i in 1 to 100 return <e>{$i}</e>); $var[5]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-FilterExpr-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e>5</e>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-FilterExpr-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "empty((1,2,3,4,5)[3.4])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-FilterExpr-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-FilterExpr-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "empty(<e><a/></e>//a[3.4])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-FilterExpr-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
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
'K2-FilterExpr-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
         let $d := document {<root><child type=\"\"/></root>} 
         return document{$d//*[let $i := @type return $d//*[$i]], (1, 2, 3)[true()], (4, 5, 6)[false()]}
       ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-FilterExpr-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<child type=\"\"/>1 2 3") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
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
'K2-FilterExpr-6'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "let $d := document { <root><child type=\"\"/></root> } return $d//*[let $i := @type return $d//*[$i]]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-FilterExpr-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<child type=\"\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-FilterExpr-7'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(<x/>, <?y?>)[self::processing-instruction()]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-FilterExpr-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<?y?>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-FilterExpr-8'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(<?z?>, <?y?>)[self::processing-instruction(y)] treat as empty-sequence()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-FilterExpr-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0050") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'predicates-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(//integer[fn:true()])",
   {Env,Opts} = xqerl_test:handle_environment(environment('atomicns',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "predicates-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<integer>12678967543233</integer>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'predicates-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:count((//integer[fn:false()]))",
   {Env,Opts} = xqerl_test:handle_environment(environment('atomicns',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "predicates-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
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
'predicates-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(//integer[fn:not(fn:false())])",
   {Env,Opts} = xqerl_test:handle_environment(environment('atomicns',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "predicates-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<integer>12678967543233</integer>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'predicates-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(//integer[fn:true() and fn:true()])",
   {Env,Opts} = xqerl_test:handle_environment(environment('atomicns',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "predicates-4.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<integer>12678967543233</integer>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'predicates-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(//integer[fn:true() or fn:true()])",
   {Env,Opts} = xqerl_test:handle_environment(environment('atomicns',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "predicates-5.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<integer>12678967543233</integer>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'predicates-6'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:count((//integer[fn:false() and fn:false()]))",
   {Env,Opts} = xqerl_test:handle_environment(environment('atomicns',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "predicates-6.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
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
'predicates-7'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:count((//integer[fn:false() or fn:false()]))",
   {Env,Opts} = xqerl_test:handle_environment(environment('atomicns',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "predicates-7.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
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
'predicates-8'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(/root/string[xs:string(.) = \"A String Function\"])",
   {Env,Opts} = xqerl_test:handle_environment(environment('atomicns',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "predicates-8.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<string>A String Function</string>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'predicates-9'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(/root/integer[xs:integer(.) = 12678967543233])",
   {Env,Opts} = xqerl_test:handle_environment(environment('atomicns',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "predicates-9.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<integer>12678967543233</integer>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'predicates-10'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(/root/decimal[xs:decimal(.) = 12678967.543233])",
   {Env,Opts} = xqerl_test:handle_environment(environment('atomicns',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "predicates-10.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<decimal attr=\"12678967.543233\">12678967.543233</decimal>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'predicates-11'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(/root/float[xs:float(.) = xs:float(1267.43233E12)])",
   {Env,Opts} = xqerl_test:handle_environment(environment('atomicns',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "predicates-11.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<float>1267.43233E12</float>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'predicates-12'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(/root/double[xs:double(.) = 1267.43233E12])",
   {Env,Opts} = xqerl_test:handle_environment(environment('atomicns',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "predicates-12.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<double>1267.43233E12</double>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'predicates-13'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(/root/boolean[xs:boolean(.) = fn:true()])",
   {Env,Opts} = xqerl_test:handle_environment(environment('atomicns',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "predicates-13.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<boolean>true</boolean>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'predicates-14'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(/root/date[xs:date(.) = xs:date(\"2000-01-01+05:00\")])",
   {Env,Opts} = xqerl_test:handle_environment(environment('atomicns',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "predicates-14.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<date>2000-01-01+05:00</date>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'predicates-17'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(/works/employee[@name=\"Jane Doe 11\"])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "predicates-17.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<employee name=\"Jane Doe 11\" gender=\"female\">
   <empnum>E4</empnum>
   <pnum>P2</pnum>
   <hours>20</hours>
  </employee>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'predicates-18'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(/works//day[xs:string(.) ne \"Monday\"])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "predicates-18.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<day>Tuesday</day>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'predicates-19'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(/works//hours[xs:integer(.) lt 13])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "predicates-19.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<hours>12</hours>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'predicates-20'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(/works//hours[xs:integer(.) le 12])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "predicates-20.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<hours>12</hours>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'predicates-21'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(/works//hours[xs:integer(.) gt 79])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "predicates-21.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<hours>80</hours><hours>80</hours><hours>80</hours>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'predicates-22'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(/works//hours[xs:integer(.) ge 80])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "predicates-22.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<hours>80</hours><hours>80</hours><hours>80</hours>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'predicates-23'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(/works//hours[xs:integer(.) = 12])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "predicates-23.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<hours>12</hours>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'predicates-24'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(/works[1]//employee[empnum != \"E1\" and empnum != \"E4\"])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "predicates-24.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<employee name=\"Jane Doe 7\" gender=\"female\">
   <empnum>E2</empnum>
   <pnum>P1</pnum>
   <hours>40</hours>
  </employee><employee name=\"John Doe 8\" gender=\"male\">
   <empnum>E2</empnum>
   <pnum>P2</pnum>
   <hours>80</hours>
  </employee><employee name=\"Jane Doe 9\" gender=\"female\">
   <empnum>E3</empnum>
   <pnum>P2</pnum>
   <hours>20</hours>
  </employee><employee name=\"John Doe 10\" gender=\"male\">
   <empnum>E3</empnum>
   <pnum>P2</pnum>
   <hours>20</hours>
  </employee>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'predicates-25'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(/works//hours[xs:integer(.) < 13])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "predicates-25.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<hours>12</hours>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'predicates-26'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(/works//hours[xs:integer(.) <= 12])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "predicates-26.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<hours>12</hours>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'predicates-27'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(/works//hours[xs:integer(.) > 79])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "predicates-27.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<hours>80</hours><hours>80</hours><hours>80</hours>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'predicates-28'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(/works//hours[xs:integer(.) >= 80])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "predicates-28.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<hours>80</hours><hours>80</hours><hours>80</hours>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'predicates-29'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "let $foo := <element1><element2>some content</element2></element1> return $foo[(2 to 5)]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "predicates-29.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'predicates-30'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "for $x in /works/employee[fn:position() lt 5][fn:position() mod 2 eq 1] return (fn:data($x/empnum), fn:data($x/pnum))",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "predicates-30.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "E1 P1 E1 P3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'predicates-31'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "for $x in /works/employee[fn:position() mod 2 eq 1][fn:position() lt 5] return (fn:data($x/empnum), fn:data($x/pnum))",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "predicates-31.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "E1 P1 E1 P3 E1 P5 E2 P1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'predicates-32'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare variable $i := (\"x\", 1);
        declare variable $j := $i[position() ne 1];
        $i[$j]      
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "predicates-32.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"x\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'predicatesns-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:count((//integer[fn:true()]))",
   {Env,Opts} = xqerl_test:handle_environment(environment('atomicns',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "predicatesns-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'predicatesns-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:count((//integer[fn:false()]))",
   {Env,Opts} = xqerl_test:handle_environment(environment('atomicns',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "predicatesns-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
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
'predicatesns-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(//integer[fn:not(fn:false())])",
   {Env,Opts} = xqerl_test:handle_environment(environment('atomicns',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "predicatesns-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<integer>12678967543233</integer>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'predicatesns-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(//integer[fn:true() and fn:true()])",
   {Env,Opts} = xqerl_test:handle_environment(environment('atomicns',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "predicatesns-4.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<integer>12678967543233</integer>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'predicatesns-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(//integer[fn:true() or fn:true()])",
   {Env,Opts} = xqerl_test:handle_environment(environment('atomicns',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "predicatesns-5.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<integer>12678967543233</integer>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'predicatesns-6'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:count((//integer[fn:false() and fn:false()]))",
   {Env,Opts} = xqerl_test:handle_environment(environment('atomicns',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "predicatesns-6.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
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
'predicatesns-7'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:count((//integer[fn:false() or fn:false()]))",
   {Env,Opts} = xqerl_test:handle_environment(environment('atomicns',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "predicatesns-7.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
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
'predicatesns-8'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(/root/string[xs:string(.) = \"A String Function\"])",
   {Env,Opts} = xqerl_test:handle_environment(environment('atomicns',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "predicatesns-8.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<string>A String Function</string>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'predicatesns-9'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(/root/integer[xs:integer(.) = 12678967543233])",
   {Env,Opts} = xqerl_test:handle_environment(environment('atomicns',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "predicatesns-9.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<integer>12678967543233</integer>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'predicatesns-10'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(/root/decimal[(xs:decimal(.) = 12678967.543233)])",
   {Env,Opts} = xqerl_test:handle_environment(environment('atomicns',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "predicatesns-10.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<decimal attr=\"12678967.543233\">12678967.543233</decimal>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'predicatesns-11'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(/root/float[xs:float(.) = xs:float(1267.43233E12)])",
   {Env,Opts} = xqerl_test:handle_environment(environment('atomicns',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "predicatesns-11.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<float>1267.43233E12</float>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'predicatesns-12'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(/root/double[xs:double(.) = 1267.43233E12])",
   {Env,Opts} = xqerl_test:handle_environment(environment('atomicns',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "predicatesns-12.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<double>1267.43233E12</double>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'predicatesns-13'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(/root/boolean[xs:boolean(.) = fn:true()])",
   {Env,Opts} = xqerl_test:handle_environment(environment('atomicns',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "predicatesns-13.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<boolean>true</boolean>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'predicatesns-14'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(/root/date[xs:date(.) = xs:date(\"2000-01-01+05:00\")])",
   {Env,Opts} = xqerl_test:handle_environment(environment('atomicns',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "predicatesns-14.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<date>2000-01-01+05:00</date>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Predicates-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "\"c\"[. treat as xs:string]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Predicates-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "c") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Predicates-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare variable $myvar := <elem> <a/> <b/> <c/></elem>; $myvar/*[last()]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Predicates-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<c/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Predicates-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare variable $myvar := <elem> <a/> <b/> <c/></elem>; $myvar/*[last() - 1]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Predicates-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<b/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Predicates-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare variable $myvar := <elem> <a/> <b/> <c/></elem>; $myvar/*[1]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Predicates-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Predicates-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(<a/>, <b/>, <c/>)[1][1]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Predicates-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Predicates-6'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<b attr=\"f\"/>[1]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Predicates-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<b attr=\"f\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Predicates-7'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<r>{<e xml:lang=\"ene\"/>/(ancestor-or-self::*/@xml:lang)[last()]}</r>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Predicates-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<r xml:lang=\"ene\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Predicates-8'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare function local:foo($arg as item()) { $arg[@arg] }; local:foo(<e arg=\"\">result</e>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Predicates-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e arg=\"\">result</e>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Predicates-9'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare function local:foo($arg as item()) { string($arg/@arg) }; local:foo(<e arg=\"result\"/>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Predicates-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "result") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-filterexpr-001'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
      	declare function local:nan() { xs:float(\"NaN\") }; 
      	(1 to 10)[not(position() < xs:float(\"NaN\"))]
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-filterexpr-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 2 3 4 5 6 7 8 9 10") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-first-in-sequence-001'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare function local:generate($arg as xs:integer?) { if ($arg = 0) then (1, 2, 3) else () }; ( local:generate(0), 1, local:generate(0) )[1]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-first-in-sequence-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-first-in-sequence-002'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare function local:generate($arg as xs:integer?) as xs:integer* { if ($arg = 0) then (1, 2, 3) else $arg }; ( local:generate(()), for $x in local:generate(0) return $x + 2 )[1]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-first-in-sequence-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-first-in-sequence-003'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare function local:generate($arg as xs:integer?) as xs:integer? { if ($arg = 0) then 0 else () }; ( local:generate(()), for $x in local:generate(0) return $x + 2 )[1]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-first-in-sequence-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-first-in-sequence-004'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare function local:generate($arg as xs:integer?) as xs:integer* { if ($arg = 0) then ( 1, 2, 3 ) else ( $arg ) }; ( local:generate(()), for $x at $p in local:generate(0) return $p + $x)[1]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-first-in-sequence-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-first-in-sequence-005'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare function local:generate($arg as xs:integer?) as xs:integer? { if ($arg = 0) then 1 else $arg }; ( local:generate(()), for $x at $p in local:generate(0) return $p + $x)[1]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-first-in-sequence-005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-first-in-sequence-006'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare function local:generate($arg as xs:integer?) as xs:string* { if ($arg = 0) then ('a', 'b', 'c') else ('d' ) }; ( if (local:generate(1) = 'd') then () else 1, for $x in local:generate(0) return fn:lower-case($x))[1]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-first-in-sequence-006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "a") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-first-in-sequence-007'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare function local:generate($arg as xs:integer?) as xs:integer? { $arg }; ( if (local:generate(0) = 0) then () else 1, for $x in local:generate(0) return -$x)[1]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-first-in-sequence-007.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-first-in-sequence-008'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "( (<a><b>cheese</b></a>)/b )[1]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-first-in-sequence-008.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<b>cheese</b>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-first-in-sequence-009'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare function local:generate($arg as xs:integer?) as xs:string* { if ($arg = 0) then ('a', 'b', 'c') else () }; ( local:generate(()), for $x in local:generate(0) return 3)[1]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-first-in-sequence-009.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-first-in-sequence-010'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare function local:generate($arg as xs:integer?) as xs:string* { if ($arg = 0) then ('a', 'b', 'c') else () }; boolean(local:generate(0)[1])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-first-in-sequence-010.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-first-in-sequence-011'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare function local:generate($arg as xs:integer?) as xs:string* { if ($arg = 0) then ('a', 'b', 'c') else () }; boolean(local:generate(1)[1])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-first-in-sequence-011.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-first-in-sequence-012'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare function local:generate($arg as xs:boolean) as xs:string+ { if ($arg) then ('a', 'b', 'c') else ('A', 'B', 'C') }; ( for $x in local:generate(true()) return 3)[1]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-first-in-sequence-012.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-filter-001'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "let $x := exists((1 to 10)[. mod 2 = 0]) return (1 to 100)[position() mod 2 = 0 and position() mod 3 = 0 and $x]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-filter-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "6 12 18 24 30 36 42 48 54 60 66 72 78 84 90 96") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'filter-limits-001'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "'a'[2147483649]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "filter-limits-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'filter-limits-002'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "'a'[4294967296]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "filter-limits-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'filter-limits-003'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "'a'[4294967297]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "filter-limits-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
