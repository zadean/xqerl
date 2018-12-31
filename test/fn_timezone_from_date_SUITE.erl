-module('fn_timezone_from_date_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['fn-timezone-from-date-1'/1]).
-export(['fn-timezone-from-date-2'/1]).
-export(['fn-timezone-from-date-3'/1]).
-export(['fn-timezone-from-date-4'/1]).
-export(['fn-timezone-from-date-5'/1]).
-export(['fn-timezone-from-date-6'/1]).
-export(['fn-timezone-from-date-7'/1]).
-export(['fn-timezone-from-date-8'/1]).
-export(['fn-timezone-from-date-9'/1]).
-export(['fn-timezone-from-date-10'/1]).
-export(['fn-timezone-from-date-11'/1]).
-export(['fn-timezone-from-date-12'/1]).
-export(['fn-timezone-from-date-13'/1]).
-export(['fn-timezone-from-date-14'/1]).
-export(['fn-timezone-from-date-15'/1]).
-export(['fn-timezone-from-date-16'/1]).
-export(['fn-timezone-from-date-17'/1]).
-export(['fn-timezone-from-date-18'/1]).
-export(['fn-timezone-from-date-19'/1]).
-export(['fn-timezone-from-date-20'/1]).
-export(['K-TimezoneFromDateFunc-1'/1]).
-export(['K-TimezoneFromDateFunc-2'/1]).
-export(['K-TimezoneFromDateFunc-3'/1]).
-export(['K-TimezoneFromDateFunc-4'/1]).
-export(['K-TimezoneFromDateFunc-5'/1]).
-export(['K-TimezoneFromDateFunc-6'/1]).
-export(['K-TimezoneFromDateFunc-7'/1]).
-export(['cbcl-timezone-from-date-001'/1]).
-export(['cbcl-timezone-from-date-002'/1]).
-export(['cbcl-timezone-from-date-003'/1]).
-export(['cbcl-timezone-from-date-004'/1]).
-export(['cbcl-timezone-from-date-005'/1]).
-export(['cbcl-timezone-from-date-006'/1]).
-export(['cbcl-timezone-from-date-007'/1]).
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
'fn-timezone-from-date-1', 
'fn-timezone-from-date-2', 
'fn-timezone-from-date-3', 
'fn-timezone-from-date-4', 
'fn-timezone-from-date-5', 
'fn-timezone-from-date-6', 
'fn-timezone-from-date-7', 
'fn-timezone-from-date-8', 
'fn-timezone-from-date-9', 
'fn-timezone-from-date-10', 
'fn-timezone-from-date-11', 
'fn-timezone-from-date-12', 
'fn-timezone-from-date-13', 
'fn-timezone-from-date-14', 
'fn-timezone-from-date-15', 
'fn-timezone-from-date-16', 
'fn-timezone-from-date-17', 
'fn-timezone-from-date-18', 
'fn-timezone-from-date-19', 
'fn-timezone-from-date-20', 
'K-TimezoneFromDateFunc-1', 
'K-TimezoneFromDateFunc-2', 
'K-TimezoneFromDateFunc-3', 
'K-TimezoneFromDateFunc-4', 
'K-TimezoneFromDateFunc-5', 
'K-TimezoneFromDateFunc-6', 
'K-TimezoneFromDateFunc-7', 
'cbcl-timezone-from-date-001', 
'cbcl-timezone-from-date-002', 
'cbcl-timezone-from-date-003', 
'cbcl-timezone-from-date-004', 
'cbcl-timezone-from-date-005', 
'cbcl-timezone-from-date-006', 
'cbcl-timezone-from-date-007'
].

'fn-timezone-from-date-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:timezone-from-date(xs:date(\"1999-05-31-05:00\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-timezone-from-date-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-PT5H") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-timezone-from-date-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:timezone-from-date(xs:date(\"2000-06-12Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-timezone-from-date-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "PT0S") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-timezone-from-date-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:timezone-from-date(xs:date(\"1999-12-31+05:00\")) lt fn:timezone-from-date(xs:date(\"1999-12-31+06:00\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-timezone-from-date-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-timezone-from-date-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:timezone-from-date(xs:date(\"1999-12-31+01:00\")) le fn:timezone-from-date(xs:date(\"1999-12-31+01:00\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-timezone-from-date-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-timezone-from-date-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(fn:timezone-from-date(()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-timezone-from-date-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-timezone-from-date-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:timezone-from-date(xs:date(\"1999-05-31+00:00\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-timezone-from-date-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "PT0S") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-timezone-from-date-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:timezone-from-date(xs:date(\"1999-12-31-00:00\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-timezone-from-date-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "PT0S") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-timezone-from-date-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:timezone-from-date(xs:date(\"1970-01-01+08:00\")) + fn:timezone-from-date(xs:date(\"1970-01-01+03:00\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-timezone-from-date-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "PT11H") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-timezone-from-date-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:timezone-from-date(xs:date(\"1970-01-01+09:00\")) - fn:timezone-from-date(xs:date(\"1970-01-01+10:00\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-timezone-from-date-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-PT1H") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-timezone-from-date-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:not(fn:string(fn:timezone-from-date(xs:date(\"1970-01-03+02:00\"))))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-timezone-from-date-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-timezone-from-date-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:timezone-from-date(xs:date(\"1970-01-02+10:00\")) div fn:timezone-from-date(xs:date(\"1970-01-01+05:00\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-timezone-from-date-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-timezone-from-date-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:number(fn:timezone-from-date(xs:date(\"1970-01-02+10:00\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-timezone-from-date-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "NaN") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-timezone-from-date-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:boolean(fn:string(fn:timezone-from-date(xs:date(\"1970-01-02+10:00\"))))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-timezone-from-date-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-timezone-from-date-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string(fn:timezone-from-date(xs:date(\"1970-01-01Z\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-timezone-from-date-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "PT0S") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-timezone-from-date-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string(fn:timezone-from-date(xs:date(\"1970-01-01Z\"))) and fn:string(fn:timezone-from-date(xs:date(\"1970-01-01Z\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-timezone-from-date-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-timezone-from-date-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:timezone-from-date(xs:date(\"1970-01-02+10:00\")) eq fn:timezone-from-date(xs:date(\"1970-01-01+10:00\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-timezone-from-date-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-timezone-from-date-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:month-from-date(xs:date(\"1970-01-01+05:00\")) ne fn:month-from-date(xs:date(\"1970-01-03+03:00\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-timezone-from-date-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-timezone-from-date-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:timezone-from-date(xs:date(\"1970-01-01+04:00\")) le fn:timezone-from-date(xs:date(\"1970-01-02+02:00\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-timezone-from-date-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-timezone-from-date-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:timezone-from-date(xs:date(\"1970-01-03+02:00\")) ge fn:timezone-from-date(xs:date(\"1970-01-01+01:00\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-timezone-from-date-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-timezone-from-date-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string(fn:timezone-from-date(xs:date(\"1970-01-01Z\"))) or fn:string(fn:timezone-from-date(xs:date(\"1970-01-01Z\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-timezone-from-date-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-TimezoneFromDateFunc-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "timezone-from-date()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-TimezoneFromDateFunc-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-TimezoneFromDateFunc-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "timezone-from-date((), \"Wrong param\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-TimezoneFromDateFunc-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-TimezoneFromDateFunc-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(timezone-from-date(()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-TimezoneFromDateFunc-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-TimezoneFromDateFunc-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "timezone-from-date(()) instance of xs:dayTimeDuration?", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-TimezoneFromDateFunc-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-TimezoneFromDateFunc-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "timezone-from-date(xs:date(\"2004-10-12Z\")) eq xs:dayTimeDuration(\"PT0S\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-TimezoneFromDateFunc-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-TimezoneFromDateFunc-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "timezone-from-date(xs:date(\"2004-10-12-08:23\")) eq xs:dayTimeDuration(\"-PT8H23M\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-TimezoneFromDateFunc-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-TimezoneFromDateFunc-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(timezone-from-date(xs:date(\"2004-10-12\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-TimezoneFromDateFunc-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-timezone-from-date-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      timezone-from-date(adjust-date-to-timezone(xs:date(\"1997-01-01\"))) = implicit-timezone()
   ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-timezone-from-date-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-timezone-from-date-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare function local:timezone($arg as xs:integer) { if ($arg gt 0) then xs:dayTimeDuration(concat('PT', $arg, 'H')) else if ($arg lt 0) then xs:dayTimeDuration(concat('-PT', -$arg, 'H')) else xs:dayTimeDuration('PT0H') };
        timezone-from-date( adjust-date-to-timezone( fn:current-date(), local:timezone(15)))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-timezone-from-date-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODT0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-timezone-from-date-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare function local:timezone($arg as xs:integer) { if ($arg gt 0) then xs:dayTimeDuration(concat('PT', $arg, 'H')) else if ($arg lt 0) then xs:dayTimeDuration(concat('-PT', -$arg, 'H')) else xs:dayTimeDuration('PT0H') };
        timezone-from-date( adjust-date-to-timezone( fn:current-date(), local:timezone(14)))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-timezone-from-date-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "PT14H") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-timezone-from-date-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare function local:timezone($arg as xs:integer) { if ($arg gt 0) then xs:dayTimeDuration(concat('PT', $arg, 'H')) else if ($arg lt 0) then xs:dayTimeDuration(concat('-PT', -$arg, 'H')) else xs:dayTimeDuration('PT0H') };
        timezone-from-date( adjust-date-to-timezone( fn:current-date(), timezone-from-date( adjust-date-to-timezone( xs:date('1970-01-01'), local:timezone(-12)))))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-timezone-from-date-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-PT12H") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-timezone-from-date-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare function local:date($arg as xs:boolean) { if ($arg) then xs:date('1970-01-01Z') else fn:current-date() };
        timezone-from-date( adjust-date-to-timezone( xs:date('2008-08-01'), timezone-from-date(local:date(true()))))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-timezone-from-date-005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "PT0S") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-timezone-from-date-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare function local:dateTime($arg as xs:boolean) { if ($arg) then xs:dateTime('1970-01-01T00:00:00Z') else fn:current-dateTime() };
        timezone-from-date( adjust-date-to-timezone( xs:date('2008-08-01'), timezone-from-dateTime(local:dateTime(true()))))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-timezone-from-date-006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "PT0S") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-timezone-from-date-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare function local:time($arg as xs:boolean) { if ($arg) then xs:time('12:00:00Z') else fn:current-time() };
        timezone-from-date( adjust-date-to-timezone( xs:date('2008-08-01'), timezone-from-time(local:time(true()))))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-timezone-from-date-007.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "PT0S") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.