-module('fn_month_from_date_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['fn-month-from-date1args-1'/1]).
-export(['fn-month-from-date1args-2'/1]).
-export(['fn-month-from-date1args-3'/1]).
-export(['fn-month-from-date-1'/1]).
-export(['fn-month-from-date-2'/1]).
-export(['fn-month-from-date-3'/1]).
-export(['fn-month-from-date-4'/1]).
-export(['fn-month-from-date-5'/1]).
-export(['fn-month-from-date-6'/1]).
-export(['fn-month-from-date-7'/1]).
-export(['fn-month-from-date-8'/1]).
-export(['fn-month-from-date-9'/1]).
-export(['fn-month-from-date-10'/1]).
-export(['fn-month-from-date-11'/1]).
-export(['fn-month-from-date-12'/1]).
-export(['fn-month-from-date-13'/1]).
-export(['fn-month-from-date-14'/1]).
-export(['fn-month-from-date-15'/1]).
-export(['fn-month-from-date-16'/1]).
-export(['fn-month-from-date-17'/1]).
-export(['fn-month-from-date-18'/1]).
-export(['fn-month-from-date-19'/1]).
-export(['K-MonthFromDateFunc-1'/1]).
-export(['K-MonthFromDateFunc-2'/1]).
-export(['K-MonthFromDateFunc-3'/1]).
-export(['K-MonthFromDateFunc-4'/1]).
-export(['K-MonthFromDateFunc-5'/1]).
suite() -> [{timetrap,{seconds, 5}}].
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
'fn-month-from-date1args-1', 
'fn-month-from-date1args-2', 
'fn-month-from-date1args-3', 
'fn-month-from-date-1', 
'fn-month-from-date-2', 
'fn-month-from-date-3', 
'fn-month-from-date-4', 
'fn-month-from-date-5', 
'fn-month-from-date-6', 
'fn-month-from-date-7', 
'fn-month-from-date-8', 
'fn-month-from-date-9', 
'fn-month-from-date-10', 
'fn-month-from-date-11', 
'fn-month-from-date-12', 
'fn-month-from-date-13', 
'fn-month-from-date-14', 
'fn-month-from-date-15', 
'fn-month-from-date-16', 
'fn-month-from-date-17', 
'fn-month-from-date-18', 
'fn-month-from-date-19', 
'K-MonthFromDateFunc-1', 
'K-MonthFromDateFunc-2', 
'K-MonthFromDateFunc-3', 
'K-MonthFromDateFunc-4', 
'K-MonthFromDateFunc-5'
].

'fn-month-from-date1args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:month-from-date(xs:date(\"1970-01-01Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-month-from-date1args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-month-from-date1args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:month-from-date(xs:date(\"1983-11-17Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-month-from-date1args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "11") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-month-from-date1args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:month-from-date(xs:date(\"2030-12-31Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-month-from-date1args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "12") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-month-from-date-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:month-from-date(xs:date(\"1999-05-31-05:00\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-month-from-date-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "5") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-month-from-date-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:month-from-date(xs:date(\"2000-01-01+05:00\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-month-from-date-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-month-from-date-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:month-from-date(xs:date(\"1999-12-31Z\")) lt fn:month-from-date(xs:date(\"1999-12-31Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-month-from-date-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-month-from-date-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:month-from-date(xs:date(\"1999-12-31Z\")) le fn:month-from-date(xs:date(\"1999-12-31Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-month-from-date-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-month-from-date-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(fn:month-from-date(()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-month-from-date-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-month-from-date-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:month-from-date(xs:date(\"1970-01-31Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-month-from-date-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-month-from-date-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:month-from-date(xs:date(\"1999-12-31Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-month-from-date-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "12") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-month-from-date-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:month-from-date(xs:date(\"1970-01-01Z\")) + fn:month-from-date(xs:date(\"1970-01-01Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-month-from-date-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-month-from-date-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:month-from-date(xs:date(\"1970-01-01Z\")) - fn:month-from-date(xs:date(\"1970-01-01Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-month-from-date-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-month-from-date-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:month-from-date(xs:date(\"1970-01-01Z\")) * fn:month-from-date(xs:date(\"0002-01-01Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-month-from-date-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-month-from-date-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:month-from-date(xs:date(\"1970-01-01Z\")) div fn:month-from-date(xs:date(\"1970-01-01Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-month-from-date-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-month-from-date-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:month-from-date(xs:date(\"1970-01-01Z\")) idiv fn:month-from-date(xs:date(\"1970-01-01Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-month-from-date-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-month-from-date-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:month-from-date(xs:date(\"1970-01-01Z\")) mod fn:month-from-date(xs:date(\"1970-01-01Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-month-from-date-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-month-from-date-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "+fn:month-from-date(xs:date(\"1970-01-01Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-month-from-date-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-month-from-date-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "-fn:month-from-date(xs:date(\"1970-01-01Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-month-from-date-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-month-from-date-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:month-from-date(xs:date(\"1970-01-01Z\")) eq fn:month-from-date(xs:date(\"1970-01-01Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-month-from-date-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-month-from-date-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:month-from-date(xs:date(\"1970-01-01Z\")) ne fn:month-from-date(xs:date(\"1970-01-01Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-month-from-date-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-month-from-date-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:month-from-date(xs:date(\"1970-01-01Z\")) le fn:month-from-date(xs:date(\"1970-01-01Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-month-from-date-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-month-from-date-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:month-from-date(xs:date(\"1970-01-01Z\")) ge fn:month-from-date(xs:date(\"1970-01-01Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-month-from-date-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-MonthFromDateFunc-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "month-from-date()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-MonthFromDateFunc-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-MonthFromDateFunc-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "month-from-date((), \"Wrong param\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-MonthFromDateFunc-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-MonthFromDateFunc-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(month-from-date(()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-MonthFromDateFunc-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-MonthFromDateFunc-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "month-from-date(()) instance of xs:integer?", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-MonthFromDateFunc-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-MonthFromDateFunc-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "month-from-date(xs:date(\"2000-02-03\")) eq 2", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-MonthFromDateFunc-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.