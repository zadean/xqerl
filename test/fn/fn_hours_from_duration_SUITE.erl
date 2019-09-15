-module('fn_hours_from_duration_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['fn-hours-from-duration1args-1'/1]).
-export(['fn-hours-from-duration1args-2'/1]).
-export(['fn-hours-from-duration1args-3'/1]).
-export(['fn-hours-from-duration-1'/1]).
-export(['fn-hours-from-duration-2'/1]).
-export(['fn-hours-from-duration-3'/1]).
-export(['fn-hours-from-duration-4'/1]).
-export(['fn-hours-from-duration-5'/1]).
-export(['fn-hours-from-duration-6'/1]).
-export(['fn-hours-from-duration-7'/1]).
-export(['fn-hours-from-duration-8'/1]).
-export(['fn-hours-from-duration-9'/1]).
-export(['fn-hours-from-duration-10'/1]).
-export(['fn-hours-from-duration-11'/1]).
-export(['fn-hours-from-duration-12'/1]).
-export(['fn-hours-from-duration-13'/1]).
-export(['fn-hours-from-duration-14'/1]).
-export(['fn-hours-from-duration-15'/1]).
-export(['fn-hours-from-duration-16'/1]).
-export(['fn-hours-from-duration-17'/1]).
-export(['fn-hours-from-duration-18'/1]).
-export(['fn-hours-from-duration-19'/1]).
-export(['fn-hours-from-duration-20'/1]).
-export(['K-HoursFromDurationFunc-1'/1]).
-export(['K-HoursFromDurationFunc-2'/1]).
-export(['K-HoursFromDurationFunc-3'/1]).
-export(['K-HoursFromDurationFunc-4'/1]).
-export(['K-HoursFromDurationFunc-5'/1]).
-export(['K-HoursFromDurationFunc-6'/1]).
-export(['K-HoursFromDurationFunc-7'/1]).
-export(['cbcl-hours-from-duration-001'/1]).
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
    'fn-hours-from-duration1args-1', 
    'fn-hours-from-duration1args-2', 
    'fn-hours-from-duration1args-3', 
    'fn-hours-from-duration-1', 
    'fn-hours-from-duration-2', 
    'fn-hours-from-duration-3', 
    'fn-hours-from-duration-4', 
    'fn-hours-from-duration-5', 
    'fn-hours-from-duration-6', 
    'fn-hours-from-duration-7', 
    'fn-hours-from-duration-8', 
    'fn-hours-from-duration-9', 
    'fn-hours-from-duration-10', 
    'fn-hours-from-duration-11', 
    'fn-hours-from-duration-12', 
    'fn-hours-from-duration-13', 
    'fn-hours-from-duration-14', 
    'fn-hours-from-duration-15', 
    'fn-hours-from-duration-16', 
    'fn-hours-from-duration-17', 
    'fn-hours-from-duration-18', 
    'fn-hours-from-duration-19', 
    'fn-hours-from-duration-20']}, 
   {group_1, [parallel], [
    'K-HoursFromDurationFunc-1', 
    'K-HoursFromDurationFunc-2', 
    'K-HoursFromDurationFunc-3', 
    'K-HoursFromDurationFunc-4', 
    'K-HoursFromDurationFunc-5', 
    'K-HoursFromDurationFunc-6', 
    'K-HoursFromDurationFunc-7', 
    'cbcl-hours-from-duration-001']}].

'fn-hours-from-duration1args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:hours-from-duration(xs:dayTimeDuration(\"P0DT0H0M0S\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-hours-from-duration1args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-hours-from-duration1args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:hours-from-duration(xs:dayTimeDuration(\"P15DT11H59M59S\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-hours-from-duration1args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"11") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-hours-from-duration1args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:hours-from-duration(xs:dayTimeDuration(\"P31DT23H59M59S\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-hours-from-duration1args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"23") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-hours-from-duration-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:hours-from-duration(xs:dayTimeDuration(\"P3DT10H\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-hours-from-duration-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"10") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-hours-from-duration-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:hours-from-duration(xs:dayTimeDuration(\"P3DT12H32M12S\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-hours-from-duration-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"12") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-hours-from-duration-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:hours-from-duration(xs:dayTimeDuration(\"PT123H\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-hours-from-duration-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"3") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-hours-from-duration-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:hours-from-duration(xs:dayTimeDuration(\"-P3DT10H\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-hours-from-duration-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-10") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-hours-from-duration-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(fn:hours-from-duration(()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-hours-from-duration-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-hours-from-duration-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:hours-from-duration(xs:dayTimeDuration(\"P01DT01H\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-hours-from-duration-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-hours-from-duration-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:avg((fn:hours-from-duration(xs:dayTimeDuration(\"P23DT10H\")),fn:hours-from-duration(xs:dayTimeDuration(\"P21DT08H\"))))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-hours-from-duration-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"9") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-hours-from-duration-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:hours-from-duration(xs:dayTimeDuration(\"P21DT10H\")) + fn:hours-from-duration(xs:dayTimeDuration(\"P22DT20H\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-hours-from-duration-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"30") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-hours-from-duration-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:hours-from-duration(xs:dayTimeDuration(\"P30DT10H\")) - fn:hours-from-duration(xs:dayTimeDuration(\"P10DT02H\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-hours-from-duration-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"8") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-hours-from-duration-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:hours-from-duration(xs:dayTimeDuration(\"P20DT05H\")) * fn:hours-from-duration(xs:dayTimeDuration(\"P03DT08H\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-hours-from-duration-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"40") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-hours-from-duration-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:hours-from-duration(xs:dayTimeDuration(\"P20DT10H\")) div fn:hours-from-duration(xs:dayTimeDuration(\"P05DT05H\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-hours-from-duration-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-hours-from-duration-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:hours-from-duration(xs:dayTimeDuration(\"P25DT10H\")) idiv fn:hours-from-duration(xs:dayTimeDuration(\"P05DT02H\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-hours-from-duration-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"5") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-hours-from-duration-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:hours-from-duration(xs:dayTimeDuration(\"P10DT10H\")) mod fn:hours-from-duration(xs:dayTimeDuration(\"P03DT02H\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-hours-from-duration-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-hours-from-duration-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "+fn:hours-from-duration(xs:dayTimeDuration(\"P21DT10H\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-hours-from-duration-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"10") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-hours-from-duration-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "-fn:hours-from-duration(xs:dayTimeDuration(\"P20DT02H\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-hours-from-duration-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-hours-from-duration-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:hours-from-duration(xs:dayTimeDuration(\"P22DT09H\")) eq fn:hours-from-duration(xs:dayTimeDuration(\"P22DT09H\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-hours-from-duration-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-hours-from-duration-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:hours-from-duration(xs:dayTimeDuration(\"P23DT07H\")) ne fn:hours-from-duration(xs:dayTimeDuration(\"P12DT05H\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-hours-from-duration-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-hours-from-duration-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:hours-from-duration(xs:dayTimeDuration(\"P20DT03H\")) le fn:hours-from-duration(xs:dayTimeDuration(\"P21DT01H\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-hours-from-duration-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-hours-from-duration-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:hours-from-duration(xs:dayTimeDuration(\"P21DT07H\")) ge fn:hours-from-duration(xs:dayTimeDuration(\"P20DT08H\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-hours-from-duration-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-hours-from-duration-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:hours-from-duration(xs:duration(\"P1Y2M3DT10H30M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-hours-from-duration-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"10") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-HoursFromDurationFunc-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "hours-from-duration()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-HoursFromDurationFunc-1.xq"), Qry1),
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
'K-HoursFromDurationFunc-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "hours-from-duration((), \"Wrong param\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-HoursFromDurationFunc-2.xq"), Qry1),
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
'K-HoursFromDurationFunc-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(hours-from-duration(()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-HoursFromDurationFunc-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-HoursFromDurationFunc-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "hours-from-duration(()) instance of xs:integer?", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-HoursFromDurationFunc-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-HoursFromDurationFunc-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "hours-from-duration(xs:dayTimeDuration(\"P3DT8H2M1.03S\")) eq 8", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-HoursFromDurationFunc-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-HoursFromDurationFunc-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "hours-from-duration(xs:dayTimeDuration(\"-P3DT8H2M1.03S\")) eq -8", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-HoursFromDurationFunc-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-HoursFromDurationFunc-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "hours-from-duration(xs:duration(\"-P3Y4M8DT1H23M2.34S\")) eq -1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-HoursFromDurationFunc-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-hours-from-duration-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:hours-from-duration(xs:yearMonthDuration('P1Y'))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-hours-from-duration-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.