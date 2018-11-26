-module('fn_seconds_from_time_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['fn-seconds-from-time1args-1'/1]).
-export(['fn-seconds-from-time1args-2'/1]).
-export(['fn-seconds-from-time1args-3'/1]).
-export(['fn-seconds-from-time-1'/1]).
-export(['fn-seconds-from-time-2'/1]).
-export(['fn-seconds-from-time-3'/1]).
-export(['fn-seconds-from-time-4'/1]).
-export(['fn-seconds-from-time-5'/1]).
-export(['fn-seconds-from-time-6'/1]).
-export(['fn-seconds-from-time-7'/1]).
-export(['fn-seconds-from-time-8'/1]).
-export(['fn-seconds-from-time-9'/1]).
-export(['fn-seconds-from-time-10'/1]).
-export(['fn-seconds-from-time-11'/1]).
-export(['fn-seconds-from-time-12'/1]).
-export(['fn-seconds-from-time-13'/1]).
-export(['fn-seconds-from-time-14'/1]).
-export(['fn-seconds-from-time-15'/1]).
-export(['fn-seconds-from-time-16'/1]).
-export(['fn-seconds-from-time-17'/1]).
-export(['fn-seconds-from-time-18'/1]).
-export(['fn-seconds-from-time-19'/1]).
-export(['K-SecondsFromTimeFunc-1'/1]).
-export(['K-SecondsFromTimeFunc-2'/1]).
-export(['K-SecondsFromTimeFunc-3'/1]).
-export(['K-SecondsFromTimeFunc-4'/1]).
-export(['K-SecondsFromTimeFunc-5'/1]).
suite() -> [{timetrap,{seconds,5}}].
end_per_suite(_Config) -> 
   ct:timetrap({seconds,60}), 
   xqerl_module:unload(all).
init_per_suite(Config) -> 
   xqerl_db:install([node()]),
   xqerl_module:one_time_init(), 
   {ok,_} = application:ensure_all_started(xqerl),
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   __BaseDir = filename:join(TD, "fn"),
   [{base_dir, __BaseDir}|Config].
all() -> [
'fn-seconds-from-time1args-1', 
'fn-seconds-from-time1args-2', 
'fn-seconds-from-time1args-3', 
'fn-seconds-from-time-1', 
'fn-seconds-from-time-2', 
'fn-seconds-from-time-3', 
'fn-seconds-from-time-4', 
'fn-seconds-from-time-5', 
'fn-seconds-from-time-6', 
'fn-seconds-from-time-7', 
'fn-seconds-from-time-8', 
'fn-seconds-from-time-9', 
'fn-seconds-from-time-10', 
'fn-seconds-from-time-11', 
'fn-seconds-from-time-12', 
'fn-seconds-from-time-13', 
'fn-seconds-from-time-14', 
'fn-seconds-from-time-15', 
'fn-seconds-from-time-16', 
'fn-seconds-from-time-17', 
'fn-seconds-from-time-18', 
'fn-seconds-from-time-19', 
'K-SecondsFromTimeFunc-1', 
'K-SecondsFromTimeFunc-2', 
'K-SecondsFromTimeFunc-3', 
'K-SecondsFromTimeFunc-4', 
'K-SecondsFromTimeFunc-5'
].

'fn-seconds-from-time1args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:seconds-from-time(xs:time(\"00:00:00Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-seconds-from-time1args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-seconds-from-time1args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:seconds-from-time(xs:time(\"08:03:35Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-seconds-from-time1args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "35") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-seconds-from-time1args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:seconds-from-time(xs:time(\"23:59:59Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-seconds-from-time1args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "59") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-seconds-from-time-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:seconds-from-time(xs:time(\"13:20:10.5\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-seconds-from-time-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "10.5") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-seconds-from-time-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:seconds-from-time(xs:time(\"21:23:04Z\")) lt fn:seconds-from-time(xs:time(\"21:24:00Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-seconds-from-time-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-seconds-from-time-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:seconds-from-time(xs:time(\"01:23:02Z\")) gt fn:seconds-from-time(xs:time(\"01:23:03Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-seconds-from-time-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-seconds-from-time-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:avg((fn:seconds-from-time(xs:time(\"01:10:20Z\")), fn:seconds-from-time(xs:time(\"01:20:30Z\"))))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-seconds-from-time-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "25") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-seconds-from-time-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(fn:seconds-from-time(()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-seconds-from-time-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-seconds-from-time-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:hours-from-time(xs:time(\"00:59:00Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-seconds-from-time-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-seconds-from-time-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:seconds-from-time(xs:time(\"23:20:59Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-seconds-from-time-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "59") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-seconds-from-time-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:seconds-from-time(xs:time(\"02:00:00Z\")) + fn:seconds-from-time(xs:time(\"10:00:10Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-seconds-from-time-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "10") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-seconds-from-time-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:seconds-from-time(xs:time(\"10:10:10Z\")) - fn:seconds-from-time(xs:time(\"09:02:07Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-seconds-from-time-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-seconds-from-time-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:seconds-from-time(xs:time(\"02:02:03Z\")) * fn:seconds-from-time(xs:time(\"10:08:09Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-seconds-from-time-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "27") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-seconds-from-time-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:seconds-from-time(xs:time(\"22:33:10Z\")) div fn:seconds-from-time(xs:time(\"02:11:02Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-seconds-from-time-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "5") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-seconds-from-time-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:seconds-from-time(xs:time(\"10:12:15Z\")) idiv fn:seconds-from-time(xs:time(\"02:02:03Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-seconds-from-time-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "5") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-seconds-from-time-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:seconds-from-time(xs:time(\"10:10:20Z\")) mod fn:seconds-from-time(xs:time(\"03:03:02Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-seconds-from-time-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-seconds-from-time-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "+fn:seconds-from-time(xs:time(\"10:00:01Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-seconds-from-time-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-seconds-from-time-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "-fn:seconds-from-time(xs:time(\"10:10:01Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-seconds-from-time-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-seconds-from-time-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:seconds-from-time(xs:time(\"10:02:01Z\")) eq fn:seconds-from-time(xs:time(\"10:02:00Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-seconds-from-time-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-seconds-from-time-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:seconds-from-time(xs:time(\"10:00:01Z\")) ne fn:seconds-from-time(xs:time(\"01:01:00Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-seconds-from-time-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-seconds-from-time-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:seconds-from-time(xs:time(\"10:00:00Z\")) le fn:seconds-from-time(xs:time(\"10:00:00Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-seconds-from-time-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-seconds-from-time-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:seconds-from-time(xs:time(\"10:03:01Z\")) ge fn:seconds-from-time(xs:time(\"10:04:02Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-seconds-from-time-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SecondsFromTimeFunc-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "seconds-from-time()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-SecondsFromTimeFunc-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SecondsFromTimeFunc-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "seconds-from-time((), \"Wrong param\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-SecondsFromTimeFunc-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SecondsFromTimeFunc-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(seconds-from-time(()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-SecondsFromTimeFunc-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SecondsFromTimeFunc-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "seconds-from-time(()) instance of xs:decimal?", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-SecondsFromTimeFunc-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SecondsFromTimeFunc-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "seconds-from-time(xs:time(\"23:11:12.43\")) eq 12.43", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-SecondsFromTimeFunc-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.