-module('fn_analyze_string_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['analyzeString-001'/1]).
-export(['analyzeString-002'/1]).
-export(['analyzeString-002a'/1]).
-export(['analyzeString-003'/1]).
-export(['analyzeString-004'/1]).
-export(['analyzeString-005'/1]).
-export(['analyzeString-006'/1]).
-export(['analyzeString-007'/1]).
-export(['analyzeString-008'/1]).
-export(['analyzeString-009'/1]).
-export(['analyzeString-010'/1]).
-export(['analyzeString-011'/1]).
-export(['analyzeString-012'/1]).
-export(['analyzeString-013'/1]).
-export(['analyzeString-014'/1]).
-export(['analyzeString-015'/1]).
-export(['analyzeString-016'/1]).
-export(['analyzeString-017'/1]).
-export(['analyzeString-017a'/1]).
-export(['analyzeString-018'/1]).
-export(['analyzeString-019'/1]).
-export(['analyzeString-020'/1]).
-export(['analyzeString-021'/1]).
-export(['analyzeString-022'/1]).
-export(['analyzeString-023'/1]).
-export(['analyzeString-024'/1]).
-export(['analyzeString-025'/1]).
-export(['analyzeString-026'/1]).
-export(['analyzeString-027'/1]).
-export(['analyzeString-028'/1]).
-export(['analyzeString-029'/1]).
-export(['analyzeString-901'/1]).
-export(['analyzeString-902'/1]).
-export(['analyzeString-903'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> ct:timetrap({seconds,60}), xqerl_module:unload(all).
init_per_suite(Config) -> 
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   BaseDir = filename:join(TD, "fn")

,[{base_dir, BaseDir}|Config].
all() -> [
   'analyzeString-001',
   'analyzeString-002',
   'analyzeString-002a',
   'analyzeString-003',
   'analyzeString-004',
   'analyzeString-005',
   'analyzeString-006',
   'analyzeString-007',
   'analyzeString-008',
   'analyzeString-009',
   'analyzeString-010',
   'analyzeString-011',
   'analyzeString-012',
   'analyzeString-013',
   'analyzeString-014',
   'analyzeString-015',
   'analyzeString-016',
   'analyzeString-017',
   'analyzeString-017a',
   'analyzeString-018',
   'analyzeString-019',
   'analyzeString-020',
   'analyzeString-021',
   'analyzeString-022',
   'analyzeString-023',
   'analyzeString-024',
   'analyzeString-025',
   'analyzeString-026',
   'analyzeString-027',
   'analyzeString-028',
   'analyzeString-029',
   'analyzeString-901',
   'analyzeString-902',
   'analyzeString-903'].
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
environment('analyze-string-schema',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, [{filename:join(BaseDir, "analyze-string/analyze-string.xsd"),"http://www.w3.org/2005/xpath-functions"}]},
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
'analyzeString-001'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "analyze-string(\"\", \"abc\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "analyzeString-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<fn:analyze-string-result xmlns:fn=\"http://www.w3.org/2005/xpath-functions\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'analyzeString-002'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "analyze-string((), \"abc\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "analyzeString-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<fn:analyze-string-result xmlns:fn=\"http://www.w3.org/2005/xpath-functions\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'analyzeString-002a'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "count(analyze-string((), \"abc\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "analyzeString-002a.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'analyzeString-003'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "analyze-string(\"banana\", \"a\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "analyzeString-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<fn:analyze-string-result xmlns:fn=\"http://www.w3.org/2005/xpath-functions\"><fn:non-match>b</fn:non-match><fn:match>a</fn:match><fn:non-match>n</fn:non-match><fn:match>a</fn:match><fn:non-match>n</fn:non-match><fn:match>a</fn:match></fn:analyze-string-result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'analyzeString-004'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "analyze-string(\"banana\", \"custard\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "analyzeString-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<fn:analyze-string-result xmlns:fn=\"http://www.w3.org/2005/xpath-functions\"><fn:non-match>banana</fn:non-match></fn:analyze-string-result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'analyzeString-005'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "analyze-string(\"banana\", \".+\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "analyzeString-005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<fn:analyze-string-result xmlns:fn=\"http://www.w3.org/2005/xpath-functions\"><fn:match>banana</fn:match></fn:analyze-string-result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'analyzeString-006'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "analyze-string(\"banana\", \"an\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "analyzeString-006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<fn:analyze-string-result xmlns:fn=\"http://www.w3.org/2005/xpath-functions\"><fn:non-match>b</fn:non-match><fn:match>an</fn:match><fn:match>an</fn:match><fn:non-match>a</fn:non-match></fn:analyze-string-result>") of 
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
'analyzeString-007'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "analyze-string(\"banana\", \"a(n)\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "analyzeString-007.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<fn:analyze-string-result xmlns:fn=\"http://www.w3.org/2005/xpath-functions\"><fn:non-match>b</fn:non-match><fn:match>a<fn:group nr=\"1\">n</fn:group></fn:match><fn:match>a<fn:group nr=\"1\">n</fn:group></fn:match><fn:non-match>a</fn:non-match></fn:analyze-string-result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'analyzeString-008'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "analyze-string(\"banana\", \"(a(n?))\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "analyzeString-008.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<fn:analyze-string-result xmlns:fn=\"http://www.w3.org/2005/xpath-functions\"><fn:non-match>b</fn:non-match><fn:match><fn:group nr=\"1\">a<fn:group nr=\"2\">n</fn:group></fn:group></fn:match><fn:match><fn:group nr=\"1\">a<fn:group nr=\"2\">n</fn:group></fn:group></fn:match><fn:match><fn:group nr=\"1\">a<fn:group nr=\"2\"/></fn:group></fn:match></fn:analyze-string-result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'analyzeString-009'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "analyze-string(\"how now brown cow\", \"(how)|(now)|(brown)|(cow)\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "analyzeString-009.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<fn:analyze-string-result xmlns:fn=\"http://www.w3.org/2005/xpath-functions\"><fn:match><fn:group nr=\"1\">how</fn:group></fn:match><fn:non-match> </fn:non-match><fn:match><fn:group nr=\"2\">now</fn:group></fn:match><fn:non-match> </fn:non-match><fn:match><fn:group nr=\"3\">brown</fn:group></fn:match><fn:non-match> </fn:non-match><fn:match><fn:group nr=\"4\">cow</fn:group></fn:match></fn:analyze-string-result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'analyzeString-010'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "analyze-string(\"how now brown cow\", \"(HOW)|(NOW)|(BROWN)|(COW)\", \"i\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "analyzeString-010.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<fn:analyze-string-result xmlns:fn=\"http://www.w3.org/2005/xpath-functions\"><fn:match><fn:group nr=\"1\">how</fn:group></fn:match><fn:non-match> </fn:non-match><fn:match><fn:group nr=\"2\">now</fn:group></fn:match><fn:non-match> </fn:non-match><fn:match><fn:group nr=\"3\">brown</fn:group></fn:match><fn:non-match> </fn:non-match><fn:match><fn:group nr=\"4\">cow</fn:group></fn:match></fn:analyze-string-result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'analyzeString-011'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "analyze-string(\"how now brown cow\", \" (HOW) | (NOW) 
| (BROWN) | (COW) \", \"ix\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "analyzeString-011.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<fn:analyze-string-result xmlns:fn=\"http://www.w3.org/2005/xpath-functions\"><fn:match><fn:group nr=\"1\">how</fn:group></fn:match><fn:non-match> </fn:non-match><fn:match><fn:group nr=\"2\">now</fn:group></fn:match><fn:non-match> </fn:non-match><fn:match><fn:group nr=\"3\">brown</fn:group></fn:match><fn:non-match> </fn:non-match><fn:match><fn:group nr=\"4\">cow</fn:group></fn:match></fn:analyze-string-result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'analyzeString-012'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "analyze-string(\"how now brown cow\", \"(.*?ow\\s+)+\", \"\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "analyzeString-012.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<fn:analyze-string-result xmlns:fn=\"http://www.w3.org/2005/xpath-functions\"><fn:match>how <fn:group nr=\"1\">now </fn:group></fn:match><fn:non-match>brown cow</fn:non-match></fn:analyze-string-result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'analyzeString-013'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "let $in := 
\"Mary had a little lamb,
it's fleece was black as soot,
and everywhere that Mary went,
it put its sooty foot.\"
            return analyze-string($in, \"Mary.*foot\", \"s\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "analyzeString-013.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<fn:analyze-string-result xmlns:fn=\"http://www.w3.org/2005/xpath-functions\"><fn:match>Mary had a little lamb,
it's fleece was black as soot,
and everywhere that Mary went,
it put its sooty foot</fn:match><fn:non-match>.</fn:non-match></fn:analyze-string-result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'analyzeString-014'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "let $in := 
\"Mary had a little lamb,
it's fleece was black as soot,
and everywhere that Mary went,
it put its sooty foot.\"
            return analyze-string($in, \".+\", \"\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "analyzeString-014.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<fn:analyze-string-result xmlns:fn=\"http://www.w3.org/2005/xpath-functions\"><fn:match>Mary had a little lamb,</fn:match><fn:non-match>
</fn:non-match><fn:match>it's fleece was black as soot,</fn:match><fn:non-match>
</fn:non-match><fn:match>and everywhere that Mary went,</fn:match><fn:non-match>
</fn:non-match><fn:match>it put its sooty foot.</fn:match></fn:analyze-string-result>") of 
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
'analyzeString-015'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "let $in := 
\"Mary had a little lamb,
it's fleece was black as soot,
and everywhere that Mary went,
it put its sooty foot.\"
            return analyze-string($in, \"^.+$\", \"m\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "analyzeString-015.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<fn:analyze-string-result xmlns:fn=\"http://www.w3.org/2005/xpath-functions\"><fn:match>Mary had a little lamb,</fn:match><fn:non-match>
</fn:non-match><fn:match>it's fleece was black as soot,</fn:match><fn:non-match>
</fn:non-match><fn:match>and everywhere that Mary went,</fn:match><fn:non-match>
</fn:non-match><fn:match>it put its sooty foot.</fn:match></fn:analyze-string-result>") of 
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
'analyzeString-016'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "let $in := 
\"Mary had a little lamb,
it's fleece was black as soot,
and everywhere that Mary went,
it put its sooty foot.\"
            return analyze-string($in, \"^.+$\", \"\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "analyzeString-016.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<fn:analyze-string-result xmlns:fn=\"http://www.w3.org/2005/xpath-functions\"><fn:non-match>Mary had a little lamb,
it's fleece was black as soot,
and everywhere that Mary went,
it put its sooty foot.</fn:non-match></fn:analyze-string-result>") of 
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
'analyzeString-017'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "analyze-string(\"banana\", \"(b)(x?)\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "analyzeString-017.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<fn:analyze-string-result xmlns:fn=\"http://www.w3.org/2005/xpath-functions\"><fn:match><fn:group nr=\"1\">b</fn:group><fn:group nr=\"2\"/></fn:match><fn:non-match>anana</fn:non-match></fn:analyze-string-result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'analyzeString-017a'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "analyze-string(\"banana\", \"(b(x?))\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "analyzeString-017a.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<fn:analyze-string-result xmlns:fn=\"http://www.w3.org/2005/xpath-functions\"><fn:match><fn:group nr=\"1\">b<fn:group nr=\"2\"/></fn:group></fn:match><fn:non-match>anana</fn:non-match></fn:analyze-string-result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'analyzeString-018'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "analyze-string(\"banana\", \"(?:b(an)*a)\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "analyzeString-018.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<fn:analyze-string-result xmlns:fn=\"http://www.w3.org/2005/xpath-functions\"><fn:match>ban<fn:group nr=\"1\">an</fn:group>a</fn:match></fn:analyze-string-result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'analyzeString-019'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "analyze-string(\"((banana))\", \"(banana)\", \"q\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "analyzeString-019.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<fn:analyze-string-result xmlns:fn=\"http://www.w3.org/2005/xpath-functions\"><fn:non-match>(</fn:non-match><fn:match>(banana)</fn:match><fn:non-match>)</fn:non-match></fn:analyze-string-result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'analyzeString-020'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaValidation"}.
'analyzeString-021'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaValidation"}.
'analyzeString-022'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "let $result := analyze-string(\"banana\", \"(b)(anana)\") return string($result)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "analyzeString-022.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "banana") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'analyzeString-023'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "let $result := analyze-string(\"banana\", \"(b)(anana)\") return string($result/fn:match[1])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "analyzeString-023.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "banana") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'analyzeString-024'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaValidation"}.
'analyzeString-025'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"schemaValidation"}.
'analyzeString-026'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exactly-one(fn:analyze-string(concat('Mary', codepoints-to-string(13), 'Jones'), 'y.J')/fn:non-match)/string()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "analyzeString-026.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"concat('Mary', codepoints-to-string(13), 'Jones')") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'analyzeString-027'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exactly-one(fn:analyze-string(concat('Mary', codepoints-to-string(13), 'Jones'), 'y.J', 's')/fn:match)/string()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "analyzeString-027.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"concat('y', codepoints-to-string(13), 'J')") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'analyzeString-028'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         declare function local:namespaces($e as element(*)) as map(xs:string, xs:anyURI) {
           map:merge(in-scope-prefixes($e) ! map{. : namespace-uri-for-prefix(., $e)})
         };
         let $m := local:namespaces(analyze-string((), \"abc\"))
         return sort($m?*)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('map',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "analyzeString-028.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"http://www.w3.org/2005/xpath-functions\", \"http://www.w3.org/XML/1998/namespace\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'analyzeString-029'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         let $data :=
           <Root>
             <DATA>/OPDH/FLOWING SOLUTION/SGDE/Number0983713/EKPH/Sample test/some other keys/</DATA>
             <DATA>/some other keys/afdsf/SGDE/Number0983713/some other keys/PIHSAGA/OPDH/FLOWING SOLUTION/some other keys/No exception/EKPH/Sample test/some other keys/</DATA>
           </Root>
         return document{<out>{  
           $data/DATA!analyze-string(., '(/OPDH/|/EKPH/|/SGDE/|/some other keys/)(.*?)(/OPDH/|/EKPH/|/SGDE/|/some other keys/)((.*?)(/OPDH/|/EKPH/|/SGDE/|/some other keys/))*')
         }</out>}  
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "analyzeString-029.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"$result/out/fn:analyze-string-result[1]/fn:match[1]/fn:group[@nr=1] = '/OPDH/'") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result/out/fn:analyze-string-result[1]/fn:match[1]/fn:group[@nr=2] = 'FLOWING SOLUTION'") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result/out/fn:analyze-string-result[1]/fn:match[1]/fn:group[@nr=3] = '/SGDE/'") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result/out/fn:analyze-string-result[1]/fn:match[1]/fn:group[@nr=4] = 'Sample test/some other keys/'") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result/out/fn:analyze-string-result[1]/fn:match[1]//fn:group[@nr=5][../@nr=4] = 'Sample test'") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result/out/fn:analyze-string-result[1]/fn:match[1]//fn:group[@nr=6][../@nr=4] = '/some other keys/'") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result/out/fn:analyze-string-result[2]/fn:match[1]/fn:group[@nr=1] = '/some other keys/'") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result/out/fn:analyze-string-result[2]/fn:match[1]/fn:group[@nr=2] = 'afdsf'") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result/out/fn:analyze-string-result[2]/fn:match[1]/fn:group[@nr=3] = '/SGDE/'") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result/out/fn:analyze-string-result[2]/fn:match[1]/fn:group[@nr=4] = 'Sample test/some other keys/'") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result/out/fn:analyze-string-result[2]/fn:match[1]//fn:group[@nr=5][../@nr=4] = 'Sample test'") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result/out/fn:analyze-string-result[2]/fn:match[1]//fn:group[@nr=6][../@nr=4] = '/some other keys/'") of 
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
'analyzeString-901'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "analyze-string(\"abc\", \")-(\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "analyzeString-901.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'analyzeString-902'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "analyze-string(\"abc\", \"abc\", \"w\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "analyzeString-902.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'analyzeString-903'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "analyze-string(\"abc\", \"a|b|c?\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "analyzeString-903.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
