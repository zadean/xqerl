-module('fn_substring_after_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['fn-substring-after-1'/1]).
-export(['fn-substring-after-2'/1]).
-export(['fn-substring-after-3'/1]).
-export(['fn-substring-after-4'/1]).
-export(['fn-substring-after-5'/1]).
-export(['fn-substring-after-6'/1]).
-export(['fn-substring-after-7'/1]).
-export(['fn-substring-after-8'/1]).
-export(['fn-substring-after-9'/1]).
-export(['fn-substring-after-10'/1]).
-export(['fn-substring-after-11'/1]).
-export(['fn-substring-after-12'/1]).
-export(['fn-substring-after-13'/1]).
-export(['fn-substring-after-14'/1]).
-export(['fn-substring-after-15'/1]).
-export(['fn-substring-after-16'/1]).
-export(['fn-substring-after-17'/1]).
-export(['fn-substring-after-18'/1]).
-export(['fn-substring-after-19'/1]).
-export(['fn-substring-after-20'/1]).
-export(['fn-substring-after-21'/1]).
-export(['fn-substring-after-22'/1]).
-export(['fn-substring-after-23'/1]).
-export(['fn-substring-after-24'/1]).
-export(['fn-substring-after-25'/1]).
-export(['fn-substring-after-26'/1]).
-export(['fn-substring-after-27'/1]).
-export(['fn-substring-after-28'/1]).
-export(['fn-substring-after-29'/1]).
-export(['fn-substring-after-30'/1]).
-export(['fn-substring-after-31'/1]).
-export(['fn-substring-after-32'/1]).
-export(['fn-substring-after-33'/1]).
-export(['fn-substring-after-34'/1]).
-export(['fn-substring-after-35'/1]).
-export(['fn-substring-after-36'/1]).
-export(['fn-substring-after-37'/1]).
-export(['fn-substring-after-38'/1]).
-export(['fn-substring-after-39'/1]).
-export(['fn-substring-after-40'/1]).
-export(['fn-substring-after-41'/1]).
-export(['fn-substring-after-42'/1]).
-export(['fn-substring-after-43'/1]).
-export(['K-SubstringAfterFunc-1'/1]).
-export(['K-SubstringAfterFunc-2'/1]).
-export(['K-SubstringAfterFunc-3'/1]).
-export(['K-SubstringAfterFunc-4'/1]).
-export(['K-SubstringAfterFunc-5'/1]).
-export(['K-SubstringAfterFunc-6'/1]).
-export(['K-SubstringAfterFunc-7'/1]).
-export(['K-SubstringAfterFunc-8'/1]).
-export(['K-SubstringAfterFunc-9'/1]).
-export(['K-SubstringAfterFunc-10'/1]).
-export(['K-SubstringAfterFunc-11'/1]).
-export(['cbcl-substring-after-001'/1]).
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
    'fn-substring-after-1', 
    'fn-substring-after-2', 
    'fn-substring-after-3', 
    'fn-substring-after-4', 
    'fn-substring-after-5', 
    'fn-substring-after-6', 
    'fn-substring-after-7', 
    'fn-substring-after-8', 
    'fn-substring-after-9', 
    'fn-substring-after-10', 
    'fn-substring-after-11', 
    'fn-substring-after-12', 
    'fn-substring-after-13', 
    'fn-substring-after-14', 
    'fn-substring-after-15', 
    'fn-substring-after-16', 
    'fn-substring-after-17', 
    'fn-substring-after-18', 
    'fn-substring-after-19', 
    'fn-substring-after-20', 
    'fn-substring-after-21', 
    'fn-substring-after-22', 
    'fn-substring-after-23']}, 
   {group_1, [parallel], [
    'fn-substring-after-24', 
    'fn-substring-after-25', 
    'fn-substring-after-26', 
    'fn-substring-after-27', 
    'fn-substring-after-28', 
    'fn-substring-after-29', 
    'fn-substring-after-30', 
    'fn-substring-after-31', 
    'fn-substring-after-32', 
    'fn-substring-after-33', 
    'fn-substring-after-34', 
    'fn-substring-after-35', 
    'fn-substring-after-36', 
    'fn-substring-after-37', 
    'fn-substring-after-38', 
    'fn-substring-after-39', 
    'fn-substring-after-40', 
    'fn-substring-after-41', 
    'fn-substring-after-42', 
    'fn-substring-after-43', 
    'K-SubstringAfterFunc-1', 
    'K-SubstringAfterFunc-2', 
    'K-SubstringAfterFunc-3', 
    'K-SubstringAfterFunc-4']}, 
   {group_2, [parallel], [
    'K-SubstringAfterFunc-5', 
    'K-SubstringAfterFunc-6', 
    'K-SubstringAfterFunc-7', 
    'K-SubstringAfterFunc-8', 
    'K-SubstringAfterFunc-9', 
    'K-SubstringAfterFunc-10', 
    'K-SubstringAfterFunc-11', 
    'cbcl-substring-after-001']}].

'fn-substring-after-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:substring-after(\"\",\"\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-substring-after-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"\"\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-substring-after-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:substring-after(\"\",\"A Character String\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-substring-after-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"\"\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-substring-after-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:substring-after(\"A Character String\",\"\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-substring-after-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"\"A Character String\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-substring-after-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:substring-after((),\"\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-substring-after-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"\"\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-substring-after-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:substring-after(\"\",())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-substring-after-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"\"\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-substring-after-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:substring-after(\"A Character String\",())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-substring-after-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"\"A Character String\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-substring-after-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:substring-after((),\"A Character String\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-substring-after-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"\"\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-substring-after-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:substring-after(\"AAAAABBBBBCCCCC\",\"BBBBB\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-substring-after-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "CCCCC") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-substring-after-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:substring-after(\"AAAAABBBBB\",\" \")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-substring-after-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"\"\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-substring-after-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:substring-after(\" \",\"AAAAABBBBB\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-substring-after-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"\"\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-substring-after-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:not(fn:substring-after(\"A\",\"A\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-substring-after-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-substring-after-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:not(fn:substring-after(\"A\",\"B\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-substring-after-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-substring-after-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:substring-after(xs:string(\"A\"),\"A\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-substring-after-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"\"\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-substring-after-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:substring-after(\"A\",xs:string(\"A\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-substring-after-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"\"\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-substring-after-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:substring-after(\"A\",\"a\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-substring-after-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"\"\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-substring-after-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:substring-after(\"a\",\"A\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-substring-after-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"\"\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-substring-after-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:substring-after(\"substring-after\",\"substring-after\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-substring-after-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"\"\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-substring-after-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:substring-after(\"substring-aftersubstring-after\",\"substring-after\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-substring-after-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "substring-after") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-substring-after-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:substring-after(\"****\",\"***\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-substring-after-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "*") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-substring-after-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:substring-after(\"12345\",\"1234\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-substring-after-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "5") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-substring-after-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:substring-after(\"substring-after\",\"refta-gnirtsbus\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-substring-after-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"\"\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-substring-after-22'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "substring-after(\"banana\", \"a\", \"http://www.w3.org/2005/xpath-functions/collation/codepoint\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-substring-after-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"nana\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-substring-after-23'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "substring-after(\"banana\", \"a\", \"collation/codepoint\")", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', [{"http://www.w3.org/2005/xpath-functions/"}]}, 
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
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-substring-after-23.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"nana\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-substring-after-24'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "substring-after(\"banana\", \"A\", \"http://www.w3.org/2010/09/qt-fots-catalog/collation/caseblind\")", 
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
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-substring-after-24.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"nana\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-substring-after-25'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "substring-after(\"𐀁𐀂𐀃\", \"𐀂\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-substring-after-25.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"𐀃\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-substring-after-26'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "substring-after(\"banana\", \"A\", \"http://www.w3.org/2005/xpath-functions/collation/html-ascii-case-insensitive\")", 
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
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-substring-after-26.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"nana\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-substring-after-27'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:substring-after(\"banana\", \"ana\", \"http://www.w3.org/2013/collation/UCA?lang=en\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-substring-after-27.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"na\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-substring-after-28'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:substring-after(\"banana\", \"ananas\", \"http://www.w3.org/2013/collation/UCA?lang=en\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-substring-after-28.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-substring-after-29'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:substring-after(\"database\", \"DATA\", \"http://www.w3.org/2013/collation/UCA?lang=en;strength=primary\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-substring-after-29.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"base\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-substring-after-30'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:substring-after(\"database\", \"tabaS\", \"http://www.w3.org/2013/collation/UCA?lang=en;strength=primary\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-substring-after-30.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"e\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-substring-after-31'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:advanced-uca-fallback"}. 
'fn-substring-after-32'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:substring-after(\"dâtabase\", \"dâtab\", \"http://www.w3.org/2013/collation/UCA?lang=en;strength=primary\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-substring-after-32.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"ase\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-substring-after-33'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:advanced-uca-fallback"}. 
'fn-substring-after-34'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:substring-after(\"database\", \"DATA\", \"http://www.w3.org/2013/collation/UCA?lang=en;strength=secondary\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-substring-after-34.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"base\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-substring-after-35'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:substring-after(\"database\", \"tabaS\", \"http://www.w3.org/2013/collation/UCA?lang=en;strength=secondary\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-substring-after-35.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"e\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-substring-after-36'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:substring-after(\"database\", \"bâs\", \"http://www.w3.org/2013/collation/UCA?lang=en;strength=secondary\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-substring-after-36.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-substring-after-37'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:substring-after(\"dâtabase\", \"â\", \"http://www.w3.org/2013/collation/UCA?lang=en;strength=secondary\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-substring-after-37.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"tabase\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-substring-after-38'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:substring-after(\"database\", \"DATA\", \"http://www.w3.org/2013/collation/UCA?lang=en;strength=tertiary\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-substring-after-38.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-substring-after-39'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:substring-after(\"dataBase\", \"taBas\", \"http://www.w3.org/2013/collation/UCA?lang=en;strength=tertiary\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-substring-after-39.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"e\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-substring-after-40'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:substring-after(\"dâtabase\", \"data\", \"http://www.w3.org/2013/collation/UCA?lang=en;strength=tertiary\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-substring-after-40.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-substring-after-41'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:substring-after(\"database\", \"Data\", \"http://www.w3.org/2013/collation/UCA?lang=en;strength=tertiary\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-substring-after-41.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-substring-after-42'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:advanced-uca-fallback"}. 
'fn-substring-after-43'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:advanced-uca-fallback"}. 
'K-SubstringAfterFunc-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "substring-after()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SubstringAfterFunc-1.xq"), Qry1),
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
'K-SubstringAfterFunc-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "substring-after(())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SubstringAfterFunc-2.xq"), Qry1),
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
'K-SubstringAfterFunc-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "substring-after((), (), \"http://www.w3.org/2005/xpath-functions/collation/codepoint\", \"wrong param\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SubstringAfterFunc-3.xq"), Qry1),
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
'K-SubstringAfterFunc-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "substring-after(\"a string\", \"a string\", \"http://www.example.com/COLLATION/NOT/SUPPORTED\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SubstringAfterFunc-4.xq"), Qry1),
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
'K-SubstringAfterFunc-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "substring-after(\"foo\", \"fo\", \"http://www.w3.org/2005/xpath-functions/collation/codepoint\") eq \"o\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SubstringAfterFunc-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SubstringAfterFunc-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "substring-after(\"tattoo\", \"tat\") eq \"too\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SubstringAfterFunc-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SubstringAfterFunc-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "substring-after(\"tattoo\", \"tattoo\") eq \"\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SubstringAfterFunc-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SubstringAfterFunc-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "substring-after(\"abcdefgedij\", \"def\") eq \"gedij\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SubstringAfterFunc-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SubstringAfterFunc-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "substring-after((), ()) eq \"\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SubstringAfterFunc-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SubstringAfterFunc-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "substring-after(\"a string\", ()) eq \"a string\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SubstringAfterFunc-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SubstringAfterFunc-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "substring-after(\"a string\", \"not in other\") eq \"\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SubstringAfterFunc-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-substring-after-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        fn:boolean(fn:substring-after('input', '', 'http://www.w3.org/2005/xpath-functions/collation/codepoint'))
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-substring-after-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.