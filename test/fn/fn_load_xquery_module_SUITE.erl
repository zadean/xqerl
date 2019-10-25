-module('fn_load_xquery_module_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['fn-load-xquery-module-001'/1]).
-export(['fn-load-xquery-module-002'/1]).
-export(['fn-load-xquery-module-003'/1]).
-export(['fn-load-xquery-module-004'/1]).
-export(['fn-load-xquery-module-005'/1]).
-export(['fn-load-xquery-module-006'/1]).
-export(['fn-load-xquery-module-007'/1]).
-export(['fn-load-xquery-module-008'/1]).
-export(['fn-load-xquery-module-009'/1]).
-export(['fn-load-xquery-module-010'/1]).
-export(['fn-load-xquery-module-011'/1]).
-export(['fn-load-xquery-module-012'/1]).
-export(['fn-load-xquery-module-013'/1]).
-export(['fn-load-xquery-module-014'/1]).
-export(['fn-load-xquery-module-015'/1]).
-export(['fn-load-xquery-module-016'/1]).
-export(['fn-load-xquery-module-017'/1]).
-export(['fn-load-xquery-module-018'/1]).
-export(['fn-load-xquery-module-019'/1]).
-export(['fn-load-xquery-module-020'/1]).
-export(['fn-load-xquery-module-021'/1]).
-export(['fn-load-xquery-module-022'/1]).
-export(['fn-load-xquery-module-023'/1]).
-export(['fn-load-xquery-module-024'/1]).
-export(['fn-load-xquery-module-025'/1]).
-export(['fn-load-xquery-module-026'/1]).
-export(['fn-load-xquery-module-027'/1]).
-export(['fn-load-xquery-module-028'/1]).
-export(['fn-load-xquery-module-029'/1]).
-export(['fn-load-xquery-module-030'/1]).
-export(['fn-load-xquery-module-031'/1]).
-export(['fn-load-xquery-module-032'/1]).
-export(['fn-load-xquery-module-033'/1]).
-export(['fn-load-xquery-module-034'/1]).
-export(['fn-load-xquery-module-035'/1]).
-export(['fn-load-xquery-module-036'/1]).
-export(['fn-load-xquery-module-037'/1]).
-export(['fn-load-xquery-module-038'/1]).
-export(['fn-load-xquery-module-040'/1]).
-export(['fn-load-xquery-module-041'/1]).
-export(['fn-load-xquery-module-042'/1]).
-export(['fn-load-xquery-module-043'/1]).
-export(['fn-load-xquery-module-044'/1]).
-export(['fn-load-xquery-module-045'/1]).
-export(['fn-load-xquery-module-046'/1]).
-export(['fn-load-xquery-module-050'/1]).
-export(['fn-load-xquery-module-051'/1]).
-export(['fn-load-xquery-module-052'/1]).
-export(['fn-load-xquery-module-053'/1]).
-export(['fn-load-xquery-module-054'/1]).
-export(['fn-load-xquery-module-055'/1]).
-export(['fn-load-xquery-module-056'/1]).
-export(['fn-load-xquery-module-057'/1]).
-export(['fn-load-xquery-module-060'/1]).
-export(['fn-load-xquery-module-061'/1]).
-export(['fn-load-xquery-module-062'/1]).
-export(['fn-load-xquery-module-063'/1]).
-export(['fn-load-xquery-module-064'/1]).
-export(['fn-load-xquery-module-065'/1]).
-export(['fn-load-xquery-module-066'/1]).
-export(['fn-load-xquery-module-067'/1]).
-export(['fn-load-xquery-module-068'/1]).
-export(['fn-load-xquery-module-069'/1]).
-export(['fn-load-xquery-module-070'/1]).
-export(['fn-load-xquery-module-071'/1]).
-export(['fn-load-xquery-module-072'/1]).
-export(['fn-load-xquery-module-073'/1]).
-export(['fn-load-xquery-module-901'/1]).
-export(['fn-load-xquery-module-902'/1]).
-export(['fn-load-xquery-module-903'/1]).
-export(['fn-load-xquery-module-904'/1]).
-export(['fn-load-xquery-module-905'/1]).
-export(['fn-load-xquery-module-906'/1]).
-export(['fn-load-xquery-module-907'/1]).
-export(['fn-load-xquery-module-908'/1]).
-export(['fn-load-xquery-module-909'/1]).
-export(['fn-load-xquery-module-910'/1]).
-export(['fn-load-xquery-module-911'/1]).
-export(['fn-load-xquery-module-912'/1]).
-export(['fn-load-xquery-module-913'/1]).
-export(['fn-load-xquery-module-914'/1]).
-export(['fn-load-xquery-module-915'/1]).
suite() -> [{timetrap,{seconds, 180}}].
init_per_group(_, Config) ->  Config.
end_per_group(_, _Config) -> 
   xqerl_code_server:unload(all).
end_per_suite(_Config) -> 
   ct:timetrap({seconds,60}), 
   xqerl_code_server:unload(all).
init_per_suite(Config) -> 
   {ok,_} = application:ensure_all_started(xqerl),
   DD = filename:dirname(filename:dirname(filename:dirname(?config(data_dir, Config)))),
   TD = filename:join(DD, "QT3-test-suite"),
   __BaseDir = filename:join(TD, "fn"),
   [{base_dir, __BaseDir}|Config].
all() -> [
   {group, group_0}
   ].
groups() -> [
   {group_0, [], [
    'fn-load-xquery-module-001', 
    'fn-load-xquery-module-002', 
    'fn-load-xquery-module-003', 
    'fn-load-xquery-module-004', 
    'fn-load-xquery-module-005', 
    'fn-load-xquery-module-006', 
    'fn-load-xquery-module-007', 
    'fn-load-xquery-module-008', 
    'fn-load-xquery-module-009', 
    'fn-load-xquery-module-010', 
    'fn-load-xquery-module-011', 
    'fn-load-xquery-module-012', 
    'fn-load-xquery-module-013', 
    'fn-load-xquery-module-014', 
    'fn-load-xquery-module-015', 
    'fn-load-xquery-module-016', 
    'fn-load-xquery-module-017', 
    'fn-load-xquery-module-018', 
    'fn-load-xquery-module-019', 
    'fn-load-xquery-module-020', 
    'fn-load-xquery-module-021', 
    'fn-load-xquery-module-022', 
    'fn-load-xquery-module-023', 
    'fn-load-xquery-module-024', 
    'fn-load-xquery-module-025', 
    'fn-load-xquery-module-026', 
    'fn-load-xquery-module-027', 
    'fn-load-xquery-module-028', 
    'fn-load-xquery-module-029', 
    'fn-load-xquery-module-030', 
    'fn-load-xquery-module-031', 
    'fn-load-xquery-module-032', 
    'fn-load-xquery-module-033', 
    'fn-load-xquery-module-034', 
    'fn-load-xquery-module-035', 
    'fn-load-xquery-module-036', 
    'fn-load-xquery-module-037', 
    'fn-load-xquery-module-038', 
    'fn-load-xquery-module-040', 
    'fn-load-xquery-module-041', 
    'fn-load-xquery-module-042', 
    'fn-load-xquery-module-043', 
    'fn-load-xquery-module-044', 
    'fn-load-xquery-module-045', 
    'fn-load-xquery-module-046', 
    'fn-load-xquery-module-050', 
    'fn-load-xquery-module-051', 
    'fn-load-xquery-module-052', 
    'fn-load-xquery-module-053', 
    'fn-load-xquery-module-054', 
    'fn-load-xquery-module-055', 
    'fn-load-xquery-module-056', 
    'fn-load-xquery-module-057', 
    'fn-load-xquery-module-060', 
    'fn-load-xquery-module-061', 
    'fn-load-xquery-module-062', 
    'fn-load-xquery-module-063', 
    'fn-load-xquery-module-064', 
    'fn-load-xquery-module-065', 
    'fn-load-xquery-module-066', 
    'fn-load-xquery-module-067', 
    'fn-load-xquery-module-068', 
    'fn-load-xquery-module-069', 
    'fn-load-xquery-module-070', 
    'fn-load-xquery-module-071', 
    'fn-load-xquery-module-072', 
    'fn-load-xquery-module-073', 
    'fn-load-xquery-module-901', 
    'fn-load-xquery-module-902', 
    'fn-load-xquery-module-903', 
    'fn-load-xquery-module-904', 
    'fn-load-xquery-module-905', 
    'fn-load-xquery-module-906', 
    'fn-load-xquery-module-907', 
    'fn-load-xquery-module-908', 
    'fn-load-xquery-module-909', 
    'fn-load-xquery-module-910', 
    'fn-load-xquery-module-911', 
    'fn-load-xquery-module-912', 
    'fn-load-xquery-module-913', 
    'fn-load-xquery-module-914', 
    'fn-load-xquery-module-915']}].
environment('hats',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, [{filename:join(__BaseDir, "../prod/SchemaImport/hats.xsd"),"http://www.w3.org/XQueryTest/hats"}]}, 
{resources, []}, 
{modules, []}
]; 
environment('abf',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, [{filename:join(__BaseDir, "../prod/SchemaImport/abf.xsd"),"http://www.w3.org/XQueryTest/abf"}]}, 
{resources, []}, 
{modules, []}
].
'fn-load-xquery-module-001'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:load-xquery-module(\"\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-load-xquery-module-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOQM0001") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FOQM0001 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-load-xquery-module-002'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:load-xquery-module(\"\", map{})", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-load-xquery-module-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOQM0001") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FOQM0001 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-load-xquery-module-003'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:load-xquery-module(\"http://nonexistent/module\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-load-xquery-module-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOQM0002") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FOQM0002 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-load-xquery-module-004'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:load-xquery-module(\"http://nonexistent/module\", map{})", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-load-xquery-module-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOQM0002") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FOQM0002 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-load-xquery-module-005'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:load-xquery-module(\"http://www.w3.org/fots/fn/load-xquery-module/invalid/module\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "load-xquery-module/invalid-module.xqm"), <<"Q{http://www.w3.org/fots/fn/load-xquery-module/invalid/module}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-load-xquery-module-005.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_error(Res,"FOQM0003") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FOQM0003 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-load-xquery-module-006'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:load-xquery-module(\"http://www.w3.org/fots/fn/load-xquery-module/invalid/module\", map{})", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "load-xquery-module/invalid-module.xqm"), <<"Q{http://www.w3.org/fots/fn/load-xquery-module/invalid/module}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-load-xquery-module-006.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_error(Res,"FOQM0003") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FOQM0003 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-load-xquery-module-007'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $module-ns := \"http://www.w3.org/fots/fn/load-xquery-module/external-var/module\",
              $module := fn:load-xquery-module($module-ns)
          return $module(\"variables\")(QName($module-ns,'var1'))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "load-xquery-module/external-var-module.xqm"), <<"Q{http://www.w3.org/fots/fn/load-xquery-module/external-var/module}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-load-xquery-module-007.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPDY0002 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-load-xquery-module-008'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $module-ns := \"http://www.w3.org/fots/fn/load-xquery-module/external-var/module\",
              $module := fn:load-xquery-module($module-ns, map{})
          return $module(\"variables\")(QName($module-ns,'var1'))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "load-xquery-module/external-var-module.xqm"), <<"Q{http://www.w3.org/fots/fn/load-xquery-module/external-var/module}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-load-xquery-module-008.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPDY0002 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-load-xquery-module-009'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $module-ns := \"http://www.w3.org/fots/fn/load-xquery-module/context-item/module\", $module := fn:load-xquery-module($module-ns)
          return $module(\"variables\")(QName($module-ns,'context'))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "load-xquery-module/context-item-module.xqm"), <<"Q{http://www.w3.org/fots/fn/load-xquery-module/context-item/module}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-load-xquery-module-009.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPDY0002 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-load-xquery-module-010'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $module-ns := \"http://www.w3.org/fots/fn/load-xquery-module/context-item/module\", $module := fn:load-xquery-module($module-ns, map{})
          return $module(\"variables\")(QName($module-ns,'context'))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "load-xquery-module/context-item-module.xqm"), <<"Q{http://www.w3.org/fots/fn/load-xquery-module/context-item/module}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-load-xquery-module-010.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPDY0002 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-load-xquery-module-011'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:load-xquery-module(\"http://www.w3.org/fots/fn/load-xquery-module/external-var/module\", map {\"variables\" : map { QName(\"http://www.w3.org/fots/fn/load-xquery-module/external-var/module\", \"var1\") : 1234 }})", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "load-xquery-module/external-var-module.xqm"), <<"Q{http://www.w3.org/fots/fn/load-xquery-module/external-var/module}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-load-xquery-module-011.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_error(Res,"FOQM0005") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FOQM0005 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-load-xquery-module-012'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      let $module-ns :=\"http://www.w3.org/fots/fn/load-xquery-module/dynamic-error/module\", $module := fn:load-xquery-module($module-ns)
      return $module('variables')(QName($module-ns, \"cause-dynamic-error\"))        ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "load-xquery-module/dynamic-error-module.xqm"), <<"Q{http://www.w3.org/fots/fn/load-xquery-module/dynamic-error/module}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-load-xquery-module-012.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_error(Res,"FOAR0001") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FOAR0001 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-load-xquery-module-013'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:load-xquery-module(\"http://www.w3.org/fots/fn/load-xquery-module/dynamic-error/module\", map{})", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "load-xquery-module/dynamic-error-module.xqm"), <<"Q{http://www.w3.org/fots/fn/load-xquery-module/dynamic-error/module}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-load-xquery-module-013.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_error(Res,"FOAR0001") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FOAR0001 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-load-xquery-module-014'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      let $module-ns := \"http://www.w3.org/fots/fn/load-xquery-module/valid/module\",
       $module := fn:load-xquery-module($module-ns)
      return
        let $vars := $module(\"variables\"),
         $fns := $module(\"functions\")
        return
          let $var-values := ($vars(QName($module-ns, \"var1\")), $vars(QName($module-ns, \"var2\"))),
           $fns-values := ($fns(QName($module-ns, \"func1\"))(0)(), $fns(QName($module-ns, \"func2\"))(0)())
          return
            ($var-values, $fns-values)
    ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "load-xquery-module/valid-module.xqm"), <<"Q{http://www.w3.org/fots/fn/load-xquery-module/valid/module}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-load-xquery-module-014.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(\"var1\", \"var2\", \"func1\", \"func2\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-load-xquery-module-015'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      let $qn-var1 := QName(\"http://www.w3.org/fots/fn/load-xquery-module/external-var/module\", \"var1\"),
       $test-value := \"some value\"
      return
        let $module := fn:load-xquery-module(\"http://www.w3.org/fots/fn/load-xquery-module/external-var/module\", map {\"variables\" : map { $qn-var1 : $test-value }})
        return
          $module(\"variables\")($qn-var1)
    ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "load-xquery-module/external-var-module.xqm"), <<"Q{http://www.w3.org/fots/fn/load-xquery-module/external-var/module}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-load-xquery-module-015.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_string_value(Res, "some value") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-load-xquery-module-016'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      let $module := fn:load-xquery-module(\"http://www.w3.org/fots/fn/load-xquery-module/context-item/module\", map{\"context-item\" : <a><b>hello</b></a>})
      return
        let $f := $module(\"functions\")(QName(\"http://www.w3.org/fots/fn/load-xquery-module/context-item/module\", \"get-context-child\"))(0)
        return
          $f()
    ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "load-xquery-module/context-item-module.xqm"), <<"Q{http://www.w3.org/fots/fn/load-xquery-module/context-item/module}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-load-xquery-module-016.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_xml(Res,"<b>hello</b>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-load-xquery-module-017'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      let $module := fn:load-xquery-module(\"http://www.w3.org/fots/fn/load-xquery-module/context-item/module\", map{\"context-item\" : <a><b>hello</b></a>})
      return
        $module(\"variables\")(QName(\"http://www.w3.org/fots/fn/load-xquery-module/context-item/module\", \"context\"))        
    ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "load-xquery-module/context-item-module.xqm"), <<"Q{http://www.w3.org/fots/fn/load-xquery-module/context-item/module}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-load-xquery-module-017.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_xml(Res,"<a><b>hello</b></a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-load-xquery-module-018'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      let $module-ns := \"http://www.w3.org/fots/fn/load-xquery-module/functions/module\",
       $module := fn:load-xquery-module($module-ns)
      return
      let $fns := $module(\"functions\")
      return
      let $fns-values := ($fns(QName($module-ns, \"func1\"))(0)(), $fns(QName($module-ns, \"func2\"))(0)())
      return
      $fns-values
    ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "load-xquery-module/functions-module.xqm"), <<"Q{http://www.w3.org/fots/fn/load-xquery-module/functions/module}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-load-xquery-module-018.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(\"func1\", \"func2\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-load-xquery-module-019'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      let $module-ns := \"http://www.w3.org/fots/fn/load-xquery-module/functions/module\",
       $module := fn:load-xquery-module($module-ns)
      return
      let $fns := $module(\"functions\")
      return
      let $fns-values := ($fns(QName($module-ns, \"func1\"))(0)(), $fns(QName($module-ns, \"func1\"))(1)(\"something\"), $fns(QName($module-ns, \"func2\"))(0)(), $fns(QName($module-ns, \"func2\"))(1)(\"something\"))
      return
      $fns-values
    ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "load-xquery-module/functions2-module.xqm"), <<"Q{http://www.w3.org/fots/fn/load-xquery-module/functions/module}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-load-xquery-module-019.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(\"func1\", \"func1something\", \"func2\", \"something\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-load-xquery-module-020'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      let $qn-var1 := QName(\"http://www.w3.org/fots/fn/load-xquery-module/external-vars/module\", \"var1\"),
       $qn-var2 := QName(\"http://www.w3.org/fots/fn/load-xquery-module/external-vars/module\", \"var2\"),
       $qn-var3 := QName(\"http://www.w3.org/fots/fn/load-xquery-module/external-vars/module\", \"var3\")
      return
      let $module := fn:load-xquery-module(\"http://www.w3.org/fots/fn/load-xquery-module/external-vars/module\", 
      map {\"variables\" : map { $qn-var1 : \"some value\", $qn-var2 : 42, $qn-var3 : map{\"a\":1,\"b\":2,\"c\":(3,4,5)} }})
      return
      ($module(\"variables\")($qn-var1), $module(\"variables\")($qn-var2), $module(\"variables\")($qn-var3)(\"b\"))
    ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "load-xquery-module/external-vars-module.xqm"), <<"Q{http://www.w3.org/fots/fn/load-xquery-module/external-vars/module}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-load-xquery-module-020.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(\"some value\", 42, 2)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-load-xquery-module-021'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "      
      let $qn-var1 := QName(\"http://www.w3.org/fots/fn/load-xquery-module/external-vars/module\", \"var1\"),
       $qn-var2 := QName(\"http://www.w3.org/fots/fn/load-xquery-module/external-vars/module\", \"var2\"),
       $qn-var3 := QName(\"http://www.w3.org/fots/fn/load-xquery-module/external-vars/module\", \"var3\"),
       $qn-var4 := QName(\"http://www.w3.org/fots/fn/load-xquery-module/external-vars/module\", \"var4\")
      return
      let $module := fn:load-xquery-module(\"http://www.w3.org/fots/fn/load-xquery-module/external-vars/module\", 
      map {\"variables\" : map { $qn-var2 : 42, $qn-var3 : map{\"a\":1,\"b\":2,\"c\":(3,4,5)}, $qn-var4 : \"the other\" }})
      return
      ($module(\"variables\")($qn-var1), $module(\"variables\")($qn-var2), $module(\"variables\")($qn-var3)(\"b\"), $module(\"variables\")($qn-var4))
    ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "load-xquery-module/external-vars-module.xqm"), <<"Q{http://www.w3.org/fots/fn/load-xquery-module/external-vars/module}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-load-xquery-module-021.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(\"this\", 42, 2, \"that\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-load-xquery-module-022'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      let $module := fn:load-xquery-module(\"http://www.w3.org/fots/fn/load-xquery-module/import-func/module\")
      return
      $module(\"functions\")(QName(\"http://www.w3.org/fots/fn/load-xquery-module/valid/module\", \"func1\"))
    ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "load-xquery-module/import-func-module.xqm"), <<"Q{http://www.w3.org/fots/fn/load-xquery-module/import-func/module}">>},{filename:join(__BaseDir, "load-xquery-module/valid-module.xqm"), <<"Q{http://www.w3.org/fots/fn/load-xquery-module/valid/module}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-load-xquery-module-022.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-load-xquery-module-023'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      let $module-ns := \"http://www.w3.org/fots/fn/load-xquery-module/import/module\",
       $module := fn:load-xquery-module($module-ns),
       $mod1-ns := \"http://www.w3.org/TestModules/module1\"
      return
      let $fns := $module(\"functions\")
      return $fns(QName($mod1-ns, \"x\"))(0)()
    ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "load-xquery-module/import-module.xqm"), <<"Q{http://www.w3.org/fots/fn/load-xquery-module/import/module}">>},{filename:join(__BaseDir, "../prod/ModuleImport/module1-lib.xq"), <<"Q{http://www.w3.org/TestModules/module1}">>},{filename:join(__BaseDir, "../prod/ModuleImport/module2-lib.xq"), <<"Q{http://www.w3.org/TestModules/module2}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-load-xquery-module-023.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-load-xquery-module-024'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      let $module-ns := \"http://www.w3.org/fots/fn/load-xquery-module/import/module\",
       $module := fn:load-xquery-module($module-ns),
       $mod1-ns := \"http://www.w3.org/TestModules/module1\",
       $mod2-ns := \"http://www.w3.org/TestModules/module2\"
      return
      let $fns := $module(\"functions\")
      return $fns(QName($mod2-ns, \"y\"))(0)()
    ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "load-xquery-module/import-module.xqm"), <<"Q{http://www.w3.org/fots/fn/load-xquery-module/import/module}">>},{filename:join(__BaseDir, "../prod/ModuleImport/module1-lib.xq"), <<"Q{http://www.w3.org/TestModules/module1}">>},{filename:join(__BaseDir, "../prod/ModuleImport/module2-lib.xq"), <<"Q{http://www.w3.org/TestModules/module2}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-load-xquery-module-024.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-load-xquery-module-025'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      let $module := fn:load-xquery-module(\"http://www.w3.org/fots/fn/load-xquery-module/import-vars/module\")
      return
      $module(\"variables\")(QName(\"http://www.w3.org/fots/fn/load-xquery-module/valid/module\", \"var1\"))
    ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "load-xquery-module/import-vars-module.xqm"), <<"Q{http://www.w3.org/fots/fn/load-xquery-module/import-vars/module}">>},{filename:join(__BaseDir, "load-xquery-module/valid-module.xqm"), <<"Q{http://www.w3.org/fots/fn/load-xquery-module/valid/module}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-load-xquery-module-025.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-load-xquery-module-026'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "      
      let $qn-var1 := QName(\"http://www.w3.org/fots/fn/load-xquery-module/external-vars/module\", \"var1\")
      return
      let $module := fn:load-xquery-module(\"http://www.w3.org/fots/fn/load-xquery-module/import-vars/module\", 
      map {\"variables\" : map { $qn-var1 : \"that\" }})
      return
      $module(\"variables\")(QName(\"http://www.w3.org/fots/fn/load-xquery-module/import-vars/module\", \"var1\"))
    ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "load-xquery-module/import-vars2-module.xqm"), <<"Q{http://www.w3.org/fots/fn/load-xquery-module/import-vars/module}">>},{filename:join(__BaseDir, "load-xquery-module/external-vars2-module.xqm"), <<"Q{http://www.w3.org/fots/fn/load-xquery-module/external-vars/module}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-load-xquery-module-026.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_string_value(Res, "that") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-load-xquery-module-027'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "      
      let $qn-var1 := QName(\"http://www.w3.org/fots/fn/load-xquery-module/external-vars/module\", \"var1\")
      return
      let $module := fn:load-xquery-module(\"http://www.w3.org/fots/fn/load-xquery-module/import/module\", 
      map {\"variables\" : map { $qn-var1 : \"that\" }})
      return
      $module(\"variables\")(QName(\"http://www.w3.org/fots/fn/load-xquery-module/import/module\", \"var1\"))
    ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "load-xquery-module/import2-module.xqm"), <<"Q{http://www.w3.org/fots/fn/load-xquery-module/import/module}">>},{filename:join(__BaseDir, "load-xquery-module/middle-module.xqm"), <<"Q{http://www.w3.org/fots/fn/load-xquery-module/middle/module}">>},{filename:join(__BaseDir, "load-xquery-module/external-vars2-module.xqm"), <<"Q{http://www.w3.org/fots/fn/load-xquery-module/external-vars/module}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-load-xquery-module-027.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_string_value(Res, "that") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-load-xquery-module-028'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "      
      let $module-ns := \"http://www.w3.org/fots/fn/load-xquery-module/import-vars/module\",
       $module-ext := \"http://www.w3.org/fots/fn/load-xquery-module/external-vars/module\"
      return
      let $module := fn:load-xquery-module($module-ns, 
      map {\"variables\" : map {QName($module-ext, \"var3\") : map{}}})
      return
      $module(\"functions\")(QName($module-ns, \"and\"))(0)()
    ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "load-xquery-module/import-vars3-module.xqm"), <<"Q{http://www.w3.org/fots/fn/load-xquery-module/import-vars/module}">>},{filename:join(__BaseDir, "load-xquery-module/external-vars-module.xqm"), <<"Q{http://www.w3.org/fots/fn/load-xquery-module/external-vars/module}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-load-xquery-module-028.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_string_value(Res, "this and that") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-load-xquery-module-029'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "      
      let $module := fn:load-xquery-module(\"http://www.w3.org/fots/fn/load-xquery-module/import-self/module\")
      return
      $module(\"variables\")(QName(\"http://www.w3.org/fots/fn/load-xquery-module/import-self/module\", \"var1\"))
    ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "load-xquery-module/import-self-module.xqm"), <<"Q{http://www.w3.org/fots/fn/load-xquery-module/import-self/module}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-load-xquery-module-029.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_string_value(Res, "this") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-load-xquery-module-030'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "      
      let $module := fn:load-xquery-module(\"http://www.w3.org/TestModules/test1\")
      return
      $module(\"functions\")(QName(\"http://www.w3.org/TestModules/test1\", \"ok\"))(0)()
    ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "../prod/ModuleImport/test1c1-lib.xq"), <<"Q{http://www.w3.org/TestModules/test1}">>},{filename:join(__BaseDir, "../prod/ModuleImport/test2c1-lib.xq"), <<"Q{http://www.w3.org/TestModules/test2}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-load-xquery-module-030.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_string_value(Res, "ok") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-load-xquery-module-031'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace vm=\"http://www.w3.org/fots/fn/load-xquery-module/valid/module\"; 
        let $module-ns := \"http://www.w3.org/fots/fn/load-xquery-module/valid/module\"
        let $module := fn:load-xquery-module($module-ns)
        return 
        ($module(\"functions\")(QName($module-ns, \"func1\"))(0)(), vm:func2())
    ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "load-xquery-module/valid-module.xqm"), <<"Q{http://www.w3.org/fots/fn/load-xquery-module/valid/module}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-load-xquery-module-031.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(\"func1\", \"func2\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-load-xquery-module-032'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace evm=\"http://www.w3.org/fots/fn/load-xquery-module/external-vars/module\"; 
        let $module-ns := \"http://www.w3.org/fots/fn/load-xquery-module/external-vars/module\"
        let $module := fn:load-xquery-module($module-ns, 
        map {\"variables\" : map {QName($module-ns, \"var1\") : \"that\", QName($module-ns, \"var3\") : map{1:'b'}}})
        return
        ($module(\"functions\")(QName($module-ns, \"get-var1\"))(0)(), evm:get-var1(),
        $module(\"variables\")(QName($module-ns, \"var3\"))?1, $evm:var3(1) )
      ", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, []}, 
{params, [{"Q{http://www.w3.org/fots/fn/load-xquery-module/external-vars/module}var3","","map{}"}]}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, [{filename:join(__BaseDir, "load-xquery-module/external-vars-module.xqm"),"http://www.w3.org/fots/fn/load-xquery-module/external-vars/module"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "load-xquery-module/external-vars-module.xqm"), <<"Q{http://www.w3.org/fots/fn/load-xquery-module/external-vars/module}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-load-xquery-module-032.xq"), Qry1),
             xqerl:run(Mod,Opts) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(\"that\", \"this\", \"b\", ())") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-load-xquery-module-033'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      let $module-ns := \"http://www.w3.org/fots/fn/load-xquery-module/external-vars/module\",
       $qn-var1 := QName($module-ns, \"var1\"),
       $qn-var2 := QName($module-ns, \"var2\"),
       $qn-var3 := QName($module-ns, \"var3\")
      return
      let $module1 := fn:load-xquery-module($module-ns, 
      map {\"variables\" : map { $qn-var1 : \"some value\", $qn-var2 : 42, $qn-var3 : map{\"a\":1,\"b\":2,\"c\":(3,4,5)} }}),
       $module2 := fn:load-xquery-module($module-ns, 
      map {\"variables\" : map { $qn-var1 : \"another value\", $qn-var3 : map{\"a\":14,\"b\":\"different\"} }})
      return
      ($module1(\"variables\")($qn-var1), $module1(\"variables\")($qn-var2), $module1(\"variables\")($qn-var3)(\"b\"),
      $module1(\"functions\")(QName($module-ns, \"get-var1\"))(0)(), $module1(\"functions\")(QName($module-ns, \"get-var2\"))(0)(),
      $module2(\"variables\")($qn-var1), $module2(\"variables\")($qn-var2), $module2(\"variables\")($qn-var3)(\"b\"),
      $module2(\"functions\")(QName($module-ns, \"get-var1\"))(0)(), $module2(\"functions\")(QName($module-ns, \"get-var2\"))(0)())
    ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "load-xquery-module/external-vars-module.xqm"), <<"Q{http://www.w3.org/fots/fn/load-xquery-module/external-vars/module}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-load-xquery-module-033.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(\"some value\", 42, 2, \"some value\", 42, \"another value\", 11, \"different\", \"another value\", 11)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-load-xquery-module-034'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      let $module-ns := \"http://www.w3.org/fots/fn/load-xquery-module/external-vars/module\",
       $qn-var1 := QName($module-ns, \"var1\"),
       $qn-var2 := QName($module-ns, \"var2\"),
       $qn-var3 := QName($module-ns, \"var3\")
      return
      let $module := fn:load-xquery-module(\"http://www.w3.org/fots/fn/load-xquery-module/external-vars/module\", 
      map {\"variables\" : map { $qn-var1 : \"some value\", $qn-var2 : 42, $qn-var3 : 
      fn:load-xquery-module(\"http://www.w3.org/fots/fn/load-xquery-module/external-vars/module\", 
      map {\"variables\" : map { $qn-var1 : \"  a string\", $qn-var3 : map{} }})
      }})
      return
      ($module(\"variables\")($qn-var1), $module(\"variables\")($qn-var2), 
      $module(\"variables\")($qn-var3)(\"functions\")(QName($module-ns, \"get-var1\"))(0)(),
      $module(\"variables\")($qn-var3)(\"functions\")(QName($module-ns, \"get-var2\"))(0)()
      )
    ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "load-xquery-module/external-vars-module.xqm"), <<"Q{http://www.w3.org/fots/fn/load-xquery-module/external-vars/module}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-load-xquery-module-034.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(\"some value\", 42, \"  a string\", 11)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-load-xquery-module-035'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      let $module-ns := \"http://www.w3.org/fots/fn/load-xquery-module/load/module\",
       $module-valid-ns := \"http://www.w3.org/fots/fn/load-xquery-module/load/module\",
       $module := fn:load-xquery-module($module-ns)
      return 
      $module(\"variables\")(QName($module-ns, \"var3\"))(\"variables\")
    ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "load-xquery-module/valid-module.xqm"), <<"Q{http://www.w3.org/fots/fn/load-xquery-module/valid/module}">>},{filename:join(__BaseDir, "load-xquery-module/load-module.xqm"), <<"Q{http://www.w3.org/fots/fn/load-xquery-module/load/module}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-load-xquery-module-035.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_type(Res,"map(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-load-xquery-module-036'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      let $module-ns := \"http://www.w3.org/fots/fn/load-xquery-module/load/module\",
       $module-valid-ns := \"http://www.w3.org/fots/fn/load-xquery-module/valid/module\",
       $module := fn:load-xquery-module($module-ns)
      return 
      ($module(\"functions\")(QName($module-ns, \"get-var1\"))(0)(), 
      $module(\"variables\")(QName($module-ns, \"var1\")), 
      $module(\"variables\")(QName($module-ns, \"var3\"))(\"variables\")(QName($module-valid-ns, \"var1\")),
      $module(\"variables\")(QName($module-ns, \"var3\"))(\"functions\")(QName($module-valid-ns, \"func1\"))(0)())
    ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "load-xquery-module/valid-module.xqm"), <<"Q{http://www.w3.org/fots/fn/load-xquery-module/valid/module}">>},{filename:join(__BaseDir, "load-xquery-module/load-module.xqm"), <<"Q{http://www.w3.org/fots/fn/load-xquery-module/load/module}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-load-xquery-module-036.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(\"this\", \"this\", \"var1\", \"func1\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-load-xquery-module-037'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      let $module-ns := \"http://www.w3.org/fots/fn/load-xquery-module/load-self/module\",
       $module := fn:load-xquery-module($module-ns, 
      map {\"variables\" : map { QName($module-ns, \"b\") : true()}})
      return 
      $module(\"variables\")(QName($module-ns, \"var1\"))(\"variables\")(QName($module-ns, \"var1\"))
    ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "load-xquery-module/load-self-module.xqm"), <<"Q{http://www.w3.org/fots/fn/load-xquery-module/load-self/module}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-load-xquery-module-037.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_string_value(Res, "end") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-load-xquery-module-038'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      import module namespace test=\"http://www.w3.org/fots/fn/load-xquery-module/load-self/module\";  
      ($test:b, 
      ($test:var1)(\"variables\")(QName(\"http://www.w3.org/fots/fn/load-xquery-module/load-self/module\", \"b\")),
      ($test:var1)(\"variables\")(QName(\"http://www.w3.org/fots/fn/load-xquery-module/load-self/module\", \"var1\")))
    ", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, []}, 
{params, [{"Q{http://www.w3.org/fots/fn/load-xquery-module/load-self/module}b","","true()"}]}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, [{filename:join(__BaseDir, "load-xquery-module/load-self-module.xqm"),"http://www.w3.org/fots/fn/load-xquery-module/load-self/module"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "load-xquery-module/load-self-module.xqm"), <<"Q{http://www.w3.org/fots/fn/load-xquery-module/load-self/module}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-load-xquery-module-038.xq"), Qry1),
             xqerl:run(Mod,Opts) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(true(), false(), \"end\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-load-xquery-module-040'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      let $module-ns := \"http://www.w3.org/fots/fn/load-xquery-module/decimal-format/module\",
       $module := fn:load-xquery-module($module-ns)
      return
      let $fns := $module(\"functions\")
      return
      $fns(QName($module-ns, \"func\"))(1)(1234567.765)
    ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "load-xquery-module/decimal-format-module.xqm"), <<"Q{http://www.w3.org/fots/fn/load-xquery-module/decimal-format/module}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-load-xquery-module-040.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_string_value(Res, "1.234.567,76") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-load-xquery-module-041'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      let $module-ns := \"http://www.w3.org/fots/fn/load-xquery-module/functions/module\"
      return
      fn:load-xquery-module($module-ns)(\"functions\")(QName($module-ns, \"func\"))(1)((1,2,3))
    ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "load-xquery-module/empty-least-module.xqm"), <<"Q{http://www.w3.org/fots/fn/load-xquery-module/functions/module}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-load-xquery-module-041.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_string_value(Res, "0 0 1 1 1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-load-xquery-module-042'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      let $module-ns := \"http://www.w3.org/fots/fn/load-xquery-module/functions/module\"      
      return
      fn:load-xquery-module($module-ns)(\"functions\")(QName($module-ns, \"func\"))(1)((1,2,3))
    ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "load-xquery-module/empty-greatest-module.xqm"), <<"Q{http://www.w3.org/fots/fn/load-xquery-module/functions/module}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-load-xquery-module-042.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_string_value(Res, "1 1 1 0 0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-load-xquery-module-043'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      declare default order empty greatest;
      declare namespace test = \"http://www.w3.org/fots/fn/load-xquery-module/test\";
      declare function test:func($seq as item()*) {
      for $i in 1 to 5
      let $x := subsequence($seq, $i, 1)
      order by $x
      return count($x)
      };
      let $module-ns := \"http://www.w3.org/fots/fn/load-xquery-module/functions/module\"
      return
      (fn:load-xquery-module($module-ns)(\"functions\")(QName($module-ns, \"func\"))(1)((1,2,3)), test:func((1,2,3)))
    ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "load-xquery-module/empty-least-module.xqm"), <<"Q{http://www.w3.org/fots/fn/load-xquery-module/functions/module}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-load-xquery-module-043.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_string_value(Res, "0 0 1 1 1 1 1 1 0 0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-load-xquery-module-044'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      declare default order empty least;
      declare namespace test = \"http://www.w3.org/fots/fn/load-xquery-module/test\";
      declare function test:func($seq as item()*) {
      for $i in 1 to 5
      let $x := subsequence($seq, $i, 1)
      order by $x
      return count($x)
      };
      let $module-ns := \"http://www.w3.org/fots/fn/load-xquery-module/functions/module\"      
      return
      (fn:load-xquery-module($module-ns)(\"functions\")(QName($module-ns, \"func\"))(1)((1,2,3)), test:func((1,2,3)))
    ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "load-xquery-module/empty-greatest-module.xqm"), <<"Q{http://www.w3.org/fots/fn/load-xquery-module/functions/module}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-load-xquery-module-044.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_string_value(Res, "1 1 1 0 0 0 0 1 1 1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-load-xquery-module-045'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      let $module-ns := \"http://www.w3.org/fots/fn/load-xquery-module/functions/module\"
      return
      fn:load-xquery-module($module-ns)(\"functions\")(QName($module-ns, \"func\"))(1)(\"abc\")
    ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "load-xquery-module/boundary-space1-module.xqm"), <<"Q{http://www.w3.org/fots/fn/load-xquery-module/functions/module}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-load-xquery-module-045.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_xml(Res,"<a>abc</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-load-xquery-module-046'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      let $module-ns := \"http://www.w3.org/fots/fn/load-xquery-module/functions/module\"
      return
      fn:load-xquery-module($module-ns)(\"functions\")(QName($module-ns, \"func\"))(1)(\"abc\")
    ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "load-xquery-module/boundary-space2-module.xqm"), <<"Q{http://www.w3.org/fots/fn/load-xquery-module/functions/module}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-load-xquery-module-046.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_xml(Res,"<a>  abc  </a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-load-xquery-module-050'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport"}. 
'fn-load-xquery-module-051'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport"}. 
'fn-load-xquery-module-052'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport"}. 
'fn-load-xquery-module-053'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport"}. 
'fn-load-xquery-module-054'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport"}. 
'fn-load-xquery-module-055'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport"}. 
'fn-load-xquery-module-056'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport"}. 
'fn-load-xquery-module-057'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport"}. 
'fn-load-xquery-module-060'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $module-ns := \"http://www.w3.org/fots/fn/load-xquery-module/context-item/module\", $module := fn:load-xquery-module($module-ns, map{\"context-item\" : \"item\"}) return $module(\"variables\")(QName($module-ns, \"context\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "load-xquery-module/context-item2-module.xqm"), <<"Q{http://www.w3.org/fots/fn/load-xquery-module/context-item/module}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-load-xquery-module-060.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_error(Res,"FOQM0005") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FOQM0005 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-load-xquery-module-061'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      let $module-ns := \"http://www.w3.org/fots/fn/load-xquery-module/valid/module\",
       $module := fn:load-xquery-module($module-ns, map{\"context-item\" : \"item\"})
      return
      ($module(\"variables\")(QName($module-ns, \"var1\")), $module(\"variables\")(QName($module-ns, \"var2\")), 
      $module(\"functions\")(QName($module-ns, \"func1\"))(0)(), $module(\"functions\")(QName($module-ns, \"func2\"))(0)())
    ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "load-xquery-module/valid-module.xqm"), <<"Q{http://www.w3.org/fots/fn/load-xquery-module/valid/module}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-load-xquery-module-061.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(\"var1\", \"var2\", \"func1\", \"func2\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-load-xquery-module-062'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:load-xquery-module(\"http://www.w3.org/fots/fn/load-xquery-module/valid/module\", 
      map{\"variables\" : \"v\"})", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "load-xquery-module/valid-module.xqm"), <<"Q{http://www.w3.org/fots/fn/load-xquery-module/valid/module}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-load-xquery-module-062.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-load-xquery-module-063'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      let $module-ns := \"http://www.w3.org/fots/fn/load-xquery-module/valid/module\",
       $module := fn:load-xquery-module($module-ns, map{\"variables\" : map{\"wrong\":\"entry\"}})
      return $module
    ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "load-xquery-module/valid-module.xqm"), <<"Q{http://www.w3.org/fots/fn/load-xquery-module/valid/module}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-load-xquery-module-063.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-load-xquery-module-064'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      let $module-ns := \"http://www.w3.org/fots/fn/load-xquery-module/valid/module\",
       $module := fn:load-xquery-module($module-ns, map{\"variables\" : map{}})
      return
      ($module(\"variables\")(QName($module-ns, \"var1\")), $module(\"variables\")(QName($module-ns, \"var2\")), 
      $module(\"functions\")(QName($module-ns, \"func1\"))(0)(), $module(\"functions\")(QName($module-ns, \"func2\"))(0)())
    ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "load-xquery-module/valid-module.xqm"), <<"Q{http://www.w3.org/fots/fn/load-xquery-module/valid/module}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-load-xquery-module-064.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(\"var1\", \"var2\", \"func1\", \"func2\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-load-xquery-module-065'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      let $module-ns := \"http://www.w3.org/fots/fn/load-xquery-module/valid/module\",
       $module := fn:load-xquery-module($module-ns, map{\"variables\" : map{(QName($module-ns, \"wrong\")):\"not there\"}})
      return
      ($module(\"variables\")(QName($module-ns, \"var1\")), $module(\"variables\")(QName($module-ns, \"var2\")), 
      $module(\"functions\")(QName($module-ns, \"func1\"))(0)(), $module(\"functions\")(QName($module-ns, \"func2\"))(0)())
    ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "load-xquery-module/valid-module.xqm"), <<"Q{http://www.w3.org/fots/fn/load-xquery-module/valid/module}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-load-xquery-module-065.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(\"var1\", \"var2\", \"func1\", \"func2\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-load-xquery-module-066'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      let $module-ns := \"http://www.w3.org/fots/fn/load-xquery-module/valid/module\",
       $module := fn:load-xquery-module($module-ns, map{\"vendor-options\" : 42})      
      return $module
    ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "load-xquery-module/valid-module.xqm"), <<"Q{http://www.w3.org/fots/fn/load-xquery-module/valid/module}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-load-xquery-module-066.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-load-xquery-module-067'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      let $module-ns := \"http://www.w3.org/fots/fn/load-xquery-module/valid/module\",
       $module := fn:load-xquery-module($module-ns, map{\"vendor-options\" : map{\"wrong\":\"entry\"}})      
      return $module
    ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "load-xquery-module/valid-module.xqm"), <<"Q{http://www.w3.org/fots/fn/load-xquery-module/valid/module}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-load-xquery-module-067.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-load-xquery-module-068'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      let $module-ns := \"http://www.w3.org/fots/fn/load-xquery-module/valid/module\",
       $module := fn:load-xquery-module($module-ns, map{\"vendor-options\" : map{}})
      return
      ($module(\"variables\")(QName($module-ns, \"var1\")), $module(\"variables\")(QName($module-ns, \"var2\")), 
      $module(\"functions\")(QName($module-ns, \"func1\"))(0)(), $module(\"functions\")(QName($module-ns, \"func2\"))(0)())
    ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "load-xquery-module/valid-module.xqm"), <<"Q{http://www.w3.org/fots/fn/load-xquery-module/valid/module}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-load-xquery-module-068.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(\"var1\", \"var2\", \"func1\", \"func2\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-load-xquery-module-069'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      let $module-ns := \"http://www.w3.org/fots/fn/load-xquery-module/valid/module\",
       $module-unrec := \"http://www.w3.example/unrecognised/namespace/nobody/uses\",
       $module := fn:load-xquery-module($module-ns, map{\"vendor-options\" : 
      map{(QName($module-unrec, \"option\")):\"fake\"}})
      return
      ($module(\"variables\")(QName($module-ns, \"var1\")), $module(\"variables\")(QName($module-ns, \"var2\")), 
      $module(\"functions\")(QName($module-ns, \"func1\"))(0)(), $module(\"functions\")(QName($module-ns, \"func2\"))(0)())
    ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "load-xquery-module/valid-module.xqm"), <<"Q{http://www.w3.org/fots/fn/load-xquery-module/valid/module}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-load-xquery-module-069.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(\"var1\", \"var2\", \"func1\", \"func2\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-load-xquery-module-070'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      let $module-ns := \"http://www.w3.org/fots/fn/load-xquery-module/valid/module\",
       $module-unrec := \"http://www.w3.example/unrecognised/namespace/nobody/uses\",
       $module := fn:load-xquery-module($module-ns, map{\"nonexistant-option\" : \"ignored\"})
      return
      ($module(\"variables\")(QName($module-ns, \"var1\")), $module(\"variables\")(QName($module-ns, \"var2\")), 
      $module(\"functions\")(QName($module-ns, \"func1\"))(0)(), $module(\"functions\")(QName($module-ns, \"func2\"))(0)())
    ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "load-xquery-module/valid-module.xqm"), <<"Q{http://www.w3.org/fots/fn/load-xquery-module/valid/module}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-load-xquery-module-070.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(\"var1\", \"var2\", \"func1\", \"func2\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-load-xquery-module-071'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:load-xquery-module(\"http://www.w3.org/fots/fn/load-xquery-module/main/module\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "load-xquery-module/main-module.xqm"), <<"Q{http://www.w3.org/fots/fn/load-xquery-module/main/module}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-load-xquery-module-071.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_error(Res,"FOQM0003") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FOQM0003 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-load-xquery-module-072'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      let $module-ns := \"http://www.w3.org/fots/fn/load-xquery-module/valid/module\",
       $module := fn:load-xquery-module($module-ns, map{\"xquery-version\" : \"3.1\"})      
      return $module
    ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "load-xquery-module/valid-module.xqm"), <<"Q{http://www.w3.org/fots/fn/load-xquery-module/valid/module}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-load-xquery-module-072.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-load-xquery-module-073'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      let $module-ns := \"http://www.w3.org/fots/fn/load-xquery-module/valid/module\",
       $module := fn:load-xquery-module($module-ns, map{\"xquery-version\" : 3.1})
      return
      ($module(\"variables\")(QName($module-ns, \"var1\")), $module(\"variables\")(QName($module-ns, \"var2\")), 
      $module(\"functions\")(QName($module-ns, \"func1\"))(0)(), $module(\"functions\")(QName($module-ns, \"func2\"))(0)())
    ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "load-xquery-module/valid-module.xqm"), <<"Q{http://www.w3.org/fots/fn/load-xquery-module/valid/module}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-load-xquery-module-073.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(\"var1\", \"var2\", \"func1\", \"func2\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-load-xquery-module-901'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:fn-load-xquery-module"}. 
'fn-load-xquery-module-902'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:fn-load-xquery-module"}. 
'fn-load-xquery-module-903'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:fn-load-xquery-module"}. 
'fn-load-xquery-module-904'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:fn-load-xquery-module"}. 
'fn-load-xquery-module-905'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:fn-load-xquery-module"}. 
'fn-load-xquery-module-906'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:fn-load-xquery-module"}. 
'fn-load-xquery-module-907'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:fn-load-xquery-module"}. 
'fn-load-xquery-module-908'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:fn-load-xquery-module"}. 
'fn-load-xquery-module-909'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:fn-load-xquery-module"}. 
'fn-load-xquery-module-910'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:fn-load-xquery-module"}. 
'fn-load-xquery-module-911'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:fn-load-xquery-module"}. 
'fn-load-xquery-module-912'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:fn-load-xquery-module"}. 
'fn-load-xquery-module-913'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:fn-load-xquery-module"}. 
'fn-load-xquery-module-914'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:fn-load-xquery-module"}. 
'fn-load-xquery-module-915'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      let $module-ns := \"http://www.w3.org/fots/fn/load-xquery-module/valid/module\",
      $module := fn:load-xquery-module($module-ns, map{\"xquery-version\" : 93.7})      
      return $module
    ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "load-xquery-module/valid-module.xqm"), <<"Q{http://www.w3.org/fots/fn/load-xquery-module/valid/module}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-load-xquery-module-915.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_error(Res,"FOQM0006") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FOQM0006 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.