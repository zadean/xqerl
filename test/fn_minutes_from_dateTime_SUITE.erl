-module('fn_minutes_from_dateTime_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['fn-minutes-from-dateTime1args-1'/1]).
-export(['fn-minutes-from-dateTime1args-2'/1]).
-export(['fn-minutes-from-dateTime1args-3'/1]).
-export(['fn-minutes-from-dateTime-1'/1]).
-export(['fn-minutes-from-dateTime-2'/1]).
-export(['fn-minutes-from-dateTime-3'/1]).
-export(['fn-minutes-from-dateTime-4'/1]).
-export(['fn-minutes-from-dateTime-5'/1]).
-export(['fn-minutes-from-dateTime-6'/1]).
-export(['fn-minutes-from-dateTime-7'/1]).
-export(['fn-minutes-from-dateTime-8'/1]).
-export(['fn-minutes-from-dateTime-9'/1]).
-export(['fn-minutes-from-dateTime-10'/1]).
-export(['fn-minutes-from-dateTime-11'/1]).
-export(['fn-minutes-from-dateTime-12'/1]).
-export(['fn-minutes-from-dateTime-13'/1]).
-export(['fn-minutes-from-dateTime-14'/1]).
-export(['fn-minutes-from-dateTime-15'/1]).
-export(['fn-minutes-from-dateTime-16'/1]).
-export(['fn-minutes-from-dateTime-17'/1]).
-export(['fn-minutes-from-dateTime-18'/1]).
-export(['fn-minutes-from-dateTime-19'/1]).
-export(['K-MinutesFromDateTimeFunc-1'/1]).
-export(['K-MinutesFromDateTimeFunc-2'/1]).
-export(['K-MinutesFromDateTimeFunc-3'/1]).
-export(['K-MinutesFromDateTimeFunc-4'/1]).
-export(['K-MinutesFromDateTimeFunc-5'/1]).
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
'fn-minutes-from-dateTime1args-1', 
'fn-minutes-from-dateTime1args-2', 
'fn-minutes-from-dateTime1args-3', 
'fn-minutes-from-dateTime-1', 
'fn-minutes-from-dateTime-2', 
'fn-minutes-from-dateTime-3', 
'fn-minutes-from-dateTime-4', 
'fn-minutes-from-dateTime-5', 
'fn-minutes-from-dateTime-6', 
'fn-minutes-from-dateTime-7', 
'fn-minutes-from-dateTime-8', 
'fn-minutes-from-dateTime-9', 
'fn-minutes-from-dateTime-10', 
'fn-minutes-from-dateTime-11', 
'fn-minutes-from-dateTime-12', 
'fn-minutes-from-dateTime-13', 
'fn-minutes-from-dateTime-14', 
'fn-minutes-from-dateTime-15', 
'fn-minutes-from-dateTime-16', 
'fn-minutes-from-dateTime-17', 
'fn-minutes-from-dateTime-18', 
'fn-minutes-from-dateTime-19', 
'K-MinutesFromDateTimeFunc-1', 
'K-MinutesFromDateTimeFunc-2', 
'K-MinutesFromDateTimeFunc-3', 
'K-MinutesFromDateTimeFunc-4', 
'K-MinutesFromDateTimeFunc-5'
].

'fn-minutes-from-dateTime1args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:minutes-from-dateTime(xs:dateTime(\"1970-01-01T00:00:00Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-minutes-from-dateTime1args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-minutes-from-dateTime1args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:minutes-from-dateTime(xs:dateTime(\"1996-04-07T01:40:52Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-minutes-from-dateTime1args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "40") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-minutes-from-dateTime1args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:minutes-from-dateTime(xs:dateTime(\"2030-12-31T23:59:59Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-minutes-from-dateTime1args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "59") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-minutes-from-dateTime-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:minutes-from-dateTime(xs:dateTime(\"1999-05-31T13:20:00-05:00\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-minutes-from-dateTime-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "20") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-minutes-from-dateTime-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:minutes-from-dateTime(xs:dateTime(\"1999-05-31T13:30:00+05:30\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-minutes-from-dateTime-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "30") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-minutes-from-dateTime-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:minutes-from-dateTime(xs:dateTime(\"1999-12-31T21:20:00-05:00\")) lt fn:minutes-from-dateTime(xs:dateTime(\"1999-12-31T21:20:00-05:00\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-minutes-from-dateTime-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-minutes-from-dateTime-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:minutes-from-dateTime(xs:dateTime(\"1999-12-31T21:20:00-05:00\")) le fn:minutes-from-dateTime(xs:dateTime(\"1999-12-31T21:20:00-05:00\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-minutes-from-dateTime-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-minutes-from-dateTime-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(fn:minutes-from-dateTime(()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-minutes-from-dateTime-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-minutes-from-dateTime-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:minutes-from-dateTime(xs:dateTime(\"1999-05-31T20:00:00-05:00\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-minutes-from-dateTime-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-minutes-from-dateTime-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:minutes-from-dateTime(xs:dateTime(\"1999-05-31T23:59:00-05:00\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-minutes-from-dateTime-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "59") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-minutes-from-dateTime-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:minutes-from-dateTime(xs:dateTime(\"1970-01-01T00:00:00Z\")) + fn:minutes-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-minutes-from-dateTime-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-minutes-from-dateTime-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:minutes-from-dateTime(xs:dateTime(\"1970-01-01T00:00:00Z\")) - fn:minutes-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-minutes-from-dateTime-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-minutes-from-dateTime-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:minutes-from-dateTime(xs:dateTime(\"1970-01-01T02:02:00Z\")) * fn:minutes-from-dateTime(xs:dateTime(\"1970-01-01T10:03:00Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-minutes-from-dateTime-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "6") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-minutes-from-dateTime-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:minutes-from-dateTime(xs:dateTime(\"1970-01-01T02:10:00Z\")) div fn:minutes-from-dateTime(xs:dateTime(\"1970-01-01T10:05:00Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-minutes-from-dateTime-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-minutes-from-dateTime-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:minutes-from-dateTime(xs:dateTime(\"1970-01-01T10:10:00Z\")) idiv fn:minutes-from-dateTime(xs:dateTime(\"1970-01-01T02:05:00Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-minutes-from-dateTime-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-minutes-from-dateTime-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:minutes-from-dateTime(xs:dateTime(\"1970-01-01T10:10:00Z\")) mod fn:minutes-from-dateTime(xs:dateTime(\"1970-01-01T03:10:00Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-minutes-from-dateTime-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-minutes-from-dateTime-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "+fn:minutes-from-dateTime(xs:dateTime(\"1970-01-01T10:10:00Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-minutes-from-dateTime-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "10") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-minutes-from-dateTime-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "-fn:minutes-from-dateTime(xs:dateTime(\"1970-01-01T10:10:00Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-minutes-from-dateTime-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-10") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-minutes-from-dateTime-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:minutes-from-dateTime(xs:dateTime(\"1970-01-01T10:10:00Z\")) eq fn:minutes-from-dateTime(xs:dateTime(\"1970-01-01T10:10:00Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-minutes-from-dateTime-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-minutes-from-dateTime-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:minutes-from-dateTime(xs:dateTime(\"1970-01-01T10:10:00Z\")) ne fn:minutes-from-dateTime(xs:dateTime(\"1970-01-01T10:10:00Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-minutes-from-dateTime-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-minutes-from-dateTime-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:minutes-from-dateTime(xs:dateTime(\"1970-01-01T10:10:00Z\")) le fn:minutes-from-dateTime(xs:dateTime(\"1970-01-01T10:10:00Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-minutes-from-dateTime-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-minutes-from-dateTime-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:minutes-from-dateTime(xs:dateTime(\"1970-01-01T10:10:00Z\")) ge fn:minutes-from-dateTime(xs:dateTime(\"1970-01-01T10:10:00Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-minutes-from-dateTime-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-MinutesFromDateTimeFunc-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "minutes-from-dateTime()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-MinutesFromDateTimeFunc-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-MinutesFromDateTimeFunc-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "minutes-from-dateTime((), \"Wrong param\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-MinutesFromDateTimeFunc-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-MinutesFromDateTimeFunc-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(minutes-from-dateTime(()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-MinutesFromDateTimeFunc-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-MinutesFromDateTimeFunc-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "minutes-from-dateTime(()) instance of xs:integer?", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-MinutesFromDateTimeFunc-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-MinutesFromDateTimeFunc-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "minutes-from-dateTime(xs:dateTime(\"2001-02-03T08:23:12.43\")) eq 23", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-MinutesFromDateTimeFunc-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.