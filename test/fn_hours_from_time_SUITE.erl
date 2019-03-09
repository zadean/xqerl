-module('fn_hours_from_time_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['fn-hours-from-time1args-1'/1]).
-export(['fn-hours-from-time1args-2'/1]).
-export(['fn-hours-from-time1args-3'/1]).
-export(['fn-hours-from-time-1'/1]).
-export(['fn-hours-from-time-2'/1]).
-export(['fn-hours-from-time-3'/1]).
-export(['fn-hours-from-time-4'/1]).
-export(['fn-hours-from-time-5'/1]).
-export(['fn-hours-from-time-6'/1]).
-export(['fn-hours-from-time-7'/1]).
-export(['fn-hours-from-time-8'/1]).
-export(['fn-hours-from-time-9'/1]).
-export(['fn-hours-from-time-10'/1]).
-export(['fn-hours-from-time-11'/1]).
-export(['fn-hours-from-time-12'/1]).
-export(['fn-hours-from-time-13'/1]).
-export(['fn-hours-from-time-14'/1]).
-export(['fn-hours-from-time-15'/1]).
-export(['fn-hours-from-time-16'/1]).
-export(['fn-hours-from-time-17'/1]).
-export(['fn-hours-from-time-18'/1]).
-export(['fn-hours-from-time-19'/1]).
-export(['K-HoursFromTimeFunc-1'/1]).
-export(['K-HoursFromTimeFunc-2'/1]).
-export(['K-HoursFromTimeFunc-3'/1]).
-export(['K-HoursFromTimeFunc-4'/1]).
-export(['K-HoursFromTimeFunc-5'/1]).
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
   {group, group_1}
   ].
groups() -> [
   {group_0, [parallel], [
    'fn-hours-from-time1args-1', 
    'fn-hours-from-time1args-2', 
    'fn-hours-from-time1args-3', 
    'fn-hours-from-time-1', 
    'fn-hours-from-time-2', 
    'fn-hours-from-time-3', 
    'fn-hours-from-time-4', 
    'fn-hours-from-time-5', 
    'fn-hours-from-time-6', 
    'fn-hours-from-time-7', 
    'fn-hours-from-time-8', 
    'fn-hours-from-time-9', 
    'fn-hours-from-time-10', 
    'fn-hours-from-time-11', 
    'fn-hours-from-time-12', 
    'fn-hours-from-time-13', 
    'fn-hours-from-time-14', 
    'fn-hours-from-time-15', 
    'fn-hours-from-time-16', 
    'fn-hours-from-time-17', 
    'fn-hours-from-time-18', 
    'fn-hours-from-time-19', 
    'K-HoursFromTimeFunc-1']}, 
   {group_1, [parallel], [
    'K-HoursFromTimeFunc-2', 
    'K-HoursFromTimeFunc-3', 
    'K-HoursFromTimeFunc-4', 
    'K-HoursFromTimeFunc-5']}].

'fn-hours-from-time1args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:hours-from-time(xs:time(\"00:00:00Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-hours-from-time1args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-hours-from-time1args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:hours-from-time(xs:time(\"08:03:35Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-hours-from-time1args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "8") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-hours-from-time1args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:hours-from-time(xs:time(\"23:59:59Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-hours-from-time1args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "23") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-hours-from-time-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:hours-from-time(xs:time(\"11:23:00Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-hours-from-time-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "11") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-hours-from-time-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:hours-from-time(xs:time(\"21:23:00Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-hours-from-time-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "21") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-hours-from-time-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:hours-from-time(xs:time(\"01:23:00+05:00\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-hours-from-time-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-hours-from-time-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:hours-from-time(fn:adjust-time-to-timezone(xs:time(\"01:23:00+05:00\"), xs:dayTimeDuration(\"PT0H\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-hours-from-time-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "20") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-hours-from-time-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(fn:hours-from-time(()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-hours-from-time-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-hours-from-time-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:hours-from-time(xs:time(\"00:20:00Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-hours-from-time-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-hours-from-time-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:hours-from-time(xs:time(\"23:20:00Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-hours-from-time-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "23") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-hours-from-time-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:hours-from-time(xs:time(\"02:00:00Z\")) + fn:hours-from-time(xs:time(\"10:00:00Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-hours-from-time-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "12") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-hours-from-time-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:hours-from-time(xs:time(\"10:00:00Z\")) - fn:hours-from-time(xs:time(\"09:00:00Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-hours-from-time-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-hours-from-time-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:hours-from-time(xs:time(\"02:00:00Z\")) * fn:hours-from-time(xs:time(\"10:00:00Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-hours-from-time-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "20") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-hours-from-time-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:hours-from-time(xs:time(\"22:00:00Z\")) div fn:hours-from-time(xs:time(\"02:00:00Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-hours-from-time-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "11") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-hours-from-time-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:hours-from-time(xs:time(\"10:00:00Z\")) idiv fn:hours-from-time(xs:time(\"02:00:00Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-hours-from-time-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "5") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-hours-from-time-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:hours-from-time(xs:time(\"10:00:00Z\")) mod fn:hours-from-time(xs:time(\"03:00:00Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-hours-from-time-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-hours-from-time-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "+fn:hours-from-time(xs:time(\"10:00:00Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-hours-from-time-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "10") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-hours-from-time-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "-fn:hours-from-time(xs:time(\"10:00:00Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-hours-from-time-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-10") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-hours-from-time-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:hours-from-time(xs:time(\"10:00:00Z\")) eq fn:hours-from-time(xs:time(\"10:00:00Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-hours-from-time-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-hours-from-time-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:hours-from-time(xs:time(\"10:00:00Z\")) ne fn:hours-from-time(xs:time(\"01:00:00Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-hours-from-time-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-hours-from-time-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:hours-from-time(xs:time(\"10:00:00Z\")) le fn:hours-from-time(xs:time(\"10:00:00Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-hours-from-time-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-hours-from-time-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:hours-from-time(xs:time(\"10:00:00Z\")) ge fn:hours-from-time(xs:time(\"10:00:00Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-hours-from-time-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-HoursFromTimeFunc-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "hours-from-time()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-HoursFromTimeFunc-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-HoursFromTimeFunc-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "hours-from-time((), \"Wrong param\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-HoursFromTimeFunc-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-HoursFromTimeFunc-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(hours-from-time(()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-HoursFromTimeFunc-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-HoursFromTimeFunc-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "hours-from-time(()) instance of xs:integer?", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-HoursFromTimeFunc-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-HoursFromTimeFunc-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "hours-from-time(xs:time(\"23:11:12.43\")) eq 23", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-HoursFromTimeFunc-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.