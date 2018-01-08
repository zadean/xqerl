-module('prod_GeneralComp_eq_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['generalexpression1'/1]).
-export(['generalexpression2'/1]).
-export(['generalexpression3'/1]).
-export(['generalexpression4'/1]).
-export(['generalexpression5'/1]).
-export(['generalexpression6'/1]).
-export(['generalexpression7'/1]).
-export(['generalexpression8'/1]).
-export(['generalexpression9'/1]).
-export(['generalexpression10'/1]).
-export(['generalexpression11'/1]).
-export(['generalexpression12'/1]).
-export(['generalexpression13'/1]).
-export(['generalexpression14'/1]).
-export(['generalexpression15'/1]).
-export(['generalexpression16'/1]).
-export(['generalexpression17'/1]).
-export(['generalexpression18'/1]).
-export(['generalexpression19'/1]).
-export(['generalexpression20'/1]).
-export(['generalexpression21'/1]).
-export(['generalexpression22'/1]).
-export(['generalexpression23'/1]).
-export(['generalexpression24'/1]).
-export(['generalexpression25'/1]).
-export(['generalexpression26'/1]).
-export(['generalexpression27'/1]).
-export(['generalexpression28'/1]).
-export(['generalexpression29'/1]).
-export(['generalexpression30'/1]).
-export(['generalexpression31'/1]).
-export(['generalexpression32'/1]).
-export(['generalexpression33'/1]).
-export(['generalexpression34'/1]).
-export(['generalexpression35'/1]).
-export(['generalexpression36'/1]).
-export(['generalexpression37'/1]).
-export(['generalexpression38'/1]).
-export(['generalexpression39'/1]).
-export(['generalexpression40'/1]).
-export(['generalexpression41'/1]).
-export(['generalexpression42'/1]).
-export(['generalexpression43'/1]).
-export(['generalexpression44'/1]).
-export(['generalexpression45'/1]).
-export(['generalexpression46'/1]).
-export(['generalexpression47'/1]).
-export(['generalexpression48'/1]).
-export(['generalexpression49'/1]).
-export(['generalexpression50'/1]).
-export(['generalexpression51'/1]).
-export(['generalexpression52'/1]).
-export(['generalexpression53'/1]).
-export(['generalexpression54'/1]).
-export(['generalexpression55'/1]).
-export(['generalexpression56'/1]).
-export(['generalexpression57'/1]).
-export(['generalexpression58'/1]).
-export(['generalexpression59'/1]).
-export(['generalexpression60'/1]).
-export(['generalexpression61'/1]).
-export(['generalexpression62'/1]).
-export(['generalexpression63'/1]).
-export(['generalexpression64'/1]).
-export(['generalexpression65'/1]).
-export(['generalexpression66'/1]).
-export(['generalexpression67'/1]).
-export(['generalexpression68'/1]).
-export(['generalexpression69'/1]).
-export(['generalexpression70'/1]).
-export(['generalexpression71'/1]).
-export(['generalexpression72'/1]).
-export(['generalexpression73'/1]).
-export(['generalexpression74'/1]).
-export(['generalexpression75'/1]).
-export(['generalexpression76'/1]).
-export(['generalexpression77'/1]).
-export(['generalexpression78'/1]).
-export(['generalexpression79'/1]).
-export(['generalexpression80'/1]).
-export(['generalexpression81'/1]).
-export(['generalexpression82'/1]).
-export(['generalexpression83'/1]).
-export(['generalexpression84'/1]).
-export(['generalexpression85'/1]).
-export(['generalexpression86'/1]).
-export(['generalexpression87'/1]).
-export(['generalexpression88'/1]).
-export(['generalexpression89'/1]).
-export(['generalexpression90'/1]).
-export(['generalexpression91'/1]).
-export(['generalexpression92'/1]).
-export(['generalexpression93'/1]).
-export(['generalexpression94'/1]).
-export(['generalexpression95'/1]).
-export(['generalexpression96'/1]).
-export(['generalexpression97'/1]).
-export(['generalexpression98'/1]).
-export(['generalexpression99'/1]).
-export(['K-GenCompEq-1'/1]).
-export(['K-GenCompEq-2'/1]).
-export(['K-GenCompEq-3'/1]).
-export(['K-GenCompEq-4'/1]).
-export(['K-GenCompEq-5'/1]).
-export(['K-GenCompEq-6'/1]).
-export(['K-GenCompEq-7'/1]).
-export(['K-GenCompEq-8'/1]).
-export(['K-GenCompEq-9'/1]).
-export(['K-GenCompEq-10'/1]).
-export(['K-GenCompEq-11'/1]).
-export(['K-GenCompEq-12'/1]).
-export(['K-GenCompEq-13'/1]).
-export(['K-GenCompEq-14'/1]).
-export(['K-GenCompEq-15'/1]).
-export(['K-GenCompEq-16'/1]).
-export(['K-GenCompEq-17'/1]).
-export(['K-GenCompEq-18'/1]).
-export(['K-GenCompEq-19'/1]).
-export(['K-GenCompEq-20'/1]).
-export(['K-GenCompEq-21'/1]).
-export(['K-GenCompEq-22'/1]).
-export(['K-GenCompEq-23'/1]).
-export(['K-GenCompEq-24'/1]).
-export(['K-GenCompEq-25'/1]).
-export(['K-GenCompEq-26'/1]).
-export(['K-GenCompEq-27'/1]).
-export(['K-GenCompEq-28'/1]).
-export(['K-GenCompEq-29'/1]).
-export(['K-GenCompEq-30'/1]).
-export(['K-GenCompEq-31'/1]).
-export(['K-GenCompEq-32'/1]).
-export(['K-GenCompEq-33'/1]).
-export(['K-GenCompEq-34'/1]).
-export(['K-GenCompEq-35'/1]).
-export(['K-GenCompEq-36'/1]).
-export(['K-GenCompEq-37'/1]).
-export(['K-GenCompEq-38'/1]).
-export(['K-GenCompEq-39'/1]).
-export(['K-GenCompEq-40'/1]).
-export(['K-GenCompEq-41'/1]).
-export(['K-GenCompEq-42'/1]).
-export(['K-GenCompEq-43'/1]).
-export(['K-GenCompEq-44'/1]).
-export(['K-GenCompEq-45'/1]).
-export(['K-GenCompEq-46'/1]).
-export(['K-GenCompEq-47'/1]).
-export(['K-GenCompEq-48'/1]).
-export(['K-GenCompEq-49'/1]).
-export(['K-GenCompEq-50'/1]).
-export(['K-GenCompEq-51'/1]).
-export(['K-GenCompEq-52'/1]).
-export(['K-GenCompEq-53'/1]).
-export(['K-GenCompEq-54'/1]).
-export(['K-GenCompEq-55'/1]).
-export(['K-GenCompEq-56'/1]).
-export(['K-GenCompEq-57'/1]).
-export(['K-GenCompEq-58'/1]).
-export(['K-GenCompEq-59'/1]).
-export(['K2-GenCompEq-1'/1]).
-export(['K2-GenCompEq-2'/1]).
-export(['K2-GenCompEq-3'/1]).
-export(['K2-GenCompEq-4'/1]).
-export(['K2-GenCompEq-5'/1]).
-export(['K2-GenCompEq-6'/1]).
-export(['K2-GenCompEq-7'/1]).
-export(['K2-GenCompEq-8'/1]).
-export(['GenCompEq-1'/1]).
-export(['GenCompEq-2'/1]).
-export(['GenCompEq-3'/1]).
-export(['GenCompEq-4'/1]).
-export(['GenCompEq-5'/1]).
-export(['GenCompEq-6'/1]).
-export(['GenCompEq-7'/1]).
-export(['GenCompEq-8'/1]).
-export(['GenCompEq-9'/1]).
-export(['GenCompEq-10'/1]).
-export(['GenCompEq-11'/1]).
-export(['GenCompEq-12'/1]).
-export(['GenCompEq-13'/1]).
-export(['GenCompEq-14'/1]).
-export(['GenCompEq-15'/1]).
-export(['GenCompEq-16'/1]).
-export(['GenCompEq-17'/1]).
-export(['GenCompEq-18'/1]).
-export(['GenCompEq-19'/1]).
-export(['GenCompEq-20'/1]).
-export(['GenCompEq-21'/1]).
-export(['GenCompEq-22'/1]).
-export(['GenCompEq-23'/1]).
-export(['GenCompEq-24'/1]).
-export(['GenCompEq-25'/1]).
-export(['GenCompEq-26'/1]).
-export(['GenCompEq-27'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> ct:timetrap({seconds,60}), xqerl_module:unload(all).
init_per_suite(Config) -> 
   DD = filename:dirname(filename:dirname(proplists:get_value(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   BaseDir = filename:join(TD, "prod")

,[{base_dir, BaseDir}|Config].
all() -> [
   'generalexpression1',
   'generalexpression2',
   'generalexpression3',
   'generalexpression4',
   'generalexpression5',
   'generalexpression6',
   'generalexpression7',
   'generalexpression8',
   'generalexpression9',
   'generalexpression10',
   'generalexpression11',
   'generalexpression12',
   'generalexpression13',
   'generalexpression14',
   'generalexpression15',
   'generalexpression16',
   'generalexpression17',
   'generalexpression18',
   'generalexpression19',
   'generalexpression20',
   'generalexpression21',
   'generalexpression22',
   'generalexpression23',
   'generalexpression24',
   'generalexpression25',
   'generalexpression26',
   'generalexpression27',
   'generalexpression28',
   'generalexpression29',
   'generalexpression30',
   'generalexpression31',
   'generalexpression32',
   'generalexpression33',
   'generalexpression34',
   'generalexpression35',
   'generalexpression36',
   'generalexpression37',
   'generalexpression38',
   'generalexpression39',
   'generalexpression40',
   'generalexpression41',
   'generalexpression42',
   'generalexpression43',
   'generalexpression44',
   'generalexpression45',
   'generalexpression46',
   'generalexpression47',
   'generalexpression48',
   'generalexpression49',
   'generalexpression50',
   'generalexpression51',
   'generalexpression52',
   'generalexpression53',
   'generalexpression54',
   'generalexpression55',
   'generalexpression56',
   'generalexpression57',
   'generalexpression58',
   'generalexpression59',
   'generalexpression60',
   'generalexpression61',
   'generalexpression62',
   'generalexpression63',
   'generalexpression64',
   'generalexpression65',
   'generalexpression66',
   'generalexpression67',
   'generalexpression68',
   'generalexpression69',
   'generalexpression70',
   'generalexpression71',
   'generalexpression72',
   'generalexpression73',
   'generalexpression74',
   'generalexpression75',
   'generalexpression76',
   'generalexpression77',
   'generalexpression78',
   'generalexpression79',
   'generalexpression80',
   'generalexpression81',
   'generalexpression82',
   'generalexpression83',
   'generalexpression84',
   'generalexpression85',
   'generalexpression86',
   'generalexpression87',
   'generalexpression88',
   'generalexpression89',
   'generalexpression90',
   'generalexpression91',
   'generalexpression92',
   'generalexpression93',
   'generalexpression94',
   'generalexpression95',
   'generalexpression96',
   'generalexpression97',
   'generalexpression98',
   'generalexpression99',
   'K-GenCompEq-1',
   'K-GenCompEq-2',
   'K-GenCompEq-3',
   'K-GenCompEq-4',
   'K-GenCompEq-5',
   'K-GenCompEq-6',
   'K-GenCompEq-7',
   'K-GenCompEq-8',
   'K-GenCompEq-9',
   'K-GenCompEq-10',
   'K-GenCompEq-11',
   'K-GenCompEq-12',
   'K-GenCompEq-13',
   'K-GenCompEq-14',
   'K-GenCompEq-15',
   'K-GenCompEq-16',
   'K-GenCompEq-17',
   'K-GenCompEq-18',
   'K-GenCompEq-19',
   'K-GenCompEq-20',
   'K-GenCompEq-21',
   'K-GenCompEq-22',
   'K-GenCompEq-23',
   'K-GenCompEq-24',
   'K-GenCompEq-25',
   'K-GenCompEq-26',
   'K-GenCompEq-27',
   'K-GenCompEq-28',
   'K-GenCompEq-29',
   'K-GenCompEq-30',
   'K-GenCompEq-31',
   'K-GenCompEq-32',
   'K-GenCompEq-33',
   'K-GenCompEq-34',
   'K-GenCompEq-35',
   'K-GenCompEq-36',
   'K-GenCompEq-37',
   'K-GenCompEq-38',
   'K-GenCompEq-39',
   'K-GenCompEq-40',
   'K-GenCompEq-41',
   'K-GenCompEq-42',
   'K-GenCompEq-43',
   'K-GenCompEq-44',
   'K-GenCompEq-45',
   'K-GenCompEq-46',
   'K-GenCompEq-47',
   'K-GenCompEq-48',
   'K-GenCompEq-49',
   'K-GenCompEq-50',
   'K-GenCompEq-51',
   'K-GenCompEq-52',
   'K-GenCompEq-53',
   'K-GenCompEq-54',
   'K-GenCompEq-55',
   'K-GenCompEq-56',
   'K-GenCompEq-57',
   'K-GenCompEq-58',
   'K-GenCompEq-59',
   'K2-GenCompEq-1',
   'K2-GenCompEq-2',
   'K2-GenCompEq-3',
   'K2-GenCompEq-4',
   'K2-GenCompEq-5',
   'K2-GenCompEq-6',
   'K2-GenCompEq-7',
   'K2-GenCompEq-8',
   'GenCompEq-1',
   'GenCompEq-2',
   'GenCompEq-3',
   'GenCompEq-4',
   'GenCompEq-5',
   'GenCompEq-6',
   'GenCompEq-7',
   'GenCompEq-8',
   'GenCompEq-9',
   'GenCompEq-10',
   'GenCompEq-11',
   'GenCompEq-12',
   'GenCompEq-13',
   'GenCompEq-14',
   'GenCompEq-15',
   'GenCompEq-16',
   'GenCompEq-17',
   'GenCompEq-18',
   'GenCompEq-19',
   'GenCompEq-20',
   'GenCompEq-21',
   'GenCompEq-22',
   'GenCompEq-23',
   'GenCompEq-24',
   'GenCompEq-25',
   'GenCompEq-26',
   'GenCompEq-27'].
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
'generalexpression1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "() = ()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "() = 10000",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "() = (50000)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "() = (10000,50000)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "() = <a>10000</a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression6'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "() = (<a>10000</a>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression7'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "() = (<a>10000</a>,<b>50000</b>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression8'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "() = (/works/employee[1]/hours[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression8.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression9'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "() = (/works/employee[1]/hours[1],/works/employee[6]/hours[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression9.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression10'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "() = ($works/works/employee[1]/hours[1],$staff/staff/employee[6]/grade[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-and-staff',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression10.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression11'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "10000 = ()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression12'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "10000 = ()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression13'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "10000 = (10000,50000)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression14'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "10000 = <a>10000</a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression15'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "10000 = (<a>10000</a>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression16'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "10000 = (<a>10000</a>,<b>50000</b>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression17'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "10000 = (/works/employee[1]/hours[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression17.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression18'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "10000 = (/works/employee[1]/hours[1],/works/employee[6]/hours[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression18.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression19'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "10000 = ($works/works/employee[1]/hours[1],$staff/staff/employee[6]/grade[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-and-staff',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression19.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression20'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(50000) = ()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression21'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(50000) = 10000",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression22'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(50000) = (50000)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression23'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(50000) = (10000,50000)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression24'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(50000) = <a>10000</a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression24.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression25'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(50000) = (<a>10000</a>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression25.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression26'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(50000) = (<a>10000</a>,<b>50000</b>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression26.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression27'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(50000) = (/works/employee[1]/hours[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression27.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression28'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(50000) = (/works/employee[1]/hours[1],/works/employee[6]/hours[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression28.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression29'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(50000) = ($works/works/employee[1]/hours[1],$staff/staff/employee[6]/grade[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-and-staff',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression29.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression30'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(10000,50000) = ()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression30.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression31'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(10000,50000) = 10000",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression31.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression32'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(10000,50000) = (50000)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression32.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression33'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(10000,50000) = (10000,50000)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression33.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression34'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(10000,50000) = <a>10000</a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression34.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression35'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(10000,50000) = (<a>10000</a>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression35.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression36'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(10000,50000) = (<a>10000</a>,<b>50000</b>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression36.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression37'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(10000,50000) = (/works/employee[1]/hours[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression37.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression38'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(10000,50000) = (/works/employee[1]/hours[1],/works/employee[6]/hours[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression38.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression39'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(10000,50000) = ($works/works/employee[1]/hours[1],$staff/staff/employee[6]/grade[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-and-staff',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression39.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression40'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<a>10000</a> = ()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression40.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression41'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<a>10000</a> = 10000",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression41.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression42'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<a>10000</a> = (50000)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression42.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression43'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<a>10000</a> = (10000,50000)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression43.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression44'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<a>10000</a> = <a>10000</a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression44.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression45'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<a>10000</a> = (<a>10000</a>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression45.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression46'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<a>10000</a> = (<a>10000</a>,<b>50000</b>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression46.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression47'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<a>10000</a> = (/works/employee[1]/hours[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression47.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression48'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<a>10000</a> = (/works/employee[1]/hours[1],/works/employee[6]/hours[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression48.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression49'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<a>10000</a> = ($works/works/employee[1]/hours[1],$staff/staff/employee[6]/grade[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-and-staff',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression49.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression50'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(<a>10000</a>) = ()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression50.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression51'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(<a>10000</a>) = 10000",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression51.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression52'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(<a>10000</a>) = (50000)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression52.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression53'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(<a>10000</a>) = (10000,50000)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression53.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression54'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(<a>10000</a>) = <a>10000</a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression54.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression55'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(<a>10000</a>) = (<a>10000</a>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression55.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression56'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(<a>10000</a>) = (<a>10000</a>,<b>50000</b>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression56.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression57'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(<a>10000</a>) = (/works/employee[1]/hours[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression57.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression58'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(<a>10000</a>) = (/works/employee[1]/hours[1],/works/employee[6]/hours[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression58.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression59'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(<a>10000</a>) = ($works/works/employee[1]/hours[1],$staff/staff/employee[6]/grade[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-and-staff',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression59.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression60'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(<a>10000</a>,<b>50000</b>) = ()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression60.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression61'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(<a>10000</a>,<b>50000</b>) = 10000",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression61.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression62'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(<a>10000</a>,<b>50000</b>) = (50000)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression62.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression63'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(<a>10000</a>,<b>50000</b>) = (10000,50000)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression63.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression64'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(<a>10000</a>,<b>50000</b>) = <a>10000</a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression64.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression65'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(<a>10000</a>,<b>50000</b>) = (<a>10000</a>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression65.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression66'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(<a>10000</a>,<b>50000</b>) = (<a>10000</a>,<b>50000</b>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression66.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression67'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(<a>10000</a>,<b>50000</b>) = (/works/employee[1]/hours[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression67.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression68'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(<a>10000</a>,<b>50000</b>) = (/works/employee[1]/hours[1],/works/employee[6]/hours[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression68.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression69'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(<a>10000</a>,<b>50000</b>) = ($works/works/employee[1]/hours[1],$staff/staff/employee[6]/grade[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-and-staff',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression69.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression70'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(/works/employee[1]/hours[1]) = ()",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression70.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression71'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(/works/employee[1]/hours[1]) = 10000",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression71.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression72'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(/works/employee[1]/hours[1]) = (50000)",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression72.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression73'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(/works/employee[1]/hours[1]) = (10000,50000)",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression73.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression74'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(/works/employee[1]/hours[1]) = <a>10000</a>",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression74.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression75'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(/works/employee[1]/hours[1]) = (<a>10000</a>)",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression75.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression76'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(/works/employee[1]/hours[1]) = (<a>10000</a>,<b>50000</b>)",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression76.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression77'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(/works/employee[1]/hours[1]) = (/works/employee[1]/hours[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression77.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression78'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(/works/employee[1]/hours[1]) = (/works/employee[1]/hours[1],/works/employee[6]/hours[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression78.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression79'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "($works/works/employee[1]/hours[1]) = ($works/works/employee[1]/hours[1],$staff/staff/employee[6]/grade[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-and-staff',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression79.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression80'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(/works/employee[1]/hours[1],/works/employee[6]/hours[1]) = ()",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression80.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression81'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(/works/employee[1]/hours[1],/works/employee[6]/hours[1]) = 10000",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression81.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression82'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(/works/employee[1]/hours[1],/works/employee[6]/hours[1]) = (50000)",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression82.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression83'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(/works/employee[1]/hours[1],/works/employee[6]/hours[1]) = (10000,50000)",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression83.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression84'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(/works/employee[1]/hours[1],/works/employee[6]/hours[1]) = <a>10000</a>",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression84.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression85'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(/works/employee[1]/hours[1],/works/employee[6]/hours[1]) = (<a>10000</a>)",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression85.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression86'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(/works/employee[1]/hours[1],/works/employee[6]/hours[1]) = (<a>10000</a>,<b>50000</b>)",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression86.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression87'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(/works/employee[1]/hours[1],/works/employee[6]/hours[1]) = (/works/employee[1]/hours[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression87.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression88'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(/works/employee[1]/hours[1],/works/employee[6]/hours[1]) = (/works/employee[1]/hours[1],/works/employee[6]/hours[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression88.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression89'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "($works/works/employee[1]/hours[1],$works/works/employee[6]/hours[1]) = 
         ($works/works/employee[1]/hours[1],$staff/staff/employee[6]/grade[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-and-staff',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression89.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression90'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "($works/works/employee[1]/hours[1],$staff/staff/employee[6]/hours[1]) = ()",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-and-staff',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression90.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression91'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "($works/works/employee[1]/hours[1],$staff/staff/employee[6]/hours[1]) = 10000",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-and-staff',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression91.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression92'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "($works/works/employee[1]/hours[1],$staff/staff/employee[6]/hours[1]) = (50000)",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-and-staff',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression92.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression93'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "($works/works/employee[1]/hours[1],$staff/staff/employee[6]/hours[1]) = (10000,50000)",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-and-staff',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression93.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression94'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "($works/works/employee[1]/hours[1],$staff/staff/employee[6]/hours[1]) = <a>10000</a>",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-and-staff',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression94.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression95'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "($works/works/employee[1]/hours[1],$staff/staff/employee[6]/hours[1]) = (<a>10000</a>)",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-and-staff',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression95.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression96'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "($works/works/employee[1]/hours[1],$staff/staff/employee[6]/hours[1]) = (<a>10000</a>,<b>50000</b>)",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-and-staff',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression96.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression97'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "($works/works/employee[1]/hours[1],$staff/staff/employee[6]/hours[1]) =
         ($works/works/employee[1]/hours[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-and-staff',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression97.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression98'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "($works/works/employee[1]/hours[1],$staff/staff/employee[6]/hours[1]) = ($works/works/employee[1]/hours[1],$works/works/employee[6]/hours[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-and-staff',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression98.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression99'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "($works/works/employee[1]/hours[1],$staff/staff/employee[6]/hours[1]) = ($works/works/employee[1]/hours[1],$staff/staff/employee[6]/grade[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-and-staff',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression99.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompEq-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "not(() = ())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompEq-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompEq-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "not((() = ()))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompEq-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompEq-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "not((() = 1))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompEq-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompEq-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "not(1 = ())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompEq-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompEq-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "1 == 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompEq-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompEq-6'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(1, 2) = (2, 3)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompEq-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompEq-7'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(2, 3) = (3, 4)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompEq-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompEq-8'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "not((1, 2) = (3, 4))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompEq-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompEq-9'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(xs:untypedAtomic(\"1\"), xs:untypedAtomic(\"2\")) = (xs:untypedAtomic(\"2.0\"), 2.0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompEq-9.xq"), Qry1),
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
'K-GenCompEq-10'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "not((xs:untypedAtomic(\"1\"), xs:untypedAtomic(\"2\")) = (xs:untypedAtomic(\"2.0\"), 3.0))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompEq-10.xq"), Qry1),
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
'K-GenCompEq-11'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:untypedAtomic(\"1\") = 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompEq-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompEq-12'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "not(xs:untypedAtomic(\"2\") = 1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompEq-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompEq-13'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:untypedAtomic(\"1\") = 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompEq-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompEq-14'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "1 = xs:untypedAtomic(\"1\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompEq-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompEq-15'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "1 = xs:untypedAtomic(\"1\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompEq-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompEq-16'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "error() = 3",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompEq-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOER0000") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompEq-17'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(error(), 3) = 3",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompEq-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOER0000") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompEq-18'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "3 = error()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompEq-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOER0000") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompEq-19'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "3 = (error(), 3)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompEq-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOER0000") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompEq-20'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "count(remove(remove((current-time(), 1), 1), 1)) = 0",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompEq-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompEq-21'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "not(0 = count((1, 2, timezone-from-time(current-time()))))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompEq-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompEq-22'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "0 != count((1, 2, timezone-from-time(current-time())))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompEq-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompEq-23'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(xs:anyURI(\"example.com/\"), 1, QName(\"example.com\", \"ncname\"), false(), xs:hexBinary(\"FF\")) = (xs:anyURI(\"example.com/NOT\"), 0, QName(\"example.com\", \"p:ncname\"), true(), xs:hexBinary(\"EF\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompEq-23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompEq-24'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "\"a string\" = \"a string\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompEq-24.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompEq-25'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:untypedAtomic(\"a string\") = \"a string\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompEq-25.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompEq-26'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "\"a string\" = xs:untypedAtomic(\"a string\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompEq-26.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompEq-27'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "not(xs:untypedAtomic(\"a string\") = \"a stringDIFF\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompEq-27.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompEq-28'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "not(\"a string\" = xs:untypedAtomic(\"a stringDIFF\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompEq-28.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompEq-29'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "not(\"a string\" = \"a stringDIFF\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompEq-29.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompEq-30'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "remove((6, \"a string\"), 1) = 6",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompEq-30.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompEq-31'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "6 = remove((\"a string\", 6), 2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompEq-31.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompEq-32'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "remove((6, \"a string\"), 2) = xs:untypedAtomic(\"6\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompEq-32.xq"), Qry1),
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
'K-GenCompEq-33'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:untypedAtomic(\"6\") = remove((\"a string\", 6), 1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompEq-33.xq"), Qry1),
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
'K-GenCompEq-34'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(remove((xs:untypedAtomic(\"6\"), \"a string\"), 2)) = 6",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompEq-34.xq"), Qry1),
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
'K-GenCompEq-35'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "6 = (remove((\"a string\", xs:untypedAtomic(\"6\")), 1))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompEq-35.xq"), Qry1),
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
'K-GenCompEq-36'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "1 = 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompEq-36.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompEq-37'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(1, 2, 3) = 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompEq-37.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompEq-38'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(1, 2, 3) = 2",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompEq-38.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompEq-39'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(1, 2, 3) = 3",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompEq-39.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompEq-40'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "2 = (1, 2, 3)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompEq-40.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompEq-41'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "1 = (1, 2, 3)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompEq-41.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompEq-42'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "3 = (1, 2, 3)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompEq-42.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompEq-43'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:untypedAtomic(\"false\") = false()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompEq-43.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompEq-44'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "false() = xs:untypedAtomic(\"false\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompEq-44.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompEq-45'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "not(xs:untypedAtomic(\"true\") = false())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompEq-45.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompEq-46'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(true() = xs:untypedAtomic(\"true\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompEq-46.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompEq-47'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "\"1\" = 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompEq-47.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompEq-48'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "1 = \"1\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompEq-48.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompEq-49'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "false() = 5",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompEq-49.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompEq-50'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "5 = false()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompEq-50.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompEq-51'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:untypedAtomic(\"three\") = 3",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompEq-51.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompEq-52'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:string(\"false\") = false()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompEq-52.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompEq-53'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "false() = xs:string(\"false\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompEq-53.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompEq-54'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:untypedAtomic(\"falseERR\") = false()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompEq-54.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompEq-55'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(xs:untypedAtomic(\"1\"), xs:anyURI(\"example.com\")) = (xs:untypedAtomic(\"2.0\"), 3.0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompEq-55.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompEq-56'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "false() = xs:untypedAtomic(\"falseERR\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompEq-56.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompEq-57'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "3 = xs:untypedAtomic(\"three\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompEq-57.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompEq-58'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:anyURI(\"example.com/\") = false()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompEq-58.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompEq-59'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "false() = xs:anyURI(\"example.com/\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompEq-59.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-GenCompEq-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
         declare variable $vA as xs:string := (\"B STRING\", current-time(), string(<e>content</e>))[1] treat as xs:string; 
         declare variable $vB as xs:string := (\"b string\", current-time(), string(<e>content</e>))[1] treat as xs:string; 
         (lower-case($vA) = lower-case($vB))
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-GenCompEq-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-GenCompEq-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
         declare variable $vA as xs:string := (\"B STRING\", current-time(), string(<e>content</e>))[1] treat as xs:string; 
         declare variable $vB as xs:string := (\"b string\", current-time(), string(<e>content</e>))[1] treat as xs:string; 
         (upper-case($vA) = upper-case($vB))
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-GenCompEq-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-GenCompEq-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
         declare variable $vA as xs:string := (\"B STRING\", current-time(), string(<e>content</e>))[1] treat as xs:string; 
         declare variable $vB as xs:string := (\"no match\", current-time(), string(<e>content</e>))[1] treat as xs:string; 
         (lower-case($vA) = lower-case($vB))
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-GenCompEq-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-GenCompEq-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
         declare variable $vA as xs:string := (\"B STRING\", current-time(), string(<e>content</e>))[1] treat as xs:string; 
         declare variable $vB as xs:string := (\"no match\", current-time(), string(<e>content</e>))[1] treat as xs:string; 
         (upper-case($vA) = upper-case($vB))
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-GenCompEq-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-GenCompEq-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
         declare variable $vA as xs:string := (\"B STRING\", current-time(), string(<e>content</e>))[1] treat as xs:string; 
         declare variable $vB as xs:string := (\"b string\", current-time(), string(<e>content</e>))[1] treat as xs:string; 
         (upper-case($vA) = lower-case($vB))
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-GenCompEq-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-GenCompEq-6'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
         declare variable $vA as xs:string := (\"B STRING\", current-time(), string(<e>content</e>))[1] treat as xs:string; 
         declare variable $vB as xs:string := (\"b string\", current-time(), string(<e>content</e>))[1] treat as xs:string; 
         (lower-case($vA) = upper-case($vB))
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-GenCompEq-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-GenCompEq-7'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "let $x := codepoints-to-string(12) return ($x = $x)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-GenCompEq-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0001") of 
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
'K2-GenCompEq-8'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "empty(for $b in <e/> where $b/@id=\"person0\" return ())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-GenCompEq-8.xq"), Qry1),
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
'GenCompEq-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:untypedAtomic(\"a string\") = xs:untypedAtomic(\"a stringDIFF\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "GenCompEq-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'GenCompEq-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:untypedAtomic(\"1\") = xs:NCName(\"string\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "GenCompEq-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'GenCompEq-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:dayTimeDuration(\"P3DT08H34M12.143S\") = xs:untypedAtomic(\"P3DT08H34M12.143S\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "GenCompEq-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'GenCompEq-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:untypedAtomic(\"0\") = xs:dayTimeDuration(\"PT0S\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "GenCompEq-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'GenCompEq-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:untypedAtomic(\"P1999Y10M\") = xs:yearMonthDuration(\"P1999Y10M\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "GenCompEq-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'GenCompEq-6'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:yearMonthDuration(\"P1999Y\") = xs:untypedAtomic(\"1999\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "GenCompEq-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'GenCompEq-7'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "[3, 4, 5] = 4",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "GenCompEq-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'GenCompEq-8'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "[[3, 4], 5] = [4, [5, 6]]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "GenCompEq-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'GenCompEq-9'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "[3, 4, 5] = []",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "GenCompEq-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'GenCompEq-10'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare variable $p external := 276; $p = (1 to 1000)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "GenCompEq-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'GenCompEq-11'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare variable $p external := -276; (1 to 1000) = $p",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "GenCompEq-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'GenCompEq-12'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare variable $p external := xs:untypedAtomic('000504e0'); $p = (1 to 1000)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "GenCompEq-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'GenCompEq-13'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare variable $p external := xs:untypedAtomic('4.5'); (1 to 1000) = $p",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "GenCompEq-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'GenCompEq-14'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare variable $p external := 17; $p = (1, 8, 13, 14, 98, -22, 0, 17, 34, 87, 99, 54, 22, 33, 44, 55, 66, 77)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "GenCompEq-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'GenCompEq-15'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare variable $p external := -101; (1, 8, 13, 14, 98, -22, 0, 17, 34, 87, 99, 54, 22, 33, 44, 55, 66, 77) = $p",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "GenCompEq-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'GenCompEq-16'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare variable $p external := xs:untypedAtomic('-840'); $p = (1, 8, 13, 14, 98, -22, 0, 17, 34, 87, 99, 54, 22, 33, 44, 55, 66, 77)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "GenCompEq-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'GenCompEq-17'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare variable $p external := xs:untypedAtomic('-022e0'); (1, 8, 13, 14, 98, -22, 0, 17, 34, 87, 99, 54, 22, 33, 44, 55, 66, 77) = $p",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "GenCompEq-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'GenCompEq-18'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare variable $p external := (105, 22e0); $p = (1, 8, 13, 14, 98, -22, 0, 17, 34, 87, 99, 54, 22, 33, 44, 55, 66, 77)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "GenCompEq-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'GenCompEq-19'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare variable $p external := (105, xs:untypedAtomic('22e0')); (1, 8, 13, 14, 98, -22, 0, 17, 34, 87, 99, 54, 22, 33, 44, 55, 66, 77) = $p",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "GenCompEq-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'GenCompEq-20'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare variable $p external := xs:untypedAtomic('000504e0'); $p = (1 to xs:integer(xs:double($p)))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "GenCompEq-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'GenCompEq-21'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare variable $p external := xs:untypedAtomic('860302'); (1 to xs:integer($p)) = $p",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "GenCompEq-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'GenCompEq-22'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare namespace z = \"http://example.com/z\";
        declare variable $p external := xs:untypedAtomic('z:local'); 
        $p = (<xs:element/>, <z:local/>, <fn:function/>)!node-name(.)
       ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "GenCompEq-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'GenCompEq-23'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare variable $p external := (1 to 10, xs:untypedAtomic('860302'), 83); 
        $p = (35 to 65, xs:untypedAtomic('082'), xs:untypedAtomic('0010'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "GenCompEq-23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'GenCompEq-24'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "true() = true() = true() = true()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "GenCompEq-24.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'GenCompEq-25'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "((true() = true()) = true()) = true()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "GenCompEq-25.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'GenCompEq-26'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"schemaImport"}.
'GenCompEq-27'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"schemaImport"}.
