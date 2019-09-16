-module('fn_compare_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['fn-compare2args-1'/1]).
-export(['fn-compare2args-2'/1]).
-export(['fn-compare2args-3'/1]).
-export(['fn-compare2args-4'/1]).
-export(['fn-compare2args-5'/1]).
-export(['fn-compare-1'/1]).
-export(['fn-compare-2'/1]).
-export(['fn-compare-3'/1]).
-export(['fn-compare-4'/1]).
-export(['fn-compare-5'/1]).
-export(['fn-compare-6'/1]).
-export(['fn-compare-7'/1]).
-export(['fn-compare-8'/1]).
-export(['fn-compare-9'/1]).
-export(['fn-compare-10'/1]).
-export(['fn-compare-11'/1]).
-export(['fn-compare-12'/1]).
-export(['fn-compare-13'/1]).
-export(['fn-compare-14'/1]).
-export(['fn-compare-15'/1]).
-export(['fn-compare-16'/1]).
-export(['fn-compare-17'/1]).
-export(['fn-compare-18'/1]).
-export(['fn-compare-19'/1]).
-export(['fn-compare-20'/1]).
-export(['fn-compare-21'/1]).
-export(['fn-compare-22'/1]).
-export(['K-compareFunc-1'/1]).
-export(['K-compareFunc-2'/1]).
-export(['K-compareFunc-3'/1]).
-export(['K-compareFunc-4'/1]).
-export(['K-compareFunc-5'/1]).
-export(['K-compareFunc-6'/1]).
-export(['K-compareFunc-7'/1]).
-export(['K-compareFunc-8'/1]).
-export(['K-compareFunc-9'/1]).
-export(['K-compareFunc-10'/1]).
-export(['K-compareFunc-11'/1]).
-export(['K-compareFunc-12'/1]).
-export(['K-compareFunc-13'/1]).
-export(['K-compareFunc-14'/1]).
-export(['K-compareFunc-15'/1]).
-export(['compare-001'/1]).
-export(['compare-002'/1]).
-export(['compare-003'/1]).
-export(['compare-004'/1]).
-export(['compare-005'/1]).
-export(['compare-006'/1]).
-export(['compare-007'/1]).
-export(['compare-008'/1]).
-export(['compare-009'/1]).
-export(['compare-010'/1]).
-export(['compare-011'/1]).
-export(['compare-012'/1]).
-export(['compare-013'/1]).
-export(['compare-014'/1]).
-export(['compare-015'/1]).
-export(['compare-016'/1]).
-export(['compare-017'/1]).
-export(['compare-018'/1]).
-export(['compare-019'/1]).
-export(['compare-020'/1]).
-export(['compare-021'/1]).
-export(['compare-022'/1]).
-export(['compare-023'/1]).
-export(['compare-024'/1]).
-export(['compare-025'/1]).
-export(['compare-026'/1]).
-export(['compare-027'/1]).
-export(['compare-028'/1]).
-export(['compare-029'/1]).
-export(['compare-030'/1]).
-export(['compare-031'/1]).
-export(['compare-032'/1]).
-export(['compare-033'/1]).
-export(['compare-034'/1]).
-export(['compare-035'/1]).
-export(['compare-036'/1]).
-export(['compare-037'/1]).
-export(['compare-038'/1]).
-export(['compare-039'/1]).
-export(['compare-040'/1]).
-export(['compare-041'/1]).
-export(['compare-042'/1]).
-export(['compare-043'/1]).
-export(['compare-044'/1]).
-export(['compare-045'/1]).
-export(['K2-CompareFunc-1'/1]).
-export(['K2-CompareFunc-2'/1]).
-export(['K2-CompareFunc-3'/1]).
-export(['K2-CompareFunc-4'/1]).
-export(['K2-CompareFunc-5'/1]).
-export(['K2-CompareFunc-6'/1]).
-export(['K2-CompareFunc-7'/1]).
-export(['K2-CompareFunc-8'/1]).
-export(['K2-CompareFunc-9'/1]).
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
   {group, group_0}, 
   {group, group_1}, 
   {group, group_2}, 
   {group, group_3}, 
   {group, group_4}
   ].
groups() -> [
   {group_0, [parallel], [
    'fn-compare2args-1', 
    'fn-compare2args-2', 
    'fn-compare2args-3', 
    'fn-compare2args-4', 
    'fn-compare2args-5', 
    'fn-compare-1', 
    'fn-compare-2', 
    'fn-compare-3', 
    'fn-compare-4', 
    'fn-compare-5', 
    'fn-compare-6', 
    'fn-compare-7', 
    'fn-compare-8', 
    'fn-compare-9', 
    'fn-compare-10', 
    'fn-compare-11', 
    'fn-compare-12', 
    'fn-compare-13', 
    'fn-compare-14', 
    'fn-compare-15', 
    'fn-compare-16', 
    'fn-compare-17', 
    'fn-compare-18']}, 
   {group_1, [parallel], [
    'fn-compare-19', 
    'fn-compare-20', 
    'fn-compare-21', 
    'fn-compare-22', 
    'K-compareFunc-1', 
    'K-compareFunc-2', 
    'K-compareFunc-3', 
    'K-compareFunc-4', 
    'K-compareFunc-5', 
    'K-compareFunc-6', 
    'K-compareFunc-7', 
    'K-compareFunc-8', 
    'K-compareFunc-9', 
    'K-compareFunc-10', 
    'K-compareFunc-11', 
    'K-compareFunc-12', 
    'K-compareFunc-13', 
    'K-compareFunc-14', 
    'K-compareFunc-15', 
    'compare-001', 
    'compare-002', 
    'compare-003', 
    'compare-004', 
    'compare-005']}, 
   {group_2, [parallel], [
    'compare-006', 
    'compare-007', 
    'compare-008', 
    'compare-009', 
    'compare-010', 
    'compare-011', 
    'compare-012', 
    'compare-013', 
    'compare-014', 
    'compare-015', 
    'compare-016', 
    'compare-017', 
    'compare-018', 
    'compare-019', 
    'compare-020', 
    'compare-021', 
    'compare-022', 
    'compare-023', 
    'compare-024', 
    'compare-025', 
    'compare-026', 
    'compare-027', 
    'compare-028', 
    'compare-029']}, 
   {group_3, [parallel], [
    'compare-030', 
    'compare-031', 
    'compare-032', 
    'compare-033', 
    'compare-034', 
    'compare-035', 
    'compare-036', 
    'compare-037', 
    'compare-038', 
    'compare-039', 
    'compare-040', 
    'compare-041', 
    'compare-042', 
    'compare-043', 
    'compare-044', 
    'compare-045', 
    'K2-CompareFunc-1', 
    'K2-CompareFunc-2', 
    'K2-CompareFunc-3', 
    'K2-CompareFunc-4', 
    'K2-CompareFunc-5', 
    'K2-CompareFunc-6', 
    'K2-CompareFunc-7', 
    'K2-CompareFunc-8']}, 
   {group_4, [parallel], [
    'K2-CompareFunc-9']}].

'fn-compare2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:compare(xs:string(\"This is a characte\"),xs:string(\"This is a characte\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-compare2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-compare2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:compare(xs:string(\"This is a characte\"),xs:string(\"This is a characte\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-compare2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-compare2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:compare(xs:string(\"This is a characte\"),xs:string(\"This is a characte\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-compare2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-compare2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:compare(xs:string(\"This is a characte\"),xs:string(\"This is a characte\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-compare2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-compare2args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:compare(xs:string(\"This is a characte\"),xs:string(\"This is a characte\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-compare2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-compare-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:compare(\"\",\"\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-compare-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-compare-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:compare(\"\",\"A Character String\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-compare-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-compare-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:compare(\"A Character String\",\"\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-compare-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-compare-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(fn:compare((),\"\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-compare-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-compare-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(fn:compare(\"\",()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-compare-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-compare-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(fn:compare(\"A Character String\",()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-compare-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-compare-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(fn:compare((),\"A Character String\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-compare-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-compare-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:compare(\"AAAAABBBBBCCCCC\",\"BBBBB\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-compare-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-compare-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:compare(\"AAAAABBBBB\",\" \")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-compare-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-compare-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:compare(\" \",\"AAAAABBBBB\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-compare-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-compare-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:not(fn:compare(\"A\",\"A\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-compare-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-compare-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:not(fn:compare(\"A\",\"B\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-compare-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-compare-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:compare(xs:string(\"A\"),\"A\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-compare-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-compare-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:compare(\"A\",xs:string(\"A\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-compare-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-compare-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:compare(\"A\",\"a\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-compare-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-compare-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:compare(\"a\",\"A\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-compare-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-compare-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:compare(\"compare\",\"compare\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-compare-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-compare-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:compare(\"comparecompare\",\"compare\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-compare-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-compare-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:compare(\"****\",\"***\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-compare-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-compare-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:compare(\"12345\",\"1234\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-compare-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-compare-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:compare(\"compare\",\"erapmoc\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-compare-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-compare-22'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:compare(\"a\",\"a\",\"CollationA\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-compare-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FOCH0002 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-compareFunc-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "codepoint-equal()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-compareFunc-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPST0017 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-compareFunc-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "codepoint-equal(())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-compareFunc-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPST0017 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-compareFunc-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "codepoint-equal((), (), ())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-compareFunc-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPST0017 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-compareFunc-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(codepoint-equal((), \"a string\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-compareFunc-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-compareFunc-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(codepoint-equal(\"a string\", ()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-compareFunc-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-compareFunc-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "codepoint-equal(\"a string\", \"a string\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-compareFunc-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-compareFunc-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(codepoint-equal(\"cow\", \"a string\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-compareFunc-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-compareFunc-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-compareFunc-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPST0017 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-compareFunc-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare(())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-compareFunc-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPST0017 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-compareFunc-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare((), (), \"http://www.w3.org/2005/xpath-functions/collation/codepoint\", \"wrong param\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-compareFunc-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPST0017 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-compareFunc-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(compare((), \"a string\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-compareFunc-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-compareFunc-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(compare(\"a string\", ()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-compareFunc-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-compareFunc-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(compare(\"a string\", (), \"http://www.w3.org/2005/xpath-functions/collation/codepoint\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-compareFunc-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-compareFunc-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare(\"str\", \"str\") instance of xs:integer", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-compareFunc-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-compareFunc-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(compare(\"a string\", \"a string\", \"http://www.example.com/COLLATION/NOT/SUPPORTED\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-compareFunc-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FOCH0002 " ++ binary_to_list(F)};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'compare-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare(\"a\", \"b\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "compare-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_type(Res,"xs:integer") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'compare-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare(\"b\", \"a\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "compare-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'compare-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare(\"b\", \"b\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "compare-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'compare-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare(\"b\", ())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "compare-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'compare-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare((), \"b\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "compare-005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'compare-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare((), ())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "compare-006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'compare-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare(\"𐀁\", \"𐀂\", \"http://www.w3.org/2005/xpath-functions/collation/codepoint\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "compare-007.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'compare-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare(\"𐀁\", \"￰\", \"http://www.w3.org/2005/xpath-functions/collation/codepoint\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "compare-008.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'compare-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare(\"𐀁\", \"￰\", \"http://www.w3.org/2005/xpath-functions/collation/codepoint\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "compare-009.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'compare-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare(\"a\", \"A\", \"http://www.w3.org/2010/09/qt-fots-catalog/collation/caseblind\")", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
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
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "compare-010.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'compare-011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare(123, 456)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "compare-011.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'compare-012'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare(xs:anyURI('http://www.example.com/'), 'http://www.example.com/')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "compare-012.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'compare-013'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare(xs:untypedAtomic('http://www.example.com/'), 'http://www.example.com/')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "compare-013.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'compare-014'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare(\"a\", \"A\", \"http://www.w3.org/2005/xpath-functions/collation/html-ascii-case-insensitive\")", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
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
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "compare-014.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'compare-015'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare(\"123 - ; ^ a\", \"123 -  ; ^ a\", \"http://www.w3.org/2005/xpath-functions/collation/html-ascii-case-insensitive\") eq 0", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
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
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "compare-015.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'compare-016'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare(\"Á\", \"á\", \"http://www.w3.org/2005/xpath-functions/collation/html-ascii-case-insensitive\") eq 0", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
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
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "compare-016.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'compare-017'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:compare(\"database\", \"DATABASE\", \"http://www.w3.org/2013/collation/UCA?lang=en;strength=primary\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "compare-017.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'compare-018'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:compare(\"database\", \"DÃTABASE\", \"http://www.w3.org/2013/collation/UCA?lang=en;strength=primary\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "compare-018.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'compare-019'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:compare(\"database\", \"database\", \"http://www.w3.org/2013/collation/UCA?lang=en;strength=primary\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "compare-019.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'compare-020'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:compare(\"database\", \"Databases\", \"http://www.w3.org/2013/collation/UCA?lang=en;strength=primary\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "compare-020.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'compare-021'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:compare(\"databases\", \"Database\", \"http://www.w3.org/2013/collation/UCA?lang=en;strength=primary\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "compare-021.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'compare-022'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:compare(\"database\", \"DATABASE\", \"http://www.w3.org/2013/collation/UCA?lang=en;strength=secondary\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "compare-022.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'compare-023'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:compare(\"database\", \"DÃTABASE\", \"http://www.w3.org/2013/collation/UCA?lang=en;strength=secondary\") != 0", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "compare-023.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'compare-024'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:compare(\"database\", \"database\", \"http://www.w3.org/2013/collation/UCA?lang=en;strength=secondary\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "compare-024.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'compare-025'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:compare(\"database\", \"Databases\", \"http://www.w3.org/2013/collation/UCA?lang=en;strength=secondary\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "compare-025.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'compare-026'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:compare(\"databases\", \"Database\", \"http://www.w3.org/2013/collation/UCA?lang=en;strength=secondary\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "compare-026.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'compare-027'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:compare(\"database\", \"dâtabase\", \"http://www.w3.org/2013/collation/UCA?lang=en;strength=tertiary\") = 0", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "compare-027.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'compare-028'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:compare(\"database\", \"DATABASE\", \"http://www.w3.org/2013/collation/UCA?lang=en;strength=tertiary\") = 0", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "compare-028.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'compare-029'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:compare(\"database\", \"database\", \"http://www.w3.org/2013/collation/UCA?lang=en;strength=tertiary\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "compare-029.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'compare-030'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:compare(\"database\", \"Database\", \"http://www.w3.org/2013/collation/UCA?lang=en;strength=tertiary;caseFirst=lower\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "compare-030.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'compare-031'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:advanced-uca-fallback"}. 
'compare-032'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:compare(\"databases\", \"Database\", \"http://www.w3.org/2013/collation/UCA?lang=en;strength=tertiary;caseFirst=lower\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "compare-032.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'compare-033'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:compare(\"dâtabases\", \"Database\", \"http://www.w3.org/2013/collation/UCA?lang=en;strength=tertiary;caseFirst=lower\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "compare-033.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'compare-034'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:advanced-uca-fallback"}. 
'compare-035'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:advanced-uca-fallback"}. 
'compare-036'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:compare(\"DATABASE\", \"DÃTABASE\", \"http://www.w3.org/2013/collation/UCA?lang=en;strength=primary;caseLevel=yes\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "compare-036.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'compare-037'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:advanced-uca-fallback"}. 
'compare-038'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:compare(\"DATABÃSE\", \"DÃTABASE\", \"http://www.w3.org/2013/collation/UCA?lang=en;strength=tertiary\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "compare-038.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'compare-039'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:advanced-uca-fallback"}. 
'compare-040'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:advanced-uca-fallback"}. 
'compare-041'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:advanced-uca-fallback"}. 
'compare-042'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:compare(\"database\", \"data base\", \"http://www.w3.org/2013/collation/UCA?lang=en;alternate=blanked;strength=identical\") = 0", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "compare-042.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'compare-043'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:advanced-uca-fallback"}. 
'compare-044'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:compare(\"database\", \"data base\", \"http://www.w3.org/2013/collation/UCA?lang=en;alternate=shifted;strength=quaternary\") = 0", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "compare-044.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'compare-045'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:compare(\"database\", \"data base\", \"http://www.w3.org/2013/collation/UCA?lang=en;alternate=shifted;strength=identical\") = 0", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "compare-045.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-CompareFunc-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare(\"a\", \"a\", (\"http://www.w3.org/2005/xpath-functions/collation/codepoint\", ()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-CompareFunc-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-CompareFunc-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare(\"a\", \"a\", ((), \"http://www.w3.org/2005/xpath-functions/collation/codepoint\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-CompareFunc-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-CompareFunc-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "compare(\"a\", \"a\", ((), \"http://www.w3.org/2005/xpath-functions/collation/codepoint\", ()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-CompareFunc-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-CompareFunc-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $vA := (\"B STRING\", current-time())[1] treat as xs:string, 
        $vB  := (\"b string\", current-time())[1] treat as xs:string
        return compare(lower-case($vA), lower-case($vB))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-CompareFunc-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-CompareFunc-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $vA := (\"B STRING\", current-time())[1] treat as xs:string, 
                $vB  := (\"b string\", current-time())[1] treat as xs:string 
        return compare(upper-case($vA), upper-case($vB))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-CompareFunc-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-CompareFunc-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $vA  := (\"B STRING\", current-time())[1] treat as xs:string, 
                $vB  := (\"no match\", current-time())[1] treat as xs:string 
        return compare(lower-case($vA), lower-case($vB))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-CompareFunc-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-CompareFunc-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $vA  := (\"B STRING\", current-time())[1] treat as xs:string, 
                $vB  := (\"no match\", current-time())[1] treat as xs:string 
        return compare(upper-case($vA), upper-case($vB))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-CompareFunc-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-CompareFunc-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $vA  := (\"B STRING\", current-time())[1] treat as xs:string, 
                $vB  := (\"no match\", current-time())[1] treat as xs:string 
        return compare(upper-case($vA), lower-case($vB))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-CompareFunc-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-CompareFunc-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $vA  := (\"B STRING\", current-time())[1] treat as xs:string, 
                $vB  := (\"no match\", current-time())[1] treat as xs:string 
        return compare(lower-case($vA), upper-case($vB))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-CompareFunc-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.