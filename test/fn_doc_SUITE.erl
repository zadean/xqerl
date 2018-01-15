-module('fn_doc_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-doc-1'/1]).
-export(['fn-doc-2'/1]).
-export(['fn-doc-3'/1]).
-export(['fn-doc-4'/1]).
-export(['fn-doc-5'/1]).
-export(['fn-doc-6'/1]).
-export(['fn-doc-7'/1]).
-export(['fn-doc-15'/1]).
-export(['fn-doc-16'/1]).
-export(['fn-doc-17'/1]).
-export(['fn-doc-18'/1]).
-export(['fn-doc-19'/1]).
-export(['fn-doc-20'/1]).
-export(['fn-doc-21'/1]).
-export(['fn-doc-22'/1]).
-export(['fn-doc-24'/1]).
-export(['fn-doc-25'/1]).
-export(['fn-doc-26'/1]).
-export(['fn-doc-27'/1]).
-export(['fn-doc-28'/1]).
-export(['fn-doc-29'/1]).
-export(['fn-doc-30'/1]).
-export(['fn-doc-31'/1]).
-export(['K2-SeqDocFunc-14'/1]).
-export(['fn-doc-32'/1]).
-export(['fn-doc-33'/1]).
-export(['fn-doc-34'/1]).
-export(['fn-doc-35'/1]).
-export(['fn-doc-36'/1]).
-export(['fn-doc-37'/1]).
-export(['fn-doc-38'/1]).
-export(['fn-doc-39'/1]).
-export(['K2-SeqDocFunc-1'/1]).
-export(['K2-SeqDocFunc-2'/1]).
-export(['K2-SeqDocFunc-3'/1]).
-export(['K2-SeqDocFunc-4'/1]).
-export(['K2-SeqDocFunc-5'/1]).
-export(['K2-SeqDocFunc-6'/1]).
-export(['K2-SeqDocFunc-7'/1]).
-export(['K2-SeqDocFunc-8'/1]).
-export(['K2-SeqDocFunc-9'/1]).
-export(['K2-SeqDocFunc-10'/1]).
-export(['K2-SeqDocFunc-11'/1]).
-export(['K2-SeqDocFunc-12'/1]).
-export(['K2-SeqDocFunc-13'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> ct:timetrap({seconds,60}), xqerl_module:unload(all).
init_per_suite(Config) -> 
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   BaseDir = filename:join(TD, "fn")

,[{base_dir, BaseDir}|Config].
all() -> [
   'fn-doc-1',
   'fn-doc-2',
   'fn-doc-3',
   'fn-doc-4',
   'fn-doc-5',
   'fn-doc-6',
   'fn-doc-7',
   'fn-doc-15',
   'fn-doc-16',
   'fn-doc-17',
   'fn-doc-18',
   'fn-doc-19',
   'fn-doc-20',
   'fn-doc-21',
   'fn-doc-22',
   'fn-doc-24',
   'fn-doc-25',
   'fn-doc-26',
   'fn-doc-27',
   'fn-doc-28',
   'fn-doc-29',
   'fn-doc-30',
   'fn-doc-31',
   'K2-SeqDocFunc-14',
   'fn-doc-32',
   'fn-doc-33',
   'fn-doc-34',
   'fn-doc-35',
   'fn-doc-36',
   'fn-doc-37',
   'fn-doc-38',
   'fn-doc-39',
   'K2-SeqDocFunc-1',
   'K2-SeqDocFunc-2',
   'K2-SeqDocFunc-3',
   'K2-SeqDocFunc-4',
   'K2-SeqDocFunc-5',
   'K2-SeqDocFunc-6',
   'K2-SeqDocFunc-7',
   'K2-SeqDocFunc-8',
   'K2-SeqDocFunc-9',
   'K2-SeqDocFunc-10',
   'K2-SeqDocFunc-11',
   'K2-SeqDocFunc-12',
   'K2-SeqDocFunc-13'].
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
environment('works-mod-uri',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/works-mod.xml"), ".","http://www.w3.org/fots/docs/works-mod.xml"}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, [{"uri","xs:string","'http://www.w3.org/fots/docs/works-mod.xml'"}]},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-and-staff-uri',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/works.xml"), "","http://www.w3.org/fots/docs/works.xml"},
{filename:join(BaseDir, "../docs/staff.xml"), "","http://www.w3.org/fots/docs/staff.xml"}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, [{"works","xs:string","'http://www.w3.org/fots/docs/works.xml'"},
{"staff","xs:string","'http://www.w3.org/fots/docs/staff.xml'"}]},
{namespaces, []},
{resources, []},
{modules, []}
].
'fn-doc-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:doc(\"http:\\\\invalid>URI\\someURI\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-doc-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"FODC0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FODC0002") of 
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
'fn-doc-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:doc(\"argument1\",\"argument2\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-doc-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-doc-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:doc(\"thisfileshouldnotexists.xml\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-doc-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODC0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-doc-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:doc(())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-doc-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-doc-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:doc($uri) is fn:doc($uri)",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod-uri',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-doc-5.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-doc-6'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:doc($works) is fn:doc($staff)",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-and-staff-uri',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-doc-6.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-doc-7'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:doc($uri)//day/string()",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod-uri',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-doc-7.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"Monday\", \"Tuesday\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-doc-15'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(fn:nilled(fn:doc($uri)))",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod-uri',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-doc-15.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-doc-16'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(fn:node-name(fn:doc($uri)))",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod-uri',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-doc-16.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-doc-17'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:doc(\"%gg\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-doc-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"FODC0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FODC0005") of 
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
'fn-doc-18'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:not(fn:doc($uri) is fn:doc($uri))",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod-uri',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-doc-18.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-doc-19'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(fn:doc($uri) is fn:doc($uri)) and fn:true()",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod-uri',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-doc-19.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-doc-20'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(fn:doc($uri) is fn:doc($uri)) and fn:false()",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod-uri',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-doc-20.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-doc-21'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(fn:doc($uri) is fn:doc($uri)) or fn:true()",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod-uri',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-doc-21.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-doc-22'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(fn:doc($uri) is fn:doc($uri)) or fn:false()",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod-uri',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-doc-22.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-doc-24'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:doc($uri)",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "id/SpaceBracket.xml"),"",filename:join(BaseDir, "id/SpaceBracket.xml")}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, [{"uri","xs:string","'id/SpaceBracket.xml'"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-doc-24.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<p> ]</p>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-doc-25'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:doc($uri)",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "id/HighUnicode.xml"),"",filename:join(BaseDir, "id/HighUnicode.xml")}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, [{"uri","xs:string","'id/HighUnicode.xml'"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-doc-25.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<เจมส์></เจมส์>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-doc-26'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:doc($uri)",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "id/HighUnicode2.xml"),"",filename:join(BaseDir, "id/HighUnicode2.xml")}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, [{"uri","xs:string","'id/HighUnicode2.xml'"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-doc-26.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<เจมส์/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-doc-27'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:doc($uri)",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "id/BCisInvalid.xml"),"",filename:join(BaseDir, "id/BCisInvalid.xml")}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, [{"uri","xs:string","'id/BCisInvalid.xml'"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-doc-27.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODC0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-doc-28'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:doc($uri)",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "id/InvalidUmlaut.xml"),"",filename:join(BaseDir, "id/InvalidUmlaut.xml")}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, [{"uri","xs:string","'id/InvalidUmlaut.xml'"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-doc-28.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODC0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-doc-29'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:doc($uri)",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "id/NamespaceSuppliedInternally.xml"),"",filename:join(BaseDir, "id/NamespaceSuppliedInternally.xml")}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, [{"uri","xs:string","'id/NamespaceSuppliedInternally.xml'"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-doc-29.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-doc-30'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "local-name(fn:doc($uri)/*)",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "id/XMLIdDuplicated.xml"),"",filename:join(BaseDir, "id/XMLIdDuplicated.xml")}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, [{"uri","xs:string","'id/XMLIdDuplicated.xml'"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-doc-30.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "schema") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FODC0002") of 
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
'fn-doc-31'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "local-name(fn:doc($uri)/*)",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "id/InvalidXMLId.xml"),"",filename:join(BaseDir, "id/InvalidXMLId.xml")}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, [{"uri","xs:string","'id/InvalidXMLId.xml'"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-doc-31.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "schema") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FODC0002") of 
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
'K2-SeqDocFunc-14'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "doc(':/')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-SeqDocFunc-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODC0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-doc-32'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "normalize-space(string(fn:doc($uri))), normalize-space(string(exactly-one(fn:doc($uri)/*)))",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "id/Books2.xml"),"",filename:join(BaseDir, "id/Books2.xml")}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, [{"uri","xs:string","'id/Books2.xml'"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-doc-32.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"Everyday Italian Giada De Laurentiis\", \"Everyday Italian Giada De Laurentiis\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-doc-33'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
        declare namespace s = \"http://www.w3.org/2000/svg\"; 
        declare variable $uri external; 
        declare variable $root := doc($uri)/root/QObject; 
        declare variable $metaObjects := $root/preceding-sibling::metaObjects/metaObject; 
        declare function local:recurseMetaObject($object as element(metaObject), $count as xs:integer) { 
            <s:text x =\"{10 * $count}\" y=\"10\" font-family=\"Verdana\" font-size=\"55\" fill=\"blue\" >{
                string($object/@className)}</s:text> 
        }; 
        declare function local:drawDiagram($object as element(QObject)) as element(s:g) { 
            <s:g> { if(string($object/@objectName)) 
                    then attribute xml:id {$object/@objectName} 
                    else (), 
                    $metaObjects[@className = $object/@className]/local:recurseMetaObject(., 1) } </s:g> 
        }; 
        <s:svg> { 
            <s:rect x=\"1\" y=\"1\" width=\"500\" height=\"300\" fill=\"none\" stroke=\"blue\" stroke-width=\"2\"/>, 
            <s:rect x=\"400\" y=\"100\" width=\"400\" height=\"200\" fill=\"yellow\" stroke=\"navy\" stroke-width=\"10\" />, 
            for $object in $root//QObject for $i in local:drawDiagram($object) stable order by string($i) return $i 
        } </s:svg>
     ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "id/QObject.xml"),"",filename:join(BaseDir, "id/QObject.xml")}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, [{"uri","xs:string","'id/QObject.xml'"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-doc-33.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,{file, filename:join(BaseDir, "doc/fn-doc-33.out")}) of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-doc-34'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "doc($uri)",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "id/0x010D.xml"),"",filename:join(BaseDir, "id/0x010D.xml")}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, [{"uri","xs:string","'id/0x010D.xml'"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-doc-34.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<project čreated-by=\"{{build_number}}\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-doc-35'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "doc('id/badxml.xml')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-doc-35.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODC0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-doc-36'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "count(doc($uri)//text())",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "id/builtinEntities.xml"),"",filename:join(BaseDir, "id/builtinEntities.xml")}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, [{"uri","xs:string","'id/builtinEntities.xml'"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-doc-36.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"9") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-doc-37'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "let $result := id(\"idABC\", doc($uri)) return $result",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "id/XMLIdWhitespace.xml"),"",filename:join(BaseDir, "id/XMLIdWhitespace.xml")}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, [{"uri","xs:string","'id/XMLIdWhitespace.xml'"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-doc-37.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_xml(Res,"<xs:attribute xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:atomic=\"http://www.w3.org/XQueryTest\" name=\"attr\" type=\"xs:IDREFS\" use=\"required\" xml:id=\"idABC\"/>") of 
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
'fn-doc-38'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
        <a/>/self::b[doc('%GG')]
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-doc-38.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FODC0005") of 
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
'fn-doc-39'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
        for $n in (text { 'x' }, comment { 'y' })/self::a
        return doc('i-do-not.exist')
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-doc-39.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FODC0002") of 
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
'K2-SeqDocFunc-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "empty(fn:doc(()))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-SeqDocFunc-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-SeqDocFunc-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "<e>{fn:doc(())}</e>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-SeqDocFunc-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-SeqDocFunc-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:doc(xs:untypedAtomic(\"file:///example.com/does/not/exist/xqts-testing.xml\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-SeqDocFunc-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODC0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-SeqDocFunc-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "doc(\"/example.com/example.org/does/not/exist/doesNotExist/works-mod.xml\")",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"#UNDEFINED"}]},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-SeqDocFunc-4.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODC0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-SeqDocFunc-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "doc(\"/example.com/example.org/does/not/exist/doesNotExist/works-mod.xml\")",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"http://www.example.invalid"}]},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-SeqDocFunc-5.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODC0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-SeqDocFunc-6'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "doc(\"/example.com/example.org/does/not/exist/doesNotExist/works-mod.xml\")",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///"}]},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-SeqDocFunc-6.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODC0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-SeqDocFunc-7'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "doc(\"example.com\\example.org\\does\\not\\exist\\doesNotExist\\works-mod.xml\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-SeqDocFunc-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"FODC0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FODC0005") of 
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
'K2-SeqDocFunc-8'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "doc(\"\\example.com\\example.org\\does\\not\\exist\\doesNotExist\\works-mod.xml\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-SeqDocFunc-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"FODC0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FODC0005") of 
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
'K2-SeqDocFunc-9'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "doc(\"C:\\example.com\\example.org\\does\\not\\exist\\doesNotExist\\works-mod.xml\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-SeqDocFunc-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"FODC0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FODC0005") of 
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
'K2-SeqDocFunc-10'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "doc(\"\")",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///directory/directory/example.com/www.example.com/thisFileDoesNotExist.xml"}]},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-SeqDocFunc-10.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODC0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-SeqDocFunc-11'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "doc(\"\")",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///directory/directory/example.com/"}]},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-SeqDocFunc-11.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODC0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-SeqDocFunc-12'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $fileToOpen := <Variable id=\"_7\" name=\"constComplex2\" type=\"_11c\" context=\"_1\" location=\"f0:17\" file=\"f0\" line=\"17\">%GG</Variable>;
        empty($fileToOpen//*[let $i := @type return doc($fileToOpen)//*[$i]])
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-SeqDocFunc-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FODC0005") of 
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
'K2-SeqDocFunc-13'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $doc1 := doc(\"http://fybnqmf.com/fybnqmf\"); 
        let $doc2 := doc(\"ftp://fybnqmf.com/fybnqmf\") 
        for $i in doc(\"localFile.xml\") 
        return (1, 2, 3)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-SeqDocFunc-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "1 2 3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FODC0002") of 
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
