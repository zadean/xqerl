-module('prod_QuantifiedExpr_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['quantExpr-1'/1]).
-export(['quantExpr-2'/1]).
-export(['quantExpr-3'/1]).
-export(['quantExpr-4'/1]).
-export(['quantExpr-5'/1]).
-export(['quantExpr-6'/1]).
-export(['quantExpr-7'/1]).
-export(['quantExpr-8'/1]).
-export(['quantExpr-9'/1]).
-export(['quantExpr-10'/1]).
-export(['quantExpr-11'/1]).
-export(['quantExpr-12'/1]).
-export(['quantExpr-13'/1]).
-export(['quantExpr-14'/1]).
-export(['quantExpr-15'/1]).
-export(['quantExpr-16'/1]).
-export(['quantExpr-17'/1]).
-export(['quantExpr-18'/1]).
-export(['quantexpr-19'/1]).
-export(['quantExpr-20'/1]).
-export(['quantExpr-21'/1]).
-export(['quantExpr-22'/1]).
-export(['quantExpr-23'/1]).
-export(['quantExpr-24'/1]).
-export(['quantExpr-25'/1]).
-export(['quantExpr-26'/1]).
-export(['quantExpr-27'/1]).
-export(['quantExpr-28'/1]).
-export(['quantExpr-29'/1]).
-export(['quantExpr-30'/1]).
-export(['quantexpr-31'/1]).
-export(['quantexpr-32'/1]).
-export(['quantExpr-33'/1]).
-export(['quantexpr-34'/1]).
-export(['quantexpr-35'/1]).
-export(['quantexpr-36'/1]).
-export(['quantexpr-37'/1]).
-export(['quantexpr-38'/1]).
-export(['quantexpr-39'/1]).
-export(['quantexpr-40'/1]).
-export(['quantexpr-41'/1]).
-export(['quantexpr-42'/1]).
-export(['quantexpr-43'/1]).
-export(['quantexpr-44'/1]).
-export(['quantexpr-45'/1]).
-export(['quantexpr-46'/1]).
-export(['quantexpr-47'/1]).
-export(['quantexpr-48'/1]).
-export(['quantexpr-49'/1]).
-export(['quantexpr-50'/1]).
-export(['quantexpr-51'/1]).
-export(['quantexpr-52'/1]).
-export(['quantexpr-53'/1]).
-export(['quantexpr-54'/1]).
-export(['quantexpr-55'/1]).
-export(['quantexpr-56'/1]).
-export(['quantexpr-57'/1]).
-export(['quantexpr-58'/1]).
-export(['quantexpr-59'/1]).
-export(['quantExpr-60'/1]).
-export(['quantexpr-61'/1]).
-export(['quantexpr-62'/1]).
-export(['quantexpr-63'/1]).
-export(['quantexpr-64'/1]).
-export(['quantexpr-65'/1]).
-export(['quantexpr-66'/1]).
-export(['quantexpr-67'/1]).
-export(['quantexpr-68'/1]).
-export(['K-QuantExprWithout-1'/1]).
-export(['K-QuantExprWithout-2'/1]).
-export(['K-QuantExprWithout-3'/1]).
-export(['K-QuantExprWithout-4'/1]).
-export(['K-QuantExprWithout-5'/1]).
-export(['K-QuantExprWithout-6'/1]).
-export(['K-QuantExprWithout-7'/1]).
-export(['K-QuantExprWithout-8'/1]).
-export(['K-QuantExprWithout-9'/1]).
-export(['K-QuantExprWithout-10'/1]).
-export(['K-QuantExprWithout-11'/1]).
-export(['K-QuantExprWithout-12'/1]).
-export(['K-QuantExprWithout-13'/1]).
-export(['K-QuantExprWithout-14'/1]).
-export(['K-QuantExprWithout-15'/1]).
-export(['K-QuantExprWithout-16'/1]).
-export(['K-QuantExprWithout-17'/1]).
-export(['K-QuantExprWithout-18'/1]).
-export(['K-QuantExprWithout-19'/1]).
-export(['K-QuantExprWithout-20'/1]).
-export(['K-QuantExprWithout-21'/1]).
-export(['K-QuantExprWithout-22'/1]).
-export(['K-QuantExprWithout-23'/1]).
-export(['K-QuantExprWithout-24'/1]).
-export(['K-QuantExprWithout-25'/1]).
-export(['K-QuantExprWithout-26'/1]).
-export(['K-QuantExprWithout-27'/1]).
-export(['K-QuantExprWithout-28'/1]).
-export(['K-QuantExprWithout-29'/1]).
-export(['K-QuantExprWithout-30'/1]).
-export(['K-QuantExprWithout-31'/1]).
-export(['K-QuantExprWithout-32'/1]).
-export(['K-QuantExprWithout-33'/1]).
-export(['K-QuantExprWithout-34'/1]).
-export(['K-QuantExprWithout-35'/1]).
-export(['K-QuantExprWithout-36'/1]).
-export(['K-QuantExprWithout-37'/1]).
-export(['K-QuantExprWithout-38'/1]).
-export(['K-QuantExprWithout-39'/1]).
-export(['K-QuantExprWithout-40'/1]).
-export(['K-QuantExprWithout-41'/1]).
-export(['K-QuantExprWithout-42'/1]).
-export(['K-QuantExprWithout-43'/1]).
-export(['K-QuantExprWithout-44'/1]).
-export(['K-QuantExprWithout-45'/1]).
-export(['K-QuantExprWithout-46'/1]).
-export(['K-QuantExprWithout-47'/1]).
-export(['K-QuantExprWithout-48'/1]).
-export(['K-QuantExprWithout-49'/1]).
-export(['K-QuantExprWithout-50'/1]).
-export(['K-QuantExprWithout-51'/1]).
-export(['K-QuantExprWithout-52'/1]).
-export(['K-QuantExprWithout-53'/1]).
-export(['K-QuantExprWithout-54'/1]).
-export(['K-QuantExprWithout-55'/1]).
-export(['K-QuantExprWithout-56'/1]).
-export(['K-QuantExprWithout-57'/1]).
-export(['K-QuantExprWithout-58'/1]).
-export(['K-QuantExprWithout-59'/1]).
-export(['K-QuantExprWithout-60'/1]).
-export(['K-QuantExprWithout-61'/1]).
-export(['K-QuantExprWithout-62'/1]).
-export(['K-QuantExprWithout-63'/1]).
-export(['K-QuantExprWithout-64'/1]).
-export(['K-QuantExprWithout-65'/1]).
-export(['K-QuantExprWithout-66'/1]).
-export(['K-QuantExprWithout-67'/1]).
-export(['K-QuantExprWithout-68'/1]).
-export(['K-QuantExprWithout-69'/1]).
-export(['K-QuantExprWithout-70'/1]).
-export(['K-QuantExprWithout-71'/1]).
-export(['K-QuantExprWithout-72'/1]).
-export(['K-QuantExprWithout-73'/1]).
-export(['K-QuantExprWithout-74'/1]).
-export(['K-QuantExprWithout-75'/1]).
-export(['K-QuantExprWithout-76'/1]).
-export(['K-QuantExprWithout-77'/1]).
-export(['K-QuantExprWithout-78'/1]).
-export(['K-QuantExprWithout-79'/1]).
-export(['K-QuantExprWithout-80'/1]).
-export(['K-QuantExprWithout-81'/1]).
-export(['K-QuantExprWithout-82'/1]).
-export(['K-QuantExprWithout-83'/1]).
-export(['K-QuantExprWithout-84'/1]).
-export(['K-QuantExprWithout-85'/1]).
-export(['K-QuantExprWithout-86'/1]).
-export(['K-QuantExprWithout-87'/1]).
-export(['K-QuantExprWithout-88'/1]).
-export(['K-QuantExprWithout-89'/1]).
-export(['K-QuantExprWithout-90'/1]).
-export(['K-QuantExprWithout-91'/1]).
-export(['K-QuantExprWithout-92'/1]).
-export(['K-QuantExprWithout-93'/1]).
-export(['K-QuantExprWithout-94'/1]).
-export(['K-QuantExprWithout-95'/1]).
-export(['K-QuantExprWithout-96'/1]).
-export(['K-QuantExprWithout-97'/1]).
-export(['K-QuantExprWithout-98'/1]).
-export(['K-QuantExprWithout-99'/1]).
-export(['K2-QuantExprWithout-1'/1]).
-export(['K2-QuantExprWithout-2'/1]).
-export(['K2-QuantExprWithout-3'/1]).
-export(['K2-QuantExprWithout-4'/1]).
-export(['K2-QuantExprWithout-5'/1]).
-export(['K2-QuantExprWithout-6'/1]).
-export(['K2-QuantExprWithout-7'/1]).
-export(['K2-QuantExprWithout-8'/1]).
-export(['K2-QuantExprWithout-9'/1]).
-export(['K-QuantExprWith-1'/1]).
-export(['K-QuantExprWith-2'/1]).
-export(['K-QuantExprWith-3'/1]).
-export(['K-QuantExprWith-4'/1]).
-export(['K-QuantExprWith-5'/1]).
-export(['K-QuantExprWith-6'/1]).
-export(['K-QuantExprWith-7'/1]).
-export(['K-QuantExprWith-8'/1]).
-export(['K-QuantExprWith-9'/1]).
-export(['K-QuantExprWith-10'/1]).
-export(['K-QuantExprWith-11'/1]).
-export(['K-QuantExprWith-12'/1]).
-export(['K-QuantExprWith-13'/1]).
-export(['K-QuantExprWith-14'/1]).
-export(['K-QuantExprWith-15'/1]).
-export(['K-QuantExprWith-16'/1]).
-export(['K-QuantExprWith-17'/1]).
-export(['K-QuantExprWith-18'/1]).
-export(['K-QuantExprWith-19'/1]).
-export(['K-QuantExprWith-20'/1]).
-export(['K-QuantExprWith-21'/1]).
-export(['K-QuantExprWith-22'/1]).
-export(['K-QuantExprWith-23'/1]).
-export(['K-QuantExprWith-24'/1]).
-export(['cbcl-every-001'/1]).
-export(['cbcl-some-001'/1]).
-export(['cbcl-every-002'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> ct:timetrap({seconds,60}), xqerl_module:unload(all).
init_per_suite(Config) -> 
   DD = filename:dirname(filename:dirname(proplists:get_value(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   BaseDir = filename:join(TD, "prod")

,[{base_dir, BaseDir}|Config].
all() -> [
   'quantExpr-1',
   'quantExpr-2',
   'quantExpr-3',
   'quantExpr-4',
   'quantExpr-5',
   'quantExpr-6',
   'quantExpr-7',
   'quantExpr-8',
   'quantExpr-9',
   'quantExpr-10',
   'quantExpr-11',
   'quantExpr-12',
   'quantExpr-13',
   'quantExpr-14',
   'quantExpr-15',
   'quantExpr-16',
   'quantExpr-17',
   'quantExpr-18',
   'quantexpr-19',
   'quantExpr-20',
   'quantExpr-21',
   'quantExpr-22',
   'quantExpr-23',
   'quantExpr-24',
   'quantExpr-25',
   'quantExpr-26',
   'quantExpr-27',
   'quantExpr-28',
   'quantExpr-29',
   'quantExpr-30',
   'quantexpr-31',
   'quantexpr-32',
   'quantExpr-33',
   'quantexpr-34',
   'quantexpr-35',
   'quantexpr-36',
   'quantexpr-37',
   'quantexpr-38',
   'quantexpr-39',
   'quantexpr-40',
   'quantexpr-41',
   'quantexpr-42',
   'quantexpr-43',
   'quantexpr-44',
   'quantexpr-45',
   'quantexpr-46',
   'quantexpr-47',
   'quantexpr-48',
   'quantexpr-49',
   'quantexpr-50',
   'quantexpr-51',
   'quantexpr-52',
   'quantexpr-53',
   'quantexpr-54',
   'quantexpr-55',
   'quantexpr-56',
   'quantexpr-57',
   'quantexpr-58',
   'quantexpr-59',
   'quantExpr-60',
   'quantexpr-61',
   'quantexpr-62',
   'quantexpr-63',
   'quantexpr-64',
   'quantexpr-65',
   'quantexpr-66',
   'quantexpr-67',
   'quantexpr-68',
   'K-QuantExprWithout-1',
   'K-QuantExprWithout-2',
   'K-QuantExprWithout-3',
   'K-QuantExprWithout-4',
   'K-QuantExprWithout-5',
   'K-QuantExprWithout-6',
   'K-QuantExprWithout-7',
   'K-QuantExprWithout-8',
   'K-QuantExprWithout-9',
   'K-QuantExprWithout-10',
   'K-QuantExprWithout-11',
   'K-QuantExprWithout-12',
   'K-QuantExprWithout-13',
   'K-QuantExprWithout-14',
   'K-QuantExprWithout-15',
   'K-QuantExprWithout-16',
   'K-QuantExprWithout-17',
   'K-QuantExprWithout-18',
   'K-QuantExprWithout-19',
   'K-QuantExprWithout-20',
   'K-QuantExprWithout-21',
   'K-QuantExprWithout-22',
   'K-QuantExprWithout-23',
   'K-QuantExprWithout-24',
   'K-QuantExprWithout-25',
   'K-QuantExprWithout-26',
   'K-QuantExprWithout-27',
   'K-QuantExprWithout-28',
   'K-QuantExprWithout-29',
   'K-QuantExprWithout-30',
   'K-QuantExprWithout-31',
   'K-QuantExprWithout-32',
   'K-QuantExprWithout-33',
   'K-QuantExprWithout-34',
   'K-QuantExprWithout-35',
   'K-QuantExprWithout-36',
   'K-QuantExprWithout-37',
   'K-QuantExprWithout-38',
   'K-QuantExprWithout-39',
   'K-QuantExprWithout-40',
   'K-QuantExprWithout-41',
   'K-QuantExprWithout-42',
   'K-QuantExprWithout-43',
   'K-QuantExprWithout-44',
   'K-QuantExprWithout-45',
   'K-QuantExprWithout-46',
   'K-QuantExprWithout-47',
   'K-QuantExprWithout-48',
   'K-QuantExprWithout-49',
   'K-QuantExprWithout-50',
   'K-QuantExprWithout-51',
   'K-QuantExprWithout-52',
   'K-QuantExprWithout-53',
   'K-QuantExprWithout-54',
   'K-QuantExprWithout-55',
   'K-QuantExprWithout-56',
   'K-QuantExprWithout-57',
   'K-QuantExprWithout-58',
   'K-QuantExprWithout-59',
   'K-QuantExprWithout-60',
   'K-QuantExprWithout-61',
   'K-QuantExprWithout-62',
   'K-QuantExprWithout-63',
   'K-QuantExprWithout-64',
   'K-QuantExprWithout-65',
   'K-QuantExprWithout-66',
   'K-QuantExprWithout-67',
   'K-QuantExprWithout-68',
   'K-QuantExprWithout-69',
   'K-QuantExprWithout-70',
   'K-QuantExprWithout-71',
   'K-QuantExprWithout-72',
   'K-QuantExprWithout-73',
   'K-QuantExprWithout-74',
   'K-QuantExprWithout-75',
   'K-QuantExprWithout-76',
   'K-QuantExprWithout-77',
   'K-QuantExprWithout-78',
   'K-QuantExprWithout-79',
   'K-QuantExprWithout-80',
   'K-QuantExprWithout-81',
   'K-QuantExprWithout-82',
   'K-QuantExprWithout-83',
   'K-QuantExprWithout-84',
   'K-QuantExprWithout-85',
   'K-QuantExprWithout-86',
   'K-QuantExprWithout-87',
   'K-QuantExprWithout-88',
   'K-QuantExprWithout-89',
   'K-QuantExprWithout-90',
   'K-QuantExprWithout-91',
   'K-QuantExprWithout-92',
   'K-QuantExprWithout-93',
   'K-QuantExprWithout-94',
   'K-QuantExprWithout-95',
   'K-QuantExprWithout-96',
   'K-QuantExprWithout-97',
   'K-QuantExprWithout-98',
   'K-QuantExprWithout-99',
   'K2-QuantExprWithout-1',
   'K2-QuantExprWithout-2',
   'K2-QuantExprWithout-3',
   'K2-QuantExprWithout-4',
   'K2-QuantExprWithout-5',
   'K2-QuantExprWithout-6',
   'K2-QuantExprWithout-7',
   'K2-QuantExprWithout-8',
   'K2-QuantExprWithout-9',
   'K-QuantExprWith-1',
   'K-QuantExprWith-2',
   'K-QuantExprWith-3',
   'K-QuantExprWith-4',
   'K-QuantExprWith-5',
   'K-QuantExprWith-6',
   'K-QuantExprWith-7',
   'K-QuantExprWith-8',
   'K-QuantExprWith-9',
   'K-QuantExprWith-10',
   'K-QuantExprWith-11',
   'K-QuantExprWith-12',
   'K-QuantExprWith-13',
   'K-QuantExprWith-14',
   'K-QuantExprWith-15',
   'K-QuantExprWith-16',
   'K-QuantExprWith-17',
   'K-QuantExprWith-18',
   'K-QuantExprWith-19',
   'K-QuantExprWith-20',
   'K-QuantExprWith-21',
   'K-QuantExprWith-22',
   'K-QuantExprWith-23',
   'K-QuantExprWith-24',
   'cbcl-every-001',
   'cbcl-some-001',
   'cbcl-every-002'].
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
'quantExpr-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $x in (1, 2) satisfies $x + $x = 3",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantExpr-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantExpr-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $x in (1, 2) satisfies $x + $x = 2",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantExpr-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantExpr-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $x in (1, 2) satisfies $x - 2 = 2",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantExpr-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantExpr-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $x in (1, 2) satisfies $x - 2 = 0",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantExpr-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantExpr-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $x in (1, 2) satisfies $x * 2 = 4",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantExpr-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantExpr-6'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $x in (1, 2) satisfies $x div 2 = 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantExpr-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantExpr-7'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $x in (1, 2) satisfies $x idiv 2 = 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantExpr-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantExpr-8'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $x in (1, 2) satisfies fn:avg(($x, 1)) = 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantExpr-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantExpr-9'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $x in (1, 2) satisfies fn:string($x) = \"1\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantExpr-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantExpr-10'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $x in (1, 2) satisfies fn:string-length(xs:string($x)) = 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantExpr-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantExpr-11'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $x in (1, 2) satisfies fn:count(($x)) = 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantExpr-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantExpr-12'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $x in (1, 2) satisfies fn:true()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantExpr-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantExpr-13'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $x in (1, 2) satisfies fn:false()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantExpr-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantExpr-14'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $x in (1, 2) satisfies fn:not($x)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantExpr-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantExpr-15'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $x in (1, 2) satisfies $x = 1 or $x = 2",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantExpr-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantExpr-16'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $x in (1, 2) satisfies $x = 1 and ($x +1) = 2",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantExpr-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantExpr-17'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $x in (\"A\",\"B\",\"C\") satisfies $x = \"A\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantExpr-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantExpr-18'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $x in (1,2,3), $y in (4,5,6) satisfies $x + $y = 5",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantExpr-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantexpr-19'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $x in (1,2,3), $y in (4,5,6) satisfies $x - $y = 5",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantexpr-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantExpr-20'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $x in (1,2,3), $y in (4,5,6) satisfies $x * $y = 10",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantExpr-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantExpr-21'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $x in (1,2,3), $y in (4,5,6) satisfies $x div $y = 2",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantExpr-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantExpr-22'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $x in (1,2,3), $y in (4,5,6) satisfies $x idiv $y = 2",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantExpr-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantExpr-23'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $x in (1,2,3), $y in (4,5,6) satisfies fn:string($x) = fn:string($y)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantExpr-23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantExpr-24'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $x in (1,2,3), $y in (4,5,6) satisfies xs:integer($x) = xs:integer($y)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantExpr-24.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantExpr-25'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $x in (1,2,3), $y in (4,5,6) satisfies xs:decimal($x) = xs:decimal($y)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantExpr-25.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantExpr-26'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $x in (1,2,3), $y in (4,5,6) satisfies xs:float($x) = xs:float($y)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantExpr-26.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantExpr-27'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $x in (1,2,3), $y in (4,5,6) satisfies xs:double($x) = xs:double($y)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantExpr-27.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantExpr-28'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $x in (\"true\", \"false\"), $y in (\"false\",\"true\") satisfies xs:boolean($x) = xs:boolean($y)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantExpr-28.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantExpr-29'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $x in (\"1980-05-05T13:13:13Z\", \"1980-05-05T13:13:13Z\"), $y in (\"1980-05-05T13:13:13Z\",\"1980-05-05T13:13:13Z\") satisfies xs:dateTime($x) = xs:dateTime($y)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantExpr-29.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantExpr-30'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $x in (\"1985-07-05Z\", \"1985-07-05Z\"), $y in (\"1985-07-05Z\",\"1985-07-05Z\") satisfies xs:date($x) = xs:date($y)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantExpr-30.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantexpr-31'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $x in (1, 2) satisfies $x + $x = 3",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantexpr-31.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantexpr-32'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $x in (1, 1) satisfies $x + $x = 2",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantexpr-32.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantExpr-33'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $x in (1, 2) satisfies $x - 2 = 2",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantExpr-33.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantexpr-34'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $x in (2, 2) satisfies $x - 2 = 0",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantexpr-34.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantexpr-35'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $x in (1, 2) satisfies $x * 2 = 4",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantexpr-35.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantexpr-36'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $x in (1, 2) satisfies $x div 2 = 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantexpr-36.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantexpr-37'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $x in (1, 2) satisfies $x idiv 2 = 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantexpr-37.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantexpr-38'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $x in (1, 2) satisfies fn:avg(($x, 1)) = 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantexpr-38.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantexpr-39'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $x in (1, 2) satisfies fn:string($x) = \"1\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantexpr-39.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantexpr-40'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $x in (1, 2) satisfies fn:string-length(xs:string($x)) = 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantexpr-40.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantexpr-41'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $x in (1, 2) satisfies fn:count(($x)) = 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantexpr-41.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantexpr-42'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $x in (1, 2) satisfies fn:true()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantexpr-42.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantexpr-43'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $x in (1, 2) satisfies fn:false()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantexpr-43.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantexpr-44'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $x in (1, 2) satisfies fn:not($x)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantexpr-44.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantexpr-45'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $x in (1, 2) satisfies $x = 1 or $x = 2",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantexpr-45.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantexpr-46'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $x in (1, 2) satisfies $x = 1 and ($x +1) = 2",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantexpr-46.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantexpr-47'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $x in (\"A\",\"B\",\"C\") satisfies $x = \"A\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantexpr-47.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantexpr-48'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $x in (1,2,3), $y in (4,5,6) satisfies $x + $y = 5",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantexpr-48.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantexpr-49'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $x in (1,2,3), $y in (4,5,6) satisfies $x - $y = 5",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantexpr-49.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantexpr-50'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $x in (1,2,3), $y in (4,5,6) satisfies $x * $y = 10",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantexpr-50.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantexpr-51'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $x in (1,2,3), $y in (4,5,6) satisfies $x div $y = 2",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantexpr-51.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantexpr-52'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $x in (1,2,3), $y in (4,5,6) satisfies $x idiv $y = 2",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantexpr-52.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantexpr-53'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $x in (1,2,3), $y in (4,5,6) satisfies fn:string($x) = fn:string($y)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantexpr-53.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantexpr-54'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $x in (1,2,3), $y in (4,5,6) satisfies xs:integer($x) = xs:integer($y)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantexpr-54.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantexpr-55'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $x in (1,2,3), $y in (4,5,6) satisfies xs:decimal($x) = xs:decimal($y)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantexpr-55.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantexpr-56'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $x in (1,2,3), $y in (4,5,6) satisfies xs:float($x) = xs:float($y)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantexpr-56.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantexpr-57'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $x in (1,2,3), $y in (4,5,6) satisfies xs:double($x) = xs:double($y)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantexpr-57.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantexpr-58'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $x in (\"true\", \"false\"), $y in (\"false\",\"true\") satisfies xs:boolean($x) = xs:boolean($y)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantexpr-58.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantexpr-59'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $x in (\"1980-05-05T13:13:13Z\", \"1980-05-05T13:13:13Z\"), $y in (\"1980-05-05T13:13:13Z\",\"1980-05-05T13:13:13Z\") satisfies xs:dateTime($x) = xs:dateTime($y)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantexpr-59.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantExpr-60'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $x in (\"1985-07-05Z\", \"1985-07-05Z\"), $y in (\"1985-07-05Z\",\"1985-07-05Z\") satisfies xs:date($x) = xs:date($y)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantExpr-60.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantexpr-61'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $x as xs:integer in (1, 2, 3) , $y as xs:integer in (2, 3, 4) satisfies $x + $y = 4",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantexpr-61.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantexpr-62'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $x as xs:string in (\"cat\",\"dog\",\"rat\") satisfies fn:string-length($x) = 3",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantexpr-62.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantexpr-63'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $x as xs:string in (\"cat\",\"dog\",\"rat\") satisfies fn:string-length($x) = 3",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantexpr-63.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantexpr-64'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $x as xs:string in (\"cat\",\"dog\",\"rat\"), $y as xs:integer in (3, 3, 3) satisfies fn:string-length($x) = $y",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantexpr-64.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantexpr-65'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $x as xs:integer in (1, 2, 3), $y as xs:float in (xs:float(2), xs:float(3)) satisfies $x + $y = 5",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantexpr-65.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantexpr-66'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare function local:f($x, $y) {
          let $a := $x
          where empty($y)   (every $i in $x satisfies $i = $y)
          return $a
        };
        local:f(\"x\", ())
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantexpr-66.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantexpr-67'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare function local:f($x, $y) {
            let $a := $x
            where (every $i in $x satisfies $i = $y) or empty($y)
            return $a
        };
        local:f(\"x\", ())
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantexpr-67.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "x") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'quantexpr-68'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare function local:f($x, $y) {
            let $a := $x
            where (every $i in $x satisfies $i = $y) or empty($y)
            return true()
        };
        local:f((current-date(), current-date(), current-date()), (current-date()))
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "quantexpr-68.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $foo in 1 satisfies QName(\"example.com/\", \"ncname\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $foo in 1 satisfies QName(\"example.com/\", \"ncname\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $foo in 1 satisfies $foo eq \"1\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $foo in 1 satisfies $foo eq \"1\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $i in (0, 2, 3) satisfies count($i)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-6'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $i in (1, 2, 3) satisfies count($i)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-7'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $i in subsequence((0, 1, 2, current-time()), 1, 3) satisfies boolean($i treat as xs:integer)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-8'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $i in subsequence((1, 2, 3, current-time()), 1, 3) satisfies boolean($i treat as xs:integer)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-9'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $i in () satisfies $i",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-10'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "not(some $i in () satisfies $i)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-11'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $foo in 1 satisfies true()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-12'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $foo in 1 satisfies true()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-13'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "not(some $foo in 1 satisfies false())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-14'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "not(every $foo in 1 satisfies false())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-15'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $foo in 1 satisfies 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-16'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $foo in 1 satisfies 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-17'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $foo in 1 satisfies \"a string\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-18'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $foo in 1 satisfies \"a string\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-19'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $var in (true(), true(), true()) satisfies $var",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-20'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "not(every $var in (true(), false(), true()) satisfies $var)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-21'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "not(every $var in (false(), true(), true()) satisfies $var)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-22'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "not(every $var in (true(), true(), false()) satisfies $var)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-23'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $var in (true(), true(), true()) satisfies $var",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-24'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $var in (true(), false(), true()) satisfies $var",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-24.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-25'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $var in (false(), true(), true()) satisfies $var",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-25.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-26'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $var in (true(), true(), false()) satisfies $var",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-26.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-27'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "not(some $var in (false(), false(), false()) satisfies $var)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-27.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-28'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $var in (xs:hexBinary(\"FF\"), true(), true()) satisfies $var",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-28.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-29'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $var in (true(), xs:hexBinary(\"FF\"), true()) satisfies $var",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-29.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-30'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $var in (true(), true(), xs:hexBinary(\"FF\")) satisfies $var",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-30.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-31'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $var in (xs:hexBinary(\"FF\"), false(), true()) satisfies $var",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-31.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-32'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $var in (false(), xs:hexBinary(\"FF\"), true()) satisfies $var",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-32.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-33'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $var in (true(), true(), xs:hexBinary(\"FF\")) satisfies $var",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-33.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FORG0006") of 
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
'K-QuantExprWithout-34'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "not(every $var in (false(), true(), true()) satisfies $var)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-34.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-35'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "not(every $var in (true(), false(), true()) satisfies $var)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-35.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-36'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "not(every $var in (true(), true(), false()) satisfies $var)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-36.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-37'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $var in (true(), true(), true()) satisfies $var",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-37.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-38'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $var in (true(), false(), true()) satisfies $var",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-38.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-39'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $var in (false(), true(), true()) satisfies $var",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-39.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-40'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $var in (true(), true(), false()) satisfies $var",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-40.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-41'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "not(some $var in (false(), false(), false()) satisfies $var)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-41.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-42'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare variable $i := false(); 
        some $i in (true(), true(), true()) satisfies $i",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-42.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-43'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare variable $i := false(); 
        declare variable $t := false(); 
        some $i in (true(), true()), $t in (true(), true()) satisfies $i eq $t",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-43.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-44'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare variable $i := false(); 
        declare variable $t := false(); 
        some $i in (true(), true()), $t in (true(), true()) satisfies ($i eq $t)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-44.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-45'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare variable $i := false(); 
        every $i in (true(), true()) satisfies $i",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-45.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-46'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $var in (1, 2, 3) satisfies $var eq 3",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-46.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-47'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "not(every $var in (1, 2, 3) satisfies $var eq 3)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-47.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-48'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $var in (1, 2, 3) satisfies $var eq 1 or $var eq 2 or $var eq 3",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-48.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-49'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $var in (1, 2, 3) satisfies $var eq 1 or $var eq 2 or $var eq 3",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-49.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-50'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $aaa in (1, 2, 3), $bbb in (3, 2, 1) satisfies $aaa + $bbb eq 4",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-50.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-51'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $aaa in (3, 3, 3), $bbb in (3, 3, 3) satisfies $aaa + $bbb eq 6",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-51.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-52'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "not(every $var in (1, 2, 3) satisfies $var eq 3)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-52.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-53'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $var in (1, 2, 3) satisfies $var eq 3",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-53.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-54'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "true() eq (some $a in 1 satisfies $a)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-54.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-55'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "true() eq (every $a in 1 satisfies $a)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-55.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-56'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "true() eq (some $fn:name in (1, 2) satisfies $fn:name)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-56.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-57'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "true() eq (some $xs:name in (1, 2) satisfies $xs:name)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-57.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-58'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "true() eq (every $fn:name in (1, 2) satisfies $fn:name)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-58.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-59'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "true() eq (every $xs:name in (1, 2) satisfies $xs:name)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-59.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-60'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $foo in 1 satisfies $NOTEXIST",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-60.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-61'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $foo in 1 satisfies $NOTEXIST",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-61.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-62'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $foo in (1, $foo) satisfies 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-62.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-63'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $foo in (1, $foo) satisfies 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-63.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-64'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $foo in 1 satisfies $bar + (some $bar in 2 satisfies $bar)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-64.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-65'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $foo in 1 satisfies $bar + (some $bar in 2 satisfies $bar)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-65.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-66'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $foo in 1 satisfies $bar + (every $bar in 2 satisfies $bar)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-66.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-67'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $foo in 1 satisfies $bar + (every $bar in 2 satisfies $bar)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-67.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-68'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $a in (1, 2), $b in (1, 2), $c in (1, 2) satisfies 1, $a",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-68.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-69'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $a in (1, 2), $b in (1, 2), $c in (1, 2) satisfies 1, $b",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-69.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-70'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $a in (1, 2), $b in (1, 2), $c in (1, 2) satisfies 1, $c",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-70.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-71'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $a in (1, 2), $b in (1, 2), $c in (1, 2) satisfies 1, $a",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-71.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-72'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $a in (1, 2), $b in (1, 2), $c in (1, 2) satisfies 1, $b",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-72.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-73'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $a in (1, 2), $b in (1, 2), $c in (1, 2) satisfies 1, $c",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-73.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-74'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $foo in (1, $2) return 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-74.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-75'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $foo in (1, $2) return 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-75.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-76'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $foo in (1, 2, $foo) satisfies 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-76.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-77'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $foo in (1, $foo, 3) satisfies 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-77.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-78'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $foo in ($foo, 2, 3) satisfies 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-78.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-79'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $foo in $foo satisfies 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-79.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-80'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $foo in (1, 2, $foo) satisfies 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-80.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-81'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $foo in (1, $foo, 3) satisfies 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-81.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-82'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $foo in ($foo, 2, 3) satisfies 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-82.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-83'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $foo in $foo satisfies 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-83.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-84'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $a in 1, $b in $b satisfies 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-84.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-85'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $a in (1, 2, 3), $b in (1, 2, 3, $b) satisfies $a eq $b",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-85.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-86'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $a in (1, 2, 3), $b in (1, 2, 3, $b) satisfies ($a eq $b)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-86.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-87'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $a in (1, 2), $b in (1, 2) satisfies 1, $b",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-87.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-88'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $a in (1, 2), $b in (1, 2) satisfies 1, $b",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-88.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-89'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $a in (1, 2, 3), $b in ($a, 4) satisfies $b gt 0",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-89.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-90'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $a in (1, 2, 3), $b in ($a, 4) satisfies $b gt 0",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-90.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-91'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $a in (1, 2), $b in $a satisfies $b",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-91.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-92'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $a in (1, 2), $b in $a satisfies $b",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-92.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-93'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "deep-equal((for $a in 1, $b in $a, $c in $a, $d in $c return ($a, $b, $c, $d)), (1, 1, 1, 1))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-93.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-94'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $i in (1, 2, 3) satisfies ($i, $i)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-94.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-95'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $i in (1, 2, 3) satisfies ($i, $i)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-95.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-96'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $i in (1, 2, 3) satisfies ($i, $i)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-96.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-97'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $i in (1, 2, 3) satisfies ($i, $i)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-97.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-98'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $a at $p in (1, 2) satisfies $a",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-98.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWithout-99'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $a at $p in (1, 2) satisfies $a",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWithout-99.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-QuantExprWithout-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "SOME $i in (1, 2, 3) satisfies $i",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-QuantExprWithout-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-QuantExprWithout-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "EVERY $i in (1, 2, 3) satisfies $i",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-QuantExprWithout-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-QuantExprWithout-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<people id=\"\"/>/(some $id in @id satisfies true())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-QuantExprWithout-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-QuantExprWithout-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $id in attribute::id satisfies $id",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-QuantExprWithout-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-QuantExprWithout-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e/>/(some $v in self::node() satisfies $v)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-QuantExprWithout-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-QuantExprWithout-6'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e/>/(every $v in self::node() satisfies $v)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-QuantExprWithout-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-QuantExprWithout-7'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e/>/(every $b in 1, $v in self::node() satisfies $v)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-QuantExprWithout-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-QuantExprWithout-8'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e/>/(some $b in 1, $v in self::node() satisfies $v)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-QuantExprWithout-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-QuantExprWithout-9'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "let $firstSeq := (<a/>, <b/>, <e><c/></e>) let $secondSeq := (<a attr=\"\"/>, <b>text</b>, <e><c/></e>) return some $i in $firstSeq satisfies $secondSeq[deep-equal(.,$i)]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-QuantExprWithout-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWith-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $a as item()* in (1, 2), $b as item()* in $a satisfies $b",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWith-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWith-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $a as item()* in (1, 2), $b as item()* in $a satisfies $b",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWith-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWith-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $a as item()? in (1, 2), $b as item()? in $a satisfies $b",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWith-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWith-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $a as item()? in (1, 2), $b as item()? in $a satisfies $b",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWith-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWith-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $a as item()+ in (1, 2), $b as item()+ in $a satisfies $b",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWith-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWith-6'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $a as item()+ in (1, 2), $b as item()+ in $a satisfies $b",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWith-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWith-7'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $a as empty-sequence()? in (1, 2) satisfies $a",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWith-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWith-8'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $a as empty-sequence()? in (1, 2) satisfies $a",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWith-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWith-9'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $a as xs:anyURI in 1 satisfies count($a)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWith-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWith-10'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $a as xs:anyURI in 1 satisfies count($a)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWith-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWith-11'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $a as empty-sequence() in (1, 2), $b as xs:integer in $a satisfies $b",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWith-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWith-12'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $a as empty-sequence() in (1, 2), $b as xs:integer in $a satisfies $b",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWith-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWith-13'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $a as xs:integer+ in (1, 2), $b as xs:string* in $a satisfies $b",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWith-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWith-14'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $a as xs:integer+ in (1, 2), $b as xs:string* in $a satisfies $b",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWith-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWith-15'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $a as item()* in (1, 2), $b as xs:string in $a satisfies $b",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWith-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWith-16'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $a as item()* in (1, 2), $b as xs:string in $a satisfies $b",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWith-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWith-17'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $a as xs:integer+ in (1, 2), $b as xs:integer in $a satisfies $b",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWith-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWith-18'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $a as item()* in (1, 2), $b as xs:integer in $a satisfies $b",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWith-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWith-19'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $a as item() at $p in (1, 2) satisfies $a",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWith-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWith-20'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $a as item() at $p in (1, 2) satisfies $a",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWith-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWith-21'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $a as empty-sequence() in (), $b as xs:integer in $a satisfies $b",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWith-21.xq"), Qry1),
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
'K-QuantExprWith-22'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "not(some $a as empty-sequence() in (), $b as xs:integer in $a satisfies $b)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWith-22.xq"), Qry1),
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
'K-QuantExprWith-23'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $a as xs:integer in (1, 2), $b as xs:integer in $a satisfies $b",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWith-23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-QuantExprWith-24'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $a as xs:integer in (1, 2), $b as xs:integer in $a satisfies $b",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-QuantExprWith-24.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-every-001'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $x in (1 to 10)[. div 2 = 11] satisfies false()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-every-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-some-001'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "some $x in (1 to 10)[. div 2 = 11] satisfies true()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-some-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-every-002'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "every $x in (1 to 10)[. mod 2 = 0] satisfies true()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-every-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
