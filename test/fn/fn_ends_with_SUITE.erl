-module('fn_ends_with_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['fn-ends-with2args-1'/1]).
-export(['fn-ends-with2args-2'/1]).
-export(['fn-ends-with2args-3'/1]).
-export(['fn-ends-with2args-4'/1]).
-export(['fn-ends-with2args-5'/1]).
-export(['fn-ends-with-1'/1]).
-export(['fn-ends-with-2'/1]).
-export(['fn-ends-with-3'/1]).
-export(['fn-ends-with-4'/1]).
-export(['fn-ends-with-5'/1]).
-export(['fn-ends-with-6'/1]).
-export(['fn-ends-with-7'/1]).
-export(['fn-ends-with-8'/1]).
-export(['fn-ends-with-9'/1]).
-export(['fn-ends-with-10'/1]).
-export(['fn-ends-with-11'/1]).
-export(['fn-ends-with-12'/1]).
-export(['fn-ends-with-13'/1]).
-export(['fn-ends-with-14'/1]).
-export(['fn-ends-with-15'/1]).
-export(['fn-ends-with-16'/1]).
-export(['fn-ends-with-17'/1]).
-export(['fn-ends-with-18'/1]).
-export(['fn-ends-with-19'/1]).
-export(['fn-ends-with-20'/1]).
-export(['fn-ends-with-21'/1]).
-export(['fn-ends-with-22'/1]).
-export(['fn-ends-with-23'/1]).
-export(['fn-ends-with-24'/1]).
-export(['fn-ends-with-25'/1]).
-export(['fn-ends-with-26'/1]).
-export(['fn-ends-with-27'/1]).
-export(['fn-ends-with-28'/1]).
-export(['fn-ends-with-29'/1]).
-export(['fn-ends-with-30'/1]).
-export(['fn-ends-with-31'/1]).
-export(['fn-ends-with-32'/1]).
-export(['fn-ends-with-33'/1]).
-export(['K-EndsWithFunc-1'/1]).
-export(['K-EndsWithFunc-2'/1]).
-export(['K-EndsWithFunc-3'/1]).
-export(['K-EndsWithFunc-4'/1]).
-export(['K-EndsWithFunc-5'/1]).
-export(['K-EndsWithFunc-6'/1]).
-export(['K-EndsWithFunc-7'/1]).
-export(['K-EndsWithFunc-8'/1]).
-export(['K-EndsWithFunc-9'/1]).
-export(['K-EndsWithFunc-10'/1]).
-export(['K2-EndsWithFunc-1'/1]).
-export(['K2-EndsWithFunc-2'/1]).
-export(['K2-EndsWithFunc-3'/1]).
-export(['K2-EndsWithFunc-4'/1]).
-export(['K2-EndsWithFunc-5'/1]).
-export(['K2-EndsWithFunc-6'/1]).
-export(['cbcl-ends-with-001'/1]).
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
   {group, group_2}
   ].
groups() -> [
   {group_0, [parallel], [
    'fn-ends-with2args-1', 
    'fn-ends-with2args-2', 
    'fn-ends-with2args-3', 
    'fn-ends-with2args-4', 
    'fn-ends-with2args-5', 
    'fn-ends-with-1', 
    'fn-ends-with-2', 
    'fn-ends-with-3', 
    'fn-ends-with-4', 
    'fn-ends-with-5', 
    'fn-ends-with-6', 
    'fn-ends-with-7', 
    'fn-ends-with-8', 
    'fn-ends-with-9', 
    'fn-ends-with-10', 
    'fn-ends-with-11', 
    'fn-ends-with-12', 
    'fn-ends-with-13', 
    'fn-ends-with-14', 
    'fn-ends-with-15', 
    'fn-ends-with-16', 
    'fn-ends-with-17', 
    'fn-ends-with-18']}, 
   {group_1, [parallel], [
    'fn-ends-with-19', 
    'fn-ends-with-20', 
    'fn-ends-with-21', 
    'fn-ends-with-22', 
    'fn-ends-with-23', 
    'fn-ends-with-24', 
    'fn-ends-with-25', 
    'fn-ends-with-26', 
    'fn-ends-with-27', 
    'fn-ends-with-28', 
    'fn-ends-with-29', 
    'fn-ends-with-30', 
    'fn-ends-with-31', 
    'fn-ends-with-32', 
    'fn-ends-with-33', 
    'K-EndsWithFunc-1', 
    'K-EndsWithFunc-2', 
    'K-EndsWithFunc-3', 
    'K-EndsWithFunc-4', 
    'K-EndsWithFunc-5', 
    'K-EndsWithFunc-6', 
    'K-EndsWithFunc-7', 
    'K-EndsWithFunc-8', 
    'K-EndsWithFunc-9']}, 
   {group_2, [parallel], [
    'K-EndsWithFunc-10', 
    'K2-EndsWithFunc-1', 
    'K2-EndsWithFunc-2', 
    'K2-EndsWithFunc-3', 
    'K2-EndsWithFunc-4', 
    'K2-EndsWithFunc-5', 
    'K2-EndsWithFunc-6', 
    'cbcl-ends-with-001']}].

'fn-ends-with2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:ends-with(xs:string(\"This is a characte\"),xs:string(\"This is a characte\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-ends-with2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-ends-with2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:ends-with(xs:string(\"This is a characte\"),xs:string(\"This is a characte\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-ends-with2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-ends-with2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:ends-with(xs:string(\"This is a characte\"),xs:string(\"This is a characte\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-ends-with2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-ends-with2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:ends-with(xs:string(\"This is a characte\"),xs:string(\"This is a characte\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-ends-with2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-ends-with2args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:ends-with(xs:string(\"This is a characte\"),xs:string(\"This is a characte\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-ends-with2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-ends-with-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:ends-with(\"\",\"\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-ends-with-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-ends-with-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:ends-with(\"\",\"A Character String\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-ends-with-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-ends-with-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:ends-with(\"A Character String\",\"\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-ends-with-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-ends-with-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:ends-with((),\"\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-ends-with-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-ends-with-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:ends-with(\"\",())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-ends-with-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-ends-with-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:ends-with(\"A Character String\",())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-ends-with-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-ends-with-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:ends-with((),\"A Character String\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-ends-with-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-ends-with-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:ends-with(\"AAAAABBBBBCCCCC\",\"BBBBB\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-ends-with-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-ends-with-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:ends-with(\"AAAAABBBBB\",\" \")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-ends-with-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-ends-with-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:ends-with(\" \",\"AAAAABBBBB\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-ends-with-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-ends-with-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:not(fn:ends-with(\"A\",\"A\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-ends-with-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-ends-with-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:not(fn:ends-with(\"A\",\"B\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-ends-with-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-ends-with-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:ends-with(xs:string(\"A\"),\"A\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-ends-with-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-ends-with-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:ends-with(\"A\",xs:string(\"A\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-ends-with-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-ends-with-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:ends-with(\"A\",\"a\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-ends-with-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-ends-with-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:ends-with(\"a\",\"A\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-ends-with-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-ends-with-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:ends-with(\"banana\", \"ana\", \"http://www.w3.org/2013/collation/UCA?lang=en\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-ends-with-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-ends-with-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:ends-with(\"banana\", \"bana\", \"http://www.w3.org/2013/collation/UCA?lang=en\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-ends-with-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-ends-with-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:ends-with(\"database\", \"BASE\", \"http://www.w3.org/2013/collation/UCA?lang=en;strength=primary\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-ends-with-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-ends-with-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:ends-with(\"database\", \"abaSe\", \"http://www.w3.org/2013/collation/UCA?lang=en;strength=primary\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-ends-with-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-ends-with-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:advanced-uca-fallback"}. 
'fn-ends-with-22'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:ends-with(\"dâtabase\", \"adâtabase\", \"http://www.w3.org/2013/collation/UCA?lang=en;strength=primary\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-ends-with-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-ends-with-23'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:advanced-uca-fallback"}. 
'fn-ends-with-24'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:ends-with(\"database\", \"BASE\", \"http://www.w3.org/2013/collation/UCA?lang=en;strength=secondary\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-ends-with-24.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-ends-with-25'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:ends-with(\"database\", \"abaSe\", \"http://www.w3.org/2013/collation/UCA?lang=en;strength=secondary\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-ends-with-25.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-ends-with-26'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:ends-with(\"database\", \"bâse\", \"http://www.w3.org/2013/collation/UCA?lang=en;strength=secondary\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-ends-with-26.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-ends-with-27'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:ends-with(\"dâtabâse\", \"Base\", \"http://www.w3.org/2013/collation/UCA?lang=en;strength=secondary\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-ends-with-27.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-ends-with-28'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:ends-with(\"database\", \"BASE\", \"http://www.w3.org/2013/collation/UCA?lang=en;strength=tertiary\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-ends-with-28.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-ends-with-29'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:ends-with(\"dataBase\", \"aBase\", \"http://www.w3.org/2013/collation/UCA?lang=en;strength=tertiary\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-ends-with-29.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-ends-with-30'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:ends-with(\"database\", \"bâse\", \"http://www.w3.org/2013/collation/UCA?lang=en;strength=tertiary\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-ends-with-30.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-ends-with-31'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:ends-with(\"database\", \"Base\", \"http://www.w3.org/2013/collation/UCA?lang=en;strength=tertiary\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-ends-with-31.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-ends-with-32'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:advanced-uca-fallback"}. 
'fn-ends-with-33'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:ends-with(\"Chapter-100\", \"Chapter-10\", \"http://www.w3.org/2013/collation/UCA?lang=en;numeric=yes\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-ends-with-33.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0004") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FOCH0004 " ++ binary_to_list(F)};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-EndsWithFunc-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "ends-with()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-EndsWithFunc-1.xq"), Qry1),
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
'K-EndsWithFunc-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "ends-with(())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-EndsWithFunc-2.xq"), Qry1),
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
'K-EndsWithFunc-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "ends-with((), (), \"http://www.w3.org/2005/xpath-functions/collation/codepoint\", \"wrong param\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-EndsWithFunc-3.xq"), Qry1),
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
'K-EndsWithFunc-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "ends-with(\"a string\", \"a string\", \"http://www.example.com/COLLATION/NOT/SUPPORTED\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-EndsWithFunc-4.xq"), Qry1),
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
'K-EndsWithFunc-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "ends-with(\"foo\", \"foo\", \"http://www.w3.org/2005/xpath-functions/collation/codepoint\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-EndsWithFunc-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-EndsWithFunc-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "ends-with(\"tattoo\", \"tattoo\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-EndsWithFunc-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-EndsWithFunc-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(ends-with(\"tattoo\", \"atto\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-EndsWithFunc-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-EndsWithFunc-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(ends-with(\"tattoo\", \"atto\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-EndsWithFunc-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-EndsWithFunc-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "ends-with((), ())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-EndsWithFunc-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-EndsWithFunc-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(ends-with ((), \"a string\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-EndsWithFunc-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-EndsWithFunc-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $vA := (\"B STRING\", current-time(), string(\"content\"))[1] treat as xs:string, 
        $vB := (\"b string\", current-time(), string(\"content\"))[1] treat as xs:string
        return ends-with(lower-case($vA), lower-case($vB))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-EndsWithFunc-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-EndsWithFunc-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         let $vA  := (\"B STRING\", current-time(), string(\"content\"))[1] treat as xs:string,
         $vB  := (\"b string\", current-time(), string(\"content\"))[1] treat as xs:string
         return ends-with(upper-case($vA), upper-case($vB))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-EndsWithFunc-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-EndsWithFunc-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         let $vA  := (\"B STRING\", current-time(), string(\"content\"))[1] treat as xs:string,
         $vB  := (\"no match\", current-time(), string(\"content\"))[1] treat as xs:string
         return ends-with(lower-case($vA), lower-case($vB))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-EndsWithFunc-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-EndsWithFunc-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         let $vA  := (\"B STRING\", current-time(), string(\"content\"))[1] treat as xs:string,
         $vB  := (\"no match\", current-time(), string(\"content\"))[1] treat as xs:string
         return ends-with(upper-case($vA), upper-case($vB))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-EndsWithFunc-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-EndsWithFunc-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         let $vA := (\"B STRING\", current-time(), string(\"content\"))[1] treat as xs:string, 
        $vB := (\"b string\", current-time(), string(\"content\"))[1] treat as xs:string
        return ends-with(upper-case($vA), lower-case($vB))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-EndsWithFunc-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-EndsWithFunc-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         let $vA := (\"B STRING\", current-time(), string(\"content\"))[1] treat as xs:string, 
        $vB := (\"b string\", current-time(), string(\"content\"))[1] treat as xs:string
        return ends-with(lower-case($vA), upper-case($vB))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-EndsWithFunc-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-ends-with-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:boolean(fn:ends-with('input', '', 'http://www.w3.org/2005/xpath-functions/collation/codepoint'))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-ends-with-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.