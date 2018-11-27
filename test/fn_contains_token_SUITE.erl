-module('fn_contains_token_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['fn-contains-token-09'/1]).
-export(['fn-contains-token-10'/1]).
-export(['fn-contains-token-11'/1]).
-export(['fn-contains-token-12'/1]).
-export(['fn-contains-token-13'/1]).
-export(['fn-contains-token-14'/1]).
-export(['fn-contains-token-15'/1]).
-export(['fn-contains-token-16'/1]).
-export(['fn-contains-token-17'/1]).
-export(['fn-contains-token-18'/1]).
-export(['fn-contains-token-19'/1]).
-export(['fn-contains-token-20'/1]).
-export(['fn-contains-token-21'/1]).
-export(['fn-contains-token-22'/1]).
-export(['fn-contains-token-39'/1]).
-export(['fn-contains-token-40'/1]).
-export(['fn-contains-token-41'/1]).
-export(['fn-contains-token-42'/1]).
-export(['fn-contains-token-43'/1]).
-export(['fn-contains-token-44'/1]).
-export(['fn-contains-token-45'/1]).
-export(['fn-contains-token-46'/1]).
-export(['fn-contains-token-47'/1]).
-export(['fn-contains-token-48'/1]).
-export(['fn-contains-token-49'/1]).
-export(['fn-contains-token-50'/1]).
-export(['fn-contains-token-51'/1]).
-export(['fn-contains-token-52'/1]).
-export(['fn-contains-token-60'/1]).
-export(['fn-contains-token-61'/1]).
-export(['fn-contains-token-62'/1]).
-export(['fn-contains-token-63'/1]).
-export(['fn-contains-token-64'/1]).
-export(['fn-contains-token-65'/1]).
-export(['fn-contains-token-70'/1]).
-export(['fn-contains-token-71'/1]).
-export(['fn-contains-token-72'/1]).
suite() -> [{timetrap,{seconds, 5}}].
end_per_suite(_Config) -> 
   ct:timetrap({seconds,60}), 
   xqerl_module:unload(all).
init_per_suite(Config) -> 
   xqerl_module:one_time_init(), 
   {ok,_} = application:ensure_all_started(xqerl),
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   __BaseDir = filename:join(TD, "fn"),
   [{base_dir, __BaseDir}|Config].
all() -> [
'fn-contains-token-09', 
'fn-contains-token-10', 
'fn-contains-token-11', 
'fn-contains-token-12', 
'fn-contains-token-13', 
'fn-contains-token-14', 
'fn-contains-token-15', 
'fn-contains-token-16', 
'fn-contains-token-17', 
'fn-contains-token-18', 
'fn-contains-token-19', 
'fn-contains-token-20', 
'fn-contains-token-21', 
'fn-contains-token-22', 
'fn-contains-token-39', 
'fn-contains-token-40', 
'fn-contains-token-41', 
'fn-contains-token-42', 
'fn-contains-token-43', 
'fn-contains-token-44', 
'fn-contains-token-45', 
'fn-contains-token-46', 
'fn-contains-token-47', 
'fn-contains-token-48', 
'fn-contains-token-49', 
'fn-contains-token-50', 
'fn-contains-token-51', 
'fn-contains-token-52', 
'fn-contains-token-60', 
'fn-contains-token-61', 
'fn-contains-token-62', 
'fn-contains-token-63', 
'fn-contains-token-64', 
'fn-contains-token-65', 
'fn-contains-token-70', 
'fn-contains-token-71', 
'fn-contains-token-72'
].

'fn-contains-token-09'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "contains-token(\"\", \"\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-contains-token-09.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-contains-token-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "contains-token((), \"\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-contains-token-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-contains-token-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "contains-token(\"   \", \"   \")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-contains-token-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-contains-token-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "contains-token(codepoints-to-string((9, 10, 13, 32, 13, 10, 9)), \"\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-contains-token-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-contains-token-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "contains-token(\"abc\", \"abc\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-contains-token-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-contains-token-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "contains-token(\" abc \", \"abc\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-contains-token-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-contains-token-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "contains-token(codepoints-to-string((9, 10, 97, 98, 99, 13, 32)), \"abc\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-contains-token-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-contains-token-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "contains-token(\"abc def\", \"def\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-contains-token-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-contains-token-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "contains-token(codepoints-to-string((97, 98, 99, 13, 32, 10, 100, 101, 102)), \"def\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-contains-token-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-contains-token-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "contains-token(codepoints-to-string((9, 9, 97, 98, 99, 13, 32, 10, 100, 101, 102, 10, 10)), \"abc\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-contains-token-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-contains-token-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "contains-token(\" the quick brown fox jumped over the lazy dog \", 'fox')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-contains-token-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-contains-token-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XML version 1.1"}. 
'fn-contains-token-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "contains-token(codepoints-to-string((97, 98, 99, 160, 100, 101, 102)), \"abc\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-contains-token-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-contains-token-22'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(contains-token#2, starts-with#2, ends-with#2)!.(\"abc def\", \"def\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-contains-token-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"true(), false(), true()") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-contains-token-39'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "contains-token(\"\", \"zz\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-contains-token-39.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-contains-token-40'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "contains-token((), \"zz\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-contains-token-40.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-contains-token-41'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "contains-token(\"   \", \"zz\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-contains-token-41.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-contains-token-42'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "contains-token(codepoints-to-string((9, 10, 13, 32, 13, 10, 9)), \"zz\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-contains-token-42.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-contains-token-43'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "contains-token(\"abc\", \"zz\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-contains-token-43.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-contains-token-44'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "contains-token(\" abc \", \"zz\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-contains-token-44.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-contains-token-45'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "contains-token(codepoints-to-string((9, 10, 97, 98, 99, 13, 32)), \"zz\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-contains-token-45.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-contains-token-46'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "contains-token(\"abc def\", \"zz\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-contains-token-46.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-contains-token-47'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "contains-token(codepoints-to-string((97, 98, 99, 13, 32, 10, 100, 101, 102)), \"zz\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-contains-token-47.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-contains-token-48'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "contains-token(codepoints-to-string((9, 9, 97, 98, 99, 13, 32, 10, 100, 101, 102, 10, 10)), \"zz\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-contains-token-48.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-contains-token-49'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "contains-token(\" the quick brown fox jumped over the lazy dog \", 'zz')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-contains-token-49.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-contains-token-50'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XML version 1.1"}. 
'fn-contains-token-51'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "contains-token(codepoints-to-string((97, 98, 99, 160, 100, 101, 102)), \"abc\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-contains-token-51.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-contains-token-52'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(contains-token#2, substring-before#2, substring-after#2)[1](\"abc def\", \"zz\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-contains-token-52.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-contains-token-60'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "contains-token((\"abc\", \"def\"), \"\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-contains-token-60.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-contains-token-61'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "contains-token((\"abc\", \"def\"), \" abc  \")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-contains-token-61.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-contains-token-62'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "contains-token((\"abc\", \"def\"), codepoints-to-string((9, 10, 13, 97, 98, 99, 32, 13, 10, 9)))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-contains-token-62.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-contains-token-63'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "contains-token((\"abc def\", \"ghi\"), \"abc\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-contains-token-63.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-contains-token-64'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "contains-token((\" abc def \", \"ghi\"), \"def\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-contains-token-64.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-contains-token-65'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "contains-token(codepoints-to-string((9, 10, 97, 98, 99, 13, 32)), \"abc\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-contains-token-65.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-contains-token-70'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "contains-token(\"the quick brown fox\", \"Fox\", \"http://www.w3.org/2005/xpath-functions/collation/html-ascii-case-insensitive\")", 
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
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-contains-token-70.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-contains-token-71'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "contains-token(\"the quick brown fox\", \" QUICK \", \"http://www.w3.org/2005/xpath-functions/collation/html-ascii-case-insensitive\")", 
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
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-contains-token-71.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-contains-token-72'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "contains-token(\"the quick brown fox\", \"quiçk\", \"http://www.w3.org/2005/xpath-functions/collation/html-ascii-case-insensitive\")", 
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
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-contains-token-72.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.