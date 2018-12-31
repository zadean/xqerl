-module('op_add_yearMonthDuration_to_date_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['op-add-yearMonthDuration-to-date2args-1'/1]).
-export(['op-add-yearMonthDuration-to-date2args-2'/1]).
-export(['op-add-yearMonthDuration-to-date2args-3'/1]).
-export(['op-add-yearMonthDuration-to-date2args-4'/1]).
-export(['op-add-yearMonthDuration-to-date2args-5'/1]).
-export(['op-add-yearMonthDuration-to-date-1'/1]).
-export(['op-add-yearMonthDuration-to-date-2'/1]).
-export(['op-add-yearMonthDuration-to-date-3'/1]).
-export(['op-add-yearMonthDuration-to-date-4'/1]).
-export(['op-add-yearMonthDuration-to-date-5'/1]).
-export(['op-add-yearMonthDuration-to-date-6'/1]).
-export(['op-add-yearMonthDuration-to-date-7'/1]).
-export(['op-add-yearMonthDuration-to-date-8'/1]).
-export(['op-add-yearMonthDuration-to-date-9'/1]).
-export(['op-add-yearMonthDuration-to-date-10'/1]).
-export(['op-add-yearMonthDuration-to-date-12'/1]).
-export(['op-add-yearMonthDuration-to-date-13'/1]).
-export(['op-add-yearMonthDuration-to-date-14'/1]).
-export(['op-add-yearMonthDuration-to-date-15'/1]).
-export(['op-add-yearMonthDuration-to-date-16'/1]).
-export(['K-DateAddYMD-1'/1]).
-export(['K-DateAddYMD-2'/1]).
-export(['K-DateAddYMD-3'/1]).
-export(['K-DateAddYMD-4'/1]).
-export(['cbcl-add-yearMonthDuration-to-date-001'/1]).
-export(['cbcl-add-yearMonthDuration-to-date-002'/1]).
-export(['cbcl-add-yearMonthDuration-to-date-003'/1]).
suite() -> [{timetrap,{seconds, 5}}].
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
'op-add-yearMonthDuration-to-date2args-1', 
'op-add-yearMonthDuration-to-date2args-2', 
'op-add-yearMonthDuration-to-date2args-3', 
'op-add-yearMonthDuration-to-date2args-4', 
'op-add-yearMonthDuration-to-date2args-5', 
'op-add-yearMonthDuration-to-date-1', 
'op-add-yearMonthDuration-to-date-2', 
'op-add-yearMonthDuration-to-date-3', 
'op-add-yearMonthDuration-to-date-4', 
'op-add-yearMonthDuration-to-date-5', 
'op-add-yearMonthDuration-to-date-6', 
'op-add-yearMonthDuration-to-date-7', 
'op-add-yearMonthDuration-to-date-8', 
'op-add-yearMonthDuration-to-date-9', 
'op-add-yearMonthDuration-to-date-10', 
'op-add-yearMonthDuration-to-date-12', 
'op-add-yearMonthDuration-to-date-13', 
'op-add-yearMonthDuration-to-date-14', 
'op-add-yearMonthDuration-to-date-15', 
'op-add-yearMonthDuration-to-date-16', 
'K-DateAddYMD-1', 
'K-DateAddYMD-2', 
'K-DateAddYMD-3', 
'K-DateAddYMD-4', 
'cbcl-add-yearMonthDuration-to-date-001', 
'cbcl-add-yearMonthDuration-to-date-002', 
'cbcl-add-yearMonthDuration-to-date-003'
].

'op-add-yearMonthDuration-to-date2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:date(\"1970-01-01Z\") + xs:yearMonthDuration(\"P0Y0M\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-add-yearMonthDuration-to-date2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1970-01-01Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-add-yearMonthDuration-to-date2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:date(\"1983-11-17Z\") + xs:yearMonthDuration(\"P0Y0M\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-add-yearMonthDuration-to-date2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1983-11-17Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-add-yearMonthDuration-to-date2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:date(\"2030-12-31Z\") + xs:yearMonthDuration(\"P0Y0M\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-add-yearMonthDuration-to-date2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2030-12-31Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-add-yearMonthDuration-to-date2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:date(\"1970-01-01Z\") + xs:yearMonthDuration(\"P1000Y6M\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-add-yearMonthDuration-to-date2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2970-07-01Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-add-yearMonthDuration-to-date2args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:date(\"1970-01-01Z\") + xs:yearMonthDuration(\"P2030Y12M\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-add-yearMonthDuration-to-date2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "4001-01-01Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-add-yearMonthDuration-to-date-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:date(\"2000-10-30\") + xs:yearMonthDuration(\"P1Y2M\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-add-yearMonthDuration-to-date-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2001-12-30") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-add-yearMonthDuration-to-date-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string(xs:date(\"2000-12-12Z\") + xs:dayTimeDuration(\"P12DT10H07M\")) and fn:false()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-add-yearMonthDuration-to-date-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-add-yearMonthDuration-to-date-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string((xs:date(\"1999-10-23Z\") + xs:yearMonthDuration(\"P19Y12M\"))) or fn:false()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-add-yearMonthDuration-to-date-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-add-yearMonthDuration-to-date-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:not(fn:string(xs:date(\"1998-09-12Z\") + xs:yearMonthDuration(\"P20Y03M\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-add-yearMonthDuration-to-date-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-add-yearMonthDuration-to-date-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:boolean(fn:string(xs:date(\"1962-03-12Z\") + xs:yearMonthDuration(\"P10Y01M\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-add-yearMonthDuration-to-date-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-add-yearMonthDuration-to-date-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:number(xs:date(\"1988-01-28Z\") + xs:yearMonthDuration(\"P09Y02M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-add-yearMonthDuration-to-date-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "NaN") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-add-yearMonthDuration-to-date-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string(xs:date(\"1989-07-05Z\") + xs:yearMonthDuration(\"P08Y04M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-add-yearMonthDuration-to-date-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1997-11-05Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-add-yearMonthDuration-to-date-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:date(\"0001-01-01Z\") + xs:yearMonthDuration(\"-P20Y07M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-add-yearMonthDuration-to-date-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "-0021-06-01Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_string_value(Res, "-0020-06-01Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-add-yearMonthDuration-to-date-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string((xs:date(\"1993-12-09Z\") + xs:yearMonthDuration(\"P03Y03M\"))) and fn:string((xs:date(\"1993-12-09Z\") + xs:yearMonthDuration(\"P03Y03M\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-add-yearMonthDuration-to-date-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-add-yearMonthDuration-to-date-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string((xs:date(\"1985-07-05Z\") + xs:yearMonthDuration(\"P02Y02M\"))) or fn:string((xs:date(\"1985-07-05Z\") + xs:yearMonthDuration(\"P02Y02M\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-add-yearMonthDuration-to-date-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-add-yearMonthDuration-to-date-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string((xs:date(\"1980-03-02Z\") + xs:yearMonthDuration(\"P05Y05M\"))) and (fn:true())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-add-yearMonthDuration-to-date-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-add-yearMonthDuration-to-date-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:date(\"1980-05-05Z\") + xs:yearMonthDuration(\"P23Y11M\")) eq xs:date(\"1980-05-05Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-add-yearMonthDuration-to-date-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-add-yearMonthDuration-to-date-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:date(\"1979-12-12Z\") + xs:yearMonthDuration(\"P08Y08M\")) ne xs:date(\"1979-12-12Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-add-yearMonthDuration-to-date-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-add-yearMonthDuration-to-date-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:date(\"1978-12-12Z\") + xs:yearMonthDuration(\"P17Y12M\")) le xs:date(\"1978-12-12Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-add-yearMonthDuration-to-date-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-add-yearMonthDuration-to-date-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:date(\"1977-12-12Z\") + xs:yearMonthDuration(\"P18Y02M\")) ge xs:date(\"1977-12-12Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-add-yearMonthDuration-to-date-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DateAddYMD-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:date(\"1999-08-12\") + xs:yearMonthDuration(\"P3Y7M\") eq xs:date(\"2003-03-12\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateAddYMD-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DateAddYMD-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:yearMonthDuration(\"P3Y7M\") + xs:date(\"1999-08-12\") eq xs:date(\"2003-03-12\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateAddYMD-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DateAddYMD-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:yearMonthDuration(\"P1Y\") - xs:date(\"1999-08-12\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateAddYMD-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DateAddYMD-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:yearMonthDuration(\"P1Y\") - xs:dateTime(\"1999-08-12T08:01:23\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateAddYMD-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-add-yearMonthDuration-to-date-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:two-digit($number as xs:integer) { let $string := string($number) return if (string-length($string) lt 2) then concat('0', $string) else $string }; 
      	declare function local:date($year as xs:integer, $month as xs:integer, $day as xs:integer) { let $m := local:two-digit($month), $d := local:two-digit($day) return xs:date(concat($year, '-', $m, '-', $d)) }; 
      	local:date(2008, 05, 12) + xs:dayTimeDuration(\"P0D\")
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-add-yearMonthDuration-to-date-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2008-05-12") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-add-yearMonthDuration-to-date-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:two-digit($number as xs:integer) { let $string := string($number) return if (string-length($string) lt 2) then concat('0', $string) else $string }; 
      	declare function local:date($year as xs:integer, $month as xs:integer, $day as xs:integer) { let $m := local:two-digit($month), $d := local:two-digit($day) return xs:date(concat($year, '-', $m, '-', $d)) }; 
      	xs:dayTimeDuration(\"P0D\") + local:date(2008, 05, 12)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-add-yearMonthDuration-to-date-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2008-05-12") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-add-yearMonthDuration-to-date-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:two-digit($number as xs:integer) { let $string := string($number) return if (string-length($string) lt 2) then concat('0', $string) else $string }; 
      	declare function local:date($year as xs:integer, $month as xs:integer, $day as xs:integer) { let $m := local:two-digit($month), $d := local:two-digit($day) return xs:date(concat($year, '-', $m, '-', $d)) }; 
      	local:date(25252734927766555, 05, 12) + xs:yearMonthDuration(\"P4267296Y\")
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-add-yearMonthDuration-to-date-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODT0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.