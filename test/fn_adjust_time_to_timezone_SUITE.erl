-module('fn_adjust_time_to_timezone_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['fn-adjust-time-to-timezone1args-1'/1]).
-export(['fn-adjust-time-to-timezone1args-2'/1]).
-export(['fn-adjust-time-to-timezone1args-3'/1]).
-export(['fn-adjust-time-to-timezone-1'/1]).
-export(['fn-adjust-time-to-timezone-2'/1]).
-export(['fn-adjust-time-to-timezone-3'/1]).
-export(['fn-adjust-time-to-timezone-4'/1]).
-export(['fn-adjust-time-to-timezone-5'/1]).
-export(['fn-adjust-time-to-timezone-6'/1]).
-export(['fn-adjust-time-to-timezone-7'/1]).
-export(['fn-adjust-time-to-timezone-8'/1]).
-export(['fn-adjust-time-to-timezone-9'/1]).
-export(['fn-adjust-time-to-timezone-10'/1]).
-export(['fn-adjust-time-to-timezone-11'/1]).
-export(['fn-adjust-time-to-timezone-12'/1]).
-export(['fn-adjust-time-to-timezone-13'/1]).
-export(['fn-adjust-time-to-timezone-14'/1]).
-export(['fn-adjust-time-to-timezone-15'/1]).
-export(['fn-adjust-time-to-timezone-16'/1]).
-export(['fn-adjust-time-to-timezone-17'/1]).
-export(['fn-adjust-time-to-timezone-18'/1]).
-export(['fn-adjust-time-to-timezone-19'/1]).
-export(['fn-adjust-time-to-timezone-20'/1]).
-export(['fn-adjust-time-to-timezone-21'/1]).
-export(['K-AdjTimeToTimezoneFunc-1'/1]).
-export(['K-AdjTimeToTimezoneFunc-2'/1]).
-export(['K-AdjTimeToTimezoneFunc-3'/1]).
-export(['K-AdjTimeToTimezoneFunc-4'/1]).
-export(['K-AdjTimeToTimezoneFunc-5'/1]).
-export(['K-AdjTimeToTimezoneFunc-6'/1]).
-export(['K-AdjTimeToTimezoneFunc-7'/1]).
-export(['K-AdjTimeToTimezoneFunc-8'/1]).
-export(['K-AdjTimeToTimezoneFunc-9'/1]).
-export(['K-AdjTimeToTimezoneFunc-10'/1]).
-export(['K-AdjTimeToTimezoneFunc-11'/1]).
-export(['K-AdjTimeToTimezoneFunc-12'/1]).
-export(['K-AdjTimeToTimezoneFunc-13'/1]).
-export(['K-AdjTimeToTimezoneFunc-14'/1]).
-export(['K-AdjTimeToTimezoneFunc-15'/1]).
-export(['K-AdjTimeToTimezoneFunc-16'/1]).
-export(['cbcl-adjust-time-to-timezone-001'/1]).
-export(['cbcl-adjust-time-to-timezone-002'/1]).
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
    'fn-adjust-time-to-timezone1args-1', 
    'fn-adjust-time-to-timezone1args-2', 
    'fn-adjust-time-to-timezone1args-3', 
    'fn-adjust-time-to-timezone-1', 
    'fn-adjust-time-to-timezone-2', 
    'fn-adjust-time-to-timezone-3', 
    'fn-adjust-time-to-timezone-4', 
    'fn-adjust-time-to-timezone-5', 
    'fn-adjust-time-to-timezone-6', 
    'fn-adjust-time-to-timezone-7', 
    'fn-adjust-time-to-timezone-8', 
    'fn-adjust-time-to-timezone-9', 
    'fn-adjust-time-to-timezone-10', 
    'fn-adjust-time-to-timezone-11', 
    'fn-adjust-time-to-timezone-12', 
    'fn-adjust-time-to-timezone-13', 
    'fn-adjust-time-to-timezone-14', 
    'fn-adjust-time-to-timezone-15', 
    'fn-adjust-time-to-timezone-16', 
    'fn-adjust-time-to-timezone-17', 
    'fn-adjust-time-to-timezone-18', 
    'fn-adjust-time-to-timezone-19', 
    'fn-adjust-time-to-timezone-20']}, 
   {group_1, [parallel], [
    'fn-adjust-time-to-timezone-21', 
    'K-AdjTimeToTimezoneFunc-1', 
    'K-AdjTimeToTimezoneFunc-2', 
    'K-AdjTimeToTimezoneFunc-3', 
    'K-AdjTimeToTimezoneFunc-4', 
    'K-AdjTimeToTimezoneFunc-5', 
    'K-AdjTimeToTimezoneFunc-6', 
    'K-AdjTimeToTimezoneFunc-7', 
    'K-AdjTimeToTimezoneFunc-8', 
    'K-AdjTimeToTimezoneFunc-9', 
    'K-AdjTimeToTimezoneFunc-10', 
    'K-AdjTimeToTimezoneFunc-11', 
    'K-AdjTimeToTimezoneFunc-12', 
    'K-AdjTimeToTimezoneFunc-13', 
    'K-AdjTimeToTimezoneFunc-14', 
    'K-AdjTimeToTimezoneFunc-15', 
    'K-AdjTimeToTimezoneFunc-16', 
    'cbcl-adjust-time-to-timezone-001', 
    'cbcl-adjust-time-to-timezone-002']}].

'fn-adjust-time-to-timezone1args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:adjust-time-to-timezone(xs:time(\"00:00:00Z\"),xs:dayTimeDuration(\"-PT10H\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-adjust-time-to-timezone1args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "14:00:00-10:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-adjust-time-to-timezone1args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:adjust-time-to-timezone(xs:time(\"08:03:35Z\"),xs:dayTimeDuration(\"-PT10H\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-adjust-time-to-timezone1args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "22:03:35-10:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-adjust-time-to-timezone1args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:adjust-time-to-timezone(xs:time(\"23:59:59Z\"),xs:dayTimeDuration(\"-PT10H\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-adjust-time-to-timezone1args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "13:59:59-10:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-adjust-time-to-timezone-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:adjust-time-to-timezone(xs:time(\"10:00:00-05:00\"),xs:dayTimeDuration(\"-PT5H0M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-adjust-time-to-timezone-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "10:00:00-05:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-adjust-time-to-timezone-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:adjust-time-to-timezone(xs:time(\"10:00:00-07:00\"),xs:dayTimeDuration(\"-PT5H0M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-adjust-time-to-timezone-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "12:00:00-05:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-adjust-time-to-timezone-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $tz := xs:dayTimeDuration(\"-PT10H\") 
         return fn:adjust-time-to-timezone(xs:time(\"10:00:00\"), $tz)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-adjust-time-to-timezone-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "10:00:00-10:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-adjust-time-to-timezone-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $tz := xs:dayTimeDuration(\"-PT10H\") 
         return fn:adjust-time-to-timezone(xs:time(\"10:00:00-07:00\"), $tz)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-adjust-time-to-timezone-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "07:00:00-10:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-adjust-time-to-timezone-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:adjust-time-to-timezone(xs:time(\"10:00:00-05:00\"),())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-adjust-time-to-timezone-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "10:00:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-adjust-time-to-timezone-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:adjust-time-to-timezone(xs:time(\"10:00:00-07:00\"), ())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-adjust-time-to-timezone-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "10:00:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-adjust-time-to-timezone-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:adjust-time-to-timezone(xs:time(\"10:00:00-07:00\"), xs:dayTimeDuration(\"PT10H\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-adjust-time-to-timezone-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "03:00:00+10:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-adjust-time-to-timezone-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(fn:adjust-time-to-timezone((),()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-adjust-time-to-timezone-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-adjust-time-to-timezone-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:adjust-time-to-timezone(xs:time(\"09:00:00Z\"),()) - fn:adjust-time-to-timezone(xs:time(\"10:00:00Z\"),())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-adjust-time-to-timezone-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-PT1H") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-adjust-time-to-timezone-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:adjust-time-to-timezone(xs:time(\"10:00:00Z\"),()) - fn:adjust-time-to-timezone(xs:time(\"10:00:00Z\"),())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-adjust-time-to-timezone-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "PT0S") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-adjust-time-to-timezone-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string(fn:adjust-time-to-timezone(xs:time(\"10:00:00Z\"),()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-adjust-time-to-timezone-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "10:00:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-adjust-time-to-timezone-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:boolean(fn:string(fn:adjust-time-to-timezone(xs:time(\"10:00:00Z\"),())))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-adjust-time-to-timezone-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-adjust-time-to-timezone-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:not(fn:string(fn:adjust-time-to-timezone(xs:time(\"10:00:00Z\"),())))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-adjust-time-to-timezone-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-adjust-time-to-timezone-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string(fn:adjust-time-to-timezone(xs:time(\"10:00:00Z\"),())) or fn:true()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-adjust-time-to-timezone-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-adjust-time-to-timezone-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string(fn:adjust-time-to-timezone(xs:time(\"10:00:00Z\"),())) or fn:false()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-adjust-time-to-timezone-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-adjust-time-to-timezone-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string(fn:adjust-time-to-timezone(xs:time(\"10:00:00Z\"),())) and fn:true()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-adjust-time-to-timezone-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-adjust-time-to-timezone-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string(fn:adjust-time-to-timezone(xs:time(\"10:00:00Z\"),())) and fn:false()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-adjust-time-to-timezone-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-adjust-time-to-timezone-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $tz := xs:dayTimeDuration(\"PT10H\") 
         return fn:adjust-time-to-timezone(xs:time(\"01:00:00Z\"),$tz) - xs:time(\"10:00:00Z\")
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-adjust-time-to-timezone-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-PT9H") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-adjust-time-to-timezone-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $tz := xs:dayTimeDuration(\"PT10H\") 
         return fn:adjust-time-to-timezone(xs:time(\"10:00:00Z\"),$tz) - xs:time(\"09:00:00Z\")
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-adjust-time-to-timezone-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "PT1H") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-adjust-time-to-timezone-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:adjust-time-to-timezone(xs:time(\"10:00:00Z\"),()) ge fn:adjust-time-to-timezone(xs:time(\"11:00:00Z\"),())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-adjust-time-to-timezone-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-adjust-time-to-timezone-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:adjust-time-to-timezone(current-time()[current-date() lt xs:date('2000-01-01')])", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-adjust-time-to-timezone-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-AdjTimeToTimezoneFunc-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "adjust-time-to-timezone()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-AdjTimeToTimezoneFunc-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-AdjTimeToTimezoneFunc-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "adjust-time-to-timezone((), (), \"WRONG PARAM\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-AdjTimeToTimezoneFunc-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-AdjTimeToTimezoneFunc-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(adjust-time-to-timezone(()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-AdjTimeToTimezoneFunc-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-AdjTimeToTimezoneFunc-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(adjust-time-to-timezone((), ()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-AdjTimeToTimezoneFunc-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-AdjTimeToTimezoneFunc-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "adjust-time-to-timezone(()) instance of xs:time?", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-AdjTimeToTimezoneFunc-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-AdjTimeToTimezoneFunc-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "adjust-time-to-timezone(xs:time(\"08:02:00\"), xs:dayTimeDuration(\"PT14H1M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-AdjTimeToTimezoneFunc-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODT0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-AdjTimeToTimezoneFunc-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "adjust-time-to-timezone(xs:time(\"08:02:00\"), xs:dayTimeDuration(\"-PT14H1M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-AdjTimeToTimezoneFunc-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODT0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-AdjTimeToTimezoneFunc-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "adjust-time-to-timezone(xs:time(\"08:02:00\"), xs:dayTimeDuration(\"PT14H0M0.001S\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-AdjTimeToTimezoneFunc-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODT0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-AdjTimeToTimezoneFunc-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "timezone-from-time(adjust-time-to-timezone(xs:time(\"00:00:00\"))) eq implicit-timezone()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-AdjTimeToTimezoneFunc-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-AdjTimeToTimezoneFunc-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "adjust-time-to-timezone(xs:time(\"10:00:00\"), xs:dayTimeDuration(\"-PT5H0M\")) eq xs:time(\"10:00:00-05:00\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-AdjTimeToTimezoneFunc-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-AdjTimeToTimezoneFunc-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "adjust-time-to-timezone(xs:time(\"10:00:00-07:00\"), xs:dayTimeDuration(\"-PT5H0M\")) eq xs:time(\"12:00:00-05:00\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-AdjTimeToTimezoneFunc-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-AdjTimeToTimezoneFunc-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "adjust-time-to-timezone(xs:time(\"10:00:00\"), xs:dayTimeDuration(\"-PT10H\")) eq xs:time(\"10:00:00-10:00\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-AdjTimeToTimezoneFunc-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-AdjTimeToTimezoneFunc-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "adjust-time-to-timezone(xs:time(\"10:00:00-07:00\"), xs:dayTimeDuration(\"-PT10H\")) eq xs:time(\"07:00:00-10:00\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-AdjTimeToTimezoneFunc-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-AdjTimeToTimezoneFunc-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "adjust-time-to-timezone(xs:time(\"10:00:00\"), ()) eq xs:time(\"10:00:00\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-AdjTimeToTimezoneFunc-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-AdjTimeToTimezoneFunc-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "adjust-time-to-timezone(xs:time(\"10:00:00-07:00\"), ()) eq xs:time(\"10:00:00\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-AdjTimeToTimezoneFunc-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-AdjTimeToTimezoneFunc-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "adjust-time-to-timezone(xs:time(\"10:00:00-07:00\"), xs:dayTimeDuration(\"PT10H\")) eq xs:time(\"03:00:00+10:00\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-AdjTimeToTimezoneFunc-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-adjust-time-to-timezone-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "adjust-time-to-timezone(current-time(), implicit-timezone()) eq current-time()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-adjust-time-to-timezone-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-adjust-time-to-timezone-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "adjust-time-to-timezone(xs:time(\"12:00:00Z\")) eq adjust-time-to-timezone(xs:time(\"13:00:00+01:00\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-adjust-time-to-timezone-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.