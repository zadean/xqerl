-module('fn_subsequence_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['fn-subsequence-mix-args-001'/1]).
-export(['fn-subsequence-mix-args-002'/1]).
-export(['fn-subsequence-mix-args-003'/1]).
-export(['fn-subsequence-mix-args-004'/1]).
-export(['fn-subsequence-mix-args-005'/1]).
-export(['fn-subsequence-mix-args-006'/1]).
-export(['fn-subsequence-mix-args-007'/1]).
-export(['fn-subsequence-mix-args-008'/1]).
-export(['fn-subsequence-mix-args-009'/1]).
-export(['fn-subsequence-mix-args-010'/1]).
-export(['fn-subsequence-mix-args-011'/1]).
-export(['fn-subsequence-mix-args-012'/1]).
-export(['fn-subsequence-mix-args-013'/1]).
-export(['fn-subsequence-mix-args-014'/1]).
-export(['fn-subsequence-mix-args-015'/1]).
-export(['fn-subsequence-mix-args-016'/1]).
-export(['fn-subsequence-mix-args-017'/1]).
-export(['fn-subsequence-mix-args-018'/1]).
-export(['fn-subsequence-mix-args-019'/1]).
-export(['fn-subsequence-mix-args-020'/1]).
-export(['fn-subsequence-mix-args-021'/1]).
-export(['fn-subsequence-mix-args-022'/1]).
-export(['fn-subsequence-mix-args-023'/1]).
-export(['fn-subsequence-mix-args-024'/1]).
-export(['K-SeqSubsequenceFunc-1'/1]).
-export(['K-SeqSubsequenceFunc-2'/1]).
-export(['K-SeqSubsequenceFunc-3'/1]).
-export(['K-SeqSubsequenceFunc-4'/1]).
-export(['K-SeqSubsequenceFunc-5'/1]).
-export(['K-SeqSubsequenceFunc-6'/1]).
-export(['K-SeqSubsequenceFunc-7'/1]).
-export(['K-SeqSubsequenceFunc-8'/1]).
-export(['K-SeqSubsequenceFunc-9'/1]).
-export(['K-SeqSubsequenceFunc-10'/1]).
-export(['K-SeqSubsequenceFunc-11'/1]).
-export(['K-SeqSubsequenceFunc-12'/1]).
-export(['K-SeqSubsequenceFunc-13'/1]).
-export(['K-SeqSubsequenceFunc-14'/1]).
-export(['K-SeqSubsequenceFunc-15'/1]).
-export(['K-SeqSubsequenceFunc-16'/1]).
-export(['K-SeqSubsequenceFunc-17'/1]).
-export(['K-SeqSubsequenceFunc-18'/1]).
-export(['K-SeqSubsequenceFunc-19'/1]).
-export(['K-SeqSubsequenceFunc-20'/1]).
-export(['K-SeqSubsequenceFunc-21'/1]).
-export(['K-SeqSubsequenceFunc-22'/1]).
-export(['K-SeqSubsequenceFunc-23'/1]).
-export(['K-SeqSubsequenceFunc-24'/1]).
-export(['K-SeqSubsequenceFunc-25'/1]).
-export(['K-SeqSubsequenceFunc-26'/1]).
-export(['K-SeqSubsequenceFunc-27'/1]).
-export(['K-SeqSubsequenceFunc-28'/1]).
-export(['K-SeqSubsequenceFunc-29'/1]).
-export(['K-SeqSubsequenceFunc-30'/1]).
-export(['K-SeqSubsequenceFunc-31'/1]).
-export(['K-SeqSubsequenceFunc-32'/1]).
-export(['K-SeqSubsequenceFunc-33'/1]).
-export(['K-SeqSubsequenceFunc-34'/1]).
-export(['K-SeqSubsequenceFunc-35'/1]).
-export(['K-SeqSubsequenceFunc-36'/1]).
-export(['K-SeqSubsequenceFunc-37'/1]).
-export(['K-SeqSubsequenceFunc-38'/1]).
-export(['K-SeqSubsequenceFunc-39'/1]).
-export(['K-SeqSubsequenceFunc-40'/1]).
-export(['K-SeqSubsequenceFunc-41'/1]).
-export(['K-SeqSubsequenceFunc-42'/1]).
-export(['K-SeqSubsequenceFunc-43'/1]).
-export(['K-SeqSubsequenceFunc-44'/1]).
-export(['K2-SeqSubsequenceFunc-1'/1]).
-export(['K2-SeqSubsequenceFunc-2'/1]).
-export(['K2-SeqSubsequenceFunc-3'/1]).
-export(['K2-SeqSubsequenceFunc-4'/1]).
-export(['K2-SeqSubsequenceFunc-5'/1]).
-export(['K2-SeqSubsequenceFunc-6'/1]).
-export(['K2-SeqSubsequenceFunc-7'/1]).
-export(['K2-SeqSubsequenceFunc-8'/1]).
-export(['K2-SeqSubsequenceFunc-9'/1]).
-export(['K2-SeqSubsequenceFunc-10'/1]).
-export(['cbcl-subsequence-001'/1]).
-export(['cbcl-subsequence-002'/1]).
-export(['cbcl-subsequence-003'/1]).
-export(['cbcl-subsequence-004'/1]).
-export(['cbcl-subsequence-005'/1]).
-export(['cbcl-subsequence-006'/1]).
-export(['cbcl-subsequence-007'/1]).
-export(['cbcl-subsequence-008'/1]).
-export(['cbcl-subsequence-009'/1]).
-export(['cbcl-subsequence-010'/1]).
-export(['cbcl-subsequence-011'/1]).
-export(['cbcl-subsequence-012'/1]).
-export(['cbcl-subsequence-013'/1]).
-export(['cbcl-subsequence-014'/1]).
-export(['cbcl-subsequence-015'/1]).
-export(['cbcl-subsequence-016'/1]).
-export(['cbcl-subsequence-017'/1]).
-export(['cbcl-subsequence-018'/1]).
-export(['cbcl-subsequence-019'/1]).
-export(['cbcl-subsequence-020'/1]).
-export(['cbcl-subsequence-021'/1]).
-export(['cbcl-subsequence-022'/1]).
-export(['cbcl-subsequence-023'/1]).
-export(['cbcl-subsequence-024'/1]).
-export(['cbcl-subsequence-025'/1]).
-export(['cbcl-subsequence-026'/1]).
-export(['cbcl-subsequence-027'/1]).
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
   {group, group_3}, 
   {group, group_4}
   ].
groups() -> [
   {group_0, [parallel], [
    'fn-subsequence-mix-args-001', 
    'fn-subsequence-mix-args-002', 
    'fn-subsequence-mix-args-003', 
    'fn-subsequence-mix-args-004', 
    'fn-subsequence-mix-args-005', 
    'fn-subsequence-mix-args-006', 
    'fn-subsequence-mix-args-007', 
    'fn-subsequence-mix-args-008', 
    'fn-subsequence-mix-args-009', 
    'fn-subsequence-mix-args-010', 
    'fn-subsequence-mix-args-011', 
    'fn-subsequence-mix-args-012', 
    'fn-subsequence-mix-args-013', 
    'fn-subsequence-mix-args-014', 
    'fn-subsequence-mix-args-015', 
    'fn-subsequence-mix-args-016', 
    'fn-subsequence-mix-args-017', 
    'fn-subsequence-mix-args-018', 
    'fn-subsequence-mix-args-019', 
    'fn-subsequence-mix-args-020', 
    'fn-subsequence-mix-args-021', 
    'fn-subsequence-mix-args-022', 
    'fn-subsequence-mix-args-023']}, 
   {group_1, [parallel], [
    'fn-subsequence-mix-args-024', 
    'K-SeqSubsequenceFunc-1', 
    'K-SeqSubsequenceFunc-2', 
    'K-SeqSubsequenceFunc-3', 
    'K-SeqSubsequenceFunc-4', 
    'K-SeqSubsequenceFunc-5', 
    'K-SeqSubsequenceFunc-6', 
    'K-SeqSubsequenceFunc-7', 
    'K-SeqSubsequenceFunc-8', 
    'K-SeqSubsequenceFunc-9', 
    'K-SeqSubsequenceFunc-10', 
    'K-SeqSubsequenceFunc-11', 
    'K-SeqSubsequenceFunc-12', 
    'K-SeqSubsequenceFunc-13', 
    'K-SeqSubsequenceFunc-14', 
    'K-SeqSubsequenceFunc-15', 
    'K-SeqSubsequenceFunc-16', 
    'K-SeqSubsequenceFunc-17', 
    'K-SeqSubsequenceFunc-18', 
    'K-SeqSubsequenceFunc-19', 
    'K-SeqSubsequenceFunc-20', 
    'K-SeqSubsequenceFunc-21', 
    'K-SeqSubsequenceFunc-22', 
    'K-SeqSubsequenceFunc-23']}, 
   {group_2, [parallel], [
    'K-SeqSubsequenceFunc-24', 
    'K-SeqSubsequenceFunc-25', 
    'K-SeqSubsequenceFunc-26', 
    'K-SeqSubsequenceFunc-27', 
    'K-SeqSubsequenceFunc-28', 
    'K-SeqSubsequenceFunc-29', 
    'K-SeqSubsequenceFunc-30', 
    'K-SeqSubsequenceFunc-31', 
    'K-SeqSubsequenceFunc-32', 
    'K-SeqSubsequenceFunc-33', 
    'K-SeqSubsequenceFunc-34', 
    'K-SeqSubsequenceFunc-35', 
    'K-SeqSubsequenceFunc-36', 
    'K-SeqSubsequenceFunc-37', 
    'K-SeqSubsequenceFunc-38', 
    'K-SeqSubsequenceFunc-39', 
    'K-SeqSubsequenceFunc-40', 
    'K-SeqSubsequenceFunc-41', 
    'K-SeqSubsequenceFunc-42', 
    'K-SeqSubsequenceFunc-43', 
    'K-SeqSubsequenceFunc-44', 
    'K2-SeqSubsequenceFunc-1', 
    'K2-SeqSubsequenceFunc-2', 
    'K2-SeqSubsequenceFunc-3']}, 
   {group_3, [parallel], [
    'K2-SeqSubsequenceFunc-4', 
    'K2-SeqSubsequenceFunc-5', 
    'K2-SeqSubsequenceFunc-6', 
    'K2-SeqSubsequenceFunc-7', 
    'K2-SeqSubsequenceFunc-8', 
    'K2-SeqSubsequenceFunc-9', 
    'K2-SeqSubsequenceFunc-10', 
    'cbcl-subsequence-001', 
    'cbcl-subsequence-002', 
    'cbcl-subsequence-003', 
    'cbcl-subsequence-004', 
    'cbcl-subsequence-005', 
    'cbcl-subsequence-006', 
    'cbcl-subsequence-007', 
    'cbcl-subsequence-008', 
    'cbcl-subsequence-009', 
    'cbcl-subsequence-010', 
    'cbcl-subsequence-011', 
    'cbcl-subsequence-012', 
    'cbcl-subsequence-013', 
    'cbcl-subsequence-014', 
    'cbcl-subsequence-015', 
    'cbcl-subsequence-016', 
    'cbcl-subsequence-017']}, 
   {group_4, [parallel], [
    'cbcl-subsequence-018', 
    'cbcl-subsequence-019', 
    'cbcl-subsequence-020', 
    'cbcl-subsequence-021', 
    'cbcl-subsequence-022', 
    'cbcl-subsequence-023', 
    'cbcl-subsequence-024', 
    'cbcl-subsequence-025', 
    'cbcl-subsequence-026', 
    'cbcl-subsequence-027']}].

'fn-subsequence-mix-args-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:subsequence( (\"a\", \"b\", \"c\"), 1, 1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-subsequence-mix-args-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"a\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-subsequence-mix-args-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:subsequence( (\"a\", \"b\", \"c\"), 3, 12)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-subsequence-mix-args-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"c\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-subsequence-mix-args-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:subsequence( (\"a\", xs:string(\"\"),\"b\", \"c\"), 1, 3)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-subsequence-mix-args-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"a\", \"\", \"b\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-subsequence-mix-args-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:subsequence( (\"a\", xs:string(\"hello\"),\"b\", \"c\"), 1, 3)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-subsequence-mix-args-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"a\", \"hello\", \"b\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-subsequence-mix-args-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:subsequence( (\"a\", xs:anyURI(\"www.example.com\"),\"b\", \"c\"), 1, 3)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-subsequence-mix-args-005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"a\", \"www.example.com\", \"b\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-subsequence-mix-args-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:subsequence( (\"a\", (), (), \"b\", \"c\"), 1, 3)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-subsequence-mix-args-006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"a\", \"b\", \"c\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-subsequence-mix-args-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:subsequence( (\"a\", xs:integer(\"100\"), xs:integer(\"-100\"), \"b\", \"c\"),2,4)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-subsequence-mix-args-007.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"100, -100, \"b\", \"c\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-subsequence-mix-args-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:subsequence( (\"a\", xs:decimal(\"-1.000000000001\"), xs:integer(\"-100\"), \"b\", \"c\"), 2,3)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-subsequence-mix-args-008.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"-1.000000000001, -100, \"b\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-subsequence-mix-args-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:subsequence( (\"a\", xs:float(\"INF\"), \"b\", \"c\"),-2,3)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-subsequence-mix-args-009.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-subsequence-mix-args-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:subsequence ( (\"a\", xs:float(\"-INF\"), \"b\", \"c\"), 1,2)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-subsequence-mix-args-010.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"a\", xs:float(\"-INF\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-subsequence-mix-args-011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:subsequence ( (\"a\", xs:float(\"NaN\"), \"b\", \"c\"), 0, 2)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-subsequence-mix-args-011.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"a\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-subsequence-mix-args-012'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:subsequence ( (\"a\", xs:float(\"1.01\"), \"b\", \"c\"), 2,4)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-subsequence-mix-args-012.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1.01, \"b\", \"c\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-subsequence-mix-args-013'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:subsequence ( (\"a\", xs:double(\"NaN\"), \"b\", \"c\"), 2, 20)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-subsequence-mix-args-013.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:double('NaN'), \"b\", \"c\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-subsequence-mix-args-014'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:subsequence ( (\"a\", xs:double(\"1.01\"), \"b\", \"c\"), 2,3)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-subsequence-mix-args-014.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1.01, \"b\", \"c\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-subsequence-mix-args-015'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:subsequence ( (\"a\", xs:double(\"-INF\"), \"b\", \"c\"), 2,2)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-subsequence-mix-args-015.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:double('-INF'), \"b\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-subsequence-mix-args-016'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:subsequence ( (\"a\", xs:double(\"INF\"), \"b\", \"c\"), 2, 1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-subsequence-mix-args-016.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"xs:double(\"INF\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-subsequence-mix-args-017'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:subsequence ( (\"a\", xs:boolean(\"1\"), \"b\", \"c\"), 1,2)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-subsequence-mix-args-017.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"a\", true()") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-subsequence-mix-args-018'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:subsequence ( (\"a\", xs:boolean(\"0\"), \"b\", \"c\"), 2,1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-subsequence-mix-args-018.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-subsequence-mix-args-019'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:subsequence ( (\"a\", xs:boolean(\"true\"), \"b\", \"c\"), 1,2)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-subsequence-mix-args-019.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"a\", true()") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-subsequence-mix-args-020'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:subsequence ( (\"a\", xs:boolean(\"false\"), \"b\", \"c\"), 1, 3)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-subsequence-mix-args-020.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"a\", false(), \"b\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-subsequence-mix-args-021'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:subsequence ( (\"a\", xs:date(\"1993-03-31\"), \"b\", \"c\"), 1,2)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-subsequence-mix-args-021.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"a\", xs:date('1993-03-31')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-subsequence-mix-args-022'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:subsequence ( (\"a\", xs:dateTime(\"1972-12-31T00:00:00\"), \"b\", \"c\"), 0,2)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-subsequence-mix-args-022.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"a\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-subsequence-mix-args-023'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:subsequence ( (\"a\", xs:time(\"12:30:00\"), \"b\", \"c\"), 1, 2)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-subsequence-mix-args-023.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"a\", xs:time('12:30:00')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-subsequence-mix-args-024'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:subsequence (1 to 10, xs:double('-INF'), xs:double('INF'))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-subsequence-mix-args-024.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSubsequenceFunc-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "subsequence()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqSubsequenceFunc-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSubsequenceFunc-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "subsequence(1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqSubsequenceFunc-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSubsequenceFunc-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "subsequence(1, 1, 1, 1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqSubsequenceFunc-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSubsequenceFunc-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(subsequence((), 2, 3))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqSubsequenceFunc-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XPST0005") of 
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
'K-SeqSubsequenceFunc-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(subsequence((1, 2, 3), 2, -10))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqSubsequenceFunc-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSubsequenceFunc-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(subsequence((1, 2, 3, \"four\"), 4)) eq 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqSubsequenceFunc-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSubsequenceFunc-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(subsequence((1, 2, 3, \"four\"), 4, 1)) eq 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqSubsequenceFunc-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSubsequenceFunc-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "subsequence((1, 2, 3.1, \"four\"), 4)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqSubsequenceFunc-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"four\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSubsequenceFunc-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "subsequence((1, 2, 3.1, \"four\"), 4, 1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqSubsequenceFunc-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"four\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSubsequenceFunc-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "subsequence((1, 2, 3.1, \"four\"), 3, 1) instance of xs:decimal", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqSubsequenceFunc-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSubsequenceFunc-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "subsequence((1, 2, 3.1, \"four\"), 1, 1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqSubsequenceFunc-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSubsequenceFunc-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(subsequence((1, 2, 3, \"four\"), 4, -3))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqSubsequenceFunc-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSubsequenceFunc-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(subsequence((1, 2, 3, \"four\"), -4, -3))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqSubsequenceFunc-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSubsequenceFunc-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "subsequence((1, 2, 3), 1, 1) eq 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqSubsequenceFunc-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSubsequenceFunc-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "subsequence((1, 2, 3), 1, 1) eq 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqSubsequenceFunc-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSubsequenceFunc-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "subsequence((1, 2, 3), 3) eq 3", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqSubsequenceFunc-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSubsequenceFunc-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(subsequence((1, 2, 3), 1, 1)) eq 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqSubsequenceFunc-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSubsequenceFunc-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(subsequence((1, 2, 3), 1, 3)) eq 3", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqSubsequenceFunc-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSubsequenceFunc-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(subsequence((1, 2, 3, \"four\"), 4)) eq 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqSubsequenceFunc-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSubsequenceFunc-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(subsequence(1 to 3, 1, 1)) eq 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqSubsequenceFunc-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSubsequenceFunc-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(subsequence((1, 2), 4))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqSubsequenceFunc-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSubsequenceFunc-22'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "subsequence((5, 6, 7, 8), 2, 1) eq 6", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqSubsequenceFunc-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSubsequenceFunc-23'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(subsequence((1, 2), 2)) eq 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqSubsequenceFunc-23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSubsequenceFunc-24'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(subsequence((1, 2, 3, \"four\"), 2)) eq 3", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqSubsequenceFunc-24.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSubsequenceFunc-25'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(subsequence((1, 2, 3, \"four\"), 2, 2)) eq 2", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqSubsequenceFunc-25.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSubsequenceFunc-26'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "subsequence((1, 2, 3.1, \"four\"), 1, 1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqSubsequenceFunc-26.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSubsequenceFunc-27'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1 eq \"a string\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqSubsequenceFunc-27.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSubsequenceFunc-28'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1 eq subsequence((\"1\", 2, 3.1, \"four\"), 1, 1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqSubsequenceFunc-28.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSubsequenceFunc-29'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "subsequence((\"1\", 2, 3.1, \"four\"), 1, 1) eq 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqSubsequenceFunc-29.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSubsequenceFunc-30'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "subsequence(error(), 1, 1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqSubsequenceFunc-30.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOER0000") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSubsequenceFunc-31'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(subsequence((1, 2, 2, current-time()), 2, 2)) eq 2", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqSubsequenceFunc-31.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSubsequenceFunc-32'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(subsequence(remove(current-time(), 1), 1, 1)) eq 0", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqSubsequenceFunc-32.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSubsequenceFunc-33'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "deep-equal(1, subsequence((1, 2, current-time()), 1, 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqSubsequenceFunc-33.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSubsequenceFunc-34'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(1)[deep-equal(1, subsequence((1, 2, current-time()), 1, 1))] eq 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqSubsequenceFunc-34.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSubsequenceFunc-35'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(subsequence((current-time(), 1), 4))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqSubsequenceFunc-35.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSubsequenceFunc-36'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(subsequence((current-time(), 1), 4)) eq 0", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqSubsequenceFunc-36.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSubsequenceFunc-37'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(subsequence((current-time(), 2 , 3), 1)) eq 3", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqSubsequenceFunc-37.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSubsequenceFunc-38'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(subsequence((current-time(), 2 , 3), 3)) eq 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqSubsequenceFunc-38.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSubsequenceFunc-39'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(subsequence((current-time(), 2 , 3, 4), 2, 2)) eq 2", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqSubsequenceFunc-39.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSubsequenceFunc-40'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "subsequence((1, 2, 3, current-time(), 5, 6, 7), 1, 1)[1]", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqSubsequenceFunc-40.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSubsequenceFunc-41'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "subsequence((1, 2, 3, current-time(), 5, 6, 9), 7)[last()]", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqSubsequenceFunc-41.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"9") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSubsequenceFunc-42'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "subsequence((1, 2, 3, current-time(), 5, 6, 7), 4)[last() - 1]", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqSubsequenceFunc-42.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"6") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSubsequenceFunc-43'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(subsequence((1, 2, 3, current-time(), 5, 6, 7), 4, 1)[last() - 10])", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqSubsequenceFunc-43.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSubsequenceFunc-44'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(subsequence((1, 2, 3, current-time(), 5, 6, 7), 1, 1)[2])", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqSubsequenceFunc-44.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqSubsequenceFunc-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $start := (current-time(), 2)[2] treat as xs:integer,
                $len := (current-time(), 1)[2] treat as xs:integer
                return subsequence((1, 2, 3), $start, $len)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqSubsequenceFunc-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqSubsequenceFunc-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "subsequence((1, 2, 3), 1, 0)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqSubsequenceFunc-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqSubsequenceFunc-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "subsequence((1, 2, 3, 4, 5), 4, -1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqSubsequenceFunc-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqSubsequenceFunc-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:subsequence((1,2,3), 1.1, 1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqSubsequenceFunc-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqSubsequenceFunc-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:subsequence((1,2,3), 1.8, 1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqSubsequenceFunc-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqSubsequenceFunc-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:subsequence((1,2,3), 1.4, 1.4)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqSubsequenceFunc-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqSubsequenceFunc-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:subsequence((1,2,3), 1.5, 1.5)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqSubsequenceFunc-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"2, 3") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqSubsequenceFunc-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $f :=function() { subsequence(subsequence((1, 2, 3, 4), 3, 1), 1, 4) } return $f()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqSubsequenceFunc-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"3") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqSubsequenceFunc-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $f :=function() { subsequence((1, 2, 3), 1) } return $f()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqSubsequenceFunc-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1, 2, 3") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqSubsequenceFunc-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "subsequence((1, 2, 3), 1, \"string\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqSubsequenceFunc-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-subsequence-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        count(subsequence(1 to 10, xs:double(\"-INF\"), xs:double(\"INF\")))
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-subsequence-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-subsequence-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(subsequence(1 to 10, 2, xs:double(\"NaN\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-subsequence-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-subsequence-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(subsequence(1 to 10, xs:double(\"NaN\"), 4))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-subsequence-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-subsequence-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(subsequence(1 to 10, xs:double(\"-INF\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-subsequence-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "10") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-subsequence-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(subsequence(1 to 10, xs:double(\"NaN\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-subsequence-005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-subsequence-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        subsequence((1, 2, for $x in 1 to 10 return 2*$x), 2, year-from-date(current-date()))
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-subsequence-006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2 2 4 6 8 10 12 14 16 18 20") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-subsequence-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        subsequence((1, 2, for $x in 1 to 10 return 2*$x), -1, sum((1 to 10)[. mod 10 = 3]))
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-subsequence-007.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-subsequence-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "subsequence(1 to 100, 99, 2147483648)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-subsequence-008.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "99 100") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XPDY0130") of 
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
'cbcl-subsequence-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(subsequence(1 to 100, -2147483648, 20))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-subsequence-009.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-subsequence-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(subsequence(1 to 3000000000, -2147483648, 2147483647))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-subsequence-010.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XPDY0130") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-subsequence-011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(subsequence(1 to 3000000000, -2147483649))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-subsequence-011.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"3000000000") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XPDY0130") of 
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
'cbcl-subsequence-012'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(subsequence(1 to 3000000000, 2147483648))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-subsequence-012.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"852516353") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XPDY0130") of 
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
'cbcl-subsequence-013'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(subsequence(1 to 3000000000, 2147483647))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-subsequence-013.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"852516354") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XPDY0130") of 
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
'cbcl-subsequence-014'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "subsequence(1 to 3000000000, 2147483647, 5)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-subsequence-014.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "2147483647 2147483648 2147483649 2147483650 2147483651") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XPDY0130") of 
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
'cbcl-subsequence-015'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "subsequence(for $x in (1 to 100) return -$x, 3, 5)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-subsequence-015.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-3 -4 -5 -6 -7") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-subsequence-016'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        subsequence( for $x in 1 to 10 return 1 to $x, count(for $x in 0 to 10 return 1 to $x), 1)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-subsequence-016.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "10") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-subsequence-017'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        subsequence(for $x in 1 to 10 return 1 to $x, 1.2, xs:double(\"INF\"))
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-subsequence-017.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 1 2 1 2 3 1 2 3 4 1 2 3 4 5 1 2 3 4 5 6 1 2 3 4 5 6 7 1 2 3 4 5 6 7 8 1 2 3 4 5 6 7 8 9 1 2 3 4 5 6 7 8 9 10") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-subsequence-018'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        subsequence(for $x in 1 to 10 return 1 to $x, 4.2, xs:double(\"INF\"))
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-subsequence-018.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 2 3 1 2 3 4 1 2 3 4 5 1 2 3 4 5 6 1 2 3 4 5 6 7 1 2 3 4 5 6 7 8 1 2 3 4 5 6 7 8 9 1 2 3 4 5 6 7 8 9 10") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-subsequence-019'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        let $y := for $x in 1 to 10 return $x * $x return subsequence($y, count($y), 3)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-subsequence-019.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "100") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-subsequence-020'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "subsequence(for $x in 1 to 10 return $x[. mod 2 = 0],2,4)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-subsequence-020.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "4 6 8 10") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-subsequence-021'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "subsequence(for $x in 1 to 10 return $x[. mod 2 = 0],2)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-subsequence-021.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "4 6 8 10") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-subsequence-022'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "subsequence((1 to 20)[. mod 2 = 0][position() < 5],2)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-subsequence-022.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "4 6 8") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-subsequence-023'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "subsequence(for $x in 1 to 10 return $x * $x,2)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-subsequence-023.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "4 9 16 25 36 49 64 81 100") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-subsequence-024'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        subsequence((1 to 100)[. mod 2 = 0],1,xs:double(string-join(('I','N','F')[position() mod 2 >= 0],'')))
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-subsequence-024.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2 4 6 8 10 12 14 16 18 20 22 24 26 28 30 32 34 36 38 40 42 44 46 48 50 52 54 56 58 60 62 64 66 68 70 72 74 76 78 80 82 84 86 88 90 92 94 96 98 100") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-subsequence-025'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(<a><b/></a>/*/subsequence(.,1,1)/..)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-subsequence-025.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-subsequence-026'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        let $x := (1 to 10)[. mod 2 = 0] return subsequence((0,$x),3,count($x) div 2)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-subsequence-026.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "4 6 8") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-subsequence-027'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        let $z := (1 to 10)[. mod 2 = 0] return subsequence(for $x in $z return floor($x),2,4)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-subsequence-027.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "4 6 8 10") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.