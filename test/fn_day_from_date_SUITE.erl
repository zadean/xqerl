-module('fn_day_from_date_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['fn-day-from-date1args-1'/1]).
-export(['fn-day-from-date1args-2'/1]).
-export(['fn-day-from-date1args-3'/1]).
-export(['fn-day-from-date-1'/1]).
-export(['fn-day-from-date-2'/1]).
-export(['fn-day-from-date-3'/1]).
-export(['fn-day-from-date-4'/1]).
-export(['fn-day-from-date-5'/1]).
-export(['fn-day-from-date-6'/1]).
-export(['fn-day-from-date-7'/1]).
-export(['fn-day-from-date-8'/1]).
-export(['fn-day-from-date-9'/1]).
-export(['fn-day-from-date-10'/1]).
-export(['fn-day-from-date-11'/1]).
-export(['fn-day-from-date-12'/1]).
-export(['fn-day-from-date-13'/1]).
-export(['fn-day-from-date-14'/1]).
-export(['fn-day-from-date-15'/1]).
-export(['fn-day-from-date-16'/1]).
-export(['fn-day-from-date-17'/1]).
-export(['fn-day-from-date-18'/1]).
-export(['fn-day-from-date-19'/1]).
-export(['K-DayFromDateFunc-1'/1]).
-export(['K-DayFromDateFunc-2'/1]).
-export(['K-DayFromDateFunc-3'/1]).
-export(['K-DayFromDateFunc-4'/1]).
-export(['K-DayFromDateFunc-5'/1]).
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
'fn-day-from-date1args-1', 
'fn-day-from-date1args-2', 
'fn-day-from-date1args-3', 
'fn-day-from-date-1', 
'fn-day-from-date-2', 
'fn-day-from-date-3', 
'fn-day-from-date-4', 
'fn-day-from-date-5', 
'fn-day-from-date-6', 
'fn-day-from-date-7', 
'fn-day-from-date-8', 
'fn-day-from-date-9', 
'fn-day-from-date-10', 
'fn-day-from-date-11', 
'fn-day-from-date-12', 
'fn-day-from-date-13', 
'fn-day-from-date-14', 
'fn-day-from-date-15', 
'fn-day-from-date-16', 
'fn-day-from-date-17', 
'fn-day-from-date-18', 
'fn-day-from-date-19', 
'K-DayFromDateFunc-1', 
'K-DayFromDateFunc-2', 
'K-DayFromDateFunc-3', 
'K-DayFromDateFunc-4', 
'K-DayFromDateFunc-5'
].

'fn-day-from-date1args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:day-from-date(xs:date(\"1970-01-01Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-day-from-date1args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-day-from-date1args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:day-from-date(xs:date(\"1983-11-17Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-day-from-date1args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "17") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-day-from-date1args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:day-from-date(xs:date(\"2030-12-31Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-day-from-date1args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "31") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-day-from-date-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:day-from-date(xs:date(\"1999-05-31-05:00\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-day-from-date-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "31") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-day-from-date-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:day-from-date(xs:date(\"2000-01-01+05:00\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-day-from-date-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-day-from-date-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:day-from-date(xs:date(\"1999-12-31Z\")) lt fn:day-from-date(xs:date(\"1999-12-31Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-day-from-date-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-day-from-date-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:day-from-date(xs:date(\"1999-12-31Z\")) le fn:day-from-date(xs:date(\"1999-12-31Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-day-from-date-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-day-from-date-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(fn:day-from-date(()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-day-from-date-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-day-from-date-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:day-from-date(xs:date(\"1999-05-31Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-day-from-date-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "31") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-day-from-date-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:avg((fn:day-from-date(xs:date(\"1999-12-31Z\")),fn:day-from-date(xs:date(\"1999-12-29Z\"))))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-day-from-date-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "30") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-day-from-date-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:day-from-date(xs:date(\"1970-01-01Z\")) + fn:day-from-date(xs:date(\"1970-01-01Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-day-from-date-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-day-from-date-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:day-from-date(xs:date(\"1970-01-01Z\")) - fn:day-from-date(xs:date(\"1970-01-01Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-day-from-date-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-day-from-date-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:day-from-date(xs:date(\"1970-01-03Z\")) * fn:day-from-date(xs:date(\"0002-01-01Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-day-from-date-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-day-from-date-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:day-from-date(xs:date(\"1970-01-02Z\")) div fn:day-from-date(xs:date(\"1970-01-01Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-day-from-date-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-day-from-date-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:day-from-date(xs:date(\"1970-01-02Z\")) idiv fn:day-from-date(xs:date(\"1970-01-01Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-day-from-date-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-day-from-date-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:day-from-date(xs:date(\"1970-01-02Z\")) mod fn:day-from-date(xs:date(\"1970-01-01Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-day-from-date-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-day-from-date-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "+fn:day-from-date(xs:date(\"1970-01-01Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-day-from-date-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-day-from-date-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "-fn:day-from-date(xs:date(\"1970-01-01Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-day-from-date-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-day-from-date-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:day-from-date(xs:date(\"1970-01-02Z\")) eq fn:day-from-date(xs:date(\"1970-01-01Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-day-from-date-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-day-from-date-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:month-from-date(xs:date(\"1970-01-01Z\")) ne fn:month-from-date(xs:date(\"1970-01-03Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-day-from-date-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-day-from-date-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:day-from-date(xs:date(\"1970-01-01Z\")) le fn:day-from-date(xs:date(\"1970-01-02Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-day-from-date-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-day-from-date-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:day-from-date(xs:date(\"1970-01-03Z\")) ge fn:day-from-date(xs:date(\"1970-01-01Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-day-from-date-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DayFromDateFunc-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "day-from-date()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-DayFromDateFunc-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DayFromDateFunc-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "day-from-date((), \"Wrong param\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-DayFromDateFunc-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DayFromDateFunc-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(day-from-date(()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-DayFromDateFunc-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DayFromDateFunc-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "day-from-date(()) instance of xs:integer?", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-DayFromDateFunc-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DayFromDateFunc-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "day-from-date(xs:date(\"2000-02-03\")) eq 3", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-DayFromDateFunc-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.