-module('fn_year_from_dateTime_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['fn-year-from-dateTime1args-1'/1]).
-export(['fn-year-from-dateTime1args-2'/1]).
-export(['fn-year-from-dateTime1args-3'/1]).
-export(['fn-year-from-dateTime-1'/1]).
-export(['fn-year-from-dateTime-2'/1]).
-export(['fn-year-from-dateTime-3'/1]).
-export(['fn-year-from-dateTime-4'/1]).
-export(['fn-year-from-dateTime-5'/1]).
-export(['fn-year-from-dateTime-6'/1]).
-export(['fn-year-from-dateTime-7'/1]).
-export(['fn-year-from-dateTime-8'/1]).
-export(['fn-year-from-dateTime-9'/1]).
-export(['fn-year-from-dateTime-10'/1]).
-export(['fn-year-from-dateTime-11'/1]).
-export(['fn-year-from-dateTime-12'/1]).
-export(['fn-year-from-dateTime-13'/1]).
-export(['fn-year-from-dateTimeNew-14'/1]).
-export(['fn-year-from-dateTimeNew-15'/1]).
-export(['fn-year-from-dateTime-16'/1]).
-export(['fn-year-from-dateTime-17'/1]).
-export(['fn-year-from-dateTime-18'/1]).
-export(['fn-year-from-dateTime-19'/1]).
-export(['K-YearFromDateTimeFunc-1'/1]).
-export(['K-YearFromDateTimeFunc-2'/1]).
-export(['K-YearFromDateTimeFunc-3'/1]).
-export(['K-YearFromDateTimeFunc-4'/1]).
-export(['K-YearFromDateTimeFunc-5'/1]).
suite() -> [{timetrap,{seconds, 180}}].
init_per_group(_, Config) ->  Config.
end_per_group(_, _Config) -> 
   xqerl_code_server:unload(all).
end_per_suite(_Config) -> 
   ct:timetrap({seconds,60}), 
   xqerl_code_server:unload(all).
init_per_suite(Config) -> 
   {ok,_} = application:ensure_all_started(xqerl),
   DD = filename:dirname(filename:dirname(filename:dirname(?config(data_dir, Config)))),
   TD = filename:join(DD, "QT3-test-suite"),
   __BaseDir = filename:join(TD, "fn"),
   [{base_dir, __BaseDir}|Config].
all() -> [
   {group, group_0}, 
   {group, group_1}
   ].
groups() -> [
   {group_0, [parallel], [
    'fn-year-from-dateTime1args-1', 
    'fn-year-from-dateTime1args-2', 
    'fn-year-from-dateTime1args-3', 
    'fn-year-from-dateTime-1', 
    'fn-year-from-dateTime-2', 
    'fn-year-from-dateTime-3', 
    'fn-year-from-dateTime-4', 
    'fn-year-from-dateTime-5', 
    'fn-year-from-dateTime-6', 
    'fn-year-from-dateTime-7', 
    'fn-year-from-dateTime-8', 
    'fn-year-from-dateTime-9', 
    'fn-year-from-dateTime-10', 
    'fn-year-from-dateTime-11', 
    'fn-year-from-dateTime-12', 
    'fn-year-from-dateTime-13', 
    'fn-year-from-dateTimeNew-14', 
    'fn-year-from-dateTimeNew-15', 
    'fn-year-from-dateTime-16', 
    'fn-year-from-dateTime-17', 
    'fn-year-from-dateTime-18', 
    'fn-year-from-dateTime-19', 
    'K-YearFromDateTimeFunc-1']}, 
   {group_1, [parallel], [
    'K-YearFromDateTimeFunc-2', 
    'K-YearFromDateTimeFunc-3', 
    'K-YearFromDateTimeFunc-4', 
    'K-YearFromDateTimeFunc-5']}].

'fn-year-from-dateTime1args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:year-from-dateTime(xs:dateTime(\"1970-01-01T00:00:00Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-year-from-dateTime1args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1970") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-year-from-dateTime1args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:year-from-dateTime(xs:dateTime(\"1996-04-07T01:40:52Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-year-from-dateTime1args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1996") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-year-from-dateTime1args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:year-from-dateTime(xs:dateTime(\"2030-12-31T23:59:59Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-year-from-dateTime1args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2030") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-year-from-dateTime-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:year-from-dateTime(xs:dateTime(\"1999-05-31T13:20:00-05:00\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-year-from-dateTime-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1999") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-year-from-dateTime-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:year-from-dateTime(xs:dateTime(\"1999-05-31T21:30:00-05:00\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-year-from-dateTime-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1999") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-year-from-dateTime-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:year-from-dateTime(xs:dateTime(\"1999-12-31T19:20:00\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-year-from-dateTime-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1999") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-year-from-dateTime-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:avg((fn:year-from-dateTime(xs:dateTime(\"1996-12-31T12:00:00Z\")),fn:year-from-dateTime(xs:dateTime(\"2000-12-31T12:00:00Z\"))))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-year-from-dateTime-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1998") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-year-from-dateTime-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(fn:year-from-dateTime(()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-year-from-dateTime-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-year-from-dateTime-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:year-from-dateTime(xs:dateTime(\"-1999-05-31T00:20:00-05:00\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-year-from-dateTime-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-1999") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-year-from-dateTime-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:year-from-dateTime(xs:dateTime(\"0001-05-31T23:20:00-05:00\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-year-from-dateTime-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-year-from-dateTime-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:year-from-dateTime(xs:dateTime(\"1970-01-01T00:00:00Z\")) + fn:year-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-year-from-dateTime-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "3940") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-year-from-dateTime-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:year-from-dateTime(xs:dateTime(\"1970-01-01T00:00:00Z\")) - fn:year-from-dateTime(xs:dateTime(\"1969-01-01T10:00:00Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-year-from-dateTime-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-year-from-dateTime-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:year-from-dateTime(xs:dateTime(\"1970-01-01T02:00:00Z\")) * fn:year-from-dateTime(xs:dateTime(\"0002-01-01T10:00:00Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-year-from-dateTime-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "3940") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-year-from-dateTime-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:year-from-dateTime(xs:dateTime(\"1000-01-01T02:00:00Z\")) div fn:year-from-dateTime(xs:dateTime(\"0050-01-01T10:00:00Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-year-from-dateTime-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "20") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-year-from-dateTime-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:year-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\")) idiv fn:year-from-dateTime(xs:dateTime(\"1970-01-01T02:00:00Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-year-from-dateTime-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-year-from-dateTime-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:year-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\")) mod fn:year-from-dateTime(xs:dateTime(\"1970-01-01T03:00:00Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-year-from-dateTime-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-year-from-dateTimeNew-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "+fn:year-from-dateTime(xs:dateTime(\"1971-01-01T10:00:00Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-year-from-dateTimeNew-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1971") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-year-from-dateTimeNew-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "-fn:year-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-year-from-dateTimeNew-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-1970") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-year-from-dateTime-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:year-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\")) eq fn:year-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-year-from-dateTime-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-year-from-dateTime-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:year-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\")) ne fn:year-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-year-from-dateTime-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-year-from-dateTime-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:year-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\")) le fn:year-from-dateTime(xs:dateTime(\"1971-01-01T10:00:00Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-year-from-dateTime-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-year-from-dateTime-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:year-from-dateTime(xs:dateTime(\"1971-01-01T10:00:00Z\")) ge fn:year-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-year-from-dateTime-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-YearFromDateTimeFunc-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "year-from-dateTime()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-YearFromDateTimeFunc-1.xq"), Qry1),
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
'K-YearFromDateTimeFunc-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "year-from-dateTime((), \"Wrong param\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-YearFromDateTimeFunc-2.xq"), Qry1),
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
'K-YearFromDateTimeFunc-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(year-from-dateTime(()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-YearFromDateTimeFunc-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-YearFromDateTimeFunc-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "year-from-dateTime(()) instance of xs:integer?", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-YearFromDateTimeFunc-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-YearFromDateTimeFunc-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "year-from-dateTime(xs:dateTime(\"2001-02-03T08:23:12.43\")) eq 2001", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-YearFromDateTimeFunc-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.