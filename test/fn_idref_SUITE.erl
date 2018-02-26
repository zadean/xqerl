-module('fn_idref_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-idref-1'/1]).
-export(['fn-idref-2'/1]).
-export(['fn-idref-3'/1]).
-export(['fn-idref-4'/1]).
-export(['fn-idref-5'/1]).
-export(['fn-idref-6'/1]).
-export(['fn-idref-7'/1]).
-export(['fn-idref-8'/1]).
-export(['fn-idref-9'/1]).
-export(['fn-idref-10'/1]).
-export(['fn-idref-11'/1]).
-export(['fn-idref-12'/1]).
-export(['fn-idref-13'/1]).
-export(['fn-idref-14'/1]).
-export(['fn-idref-15'/1]).
-export(['fn-idref-16'/1]).
-export(['fn-idref-17'/1]).
-export(['fn-idref-18'/1]).
-export(['fn-idref-19'/1]).
-export(['fn-idref-20'/1]).
-export(['fn-idref-21'/1]).
-export(['fn-idref-23'/1]).
-export(['fn-idref-30'/1]).
-export(['fn-idref-31'/1]).
-export(['fn-idref-32'/1]).
-export(['fn-idref-33'/1]).
-export(['fn-idref-34'/1]).
-export(['fn-idref-dtd-5'/1]).
-export(['fn-idref-dtd-6'/1]).
-export(['fn-idref-dtd-7'/1]).
-export(['fn-idref-dtd-8'/1]).
-export(['fn-idref-dtd-9'/1]).
-export(['fn-idref-dtd-10'/1]).
-export(['fn-idref-dtd-11'/1]).
-export(['fn-idref-dtd-12'/1]).
-export(['fn-idref-dtd-13'/1]).
-export(['fn-idref-dtd-14'/1]).
-export(['fn-idref-dtd-15'/1]).
-export(['fn-idref-dtd-16'/1]).
-export(['fn-idref-dtd-17'/1]).
-export(['fn-idref-dtd-18'/1]).
-export(['fn-idref-dtd-19'/1]).
-export(['fn-idref-dtd-20'/1]).
-export(['fn-idref-dtd-21'/1]).
-export(['fn-idref-22'/1]).
-export(['fn-idref-dtd-23'/1]).
-export(['fn-idref-dtd-24'/1]).
-export(['fn-idref-dtd-25'/1]).
-export(['K2-SeqIDREFFunc-1'/1]).
-export(['K2-SeqIDREFFunc-2'/1]).
-export(['K2-SeqIDREFFunc-3'/1]).
-export(['cbcl-idref-001'/1]).
-export(['cbcl-idref-002'/1]).
-export(['cbcl-idref-003'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> ct:timetrap({seconds,60}), xqerl_module:unload(all).
init_per_suite(Config) -> 
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   BaseDir = filename:join(TD, "fn")
, try  xqerl_module:compile(filename:join(BaseDir, "id/copy.xq")) catch _:_ -> ok end
,[{base_dir, BaseDir}|Config].
all() -> [
   'fn-idref-1',
   'fn-idref-2',
   'fn-idref-3',
   'fn-idref-4',
   'fn-idref-5',
   'fn-idref-6',
   'fn-idref-7',
   'fn-idref-8',
   'fn-idref-9',
   'fn-idref-10',
   'fn-idref-11',
   'fn-idref-12',
   'fn-idref-13',
   'fn-idref-14',
   'fn-idref-15',
   'fn-idref-16',
   'fn-idref-17',
   'fn-idref-18',
   'fn-idref-19',
   'fn-idref-20',
   'fn-idref-21',
   'fn-idref-23',
   'fn-idref-30',
   'fn-idref-31',
   'fn-idref-32',
   'fn-idref-33',
   'fn-idref-34',
   'fn-idref-dtd-5',
   'fn-idref-dtd-6',
   'fn-idref-dtd-7',
   'fn-idref-dtd-8',
   'fn-idref-dtd-9',
   'fn-idref-dtd-10',
   'fn-idref-dtd-11',
   'fn-idref-dtd-12',
   'fn-idref-dtd-13',
   'fn-idref-dtd-14',
   'fn-idref-dtd-15',
   'fn-idref-dtd-16',
   'fn-idref-dtd-17',
   'fn-idref-dtd-18',
   'fn-idref-dtd-19',
   'fn-idref-dtd-20',
   'fn-idref-dtd-21',
   'fn-idref-22',
   'fn-idref-dtd-23',
   'fn-idref-dtd-24',
   'fn-idref-dtd-25',
   'K2-SeqIDREFFunc-1',
   'K2-SeqIDREFFunc-2',
   'K2-SeqIDREFFunc-3',
   'cbcl-idref-001',
   'cbcl-idref-002',
   'cbcl-idref-003'].
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
environment('id-idref-dtd',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "id/iddtd.xml"), ".",""}]},
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
environment('id-idref',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "id/id.xml"), ".",""}]},
{schemas, [{filename:join(BaseDir, "id/id.xsd"),"http://www.w3.org/XQueryTest/ididrefs"}]},
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
environment('id-idref3',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "id/id2.xml"), ".",""}]},
{schemas, [{filename:join(BaseDir, "id/id.xsd"),"http://www.w3.org/XQueryTest/ididrefs"}]},
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
environment('functx_book',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../app/FunctxFn/functx_book.xml"), ".",""}]},
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
'fn-idref-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:idref(\"argument 1\", / ,\"Argument 3\")",
   {Env,Opts} = xqerl_test:handle_environment(environment('id-idref-dtd',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-idref-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-idref-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(1 to 10)[fn:idref(\"argument1\")]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-idref-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-idref-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:idref(\"argument1\", \"A\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-idref-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-idref-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace copy=\"http://www.w3.org/QT3/copy\";
        let $var := copy:copy(/*) return fn:idref(\"argument1\", $var)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-idref-4.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODC0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-idref-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'fn-idref-6'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'fn-idref-7'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'fn-idref-8'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'fn-idref-9'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'fn-idref-10'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'fn-idref-11'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'fn-idref-12'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'fn-idref-13'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'fn-idref-14'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'fn-idref-15'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'fn-idref-16'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'fn-idref-17'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'fn-idref-18'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'fn-idref-19'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'fn-idref-20'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'fn-idref-21'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'fn-idref-23'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'fn-idref-30'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'fn-idref-31'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'fn-idref-32'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'fn-idref-33'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'fn-idref-34'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'fn-idref-dtd-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:idref(\"id1\",/IDS[1])/name(..)",
   {Env,Opts} = xqerl_test:handle_environment(environment('id-idref-dtd',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-idref-dtd-5.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "elementwithidrefattr-1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-idref-dtd-6'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:idref(\"nomatchingid\", /IDS[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('id-idref-dtd',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-idref-dtd-6.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-idref-dtd-7'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:idref(\"id4\", /IDS[1])/name(..)",
   {Env,Opts} = xqerl_test:handle_environment(environment('id-idref-dtd',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-idref-dtd-7.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "elementwithidrefattr-4") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-idref-dtd-8'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "<results>{fn:idref((\"id1\", \"id2\"), /IDS[1])}</results>",
   {Env,Opts} = xqerl_test:handle_environment(environment('id-idref-dtd',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-idref-dtd-8.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0025") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-idref-dtd-9'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:idref((\"id1\", \"nomatching\"), /IDS[1])/name(..)",
   {Env,Opts} = xqerl_test:handle_environment(environment('id-idref-dtd',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-idref-dtd-9.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "elementwithidrefattr-1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-idref-dtd-10'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(fn:idref(\"nomatching1 nomatching2\", /IDS[1]))",
   {Env,Opts} = xqerl_test:handle_environment(environment('id-idref-dtd',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-idref-dtd-10.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-idref-dtd-11'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(fn:idref(\"\", /IDS[1]))",
   {Env,Opts} = xqerl_test:handle_environment(environment('id-idref-dtd',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-idref-dtd-11.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-idref-dtd-12'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:node-name(fn:idref(\"id2\", /IDS[1]))",
   {Env,Opts} = xqerl_test:handle_environment(environment('id-idref-dtd',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-idref-dtd-12.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "anIdRef") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-idref-dtd-13'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(fn:idref(\"id1\", /IDS[1])) is (fn:idref(\"id1\", /IDS[1]))",
   {Env,Opts} = xqerl_test:handle_environment(environment('id-idref-dtd',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-idref-dtd-13.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-idref-dtd-14'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(fn:idref(\"id1\", /IDS[1])) is (fn:idref(\"id2\", /IDS[1]))",
   {Env,Opts} = xqerl_test:handle_environment(environment('id-idref-dtd',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-idref-dtd-14.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-idref-dtd-15'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "count(fn:idref((\"id1\",\"id1\"), /IDS[1]))",
   {Env,Opts} = xqerl_test:handle_environment(environment('id-idref-dtd',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-idref-dtd-15.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-idref-dtd-16'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "count(fn:idref((\"id1\",\"ID1\"), /IDS[1]))",
   {Env,Opts} = xqerl_test:handle_environment(environment('id-idref-dtd',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-idref-dtd-16.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-idref-dtd-17'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:idref(fn:lower-case(\"ID1\"), /IDS[1])/name(..)",
   {Env,Opts} = xqerl_test:handle_environment(environment('id-idref-dtd',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-idref-dtd-17.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "elementwithidrefattr-1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-idref-dtd-18'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:idref(fn:upper-case(\"id5\"), /IDS[1])/name(..)",
   {Env,Opts} = xqerl_test:handle_environment(environment('id-idref-dtd',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-idref-dtd-18.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "elementwithidrefattr-6") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-idref-dtd-19'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:idref(fn:concat(\"i\",\"d1\"), /IDS[1])/name(..)",
   {Env,Opts} = xqerl_test:handle_environment(environment('id-idref-dtd',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-idref-dtd-19.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "elementwithidrefattr-1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-idref-dtd-20'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:idref(xs:string(\"id1\"), /IDS[1])/name(..)",
   {Env,Opts} = xqerl_test:handle_environment(environment('id-idref-dtd',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-idref-dtd-20.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "elementwithidrefattr-1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-idref-dtd-21'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:idref(fn:string-join((\"id\",\"1\"),\"\"), /IDS[1])/name(..)",
   {Env,Opts} = xqerl_test:handle_environment(environment('id-idref-dtd',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-idref-dtd-21.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "elementwithidrefattr-1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-idref-22'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:idref(\"argument1\",.)",
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-idref-22.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-idref-dtd-23'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare ordering ordered;  
        <results>{fn:idref(\"id4\", /IDS[1])}</results>",
   {Env,Opts} = xqerl_test:handle_environment(environment('id-idref-dtd',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-idref-dtd-23.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results anIdRef=\"id4\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-idref-dtd-24'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "<results>{fn:idref(\"language\", /)}</results>",
   {Env,Opts} = xqerl_test:handle_environment(environment('functx_book',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-idref-dtd-24.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results refs='context language'/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-idref-dtd-25'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:idref(\"id1\")/name(..)",
   {Env,Opts} = xqerl_test:handle_environment(environment('id-idref-dtd',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-idref-dtd-25.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "elementwithidrefattr-1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-SeqIDREFFunc-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "idref((), ())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-SeqIDREFFunc-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-SeqIDREFFunc-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(1, 2, 3)[idref(\"ncname\", .)]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-SeqIDREFFunc-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-SeqIDREFFunc-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(1, 2, 3)[idref(\"ncname\")]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-SeqIDREFFunc-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-idref-001'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:generate($arg as xs:integer?) as xs:string* { if ($arg = 0) then () else 'id1', 'id2' }; 
      	let $doc := document { <root /> } return fn:empty( fn:idref( local:generate(0), $doc) )
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-idref-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-idref-002'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
      	let $doc := document { <root /> } return fn:empty( fn:idref( (), $doc) )
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-idref-002.xq"), Qry1),
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
'cbcl-idref-003'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:generate($arg as xs:integer?) as xs:string* { if ($arg = 0) then () else 'id1', 'id2' }; 
      	let $doc := document { <root /> } return fn:empty( $doc/fn:idref( local:generate(0)) )
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-idref-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
