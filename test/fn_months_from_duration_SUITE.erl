-module('fn_months_from_duration_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['fn-months-from-duration1args-1'/1]).
-export(['fn-months-from-duration1args-2'/1]).
-export(['fn-months-from-duration1args-3'/1]).
-export(['fn-months-from-duration-1'/1]).
-export(['fn-months-from-duration-2'/1]).
-export(['fn-months-from-duration-3'/1]).
-export(['fn-months-from-duration-4'/1]).
-export(['fn-months-from-duration-5'/1]).
-export(['fn-months-from-duration-6'/1]).
-export(['fn-months-from-duration-7'/1]).
-export(['fn-months-from-duration-8'/1]).
-export(['fn-months-from-duration-9'/1]).
-export(['fn-months-from-duration-10'/1]).
-export(['fn-months-from-duration-11'/1]).
-export(['fn-months-from-duration-12'/1]).
-export(['fn-months-from-duration-13'/1]).
-export(['fn-months-from-duration-14'/1]).
-export(['fn-months-from-duration-15'/1]).
-export(['fn-months-from-duration-16'/1]).
-export(['fn-months-from-duration-17'/1]).
-export(['fn-months-from-duration-18'/1]).
-export(['fn-months-from-duration-19'/1]).
-export(['fn-months-from-duration-20'/1]).
-export(['K-MonthsFromDurationFunc-1'/1]).
-export(['K-MonthsFromDurationFunc-2'/1]).
-export(['K-MonthsFromDurationFunc-3'/1]).
-export(['K-MonthsFromDurationFunc-4'/1]).
-export(['K-MonthsFromDurationFunc-5'/1]).
-export(['K-MonthsFromDurationFunc-6'/1]).
-export(['K-MonthsFromDurationFunc-7'/1]).
-export(['cbcl-months-from-duration-001'/1]).
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
'fn-months-from-duration1args-1', 
'fn-months-from-duration1args-2', 
'fn-months-from-duration1args-3', 
'fn-months-from-duration-1', 
'fn-months-from-duration-2', 
'fn-months-from-duration-3', 
'fn-months-from-duration-4', 
'fn-months-from-duration-5', 
'fn-months-from-duration-6', 
'fn-months-from-duration-7', 
'fn-months-from-duration-8', 
'fn-months-from-duration-9', 
'fn-months-from-duration-10', 
'fn-months-from-duration-11', 
'fn-months-from-duration-12', 
'fn-months-from-duration-13', 
'fn-months-from-duration-14', 
'fn-months-from-duration-15', 
'fn-months-from-duration-16', 
'fn-months-from-duration-17', 
'fn-months-from-duration-18', 
'fn-months-from-duration-19', 
'fn-months-from-duration-20', 
'K-MonthsFromDurationFunc-1', 
'K-MonthsFromDurationFunc-2', 
'K-MonthsFromDurationFunc-3', 
'K-MonthsFromDurationFunc-4', 
'K-MonthsFromDurationFunc-5', 
'K-MonthsFromDurationFunc-6', 
'K-MonthsFromDurationFunc-7', 
'cbcl-months-from-duration-001'
].

'fn-months-from-duration1args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:months-from-duration(xs:yearMonthDuration(\"P0Y0M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-months-from-duration1args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-months-from-duration1args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:months-from-duration(xs:yearMonthDuration(\"P1000Y6M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-months-from-duration1args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"6") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-months-from-duration1args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:months-from-duration(xs:yearMonthDuration(\"P2030Y12M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-months-from-duration1args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-months-from-duration-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:months-from-duration(xs:yearMonthDuration(\"P20Y15M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-months-from-duration-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"3") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-months-from-duration-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:months-from-duration(xs:yearMonthDuration(\"-P20Y18M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-months-from-duration-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-6") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-months-from-duration-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:months-from-duration(xs:yearMonthDuration(\"P20Y3M\")) lt fn:months-from-duration(xs:yearMonthDuration(\"P21Y2M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-months-from-duration-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-months-from-duration-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:months-from-duration(xs:yearMonthDuration(\"P21Y10M\")) le fn:months-from-duration(xs:yearMonthDuration(\"P22Y10M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-months-from-duration-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-months-from-duration-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(fn:months-from-duration(()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-months-from-duration-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-months-from-duration-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:months-from-duration(xs:yearMonthDuration(\"P01Y01M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-months-from-duration-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-months-from-duration-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:avg((fn:months-from-duration(xs:yearMonthDuration(\"P23Y10M\")),fn:months-from-duration(xs:yearMonthDuration(\"P21Y10M\"))))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-months-from-duration-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"10") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-months-from-duration-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:months-from-duration(xs:yearMonthDuration(\"P21Y10M\")) + fn:months-from-duration(xs:yearMonthDuration(\"P22Y11M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-months-from-duration-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"21") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-months-from-duration-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:months-from-duration(xs:yearMonthDuration(\"P30Y10M\")) - fn:months-from-duration(xs:yearMonthDuration(\"P10Y09M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-months-from-duration-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-months-from-duration-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:months-from-duration(xs:yearMonthDuration(\"P20Y09M\")) * fn:months-from-duration(xs:yearMonthDuration(\"P02Y10M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-months-from-duration-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"90") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-months-from-duration-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:months-from-duration(xs:yearMonthDuration(\"P20Y10M\")) div fn:months-from-duration(xs:yearMonthDuration(\"P05Y05M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-months-from-duration-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-months-from-duration-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:months-from-duration(xs:yearMonthDuration(\"P25Y10M\")) idiv fn:months-from-duration(xs:yearMonthDuration(\"P05Y02M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-months-from-duration-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"5") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-months-from-duration-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:months-from-duration(xs:yearMonthDuration(\"P10Y10M\")) mod fn:months-from-duration(xs:yearMonthDuration(\"P03Y03M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-months-from-duration-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-months-from-duration-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "+fn:months-from-duration(xs:yearMonthDuration(\"P21Y10M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-months-from-duration-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"10") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-months-from-duration-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "-fn:months-from-duration(xs:yearMonthDuration(\"P25Y03M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-months-from-duration-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-3") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-months-from-duration-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:months-from-duration(xs:yearMonthDuration(\"P22Y10M\")) eq fn:months-from-duration(xs:yearMonthDuration(\"P22Y09M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-months-from-duration-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-months-from-duration-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:months-from-duration(xs:yearMonthDuration(\"P22Y10M\")) ne fn:months-from-duration(xs:yearMonthDuration(\"P23Y10M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-months-from-duration-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-months-from-duration-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:months-from-duration(xs:yearMonthDuration(\"P21Y01M\")) le fn:months-from-duration(xs:yearMonthDuration(\"P21Y15M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-months-from-duration-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-months-from-duration-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:months-from-duration(xs:yearMonthDuration(\"P20Y09M\")) ge fn:months-from-duration(xs:yearMonthDuration(\"P20Y01M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-months-from-duration-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-months-from-duration-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:months-from-duration(xs:duration(\"P1Y2M3DT10H30M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-months-from-duration-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-MonthsFromDurationFunc-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "months-from-duration()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-MonthsFromDurationFunc-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-MonthsFromDurationFunc-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "months-from-duration((), \"Wrong param\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-MonthsFromDurationFunc-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-MonthsFromDurationFunc-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(months-from-duration(()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-MonthsFromDurationFunc-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-MonthsFromDurationFunc-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "months-from-duration(()) instance of xs:integer?", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-MonthsFromDurationFunc-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-MonthsFromDurationFunc-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "months-from-duration(xs:yearMonthDuration(\"P0003Y2M\")) eq 2", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-MonthsFromDurationFunc-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-MonthsFromDurationFunc-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "months-from-duration(xs:yearMonthDuration(\"-P0003Y2M\")) eq -2", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-MonthsFromDurationFunc-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-MonthsFromDurationFunc-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "months-from-duration(xs:duration(\"-P3Y4M4DT1H23M2.34S\")) eq -4", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-MonthsFromDurationFunc-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-months-from-duration-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:months-from-duration(xs:dayTimeDuration('P1D'))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-months-from-duration-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.