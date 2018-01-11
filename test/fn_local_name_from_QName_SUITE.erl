-module('fn_local_name_from_QName_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['LocalNameFromQNameFunc001'/1]).
-export(['LocalNameFromQNameFunc002'/1]).
-export(['LocalNameFromQNameFunc003'/1]).
-export(['LocalNameFromQNameFunc004'/1]).
-export(['LocalNameFromQNameFunc005'/1]).
-export(['LocalNameFromQNameFunc006'/1]).
-export(['LocalNameFromQNameFunc007'/1]).
-export(['LocalNameFromQNameFunc009'/1]).
-export(['LocalNameFromQNameFunc010'/1]).
-export(['LocalNameFromQNameFunc011'/1]).
-export(['LocalNameFromQNameFunc012'/1]).
-export(['LocalNameFromQNameFunc013'/1]).
-export(['LocalNameFromQNameFunc014'/1]).
-export(['LocalNameFromQNameFunc015'/1]).
-export(['LocalNameFromQNameFunc015a'/1]).
-export(['LocalNameFromQNameFunc016'/1]).
-export(['LocalNameFromQNameFunc017'/1]).
-export(['LocalNameFromQNameFunc018'/1]).
-export(['LocalNameFromQNameFunc019'/1]).
-export(['LocalNameFromQNameFunc020'/1]).
-export(['LocalNameFromQNameFunc021'/1]).
-export(['fn-local-name-from-qname-022'/1]).
-export(['fn-local-name-from-qname-023'/1]).
-export(['fn-local-name-from-qname-024'/1]).
-export(['K-LocalNameFromQNameFunc-1'/1]).
-export(['K-LocalNameFromQNameFunc-2'/1]).
-export(['K-LocalNameFromQNameFunc-3'/1]).
-export(['K-LocalNameFromQNameFunc-4'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> ct:timetrap({seconds,60}), xqerl_module:unload(all).
init_per_suite(Config) -> 
   DD = filename:dirname(filename:dirname(proplists:get_value(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   BaseDir = filename:join(TD, "fn")

,[{base_dir, BaseDir}|Config].
all() -> [
   'LocalNameFromQNameFunc001',
   'LocalNameFromQNameFunc002',
   'LocalNameFromQNameFunc003',
   'LocalNameFromQNameFunc004',
   'LocalNameFromQNameFunc005',
   'LocalNameFromQNameFunc006',
   'LocalNameFromQNameFunc007',
   'LocalNameFromQNameFunc009',
   'LocalNameFromQNameFunc010',
   'LocalNameFromQNameFunc011',
   'LocalNameFromQNameFunc012',
   'LocalNameFromQNameFunc013',
   'LocalNameFromQNameFunc014',
   'LocalNameFromQNameFunc015',
   'LocalNameFromQNameFunc015a',
   'LocalNameFromQNameFunc016',
   'LocalNameFromQNameFunc017',
   'LocalNameFromQNameFunc018',
   'LocalNameFromQNameFunc019',
   'LocalNameFromQNameFunc020',
   'LocalNameFromQNameFunc021',
   'fn-local-name-from-qname-022',
   'fn-local-name-from-qname-023',
   'fn-local-name-from-qname-024',
   'K-LocalNameFromQNameFunc-1',
   'K-LocalNameFromQNameFunc-2',
   'K-LocalNameFromQNameFunc-3',
   'K-LocalNameFromQNameFunc-4'].
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
environment('fsx',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../prod/ForClause/fsx.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'LocalNameFromQNameFunc001'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'LocalNameFromQNameFunc002'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'LocalNameFromQNameFunc003'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'LocalNameFromQNameFunc004'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'LocalNameFromQNameFunc005'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'LocalNameFromQNameFunc006'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:local-name-from-QName(())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "LocalNameFromQNameFunc006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'LocalNameFromQNameFunc007'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:local-name-from-QName(((),()))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "LocalNameFromQNameFunc007.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'LocalNameFromQNameFunc009'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:local-name-from-QName(\"\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "LocalNameFromQNameFunc009.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'LocalNameFromQNameFunc010'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'LocalNameFromQNameFunc011'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:local-name-from-QName()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "LocalNameFromQNameFunc011.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'LocalNameFromQNameFunc012'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'LocalNameFromQNameFunc013'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'LocalNameFromQNameFunc014'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'LocalNameFromQNameFunc015'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"XQ10 XP20"}.
'LocalNameFromQNameFunc015a'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:local-name-from-QName((//Folder)[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('fsx',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "LocalNameFromQNameFunc015a.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0117") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'LocalNameFromQNameFunc016'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:local-name-from-QName(xs:integer(\"100\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "LocalNameFromQNameFunc016.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'LocalNameFromQNameFunc017'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:local-name-from-QName(xs:time(\"12:00:00Z\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "LocalNameFromQNameFunc017.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'LocalNameFromQNameFunc018'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'LocalNameFromQNameFunc019'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'LocalNameFromQNameFunc020'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'LocalNameFromQNameFunc021'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'fn-local-name-from-qname-022'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'fn-local-name-from-qname-023'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'fn-local-name-from-qname-024'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:local-name-from-QName(node-name(/*))",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-local-name-from-qname-024.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "works") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-LocalNameFromQNameFunc-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "local-name-from-QName()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-LocalNameFromQNameFunc-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-LocalNameFromQNameFunc-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "local-name-from-QName(1, 2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-LocalNameFromQNameFunc-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-LocalNameFromQNameFunc-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "empty(local-name-from-QName( () ))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-LocalNameFromQNameFunc-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-LocalNameFromQNameFunc-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "local-name-from-QName( QName(\"example.com/\", \"pre:lname\")) eq \"lname\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-LocalNameFromQNameFunc-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
