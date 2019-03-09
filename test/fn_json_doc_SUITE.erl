-module('fn_json_doc_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
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
suite() -> [{timetrap,{seconds, 180}}].
init_per_group(_, Config) ->  Config.
end_per_group(_, _Config) -> 
   xqerl_code_server:unload(all).
end_per_suite(_Config) -> 
   ct:timetrap({seconds,60}), 
   xqerl_code_server:unload(all).
init_per_suite(Config) -> 
   {ok,_} = application:ensure_all_started(xqerl),
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   __BaseDir = filename:join(TD, "fn"),
   [{base_dir, __BaseDir}|Config].
all() -> [
   {group, group_0}, 
   {group, group_1}, 
   {group, group_2}
   ].
groups() -> [
   {group_0, [parallel], [
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
    'json-doc-028']}, 
   {group_1, [parallel], [
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
    'json-doc-error-012']}, 
   {group_2, [parallel], [
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
    'json-doc-error-032']}].
environment('json-files',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, [{"http://www.w3.org/2005/xpath-functions/json","j"}]},
{schemas, []}, 
{resources, [{"application/json", filename:join(__BaseDir, "json-to-xml/data005.json"),"http://www.w3.org/qt3/json/data005-json"}, 
{"application/json", filename:join(__BaseDir, "json-to-xml/escapeText.json"),"http://www.w3.org/qt3/json/escapeText-json"}, 
{"application/json", filename:join(__BaseDir, "json-to-xml/data001.json"),"http://www.w3.org/qt3/json/data001-json"}]}, 
{modules, []}
]; 
environment('json-doc-array',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, [{"application/json", filename:join(__BaseDir, "json-doc/arrayNull.json"),"http://www.w3.org/qt3/json/arrayNull-json"}, 
{"application/json", filename:join(__BaseDir, "json-doc/arrayFalse.json"),"http://www.w3.org/qt3/json/arrayFalse-json"}, 
{"application/json", filename:join(__BaseDir, "json-doc/arrayTrue.json"),"http://www.w3.org/qt3/json/arrayTrue-json"}, 
{"application/json", filename:join(__BaseDir, "json-doc/arrayString.json"),"http://www.w3.org/qt3/json/arrayString-json"}, 
{"application/json", filename:join(__BaseDir, "json-doc/arrayNumber.json"),"http://www.w3.org/qt3/json/arrayNumber-json"}, 
{"application/json", filename:join(__BaseDir, "json-doc/arrayEmpty.json"),"http://www.w3.org/qt3/json/arrayEmpty-json"}]}, 
{modules, []}
]; 
environment('json-doc-map',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, [{"application/json", filename:join(__BaseDir, "json-doc/mapDuplicatesEscape.json"),"http://www.w3.org/qt3/json/mapDuplicatesEscape-json"}, 
{"application/json", filename:join(__BaseDir, "json-doc/mapZeroLength.json"),"http://www.w3.org/qt3/json/mapZeroLength-json"}, 
{"application/json", filename:join(__BaseDir, "json-doc/mapUnescapeUnpaired10.json"),"http://www.w3.org/qt3/json/mapUnescapeUnpaired10-json"}, 
{"application/json", filename:join(__BaseDir, "json-doc/mapUnescape10.json"),"http://www.w3.org/qt3/json/mapUnescape10-json"}, 
{"application/json", filename:join(__BaseDir, "json-doc/mapUnescape.json"),"http://www.w3.org/qt3/json/mapUnescape-json"}, 
{"application/json", filename:join(__BaseDir, "json-doc/mapDuplicates.json"),"http://www.w3.org/qt3/json/mapDuplicates-json"}, 
{"application/json", filename:join(__BaseDir, "json-doc/mapEmpty.json"),"http://www.w3.org/qt3/json/mapEmpty-json"}]}, 
{modules, []}
]; 
environment('json-doc-number',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, [{"application/json", filename:join(__BaseDir, "json-doc/number004.json"),"http://www.w3.org/qt3/json/number004-json"}, 
{"application/json", filename:join(__BaseDir, "json-doc/number003.json"),"http://www.w3.org/qt3/json/number003-json"}, 
{"application/json", filename:join(__BaseDir, "json-doc/number002.json"),"http://www.w3.org/qt3/json/number002-json"}, 
{"application/json", filename:join(__BaseDir, "json-doc/number001.json"),"http://www.w3.org/qt3/json/number001-json"}]}, 
{modules, []}
]; 
environment('json-doc-string',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, [{"application/json", filename:join(__BaseDir, "json-doc/stringHex.json"),"http://www.w3.org/qt3/json/stringHex-json"}, 
{"application/json", filename:join(__BaseDir, "json-doc/stringUnpaired.json"),"http://www.w3.org/qt3/json/stringUnpaired-json"}]}, 
{modules, []}
]; 
environment('json-doc-error',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, [{"application/json", filename:join(__BaseDir, "json-doc/errorString03.json"),"http://www.w3.org/qt3/json/errorString03-json"}, 
{"application/json", filename:join(__BaseDir, "json-doc/errorString02.json"),"http://www.w3.org/qt3/json/errorString02-json"}, 
{"application/json", filename:join(__BaseDir, "json-doc/errorString01.json"),"http://www.w3.org/qt3/json/errorString01-json"}, 
{"application/json", filename:join(__BaseDir, "json-doc/errorNumber04.json"),"http://www.w3.org/qt3/json/errorNumber04-json"}, 
{"application/json", filename:join(__BaseDir, "json-doc/errorNumber03.json"),"http://www.w3.org/qt3/json/errorNumber03-json"}, 
{"application/json", filename:join(__BaseDir, "json-doc/errorNumber02.json"),"http://www.w3.org/qt3/json/errorNumber02-json"}, 
{"application/json", filename:join(__BaseDir, "json-doc/errorNumber01.json"),"http://www.w3.org/qt3/json/errorNumber01-json"}, 
{"application/json", filename:join(__BaseDir, "json-doc/errorArrayComma.json"),"http://www.w3.org/qt3/json/errorArrayComma-json"}, 
{"application/json", filename:join(__BaseDir, "json-doc/errorMap.json"),"http://www.w3.org/qt3/json/errorMap-json"}, 
{"application/json", filename:join(__BaseDir, "json-doc/errorArrayUnicode.json"),"http://www.w3.org/qt3/json/errorArrayUnicode-json"}, 
{"application/json", filename:join(__BaseDir, "json-doc/errorArrayString.json"),"http://www.w3.org/qt3/json/errorArrayString-json"}, 
{"application/json", filename:join(__BaseDir, "json-doc/errorArrayHex.json"),"http://www.w3.org/qt3/json/errorArrayHex-json"}, 
{"application/json", filename:join(__BaseDir, "json-doc/errorArrayNumber.json"),"http://www.w3.org/qt3/json/errorArrayNumber-json"}, 
{"application/json", filename:join(__BaseDir, "json-doc/errorArray.json"),"http://www.w3.org/qt3/json/errorArray-json"}, 
{"application/json", filename:join(__BaseDir, "json-doc/errorExtra.json"),"http://www.w3.org/qt3/json/errorExtra-json"}, 
{"application/json", filename:join(__BaseDir, "json-doc/errorToken.json"),"http://www.w3.org/qt3/json/errorToken-json"}]}, 
{modules, []}
].
'json-doc-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/mapEmpty-json')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-001.xq"), Qry1),
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
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/arrayEmpty-json')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-array',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-002.xq"), Qry1),
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
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/arrayNumber-json')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-array',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-003.xq"), Qry1),
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
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/arrayString-json')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-array',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-004.xq"), Qry1),
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
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/arrayTrue-json')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-array',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-005.xq"), Qry1),
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
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/arrayFalse-json')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-array',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-006.xq"), Qry1),
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
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/arrayNull-json')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-array',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-007.xq"), Qry1),
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
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/data001-json')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-files',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-008.xq"), Qry1),
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
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-doc-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/data005-json')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-files',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-009.xq"), Qry1),
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
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-doc-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/escapeText-json')?key", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-files',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-010.xq"), Qry1),
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
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/escapeText-json', map{'escape':false()})?key", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-files',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-011.xq"), Qry1),
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
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/escapeText-json', map{'escape':true()})?key", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-files',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-012.xq"), Qry1),
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
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/mapDuplicates-json')
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-018.xq"), Qry1),
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
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/mapUnescape-json', map{'escape':true()})
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-019.xq"), Qry1),
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
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/mapUnescape-json', map{'escape':false()})
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-020.xq"), Qry1),
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
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/mapUnescape10-json', map{'escape':true()})
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-021.xq"), Qry1),
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
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/mapUnescape10-json', map{'escape':false()})
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-022.xq"), Qry1),
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
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/mapUnescapeUnpaired10-json', map{'escape':false()})
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-023.xq"), Qry1),
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
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/mapUnescapeUnpaired10-json', map{'escape':true()})
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-024.xq"), Qry1),
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
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/mapUnescape10-json', 
         map{'escape':false(), 'fallback':function($s){'??'}})
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-025.xq"), Qry1),
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
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/mapUnescapeUnpaired10-json', 
         map{'escape':false(), 'fallback':function($s){'??' || translate($s, 'abcdef', 'ABCDEF')  || '??'}})
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-026.xq"), Qry1),
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
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/mapUnescapeUnpaired10-json', 
         map{'escape':true(), 'fallback':function($s){'??' || translate($s, 'abcdef', 'ABCDEF')  || '??'}})
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-027.xq"), Qry1),
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
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-doc((), 
         map{'escape':false(), 'fallback':function($s){'??' || translate($s, 'abcdef', 'ABCDEF')  || '??'}})
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-028.xq"), Qry1),
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
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/arrayNumber-json', map{})
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-array',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-029.xq"), Qry1),
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
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/number001-json')
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-number',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-030.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_deep_eq(Res,"23E0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"$result instance of xs:double") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-doc-031'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/number002-json')
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-number',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-031.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_deep_eq(Res,"0.23e+02") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"$result instance of xs:double") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-doc-032'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/number003-json')
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-number',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-032.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_deep_eq(Res,"0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"$result instance of xs:double") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-doc-033'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/number004-json')
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-number',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-033.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_deep_eq(Res,"-0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"$result instance of xs:double") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-doc-034'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/mapZeroLength-json')
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-034.xq"), Qry1),
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
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc(())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-035.xq"), Qry1),
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
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/mapDuplicates-json', map{'duplicates':'use-first'})
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-036.xq"), Qry1),
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
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/stringUnpaired-json', map{'fallback':function($s){substring($s, 3)}})
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-string',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-039.xq"), Qry1),
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
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/mapDuplicatesEscape-json', map{'escape':true(), 'duplicates':'reject'})
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-042.xq"), Qry1),
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
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/stringHex-json')
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-string',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-043.xq"), Qry1),
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
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/arrayNumber-json', map{'validate':true()})", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-array',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-044.xq"), Qry1),
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
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-error-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOUT1170") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-doc-error-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/errorToken-json')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-error',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-error-002.xq"), Qry1),
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
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/errorExtra-json')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-error',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-error-003.xq"), Qry1),
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
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/errorArray-json')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-error',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-error-004.xq"), Qry1),
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
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/errorArrayNumber-json')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-error',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-error-005.xq"), Qry1),
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
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/errorArrayHex-json')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-error',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-error-006.xq"), Qry1),
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
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/errorArrayString-json')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-error',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-error-007.xq"), Qry1),
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
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/errorArrayUnicode-json')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-error',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-error-008.xq"), Qry1),
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
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/errorMap-json')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-error',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-error-009.xq"), Qry1),
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
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/errorMap-json', map{\"liberal\":false()})", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-error',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-error-010.xq"), Qry1),
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
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/errorArrayComma-json')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-error',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-error-011.xq"), Qry1),
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
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/arrayNumber-json', map{'liberal':()})", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-array',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-error-012.xq"), Qry1),
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
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/arrayNumber-json', map{'escape':()})", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-array',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-error-013.xq"), Qry1),
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
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/arrayNumber-json', map{'escape':(true(),true())})", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-array',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-error-014.xq"), Qry1),
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
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/arrayNumber-json', map{'escape':'EMCA-262'})", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-array',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-error-015.xq"), Qry1),
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
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/arrayNumber-json', map{'fallback':'dummy'})", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-array',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-error-016.xq"), Qry1),
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
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/errorNumber01-json')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-error',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-error-017.xq"), Qry1),
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
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/errorNumber02-json')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-error',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-error-018.xq"), Qry1),
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
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/errorNumber03-json')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-error',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-error-019.xq"), Qry1),
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
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc('http://www.w3.org/qt3/json/errorNumber04-json')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-error',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-error-020.xq"), Qry1),
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
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/mapDuplicates-json', map{'duplicates':'reject'})
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-error-021.xq"), Qry1),
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
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/mapDuplicates-json', map{'duplicates':'retain'})
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-error-022.xq"), Qry1),
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
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/errorString01-json')
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-error',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-error-023.xq"), Qry1),
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
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/errorString02-json')
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-error',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-error-024.xq"), Qry1),
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
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/errorString03-json')
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-error',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-error-025.xq"), Qry1),
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
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/arrayNumber-json', map{'fallback':concat#2})
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-array',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-error-026.xq"), Qry1),
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
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-doc('http://www.w3.org/qt3/json/mapDuplicatesEscape-json', map{'duplicates':'reject'})
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-doc-map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-error-027.xq"), Qry1),
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
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc(\"http://www.example.org/#fragment\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-error-028.xq"), Qry1),
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
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc(\"http://www.example.org/%gg\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-error-029.xq"), Qry1),
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
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc(\"http://www.w3.org/fots/unparsed-text/does-not-exist.txt\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-error-030.xq"), Qry1),
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
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc(\"unparsed-text/text-plain-utf-8.txt\")", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', [{[]}]}, 
{'context-item', [""]}, 
{vars, []}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-error-031.xq"), Qry1),
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
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-doc(\"does-not-exist.txt\")", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', [{"http://www.w3.org/fots/unparsed-text/"}]}, 
{'context-item', [""]}, 
{vars, []}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-doc-error-032.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOUT1170") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.