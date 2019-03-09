-module('op_multiply_yearMonthDuration_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['op-multiply-yearMonthDuration2args-1'/1]).
-export(['op-multiply-yearMonthDuration2args-2'/1]).
-export(['op-multiply-yearMonthDuration2args-3'/1]).
-export(['op-multiply-yearMonthDuration2args-4'/1]).
-export(['op-multiply-yearMonthDuration2args-5'/1]).
-export(['op-multiply-yearMonthDuration-1'/1]).
-export(['op-multiply-yearMonthDuration-2'/1]).
-export(['op-multiply-yearMonthDuration-3'/1]).
-export(['op-multiply-yearMonthDuration-4'/1]).
-export(['op-multiply-yearMonthDuration-5'/1]).
-export(['op-multiply-yearMonthDuration-6'/1]).
-export(['op-multiply-yearMonthDuration-7'/1]).
-export(['op-multiply-yearMonthDuration-8'/1]).
-export(['op-multiply-yearMonthDuration-9'/1]).
-export(['op-multiply-yearMonthDuration-10'/1]).
-export(['op-multiply-yearMonthDuration-11'/1]).
-export(['op-multiply-yearMonthDuration-12'/1]).
-export(['op-multiply-yearMonthDuration-13'/1]).
-export(['op-multiply-yearMonthDuration-14'/1]).
-export(['op-multiply-yearMonthDuration-15'/1]).
-export(['op-multiply-yearMonthDuration-16'/1]).
-export(['op-multiply-yearMonthDuration-17'/1]).
-export(['op-multiply-yearMonthDuration-18'/1]).
-export(['op-multiply-yearMonthDuration-19'/1]).
-export(['op-multiply-yearMonthDuration-20'/1]).
-export(['K-YearMonthDurationMultiply-1'/1]).
-export(['K-YearMonthDurationMultiply-2'/1]).
-export(['K-YearMonthDurationMultiply-3'/1]).
-export(['K-YearMonthDurationMultiply-4'/1]).
-export(['K-YearMonthDurationMultiply-5'/1]).
-export(['K-YearMonthDurationMultiply-6'/1]).
-export(['K-YearMonthDurationMultiply-7'/1]).
-export(['K-YearMonthDurationMultiply-8'/1]).
-export(['K-YearMonthDurationMultiply-9'/1]).
-export(['K-YearMonthDurationMultiply-10'/1]).
-export(['K-YearMonthDurationMultiply-11'/1]).
-export(['K-YearMonthDurationMultiply-12'/1]).
-export(['K-YearMonthDurationMultiply-13'/1]).
-export(['cbcl-multiply-yearMonthDuration-001'/1]).
-export(['cbcl-multiply-yearMonthDuration-002'/1]).
-export(['cbcl-multiply-yearMonthDuration-003'/1]).
-export(['cbcl-multiply-yearMonthDuration-004'/1]).
-export(['cbcl-multiply-yearMonthDuration-005'/1]).
-export(['cbcl-multiply-yearMonthDuration-006'/1]).
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
    'op-multiply-yearMonthDuration2args-1', 
    'op-multiply-yearMonthDuration2args-2', 
    'op-multiply-yearMonthDuration2args-3', 
    'op-multiply-yearMonthDuration2args-4', 
    'op-multiply-yearMonthDuration2args-5', 
    'op-multiply-yearMonthDuration-1', 
    'op-multiply-yearMonthDuration-2', 
    'op-multiply-yearMonthDuration-3', 
    'op-multiply-yearMonthDuration-4', 
    'op-multiply-yearMonthDuration-5', 
    'op-multiply-yearMonthDuration-6', 
    'op-multiply-yearMonthDuration-7', 
    'op-multiply-yearMonthDuration-8', 
    'op-multiply-yearMonthDuration-9', 
    'op-multiply-yearMonthDuration-10', 
    'op-multiply-yearMonthDuration-11', 
    'op-multiply-yearMonthDuration-12', 
    'op-multiply-yearMonthDuration-13', 
    'op-multiply-yearMonthDuration-14', 
    'op-multiply-yearMonthDuration-15', 
    'op-multiply-yearMonthDuration-16', 
    'op-multiply-yearMonthDuration-17', 
    'op-multiply-yearMonthDuration-18']}, 
   {group_1, [parallel], [
    'op-multiply-yearMonthDuration-19', 
    'op-multiply-yearMonthDuration-20', 
    'K-YearMonthDurationMultiply-1', 
    'K-YearMonthDurationMultiply-2', 
    'K-YearMonthDurationMultiply-3', 
    'K-YearMonthDurationMultiply-4', 
    'K-YearMonthDurationMultiply-5', 
    'K-YearMonthDurationMultiply-6', 
    'K-YearMonthDurationMultiply-7', 
    'K-YearMonthDurationMultiply-8', 
    'K-YearMonthDurationMultiply-9', 
    'K-YearMonthDurationMultiply-10', 
    'K-YearMonthDurationMultiply-11', 
    'K-YearMonthDurationMultiply-12', 
    'K-YearMonthDurationMultiply-13', 
    'cbcl-multiply-yearMonthDuration-001', 
    'cbcl-multiply-yearMonthDuration-002', 
    'cbcl-multiply-yearMonthDuration-003', 
    'cbcl-multiply-yearMonthDuration-004', 
    'cbcl-multiply-yearMonthDuration-005', 
    'cbcl-multiply-yearMonthDuration-006']}].

'op-multiply-yearMonthDuration2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:yearMonthDuration(\"P0Y0M\") * xs:double(\"-1.7976931348623157E308\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-multiply-yearMonthDuration2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "P0M") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-multiply-yearMonthDuration2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:yearMonthDuration(\"P1000Y6M\") * xs:double(\"-0\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-multiply-yearMonthDuration2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "P0M") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-multiply-yearMonthDuration2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:yearMonthDuration(\"P2030Y12M\") * xs:double(\"-0\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-multiply-yearMonthDuration2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "P0M") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-multiply-yearMonthDuration2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:yearMonthDuration(\"P0Y0M\") * xs:double(\"0\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-multiply-yearMonthDuration2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "P0M") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-multiply-yearMonthDuration2args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:yearMonthDuration(\"P0Y0M\") * xs:double(\"1.7976931348623157E308\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-multiply-yearMonthDuration2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "P0M") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-multiply-yearMonthDuration-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:yearMonthDuration(\"P2Y11M\") * 2.3", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-multiply-yearMonthDuration-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "P6Y9M") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-multiply-yearMonthDuration-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string((xs:yearMonthDuration(\"P10Y11M\")) * 2.0) and fn:false()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-multiply-yearMonthDuration-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-multiply-yearMonthDuration-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string((xs:yearMonthDuration(\"P20Y10M\") * 2.0)) or fn:false()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-multiply-yearMonthDuration-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-multiply-yearMonthDuration-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:not(fn:string(xs:yearMonthDuration(\"P11Y04M\") * 2.0))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-multiply-yearMonthDuration-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-multiply-yearMonthDuration-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:boolean(fn:string(xs:yearMonthDuration(\"P05Y08M\") * 2.0))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-multiply-yearMonthDuration-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-multiply-yearMonthDuration-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:number(xs:yearMonthDuration(\"P02Y09M\") * 2.0)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-multiply-yearMonthDuration-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "NaN") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-multiply-yearMonthDuration-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string(xs:yearMonthDuration(\"P03Y08M\") * 2.0)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-multiply-yearMonthDuration-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "P7Y4M") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-multiply-yearMonthDuration-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:yearMonthDuration(\"P10Y01M\") * -2.0)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-multiply-yearMonthDuration-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-P20Y2M") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-multiply-yearMonthDuration-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string((xs:yearMonthDuration(\"P01Y01M\") * 2.0)) and fn:string((xs:yearMonthDuration(\"P02Y03M\") * 2.0))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-multiply-yearMonthDuration-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-multiply-yearMonthDuration-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string((xs:yearMonthDuration(\"P05Y02M\") * 2.0)) or fn:string((xs:yearMonthDuration(\"P05Y03M\") * 2.0))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-multiply-yearMonthDuration-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-multiply-yearMonthDuration-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:yearMonthDuration(\"P20Y11M\") * 2.0) div (xs:yearMonthDuration(\"P20Y11M\") * 2.0)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-multiply-yearMonthDuration-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-multiply-yearMonthDuration-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string((xs:yearMonthDuration(\"P10Y11M\") * 2.0)) and (fn:true())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-multiply-yearMonthDuration-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-multiply-yearMonthDuration-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:yearMonthDuration(\"P23Y11M\") * 2.0) eq xs:yearMonthDuration(\"P23Y11M\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-multiply-yearMonthDuration-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-multiply-yearMonthDuration-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:yearMonthDuration(\"P21Y12M\") * 2.0) ne xs:yearMonthDuration(\"P08Y05M\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-multiply-yearMonthDuration-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-multiply-yearMonthDuration-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:yearMonthDuration(\"P10Y01M\") * 2.0) le xs:yearMonthDuration(\"P17Y02M\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-multiply-yearMonthDuration-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-multiply-yearMonthDuration-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:yearMonthDuration(\"P13Y09M\") - xs:yearMonthDuration(\"P18Y02M\")) ge xs:yearMonthDuration(\"P18Y02M\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-multiply-yearMonthDuration-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-multiply-yearMonthDuration-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count((xs:yearMonthDuration(\"P13Y09M\") *+0))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-multiply-yearMonthDuration-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-multiply-yearMonthDuration-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count((xs:yearMonthDuration(\"P13Y09M\") *-0))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-multiply-yearMonthDuration-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-multiply-yearMonthDuration-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:yearMonthDuration(\"P13Y09M\") * fn:number(())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-multiply-yearMonthDuration-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCA0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-multiply-yearMonthDuration-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $i in (-3.9, -3.5, -3.1, -0.9, -0.5, -0.1, +0.1, +0.5, +0.9, +3.1, +3.5, +3.9) return xs:yearMonthDuration(\"P1M\") * $i", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-multiply-yearMonthDuration-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-P4M -P3M -P3M -P1M P0M P0M P0M P1M P1M P3M P4M P4M") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-YearMonthDurationMultiply-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:yearMonthDuration(\"P3Y36M\") * 3 eq xs:yearMonthDuration(\"P18Y\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-YearMonthDurationMultiply-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-YearMonthDurationMultiply-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "3 * xs:yearMonthDuration(\"P3Y36M\") eq xs:yearMonthDuration(\"P18Y\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-YearMonthDurationMultiply-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-YearMonthDurationMultiply-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "0 * xs:yearMonthDuration(\"P3Y36M\") eq xs:yearMonthDuration(\"P0M\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-YearMonthDurationMultiply-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-YearMonthDurationMultiply-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:yearMonthDuration(\"P3Y36M\") * 0 eq xs:yearMonthDuration(\"P0M\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-YearMonthDurationMultiply-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-YearMonthDurationMultiply-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:yearMonthDuration(\"P3Y3M\") * xs:double(\"INF\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-YearMonthDurationMultiply-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODT0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-YearMonthDurationMultiply-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:yearMonthDuration(\"P3Y3M\") * xs:double(\"-INF\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-YearMonthDurationMultiply-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODT0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-YearMonthDurationMultiply-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:yearMonthDuration(\"P3Y3M\") * xs:double(\"NaN\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-YearMonthDurationMultiply-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCA0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-YearMonthDurationMultiply-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:duration(\"P1Y3M\") * 3", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-YearMonthDurationMultiply-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-YearMonthDurationMultiply-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "3 * xs:duration(\"P1Y3M\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-YearMonthDurationMultiply-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-YearMonthDurationMultiply-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dayTimeDuration(\"P3D\") * xs:yearMonthDuration(\"P3Y3M\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-YearMonthDurationMultiply-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-YearMonthDurationMultiply-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:yearMonthDuration(\"P3Y3M\") * xs:dayTimeDuration(\"P3D\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-YearMonthDurationMultiply-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-YearMonthDurationMultiply-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:yearMonthDuration(\"P3Y3M\") * xs:yearMonthDuration(\"P3Y3M\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-YearMonthDurationMultiply-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-YearMonthDurationMultiply-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dayTimeDuration(\"P3D\") * xs:dayTimeDuration(\"P3D\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-YearMonthDurationMultiply-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-multiply-yearMonthDuration-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare function local:yearMonthDuration($years as xs:integer) as xs:yearMonthDuration { xs:yearMonthDuration(concat(\"P\", $years, \"Y\")) };
        local:yearMonthDuration(2) * 0", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-multiply-yearMonthDuration-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "P0M") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-multiply-yearMonthDuration-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare function local:yearMonthDuration($years as xs:integer) as xs:yearMonthDuration { xs:yearMonthDuration(concat(\"P\", $years, \"Y\")) };
        local:yearMonthDuration(2) * 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-multiply-yearMonthDuration-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "P2Y") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-multiply-yearMonthDuration-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:yearMonthDuration(\"P2Y\") * xs:double('NaN')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-multiply-yearMonthDuration-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCA0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-multiply-yearMonthDuration-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare function local:yearMonthDuration($years as xs:integer) as xs:yearMonthDuration { xs:yearMonthDuration(concat(\"P\", $years, \"Y\")) };
        0 * local:yearMonthDuration(2)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-multiply-yearMonthDuration-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "P0M") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-multiply-yearMonthDuration-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare function local:yearMonthDuration($years as xs:integer) as xs:yearMonthDuration { xs:yearMonthDuration(concat(\"P\", $years, \"Y\")) };
        1 * local:yearMonthDuration(2)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-multiply-yearMonthDuration-005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "P2Y") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-multiply-yearMonthDuration-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:double('NaN') * xs:yearMonthDuration(\"P2Y\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-multiply-yearMonthDuration-006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCA0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.