-module('fn_string_join_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['fn-string-join2args-1'/1]).
-export(['fn-string-join2args-2'/1]).
-export(['fn-string-join2args-3'/1]).
-export(['fn-string-join2args-4'/1]).
-export(['fn-string-join2args-5'/1]).
-export(['fn-string-join-1'/1]).
-export(['fn-string-join-2'/1]).
-export(['fn-string-join-3'/1]).
-export(['fn-string-join-4'/1]).
-export(['fn-string-join-5'/1]).
-export(['fn-string-join-6'/1]).
-export(['fn-string-join-7'/1]).
-export(['fn-string-join-8'/1]).
-export(['fn-string-join-9'/1]).
-export(['fn-string-join-10'/1]).
-export(['fn-string-join-11'/1]).
-export(['fn-string-join-12'/1]).
-export(['fn-string-join-13'/1]).
-export(['fn-string-join-14'/1]).
-export(['fn-string-join-15'/1]).
-export(['fn-string-join-16'/1]).
-export(['fn-string-join-17'/1]).
-export(['fn-string-join-18'/1]).
-export(['fn-string-join-19'/1]).
-export(['fn-string-join-20'/1]).
-export(['fn-string-join-21'/1]).
-export(['fn-string-join-22'/1]).
-export(['fn-string-join-23'/1]).
-export(['fn-string-join-24'/1]).
-export(['fn-string-join-25'/1]).
-export(['fn-string-join-26'/1]).
-export(['fn-string-join-27'/1]).
-export(['fn-string-join-28'/1]).
-export(['fn-string-join-29'/1]).
-export(['fn-string-join-30'/1]).
-export(['fn-string-join-31'/1]).
-export(['fn-string-join-32'/1]).
-export(['K-StringJoinFunc-1'/1]).
-export(['K-StringJoinFunc-1a'/1]).
-export(['K-StringJoinFunc-2'/1]).
-export(['K-StringJoinFunc-3'/1]).
-export(['K-StringJoinFunc-4'/1]).
-export(['K-StringJoinFunc-5'/1]).
-export(['K-StringJoinFunc-6'/1]).
-export(['K-StringJoinFunc-7'/1]).
-export(['cbcl-fn-string-join-001'/1]).
suite() -> [{timetrap,{seconds, 5}}].
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
'fn-string-join2args-1', 
'fn-string-join2args-2', 
'fn-string-join2args-3', 
'fn-string-join2args-4', 
'fn-string-join2args-5', 
'fn-string-join-1', 
'fn-string-join-2', 
'fn-string-join-3', 
'fn-string-join-4', 
'fn-string-join-5', 
'fn-string-join-6', 
'fn-string-join-7', 
'fn-string-join-8', 
'fn-string-join-9', 
'fn-string-join-10', 
'fn-string-join-11', 
'fn-string-join-12', 
'fn-string-join-13', 
'fn-string-join-14', 
'fn-string-join-15', 
'fn-string-join-16', 
'fn-string-join-17', 
'fn-string-join-18', 
'fn-string-join-19', 
'fn-string-join-20', 
'fn-string-join-21', 
'fn-string-join-22', 
'fn-string-join-23', 
'fn-string-join-24', 
'fn-string-join-25', 
'fn-string-join-26', 
'fn-string-join-27', 
'fn-string-join-28', 
'fn-string-join-29', 
'fn-string-join-30', 
'fn-string-join-31', 
'fn-string-join-32', 
'K-StringJoinFunc-1', 
'K-StringJoinFunc-1a', 
'K-StringJoinFunc-2', 
'K-StringJoinFunc-3', 
'K-StringJoinFunc-4', 
'K-StringJoinFunc-5', 
'K-StringJoinFunc-6', 
'K-StringJoinFunc-7', 
'cbcl-fn-string-join-001'
].

'fn-string-join2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string-join(xs:string(\"This is a characte\"),xs:string(\"This is a characte\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-string-join2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "This is a characte") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-string-join2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string-join(xs:string(\"This is a characte\"),xs:string(\"This is a characte\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-string-join2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "This is a characte") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-string-join2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string-join(xs:string(\"This is a characte\"),xs:string(\"This is a characte\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-string-join2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "This is a characte") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-string-join2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string-join(xs:string(\"This is a characte\"),xs:string(\"This is a characte\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-string-join2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "This is a characte") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-string-join2args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string-join(xs:string(\"This is a characte\"),xs:string(\"This is a characte\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-string-join2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "This is a characte") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-string-join-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string-join(('Now', 'is', 'the', 'time', '...'), ' ')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-string-join-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Now is the time ...") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-string-join-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string-join(('Blow, ', 'blow, ', 'thou ', 'winter ', 'wind!'), '')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-string-join-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Blow, blow, thou winter wind!") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-string-join-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(fn:string-join((), 'separator'))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-string-join-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-string-join-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(fn:string-join((),\"\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-string-join-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-string-join-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(fn:string-join(\"\",\"\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-string-join-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-string-join-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(fn:string-join(\"\",\"A Character String\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-string-join-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-string-join-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(fn:string-join((),\"A Character String\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-string-join-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-string-join-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string-join((\"AAAAABBBBBCCCCC\"),\"BBBBB\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-string-join-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "AAAAABBBBBCCCCC") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-string-join-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string-join((\"AAAAABBBBB\"),\" \")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-string-join-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "AAAAABBBBB") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-string-join-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(fn:string-join((\" \"),\"AAAAABBBBB\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-string-join-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-string-join-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:not(fn:string-join((),\"A\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-string-join-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-string-join-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:not(fn:string-join((\"A\"),\"B\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-string-join-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-string-join-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string-join((xs:string(\"A\")),\"A\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-string-join-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "A") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-string-join-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string-join((\"A\"),xs:string(\"A\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-string-join-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "A") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-string-join-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string-join((\"A\"),\"a\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-string-join-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "A") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-string-join-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string-join((\"a\"),\"A\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-string-join-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "a") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-string-join-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string-join(\"string-join\",\"string-join\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-string-join-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "string-join") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-string-join-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string-join((\"string-joinstring-join\"),\"string-join\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-string-join-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "string-joinstring-join") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-string-join-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string-join(\"****\",\"***\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-string-join-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "****") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-string-join-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string-join(\"12345\",\"1234\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-string-join-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "12345") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-string-join-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string-join(\"string-join\",\"nioj-gnirts\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-string-join-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "string-join") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-string-join-22'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string-join((\"1\", \"2\", \"3\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-string-join-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "123") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-string-join-23'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         let $e := <e><a>1</a><b>2</b><c>3</c></e>
         return fn:string-join($e/*)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-string-join-23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "123") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-string-join-24'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         let $e := <e><a>1</a><b></b><c>3</c></e>
         return fn:string-join($e/*)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-string-join-24.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "13") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-string-join-25'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         let $e := <e><a>1</a><b></b><c>3</c></e>
         return fn:string-join($e/d)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-string-join-25.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-string-join-26'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string-join((1 to 9)!string())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-string-join-26.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "123456789") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-string-join-27'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XP20 XQ10 XP30 XQ30"}. 
'fn-string-join-28'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string-join(1 to 5, \"\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-string-join-28.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "12345") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-string-join-29'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string-join((current-date(), current-time(), current-dateTime()), '#')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-string-join-29.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"matches($result, '.+#.+#.+')") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-string-join-30'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string-join((xs:string#1, xs:gYear#1, xs:float#1, xs:double#1, xs:integer#1)!'1900', ',')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-string-join-30.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1900,1900,1900,1900,1900") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-string-join-31'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string-join(string-to-codepoints('abc'), '-')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-string-join-31.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "97-98-99") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-string-join-32'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         let $x := <a xmlns=\"http://sj31/\"><b/><c/><d/></a> return fn:string-join($x//*/node-name(), '-')
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-string-join-32.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "b-c-d") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-StringJoinFunc-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XQ10 XP20"}. 
'K-StringJoinFunc-1a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string-join(\"a string\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-StringJoinFunc-1a.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "a string") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-StringJoinFunc-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string-join(\"a string\", \"a string\", \"wrong param\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-StringJoinFunc-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-StringJoinFunc-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string-join(('Now', 'is', 'the', 'time', '...'), ' ') eq \"Now is the time ...\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-StringJoinFunc-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-StringJoinFunc-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string-join((\"abc\", \"def\"), \"\") eq \"abcdef\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-StringJoinFunc-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-StringJoinFunc-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string-join(('Blow, ', 'blow, ', 'thou ', 'winter ', 'wind!'), '') eq \"Blow, blow, thou winter wind!\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-StringJoinFunc-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-StringJoinFunc-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string-join((), 'separator') eq \"\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-StringJoinFunc-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-StringJoinFunc-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string-join(\"a string\", ())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-StringJoinFunc-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-fn-string-join-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare function local:repeat($count as xs:integer, $arg as xs:string) as xs:string* { if ($count le 0) then \"\" else for $x in 1 to $count return $arg };
        string-join( for $x in 0 to 4 return local:repeat($x, 'a') , ' ') and string-join( for $x in 0 to 4 return local:repeat($x, 'a') , '')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-fn-string-join-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.