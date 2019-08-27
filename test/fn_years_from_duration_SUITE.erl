-module('fn_years_from_duration_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['fn-years-from-duration1args-1'/1]).
-export(['fn-years-from-duration1args-2'/1]).
-export(['fn-years-from-duration1args-3'/1]).
-export(['fn-years-from-duration-1'/1]).
-export(['fn-years-from-duration-2'/1]).
-export(['fn-years-from-duration-3'/1]).
-export(['fn-years-from-duration-4'/1]).
-export(['fn-years-from-duration-5'/1]).
-export(['fn-years-from-duration-6'/1]).
-export(['fn-years-from-duration-7'/1]).
-export(['fn-years-from-duration-8'/1]).
-export(['fn-years-from-duration-9'/1]).
-export(['fn-years-from-duration-10'/1]).
-export(['fn-years-from-duration-11'/1]).
-export(['fn-years-from-duration-12'/1]).
-export(['fn-years-from-duration-13'/1]).
-export(['fn-years-from-duration-14'/1]).
-export(['fn-years-from-duration-15'/1]).
-export(['fn-years-from-duration-16'/1]).
-export(['fn-years-from-duration-17'/1]).
-export(['fn-years-from-duration-18'/1]).
-export(['fn-years-from-duration-19'/1]).
-export(['fn-years-from-duration-20'/1]).
-export(['K-YearsFromDurationFunc-1'/1]).
-export(['K-YearsFromDurationFunc-2'/1]).
-export(['K-YearsFromDurationFunc-3'/1]).
-export(['K-YearsFromDurationFunc-4'/1]).
-export(['K-YearsFromDurationFunc-5'/1]).
-export(['K-YearsFromDurationFunc-6'/1]).
-export(['K-YearsFromDurationFunc-7'/1]).
-export(['cbcl-years-from-duration-001'/1]).
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
    'fn-years-from-duration1args-1', 
    'fn-years-from-duration1args-2', 
    'fn-years-from-duration1args-3', 
    'fn-years-from-duration-1', 
    'fn-years-from-duration-2', 
    'fn-years-from-duration-3', 
    'fn-years-from-duration-4', 
    'fn-years-from-duration-5', 
    'fn-years-from-duration-6', 
    'fn-years-from-duration-7', 
    'fn-years-from-duration-8', 
    'fn-years-from-duration-9', 
    'fn-years-from-duration-10', 
    'fn-years-from-duration-11', 
    'fn-years-from-duration-12', 
    'fn-years-from-duration-13', 
    'fn-years-from-duration-14', 
    'fn-years-from-duration-15', 
    'fn-years-from-duration-16', 
    'fn-years-from-duration-17', 
    'fn-years-from-duration-18', 
    'fn-years-from-duration-19', 
    'fn-years-from-duration-20']}, 
   {group_1, [parallel], [
    'K-YearsFromDurationFunc-1', 
    'K-YearsFromDurationFunc-2', 
    'K-YearsFromDurationFunc-3', 
    'K-YearsFromDurationFunc-4', 
    'K-YearsFromDurationFunc-5', 
    'K-YearsFromDurationFunc-6', 
    'K-YearsFromDurationFunc-7', 
    'cbcl-years-from-duration-001']}].

'fn-years-from-duration1args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:years-from-duration(xs:yearMonthDuration(\"P0Y0M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-years-from-duration1args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-years-from-duration1args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:years-from-duration(xs:yearMonthDuration(\"P1000Y6M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-years-from-duration1args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1000") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-years-from-duration1args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:years-from-duration(xs:yearMonthDuration(\"P2030Y12M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-years-from-duration1args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2031") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-years-from-duration-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:years-from-duration(xs:yearMonthDuration(\"P20Y15M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-years-from-duration-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"21") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-years-from-duration-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:years-from-duration(xs:yearMonthDuration(\"-P15M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-years-from-duration-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-years-from-duration-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:years-from-duration(xs:yearMonthDuration(\"P20Y3M\")) lt fn:years-from-duration(xs:yearMonthDuration(\"P21Y2M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-years-from-duration-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-years-from-duration-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:years-from-duration(xs:yearMonthDuration(\"P21Y10M\")) le fn:years-from-duration(xs:yearMonthDuration(\"P22Y10M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-years-from-duration-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-years-from-duration-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(fn:years-from-duration(()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-years-from-duration-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-years-from-duration-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:years-from-duration(xs:yearMonthDuration(\"P01Y10M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-years-from-duration-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-years-from-duration-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:avg((fn:years-from-duration(xs:yearMonthDuration(\"P23Y10M\")),fn:years-from-duration(xs:yearMonthDuration(\"P21Y10M\"))))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-years-from-duration-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"22") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-years-from-duration-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:years-from-duration(xs:yearMonthDuration(\"P21Y10M\")) + fn:years-from-duration(xs:yearMonthDuration(\"P22Y10M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-years-from-duration-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"43") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-years-from-duration-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:years-from-duration(xs:yearMonthDuration(\"P30Y10M\")) - fn:years-from-duration(xs:yearMonthDuration(\"P10Y10M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-years-from-duration-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"20") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-years-from-duration-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:years-from-duration(xs:yearMonthDuration(\"P20Y10M\")) * fn:years-from-duration(xs:yearMonthDuration(\"P02Y10M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-years-from-duration-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"40") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-years-from-duration-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:years-from-duration(xs:yearMonthDuration(\"P20Y10M\")) div fn:years-from-duration(xs:yearMonthDuration(\"P05Y10M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-years-from-duration-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"4") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-years-from-duration-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:years-from-duration(xs:yearMonthDuration(\"P25Y10M\")) idiv fn:years-from-duration(xs:yearMonthDuration(\"P05Y10M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-years-from-duration-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"5") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-years-from-duration-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:years-from-duration(xs:yearMonthDuration(\"P10Y10M\")) mod fn:years-from-duration(xs:yearMonthDuration(\"P03Y10M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-years-from-duration-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-years-from-duration-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "+fn:years-from-duration(xs:yearMonthDuration(\"P21Y10M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-years-from-duration-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"21") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-years-from-duration-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "-fn:years-from-duration(xs:yearMonthDuration(\"P25Y10M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-years-from-duration-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-25") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-years-from-duration-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:years-from-duration(xs:yearMonthDuration(\"P22Y10M\")) eq fn:years-from-duration(xs:yearMonthDuration(\"P22Y10M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-years-from-duration-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-years-from-duration-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:years-from-duration(xs:yearMonthDuration(\"P22Y10M\")) ne fn:years-from-duration(xs:yearMonthDuration(\"P23Y10M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-years-from-duration-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-years-from-duration-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:years-from-duration(xs:yearMonthDuration(\"P21Y01M\")) le fn:years-from-duration(xs:yearMonthDuration(\"P21Y15M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-years-from-duration-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-years-from-duration-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:years-from-duration(xs:yearMonthDuration(\"P20Y10M\")) ge fn:years-from-duration(xs:yearMonthDuration(\"P20Y10M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-years-from-duration-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-years-from-duration-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:years-from-duration(xs:duration(\"P1Y2M3DT10H30M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-years-from-duration-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-YearsFromDurationFunc-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "years-from-duration()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-YearsFromDurationFunc-1.xq"), Qry1),
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
'K-YearsFromDurationFunc-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "years-from-duration((), \"Wrong param\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-YearsFromDurationFunc-2.xq"), Qry1),
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
'K-YearsFromDurationFunc-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(years-from-duration(()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-YearsFromDurationFunc-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-YearsFromDurationFunc-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "years-from-duration(()) instance of xs:integer?", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-YearsFromDurationFunc-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-YearsFromDurationFunc-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "years-from-duration(xs:yearMonthDuration(\"P0003Y2M\")) eq 3", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-YearsFromDurationFunc-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-YearsFromDurationFunc-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "years-from-duration(xs:yearMonthDuration(\"-P0003Y2M\")) eq -3", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-YearsFromDurationFunc-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-YearsFromDurationFunc-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "years-from-duration(xs:duration(\"-P3Y4M4DT1H23M2.34S\")) eq -3", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-YearsFromDurationFunc-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-years-from-duration-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:years-from-duration(xs:dayTimeDuration('P1D'))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-years-from-duration-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.