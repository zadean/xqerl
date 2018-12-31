-module('fn_adjust_dateTime_to_timezone_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['fn-adjust-dateTime-to-timezone1args-1'/1]).
-export(['fn-adjust-dateTime-to-timezone1args-2'/1]).
-export(['fn-adjust-dateTime-to-timezone1args-3'/1]).
-export(['fn-adjust-dateTime-to-timezone-1'/1]).
-export(['fn-adjust-dateTime-to-timezone-2'/1]).
-export(['fn-adjust-dateTime-to-timezone-3'/1]).
-export(['fn-adjust-dateTime-to-timezone-4'/1]).
-export(['fn-adjust-dateTime-to-timezone-5'/1]).
-export(['fn-adjust-dateTime-to-timezone-6'/1]).
-export(['fn-adjust-dateTime-to-timezone-7'/1]).
-export(['fn-adjust-dateTime-to-timezone-8'/1]).
-export(['fn-adjust-dateTime-to-timezone-9'/1]).
-export(['fn-adjust-dateTime-to-timezone-10'/1]).
-export(['fn-adjust-dateTime-to-timezone-11'/1]).
-export(['fn-adjust-dateTime-to-timezone-12'/1]).
-export(['fn-adjust-dateTime-to-timezone-13'/1]).
-export(['fn-adjust-dateTime-to-timezone-14'/1]).
-export(['fn-adjust-dateTime-to-timezone-15'/1]).
-export(['fn-adjust-dateTime-to-timezone-16'/1]).
-export(['fn-adjust-dateTime-to-timezone-17'/1]).
-export(['fn-adjust-dateTime-to-timezone-18'/1]).
-export(['fn-adjust-dateTime-to-timezone-19'/1]).
-export(['fn-adjust-dateTime-to-timezone-20'/1]).
-export(['fn-adjust-dateTime-to-timezone-21'/1]).
-export(['fn-adjust-dateTime-to-timezone-22'/1]).
-export(['fn-adjust-dateTime-to-timezone-23'/1]).
-export(['fn-adjust-dateTime-to-timezone-24'/1]).
-export(['K-AdjDateTimeToTimezoneFunc-1'/1]).
-export(['K-AdjDateTimeToTimezoneFunc-2'/1]).
-export(['K-AdjDateTimeToTimezoneFunc-3'/1]).
-export(['K-AdjDateTimeToTimezoneFunc-4'/1]).
-export(['K-AdjDateTimeToTimezoneFunc-5'/1]).
-export(['K-AdjDateTimeToTimezoneFunc-6'/1]).
-export(['K-AdjDateTimeToTimezoneFunc-7'/1]).
-export(['K-AdjDateTimeToTimezoneFunc-8'/1]).
-export(['K-AdjDateTimeToTimezoneFunc-9'/1]).
-export(['K-AdjDateTimeToTimezoneFunc-10'/1]).
-export(['K-AdjDateTimeToTimezoneFunc-11'/1]).
-export(['K-AdjDateTimeToTimezoneFunc-12'/1]).
-export(['K-AdjDateTimeToTimezoneFunc-13'/1]).
-export(['K-AdjDateTimeToTimezoneFunc-14'/1]).
-export(['K-AdjDateTimeToTimezoneFunc-15'/1]).
-export(['K-AdjDateTimeToTimezoneFunc-16'/1]).
-export(['K2-AdjDateTimeToTimezoneFunc-1'/1]).
-export(['cbcl-adjust-dateTime-to-timezone-001'/1]).
-export(['cbcl-adjust-dateTime-to-timezone-002'/1]).
-export(['cbcl-adjust-dateTime-to-timezone-003'/1]).
-export(['cbcl-adjust-dateTime-to-timezone-004'/1]).
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
'fn-adjust-dateTime-to-timezone1args-1', 
'fn-adjust-dateTime-to-timezone1args-2', 
'fn-adjust-dateTime-to-timezone1args-3', 
'fn-adjust-dateTime-to-timezone-1', 
'fn-adjust-dateTime-to-timezone-2', 
'fn-adjust-dateTime-to-timezone-3', 
'fn-adjust-dateTime-to-timezone-4', 
'fn-adjust-dateTime-to-timezone-5', 
'fn-adjust-dateTime-to-timezone-6', 
'fn-adjust-dateTime-to-timezone-7', 
'fn-adjust-dateTime-to-timezone-8', 
'fn-adjust-dateTime-to-timezone-9', 
'fn-adjust-dateTime-to-timezone-10', 
'fn-adjust-dateTime-to-timezone-11', 
'fn-adjust-dateTime-to-timezone-12', 
'fn-adjust-dateTime-to-timezone-13', 
'fn-adjust-dateTime-to-timezone-14', 
'fn-adjust-dateTime-to-timezone-15', 
'fn-adjust-dateTime-to-timezone-16', 
'fn-adjust-dateTime-to-timezone-17', 
'fn-adjust-dateTime-to-timezone-18', 
'fn-adjust-dateTime-to-timezone-19', 
'fn-adjust-dateTime-to-timezone-20', 
'fn-adjust-dateTime-to-timezone-21', 
'fn-adjust-dateTime-to-timezone-22', 
'fn-adjust-dateTime-to-timezone-23', 
'fn-adjust-dateTime-to-timezone-24', 
'K-AdjDateTimeToTimezoneFunc-1', 
'K-AdjDateTimeToTimezoneFunc-2', 
'K-AdjDateTimeToTimezoneFunc-3', 
'K-AdjDateTimeToTimezoneFunc-4', 
'K-AdjDateTimeToTimezoneFunc-5', 
'K-AdjDateTimeToTimezoneFunc-6', 
'K-AdjDateTimeToTimezoneFunc-7', 
'K-AdjDateTimeToTimezoneFunc-8', 
'K-AdjDateTimeToTimezoneFunc-9', 
'K-AdjDateTimeToTimezoneFunc-10', 
'K-AdjDateTimeToTimezoneFunc-11', 
'K-AdjDateTimeToTimezoneFunc-12', 
'K-AdjDateTimeToTimezoneFunc-13', 
'K-AdjDateTimeToTimezoneFunc-14', 
'K-AdjDateTimeToTimezoneFunc-15', 
'K-AdjDateTimeToTimezoneFunc-16', 
'K2-AdjDateTimeToTimezoneFunc-1', 
'cbcl-adjust-dateTime-to-timezone-001', 
'cbcl-adjust-dateTime-to-timezone-002', 
'cbcl-adjust-dateTime-to-timezone-003', 
'cbcl-adjust-dateTime-to-timezone-004'
].
environment('empty',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
].
'fn-adjust-dateTime-to-timezone1args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:adjust-dateTime-to-timezone(xs:dateTime(\"1970-01-01T00:00:00Z\"),xs:dayTimeDuration(\"-PT10H\"))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-adjust-dateTime-to-timezone1args-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1969-12-31T14:00:00-10:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-adjust-dateTime-to-timezone1args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:adjust-dateTime-to-timezone(xs:dateTime(\"1996-04-07T01:40:52Z\"),xs:dayTimeDuration(\"-PT10H\"))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-adjust-dateTime-to-timezone1args-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1996-04-06T15:40:52-10:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-adjust-dateTime-to-timezone1args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:adjust-dateTime-to-timezone(xs:dateTime(\"2030-12-31T23:59:59Z\"),xs:dayTimeDuration(\"-PT10H\"))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-adjust-dateTime-to-timezone1args-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2030-12-31T13:59:59-10:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-adjust-dateTime-to-timezone-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:adjust-dateTime-to-timezone(xs:dateTime(\"2002-03-07T10:00:00-05:00\"),xs:dayTimeDuration(\"-PT5H0M\"))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-adjust-dateTime-to-timezone-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2002-03-07T10:00:00-05:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-adjust-dateTime-to-timezone-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:adjust-dateTime-to-timezone(xs:dateTime(\"2002-03-07T10:00:00-07:00\"),xs:dayTimeDuration(\"-PT5H0M\"))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-adjust-dateTime-to-timezone-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2002-03-07T12:00:00-05:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-adjust-dateTime-to-timezone-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $tz := xs:dayTimeDuration(\"-PT10H\") return fn:adjust-dateTime-to-timezone(xs:dateTime(\"2002-03-07T10:00:00\"), $tz)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-adjust-dateTime-to-timezone-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2002-03-07T10:00:00-10:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-adjust-dateTime-to-timezone-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $tz := xs:dayTimeDuration(\"-PT10H\") return fn:adjust-dateTime-to-timezone(xs:dateTime(\"2002-03-07T10:00:00-07:00\"), $tz)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-adjust-dateTime-to-timezone-4.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2002-03-07T07:00:00-10:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-adjust-dateTime-to-timezone-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:adjust-dateTime-to-timezone(xs:dateTime(\"2002-03-07T10:00:00-07:00\"), xs:dayTimeDuration(\"PT10H\"))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-adjust-dateTime-to-timezone-5.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2002-03-08T03:00:00+10:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-adjust-dateTime-to-timezone-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:adjust-dateTime-to-timezone(xs:dateTime(\"2002-03-07T00:00:00+01:00\"), xs:dayTimeDuration(\"-PT8H\"))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-adjust-dateTime-to-timezone-6.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2002-03-06T15:00:00-08:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-adjust-dateTime-to-timezone-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:adjust-dateTime-to-timezone(xs:dateTime(\"2002-03-07T10:00:00\"), ())", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-adjust-dateTime-to-timezone-7.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2002-03-07T10:00:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-adjust-dateTime-to-timezone-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:adjust-dateTime-to-timezone(xs:dateTime(\"2002-03-07T10:00:00-07:00\"), ())", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-adjust-dateTime-to-timezone-8.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2002-03-07T10:00:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-adjust-dateTime-to-timezone-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:adjust-dateTime-to-timezone(xs:dateTime(\"2002-03-07T10:00:00-07:00\")) - fn:adjust-dateTime-to-timezone(xs:dateTime(\"2006-03-07T10:00:00-07:00\"))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-adjust-dateTime-to-timezone-9.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-P1461D") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-adjust-dateTime-to-timezone-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:adjust-dateTime-to-timezone(xs:dateTime(\"2002-03-07T10:00:00-07:00\")) - fn:adjust-dateTime-to-timezone(xs:dateTime(\"2002-03-07T10:00:00-07:00\"))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-adjust-dateTime-to-timezone-10.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "PT0S") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-adjust-dateTime-to-timezone-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string(fn:adjust-dateTime-to-timezone(xs:dateTime(\"2002-03-07T10:00:00-04:00\"),()))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-adjust-dateTime-to-timezone-11.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2002-03-07T10:00:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-adjust-dateTime-to-timezone-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:boolean(fn:string(fn:adjust-dateTime-to-timezone(xs:dateTime(\"2002-03-07T10:00:00-04:00\"),())))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-adjust-dateTime-to-timezone-12.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-adjust-dateTime-to-timezone-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:not(fn:string(fn:adjust-dateTime-to-timezone(xs:dateTime(\"2002-03-07T10:00:00-04:00\"),())))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-adjust-dateTime-to-timezone-13.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-adjust-dateTime-to-timezone-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string(fn:adjust-dateTime-to-timezone(xs:dateTime(\"2002-03-07T10:00:00-04:00\"),())) or fn:true()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-adjust-dateTime-to-timezone-14.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-adjust-dateTime-to-timezone-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string(fn:adjust-dateTime-to-timezone(xs:dateTime(\"2002-03-07T10:00:00-04:00\"),())) or fn:false()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-adjust-dateTime-to-timezone-15.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-adjust-dateTime-to-timezone-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string(fn:adjust-dateTime-to-timezone(xs:dateTime(\"2002-03-07T10:00:00-04:00\"),())) and fn:true()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-adjust-dateTime-to-timezone-16.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-adjust-dateTime-to-timezone-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string(fn:adjust-dateTime-to-timezone(xs:dateTime(\"2002-03-07T10:00:00-04:00\"),())) and fn:false()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-adjust-dateTime-to-timezone-17.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-adjust-dateTime-to-timezone-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:adjust-dateTime-to-timezone(xs:dateTime(\"2002-03-07T10:00:00-04:00\")) - xs:dateTime(\"2006-03-07T10:00:00-05:00\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-adjust-dateTime-to-timezone-18.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-P1461DT1H") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-adjust-dateTime-to-timezone-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:adjust-dateTime-to-timezone(xs:dateTime(\"2002-03-07T10:00:00-04:00\")) - xs:dateTime(\"2001-03-07T10:00:00-05:00\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-adjust-dateTime-to-timezone-19.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "P364DT23H") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-adjust-dateTime-to-timezone-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:adjust-dateTime-to-timezone(xs:dateTime(\"2002-03-07T10:00:00-04:00\")) ge fn:adjust-dateTime-to-timezone(xs:dateTime(\"2005-03-07T10:00:00-04:00\"))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-adjust-dateTime-to-timezone-20.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-adjust-dateTime-to-timezone-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(fn:adjust-dateTime-to-timezone(()))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-adjust-dateTime-to-timezone-21.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-adjust-dateTime-to-timezone-22'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:adjust-dateTime-to-timezone(xs:dateTime(\"2002-03-07T10:00:00-04:00\"),xs:dayTimeDuration(\"-PT15H\"))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-adjust-dateTime-to-timezone-22.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODT0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-adjust-dateTime-to-timezone-23'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:adjust-dateTime-to-timezone(xs:dateTime(\"2002-03-07T10:00:00-04:00\"),xs:dayTimeDuration(\"PT15H\"))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-adjust-dateTime-to-timezone-23.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODT0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-adjust-dateTime-to-timezone-24'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:adjust-dateTime-to-timezone(current-dateTime()[. lt xs:dateTime('2000-01-01T12:00:00Z')])", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-adjust-dateTime-to-timezone-24.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-AdjDateTimeToTimezoneFunc-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "adjust-dateTime-to-timezone()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-AdjDateTimeToTimezoneFunc-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-AdjDateTimeToTimezoneFunc-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "adjust-dateTime-to-timezone((), (), \"WRONG PARAM\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-AdjDateTimeToTimezoneFunc-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-AdjDateTimeToTimezoneFunc-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(adjust-dateTime-to-timezone(()))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-AdjDateTimeToTimezoneFunc-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-AdjDateTimeToTimezoneFunc-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(adjust-dateTime-to-timezone((), ()))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-AdjDateTimeToTimezoneFunc-4.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-AdjDateTimeToTimezoneFunc-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "adjust-dateTime-to-timezone(()) instance of xs:dateTime?", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-AdjDateTimeToTimezoneFunc-5.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-AdjDateTimeToTimezoneFunc-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "timezone-from-dateTime(adjust-dateTime-to-timezone(xs:dateTime(\"2001-02-03T00:00:00\"))) eq implicit-timezone()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-AdjDateTimeToTimezoneFunc-6.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-AdjDateTimeToTimezoneFunc-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "adjust-dateTime-to-timezone(xs:dateTime(\"2001-02-03T08:02:00\"), xs:dayTimeDuration(\"PT14H1M\"))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-AdjDateTimeToTimezoneFunc-7.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODT0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-AdjDateTimeToTimezoneFunc-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "adjust-dateTime-to-timezone(xs:dateTime(\"2001-02-03T08:02:00\"), xs:dayTimeDuration(\"-PT14H1M\"))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-AdjDateTimeToTimezoneFunc-8.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODT0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-AdjDateTimeToTimezoneFunc-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "adjust-dateTime-to-timezone(xs:dateTime(\"2001-02-03T08:02:00\"), xs:dayTimeDuration(\"PT14H0M0.001S\"))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-AdjDateTimeToTimezoneFunc-9.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODT0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-AdjDateTimeToTimezoneFunc-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "adjust-dateTime-to-timezone(xs:dateTime(\"2002-03-07T10:00:00\"), xs:dayTimeDuration(\"-PT5H0M\")) eq xs:dateTime(\"2002-03-07T10:00:00-05:00\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-AdjDateTimeToTimezoneFunc-10.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-AdjDateTimeToTimezoneFunc-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "adjust-dateTime-to-timezone(xs:dateTime(\"2002-03-07T10:00:00-07:00\"), xs:dayTimeDuration(\"-PT5H0M\")) eq xs:dateTime(\"2002-03-07T12:00:00-05:00\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-AdjDateTimeToTimezoneFunc-11.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-AdjDateTimeToTimezoneFunc-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "adjust-dateTime-to-timezone(xs:dateTime(\"2002-03-07T10:00:00\"), xs:dayTimeDuration(\"-PT10H\")) eq xs:dateTime(\"2002-03-07T10:00:00-10:00\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-AdjDateTimeToTimezoneFunc-12.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-AdjDateTimeToTimezoneFunc-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "adjust-dateTime-to-timezone(xs:dateTime(\"2002-03-07T10:00:00-07:00\"), xs:dayTimeDuration(\"-PT10H\")) eq xs:dateTime(\"2002-03-07T07:00:00-10:00\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-AdjDateTimeToTimezoneFunc-13.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-AdjDateTimeToTimezoneFunc-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "adjust-dateTime-to-timezone(xs:dateTime(\"2002-03-07T10:00:00-07:00\"), xs:dayTimeDuration(\"PT10H\")) eq xs:dateTime(\"2002-03-08T03:00:00+10:00\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-AdjDateTimeToTimezoneFunc-14.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-AdjDateTimeToTimezoneFunc-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "adjust-dateTime-to-timezone(xs:dateTime(\"2002-03-07T00:00:00+01:00\"), xs:dayTimeDuration(\"-PT8H\")) eq xs:dateTime(\"2002-03-06T15:00:00-08:00\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-AdjDateTimeToTimezoneFunc-15.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-AdjDateTimeToTimezoneFunc-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "adjust-dateTime-to-timezone(xs:dateTime(\"2002-03-07T10:00:00\"), ()) eq xs:dateTime(\"2002-03-07T10:00:00\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-AdjDateTimeToTimezoneFunc-16.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-AdjDateTimeToTimezoneFunc-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:adjust-dateTime-to-timezone(xs:dateTime(\"1999-12-31T24:00:00\"), ())", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-AdjDateTimeToTimezoneFunc-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2000-01-01T00:00:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-adjust-dateTime-to-timezone-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "adjust-dateTime-to-timezone(current-dateTime(), implicit-timezone()) eq current-dateTime()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-adjust-dateTime-to-timezone-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-adjust-dateTime-to-timezone-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "adjust-dateTime-to-timezone(xs:dateTime(\"-25252734927766555-06-07T01:00:00+02:00\"), xs:dayTimeDuration(\"PT0S\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-adjust-dateTime-to-timezone-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODT0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-adjust-dateTime-to-timezone-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "adjust-dateTime-to-timezone(xs:dateTime(\"25252734927766555-07-28T23:00:00-02:00\"), xs:dayTimeDuration(\"PT0S\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-adjust-dateTime-to-timezone-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODT0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-adjust-dateTime-to-timezone-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "adjust-dateTime-to-timezone(current-dateTime(), xs:dayTimeDuration(\"PT2H\")) eq adjust-dateTime-to-timezone(current-dateTime(), xs:dayTimeDuration(\"-PT2H\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-adjust-dateTime-to-timezone-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.