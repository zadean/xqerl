-module('fn_tokenize_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['fn-tokenize-1'/1]).
-export(['fn-tokenize-2'/1]).
-export(['fn-tokenize-3'/1]).
-export(['fn-tokenize-4'/1]).
-export(['fn-tokenize-5'/1]).
-export(['fn-tokenize-6'/1]).
-export(['fn-tokenize-7'/1]).
-export(['fn-tokenize-8'/1]).
-export(['fn-tokenize-9'/1]).
-export(['fn-tokenize-10'/1]).
-export(['fn-tokenize-11'/1]).
-export(['fn-tokenize-12'/1]).
-export(['fn-tokenize-13'/1]).
-export(['fn-tokenize-14'/1]).
-export(['fn-tokenize-15'/1]).
-export(['fn-tokenize-16'/1]).
-export(['fn-tokenize-17'/1]).
-export(['fn-tokenize-18'/1]).
-export(['fn-tokenize-19'/1]).
-export(['fn-tokenize-20'/1]).
-export(['fn-tokenize-21'/1]).
-export(['fn-tokenize-22'/1]).
-export(['fn-tokenize-23'/1]).
-export(['fn-tokenize-24'/1]).
-export(['fn-tokenize-25'/1]).
-export(['fn-tokenize-26'/1]).
-export(['fn-tokenize-27'/1]).
-export(['fn-tokenize-28'/1]).
-export(['fn-tokenize-29'/1]).
-export(['fn-tokenize-30'/1]).
-export(['fn-tokenize-31'/1]).
-export(['fn-tokenize-32'/1]).
-export(['fn-tokenize-33'/1]).
-export(['fn-tokenize-34'/1]).
-export(['fn-tokenize-35'/1]).
-export(['fn-tokenize-36'/1]).
-export(['fn-tokenize-37'/1]).
-export(['fn-tokenize-38'/1]).
-export(['fn-tokenize-39'/1]).
-export(['fn-tokenize-40'/1]).
-export(['fn-tokenize-41'/1]).
-export(['fn-tokenize-42'/1]).
-export(['fn-tokenize-43'/1]).
-export(['fn-tokenize-44'/1]).
-export(['fn-tokenize-45'/1]).
-export(['fn-tokenize-46'/1]).
-export(['fn-tokenize-47'/1]).
-export(['fn-tokenize-48'/1]).
-export(['fn-tokenize-49'/1]).
-export(['fn-tokenize-50'/1]).
-export(['fn-tokenize-51'/1]).
-export(['fn-tokenize-52'/1]).
-export(['K-TokenizeFunc-1'/1]).
-export(['K-TokenizeFunc-2'/1]).
-export(['K-TokenizeFunc-3'/1]).
-export(['K-TokenizeFunc-4'/1]).
-export(['K-TokenizeFunc-5'/1]).
-export(['K2-TokenizeFunc-1'/1]).
-export(['K2-TokenizeFunc-2'/1]).
-export(['K2-TokenizeFunc-3'/1]).
-export(['K2-TokenizeFunc-4'/1]).
-export(['K2-TokenizeFunc-5'/1]).
-export(['K2-TokenizeFunc-6'/1]).
-export(['K2-TokenizeFunc-7'/1]).
-export(['cbcl-fn-tokenize-001'/1]).
-export(['cbcl-fn-tokenize-002'/1]).
-export(['cbcl-fn-tokenize-003'/1]).
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
    'fn-tokenize-1', 
    'fn-tokenize-2', 
    'fn-tokenize-3', 
    'fn-tokenize-4', 
    'fn-tokenize-5', 
    'fn-tokenize-6', 
    'fn-tokenize-7', 
    'fn-tokenize-8', 
    'fn-tokenize-9', 
    'fn-tokenize-10', 
    'fn-tokenize-11', 
    'fn-tokenize-12', 
    'fn-tokenize-13', 
    'fn-tokenize-14', 
    'fn-tokenize-15', 
    'fn-tokenize-16', 
    'fn-tokenize-17', 
    'fn-tokenize-18', 
    'fn-tokenize-19', 
    'fn-tokenize-20', 
    'fn-tokenize-21', 
    'fn-tokenize-22', 
    'fn-tokenize-23']}, 
   {group_1, [parallel], [
    'fn-tokenize-24', 
    'fn-tokenize-25', 
    'fn-tokenize-26', 
    'fn-tokenize-27', 
    'fn-tokenize-28', 
    'fn-tokenize-29', 
    'fn-tokenize-30', 
    'fn-tokenize-31', 
    'fn-tokenize-32', 
    'fn-tokenize-33', 
    'fn-tokenize-34', 
    'fn-tokenize-35', 
    'fn-tokenize-36', 
    'fn-tokenize-37', 
    'fn-tokenize-38', 
    'fn-tokenize-39', 
    'fn-tokenize-40', 
    'fn-tokenize-41', 
    'fn-tokenize-42', 
    'fn-tokenize-43', 
    'fn-tokenize-44', 
    'fn-tokenize-45', 
    'fn-tokenize-46', 
    'fn-tokenize-47']}, 
   {group_2, [parallel], [
    'fn-tokenize-48', 
    'fn-tokenize-49', 
    'fn-tokenize-50', 
    'fn-tokenize-51', 
    'fn-tokenize-52', 
    'K-TokenizeFunc-1', 
    'K-TokenizeFunc-2', 
    'K-TokenizeFunc-3', 
    'K-TokenizeFunc-4', 
    'K-TokenizeFunc-5', 
    'K2-TokenizeFunc-1', 
    'K2-TokenizeFunc-2', 
    'K2-TokenizeFunc-3', 
    'K2-TokenizeFunc-4', 
    'K2-TokenizeFunc-5', 
    'K2-TokenizeFunc-6', 
    'K2-TokenizeFunc-7', 
    'cbcl-fn-tokenize-001', 
    'cbcl-fn-tokenize-002', 
    'cbcl-fn-tokenize-003']}].

'fn-tokenize-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:tokenize(\"abba\", \".?\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-tokenize-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-tokenize-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:tokenize(\"The cat sat on the mat\", \"\\s+\", \"t\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-tokenize-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-tokenize-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:tokenize(\"The cat sat on the mat\", \"\\s+\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-tokenize-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "The cat sat on the mat") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-tokenize-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:tokenize(\"1, 15, 24, 50\", \",\\s*\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-tokenize-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 15 24 50") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-tokenize-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:tokenize(\"Some unparsed <br> HTML <BR> text\", \"\\s*<br>\\s*\", \"i\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-tokenize-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"Some unparsed\", \"HTML\", \"text\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-tokenize-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:tokenize(\"Some unparsed <br> HTML <BR> text\", \"\\s*<br>\\s*\", \"\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-tokenize-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"Some unparsed\", \"HTML <BR> text\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-tokenize-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(fn:tokenize((), \"\\s+\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-tokenize-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-tokenize-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(fn:tokenize(\"\", \"\\s+\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-tokenize-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-tokenize-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string-join(fn:tokenize(\"abracadabra\", \"(ab)|(a)\"), '#')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-tokenize-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "#r#c#d#r#") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-tokenize-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:tokenize(\"abracadabra\", \"ww\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-tokenize-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "abracadabra") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-tokenize-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:tokenize(\"abracadabra\", \"^a\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-tokenize-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"\", \"bracadabra\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-tokenize-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:tokenize(\"abracadabra^abracadabra\", \"\\^\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-tokenize-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"abracadabra\", \"abracadabra\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-tokenize-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:tokenize(\"abracadabra?abracadabra\", \"\\?\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-tokenize-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"abracadabra\", \"abracadabra\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-tokenize-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:tokenize(\"abracadabra*abracadabra\", \"\\*\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-tokenize-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"abracadabra\", \"abracadabra\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-tokenize-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:tokenize(\"abracadabra+abracadabra\", \"\\+\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-tokenize-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"abracadabra\", \"abracadabra\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-tokenize-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:tokenize(\"abracadabra{abracadabra\", \"\\{\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-tokenize-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"abracadabra\", \"abracadabra\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-tokenize-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:tokenize(\"abracadabra}abracadabra\", \"\\}\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-tokenize-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"abracadabra\", \"abracadabra\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-tokenize-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:tokenize(\"abracadabra(abracadabra\", \"\\(\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-tokenize-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"abracadabra\", \"abracadabra\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-tokenize-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:tokenize(\"abracadabra)abracadabra\", \"\\)\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-tokenize-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"abracadabra\", \"abracadabra\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-tokenize-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:tokenize(\"abracadabra[abracadabra\", \"\\[\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-tokenize-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"abracadabra\", \"abracadabra\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-tokenize-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:tokenize(\"abracadabra]abracadabra\", \"\\]\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-tokenize-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"abracadabra\", \"abracadabra\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-tokenize-22'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:tokenize(\"abracadabra-abracadabra\", \"\\-\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-tokenize-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"abracadabra\", \"abracadabra\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-tokenize-23'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:tokenize(\"abracadabra.abracadabra\", \"\\.\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-tokenize-23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"abracadabra\", \"abracadabra\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-tokenize-24'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:tokenize(\"abracadabra|abracadabra\", \"\\|\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-tokenize-24.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"abracadabra\", \"abracadabra\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-tokenize-25'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:tokenize(\"abracadabra\\abracadabra\", \"\\\\\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-tokenize-25.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"abracadabra\", \"abracadabra\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-tokenize-26'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:tokenize(\"abracadabra	abracadabra\", \"\\t\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-tokenize-26.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"abracadabra\", \"abracadabra\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-tokenize-27'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:tokenize(\"abracadabra
abracadabra\", \"\\n\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-tokenize-27.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"abracadabra\", \"abracadabra\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-tokenize-28'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:tokenize(\"abracadabraabracadabra\", \"aa{1}\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-tokenize-28.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"abracadabr\", \"bracadabra\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-tokenize-29'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:tokenize(\"abracadabraabracadabraabracadabra\", \"aa{1,}\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-tokenize-29.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"abracadabr\", \"bracadabr\", \"bracadabra\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-tokenize-30'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:tokenize(\"abracadabraabracadabraabracadabra\", \"aa{1,2}\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-tokenize-30.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"abracadabr\", \"bracadabr\", \"bracadabra\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-tokenize-31'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:tokenize(\"abc.def.gh.ijk\", \".\", \"q\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-tokenize-31.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"abc\", \"def\", \"gh\", \"ijk\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-tokenize-32'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:tokenize(\"A.BRA.CADA.BRA\", \"a.\", \"qi\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-tokenize-32.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"\", \"BR\", \"CAD\", \"BRA\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-tokenize-33'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:tokenize(\"ABRACADABRA\", \"A(?:B)\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-tokenize-33.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"\", \"RACAD\", \"RA\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-tokenize-34'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:tokenize(concat('Mary', codepoints-to-string(13), 'Jones'), 'y.J')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-tokenize-34.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"concat('Mary', codepoints-to-string(13), 'Jones')") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-tokenize-35'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:tokenize(concat('Mary', codepoints-to-string(13), 'Jones'), 'y.J', 's')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-tokenize-35.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"Mar\", \"ones\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-tokenize-36'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:tokenize(concat('Mary', codepoints-to-string(10), 'Jones'), '^', 'm')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-tokenize-36.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-tokenize-37'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:tokenize(concat('Mary', codepoints-to-string(10), 'Jones'), '$', 'm')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-tokenize-37.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-tokenize-38'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:tokenize(concat('Mary', codepoints-to-string(10), 'Jones'), '^[\\s]*$', 'm')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-tokenize-38.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-tokenize-39'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "tokenize(\"\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-tokenize-39.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-tokenize-40'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "tokenize(())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-tokenize-40.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-tokenize-41'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "tokenize(\"   \")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-tokenize-41.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-tokenize-42'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "tokenize(codepoints-to-string((9, 10, 13, 32, 13, 10, 9)))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-tokenize-42.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-tokenize-43'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "tokenize(\"abc\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-tokenize-43.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"abc\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-tokenize-44'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "tokenize(\" abc \")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-tokenize-44.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"abc\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-tokenize-45'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "tokenize(codepoints-to-string((9, 10, 97, 98, 99, 13, 32)))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-tokenize-45.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"abc\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-tokenize-46'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "tokenize(\"abc def\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-tokenize-46.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"abc\", \"def\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-tokenize-47'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "tokenize(codepoints-to-string((97, 98, 99, 13, 32, 10, 100, 101, 102)))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-tokenize-47.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"abc\", \"def\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-tokenize-48'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "tokenize(codepoints-to-string((9, 9, 97, 98, 99, 13, 32, 10, 100, 101, 102, 10, 10)))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-tokenize-48.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"abc\", \"def\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-tokenize-49'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string-join(tokenize(\" the quick brown fox jumped over the lazy dog \"), '|')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-tokenize-49.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"the|quick|brown|fox|jumped|over|the|lazy|dog\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-tokenize-50'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"xml-version:1.1"}. 
'fn-tokenize-51'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(fn:tokenize(codepoints-to-string((97, 98, 99, 160, 100, 101, 102))))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-tokenize-51.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-tokenize-52'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(tokenize#1, upper-case#1, lower-case#1)[1](\"abc def\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-tokenize-52.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"abc\", \"def\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-TokenizeFunc-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"spec:XP20 XP30 XQ10 XQ30"}. 
'K-TokenizeFunc-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "tokenize(\"input\", ())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-TokenizeFunc-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-TokenizeFunc-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "tokenize(\"input\", \"pattern\", \" \")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-TokenizeFunc-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-TokenizeFunc-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "tokenize(\"input\", \"pattern\", \"X\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-TokenizeFunc-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-TokenizeFunc-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "tokenize(\"input\", \"pattern\", \"\", ())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-TokenizeFunc-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-TokenizeFunc-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:tokenize((\"abracadabra\", current-time())[1] treat as xs:string, \"(ab)|(a)\")[last()] eq \"\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-TokenizeFunc-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-TokenizeFunc-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(fn:tokenize((\"abracadabra\", current-time())[1] treat as xs:string, \"(ab)|(a)\")[last() + 1])", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-TokenizeFunc-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-TokenizeFunc-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:tokenize((\"abracadabra\", current-time())[1] treat as xs:string, \"(ab)|(a)\")[last() - 1]", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-TokenizeFunc-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "r") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-TokenizeFunc-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:tokenize((\"abracadabra\", current-time())[1] treat as xs:string, \"(ab)|(a)\")[last() - 3]", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-TokenizeFunc-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "c") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-TokenizeFunc-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "deep-equal(fn:tokenize(\"The cat sat on the mat\", \"\\s+\"), (\"The\", \"cat\", \"sat\", \"on\", \"the\", \"mat\")), count(fn:tokenize(\"The cat sat on the mat\", \"\\s+\")), count(fn:tokenize(\" The cat sat on the mat \", \"\\s+\")), fn:tokenize(\"The cat sat on the mat\", \"\\s+\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-TokenizeFunc-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "true 6 8 The cat sat on the mat") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-TokenizeFunc-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "replace('APXterms6', '\\w{3}\\d*([^TKR0-9]+).*$', '$1')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-TokenizeFunc-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "terms") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-TokenizeFunc-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(tokenize(\"a b\", \" \")), count(tokenize(\"a b\", \"\\s\")), string-join(tokenize(\"a b\", \" \"), '|'), string-join(tokenize(\"a b\", \"\\s\"), '|'), tokenize(\"a b\", \" \"), tokenize(\"a b\", \"\\s\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-TokenizeFunc-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2 2 a|b a|b a b a b") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-fn-tokenize-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      for $x in xs:string(zero-or-one((1 to 10)[. mod 2 = -1])) return tokenize($x,',')
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-fn-tokenize-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-fn-tokenize-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      tokenize(string-join(for $x in (1 to 10)[. mod 2 = 0] return string($x),','),'[')
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-fn-tokenize-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-fn-tokenize-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      tokenize(string-join(for $x in (1 to 10)[. mod 2 < 0] return string($x),','),',')
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-fn-tokenize-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.