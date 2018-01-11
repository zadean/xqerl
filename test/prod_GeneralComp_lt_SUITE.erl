-module('prod_GeneralComp_lt_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['generalexpression199'/1]).
-export(['generalexpression200'/1]).
-export(['generalexpression201'/1]).
-export(['generalexpression202'/1]).
-export(['generalexpression203'/1]).
-export(['generalexpression204'/1]).
-export(['generalexpression205'/1]).
-export(['generalexpression206'/1]).
-export(['generalexpression207'/1]).
-export(['generalexpression208'/1]).
-export(['generalexpression209'/1]).
-export(['generalexpression210'/1]).
-export(['generalexpression211'/1]).
-export(['generalexpression212'/1]).
-export(['generalexpression213'/1]).
-export(['generalexpression214'/1]).
-export(['generalexpression215'/1]).
-export(['generalexpression216'/1]).
-export(['generalexpression217'/1]).
-export(['generalexpression218'/1]).
-export(['generalexpression219'/1]).
-export(['generalexpression220'/1]).
-export(['generalexpression221'/1]).
-export(['generalexpression222'/1]).
-export(['generalexpression223'/1]).
-export(['generalexpression224'/1]).
-export(['generalexpression225'/1]).
-export(['generalexpression226'/1]).
-export(['generalexpression227'/1]).
-export(['generalexpression228'/1]).
-export(['generalexpression229'/1]).
-export(['generalexpression230'/1]).
-export(['generalexpression231'/1]).
-export(['generalexpression232'/1]).
-export(['generalexpression233'/1]).
-export(['generalexpression234'/1]).
-export(['generalexpression235'/1]).
-export(['generalexpression236'/1]).
-export(['generalexpression237'/1]).
-export(['generalexpression238'/1]).
-export(['generalexpression239'/1]).
-export(['generalexpression240'/1]).
-export(['generalexpression241'/1]).
-export(['generalexpression242'/1]).
-export(['generalexpression243'/1]).
-export(['generalexpression244'/1]).
-export(['generalexpression245'/1]).
-export(['generalexpression246'/1]).
-export(['generalexpression247'/1]).
-export(['generalexpression248'/1]).
-export(['generalexpression249'/1]).
-export(['generalexpression250'/1]).
-export(['generalexpression251'/1]).
-export(['generalexpression252'/1]).
-export(['generalexpression253'/1]).
-export(['generalexpression254'/1]).
-export(['generalexpression255'/1]).
-export(['generalexpression256'/1]).
-export(['generalexpression257'/1]).
-export(['generalexpression258'/1]).
-export(['generalexpression259'/1]).
-export(['generalexpression260'/1]).
-export(['generalexpression261'/1]).
-export(['generalexpression262'/1]).
-export(['generalexpression263'/1]).
-export(['generalexpression264'/1]).
-export(['generalexpression265'/1]).
-export(['generalexpression266'/1]).
-export(['generalexpression267'/1]).
-export(['generalexpression268'/1]).
-export(['generalexpression269'/1]).
-export(['generalexpression270'/1]).
-export(['generalexpression271'/1]).
-export(['generalexpression272'/1]).
-export(['generalexpression273'/1]).
-export(['generalexpression274'/1]).
-export(['generalexpression275'/1]).
-export(['generalexpression276'/1]).
-export(['generalexpression277'/1]).
-export(['generalexpression278'/1]).
-export(['generalexpression279'/1]).
-export(['generalexpression280'/1]).
-export(['generalexpression281'/1]).
-export(['generalexpression282'/1]).
-export(['generalexpression283'/1]).
-export(['generalexpression284'/1]).
-export(['generalexpression285'/1]).
-export(['generalexpression286'/1]).
-export(['generalexpression287'/1]).
-export(['generalexpression288'/1]).
-export(['generalexpression289'/1]).
-export(['generalexpression290'/1]).
-export(['generalexpression291'/1]).
-export(['generalexpression292'/1]).
-export(['generalexpression293'/1]).
-export(['generalexpression294'/1]).
-export(['generalexpression295'/1]).
-export(['generalexpression296'/1]).
-export(['generalexpression297'/1]).
-export(['lessthanonanyuri-1'/1]).
-export(['K-GenCompLT-1'/1]).
-export(['K-GenCompLT-2'/1]).
-export(['K-GenCompLT-3'/1]).
-export(['K-GenCompLT-4'/1]).
-export(['K-GenCompLT-5'/1]).
-export(['K-GenCompLT-6'/1]).
-export(['K-GenCompLT-7'/1]).
-export(['K-GenCompLT-8'/1]).
-export(['K-GenCompLT-9'/1]).
-export(['K-GenCompLT-10'/1]).
-export(['K-GenCompLT-11'/1]).
-export(['K-GenCompLT-12'/1]).
-export(['K-GenCompLT-13'/1]).
-export(['K-GenCompLT-14'/1]).
-export(['K-GenCompLT-15'/1]).
-export(['K-GenCompLT-16'/1]).
-export(['K-GenCompLT-17'/1]).
-export(['K-GenCompLT-18'/1]).
-export(['K-GenCompLT-19'/1]).
-export(['K2-GenCompLT-1'/1]).
-export(['K2-GenCompLT-2'/1]).
-export(['K2-GenCompLT-3'/1]).
-export(['K2-GenCompLT-4'/1]).
-export(['K2-GenCompLT-5'/1]).
-export(['K2-GenCompLT-6'/1]).
-export(['K2-GenCompLT-7'/1]).
-export(['K2-GenCompLT-8'/1]).
-export(['GenCompLT-9'/1]).
-export(['GenCompLT-10'/1]).
-export(['GenCompLT-11'/1]).
-export(['GenCompLT-12'/1]).
-export(['GenCompLT-13'/1]).
-export(['GenCompLT-14'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> ct:timetrap({seconds,60}), xqerl_module:unload(all).
init_per_suite(Config) -> 
   DD = filename:dirname(filename:dirname(proplists:get_value(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   BaseDir = filename:join(TD, "prod")

,[{base_dir, BaseDir}|Config].
all() -> [
   'generalexpression199',
   'generalexpression200',
   'generalexpression201',
   'generalexpression202',
   'generalexpression203',
   'generalexpression204',
   'generalexpression205',
   'generalexpression206',
   'generalexpression207',
   'generalexpression208',
   'generalexpression209',
   'generalexpression210',
   'generalexpression211',
   'generalexpression212',
   'generalexpression213',
   'generalexpression214',
   'generalexpression215',
   'generalexpression216',
   'generalexpression217',
   'generalexpression218',
   'generalexpression219',
   'generalexpression220',
   'generalexpression221',
   'generalexpression222',
   'generalexpression223',
   'generalexpression224',
   'generalexpression225',
   'generalexpression226',
   'generalexpression227',
   'generalexpression228',
   'generalexpression229',
   'generalexpression230',
   'generalexpression231',
   'generalexpression232',
   'generalexpression233',
   'generalexpression234',
   'generalexpression235',
   'generalexpression236',
   'generalexpression237',
   'generalexpression238',
   'generalexpression239',
   'generalexpression240',
   'generalexpression241',
   'generalexpression242',
   'generalexpression243',
   'generalexpression244',
   'generalexpression245',
   'generalexpression246',
   'generalexpression247',
   'generalexpression248',
   'generalexpression249',
   'generalexpression250',
   'generalexpression251',
   'generalexpression252',
   'generalexpression253',
   'generalexpression254',
   'generalexpression255',
   'generalexpression256',
   'generalexpression257',
   'generalexpression258',
   'generalexpression259',
   'generalexpression260',
   'generalexpression261',
   'generalexpression262',
   'generalexpression263',
   'generalexpression264',
   'generalexpression265',
   'generalexpression266',
   'generalexpression267',
   'generalexpression268',
   'generalexpression269',
   'generalexpression270',
   'generalexpression271',
   'generalexpression272',
   'generalexpression273',
   'generalexpression274',
   'generalexpression275',
   'generalexpression276',
   'generalexpression277',
   'generalexpression278',
   'generalexpression279',
   'generalexpression280',
   'generalexpression281',
   'generalexpression282',
   'generalexpression283',
   'generalexpression284',
   'generalexpression285',
   'generalexpression286',
   'generalexpression287',
   'generalexpression288',
   'generalexpression289',
   'generalexpression290',
   'generalexpression291',
   'generalexpression292',
   'generalexpression293',
   'generalexpression294',
   'generalexpression295',
   'generalexpression296',
   'generalexpression297',
   'lessthanonanyuri-1',
   'K-GenCompLT-1',
   'K-GenCompLT-2',
   'K-GenCompLT-3',
   'K-GenCompLT-4',
   'K-GenCompLT-5',
   'K-GenCompLT-6',
   'K-GenCompLT-7',
   'K-GenCompLT-8',
   'K-GenCompLT-9',
   'K-GenCompLT-10',
   'K-GenCompLT-11',
   'K-GenCompLT-12',
   'K-GenCompLT-13',
   'K-GenCompLT-14',
   'K-GenCompLT-15',
   'K-GenCompLT-16',
   'K-GenCompLT-17',
   'K-GenCompLT-18',
   'K-GenCompLT-19',
   'K2-GenCompLT-1',
   'K2-GenCompLT-2',
   'K2-GenCompLT-3',
   'K2-GenCompLT-4',
   'K2-GenCompLT-5',
   'K2-GenCompLT-6',
   'K2-GenCompLT-7',
   'K2-GenCompLT-8',
   'GenCompLT-9',
   'GenCompLT-10',
   'GenCompLT-11',
   'GenCompLT-12',
   'GenCompLT-13',
   'GenCompLT-14'].
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
'generalexpression199'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "() < ()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression199.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression200'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "() < 10000",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression200.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression201'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "() < (50000)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression201.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression202'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "() < (10000,50000)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression202.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression203'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "() < <a>10000</a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression203.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression204'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "() < (<a>10000</a>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression204.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression205'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "() < (<a>10000</a>,<b>50000</b>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression205.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression206'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "() < (/works/employee[1]/hours[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression206.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression207'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "() < (/works/employee[1]/hours[1],/works/employee[6]/hours[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression207.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression208'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
         () < ($works/works/employee[1]/hours[1],$staff/staff/employee[6]/grade[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-and-staff',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression208.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression209'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "10000 < ()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression209.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression210'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "10000 < (50000)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression210.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression211'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "10000 < (10000,50000)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression211.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression212'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "10000 < <a>10000</a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression212.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression213'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "10000 < (<a>10000</a>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression213.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression214'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "10000 < (<a>10000</a>,<b>50000</b>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression214.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression215'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "10000 < (/works/employee[1]/hours[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression215.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression216'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "10000 < (/works/employee[1]/hours[1],/works/employee[6]/hours[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression216.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression217'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
         10000 < ($works/works/employee[1]/hours[1],$staff/staff/employee[6]/grade[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-and-staff',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression217.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression218'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(50000) < ()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression218.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression219'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(50000) < 10000",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression219.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression220'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(50000) < (50000)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression220.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression221'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(50000) < (10000,50000)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression221.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression222'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(50000) < <a>10000</a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression222.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression223'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(50000) < (<a>10000</a>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression223.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression224'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(50000) < (<a>10000</a>,<b>50000</b>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression224.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression225'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(50000) < (/works/employee[1]/hours[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression225.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression226'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(50000) < (/works/employee[1]/hours[1],/works/employee[6]/hours[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression226.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression227'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
         (50000) < ($works/works/employee[1]/hours[1],$staff/staff/employee[6]/grade[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-and-staff',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression227.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression228'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(10000,50000) < ()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression228.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression229'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(10000,50000) < 10000",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression229.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression230'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(10000,50000) < (50000)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression230.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression231'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(10000,50000) < (10000,50000)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression231.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression232'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(10000,50000) < <a>10000</a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression232.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression233'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(10000,50000) < (<a>10000</a>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression233.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression234'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(10000,50000) < (<a>10000</a>,<b>50000</b>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression234.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression235'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(10000,50000) < (/works/employee[1]/hours[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression235.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression236'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(10000,50000) < (/works/employee[1]/hours[1],/works/employee[6]/hours[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression236.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression237'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
         (10000,50000) < ($works/works/employee[1]/hours[1],$staff/staff/employee[6]/grade[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-and-staff',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression237.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression238'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<a>10000</a> < ()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression238.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression239'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<a>10000</a> < 10000",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression239.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression240'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<a>10000</a> < (50000)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression240.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression241'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<a>10000</a> < (10000,50000)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression241.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression242'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<a>10000</a> < <a>10000</a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression242.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression243'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<a>10000</a> < (<a>10000</a>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression243.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression244'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<a>10000</a> < (<a>10000</a>,<b>50000</b>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression244.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression245'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<a>10000</a> < (/works/employee[1]/hours[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression245.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression246'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<a>10000</a> < (/works/employee[1]/hours[1],/works/employee[6]/hours[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression246.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression247'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
         <a>10000</a> < ($works/works/employee[1]/hours[1],$staff/staff/employee[6]/grade[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-and-staff',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression247.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression248'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(<a>10000</a>) < ()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression248.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression249'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(<a>10000</a>) < 10000",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression249.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression250'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(<a>10000</a>) < (50000)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression250.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression251'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(<a>10000</a>) < (10000,50000)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression251.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression252'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(<a>10000</a>) < <a>10000</a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression252.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression253'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(<a>10000</a>) < (<a>10000</a>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression253.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression254'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(<a>10000</a>) < (<a>10000</a>,<b>50000</b>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression254.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression255'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(<a>10000</a>) < (/works/employee[1]/hours[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression255.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression256'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(<a>10000</a>) < (/works/employee[1]/hours[1],/works/employee[6]/hours[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression256.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression257'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
         (<a>10000</a>) < ($works/works/employee[1]/hours[1],$staff/staff/employee[6]/grade[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-and-staff',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression257.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression258'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(<a>10000</a>,<b>50000</b>) < ()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression258.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression259'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(<a>10000</a>,<b>50000</b>) < 10000",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression259.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression260'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(<a>10000</a>,<b>50000</b>) < (50000)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression260.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression261'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(<a>10000</a>,<b>50000</b>) < (10000,50000)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression261.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression262'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(<a>10000</a>,<b>50000</b>) < <a>10000</a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression262.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression263'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(<a>10000</a>,<b>50000</b>) < (<a>10000</a>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression263.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression264'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(<a>10000</a>,<b>50000</b>) < (<a>10000</a>,<b>50000</b>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression264.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression265'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(<a>10000</a>,<b>50000</b>) < (/works/employee[1]/hours[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression265.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression266'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(<a>10000</a>,<b>50000</b>) < (/works/employee[1]/hours[1],/works/employee[6]/hours[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression266.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression267'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(
         <a>10000</a>,<b>50000</b>) < ($works/works/employee[1]/hours[1],$staff/staff/employee[6]/grade[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-and-staff',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression267.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression268'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(/works/employee[1]/hours[1]) < ()",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression268.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression269'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(/works/employee[1]/hours[1]) < 10000",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression269.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression270'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(/works/employee[1]/hours[1]) < (50000)",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression270.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression271'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(/works/employee[1]/hours[1]) < (10000,50000)",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression271.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression272'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(/works/employee[1]/hours[1]) < <a>10000</a>",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression272.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression273'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(/works/employee[1]/hours[1]) < (<a>10000</a>)",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression273.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression274'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(/works/employee[1]/hours[1]) < (<a>10000</a>,<b>50000</b>)",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression274.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression275'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(/works/employee[1]/hours[1]) < (/works/employee[1]/hours[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression275.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression276'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(/works/employee[1]/hours[1]) < (/works/employee[1]/hours[1],/works/employee[6]/hours[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression276.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression277'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          ($works/works/employee[1]/hours[1]) < ($works/works/employee[1]/hours[1],$staff/staff/employee[6]/grade[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-and-staff',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression277.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression278'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(/works/employee[1]/hours[1],/works/employee[6]/hours[1]) < ()",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression278.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression279'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(/works/employee[1]/hours[1],/works/employee[6]/hours[1]) < 10000",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression279.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression280'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(/works/employee[1]/hours[1],/works/employee[6]/hours[1]) < (50000)",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression280.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression281'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(/works/employee[1]/hours[1],/works/employee[6]/hours[1]) < (10000,50000)",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression281.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression282'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(/works/employee[1]/hours[1],/works/employee[6]/hours[1]) < <a>10000</a>",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression282.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression283'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(/works/employee[1]/hours[1],/works/employee[6]/hours[1]) < (<a>10000</a>)",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression283.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression284'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(/works/employee[1]/hours[1],/works/employee[6]/hours[1]) < (<a>10000</a>,<b>50000</b>)",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression284.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression285'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(/works/employee[1]/hours[1],/works/employee[6]/hours[1]) < (/works/employee[1]/hours[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression285.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression286'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(/works/employee[1]/hours[1],/works/employee[6]/hours[1]) < (/works/employee[1]/hours[1],/works/employee[6]/hours[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression286.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression287'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
         ($works/works/employee[1]/hours[1],$works/works/employee[6]/hours[1]) < ($works/works/employee[1]/hours[1],$staff/staff/employee[6]/grade[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-and-staff',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression287.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression288'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
         ($works/works/employee[1]/hours[1],$staff/staff/employee[6]/hours[1]) < ()",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-and-staff',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression288.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression289'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "($works/works/employee[1]/hours[1],$staff/staff/employee[6]/hours[1]) < 10000",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-and-staff',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression289.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression290'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "($works/works/employee[1]/hours[1],$staff/staff/employee[6]/hours[1]) < (50000)",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-and-staff',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression290.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression291'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "($works/works/employee[1]/hours[1],$staff/staff/employee[6]/hours[1]) < (10000,50000)",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-and-staff',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression291.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression292'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "($works/works/employee[1]/hours[1],$staff/staff/employee[6]/hours[1]) < <a>10000</a>",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-and-staff',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression292.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression293'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "($works/works/employee[1]/hours[1],$staff/staff/employee[6]/hours[1]) < (<a>10000</a>)",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-and-staff',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression293.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression294'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "($works/works/employee[1]/hours[1],$staff/staff/employee[6]/hours[1]) < (<a>10000</a>,<b>50000</b>)",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-and-staff',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression294.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression295'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "($works/works/employee[1]/hours[1],$staff/staff/employee[6]/hours[1]) < ($works/works/employee[1]/hours[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-and-staff',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression295.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression296'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "($works/works/employee[1]/hours[1],$staff/staff/employee[6]/hours[1]) < ($works/works/employee[1]/hours[1],$works/works/employee[6]/hours[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-and-staff',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression296.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'generalexpression297'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "($works/works/employee[1]/hours[1],$staff/staff/employee[6]/hours[1]) < ($works/works/employee[1]/hours[1],$staff/staff/employee[6]/grade[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-and-staff',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "generalexpression297.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'lessthanonanyuri-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(xs:anyURI(\"http://www.example/com\")) < (xs:anyURI(\"http://www.example/com\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "lessthanonanyuri-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompLT-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "not(() < () )",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompLT-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompLT-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "not(1 < () )",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompLT-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompLT-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "not(() < 1 )",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompLT-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompLT-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "1 =< 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompLT-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompLT-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(1, 2, 3) < 4",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompLT-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompLT-6'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(1, 2, 3) < 2",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompLT-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompLT-7'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(1, 2, 3) < 3",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompLT-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompLT-8'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "1 < (1, 2, 3)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompLT-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompLT-9'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "2 < (1, 2, 3)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompLT-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompLT-10'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "0 < (1, 2, 3)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompLT-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompLT-11'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "1 < 2",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompLT-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompLT-12'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:untypedAtomic(\"false\") < true()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompLT-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompLT-13'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "false() < xs:untypedAtomic(\"true\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompLT-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompLT-14'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "not(xs:untypedAtomic(\"true\") < false())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompLT-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompLT-15'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "not(true() < xs:untypedAtomic(\"false\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompLT-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompLT-16'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "1 < xs:anyURI(\"0\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompLT-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompLT-17'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:anyURI(\"0\") < 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompLT-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompLT-18'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "1 <= count((1, 2, 3, timezone-from-time(current-time()), 4))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompLT-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-GenCompLT-19'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "0 < count((1, 2, 3, timezone-from-time(current-time()), 4))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-GenCompLT-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-GenCompLT-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e>1.1</e> < 3",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-GenCompLT-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-GenCompLT-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "3. < <e>1.1</e>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-GenCompLT-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-GenCompLT-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e>1.1</e> < 3.",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-GenCompLT-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-GenCompLT-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "3 < <e>1.1</e>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-GenCompLT-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-GenCompLT-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e>1.1</e> < 3e3",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-GenCompLT-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-GenCompLT-6'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "3e3 < <e>1.1</e>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-GenCompLT-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-GenCompLT-7'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e>1.1</e> < xs:float(3e3)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-GenCompLT-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-GenCompLT-8'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xs:float(3e3) < <e>1.1</e>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-GenCompLT-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'GenCompLT-9'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "[3, 4, 5] < 4",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "GenCompLT-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'GenCompLT-10'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "[[3, 4], 5] < [4, [5, 6]]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "GenCompLT-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'GenCompLT-11'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "[3, 4, 5] < []",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "GenCompLT-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'GenCompLT-12'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "2 < 3 < 4",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "GenCompLT-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'GenCompLT-13'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "true() < true() < true()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "GenCompLT-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'GenCompLT-14'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(true() < true()) < true()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "GenCompLT-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
