-module('fn_json_doc_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['json-doc-001'/1]).
-export(['json-doc-002'/1]).
-export(['json-doc-003'/1]).
-export(['json-doc-004'/1]).
-export(['json-doc-005'/1]).
-export(['json-doc-006'/1]).
-export(['json-doc-007'/1]).
-export(['json-doc-008'/1]).
-export(['json-doc-009'/1]).
-export(['json-doc-010'/1]).
-export(['json-doc-011'/1]).
-export(['json-doc-012'/1]).
-export(['json-doc-018'/1]).
-export(['json-doc-019'/1]).
-export(['json-doc-020'/1]).
-export(['json-doc-021'/1]).
-export(['json-doc-022'/1]).
-export(['json-doc-023'/1]).
-export(['json-doc-024'/1]).
-export(['json-doc-025'/1]).
-export(['json-doc-026'/1]).
-export(['json-doc-027'/1]).
-export(['json-doc-028'/1]).
-export(['json-doc-029'/1]).
-export(['json-doc-030'/1]).
-export(['json-doc-031'/1]).
-export(['json-doc-032'/1]).
-export(['json-doc-033'/1]).
-export(['json-doc-034'/1]).
-export(['json-doc-035'/1]).
-export(['json-doc-036'/1]).
-export(['json-doc-039'/1]).
-export(['json-doc-042'/1]).
-export(['json-doc-043'/1]).
-export(['json-doc-044'/1]).
-export(['json-doc-error-001'/1]).
-export(['json-doc-error-002'/1]).
-export(['json-doc-error-003'/1]).
-export(['json-doc-error-004'/1]).
-export(['json-doc-error-005'/1]).
-export(['json-doc-error-006'/1]).
-export(['json-doc-error-007'/1]).
-export(['json-doc-error-008'/1]).
-export(['json-doc-error-009'/1]).
-export(['json-doc-error-010'/1]).
-export(['json-doc-error-011'/1]).
-export(['json-doc-error-012'/1]).
-export(['json-doc-error-013'/1]).
-export(['json-doc-error-014'/1]).
-export(['json-doc-error-015'/1]).
-export(['json-doc-error-016'/1]).
-export(['json-doc-error-017'/1]).
-export(['json-doc-error-018'/1]).
-export(['json-doc-error-019'/1]).
-export(['json-doc-error-020'/1]).
-export(['json-doc-error-021'/1]).
-export(['json-doc-error-022'/1]).
-export(['json-doc-error-023'/1]).
-export(['json-doc-error-024'/1]).
-export(['json-doc-error-025'/1]).
-export(['json-doc-error-026'/1]).
-export(['json-doc-error-027'/1]).
-export(['json-doc-error-028'/1]).
-export(['json-doc-error-029'/1]).
-export(['json-doc-error-030'/1]).
-export(['json-doc-error-031'/1]).
-export(['json-doc-error-032'/1]).
suite() ->
[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> ct:timetrap({seconds,60}), xqerl_module:unload(all).
init_per_suite(Config) -> 
   ok = application:ensure_started(mnesia),
   ok = application:ensure_started(xqerl_ds),
   xqerl_module:one_time_init(), 
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   BaseDir = filename:join(TD, "fn")

,[{base_dir, BaseDir}|Config].
all() -> [
   'json-doc-001',
   'json-doc-002',
   'json-doc-003',
   'json-doc-004',
   'json-doc-005',
   'json-doc-006',
   'json-doc-007',
   'json-doc-008',
   'json-doc-009',
   'json-doc-010',
   'json-doc-011',
   'json-doc-012',
   'json-doc-018',
   'json-doc-019',
   'json-doc-020',
   'json-doc-021',
   'json-doc-022',
   'json-doc-023',
   'json-doc-024',
   'json-doc-025',
   'json-doc-026',
   'json-doc-027',
   'json-doc-028',
   'json-doc-029',
   'json-doc-030',
   'json-doc-031',
   'json-doc-032',
   'json-doc-033',
   'json-doc-034',
   'json-doc-035',
   'json-doc-036',
   'json-doc-039',
   'json-doc-042',
   'json-doc-043',
   'json-doc-044',
   'json-doc-error-001',
   'json-doc-error-002',
   'json-doc-error-003',
   'json-doc-error-004',
   'json-doc-error-005',
   'json-doc-error-006',
   'json-doc-error-007',
   'json-doc-error-008',
   'json-doc-error-009',
   'json-doc-error-010',
   'json-doc-error-011',
   'json-doc-error-012',
   'json-doc-error-013',
   'json-doc-error-014',
   'json-doc-error-015',
   'json-doc-error-016',
   'json-doc-error-017',
   'json-doc-error-018',
   'json-doc-error-019',
   'json-doc-error-020',
   'json-doc-error-021',
   'json-doc-error-022',
   'json-doc-error-023',
   'json-doc-error-024',
   'json-doc-error-025',
   'json-doc-error-026',
   'json-doc-error-027',
   'json-doc-error-028',
   'json-doc-error-029',
   'json-doc-error-030',
   'json-doc-error-031',
   'json-doc-error-032'].
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
environment('json-files',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/json","j"}]},
{resources, [{filename:join(BaseDir, "json-to-xml/data001.json"),"http://www.w3.org/qt3/json/data001-json"},
{filename:join(BaseDir, "json-to-xml/escapeText.json"),"http://www.w3.org/qt3/json/escapeText-json"},
{filename:join(BaseDir, "json-to-xml/data005.json"),"http://www.w3.org/qt3/json/data005-json"}]},
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
environment('json-doc-array',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, [{filename:join(BaseDir, "json-doc/arrayEmpty.json"),"http://www.w3.org/qt3/json/arrayEmpty-json"},
{filename:join(BaseDir, "json-doc/arrayNumber.json"),"http://www.w3.org/qt3/json/arrayNumber-json"},
{filename:join(BaseDir, "json-doc/arrayString.json"),"http://www.w3.org/qt3/json/arrayString-json"},
{filename:join(BaseDir, "json-doc/arrayTrue.json"),"http://www.w3.org/qt3/json/arrayTrue-json"},
{filename:join(BaseDir, "json-doc/arrayFalse.json"),"http://www.w3.org/qt3/json/arrayFalse-json"},
{filename:join(BaseDir, "json-doc/arrayNull.json"),"http://www.w3.org/qt3/json/arrayNull-json"}]},
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
environment('json-doc-map',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, [{filename:join(BaseDir, "json-doc/mapEmpty.json"),"http://www.w3.org/qt3/json/mapEmpty-json"},
{filename:join(BaseDir, "json-doc/mapDuplicates.json"),"http://www.w3.org/qt3/json/mapDuplicates-json"},
{filename:join(BaseDir, "json-doc/mapUnescape.json"),"http://www.w3.org/qt3/json/mapUnescape-json"},
{filename:join(BaseDir, "json-doc/mapUnescape10.json"),"http://www.w3.org/qt3/json/mapUnescape10-json"},
{filename:join(BaseDir, "json-doc/mapUnescapeUnpaired10.json"),"http://www.w3.org/qt3/json/mapUnescapeUnpaired10-json"},
{filename:join(BaseDir, "json-doc/mapZeroLength.json"),"http://www.w3.org/qt3/json/mapZeroLength-json"},
{filename:join(BaseDir, "json-doc/mapDuplicatesEscape.json"),"http://www.w3.org/qt3/json/mapDuplicatesEscape-json"}]},
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
environment('json-doc-number',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, [{filename:join(BaseDir, "json-doc/number001.json"),"http://www.w3.org/qt3/json/number001-json"},
{filename:join(BaseDir, "json-doc/number002.json"),"http://www.w3.org/qt3/json/number002-json"},
{filename:join(BaseDir, "json-doc/number003.json"),"http://www.w3.org/qt3/json/number003-json"},
{filename:join(BaseDir, "json-doc/number004.json"),"http://www.w3.org/qt3/json/number004-json"}]},
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
environment('json-doc-string',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, [{filename:join(BaseDir, "json-doc/stringUnpaired.json"),"http://www.w3.org/qt3/json/stringUnpaired-json"},
{filename:join(BaseDir, "json-doc/stringHex.json"),"http://www.w3.org/qt3/json/stringHex-json"}]},
{modules, []}
];
environment('json-doc-error',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, [{filename:join(BaseDir, "json-doc/errorToken.json"),"http://www.w3.org/qt3/json/errorToken-json"},
{filename:join(BaseDir, "json-doc/errorExtra.json"),"http://www.w3.org/qt3/json/errorExtra-json"},
{filename:join(BaseDir, "json-doc/errorArray.json"),"http://www.w3.org/qt3/json/errorArray-json"},
{filename:join(BaseDir, "json-doc/errorArrayNumber.json"),"http://www.w3.org/qt3/json/errorArrayNumber-json"},
{filename:join(BaseDir, "json-doc/errorArrayHex.json"),"http://www.w3.org/qt3/json/errorArrayHex-json"},
{filename:join(BaseDir, "json-doc/errorArrayString.json"),"http://www.w3.org/qt3/json/errorArrayString-json"},
{filename:join(BaseDir, "json-doc/errorArrayUnicode.json"),"http://www.w3.org/qt3/json/errorArrayUnicode-json"},
{filename:join(BaseDir, "json-doc/errorMap.json"),"http://www.w3.org/qt3/json/errorMap-json"},
{filename:join(BaseDir, "json-doc/errorArrayComma.json"),"http://www.w3.org/qt3/json/errorArrayComma-json"},
{filename:join(BaseDir, "json-doc/errorNumber01.json"),"http://www.w3.org/qt3/json/errorNumber01-json"},
{filename:join(BaseDir, "json-doc/errorNumber02.json"),"http://www.w3.org/qt3/json/errorNumber02-json"},
{filename:join(BaseDir, "json-doc/errorNumber03.json"),"http://www.w3.org/qt3/json/errorNumber03-json"},
{filename:join(BaseDir, "json-doc/errorNumber04.json"),"http://www.w3.org/qt3/json/errorNumber04-json"},
{filename:join(BaseDir, "json-doc/errorString01.json"),"http://www.w3.org/qt3/json/errorString01-json"},
{filename:join(BaseDir, "json-doc/errorString02.json"),"http://www.w3.org/qt3/json/errorString02-json"},
{filename:join(BaseDir, "json-doc/errorString03.json"),"http://www.w3.org/qt3/json/errorString03-json"}]},
{modules, []}
].
'json-doc-001'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/mapEmpty-json')",
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-map',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-001.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map{}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-002'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/arrayEmpty-json')",
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-array',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-002.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-003'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/arrayNumber-json')",
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-array',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-003.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[1]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-004'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/arrayString-json')",
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-array',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-004.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"a\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-005'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/arrayTrue-json')",
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-array',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-005.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[true()]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-006'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/arrayFalse-json')",
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-array',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-006.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[false()]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-007'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/arrayNull-json')",
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-array',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-007.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[()]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-008'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/data001-json')",
   {Env,Opts} = xqerl_test:handle_environment(environment('json-files',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-008.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"map(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"count($result?*) eq 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result?*?title = \"example glossary\"") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"map:size($result?glossary?GlossDiv?GlossList?GlossEntry) eq 7") of 
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
'json-doc-009'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/data005-json')",
   {Env,Opts} = xqerl_test:handle_environment(environment('json-files',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-009.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"map(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"count($result?*) eq 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result?menu?header = \"SVG Viewer\"") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"array:size($result?menu?items) eq 22") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"count($result?menu?items?3) eq 0") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result?menu?items?*[?id = \"Find\"]?label = \"Find...\"") of 
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
'json-doc-010'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/escapeText-json')?key",
   {Env,Opts} = xqerl_test:handle_environment(environment('json-files',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-010.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Data with \" within it") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-011'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/escapeText-json', map{'escape':false()})?key",
   {Env,Opts} = xqerl_test:handle_environment(environment('json-files',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-011.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Data with \" within it") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-012'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/escapeText-json', map{'escape':true()})?key",
   {Env,Opts} = xqerl_test:handle_environment(environment('json-files',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-012.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Data with \" within it") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-018'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/mapDuplicates-json')
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-map',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-018.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map{\"a\":3, \"b\":4}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-019'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/mapUnescape-json', map{'escape':true()})
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-map',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-019.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map{\"a\\\\\":3, \"b\\\\\":4}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-020'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/mapUnescape-json', map{'escape':false()})
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-map',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-020.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map{\"a\\\":3, \"b\\\":4}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-021'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/mapUnescape10-json', map{'escape':true()})
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-map',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-021.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map{\"a\":\"\\f\", \"\\u0007\":\"bell\"}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-022'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/mapUnescape10-json', map{'escape':false()})
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-map',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-022.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map{\"a\":\"�\", \"�\":\"bell\"}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-023'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/mapUnescapeUnpaired10-json', map{'escape':false()})
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-map',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-023.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map{\"a\":\"�\", \"�\":\"bell\"}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-024'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/mapUnescapeUnpaired10-json', map{'escape':true()})
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-map',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-024.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map{\"a\":\"\\uDA00\", \"\\uDD00\":\"bell\"}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-025'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/mapUnescape10-json', 
         map{'escape':false(), 'fallback':function($s){'??'}})
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-map',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-025.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map{\"a\":\"??\", \"??\":\"bell\"}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-026'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/mapUnescapeUnpaired10-json', 
         map{'escape':false(), 'fallback':function($s){'??' || translate($s, 'abcdef', 'ABCDEF')  || '??'}})
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-map',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-026.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map{\"a\":\"??\\uDA00??\", \"??\\uDD00??\":\"bell\"}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-027'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/mapUnescapeUnpaired10-json', 
         map{'escape':true(), 'fallback':function($s){'??' || translate($s, 'abcdef', 'ABCDEF')  || '??'}})
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-map',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-027.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-028'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-doc((), 
         map{'escape':false(), 'fallback':function($s){'??' || translate($s, 'abcdef', 'ABCDEF')  || '??'}})
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-028.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-029'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/arrayNumber-json', map{})
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-array',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-029.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[1]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-030'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/number001-json')
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-number',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-030.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_deep_eq(Res,"23E0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result instance of xs:double") of 
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
'json-doc-031'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/number002-json')
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-number',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-031.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_deep_eq(Res,"0.23e+02") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result instance of xs:double") of 
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
'json-doc-032'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/number003-json')
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-number',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-032.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_deep_eq(Res,"0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result instance of xs:double") of 
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
'json-doc-033'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/number004-json')
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-number',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-033.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_deep_eq(Res,"-0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result instance of xs:double") of 
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
'json-doc-034'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/mapZeroLength-json')
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-map',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-034.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map{\"\":\"\", \"0\":\"0\"}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-035'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc(())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-035.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-036'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/mapDuplicates-json', map{'duplicates':'use-first'})
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-map',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-036.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map{\"a\":3, \"b\":4}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-039'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/stringUnpaired-json', map{'fallback':function($s){substring($s, 3)}})
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-string',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-039.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "oh dear DEAD") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-042'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/mapDuplicatesEscape-json', map{'escape':true(), 'duplicates':'reject'})
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-map',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-042.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-043'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/stringHex-json')
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-string',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-043.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "\\") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-044'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/arrayNumber-json', map{'validate':true()})",
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-array',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-044.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[1]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-error-001'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-error-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOUT1170") of 
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
'json-doc-error-002'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/errorToken-json')",
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-error',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-error-002.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-error-003'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/errorExtra-json')",
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-error',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-error-003.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-error-004'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/errorArray-json')",
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-error',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-error-004.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-error-005'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/errorArrayNumber-json')",
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-error',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-error-005.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-error-006'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/errorArrayHex-json')",
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-error',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-error-006.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-error-007'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/errorArrayString-json')",
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-error',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-error-007.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-error-008'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/errorArrayUnicode-json')",
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-error',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-error-008.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-error-009'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/errorMap-json')",
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-error',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-error-009.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-error-010'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/errorMap-json', map{\"liberal\":false()})",
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-error',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-error-010.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-error-011'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/errorArrayComma-json')",
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-error',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-error-011.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-error-012'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/arrayNumber-json', map{'liberal':()})",
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-array',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-error-012.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-error-013'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/arrayNumber-json', map{'escape':()})",
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-array',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-error-013.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-error-014'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/arrayNumber-json', map{'escape':(true(),true())})",
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-array',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-error-014.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-error-015'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/arrayNumber-json', map{'escape':'EMCA-262'})",
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-array',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-error-015.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-error-016'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/arrayNumber-json', map{'fallback':'dummy'})",
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-array',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-error-016.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-error-017'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/errorNumber01-json')",
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-error',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-error-017.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-error-018'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/errorNumber02-json')",
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-error',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-error-018.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-error-019'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/errorNumber03-json')",
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-error',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-error-019.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-error-020'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/errorNumber04-json')",
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-error',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-error-020.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-error-021'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/mapDuplicates-json', map{'duplicates':'reject'})
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-map',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-error-021.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-error-022'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/mapDuplicates-json', map{'duplicates':'retain'})
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-map',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-error-022.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-error-023'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/errorString01-json')
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-error',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-error-023.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-error-024'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/errorString02-json')
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-error',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-error-024.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-error-025'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/errorString03-json')
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-error',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-error-025.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-error-026'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/arrayNumber-json', map{'fallback':concat#2})
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-array',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-error-026.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-error-027'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/mapDuplicatesEscape-json', map{'duplicates':'reject'})
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-map',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-error-027.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-error-028'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc(\"http://www.example.org/#fragment\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-error-028.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOUT1170") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-error-029'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc(\"http://www.example.org/%gg\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-error-029.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOUT1170") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-error-030'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc(\"http://www.w3.org/fots/unparsed-text/does-not-exist.txt\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-error-030.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOUT1170") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-error-031'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc(\"unparsed-text/text-plain-utf-8.txt\")",
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
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-error-031.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOUT1170") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'json-doc-error-032'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc(\"does-not-exist.txt\")",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"http://www.w3.org/fots/unparsed-text/"}]},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "json-doc-error-032.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOUT1170") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
