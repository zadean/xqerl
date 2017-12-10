-module('prod_DirElemContent_namespace_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['Constr-namespace-1'/1]).
-export(['Constr-namespace-2'/1]).
-export(['Constr-namespace-3'/1]).
-export(['Constr-namespace-4'/1]).
-export(['Constr-namespace-5'/1]).
-export(['Constr-namespace-6'/1]).
-export(['Constr-namespace-7'/1]).
-export(['Constr-namespace-8'/1]).
-export(['Constr-namespace-9'/1]).
-export(['Constr-namespace-10'/1]).
-export(['Constr-namespace-11'/1]).
-export(['Constr-namespace-12'/1]).
-export(['Constr-namespace-13'/1]).
-export(['Constr-namespace-14'/1]).
-export(['Constr-namespace-15'/1]).
-export(['Constr-namespace-16'/1]).
-export(['Constr-namespace-17'/1]).
-export(['Constr-namespace-18'/1]).
-export(['Constr-namespace-19'/1]).
-export(['Constr-namespace-20'/1]).
-export(['Constr-namespace-21'/1]).
-export(['Constr-namespace-22'/1]).
-export(['Constr-namespace-23'/1]).
-export(['Constr-namespace-24'/1]).
-export(['Constr-namespace-25'/1]).
-export(['Constr-namespace-26'/1]).
-export(['Constr-namespace-27'/1]).
-export(['Constr-namespace-29'/1]).
-export(['Constr-namespace-30'/1]).
-export(['K2-DirectConElemNamespace-1'/1]).
-export(['K2-DirectConElemNamespace-2'/1]).
-export(['K2-DirectConElemNamespace-3'/1]).
-export(['K2-DirectConElemNamespace-4'/1]).
-export(['K2-DirectConElemNamespace-5'/1]).
-export(['K2-DirectConElemNamespace-6'/1]).
-export(['K2-DirectConElemNamespace-7'/1]).
-export(['K2-DirectConElemNamespace-8'/1]).
-export(['K2-DirectConElemNamespace-9'/1]).
-export(['K2-DirectConElemNamespace-10'/1]).
-export(['K2-DirectConElemNamespace-11'/1]).
-export(['K2-DirectConElemNamespace-12'/1]).
-export(['K2-DirectConElemNamespace-13'/1]).
-export(['K2-DirectConElemNamespace-14'/1]).
-export(['K2-DirectConElemNamespace-15'/1]).
-export(['K2-DirectConElemNamespace-16'/1]).
-export(['K2-DirectConElemNamespace-17'/1]).
-export(['K2-DirectConElemNamespace-18'/1]).
-export(['K2-DirectConElemNamespace-19'/1]).
-export(['K2-DirectConElemNamespace-20'/1]).
-export(['K2-DirectConElemNamespace-21'/1]).
-export(['K2-DirectConElemNamespace-22'/1]).
-export(['K2-DirectConElemNamespace-23'/1]).
-export(['K2-DirectConElemNamespace-24'/1]).
-export(['K2-DirectConElemNamespace-25'/1]).
-export(['K2-DirectConElemNamespace-26'/1]).
-export(['K2-DirectConElemNamespace-27'/1]).
-export(['K2-DirectConElemNamespace-28'/1]).
-export(['K2-DirectConElemNamespace-29'/1]).
-export(['K2-DirectConElemNamespace-30'/1]).
-export(['K2-DirectConElemNamespace-31'/1]).
-export(['K2-DirectConElemNamespace-32'/1]).
-export(['K2-DirectConElemNamespace-33'/1]).
-export(['K2-DirectConElemNamespace-34'/1]).
-export(['K2-DirectConElemNamespace-35'/1]).
-export(['K2-DirectConElemNamespace-36'/1]).
-export(['K2-DirectConElemNamespace-37'/1]).
-export(['K2-DirectConElemNamespace-38'/1]).
-export(['K2-DirectConElemNamespace-39'/1]).
-export(['K2-DirectConElemNamespace-40'/1]).
-export(['K2-DirectConElemNamespace-41'/1]).
-export(['K2-DirectConElemNamespace-42'/1]).
-export(['K2-DirectConElemNamespace-43'/1]).
-export(['K2-DirectConElemNamespace-44'/1]).
-export(['K2-DirectConElemNamespace-45'/1]).
-export(['K2-DirectConElemNamespace-46'/1]).
-export(['K2-DirectConElemNamespace-47'/1]).
-export(['K2-DirectConElemNamespace-48'/1]).
-export(['K2-DirectConElemNamespace-49'/1]).
-export(['K2-DirectConElemNamespace-50'/1]).
-export(['K2-DirectConElemNamespace-51'/1]).
-export(['K2-DirectConElemNamespace-52'/1]).
-export(['K2-DirectConElemNamespace-53'/1]).
-export(['K2-DirectConElemNamespace-54'/1]).
-export(['K2-DirectConElemNamespace-55'/1]).
-export(['K2-DirectConElemNamespace-56'/1]).
-export(['K2-DirectConElemNamespace-57'/1]).
-export(['K2-DirectConElemNamespace-58'/1]).
-export(['K2-DirectConElemNamespace-59'/1]).
-export(['K2-DirectConElemNamespace-61'/1]).
-export(['K2-DirectConElemNamespace-62'/1]).
-export(['K2-DirectConElemNamespace-63'/1]).
-export(['K2-DirectConElemNamespace-64'/1]).
-export(['K2-DirectConElemNamespace-65'/1]).
-export(['K2-DirectConElemNamespace-67'/1]).
-export(['K2-DirectConElemNamespace-68'/1]).
-export(['K2-DirectConElemNamespace-69'/1]).
-export(['K2-DirectConElemNamespace-70'/1]).
-export(['K2-DirectConElemNamespace-71'/1]).
-export(['K2-DirectConElemNamespace-72'/1]).
-export(['K2-DirectConElemNamespace-73'/1]).
-export(['K2-DirectConElemNamespace-74'/1]).
-export(['K2-DirectConElemNamespace-75'/1]).
-export(['K2-DirectConElemNamespace-76'/1]).
-export(['K2-DirectConElemNamespace-77'/1]).
-export(['K2-DirectConElemNamespace-78'/1]).
-export(['K2-DirectConElemNamespace-79'/1]).
-export(['DirectConElemNamespace-3'/1]).
-export(['DirectConElemNamespace-4'/1]).
-export(['DirectConElemNamespace-5'/1]).
-export(['DirectConElemNamespace-6'/1]).
-export(['Constr-inscope-1'/1]).
-export(['Constr-inscope-2'/1]).
-export(['Constr-inscope-3'/1]).
-export(['Constr-inscope-4'/1]).
-export(['Constr-inscope-5'/1]).
-export(['Constr-inscope-6'/1]).
-export(['Constr-inscope-7'/1]).
-export(['Constr-inscope-8'/1]).
-export(['Constr-inscope-9'/1]).
-export(['Constr-inscope-10'/1]).
-export(['Constr-inscope-11'/1]).
-export(['Constr-inscope-12'/1]).
-export(['Constr-inscope-13'/1]).
-export(['Constr-inscope-14'/1]).
-export(['Constr-inscope-15'/1]).
-export(['Constr-inscope-16'/1]).
-export(['Constr-inscope-17'/1]).
-export(['Constr-inscope-18'/1]).
-export(['Constr-inscope-19'/1]).
-export(['Constr-inscope-20'/1]).
-export(['Constr-inscope-21'/1]).
-export(['Constr-inscope-22'/1]).
-export(['K2-ConInScopeNamespace-1'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> ct:timetrap({seconds,60}), xqerl_module:unload(all).
init_per_suite(Config) -> 
   DD = filename:dirname(filename:dirname(proplists:get_value(data_dir, Config))),
   TD = filename:absname_join(DD, "QT3-test-suite"),
   BaseDir = filename:join(TD, "prod")

,[{base_dir, BaseDir}|Config].
all() -> [
   'Constr-namespace-1',
   'Constr-namespace-2',
   'Constr-namespace-3',
   'Constr-namespace-4',
   'Constr-namespace-5',
   'Constr-namespace-6',
   'Constr-namespace-7',
   'Constr-namespace-8',
   'Constr-namespace-9',
   'Constr-namespace-10',
   'Constr-namespace-11',
   'Constr-namespace-12',
   'Constr-namespace-13',
   'Constr-namespace-14',
   'Constr-namespace-15',
   'Constr-namespace-16',
   'Constr-namespace-17',
   'Constr-namespace-18',
   'Constr-namespace-19',
   'Constr-namespace-20',
   'Constr-namespace-21',
   'Constr-namespace-22',
   'Constr-namespace-23',
   'Constr-namespace-24',
   'Constr-namespace-25',
   'Constr-namespace-26',
   'Constr-namespace-27',
   'Constr-namespace-29',
   'Constr-namespace-30',
   'K2-DirectConElemNamespace-1',
   'K2-DirectConElemNamespace-2',
   'K2-DirectConElemNamespace-3',
   'K2-DirectConElemNamespace-4',
   'K2-DirectConElemNamespace-5',
   'K2-DirectConElemNamespace-6',
   'K2-DirectConElemNamespace-7',
   'K2-DirectConElemNamespace-8',
   'K2-DirectConElemNamespace-9',
   'K2-DirectConElemNamespace-10',
   'K2-DirectConElemNamespace-11',
   'K2-DirectConElemNamespace-12',
   'K2-DirectConElemNamespace-13',
   'K2-DirectConElemNamespace-14',
   'K2-DirectConElemNamespace-15',
   'K2-DirectConElemNamespace-16',
   'K2-DirectConElemNamespace-17',
   'K2-DirectConElemNamespace-18',
   'K2-DirectConElemNamespace-19',
   'K2-DirectConElemNamespace-20',
   'K2-DirectConElemNamespace-21',
   'K2-DirectConElemNamespace-22',
   'K2-DirectConElemNamespace-23',
   'K2-DirectConElemNamespace-24',
   'K2-DirectConElemNamespace-25',
   'K2-DirectConElemNamespace-26',
   'K2-DirectConElemNamespace-27',
   'K2-DirectConElemNamespace-28',
   'K2-DirectConElemNamespace-29',
   'K2-DirectConElemNamespace-30',
   'K2-DirectConElemNamespace-31',
   'K2-DirectConElemNamespace-32',
   'K2-DirectConElemNamespace-33',
   'K2-DirectConElemNamespace-34',
   'K2-DirectConElemNamespace-35',
   'K2-DirectConElemNamespace-36',
   'K2-DirectConElemNamespace-37',
   'K2-DirectConElemNamespace-38',
   'K2-DirectConElemNamespace-39',
   'K2-DirectConElemNamespace-40',
   'K2-DirectConElemNamespace-41',
   'K2-DirectConElemNamespace-42',
   'K2-DirectConElemNamespace-43',
   'K2-DirectConElemNamespace-44',
   'K2-DirectConElemNamespace-45',
   'K2-DirectConElemNamespace-46',
   'K2-DirectConElemNamespace-47',
   'K2-DirectConElemNamespace-48',
   'K2-DirectConElemNamespace-49',
   'K2-DirectConElemNamespace-50',
   'K2-DirectConElemNamespace-51',
   'K2-DirectConElemNamespace-52',
   'K2-DirectConElemNamespace-53',
   'K2-DirectConElemNamespace-54',
   'K2-DirectConElemNamespace-55',
   'K2-DirectConElemNamespace-56',
   'K2-DirectConElemNamespace-57',
   'K2-DirectConElemNamespace-58',
   'K2-DirectConElemNamespace-59',
   'K2-DirectConElemNamespace-61',
   'K2-DirectConElemNamespace-62',
   'K2-DirectConElemNamespace-63',
   'K2-DirectConElemNamespace-64',
   'K2-DirectConElemNamespace-65',
   'K2-DirectConElemNamespace-67',
   'K2-DirectConElemNamespace-68',
   'K2-DirectConElemNamespace-69',
   'K2-DirectConElemNamespace-70',
   'K2-DirectConElemNamespace-71',
   'K2-DirectConElemNamespace-72',
   'K2-DirectConElemNamespace-73',
   'K2-DirectConElemNamespace-74',
   'K2-DirectConElemNamespace-75',
   'K2-DirectConElemNamespace-76',
   'K2-DirectConElemNamespace-77',
   'K2-DirectConElemNamespace-78',
   'K2-DirectConElemNamespace-79',
   'DirectConElemNamespace-3',
   'DirectConElemNamespace-4',
   'DirectConElemNamespace-5',
   'DirectConElemNamespace-6',
   'Constr-inscope-1',
   'Constr-inscope-2',
   'Constr-inscope-3',
   'Constr-inscope-4',
   'Constr-inscope-5',
   'Constr-inscope-6',
   'Constr-inscope-7',
   'Constr-inscope-8',
   'Constr-inscope-9',
   'Constr-inscope-10',
   'Constr-inscope-11',
   'Constr-inscope-12',
   'Constr-inscope-13',
   'Constr-inscope-14',
   'Constr-inscope-15',
   'Constr-inscope-16',
   'Constr-inscope-17',
   'Constr-inscope-18',
   'Constr-inscope-19',
   'Constr-inscope-20',
   'Constr-inscope-21',
   'Constr-inscope-22',
   'K2-ConInScopeNamespace-1'].
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
environment('MixNS',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "DirElemContent.namespace/MixNS.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('inscope',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "DirElemContent.namespace/inscope.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'Constr-namespace-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<foo:elem/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-namespace-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0081") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-namespace-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<elem xmlns:foo=\"http://www.example.com\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-namespace-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem xmlns:foo=\"http://www.example.com\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-namespace-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<elem xmlns=\"http://www.example.com\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-namespace-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem xmlns=\"http://www.example.com\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-namespace-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<elem xmlns:foo=\"http://www.example.com\" xmlns:foo=\"http://www.example.com\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-namespace-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0071") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-namespace-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<elem xmlns=\"http://www.example.com\" xmlns=\"http://www.example.com\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-namespace-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0071") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-namespace-6'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<elem xmlns:xml=\"http://www.example.com\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-namespace-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0070") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-namespace-7'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<elem xmlns:xmlns=\"http://www.example.com\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-namespace-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0070") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-namespace-8'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(<elem xmlns:foo=\"http://www.example.com\"><foo:child/></elem>)/*:child",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-namespace-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<foo:child xmlns:foo=\"http://www.example.com\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-namespace-9'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<elem xmlns:foo=\"http://www.example.com/parent\"><foo:child xmlns:foo=\"http://www.example.com/child\"/></elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-namespace-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem xmlns:foo=\"http://www.example.com/parent\"><foo:child xmlns:foo=\"http://www.example.com/child\"/></elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-namespace-10'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare namespace foo=\"http://www.example.com/prolog\"; <foo:elem xmlns:foo=\"http://www.example.com/element\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-namespace-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<foo:elem xmlns:foo=\"http://www.example.com/element\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-namespace-11'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(<elem xmlns:foo=\"http://www.example.com/parent\"><foo:child xmlns:foo=\"http://www.example.com/child\"><foo:grand-child/></foo:child></elem>)//*:grand-child",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-namespace-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<foo:grand-child xmlns:foo=\"http://www.example.com/child\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-namespace-12'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare namespace foo=\"http://www.example.com/prolog\"; (<elem xmlns:foo=\"http://www.example.com/parent\"><foo:child/></elem>)//*:child",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-namespace-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<foo:child xmlns:foo=\"http://www.example.com/parent\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-namespace-13'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<foo:elem xmlns:foo=\"http://www.example.com/parent\"><child xmlns:foo=\"\"/></foo:elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-namespace-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<foo:elem xmlns:foo=\"http://www.example.com/parent\"><child/></foo:elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XQST0085") of 
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
'Constr-namespace-14'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<foo:elem xmlns:foo=\"http://www.example.com/parent\"><child xmlns:foo=\"\"><foo:grand-child/></child></foo:elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-namespace-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XPST0081") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XQST0085") of 
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
'Constr-namespace-15'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare namespace foo=\"http://www.example.com/prolog\"; <elem xmlns:foo=\"\"><foo:child/></elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-namespace-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XPST0081") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XQST0085") of 
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
'Constr-namespace-16'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(<foo:elem xmlns:foo=\"http://www.example.com/parent\"><child xmlns:foo=\"\"><grand-child/></child></foo:elem>)//grand-child",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-namespace-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<grand-child/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XQST0085") of 
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
'Constr-namespace-17'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(<elem xmlns=\"http://www.example.com\"><child/></elem>)/*:child",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-namespace-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<child xmlns=\"http://www.example.com\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-namespace-18'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<elem xmlns=\"http://www.example.com/parent\"><child xmlns=\"http://www.example.com/child\"/></elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-namespace-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem xmlns=\"http://www.example.com/parent\"><child xmlns=\"http://www.example.com/child\"/></elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-namespace-19'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare default element namespace \"http://www.example.com/prolog\"; <elem xmlns=\"http://www.example.com/element\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-namespace-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem xmlns=\"http://www.example.com/element\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-namespace-20'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(<elem xmlns=\"http://www.example.com/parent\"><child xmlns=\"http://www.example.com/child\"><grand-child/></child></elem>)//*:grand-child",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-namespace-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<grand-child xmlns=\"http://www.example.com/child\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-namespace-21'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare default element namespace \"http://www.example.com/prolog\"; (<elem xmlns=\"http://www.example.com/element\"><child/></elem>)/*:child",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-namespace-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<child xmlns=\"http://www.example.com/element\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-namespace-22'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<elem xmlns=\"http://www.example.com/parent\"><child xmlns=\"\"/></elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-namespace-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem xmlns=\"http://www.example.com/parent\"><child xmlns=\"\"/></elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-namespace-23'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "(<elem xmlns=\"http://www.example.com/parent\"><child xmlns=\"\"><grand-child/></child></elem>)//*:grand-child",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-namespace-23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<grand-child/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-namespace-24'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<elem xmlns=\"{'http://www.example.com'}\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-namespace-24.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0022") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-namespace-25'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<elem xmlns=\"http://www.example.com{'/namespace'}\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-namespace-25.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0022") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-namespace-26'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<elem xmlns:cm=\"http://www.example.com\">{count(//cm:b)}</elem>",
   {Env,Opts} = xqerl_test:handle_environment(environment('MixNS',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-namespace-26.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem xmlns:cm=\"http://www.example.com\">1</elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-namespace-27'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<elem xmlns:cm=\"http://www.example.com\" attr=\"{count(//cm:b)}\"/>",
   {Env,Opts} = xqerl_test:handle_environment(environment('MixNS',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-namespace-27.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem xmlns:cm=\"http://www.example.com\" attr=\"1\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-namespace-29'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<parent><child xmlns:cm=\"http://www.example.com\"/><child>{count(//cm:b)}</child></parent>",
   {Env,Opts} = xqerl_test:handle_environment(environment('MixNS',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-namespace-29.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0081") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-namespace-30'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e a=\"{p:count(())}\" xmlns:p=\"http://www.w3.org/2005/xpath-functions\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-namespace-30.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e xmlns:p=\"http://www.w3.org/2005/xpath-functions\" a=\"0\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<name xmlns:ns=\"http://example.com/NS\"/>, ns:nametest",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0081") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<a:elem xmlns:a=\"http://example.com/NS\" xmlns:b=\"http://example.com/NS\"></b:elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0118") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<a:elem xmlns:a=\"http://example.com/NS\" xmlns:b=\"http://example.com/NS\"></b:elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0118") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare namespace p = \"http://example.com/QuiteWeirdNamespace\"; empty(p:e[1])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
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
'K2-DirectConElemNamespace-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "count(in-scope-prefixes(<e/>)[. eq \"xml\"])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-6'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "count(in-scope-prefixes(element e{})[. eq \"xml\"])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-7'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare default function namespace \"http://example.com\"; <e a=\"{count()}\" xmlns=\"http://www.w3.org/2001/XMLSchema\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-8'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare default function namespace \"http://example.com\"; <e a=\"{p:count()}\" xmlns:p=\"http://www.w3.org/2001/XMLSchema\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-9'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare default function namespace \"http://example.com\"; <e xmlns=\"http://www.w3.org/2001/XMLSchema\" a=\"{count()}\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-10'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare default function namespace \"http://example.com\"; <e xmlns:p=\"http://www.w3.org/2001/XMLSchema\" a=\"{p:count()}\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-11'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare default function namespace \"http://example.com\"; <e xmlns=\"http://www.w3.org/2001/XMLSchema\" a=\"{nametest}\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-12'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare default function namespace \"http://example.com\"; <e a=\"{nametest}\" xmlns=\"http://www.w3.org/2001/XMLSchema\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-13'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare default function namespace \"http://example.com\"; <e xmlns:p=\"http://www.w3.org/2001/XMLSchema\" p:p=\"{p:nametest}\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-14'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare default function namespace \"http://example.com\"; <e p:p=\"{p:nametest}\" xmlns:p=\"http://www.w3.org/2001/XMLSchema\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-15'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e xmlns=\"content{{ {'1'}\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0022") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-16'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e xmlns:p=\"content{{ {'1'}\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0022") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-17'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e xmlns=\"content{()}\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0022") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-18'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e xmlns:p=\"content{()}\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0022") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-19'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e a=\"{1 instance of integer}\" xmlns=\"http://www.w3.org/2001/XMLSchema\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e xmlns=\"http://www.w3.org/2001/XMLSchema\" a=\"true\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-20'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e a=\"{1 treat as integer}\" xmlns=\"http://www.w3.org/2001/XMLSchema\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e xmlns=\"http://www.w3.org/2001/XMLSchema\" a=\"1\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-21'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e a=\"{1 cast as string}\" xmlns=\"http://www.w3.org/2001/XMLSchema\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e xmlns=\"http://www.w3.org/2001/XMLSchema\" a=\"1\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-22'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e a=\"{1 castable as string}\" xmlns=\"http://www.w3.org/2001/XMLSchema\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e xmlns=\"http://www.w3.org/2001/XMLSchema\" a=\"true\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-23'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e a=\"{<e><b>data</b></e>/b}\" xmlns=\"http://www.example.com/\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e xmlns=\"http://www.example.com/\" a=\"data\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-24'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e a=\"{<e b=\"data\"/>/@b}\" xmlns=\"http://www.example.com/\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-24.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e xmlns=\"http://www.example.com/\" a=\"data\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-25'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare namespace b = \"http://www.example.com/\"; empty(<e xmlns=\"http://www.example.com/\"><d xmlns=\"\"><b/></d></e>/b:d/b:b)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-25.xq"), Qry1),
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
'K2-DirectConElemNamespace-26'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e xmlns:d=\"http://www.example.com/\"/>, d:d",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-26.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0081") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-27'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e xmlns:p=\"http://www.w3.org/2001/XMLSchema\"> <b xmlns:p=\"http://www.w3.org/2001/XMLSchema\"/> {p:integer(1)} </e>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-27.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e xmlns:p=\"http://www.w3.org/2001/XMLSchema\"><b/>1</e>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-28'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e xmlns:p=\"http://www.w3.org/2005/xpath-functions\"> <b xmlns:p=\"http://www.w3.org/2001/XMLSchema\"/> {fn:count(0)} </e>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-28.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e xmlns:p=\"http://www.w3.org/2005/xpath-functions\"><b xmlns:p=\"http://www.w3.org/2001/XMLSchema\"/>1</e>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-29'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e a=\"{1 instance of p:integer}\" xmlns:p=\"http://www.w3.org/2001/XMLSchema\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-29.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e xmlns:p=\"http://www.w3.org/2001/XMLSchema\" a=\"true\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-30'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e a=\"{1 treat as p:integer}\" xmlns:p=\"http://www.w3.org/2001/XMLSchema\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-30.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e xmlns:p=\"http://www.w3.org/2001/XMLSchema\" a=\"1\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-31'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e a=\"{1 cast as p:string}\" xmlns:p=\"http://www.w3.org/2001/XMLSchema\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-31.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e xmlns:p=\"http://www.w3.org/2001/XMLSchema\" a=\"1\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-32'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e a=\"{1 castable as p:string}\" xmlns:p=\"http://www.w3.org/2001/XMLSchema\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-32.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e xmlns:p=\"http://www.w3.org/2001/XMLSchema\" a=\"true\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-33'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<a attr=\"{let $p:name := 3 return $p:name}\" xmlns:p=\"http://www.example.com/\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-33.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a xmlns:p=\"http://www.example.com/\" attr=\"3\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-34'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e xmlns=\"http://{exa}mple.com/\"/>/@xmlns",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-34.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0022") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-35'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e xmlns=\"{1}\"/>/@xmlns",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-35.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0022") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-36'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e xmlns=\"{xs:anyURI(\"http://www.example.com/\")}\"/>/@xmlns",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-36.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0022") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-37'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e xmlns=\"{xs:untypedAtomic(\"http://www.example.com/\")}\"/>/@xmlns",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-37.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0022") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-38'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e xmlns=\"/www.example.com/}\"/>/@xmlns",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-38.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-39'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
         declare namespace p = \"http://example.com/\"; 
         document{<p:e xmlns=\"\"/>, count(in-scope-prefixes(<p:e xmlns=\"\"/>))}
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-39.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<p:e xmlns:p=\"http://example.com/\"/>2") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-40'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare namespace p = \"http://www.example.com/A\"; <e xmlns=\"http://www.example.com/A\" xmlns:A=\"http://www.example.com/C\"> <b xmlns:B=\"http://www.example.com/C\"/> </e>/p:b",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-40.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<b xmlns:B=\"http://www.example.com/C\" xmlns:A=\"http://www.example.com/C\" xmlns=\"http://www.example.com/A\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-41'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare namespace p = \"http://www.example.com/A\"; \"START\", for $i in in-scope-prefixes(<e xmlns=\"http://www.example.com/A\" xmlns:A=\"http://www.example.com/C\"> <b xmlns:B=\"http://www.example.com/C\" /> </e>/p:b) order by $i return $i, \"END\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-41.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "START  A B xml END") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-42'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e xmlns:p=\"http://www.example.com/\"> <e xmlns:p=\"http://www.example.com/\"/> </e>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-42.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e xmlns:p=\"http://www.example.com/\"><e/></e>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-43'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e xmlns=\"http://www.example.com/\"> <e xmlns=\"http://www.example.com/\"/> </e>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-43.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e xmlns=\"http://www.example.com/\"><e/></e>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-44'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e xmlns=\"/www.example.com/{\"/>/@xmlns",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-44.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XQST0022") of 
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
'K2-DirectConElemNamespace-45'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "let $i := <e xmlns:p=\"http://example.com\" p:anAttribute=\"attrValue\"/> return <a>{$i/@*}</a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-45.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a xmlns:p=\"http://example.com\" p:anAttribute=\"attrValue\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-46'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "let $i := <e xml:space=\"preserve\"/> return <a>{$i/@*}</a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-46.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a xml:space=\"preserve\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-47'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e xmlns=\"\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-47.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-48'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e xmlns:p=\"http://example.com\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-48.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e xmlns:p=\"http://example.com\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-49'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare default element namespace \"http://www.example.com/A\"; <anElement xmlns=\"http://www.example.com/B\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-49.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<anElement xmlns=\"http://www.example.com/B\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-50'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e xmlns=\"http://www.example.com/A\" xmlns:A=\"http://www.example.com/C\"> <b xmlns:B=\"http://www.example.com/C\" xmlns=\"\"/> </e>/b",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-50.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<b xmlns:B=\"http://www.example.com/C\" xmlns:A=\"http://www.example.com/C\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_xml(Res,"<b xmlns:A=\"http://www.example.com/C\" xmlns:B=\"http://www.example.com/C\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-51'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare default element namespace \"http://example.com\"; <e xmlns=\"\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-51.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-52'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare default element namespace \"http://example.com/\"; <a> <e xmlns=\"\"/> </a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-52.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a xmlns=\"http://example.com/\"><e xmlns=\"\"/></a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-53'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "count(in-scope-prefixes(<a xmlns=\"http://example.com/\"> <e xmlns=\"\"/> </a>/e))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-53.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-54'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "count(<e xmlns=\"http://example.com/\"><a xmlns=\"\"/></e>/namespace-uri(exactly-one(*)))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-54.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-55'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e xmlns=\"http://example.com/\"> <b xmlns=\"\"> { attribute {QName(\"http://example.com/2\", \"p:attr\")} {()} } </b> </e>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-55.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e xmlns=\"http://example.com/\"><b xmlns=\"\" xmlns:p=\"http://example.com/2\" p:attr=\"\"/></e>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-56'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare default element namespace \"http://example.com/\"; <r xmlns:p=\"http://example.com/\"> { <e p:att=\"\"/>/(@att, attribute::att) } </r>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-56.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<r xmlns=\"http://example.com/\" xmlns:p=\"http://example.com/\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-57'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare default element namespace \"http://example.com/\"; declare namespace p = \"http://example.com/\"; <r> { <e p:att=\"\"/>/(@att) } </r>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-57.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<r xmlns=\"http://example.com/\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-58'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<r> <xs:element/> <local:element/> <fn:element/> <xml:element/> </r>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-58.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<r><xs:element xmlns:xs=\"http://www.w3.org/2001/XMLSchema\"/><local:element xmlns:local=\"http://www.w3.org/2005/xquery-local-functions\"/><fn:element xmlns:fn=\"http://www.w3.org/2005/xpath-functions\"/><xml:element/></r>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-59'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "namespace-uri(<p:e xmlns:p=\"http://example.com/{{{{{{}}}}}}asd\"/>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-59.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "http://example.com/{{{}}}asd") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XQST0046") of 
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
'K2-DirectConElemNamespace-61'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e xmlns:p=\"{\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-61.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XQST0022") of 
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
'K2-DirectConElemNamespace-62'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e xmlns:p=\"}\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-62.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-63'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e xmlns:p=\"content{\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-63.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XQST0022") of 
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
'K2-DirectConElemNamespace-64'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e xmlns:p=\"content}\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-64.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-65'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "namespace-uri-for-prefix(\"p\", <e xmlns:p=\"http://example.com/{{}}{{{{}}}}\"/>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-65.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "http://example.com/{}{{}}") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XQST0046") of 
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
'K2-DirectConElemNamespace-67'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e xmlns:p=\"{content\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-67.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XQST0022") of 
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
'K2-DirectConElemNamespace-68'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e xmlns:p=\"}content\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-68.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-69'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e xmlns:p=\"content{content\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-69.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XQST0022") of 
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
'K2-DirectConElemNamespace-70'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e xmlns:p=\"content}content\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-70.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-71'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e xmlns:p=\"{\"http://example.com/\"}\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-71.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0022") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-72'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e xmlns=\"{\"http://example.com/\"}\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-72.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0022") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-73'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e xmlns:p=\"{()}\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-73.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0022") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-74'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e xmlns=\"{()}\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-74.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0022") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-75'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "namespace-uri(<e xmlns=\"http://example.com/{{1}}\"/>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-75.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "http://example.com/{1}") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XQST0046") of 
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
'K2-DirectConElemNamespace-76'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<e xmlns:p=\"http://example.com/{{1}}\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-76.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<e xmlns:p=\"http://example.com/{1}\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XQST0046") of 
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
'K2-DirectConElemNamespace-77'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare namespace t = \"http://example.com/2\"; <p:a xmlns:p=\"http://example.com/\"> <p:e xmlns:p=\"http://example.com/2\"/> </p:a>//t:e",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-77.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<p:e xmlns:p=\"http://example.com/2\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-78'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "let $e := document{(<X1:L xmlns:X1=\"http://example.com/URL1\">1</X1:L>, <X2:L xmlns:X2=\"http://example.com/URL2\">2</X2:L>)} return <outer xmlns:P=\"http://example.com/URL1\"> { let $outer as element(P:L) := $e/element(P:L) return <inner xmlns:P=\"http://example.com/URL2\"> { let $inner as element(P:L) := $e/element(P:L) return ($outer, $inner) } </inner> } </outer>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-78.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<outer xmlns:P=\"http://example.com/URL1\"><inner xmlns:P=\"http://example.com/URL2\"><X1:L xmlns:X1=\"http://example.com/URL1\">1</X1:L><X2:L xmlns:X2=\"http://example.com/URL2\">2</X2:L></inner></outer>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemNamespace-79'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "let $e := document{(<X1:L xmlns:X1=\"http://ns.example.com/URL1\">1</X1:L>, <X2:L xmlns:X2=\"http://ns.example.com/URL2\">2</X2:L>)} return <outer xmlns:P=\"http://ns.example.com/URL1\"> { let $outer as element(P:L) := $e/element(P:L) return <inner xmlns:P=\"http://ns.example.com/URL2\"> { let $inner as element(P:L) := $outer return $inner } </inner> } </outer>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-DirectConElemNamespace-79.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'DirectConElemNamespace-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "namespace-uri(<p:e xmlns:p=\"http://ns.example.com/ns?val=\"\"\"\"\"\"asd\"/>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "DirectConElemNamespace-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "http://ns.example.com/ns?val=\"\"\"asd") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XQST0046") of 
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
'DirectConElemNamespace-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "namespace-uri(<p:e xmlns:p=\"http://ns.example.com/ns?val=\"\"asd\"/>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "DirectConElemNamespace-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "http://ns.example.com/ns?val=\"asd") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XQST0046") of 
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
'DirectConElemNamespace-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "namespace-uri(<p:e xmlns:p='http://ns.example.com/ns?val=''''''asd'/>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "DirectConElemNamespace-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://ns.example.com/ns?val='''asd") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'DirectConElemNamespace-6'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "namespace-uri(<e xmlns='http://ns.example.com/ns?val=''asd'/>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "DirectConElemNamespace-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://ns.example.com/ns?val='asd") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-inscope-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<new xmlns:foo=\"http://www.example.com\">{//@*:attr1}</new>",
   {Env,Opts} = xqerl_test:handle_environment(environment('inscope',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-inscope-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<new xmlns:foo=\"http://www.example.com\" xmlns:XXX=\"http://www.example.com/parent1\" XXX:attr1=\"attr1\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-inscope-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<new>{//@*:attr1, //@*:attr2}</new>",
   {Env,Opts} = xqerl_test:handle_environment(environment('inscope',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-inscope-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<new xmlns:foo=\"http://www.example.com/parent1\" xmlns:XXX=\"http://www.example.com/parent2\" foo:attr1=\"attr1\" XXX:attr2=\"attr2\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-inscope-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "for $x in <parent1 xmlns:foo=\"http://www.example.com/parent1\" foo:attr1=\"attr1\"/> return <new xmlns:foo=\"http://www.example.com\">{$x//@*:attr1}</new>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-inscope-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<new xmlns:foo=\"http://www.example.com\" xmlns:XXX=\"http://www.example.com/parent1\" XXX:attr1=\"attr1\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-inscope-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "for $x in <inscope> <parent1 xmlns:foo=\"http://www.example.com/parent1\" foo:attr1=\"attr1\"/> <parent2 xmlns:foo=\"http://www.example.com/parent2\" foo:attr2=\"attr2\"/></inscope> return <new>{$x//@*:attr1, $x//@*:attr2}</new>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-inscope-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<new xmlns:foo=\"http://www.example.com/parent1\" xmlns:XXX=\"http://www.example.com/parent2\" foo:attr1=\"attr1\" XXX:attr2=\"attr2\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-inscope-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<new>{//*:child3}</new>",
   {Env,Opts} = xqerl_test:handle_environment(environment('inscope',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-inscope-5.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<new><foo:child3 xmlns:foo=\"http://www.example.com/parent3\"/></new>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-inscope-6'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<new>{//*:child4}</new>",
   {Env,Opts} = xqerl_test:handle_environment(environment('inscope',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-inscope-6.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<new><child4 xmlns=\"http://www.example.com/parent4\"/></new>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-inscope-7'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "for $x in <parent3 xmlns:foo=\"http://www.example.com/parent3\"><foo:child3/></parent3> return <new>{$x//*:child3}</new>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-inscope-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<new><foo:child3 xmlns:foo=\"http://www.example.com/parent3\"/></new>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-inscope-8'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "for $x in <parent4 xmlns=\"http://www.example.com/parent4\"><child4/></parent4> return <new>{$x//*:child4}</new>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-inscope-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<new><child4 xmlns=\"http://www.example.com/parent4\"/></new>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-inscope-9'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<new>{//*:child1}</new>",
   {Env,Opts} = xqerl_test:handle_environment(environment('inscope',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-inscope-9.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<new><child1 xmlns:foo=\"http://www.example.com/parent1\" attr=\"child\"/></new>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-inscope-10'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<new xmlns=\"http://www.example.com\">{//*:child2}</new>",
   {Env,Opts} = xqerl_test:handle_environment(environment('inscope',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-inscope-10.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<new xmlns=\"http://www.example.com\"><child2 xmlns=\"\" xmlns:foo=\"http://www.example.com/parent2\" attr=\"child\"/></new>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-inscope-11'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "for $x in <parent1 xmlns:foo=\"http://www.example.com/parent1\" foo:attr1=\"attr1\"><child1 attr=\"child\"/></parent1> return <new>{$x//*:child1}</new>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-inscope-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<new><child1 xmlns:foo=\"http://www.example.com/parent1\" attr=\"child\"/></new>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-inscope-12'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "for $x in <parent2 xmlns:foo=\"http://www.example.com/parent2\" foo:attr2=\"attr2\"><child2 attr=\"child\"/></parent2> return <new xmlns=\"http://www.example.com\">{$x//*:child2}</new>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-inscope-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<new xmlns=\"http://www.example.com\"><child2 xmlns=\"\" xmlns:foo=\"http://www.example.com/parent2\" attr=\"child\"/></new>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-inscope-13'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare namespace foo = \"http://example.com\"; <new/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-inscope-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<new/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-inscope-14'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare namespace foo = \"http://example.com\"; <foo:new/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-inscope-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<foo:new xmlns:foo=\"http://example.com\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-inscope-15'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<xml:new/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-inscope-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<xml:new/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-inscope-16'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<new xml:attr=\"foo\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-inscope-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<new xml:attr=\"foo\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-inscope-17'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<new xmlns:foo=\"http://www.example.com\">{//*:child1}</new>",
   {Env,Opts} = xqerl_test:handle_environment(environment('inscope',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-inscope-17.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<new xmlns:foo=\"http://www.example.com\"><child1 xmlns:foo=\"http://www.example.com/parent1\" attr=\"child\"/></new>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-inscope-18'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<new xmlns:foo=\"http://www.example.com/parent1\">{//*:child1}</new>",
   {Env,Opts} = xqerl_test:handle_environment(environment('inscope',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-inscope-18.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<new xmlns:foo=\"http://www.example.com/parent1\"><child1 attr=\"child\"/></new>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-inscope-19'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<new xmlns=\"http://www.example.com\">{//*:child4}</new>",
   {Env,Opts} = xqerl_test:handle_environment(environment('inscope',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-inscope-19.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<new xmlns=\"http://www.example.com\"><child4 xmlns=\"http://www.example.com/parent4\"/></new>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-inscope-20'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "<new xmlns=\"http://www.example.com/parent4\">{//*:child4}</new>",
   {Env,Opts} = xqerl_test:handle_environment(environment('inscope',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-inscope-20.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<new xmlns=\"http://www.example.com/parent4\"><child4/></new>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-inscope-21'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare namespace cat ='mycat'; 
        <a t='cat:miau'>42</a>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-inscope-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a t='cat:miau'>42</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-inscope-22'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        <a xsi:type='xs:integer'>42</a>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Constr-inscope-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a  xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:type='xs:integer'>42</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-ConInScopeNamespace-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "let $i := document{<e1/>, <e2/>, <e3/>, <e4/>} return (in-scope-prefixes($i/e1), in-scope-prefixes($i/e2), in-scope-prefixes($i/e3), in-scope-prefixes($i/e4))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-ConInScopeNamespace-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "xml xml xml xml") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
