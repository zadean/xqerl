-module('fn_json_to_xml_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['json-to-xml-001'/1]).
-export(['json-to-xml-002'/1]).
-export(['json-to-xml-003'/1]).
-export(['json-to-xml-004'/1]).
-export(['json-to-xml-005'/1]).
-export(['json-to-xml-006'/1]).
-export(['json-to-xml-007'/1]).
-export(['json-to-xml-008'/1]).
-export(['json-to-xml-009'/1]).
-export(['json-to-xml-010'/1]).
-export(['json-to-xml-011'/1]).
-export(['json-to-xml-012'/1]).
-export(['json-to-xml-013'/1]).
-export(['json-to-xml-014'/1]).
-export(['json-to-xml-015'/1]).
-export(['json-to-xml-016'/1]).
-export(['json-to-xml-017'/1]).
-export(['json-to-xml-017b'/1]).
-export(['json-to-xml-018'/1]).
-export(['json-to-xml-019'/1]).
-export(['json-to-xml-020'/1]).
-export(['json-to-xml-021'/1]).
-export(['json-to-xml-022'/1]).
-export(['json-to-xml-023'/1]).
-export(['json-to-xml-024'/1]).
-export(['json-to-xml-025'/1]).
-export(['json-to-xml-026'/1]).
-export(['json-to-xml-027'/1]).
-export(['json-to-xml-028'/1]).
-export(['json-to-xml-029'/1]).
-export(['json-to-xml-030'/1]).
-export(['json-to-xml-031'/1]).
-export(['json-to-xml-032'/1]).
-export(['json-to-xml-033'/1]).
-export(['json-to-xml-034'/1]).
-export(['json-to-xml-035'/1]).
-export(['json-to-xml-036'/1]).
-export(['json-to-xml-037'/1]).
-export(['json-to-xml-037b'/1]).
-export(['json-to-xml-038'/1]).
-export(['json-to-xml-038b'/1]).
-export(['json-to-xml-039'/1]).
-export(['json-to-xml-040'/1]).
-export(['json-to-xml-041'/1]).
-export(['json-to-xml-042'/1]).
-export(['json-to-xml-043'/1]).
-export(['json-to-xml-044'/1]).
-export(['json-to-xml-045'/1]).
-export(['json-to-xml-046'/1]).
-export(['json-to-xml-047'/1]).
-export(['json-to-xml-048'/1]).
-export(['json-to-xml-049'/1]).
-export(['json-to-xml-error-001'/1]).
-export(['json-to-xml-error-002'/1]).
-export(['json-to-xml-error-003'/1]).
-export(['json-to-xml-error-004'/1]).
-export(['json-to-xml-error-005'/1]).
-export(['json-to-xml-error-006'/1]).
-export(['json-to-xml-error-007'/1]).
-export(['json-to-xml-error-008'/1]).
-export(['json-to-xml-error-009'/1]).
-export(['json-to-xml-error-010'/1]).
-export(['json-to-xml-error-011'/1]).
-export(['json-to-xml-error-012'/1]).
-export(['json-to-xml-error-013'/1]).
-export(['json-to-xml-error-014'/1]).
-export(['json-to-xml-error-015'/1]).
-export(['json-to-xml-error-016'/1]).
-export(['json-to-xml-error-017'/1]).
-export(['json-to-xml-error-018'/1]).
-export(['json-to-xml-error-019'/1]).
-export(['json-to-xml-error-020'/1]).
-export(['json-to-xml-error-021'/1]).
-export(['json-to-xml-error-022'/1]).
-export(['json-to-xml-error-023'/1]).
-export(['json-to-xml-error-024'/1]).
-export(['json-to-xml-error-025'/1]).
-export(['json-to-xml-error-026'/1]).
-export(['json-to-xml-error-027'/1]).
-export(['json-to-xml-error-028'/1]).
-export(['json-to-xml-error-029'/1]).
-export(['json-to-xml-error-030'/1]).
-export(['json-to-xml-error-031'/1]).
-export(['json-to-xml-error-032'/1]).
-export(['json-to-xml-error-033'/1]).
-export(['json-to-xml-error-034'/1]).
-export(['json-to-xml-error-035'/1]).
-export(['json-to-xml-error-037'/1]).
-export(['json-to-xml-error-038'/1]).
-export(['json-to-xml-error-039'/1]).
-export(['json-to-xml-error-040'/1]).
-export(['json-to-xml-error-041'/1]).
-export(['json-to-xml-error-042'/1]).
-export(['json-to-xml-error-043'/1]).
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
   {group, group_2}, 
   {group, group_3}
   ].
groups() -> [
   {group_0, [parallel], [
    'json-to-xml-001', 
    'json-to-xml-002', 
    'json-to-xml-003', 
    'json-to-xml-004', 
    'json-to-xml-005', 
    'json-to-xml-006', 
    'json-to-xml-007', 
    'json-to-xml-008', 
    'json-to-xml-009', 
    'json-to-xml-010', 
    'json-to-xml-011', 
    'json-to-xml-012', 
    'json-to-xml-013', 
    'json-to-xml-014', 
    'json-to-xml-015', 
    'json-to-xml-016', 
    'json-to-xml-017', 
    'json-to-xml-017b', 
    'json-to-xml-018', 
    'json-to-xml-019', 
    'json-to-xml-020', 
    'json-to-xml-021', 
    'json-to-xml-022']}, 
   {group_1, [parallel], [
    'json-to-xml-023', 
    'json-to-xml-024', 
    'json-to-xml-025', 
    'json-to-xml-026', 
    'json-to-xml-027', 
    'json-to-xml-028', 
    'json-to-xml-029', 
    'json-to-xml-030', 
    'json-to-xml-031', 
    'json-to-xml-032', 
    'json-to-xml-033', 
    'json-to-xml-034', 
    'json-to-xml-035', 
    'json-to-xml-036', 
    'json-to-xml-037', 
    'json-to-xml-037b', 
    'json-to-xml-038', 
    'json-to-xml-038b', 
    'json-to-xml-039', 
    'json-to-xml-040', 
    'json-to-xml-041', 
    'json-to-xml-042', 
    'json-to-xml-043', 
    'json-to-xml-044']}, 
   {group_2, [parallel], [
    'json-to-xml-045', 
    'json-to-xml-046', 
    'json-to-xml-047', 
    'json-to-xml-048', 
    'json-to-xml-049', 
    'json-to-xml-error-001', 
    'json-to-xml-error-002', 
    'json-to-xml-error-003', 
    'json-to-xml-error-004', 
    'json-to-xml-error-005', 
    'json-to-xml-error-006', 
    'json-to-xml-error-007', 
    'json-to-xml-error-008', 
    'json-to-xml-error-009', 
    'json-to-xml-error-010', 
    'json-to-xml-error-011', 
    'json-to-xml-error-012', 
    'json-to-xml-error-013', 
    'json-to-xml-error-014', 
    'json-to-xml-error-015', 
    'json-to-xml-error-016', 
    'json-to-xml-error-017', 
    'json-to-xml-error-018', 
    'json-to-xml-error-019']}, 
   {group_3, [parallel], [
    'json-to-xml-error-020', 
    'json-to-xml-error-021', 
    'json-to-xml-error-022', 
    'json-to-xml-error-023', 
    'json-to-xml-error-024', 
    'json-to-xml-error-025', 
    'json-to-xml-error-026', 
    'json-to-xml-error-027', 
    'json-to-xml-error-028', 
    'json-to-xml-error-029', 
    'json-to-xml-error-030', 
    'json-to-xml-error-031', 
    'json-to-xml-error-032', 
    'json-to-xml-error-033', 
    'json-to-xml-error-034', 
    'json-to-xml-error-035', 
    'json-to-xml-error-037', 
    'json-to-xml-error-038', 
    'json-to-xml-error-039', 
    'json-to-xml-error-040', 
    'json-to-xml-error-041', 
    'json-to-xml-error-042', 
    'json-to-xml-error-043']}].
environment('json-files',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, [{"http://www.w3.org/2005/xpath-functions","j"}]},
{schemas, []}, 
{resources, [{"text/plain", filename:join(__BaseDir, "json-to-xml/data005.json"),"http://www.w3.org/qt3/json/data005-json"}, 
{"text/plain", filename:join(__BaseDir, "json-to-xml/escapeText.json"),"http://www.w3.org/qt3/json/escapeText-json"}, 
{"text/plain", filename:join(__BaseDir, "json-to-xml/data001.json"),"http://www.w3.org/qt3/json/data001-json"}]}, 
{modules, []}
]; 
environment('json-ns',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, [{"http://www.w3.org/2005/xpath-functions","j"}]},
{schemas, [{filename:join(__BaseDir, ""),"http://www.w3.org/2005/xpath-functions"}]}, 
{resources, []}, 
{modules, []}
].
'json-to-xml-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-to-xml('{}')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-ns',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-001.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_type(Res,"document-node()") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_xml(Res,"<map xmlns=\"http://www.w3.org/2005/xpath-functions\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-to-xml('[]')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-ns',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-002.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_type(Res,"document-node()") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_xml(Res,"<array xmlns=\"http://www.w3.org/2005/xpath-functions\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-to-xml('[1]')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-ns',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-003.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_type(Res,"document-node(element(Q{http://www.w3.org/2005/xpath-functions}array))") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"count($result/*) eq 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"$result/*/*[1] instance of element(Q{http://www.w3.org/2005/xpath-functions}number,xs:untyped)") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"xs:double($result/*[1]) eq 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_xml(Res,"<array xmlns=\"http://www.w3.org/2005/xpath-functions\"><number>1</number></array>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-to-xml('[\"a\"]')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-ns',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-004.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_type(Res,"document-node(element(*))") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"count($result/*) eq 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"$result/*/*[1] instance of element(Q{http://www.w3.org/2005/xpath-functions}string,xs:untyped)") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"xs:string($result/*/*[1]) eq \"a\"") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_xml(Res,"<array xmlns=\"http://www.w3.org/2005/xpath-functions\"><string>a</string></array>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-to-xml('[true]')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-ns',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-005.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_type(Res,"document-node(element(*))") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"count($result/*) eq 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"$result/*/*[1] instance of element(Q{http://www.w3.org/2005/xpath-functions}boolean,xs:untyped)") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"xs:boolean($result/*[1]) eq true()") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_xml(Res,"<array xmlns=\"http://www.w3.org/2005/xpath-functions\"><boolean>true</boolean></array>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-to-xml('[false]')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-ns',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-006.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_type(Res,"document-node(element(*))") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"count($result/*) eq 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"$result/*/*[1] instance of element(Q{http://www.w3.org/2005/xpath-functions}boolean,xs:untyped)") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"xs:boolean($result/*[1]) eq false()") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_xml(Res,"<array xmlns=\"http://www.w3.org/2005/xpath-functions\"><boolean>false</boolean></array>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-to-xml('[null]')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-ns',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-007.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_type(Res,"document-node(element(*))") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"count($result/*) eq 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"$result/*/*[1] instance of element(Q{http://www.w3.org/2005/xpath-functions}null,xs:untyped)") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"empty($result/*[1]/*[1]/(*|text()))") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_xml(Res,"<array xmlns=\"http://www.w3.org/2005/xpath-functions\"><null/></array>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-to-xml(unparsed-text('http://www.w3.org/qt3/json/data001-json'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-files',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-008.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_type(Res,"document-node(element(Q{http://www.w3.org/2005/xpath-functions}map))") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"count($result/*) eq 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"$result/Q{http://www.w3.org/2005/xpath-functions}map/Q{http://www.w3.org/2005/xpath-functions}map[@key='glossary']/Q{http://www.w3.org/2005/xpath-functions}string[@key='title']") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"$result/Q{http://www.w3.org/2005/xpath-functions}map/Q{http://www.w3.org/2005/xpath-functions}map[@key='glossary']/Q{http://www.w3.org/2005/xpath-functions}map[@key='GlossDiv']") of 
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
'json-to-xml-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-to-xml(unparsed-text('http://www.w3.org/qt3/json/data005-json'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-files',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-009.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"$result/Q{http://www.w3.org/2005/xpath-functions}map/Q{http://www.w3.org/2005/xpath-functions}map[@key='menu']/Q{http://www.w3.org/2005/xpath-functions}string[@key='header'][.='SVG Viewer']") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"$result/Q{http://www.w3.org/2005/xpath-functions}map/Q{http://www.w3.org/2005/xpath-functions}map[@key='menu']/Q{http://www.w3.org/2005/xpath-functions}array[@key='items']/Q{http://www.w3.org/2005/xpath-functions}map[not(@*)]/Q{http://www.w3.org/2005/xpath-functions}string[@key='id'][.='Open']") of 
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
'json-to-xml-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-to-xml(unparsed-text('http://www.w3.org/qt3/json/escapeText-json'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-files',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-010.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<map xmlns=\"http://www.w3.org/2005/xpath-functions\"><string key=\"key\">Data with \" within it</string></map>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:json-to-xml(unparsed-text('http://www.w3.org/qt3/json/escapeText-json'))//j:string", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-files',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-011.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<string xmlns=\"http://www.w3.org/2005/xpath-functions\" key=\"key\">Data with \" within it</string>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-012'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml(unparsed-text('http://www.w3.org/qt3/json/escapeText-json'), map{'escape':true()})//j:string
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-files',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-012.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"element(Q{http://www.w3.org/2005/xpath-functions}string)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"$result/self::*:string eq 'Data with \" within it'") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"$result/self::*:string/@key eq 'key'") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"namespace-uri($result/self::*:string) eq 'http://www.w3.org/2005/xpath-functions'") of 
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
'json-to-xml-013'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml('[\"Data with \\\" within it\"]')//j:string
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-ns',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-013.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"element(Q{http://www.w3.org/2005/xpath-functions}string)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_xml(Res,"<string xmlns=\"http://www.w3.org/2005/xpath-functions\">Data with \" within it</string>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-014'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml('{\"Key \\\" with quote\":\"Data with \\\" within it\"}')//j:string
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-ns',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-014.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"element(Q{http://www.w3.org/2005/xpath-functions}string)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_xml(Res,"<string
                 xmlns=\"http://www.w3.org/2005/xpath-functions\" key=\"Key &#34; with quote\">Data with \" within it</string>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-015'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml(codepoints-to-string(65279)||'[1]')
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-ns',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-015.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<array 
         xmlns=\"http://www.w3.org/2005/xpath-functions\"><number>1</number></array>
         ") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-016'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'json-to-xml-017'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'json-to-xml-017b'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'json-to-xml-018'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml('{\"a\":3, \"b\":4, \"a\":5}')
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-ns',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-018.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<map 
         xmlns=\"http://www.w3.org/2005/xpath-functions\"><number key=\"a\"
         >3</number><number key=\"b\">4</number><number key=\"a\">5</number></map>
         ") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-019'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml('{\"a\\\\\":3, \"b\\\\\":4}', map{'escape':true()})
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-ns',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-019.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<map 
         xmlns=\"http://www.w3.org/2005/xpath-functions\"><number key=\"a\\\\\" escaped-key=\"true\"
         >3</number><number key=\"b\\\\\" escaped-key=\"true\">4</number></map>
         ") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-020'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml('{\"a\\\\\":3, \"b\\\\\":4}', map{'escape':false()})
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-ns',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-020.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<map 
      xmlns=\"http://www.w3.org/2005/xpath-functions\"><number key=\"a\\\"
      >3</number><number key=\"b\\\">4</number></map>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-021'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml('{\"a\":\"\\u000C\", \"\\u0007\":\"bell\"}', map{'escape':true()})
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-ns',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-021.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<map 
         xmlns=\"http://www.w3.org/2005/xpath-functions\"
         ><string key=\"a\" escaped=\"true\">\\f</string
         ><string key=\"\\u0007\" escaped-key=\"true\">bell</string></map>
         ") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-022'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml('{\"a\":\"\\u000C\", \"\\u0007\":\"bell\"}', map{'escape':false()})
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-ns',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-022.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<map 
         xmlns=\"http://www.w3.org/2005/xpath-functions\"
         ><string key=\"a\">&#xFFFD;</string><string key=\"&#xFFFD;\">bell</string></map>
         ") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-023'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml('{\"a\":\"\\uDA00\", \"\\uDD00\":\"bell\"}', map{'escape':false()})
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-023.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<map 
         xmlns=\"http://www.w3.org/2005/xpath-functions\"
         ><string key=\"a\">&#xFFFD;</string><string key=\"&#xFFFD;\">bell</string></map>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-024'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml('{\"a\":\"\\uDA00\", \"\\uDD00\":\"bell\"}', map{'escape':true()})
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-024.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<j:map 
         xmlns:j=\"http://www.w3.org/2005/xpath-functions\"
         ><j:string escaped=\"true\" key=\"a\">\\uDA00</j:string><j:string escaped-key=\"true\" key=\"\\uDD00\">bell</j:string></j:map>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-025'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml('{\"a\":\"\\u000C\", \"\\u0007\":\"bell\"}', 
              map{'escape':false(), 'fallback':function($s){'??'}})
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-ns',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-025.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<map 
         xmlns=\"http://www.w3.org/2005/xpath-functions\"
         ><string key=\"a\">??</string><string key=\"??\">bell</string></map>
         ") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-026'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml('{\"a\":\"\\uDA00\", \"\\uDD00\":\"bell\"}', 
             map{'escape':false(), 'fallback':function($s){'??' || translate($s, 'abcdef', 'ABCDEF')  || '??'}})
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-026.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<map 
         xmlns=\"http://www.w3.org/2005/xpath-functions\"
         ><string key=\"a\">??\\uDA00??</string><string key=\"??\\uDD00??\">bell</string></map>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-027'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml('{\"a\":\"\\uDA00\", \"\\uDD00\":\"bell\"}', 
            map{'escape':true(), 'fallback':function($s){'??' || translate($s, 'abcdef', 'ABCDEF') || '??'}})
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-027.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-028'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml((), 
            map{'escape':false(), 'fallback':function($s){'??' || translate($s, 'abcdef', 'ABCDEF') || '??'}})
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-028.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-029'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml('23', map{})
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-029.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<number 
         xmlns=\"http://www.w3.org/2005/xpath-functions\">23</number>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-030'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml('23E0', map{})
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-030.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<number 
         xmlns=\"http://www.w3.org/2005/xpath-functions\">23E0</number>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-031'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml('0.23e+02')
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-031.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<number 
         xmlns=\"http://www.w3.org/2005/xpath-functions\">0.23e+02</number>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-032'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml('0')
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-032.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<number 
         xmlns=\"http://www.w3.org/2005/xpath-functions\">0</number>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-033'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml('-0')
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-033.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<number 
         xmlns=\"http://www.w3.org/2005/xpath-functions\">-0</number>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-034'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml('{\"\":\"\", \"0\":\"0\"}')
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-034.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<map 
         xmlns=\"http://www.w3.org/2005/xpath-functions\"><string key=\"\"/><string key=\"0\">0</string></map>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-035'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml(())
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-035.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-036'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml('{\"a\":3, \"b\":4, \"a\":5}', map{\"duplicates\":\"use-first\"})
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-ns',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-036.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<map 
         xmlns=\"http://www.w3.org/2005/xpath-functions\"><number key=\"a\"
         >3</number><number key=\"b\">4</number></map>
         ") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-037'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'json-to-xml-037b'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'json-to-xml-038'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'json-to-xml-038b'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'json-to-xml-039'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml('\"oh dear \\uDEAD\"', map{'fallback':function($s){substring($s, 3)}})
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-039.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<string 
         xmlns=\"http://www.w3.org/2005/xpath-functions\">oh dear DEAD</string>
         ") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-040'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml('{\"a\":3, \"b\":4, \"a\":5, \"c\":5}', map{'duplicates':'use-first'})
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-ns',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-040.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<map 
         xmlns=\"http://www.w3.org/2005/xpath-functions\"><number key=\"a\"
         >3</number><number key=\"b\">4</number><number key=\"c\">5</number></map>
         ") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-041'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         static-base-uri() eq base-uri(fn:json-to-xml('true'))
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-041.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-042'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml('{\"\\n\":1, \"\\u000A\":2}', map{'escape':true(), 'duplicates':'reject'})
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-ns',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-042.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-043'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml('\"\\u005c\"')
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-043.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<string 
         xmlns=\"http://www.w3.org/2005/xpath-functions\">\\</string>
         ") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-044'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'json-to-xml-045'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'json-to-xml-046'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'json-to-xml-047'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'json-to-xml-048'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-to-xml('\"\\\\\\/\\\"\\r\\t\\u0020\"')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-048.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<string xmlns=\"http://www.w3.org/2005/xpath-functions\">\\/\"&#13;&#009;&#032;</string>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-049'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-to-xml('\"\\\\\\/\\\"\\r\\t\\u0020\"', map {'escape':true()})", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-049.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<string xmlns=\"http://www.w3.org/2005/xpath-functions\" escaped=\"true\">\\\\/\"\\r\\t </string>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-error-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml('')
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-error-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-error-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml('{error}')
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-ns',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-error-002.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-error-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml('{terriblyWrong}')
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-ns',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-error-003.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-error-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml(\"{}extra token\")
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-ns',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-error-004.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-error-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml('{1:1}')
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-ns',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-error-005.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-error-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml('{true:1}')
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-ns',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-error-006.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-error-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml('{\"key\" 1}')
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-ns',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-error-007.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-error-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml('{\"key\" :1 2}')
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-ns',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-error-008.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-error-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml('[+1]')
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-ns',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-error-009.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-error-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml('[01]')
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-ns',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-error-010.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-error-011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml('[1234A]')
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-ns',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-error-011.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-error-012'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml('[\"123\\\"]')
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-ns',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-error-012.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-error-013'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml('[\"123\\u234\"]')
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-ns',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-error-013.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-error-014'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml('{\"key\":123,}')
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-ns',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-error-014.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-error-015'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml('{\"key\":123 ,}', map{\"liberal\":false()})
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-ns',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-error-015.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-error-016'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml('[\"key\":123,]')
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-ns',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-error-016.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-error-017'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml('[\"key\":123 ,]', map{'liberal':true()})
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-ns',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-error-017.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-error-018'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml('[\"String\",]', map{'liberal':()})
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-ns',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-error-018.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"FOJS0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XPTY0004") of 
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
'json-to-xml-error-019'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml('[\"String\"]', map{'liberal':'something'})
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-ns',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-error-019.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-error-020'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml('[\"String\"]', map{'validate':()})
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-ns',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-error-020.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-error-021'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml('[\"String\"]', map{'validate':(true(),true())})
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-ns',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-error-021.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-error-022'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml('[\"String\"]', map{'validate':'EMCA-262'})
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-ns',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-error-022.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-error-023'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml('[\"String\"]', map{'escape':()})
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-ns',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-error-023.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-error-024'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml('[\"String\"]', map{'escape':(true(),true())})
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-ns',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-error-024.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-error-025'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml('[\"String\"]', map{'escape':'EMCA-262'})
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-ns',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-error-025.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-error-026'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml('[\"String\"]', map{'fallback':'dummy'})
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-ns',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-error-026.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-error-027'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XML version 1.1"}. 
'json-to-xml-error-028'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'json-to-xml-error-029'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml('-00')
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-error-029.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-error-030'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml('+10')
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-error-030.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-error-031'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml('.1')
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-error-031.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-error-032'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml('1.')
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-error-032.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-error-033'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml('1.e2')
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-error-033.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-error-034'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml('-.01')
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-error-034.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-error-035'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml('{\"a\":3, \"b\":4, \"a\":5}', map{\"duplicates\":\"reject\"})
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-error-035.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-error-037'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml('\"oh dear \\\"')
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-error-037.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-error-038'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml('\"oh dear \\uAAA\"')
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-error-038.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-error-039'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml('\"oh dear \\xAA\"')
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-error-039.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-error-040'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml('{\"a\":3, \"b\":4, \"c\":5}', map{\"duplicates\":\"use-last\"})
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-error-040.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-error-041'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         fn:json-to-xml('\"\\uFFFF\"', map{'fallback':concat#2})
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "json-to-xml-error-041.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'json-to-xml-error-042'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'json-to-xml-error-043'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.