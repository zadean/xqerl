-module('prod_NameTest_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['NodeTest003'/1]).
-export(['NodeTest004'/1]).
-export(['NodeTest005'/1]).
-export(['nametest-1'/1]).
-export(['nametest-2'/1]).
-export(['nametest-3'/1]).
-export(['nametest-4'/1]).
-export(['nametest-5'/1]).
-export(['nametest-6'/1]).
-export(['nametest-7'/1]).
-export(['nametest-8'/1]).
-export(['nametest-9'/1]).
-export(['nametest-10'/1]).
-export(['nametest-11'/1]).
-export(['nametest-12'/1]).
-export(['nametest-13'/1]).
-export(['nametest-14'/1]).
-export(['nametest-15'/1]).
-export(['nametest-16'/1]).
-export(['nametest-17'/1]).
-export(['nametest-18'/1]).
-export(['nametest-19'/1]).
-export(['nametest-20'/1]).
-export(['nametest-21'/1]).
-export(['nametest-22'/1]).
-export(['nametest-23'/1]).
-export(['K-NameTest-1'/1]).
-export(['K-NameTest-2'/1]).
-export(['K-NameTest-3'/1]).
-export(['K-NameTest-4'/1]).
-export(['K-NameTest-5'/1]).
-export(['K-NameTest-6'/1]).
-export(['K-NameTest-7'/1]).
-export(['K-NameTest-8'/1]).
-export(['K-NameTest-9'/1]).
-export(['K-NameTest-10'/1]).
-export(['K-NameTest-11'/1]).
-export(['K2-NameTest-1'/1]).
-export(['K2-NameTest-2'/1]).
-export(['K2-NameTest-3'/1]).
-export(['K2-NameTest-4'/1]).
-export(['K2-NameTest-5'/1]).
-export(['K2-NameTest-6'/1]).
-export(['K2-NameTest-7'/1]).
-export(['K2-NameTest-8'/1]).
-export(['K2-NameTest-9'/1]).
-export(['K2-NameTest-10'/1]).
-export(['K2-NameTest-11'/1]).
-export(['K2-NameTest-12'/1]).
-export(['K2-NameTest-13'/1]).
-export(['K2-NameTest-14'/1]).
-export(['K2-NameTest-15'/1]).
-export(['K2-NameTest-16'/1]).
-export(['K2-NameTest-17'/1]).
-export(['K2-NameTest-18'/1]).
-export(['K2-NameTest-19'/1]).
-export(['K2-NameTest-20'/1]).
-export(['K2-NameTest-21'/1]).
-export(['K2-NameTest-22'/1]).
-export(['K2-NameTest-23'/1]).
-export(['K2-NameTest-24'/1]).
-export(['K2-NameTest-25'/1]).
-export(['K2-NameTest-26'/1]).
-export(['K2-NameTest-27'/1]).
-export(['K2-NameTest-28'/1]).
-export(['K2-NameTest-29'/1]).
-export(['K2-NameTest-30'/1]).
-export(['K2-NameTest-31'/1]).
-export(['K2-NameTest-32'/1]).
-export(['K2-NameTest-33'/1]).
-export(['K2-NameTest-34'/1]).
-export(['K2-NameTest-35'/1]).
-export(['K2-NameTest-36'/1]).
-export(['K2-NameTest-37'/1]).
-export(['K2-NameTest-38'/1]).
-export(['K2-NameTest-39'/1]).
-export(['K2-NameTest-40'/1]).
-export(['K2-NameTest-41'/1]).
-export(['K2-NameTest-42'/1]).
-export(['K2-NameTest-43'/1]).
-export(['K2-NameTest-44'/1]).
-export(['K2-NameTest-45'/1]).
-export(['K2-NameTest-46'/1]).
-export(['K2-NameTest-47'/1]).
-export(['K2-NameTest-48'/1]).
-export(['K2-NameTest-49'/1]).
-export(['K2-NameTest-50'/1]).
-export(['K2-NameTest-51'/1]).
-export(['K2-NameTest-52'/1]).
-export(['K2-NameTest-53'/1]).
-export(['K2-NameTest-54'/1]).
-export(['K2-NameTest-55'/1]).
-export(['K2-NameTest-56'/1]).
-export(['K2-NameTest-57'/1]).
-export(['K2-NameTest-58'/1]).
-export(['K2-NameTest-59'/1]).
-export(['K2-NameTest-60'/1]).
-export(['K2-NameTest-61'/1]).
-export(['K2-NameTest-62'/1]).
-export(['K2-NameTest-63'/1]).
-export(['K2-NameTest-64'/1]).
-export(['K2-NameTest-65'/1]).
-export(['K2-NameTest-66'/1]).
-export(['K2-NameTest-67'/1]).
-export(['K2-NameTest-68'/1]).
-export(['K2-NameTest-69'/1]).
-export(['K2-NameTest-70'/1]).
-export(['K2-NameTest-71'/1]).
-export(['K2-NameTest-72'/1]).
-export(['K2-NameTest-73'/1]).
-export(['K2-NameTest-74'/1]).
-export(['K2-NameTest-75'/1]).
-export(['K2-NameTest-76'/1]).
-export(['K2-NameTest-77'/1]).
-export(['K2-NameTest-78'/1]).
-export(['K2-NameTest-79'/1]).
-export(['K2-NameTest-80'/1]).
-export(['K2-NameTest-81'/1]).
-export(['K2-NameTest-82'/1]).
-export(['K2-NameTest-83'/1]).
-export(['K2-NameTest-84'/1]).
-export(['K2-NameTest-85'/1]).
-export(['K2-NameTest-86'/1]).
-export(['K2-NameTest-87'/1]).
-export(['K2-NameTest-88'/1]).
-export(['K2-NameTest-89'/1]).
-export(['K2-NameTest-90'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> ct:timetrap({seconds,60}), xqerl_module:unload(all).
init_per_suite(Config) -> 
   DD = filename:dirname(filename:dirname(proplists:get_value(data_dir, Config))),
   TD = filename:absname_join(DD, "QT3-test-suite"),
   BaseDir = filename:join(TD, "prod")

,[{base_dir, BaseDir}|Config].
all() -> [
   'NodeTest003',
   'NodeTest004',
   'NodeTest005',
   'nametest-1',
   'nametest-2',
   'nametest-3',
   'nametest-4',
   'nametest-5',
   'nametest-6',
   'nametest-7',
   'nametest-8',
   'nametest-9',
   'nametest-10',
   'nametest-11',
   'nametest-12',
   'nametest-13',
   'nametest-14',
   'nametest-15',
   'nametest-16',
   'nametest-17',
   'nametest-18',
   'nametest-19',
   'nametest-20',
   'nametest-21',
   'nametest-22',
   'nametest-23',
   'K-NameTest-1',
   'K-NameTest-2',
   'K-NameTest-3',
   'K-NameTest-4',
   'K-NameTest-5',
   'K-NameTest-6',
   'K-NameTest-7',
   'K-NameTest-8',
   'K-NameTest-9',
   'K-NameTest-10',
   'K-NameTest-11',
   'K2-NameTest-1',
   'K2-NameTest-2',
   'K2-NameTest-3',
   'K2-NameTest-4',
   'K2-NameTest-5',
   'K2-NameTest-6',
   'K2-NameTest-7',
   'K2-NameTest-8',
   'K2-NameTest-9',
   'K2-NameTest-10',
   'K2-NameTest-11',
   'K2-NameTest-12',
   'K2-NameTest-13',
   'K2-NameTest-14',
   'K2-NameTest-15',
   'K2-NameTest-16',
   'K2-NameTest-17',
   'K2-NameTest-18',
   'K2-NameTest-19',
   'K2-NameTest-20',
   'K2-NameTest-21',
   'K2-NameTest-22',
   'K2-NameTest-23',
   'K2-NameTest-24',
   'K2-NameTest-25',
   'K2-NameTest-26',
   'K2-NameTest-27',
   'K2-NameTest-28',
   'K2-NameTest-29',
   'K2-NameTest-30',
   'K2-NameTest-31',
   'K2-NameTest-32',
   'K2-NameTest-33',
   'K2-NameTest-34',
   'K2-NameTest-35',
   'K2-NameTest-36',
   'K2-NameTest-37',
   'K2-NameTest-38',
   'K2-NameTest-39',
   'K2-NameTest-40',
   'K2-NameTest-41',
   'K2-NameTest-42',
   'K2-NameTest-43',
   'K2-NameTest-44',
   'K2-NameTest-45',
   'K2-NameTest-46',
   'K2-NameTest-47',
   'K2-NameTest-48',
   'K2-NameTest-49',
   'K2-NameTest-50',
   'K2-NameTest-51',
   'K2-NameTest-52',
   'K2-NameTest-53',
   'K2-NameTest-54',
   'K2-NameTest-55',
   'K2-NameTest-56',
   'K2-NameTest-57',
   'K2-NameTest-58',
   'K2-NameTest-59',
   'K2-NameTest-60',
   'K2-NameTest-61',
   'K2-NameTest-62',
   'K2-NameTest-63',
   'K2-NameTest-64',
   'K2-NameTest-65',
   'K2-NameTest-66',
   'K2-NameTest-67',
   'K2-NameTest-68',
   'K2-NameTest-69',
   'K2-NameTest-70',
   'K2-NameTest-71',
   'K2-NameTest-72',
   'K2-NameTest-73',
   'K2-NameTest-74',
   'K2-NameTest-75',
   'K2-NameTest-76',
   'K2-NameTest-77',
   'K2-NameTest-78',
   'K2-NameTest-79',
   'K2-NameTest-80',
   'K2-NameTest-81',
   'K2-NameTest-82',
   'K2-NameTest-83',
   'K2-NameTest-84',
   'K2-NameTest-85',
   'K2-NameTest-86',
   'K2-NameTest-87',
   'K2-NameTest-88',
   'K2-NameTest-89',
   'K2-NameTest-90'].
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
environment('nw_Customers',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "AxisStep/nw_Customers.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'NodeTest003'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "/*/*[1]/name()",
   {Env,Opts} = xqerl_test:handle_environment(environment('nw_Customers',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "NodeTest003.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Customers") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'NodeTest004'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "/.",
   {Env,Opts} = xqerl_test:handle_environment(environment('nw_Customers',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "NodeTest004.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"document-node(element(Root))") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"exists($result//Country[.='Poland'])") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'NodeTest005'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "/*/.",
   {Env,Opts} = xqerl_test:handle_environment(environment('nw_Customers',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "NodeTest005.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"element(Root)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"exists($result//Country[.='Poland'])") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'nametest-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "let $var := <a attr1 = \"abc1\"><b attr2 = \"abc2\">context2</b></a> return $var/child::*",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "nametest-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<b attr2=\"abc2\">context2</b>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'nametest-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "let $var := <a attr1 = \"abc1\"><b attr2 = \"abc2\">context2</b></a> return $var/child::b",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "nametest-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<b attr2=\"abc2\">context2</b>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'nametest-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "let $var := <a attr1 = \"abc1\"><b attr2 = \"abc2\">context2</b></a> return $var/child::pr:b",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "nametest-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0081") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'nametest-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "let $var := <a attr1 = \"abc1\"><b attr2 = \"abc2\">context2</b></a> return $var/child::pr:*",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "nametest-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0081") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'nametest-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "let $var := <a attr1 = \"abc1\"><b attr2 = \"abc2\">context2</b></a> return $var/child::*:b",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "nametest-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<b attr2=\"abc2\">context2</b>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'nametest-6'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare namespace ns1 = \"http://example.org\"; let $var := <a attr1 = \"abc1\"><ns1:b attr2 = \"abc2\">context2</ns1:b></a> return $var/child::ns1:b",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "nametest-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<ns1:b xmlns:ns1=\"http://example.org\" attr2=\"abc2\">context2</ns1:b>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'nametest-7'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "let $var := <a attr1 = \"abc1\"><b attr2 = \"abc2\">context2</b></a> return $var/b",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "nametest-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<b attr2=\"abc2\">context2</b>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'nametest-8'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "let $var := <a attr1 = \"abc1\"><b attr2 = \"abc2\">context2</b></a> return fn:node-name(exactly-one($var/b))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "nametest-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "b") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'nametest-9'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "let $var := <a attr1 = \"abc1\"><b attr2 = \"abc2\">context2</b></a> return fn:count(($var/empty-node-list)[1])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "nametest-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'nametest-10'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare default element namespace \"http://www.example.org/examples\"; let $var := <a attr1 = \"abc1\"><b attr2 = \"abc2\">context2</b></a> return fn:namespace-uri(exactly-one($var/child::b))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "nametest-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.org/examples") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'nametest-11'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "let $var := <a attr1 = \"abc1\"><b attr2 = \"abc2\">context2</b></a> return fn:count(fn:namespace-uri(exactly-one($var/child::b)))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "nametest-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'nametest-12'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "let $var := /works/employee[12]/overtime return $var/child::*:day[1] | $var/child::*:day[2]",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "nametest-12.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<day>Monday</day><day>Tuesday</day>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'nametest-13'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "let $var := /works[1]/child::employee[12]/overtime return $var/child::* intersect $var/child::day",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "nametest-13.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<day>Monday</day><day>Tuesday</day>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'nametest-14'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "let $var := /works[1]/child::employee[12]/overtime return fn:count($var/child::* except $var/child::day)",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "nametest-14.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'nametest-15'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "let $var := /works return fn:count($var/child::*)",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "nametest-15.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"13") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'nametest-16'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "let $var := /works return fn:count($var/child::employee)",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "nametest-16.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"13") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'nametest-17'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "let $var := /works return fn:count($var/child::*:employee)",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "nametest-17.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"13") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'nametest-18'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare namespace ns1 = \"http://example.org\"; let $var := <a attr1 = \"abc1\"><ns1:b attr2 = \"abc2\">context2</ns1:b></a> return $var/child::*:b",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "nametest-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<ns1:b xmlns:ns1=\"http://example.org\" attr2=\"abc2\">context2</ns1:b>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'nametest-19'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
      let $e := <a attr1 = \"abc1\" xmlns=\"http://example.org/nametest-19\"/> 
      return exists($e/self::Q{http://example.org/nametest-19}a)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "nametest-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'nametest-20'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
      let $e := <a attr1 = \"abc1\"/> 
      return exists($e/self::Q{}a)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "nametest-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'nametest-21'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
      let $e := <a attr1 = \"abc1\" xmlns=\"http://example.org/nametest-19\"/> 
      return exists($e/self::Q{http://example.org/nametest-19}*)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "nametest-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'nametest-22'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
      let $e := <a attr1 = \"abc1\"/> 
      return exists($e/self::Q{}*)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "nametest-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'nametest-23'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
      let $e := <a attr1 = \"abc1\"/> 
      return exists($e/self::Q{}:*)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "nametest-23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NameTest-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "1 + remove((\"foo\", 2), 2)asdasdad",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-NameTest-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NameTest-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "---..---",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-NameTest-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NameTest-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "foo- foo",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-NameTest-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NameTest-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "nametest : nametest",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-NameTest-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NameTest-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "nametest: nametest",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-NameTest-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NameTest-6'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "nametest :nametest",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-NameTest-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NameTest-7'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "f oo\" eq \"f oo\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-NameTest-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NameTest-8'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "\"f oo eq \"f oo\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-NameTest-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NameTest-9'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "\"f oo\" eq f oo\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-NameTest-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NameTest-10'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "\"f oo\" eq \"f oo",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-NameTest-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NameTest-11'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "normalize-unicode(\"f oo\") eq \"f oo",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-NameTest-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "//",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "/*5",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "/ * 5",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "4 + / * 5",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare namespace namespace = \"http://example.com\"; declare union <union>for gibberish { for $for in for return <for>***div div</for> }</union>, if(if) then then else else- +-++-**-* instance of element(*)* * * **---++div- div -div",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPDY0002") of 
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
'K2-NameTest-6'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "::ncname",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-7'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "::local:ncname",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-8'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "@",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-9'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "@",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-10'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "parent::",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-11'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "no-binding:*",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0081") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-12'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare variable $var := <elem xml:space=\"default\"/>; $var/@xml:space eq \"default\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-13'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare variable $var := <elem xml:space=\"preserve\"/>; string(($var/@xml:*)[1])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "preserve") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-14'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare variable $var := <elem>text<a/><!-- a comment --><b/><?target data?><c/><![CDATA[more text]]></elem>; $var/child::*",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a/><b/><c/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-15'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare variable $e := <a b =\"content\"><?b asd?><b/><c b=\"content\"/></a>; $e/b",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<b/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-16'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare variable $e := <a b =\"content\"><?b asd?><b/></a>; $e/*",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<b/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-17'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare variable $e := <a b =\"content\"><?b asd?><b/></a>; <a>{$e/@b}</a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a b=\"content\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-18'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare variable $e := <a b =\"content\"><?b asd?><b/></a>; <a>{$e/@*}</a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a b=\"content\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-19'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare variable $e := <a b =\"content\"><?b asd?><b/></a>; $e/processing-instruction(b)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<?b asd?>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-20'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare variable $e := <a b =\"content\"><?b asd?><b/></a>; <a>{$e/processing-instruction()}</a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a><?b asd?></a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-21'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "empty(let $e := <a b =\"content\"><?b asd?><b/></a> return $e/processing-instruction(\"123ncname\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-22'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "empty(let $e := <a b =\"content\"><?b asd?><b/></a> return $e/processing-instruction(\"b \"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-23'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "empty(let $e := <a b =\"content\"><?b asd?><b/></a> return $e/processing-instruction(\"prefix:b\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-24'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e/>/processing-instruction(1))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-24.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-25'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e/>/processing-instruction(prefix:ncname))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-25.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-26'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "let $name := \"ncname\" return <e/>/processing-instruction($name))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-26.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-27'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "let $name := \"ncname\" return <e/>/processing-instruction($name))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-27.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-28'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e/>/element(\"any\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-28.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-29'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e/>/attribute(\"any\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-29.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-30'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
      	declare namespace a = \"http://example.com/1\"; 
      	declare namespace b = \"http://example.com/2\"; 
      	let $e := <e a:n1=\"content\" b:n1=\"content\"> 
      	            <a:n1/> 
      	            <b:n1/> 
      	            <?n1 ?> 
      	            <n1/> 
      	          </e> 
      	return $e/*:n1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-30.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"count($result) = 3") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"namespace-uri($result[1]) = \"http://example.com/1\"") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"namespace-uri-for-prefix(\"a\", $result[1]) = \"http://example.com/1\"") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"empty(namespace-uri-for-prefix(\"b\", $result[1]))") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"namespace-uri($result[2]) = \"http://example.com/2\"") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"namespace-uri-for-prefix(\"b\", $result[2]) = \"http://example.com/2\"") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"empty(namespace-uri-for-prefix(\"a\", $result[2]))") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"namespace-uri($result[3]) = \"\"") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"empty(namespace-uri-for-prefix(\"a\", $result[3]))") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"empty(namespace-uri-for-prefix(\"b\", $result[3]))") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-31'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
      	declare namespace a = \"http://example.com/1\"; 
      	declare namespace b = \"http://example.com/2\"; 
      	let $e := <e a:n1=\"content\" b:n1=\"content\"> 
      				<a:n1/> 
      				<b:n1/> 
      				<?n1 ?> 
      				<n1/> 
      			  </e> 
      	return $e/a:*",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-31.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"count($result) = 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"namespace-uri($result[1]) = \"http://example.com/1\"") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"namespace-uri-for-prefix(\"a\", $result[1]) = \"http://example.com/1\"") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"empty(namespace-uri-for-prefix(\"b\", $result[1]))") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-32'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<a>{<e foo=\"content2\" bar=\"content1\"/>/attribute(foo)}</a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-32.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a foo=\"content2\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-33'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "schema-element(\"quotesAreNotAllowed\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-33.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-34'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "schema-attribute(\"quotesAreNotAllowed\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-34.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-35'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "schema-element(notDeclared:ncname)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-35.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0081") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-36'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "schema-attribute(notDeclared:ncname)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-36.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0081") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-37'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "schema-element(thisTypeDoesNotExistExample.Com)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-37.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-38'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "schema-attribute(thisTypeDoesNotExistExample.Com)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-38.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-39'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare namespace e = \"http://www.example.com/\"; schema-element(e:thisTypeDoesNotExistExample.Com)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-39.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-40'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare namespace e = \"http://www.example.com/\"; schema-attribute(e:thisTypeDoesNotExistExample.Com)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-40.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-41'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "unknownprefix:*",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-41.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0081") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-42'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "@unknownprefix:*",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-42.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0081") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-43'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "@xmlns:*",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-43.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0081") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-44'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "@xmlns:ncname",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-44.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0081") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-45'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xmlns:ncname",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-45.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0081") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-46'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "xmlns:*",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-46.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0081") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-47'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare variable $i := <e > <xmlns/> <xmlns/> <xmlns/> <xmlns/> </e>; $i/xmlns",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-47.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<xmlns/><xmlns/><xmlns/><xmlns/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-48'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare variable $i := <e xmlns=\"http://example.com/\"/>; empty($i/@xmlns)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-48.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-49'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare namespace p = \"http://example.com/\"; <a>{<e p:a=\"1\" p:b=\"2\" p:c=\"3\"/>/attribute::*/p:*}</a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-49.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<a></a>") of 
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
'K2-NameTest-50'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare namespace p = \"http://example.com/\"; <a>{document {<p:e/>}/@p:*}</a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-50.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<a></a>") of 
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
'K2-NameTest-51'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<a>{attribute name{\"content\"}/*}</a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-51.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<a></a>") of 
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
'K2-NameTest-52'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<a>{comment {\"content\"}/*}</a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-52.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<a/>") of 
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
'K2-NameTest-53'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<a>{<!-- a comment -->/*}</a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-53.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<a/>") of 
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
'K2-NameTest-54'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<a>{processing-instruction name {\"content\"}/*}</a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-54.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<a/>") of 
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
'K2-NameTest-55'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<a>{<?target data?>/*}</a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-55.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<a/>") of 
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
'K2-NameTest-56'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare variable $a := <e><a/><b/><c/></e>; <a>{$a/*:ncname eq 1}</a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-56.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<a/>") of 
      true -> {comment, "XML Deep equal"};
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
'K2-NameTest-57'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare variable $a := <e><a/><b/><c/></e>; <a>{$a/*:ncname eq 1}</a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-57.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<a/>") of 
      true -> {comment, "XML Deep equal"};
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
'K2-NameTest-58'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare namespace prefix = \"http://example.com/\"; declare variable $a := <e><a/><b/><c/></e>; <a>{$a/prefix:* eq 1}</a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-58.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<a/>") of 
      true -> {comment, "XML Deep equal"};
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
'K2-NameTest-59'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare namespace prefix = \"http://example.com/\"; declare variable $a := <e><a/><b/><c/></e>; <a>{$a/@prefix:* eq 1}</a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-59.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<a/>") of 
      true -> {comment, "XML Deep equal"};
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
'K2-NameTest-60'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare variable $input := <e/>; 
        empty(for $PI as processing-instruction() in $input//processing-instruction() return $PI)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-60.xq"), Qry1),
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
'K2-NameTest-61'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e>{for $PI in ()/processing-instruction() return ()}</e>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-61.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<e/>") of 
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
'K2-NameTest-62'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e>{for $PI in <e/>/processing-instruction() return ()}</e>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-62.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<e/>") of 
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
'K2-NameTest-63'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<x> <x> <y id=\"0\"/> </x> <y id=\"1\"/> </x>/descendant-or-self::x/child::y",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-63.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<y id=\"0\"/><y id=\"1\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-64'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e>{<e foo=\"asd\"/>/attribute(*, xs:untypedAtomic)}</e>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-64.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e foo=\"asd\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-65'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e>{<e foo=\"asd\"/>/attribute(foo, xs:untypedAtomic)}</e>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-65.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e foo=\"asd\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-66'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e>{<e foo=\"asd\"/>/attribute(notBound:foo, xs:untypedAtomic)}</e>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-66.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0081") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-67'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e>{<e foo=\"asd\"/>/attribute(foo, notBound:untypedAtomic)}</e>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-67.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0081") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-68'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e>{<e foo=\"1\"/>/attribute(foo, xs:integer)}</e>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-68.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<e/>") of 
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
'K2-NameTest-69'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e>{<e foo=\"1\"/>/attribute(foo, doesNotExistExampleCom)}</e>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-69.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-70'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e>{<e foo=\"1\"/>/attribute(foo, xs:doesNotExistExampleCom)}</e>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-70.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-71'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e>{<b foo=\"1\"/>/attribute(foo, xs:anyType)}</e>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-71.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e foo=\"1\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-72'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e>{<e><b/></e>/element(p:foo)}</e>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-72.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0081") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-73'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e>{<e><b/></e>/element(foo, notBound:type)}</e>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-73.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0081") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-74'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e>{<e><b/></e>/element(foo, xs:doesNotExist)}</e>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-74.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-75'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e>{<e><b/></e>/element(foo, doesNotExist)}</e>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-75.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-76'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e><b/></e>/element(b, xs:anyType)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-76.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<b/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-77'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e><b/></e>/element(b, xs:anyType)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-77.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<b/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-78'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "let",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-78.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-79'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "let",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-79.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-80'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "as",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-80.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-81'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "of",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-81.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-82'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "child:",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-82.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-83'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "child::element",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-83.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-84'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare default function namespace \"http://www.example.com/\"; declare namespace e = \"http://www.example.com/\"; declare function element() { 1 }; e:element()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-84.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0003") of 
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
'K2-NameTest-85'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "_",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-85.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-86'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "pod_pod",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-86.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-87'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e>{<e foo=\"1\"/>/attribute(*, doesNotExistExampleCom)}</e>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-87.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-88'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e>{<e foo=\"1\"/>/attribute(*, xs:doesNotExistExampleCom)}</e>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-88.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-89'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e>{<e foo=\"1\"/>/attribute(*, doesNotExistExampleCom)}</e>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-89.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NameTest-90'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e>{<e foo=\"1\"/>/attribute(*, xs:doesNotExistExampleCom)}</e>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NameTest-90.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
