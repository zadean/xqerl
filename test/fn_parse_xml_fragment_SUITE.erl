-module('fn_parse_xml_fragment_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['parse-xml-fragment-001'/1]).
-export(['parse-xml-fragment-002'/1]).
-export(['parse-xml-fragment-003'/1]).
-export(['parse-xml-fragment-004'/1]).
-export(['parse-xml-fragment-005'/1]).
-export(['parse-xml-fragment-006'/1]).
-export(['parse-xml-fragment-007'/1]).
-export(['parse-xml-fragment-008'/1]).
-export(['parse-xml-fragment-009'/1]).
-export(['parse-xml-fragment-010'/1]).
-export(['parse-xml-fragment-011'/1]).
-export(['parse-xml-fragment-012'/1]).
-export(['parse-xml-fragment-013'/1]).
-export(['parse-xml-fragment-014'/1]).
-export(['parse-xml-fragment-015'/1]).
-export(['parse-xml-fragment-016'/1]).
-export(['parse-xml-fragment-017'/1]).
-export(['parse-xml-fragment-018'/1]).
-export(['parse-xml-fragment-019'/1]).
-export(['parse-xml-fragment-020'/1]).
-export(['parse-xml-fragment-021'/1]).
-export(['parse-xml-fragment-022'/1]).
-export(['parse-xml-fragment-022-st'/1]).
-export(['parse-xml-fragment-023'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> ct:timetrap({seconds,60}), xqerl_module:unload(all).
init_per_suite(Config) -> 
   DD = filename:dirname(filename:dirname(proplists:get_value(data_dir, Config))),
   TD = filename:absname_join(DD, "QT3-test-suite"),
   BaseDir = filename:join(TD, "fn")

,[{base_dir, BaseDir}|Config].
all() -> [
   'parse-xml-fragment-001',
   'parse-xml-fragment-002',
   'parse-xml-fragment-003',
   'parse-xml-fragment-004',
   'parse-xml-fragment-005',
   'parse-xml-fragment-006',
   'parse-xml-fragment-007',
   'parse-xml-fragment-008',
   'parse-xml-fragment-009',
   'parse-xml-fragment-010',
   'parse-xml-fragment-011',
   'parse-xml-fragment-012',
   'parse-xml-fragment-013',
   'parse-xml-fragment-014',
   'parse-xml-fragment-015',
   'parse-xml-fragment-016',
   'parse-xml-fragment-017',
   'parse-xml-fragment-018',
   'parse-xml-fragment-019',
   'parse-xml-fragment-020',
   'parse-xml-fragment-021',
   'parse-xml-fragment-022',
   'parse-xml-fragment-022-st',
   'parse-xml-fragment-023'].
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
'parse-xml-fragment-001'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        	parse-xml-fragment(unparsed-text(\"../docs/atomic.xml\"))/*
        ",
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "parse-xml-fragment-001.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"element(*,xs:untyped)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'parse-xml-fragment-002'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "parse-xml-fragment(unparsed-text(\"../docs/atomic.xml\"),'###/atomic.xml')",
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "parse-xml-fragment-002.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'parse-xml-fragment-003'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "parse-xml-fragment(unparsed-text(\"../docs/atomic.xml\"),'file:/test/fots/../docs/atomic.xml')",
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "parse-xml-fragment-003.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'parse-xml-fragment-004'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "parse-xml-fragment(\"<a>Test123\")",
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "parse-xml-fragment-004.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODC0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'parse-xml-fragment-005'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "parse-xml-fragment(\"\")",
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "parse-xml-fragment-005.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'parse-xml-fragment-006'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "parse-xml-fragment(\"vanessa\")",
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "parse-xml-fragment-006.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "vanessa") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'parse-xml-fragment-007'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "parse-xml-fragment(\"<a/><b/><c/>\")",
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "parse-xml-fragment-007.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"$result/*[1][self::a][not(child::node())]") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result/*[2][self::b][not(child::node())]") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result/*[3][self::c][not(child::node())]") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"count($result/node()) = 3") of 
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
'parse-xml-fragment-008'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "parse-xml-fragment(\"  \")",
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "parse-xml-fragment-008.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "  ") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'parse-xml-fragment-009'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "parse-xml-fragment(\"<a> </a> <b> </b>\")",
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "parse-xml-fragment-009.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"$result/node()[1][self::a][. = ' ']") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result/node()[2][self::text()][. = ' ']") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result/node()[3][self::b][. = ' ']") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"count($result/node()) = 3") of 
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
'parse-xml-fragment-010'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "parse-xml-fragment(\"<a/><!--comment--><?PI?><b/>\")",
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "parse-xml-fragment-010.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"$result/node()[1][self::a][. = '']") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result/node()[2][self::comment()][. = 'comment']") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result/node()[3][self::processing-instruction(PI)][. = '']") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result/node()[4][self::b][. = '']") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"count($result/node()) = 4") of 
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
'parse-xml-fragment-011'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "parse-xml-fragment(codepoints-to-string((38, 108, 116, 59)))",
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "parse-xml-fragment-011.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "<") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'parse-xml-fragment-012'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "parse-xml-fragment(codepoints-to-string((38, 35, 51, 56, 59)))",
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "parse-xml-fragment-012.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "&") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'parse-xml-fragment-013'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "parse-xml-fragment(\"<?xml version='1.0' encoding='utf-8'?><a/>\")",
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "parse-xml-fragment-013.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'parse-xml-fragment-014'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "parse-xml-fragment(\"<?xml version='1.0' encoding='utf-8'?>\")",
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "parse-xml-fragment-014.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'parse-xml-fragment-015'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "parse-xml-fragment(\"<?xml version='1.0' encoding='utf-8'?>abc\")",
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "parse-xml-fragment-015.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "abc") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'parse-xml-fragment-016'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "parse-xml-fragment(\"<?xml version='1.0'?><a/>\")",
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "parse-xml-fragment-016.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODC0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'parse-xml-fragment-017'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "parse-xml-fragment(\"<?xml version='1.0' encoding='utf-8' standalone='yes'?><a/>\")",
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "parse-xml-fragment-017.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODC0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'parse-xml-fragment-018'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "parse-xml-fragment(\"<a>\")",
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "parse-xml-fragment-018.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODC0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'parse-xml-fragment-019'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "parse-xml-fragment(\"<p:a/>\")",
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "parse-xml-fragment-019.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODC0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'parse-xml-fragment-020'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "parse-xml-fragment(\"<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Transitional//EN'
                                           'http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd'><html/>\")
        ",
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "parse-xml-fragment-020.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODC0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'parse-xml-fragment-021'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "string-to-codepoints(parse-xml-fragment(\"a\"||codepoints-to-string((13, 10))||\"b\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "parse-xml-fragment-021.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "97 10 98") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'parse-xml-fragment-022'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"staticTyping"}.
'parse-xml-fragment-022-st'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"staticTyping"}.
'parse-xml-fragment-023'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "parse-xml-fragment(\"<a/>\") instance of document-node()",
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "parse-xml-fragment-023.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
