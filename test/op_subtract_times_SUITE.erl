-module('op_subtract_times_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['op-subtract-times2args-1'/1]).
-export(['op-subtract-times2args-2'/1]).
-export(['op-subtract-times2args-3'/1]).
-export(['op-subtract-times2args-4'/1]).
-export(['op-subtract-times2args-5'/1]).
-export(['op-subtract-times-1'/1]).
-export(['op-subtract-times-2'/1]).
-export(['op-subtract-times-3'/1]).
-export(['op-subtract-times-4'/1]).
-export(['op-subtract-times-5'/1]).
-export(['op-subtract-times-6'/1]).
-export(['op-subtract-times-7'/1]).
-export(['op-subtract-times-8'/1]).
-export(['op-subtract-times-9'/1]).
-export(['op-subtract-times-10'/1]).
-export(['op-subtract-times-11'/1]).
-export(['op-subtract-times-12'/1]).
-export(['op-subtract-times-13'/1]).
-export(['op-subtract-times-14'/1]).
-export(['op-subtract-times-15'/1]).
-export(['op-subtract-times-16'/1]).
-export(['K-TimeSubtract-1'/1]).
-export(['K-TimeSubtract-2'/1]).
-export(['K-TimeSubtract-3'/1]).
-export(['K-TimeSubtract-4'/1]).
-export(['K-TimeSubtract-5'/1]).
-export(['K-TimeSubtract-6'/1]).
-export(['K-TimeSubtract-7'/1]).
-export(['K-TimeSubtract-8'/1]).
-export(['cbcl-subtract-times-001'/1]).
-export(['cbcl-subtract-times-002'/1]).
-export(['cbcl-subtract-times-003'/1]).
-export(['cbcl-subtract-times-004'/1]).
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
   __BaseDir = filename:join(TD, "op"),
   [{base_dir, __BaseDir}|Config].
all() -> [
   {group, group_0}, 
   {group, group_1}
   ].
groups() -> [
   {group_0, [parallel], [
    'op-subtract-times2args-1', 
    'op-subtract-times2args-2', 
    'op-subtract-times2args-3', 
    'op-subtract-times2args-4', 
    'op-subtract-times2args-5', 
    'op-subtract-times-1', 
    'op-subtract-times-2', 
    'op-subtract-times-3', 
    'op-subtract-times-4', 
    'op-subtract-times-5', 
    'op-subtract-times-6', 
    'op-subtract-times-7', 
    'op-subtract-times-8', 
    'op-subtract-times-9', 
    'op-subtract-times-10', 
    'op-subtract-times-11', 
    'op-subtract-times-12', 
    'op-subtract-times-13', 
    'op-subtract-times-14', 
    'op-subtract-times-15', 
    'op-subtract-times-16', 
    'K-TimeSubtract-1', 
    'K-TimeSubtract-2']}, 
   {group_1, [parallel], [
    'K-TimeSubtract-3', 
    'K-TimeSubtract-4', 
    'K-TimeSubtract-5', 
    'K-TimeSubtract-6', 
    'K-TimeSubtract-7', 
    'K-TimeSubtract-8', 
    'cbcl-subtract-times-001', 
    'cbcl-subtract-times-002', 
    'cbcl-subtract-times-003', 
    'cbcl-subtract-times-004']}].

'op-subtract-times2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:time(\"00:00:00Z\") - xs:time(\"00:00:00Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-subtract-times2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "PT0S") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-subtract-times2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:time(\"08:03:35Z\") - xs:time(\"00:00:00Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-subtract-times2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "PT8H3M35S") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-subtract-times2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:time(\"23:59:59Z\") - xs:time(\"00:00:00Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-subtract-times2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "PT23H59M59S") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-subtract-times2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:time(\"00:00:00Z\") - xs:time(\"08:03:35Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-subtract-times2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-PT8H3M35S") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-subtract-times2args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:time(\"00:00:00Z\") - xs:time(\"23:59:59Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-subtract-times2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-PT23H59M59S") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-subtract-times-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:time(\"11:12:00Z\") - xs:time(\"04:00:00Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-subtract-times-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "PT7H12M") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-subtract-times-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:time(\"11:00:00-05:00\") - xs:time(\"21:30:00+05:30\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-subtract-times-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "PT0S") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-subtract-times-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:time(\"17:00:00-06:00\") - xs:time(\"08:00:00+09:00\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-subtract-times-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "P1D") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-subtract-times-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:not(fn:string(xs:time(\"13:00:00Z\") - xs:time(\"14:00:00Z\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-subtract-times-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-subtract-times-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:boolean(fn:string(xs:time(\"13:00:00Z\") - xs:time(\"10:00:00Z\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-subtract-times-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-subtract-times-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:number(xs:time(\"13:00:00Z\") - xs:time(\"12:00:00Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-subtract-times-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "NaN") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-subtract-times-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string(xs:time(\"13:00:00Z\") - xs:time(\"17:00:00Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-subtract-times-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-PT4H") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-subtract-times-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:time(\"13:00:00Z\") - xs:time(\"17:00:00Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-subtract-times-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-PT4H") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-subtract-times-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string((xs:time(\"13:00:00Z\") - xs:time(\"12:00:00Z\"))) and fn:string((xs:time(\"13:00:00Z\") - xs:time(\"10:00:00Z\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-subtract-times-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-subtract-times-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string((xs:time(\"13:00:00Z\") - xs:time(\"17:00:00Z\"))) or fn:string((xs:time(\"13:00:00Z\") - xs:time(\"17:00:00Z\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-subtract-times-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-subtract-times-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:time(\"23:00:00Z\") - xs:time(\"17:00:00Z\")) div (xs:time(\"13:00:00Z\") - xs:time(\"10:00:00Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-subtract-times-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-subtract-times-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string((xs:time(\"17:00:00Z\") - xs:time(\"13:00:00Z\"))) and (fn:true())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-subtract-times-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-subtract-times-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:time(\"13:00:00Z\") - xs:time(\"17:00:00Z\")) eq xs:dayTimeDuration(\"P20DT01H02M\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-subtract-times-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-subtract-times-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:time(\"13:00:00Z\") - xs:time(\"17:00:00Z\")) ne xs:dayTimeDuration(\"P10DT01H01M\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-subtract-times-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-subtract-times-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:time(\"13:00:00Z\") - xs:time(\"17:00:00Z\")) le xs:dayTimeDuration(\"P10DT02H10M\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-subtract-times-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-subtract-times-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:time(\"13:00:00Z\") - xs:time(\"17:00:00Z\")) ge xs:dayTimeDuration(\"P17DT10H02M\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-subtract-times-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-TimeSubtract-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:time(\"08:12:32\") - xs:time(\"18:12:32\") eq xs:dayTimeDuration(\"-PT10H\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-TimeSubtract-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-TimeSubtract-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:time(\"08:12:32\") - xs:time(\"08:12:32\") eq xs:dayTimeDuration(\"PT0S\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-TimeSubtract-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-TimeSubtract-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dayTimeDuration(\"P3D\") - xs:time(\"08:01:23\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-TimeSubtract-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-TimeSubtract-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dayTimeDuration(\"P3D\") - xs:date(\"1999-08-12\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-TimeSubtract-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-TimeSubtract-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:time(\"08:01:23\") + xs:time(\"08:01:23\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-TimeSubtract-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-TimeSubtract-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:time(\"08:01:23\") * xs:time(\"08:01:23\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-TimeSubtract-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-TimeSubtract-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:time(\"08:01:23\") div xs:time(\"08:01:23\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-TimeSubtract-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-TimeSubtract-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:time(\"08:01:23\") mod xs:time(\"08:01:23\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-TimeSubtract-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-subtract-times-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:time(\"12:00:00+01:00\") - xs:time(\"12:00:00\") - implicit-timezone()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-subtract-times-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-PT1H") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-subtract-times-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:time(\"12:00:00\") - xs:time(\"12:00:00+01:00\") + implicit-timezone()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-subtract-times-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "PT1H") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-subtract-times-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      fn:adjust-time-to-timezone(xs:time(\"12:00:00\")) - fn:adjust-time-to-timezone(xs:time(\"08:00:00+05:00\"), xs:dayTimeDuration(\"PT1H\")) + implicit-timezone()
   ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-subtract-times-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "PT9H") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-subtract-times-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      fn:adjust-time-to-timezone(xs:time(\"08:00:00+05:00\"), xs:dayTimeDuration(\"PT1H\")) - fn:adjust-time-to-timezone(xs:time(\"12:00:00\")) - implicit-timezone()
   ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-subtract-times-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-PT9H") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.