-module('prod_PositionalVar_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['K-ForExprPositionalVar-1'/1]).
-export(['K-ForExprPositionalVar-2'/1]).
-export(['K-ForExprPositionalVar-3'/1]).
-export(['K-ForExprPositionalVar-4'/1]).
-export(['K-ForExprPositionalVar-5'/1]).
-export(['K-ForExprPositionalVar-6'/1]).
-export(['K-ForExprPositionalVar-7'/1]).
-export(['K-ForExprPositionalVar-8'/1]).
-export(['K-ForExprPositionalVar-9'/1]).
-export(['K-ForExprPositionalVar-10'/1]).
-export(['K-ForExprPositionalVar-11'/1]).
-export(['K-ForExprPositionalVar-12'/1]).
-export(['K-ForExprPositionalVar-13'/1]).
-export(['K-ForExprPositionalVar-14'/1]).
-export(['K-ForExprPositionalVar-15'/1]).
-export(['K-ForExprPositionalVar-16'/1]).
-export(['K-ForExprPositionalVar-17'/1]).
-export(['K-ForExprPositionalVar-18'/1]).
-export(['K-ForExprPositionalVar-19'/1]).
-export(['K-ForExprPositionalVar-20'/1]).
-export(['K-ForExprPositionalVar-21'/1]).
-export(['K-ForExprPositionalVar-22'/1]).
-export(['K-ForExprPositionalVar-23'/1]).
-export(['K-ForExprPositionalVar-24'/1]).
-export(['K-ForExprPositionalVar-25'/1]).
-export(['K-ForExprPositionalVar-26'/1]).
-export(['K-ForExprPositionalVar-27'/1]).
-export(['K-ForExprPositionalVar-28'/1]).
-export(['K-ForExprPositionalVar-29'/1]).
-export(['K-ForExprPositionalVar-30'/1]).
-export(['K2-ForExprPositionalVar-1'/1]).
-export(['K2-ForExprPositionalVar-2'/1]).
-export(['K2-ForExprPositionalVar-3'/1]).
-export(['K2-ForExprPositionalVar-4'/1]).
suite() -> [{timetrap,{seconds, 5}}].
end_per_suite(_Config) -> 
   ct:timetrap({seconds,60}), 
   xqerl_module:unload(all).
init_per_suite(Config) -> 
   xqerl_module:one_time_init(), 
   {ok,_} = application:ensure_all_started(xqerl),
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   __BaseDir = filename:join(TD, "prod"),
   [{base_dir, __BaseDir}|Config].
all() -> [
'K-ForExprPositionalVar-1', 
'K-ForExprPositionalVar-2', 
'K-ForExprPositionalVar-3', 
'K-ForExprPositionalVar-4', 
'K-ForExprPositionalVar-5', 
'K-ForExprPositionalVar-6', 
'K-ForExprPositionalVar-7', 
'K-ForExprPositionalVar-8', 
'K-ForExprPositionalVar-9', 
'K-ForExprPositionalVar-10', 
'K-ForExprPositionalVar-11', 
'K-ForExprPositionalVar-12', 
'K-ForExprPositionalVar-13', 
'K-ForExprPositionalVar-14', 
'K-ForExprPositionalVar-15', 
'K-ForExprPositionalVar-16', 
'K-ForExprPositionalVar-17', 
'K-ForExprPositionalVar-18', 
'K-ForExprPositionalVar-19', 
'K-ForExprPositionalVar-20', 
'K-ForExprPositionalVar-21', 
'K-ForExprPositionalVar-22', 
'K-ForExprPositionalVar-23', 
'K-ForExprPositionalVar-24', 
'K-ForExprPositionalVar-25', 
'K-ForExprPositionalVar-26', 
'K-ForExprPositionalVar-27', 
'K-ForExprPositionalVar-28', 
'K-ForExprPositionalVar-29', 
'K-ForExprPositionalVar-30', 
'K2-ForExprPositionalVar-1', 
'K2-ForExprPositionalVar-2', 
'K2-ForExprPositionalVar-3', 
'K2-ForExprPositionalVar-4'
].

'K-ForExprPositionalVar-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $a at $p in (1, 2) return 1, $p", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-ForExprPositionalVar-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-ForExprPositionalVar-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $a at $p1 in (1, 2), $b at $p2 in (1, 2), $c at $p3 in (1, 2) return 1, $p1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-ForExprPositionalVar-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-ForExprPositionalVar-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $a at $p1 in (1, 2), $b at $p2 in (1, 2), $c at $p3 in (1, 2) return 1, $p2", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-ForExprPositionalVar-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-ForExprPositionalVar-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $a at $p1 in (1, 2), $b at $p2 in (1, 2), $c at $p3 in (1, 2) return 1, $p3", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-ForExprPositionalVar-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-ForExprPositionalVar-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $a at p1 in 1 return 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-ForExprPositionalVar-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-ForExprPositionalVar-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "deep-equal((1, 2, 3), for $i at $p in (1, 2, 3) return $p)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-ForExprPositionalVar-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-ForExprPositionalVar-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "deep-equal((true(), true()), for $i at $p in (1, 2) return boolean($p))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-ForExprPositionalVar-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-ForExprPositionalVar-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $i at $p in (1, 2, 3) return $p + \"1\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-ForExprPositionalVar-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-ForExprPositionalVar-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "deep-equal((1, 2, 3), for $i at $p in string-to-codepoints(\"abc\") return $p)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-ForExprPositionalVar-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-ForExprPositionalVar-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "deep-equal((1, 2, 3), for $i at $p in distinct-values((1, 2, 3, 1, 2)) return $p)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-ForExprPositionalVar-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-ForExprPositionalVar-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(for $i at $p in () return $p)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-ForExprPositionalVar-11.xq"), Qry1),
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
'K-ForExprPositionalVar-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "deep-equal((1, 2, 3, 4), for $i at $p in insert-before((1, current-time()), 13, (current-date(), 3)) return $p)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-ForExprPositionalVar-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-ForExprPositionalVar-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "deep-equal((1, 2, 3, 4), for $i at $p in insert-before((1, current-time()), 1, (current-date(), 3)) return $p)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-ForExprPositionalVar-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-ForExprPositionalVar-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "deep-equal((1, 2, 3, 4), for $i at $p in insert-before((1, current-time()), 2, (current-date(), 3)) return $p)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-ForExprPositionalVar-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-ForExprPositionalVar-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "deep-equal((1, 2, 3, 4), for $i at $p in 1 to 4 return $p)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-ForExprPositionalVar-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-ForExprPositionalVar-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "deep-equal((1, 2, 3, 4), for $i at $p in -10 to -7 return $p)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-ForExprPositionalVar-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-ForExprPositionalVar-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "deep-equal((1, 2, 3), for $i at $p in remove((1, 2, 3, current-time()), 2) return $p)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-ForExprPositionalVar-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-ForExprPositionalVar-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "deep-equal((1, 2, 3), for $i at $p in remove((1, 2, 3, current-time()), 4) return $p)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-ForExprPositionalVar-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-ForExprPositionalVar-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "deep-equal((1, 2, 3), for $i at $p in remove((1, 2, current-time()), 10) return $p)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-ForExprPositionalVar-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-ForExprPositionalVar-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "deep-equal((1, 2, 3), for $i at $p in remove((1, 2, current-time()), 0) return $p)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-ForExprPositionalVar-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-ForExprPositionalVar-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "deep-equal((1, 2, 3), for $i at $p in remove((1, 2, 3, current-time()), 1) return $p)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-ForExprPositionalVar-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-ForExprPositionalVar-22'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "deep-equal((1, 2, 3), for $i at $p in remove((1, 2, 3, current-time()), 3) return $p)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-ForExprPositionalVar-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-ForExprPositionalVar-23'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1 eq (for $i at $p in subsequence((1, 2, 3, current-time()), 1, 1) return $p)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-ForExprPositionalVar-23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-ForExprPositionalVar-24'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(for $i at $p in subsequence((1, 2, 3, current-time()), 5) return $p)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-ForExprPositionalVar-24.xq"), Qry1),
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
'K-ForExprPositionalVar-25'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(for $i at $p in subsequence((1, 2, 3, current-time()), 5, 8) return $p)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-ForExprPositionalVar-25.xq"), Qry1),
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
'K-ForExprPositionalVar-26'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "deep-equal((1, 2), for $i at $p in subsequence((1, 2, 3, current-time()), 3, 2) return $p)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-ForExprPositionalVar-26.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-ForExprPositionalVar-27'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "deep-equal((1, 2), for $i at $p in subsequence((1, 2, 3, current-time()), 1, 2) return $p)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-ForExprPositionalVar-27.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-ForExprPositionalVar-28'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "deep-equal((1, 2), for $i at $p in subsequence((1, 2, 3, current-time()), 2, 2) return $p)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-ForExprPositionalVar-28.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-ForExprPositionalVar-29'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1 eq (for $i at $p in 0 return $p)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-ForExprPositionalVar-29.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-ForExprPositionalVar-30'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "deep-equal(for $i at $p in (1, 2, 3, 4) return ($i, $p), (1, 1, 2, 2, 3, 3, 4, 4))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-ForExprPositionalVar-30.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-ForExprPositionalVar-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $i at $p in remove((1, 2, 3), 10) return $p", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-ForExprPositionalVar-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 2 3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-ForExprPositionalVar-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $tree := <e> <a id=\"1\"/> <a id=\"2\"/> <a id=\"3\"/> </e> for $i at $pos in (\"a\", \"b\", \"c\") return ($tree/@id eq $pos, $pos)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-ForExprPositionalVar-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "1 2 3") of 
      true -> {comment, "String correct"};
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
'K2-ForExprPositionalVar-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $tree := <e> <a id=\"1\"/> <a id=\"2\"/> <a id=\"3\"/> </e> for $i at $pos in (\"a\", \"b\", \"c\") return ($tree/a/@id = $pos, $pos)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-ForExprPositionalVar-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "true 1 true 2 true 3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-ForExprPositionalVar-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $i at $pos in (3 to 6) let $let := $pos + 1 return ($let, $let - 1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-ForExprPositionalVar-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2 1 3 2 4 3 5 4") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.