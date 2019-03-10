-module('prod_DefaultCollationDecl_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['defaultcolldecl-1'/1]).
-export(['defaultcolldecl-2'/1]).
-export(['defaultcolldecl-3'/1]).
-export(['defaultcolldecl-4'/1]).
-export(['defaultcolldecl-5'/1]).
-export(['defaultcolldecl-6'/1]).
-export(['K-CollationProlog-1'/1]).
-export(['K-CollationProlog-2'/1]).
-export(['K-CollationProlog-3'/1]).
-export(['K-CollationProlog-4'/1]).
-export(['K-CollationProlog-5'/1]).
-export(['K2-CollationProlog-1'/1]).
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
   __BaseDir = filename:join(TD, "prod"),
   [{base_dir, __BaseDir}|Config].
all() -> [
   {group, group_0}
   ].
groups() -> [
   {group_0, [parallel], [
    'defaultcolldecl-1', 
    'defaultcolldecl-2', 
    'defaultcolldecl-3', 
    'defaultcolldecl-4', 
    'defaultcolldecl-5', 
    'defaultcolldecl-6', 
    'K-CollationProlog-1', 
    'K-CollationProlog-2', 
    'K-CollationProlog-3', 
    'K-CollationProlog-4', 
    'K-CollationProlog-5', 
    'K2-CollationProlog-1']}].

'defaultcolldecl-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         declare default collation \"http://www.w3.org/2005/xpath-functions/collation/codepoint\"; 
         declare default collation \"http://www.w3.org/2005/xpath-functions/collation/codepoint\"; 
         declare variable $input-context1 external; \"aaa\"
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "defaultcolldecl-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0038") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'defaultcolldecl-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         declare default collation \"http://nonexistentcollition.org/ifsupportedwoooayouarethebestQueryimplementation/makeitharder\"; 
         declare variable $input-context1 external; \"aaa\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "defaultcolldecl-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0038") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'defaultcolldecl-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         declare default collation \"http://www.w3.org/2013/collation/UCA?strength=secondary;fallback=no\"; 
         compare('abc','aBC')
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "defaultcolldecl-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'defaultcolldecl-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         declare default collation \"http://www.w3.org/2013/collation/UCA?strength=secondary;fallback=no\"; 
         'abc' eq 'aBC'
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "defaultcolldecl-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'defaultcolldecl-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         declare default collation \"http://www.w3.org/2013/collation/UCA?strength=secondary;fallback=no\"; 
         starts-with('abc', 'aB')
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "defaultcolldecl-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'defaultcolldecl-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         declare default collation \"http://www.w3.org/2013/collation/UCA?strength=secondary;fallback=no\"; 
         string-join(for $x in ('abc', 'aB', 'Abcd') order by $x return $x, ' ')
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "defaultcolldecl-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "aB abc Abcd") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOCH0002") of 
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
'K-CollationProlog-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         declare base-uri \"http://www.w3.org/2005/xpath-functions/\"; 
         declare default collation \"collation/codepoint\"; 
         default-collation() eq \"http://www.w3.org/2005/xpath-functions/collation/codepoint\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-CollationProlog-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-CollationProlog-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         declare base-uri \"http://example.com/\"; 
         declare default collation \"collation/codepoint/DOESNOTEXIT/Testing\"; 
         1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-CollationProlog-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0038") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-CollationProlog-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         declare default collation \"http://www.w3.org/2005/xpath-functions/collation/codepoint\"; 
         default-collation() eq \"http://www.w3.org/2005/xpath-functions/collation/codepoint\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-CollationProlog-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-CollationProlog-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         declare default collation \"http://www.w3.org/2005/xpath-functions/collation/codepoint\"; 
         declare default collation \"http://www.w3.org/2005/xpath-functions/collation/codepoint\"; 
         default-collation() eq \"http://www.w3.org/2005/xpath-functions/collation/codepoint\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-CollationProlog-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0038") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-CollationProlog-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         declare default collation \"http://www.w3.org/2005/xpath-functions/collation/codepoint\"; 
         declare default collation \"http://www.w3.org/2005/xpath-functions/collation/codepoint2\"; 
         default-collation() eq \"http://www.w3.org/2005/xpath-functions/collation/codepoint\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-CollationProlog-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0038") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-CollationProlog-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare default collation \"&\"; 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-CollationProlog-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.