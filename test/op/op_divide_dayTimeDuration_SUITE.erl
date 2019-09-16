-module('op_divide_dayTimeDuration_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['op-divide-dayTimeDuration2args-1'/1]).
-export(['op-divide-dayTimeDuration2args-2'/1]).
-export(['op-divide-dayTimeDuration2args-3'/1]).
-export(['op-divide-dayTimeDuration2args-4'/1]).
-export(['op-divide-dayTimeDuration2args-5'/1]).
-export(['op-divide-dayTimeDuration-2'/1]).
-export(['op-divide-dayTimeDuration-3'/1]).
-export(['op-divide-dayTimeDuration-4'/1]).
-export(['op-divide-dayTimeDuration-5'/1]).
-export(['op-divide-dayTimeDuration-6'/1]).
-export(['op-divide-dayTimeDuration-7'/1]).
-export(['op-divide-dayTimeDuration-8'/1]).
-export(['op-divide-dayTimeDuration-9'/1]).
-export(['op-divide-dayTimeDuration-10'/1]).
-export(['op-divide-dayTimeDuration-11'/1]).
-export(['op-divide-dayTimeDuration-12'/1]).
-export(['op-divide-dayTimeDuration-13'/1]).
-export(['op-divide-dayTimeDuration-14'/1]).
-export(['op-divide-dayTimeDuration-15'/1]).
-export(['op-divide-dayTimeDuration-16'/1]).
-export(['K-DayTimeDurationDivide-1'/1]).
-export(['K-DayTimeDurationDivide-2'/1]).
-export(['K-DayTimeDurationDivide-3'/1]).
-export(['K-DayTimeDurationDivide-4'/1]).
-export(['K-DayTimeDurationDivide-5'/1]).
-export(['K-DayTimeDurationDivide-6'/1]).
-export(['K-DayTimeDurationDivide-7'/1]).
-export(['K-DayTimeDurationDivide-8'/1]).
-export(['K-DayTimeDurationDivide-9'/1]).
-export(['K-DayTimeDurationDivide-10'/1]).
-export(['K-DayTimeDurationDivide-11'/1]).
-export(['K-DayTimeDurationDivide-12'/1]).
-export(['K-DayTimeDurationDivide-13'/1]).
-export(['K-DayTimeDurationDivide-14'/1]).
-export(['K-DayTimeDurationDivide-15'/1]).
-export(['K-DayTimeDurationDivide-16'/1]).
-export(['cbcl-divide-dayTimeDuration-001'/1]).
-export(['cbcl-divide-dayTimeDuration-002'/1]).
-export(['cbcl-divide-dayTimeDuration-003'/1]).
-export(['cbcl-div-001'/1]).
-export(['cbcl-div-002'/1]).
-export(['cbcl-div-003'/1]).
-export(['cbcl-div-004'/1]).
-export(['cbcl-div-005'/1]).
-export(['cbcl-div-006'/1]).
-export(['cbcl-div-007'/1]).
-export(['cbcl-div-008'/1]).
-export(['cbcl-div-009'/1]).
-export(['cbcl-div-010'/1]).
-export(['cbcl-div-011'/1]).
-export(['cbcl-div-012'/1]).
-export(['cbcl-div-013'/1]).
-export(['cbcl-div-014'/1]).
-export(['cbcl-div-015'/1]).
-export(['cbcl-div-016'/1]).
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
   __BaseDir = filename:join(TD, "op"),
   [{base_dir, __BaseDir}|Config].
all() -> [
   {group, group_0}, 
   {group, group_1}, 
   {group, group_2}
   ].
groups() -> [
   {group_0, [parallel], [
    'op-divide-dayTimeDuration2args-1', 
    'op-divide-dayTimeDuration2args-2', 
    'op-divide-dayTimeDuration2args-3', 
    'op-divide-dayTimeDuration2args-4', 
    'op-divide-dayTimeDuration2args-5', 
    'op-divide-dayTimeDuration-2', 
    'op-divide-dayTimeDuration-3', 
    'op-divide-dayTimeDuration-4', 
    'op-divide-dayTimeDuration-5', 
    'op-divide-dayTimeDuration-6', 
    'op-divide-dayTimeDuration-7', 
    'op-divide-dayTimeDuration-8', 
    'op-divide-dayTimeDuration-9', 
    'op-divide-dayTimeDuration-10', 
    'op-divide-dayTimeDuration-11', 
    'op-divide-dayTimeDuration-12', 
    'op-divide-dayTimeDuration-13', 
    'op-divide-dayTimeDuration-14', 
    'op-divide-dayTimeDuration-15', 
    'op-divide-dayTimeDuration-16', 
    'K-DayTimeDurationDivide-1', 
    'K-DayTimeDurationDivide-2', 
    'K-DayTimeDurationDivide-3']}, 
   {group_1, [parallel], [
    'K-DayTimeDurationDivide-4', 
    'K-DayTimeDurationDivide-5', 
    'K-DayTimeDurationDivide-6', 
    'K-DayTimeDurationDivide-7', 
    'K-DayTimeDurationDivide-8', 
    'K-DayTimeDurationDivide-9', 
    'K-DayTimeDurationDivide-10', 
    'K-DayTimeDurationDivide-11', 
    'K-DayTimeDurationDivide-12', 
    'K-DayTimeDurationDivide-13', 
    'K-DayTimeDurationDivide-14', 
    'K-DayTimeDurationDivide-15', 
    'K-DayTimeDurationDivide-16', 
    'cbcl-divide-dayTimeDuration-001', 
    'cbcl-divide-dayTimeDuration-002', 
    'cbcl-divide-dayTimeDuration-003', 
    'cbcl-div-001', 
    'cbcl-div-002', 
    'cbcl-div-003', 
    'cbcl-div-004', 
    'cbcl-div-005', 
    'cbcl-div-006', 
    'cbcl-div-007', 
    'cbcl-div-008']}, 
   {group_2, [parallel], [
    'cbcl-div-009', 
    'cbcl-div-010', 
    'cbcl-div-011', 
    'cbcl-div-012', 
    'cbcl-div-013', 
    'cbcl-div-014', 
    'cbcl-div-015', 
    'cbcl-div-016']}].

'op-divide-dayTimeDuration2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dayTimeDuration(\"P0DT0H0M0S\") div xs:double(\"-1.7976931348623157E308\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-divide-dayTimeDuration2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "PT0S") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-divide-dayTimeDuration2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dayTimeDuration(\"P15DT11H59M59S\") div xs:double(\"-1.7976931348623157E308\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-divide-dayTimeDuration2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "PT0S") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-divide-dayTimeDuration2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dayTimeDuration(\"P31DT23H59M59S\") div xs:double(\"-1.7976931348623157E308\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-divide-dayTimeDuration2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "PT0S") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-divide-dayTimeDuration2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dayTimeDuration(\"P0DT0H0M0S\") div xs:double(\"0.1\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-divide-dayTimeDuration2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "PT0S") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-divide-dayTimeDuration2args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dayTimeDuration(\"P0DT0H0M0S\") div xs:double(\"1.7976931348623157E308\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-divide-dayTimeDuration2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "PT0S") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-divide-dayTimeDuration-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string((xs:dayTimeDuration(\"P10DT10H11M\")) div 2.0) and fn:false()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-divide-dayTimeDuration-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-divide-dayTimeDuration-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string((xs:dayTimeDuration(\"P20DT20H10M\") div 2.0)) or fn:false()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-divide-dayTimeDuration-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-divide-dayTimeDuration-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:not(fn:string(xs:dayTimeDuration(\"P11DT12H04M\") div 2.0))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-divide-dayTimeDuration-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-divide-dayTimeDuration-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:boolean(fn:string(xs:dayTimeDuration(\"P05DT09H08M\") div 2.0))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-divide-dayTimeDuration-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-divide-dayTimeDuration-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:number(xs:dayTimeDuration(\"P02DT06H09M\") div 2.0)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-divide-dayTimeDuration-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "NaN") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-divide-dayTimeDuration-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string(xs:dayTimeDuration(\"P03DT04H08M\") div 2.0)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-divide-dayTimeDuration-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "P1DT14H4M") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-divide-dayTimeDuration-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:dayTimeDuration(\"P10DT01H01M\") div -2.0)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-divide-dayTimeDuration-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-P5DT30M30S") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-divide-dayTimeDuration-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string((xs:dayTimeDuration(\"P01DT02H01M\") div 2.0)) and fn:string((xs:dayTimeDuration(\"P02DT03H03M\") div 2.0 ))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-divide-dayTimeDuration-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-divide-dayTimeDuration-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string((xs:dayTimeDuration(\"P05DT09H02M\") div 2.0)) or fn:string((xs:dayTimeDuration(\"P05DT05H03M\") div 2.0))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-divide-dayTimeDuration-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-divide-dayTimeDuration-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:dayTimeDuration(\"P42DT10H10M\") div 2.0) div (xs:dayTimeDuration(\"P42DT10H10M\") div 2.0)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-divide-dayTimeDuration-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-divide-dayTimeDuration-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string((xs:dayTimeDuration(\"P10DT08H11M\") div 2.0)) and (fn:true())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-divide-dayTimeDuration-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-divide-dayTimeDuration-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:dayTimeDuration(\"P23DT11H11M\") div 2.0) eq xs:dayTimeDuration(\"P23DT11H11M\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-divide-dayTimeDuration-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-divide-dayTimeDuration-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:dayTimeDuration(\"P21DT08H12M\") div 2.0) ne xs:dayTimeDuration(\"P08DT08H05M\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-divide-dayTimeDuration-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-divide-dayTimeDuration-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:dayTimeDuration(\"P10DT10H01M\") div 2.0) le xs:dayTimeDuration(\"P17DT10H02M\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-divide-dayTimeDuration-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-divide-dayTimeDuration-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:dayTimeDuration(\"P13DT09H09M\") div 2.0) ge xs:dayTimeDuration(\"P18DT02H02M\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-divide-dayTimeDuration-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DayTimeDurationDivide-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dayTimeDuration(\"P8DT4H4M4.400S\") div 4 eq xs:dayTimeDuration(\"P2DT1H1M1.1S\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DayTimeDurationDivide-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DayTimeDurationDivide-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dayTimeDuration(\"P3D\") div xs:double(\"-INF\") eq xs:dayTimeDuration(\"PT0S\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DayTimeDurationDivide-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DayTimeDurationDivide-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dayTimeDuration(\"P3D\") div xs:double(\"INF\") eq xs:dayTimeDuration(\"PT0S\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DayTimeDurationDivide-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DayTimeDurationDivide-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dayTimeDuration(\"P3DT4H3M3.100S\") div 0", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DayTimeDurationDivide-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODT0002") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FODT0002 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DayTimeDurationDivide-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dayTimeDuration(\"P3DT4H3M3.100S\") div xs:double(\"NaN\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DayTimeDurationDivide-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCA0005") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FOCA0005 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DayTimeDurationDivide-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dayTimeDuration(\"P3D\") div xs:double(\"-0\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DayTimeDurationDivide-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODT0002") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FODT0002 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DayTimeDurationDivide-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:duration(\"P1Y3M\") div 3", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DayTimeDurationDivide-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DayTimeDurationDivide-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "3 div xs:duration(\"P1Y3M\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DayTimeDurationDivide-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DayTimeDurationDivide-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "3 div xs:yearMonthDuration(\"P1Y3M\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DayTimeDurationDivide-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DayTimeDurationDivide-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "3 div xs:dayTimeDuration(\"P3D\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DayTimeDurationDivide-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DayTimeDurationDivide-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dayTimeDuration(\"P3D\") div xs:yearMonthDuration(\"P3Y3M\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DayTimeDurationDivide-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DayTimeDurationDivide-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:yearMonthDuration(\"P3Y3M\") div xs:dayTimeDuration(\"P3D\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DayTimeDurationDivide-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DayTimeDurationDivide-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:duration(\"P3D\") div xs:yearMonthDuration(\"P3Y3M\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DayTimeDurationDivide-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DayTimeDurationDivide-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:yearMonthDuration(\"P3Y3M\") div xs:duration(\"P3D\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DayTimeDurationDivide-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DayTimeDurationDivide-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dayTimeDuration(\"P3D\") div xs:duration(\"P3Y3M\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DayTimeDurationDivide-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DayTimeDurationDivide-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:duration(\"P3Y3M\") div xs:dayTimeDuration(\"P3D\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DayTimeDurationDivide-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-divide-dayTimeDuration-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:dayTimeDuration($days as xs:integer) as xs:dayTimeDuration { xs:dayTimeDuration(concat(\"P\", $days, \"D\")) }; local:dayTimeDuration(2) div 0", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-divide-dayTimeDuration-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODT0002") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FODT0002 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-divide-dayTimeDuration-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:dayTimeDuration($days as xs:integer) as xs:dayTimeDuration { xs:dayTimeDuration(concat(\"P\", $days, \"D\")) }; local:dayTimeDuration(2) div 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-divide-dayTimeDuration-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "P2D") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-divide-dayTimeDuration-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dayTimeDuration(\"P9223372036854775807D\") div 0.5", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-divide-dayTimeDuration-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODT0002") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FODT0002 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-div-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:f($x) { if ($x) then xs:duration(\"P1Y\") else xs:yearMonthDuration(\"P1Y\") }; local:f(false()) div xs:yearMonthDuration(\"P1M\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-div-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "12") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-div-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:f($x) { if ($x) then xs:duration(\"P1Y\") else xs:yearMonthDuration(\"P1Y\") }; local:f(true()) div xs:yearMonthDuration(\"P1M\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-div-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-div-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:f($x) { if ($x) then xs:duration(\"P1D\") else xs:dayTimeDuration(\"P1D\") }; local:f(false()) div xs:dayTimeDuration(\"PT1H\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-div-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "24") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-div-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:f($x) { if ($x) then xs:duration(\"P1D\") else xs:dayTimeDuration(\"P1D\") }; local:f(true()) div xs:dayTimeDuration(\"PT1H\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-div-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-div-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:yearMonthDuration(\"P1M\") }; xs:yearMonthDuration(\"P1Y\") div local:f(false())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-div-005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "12") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-div-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:yearMonthDuration(\"P1M\") }; xs:yearMonthDuration(\"P1Y\") div local:f(true())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-div-006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-div-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:dayTimeDuration(\"PT1H\") }; xs:dayTimeDuration(\"P1D\") div local:f(false())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-div-007.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "24") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-div-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:dayTimeDuration(\"PT1H\") }; xs:dayTimeDuration(\"P1D\") div local:f(true())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-div-008.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-div-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:yearMonthDuration(\"P1M\") }; local:f(false()) div local:f(false())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-div-009.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-div-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:yearMonthDuration(\"P1M\") }; local:f(true()) div local:f(false())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-div-010.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-div-011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:dayTimeDuration(\"PT1H\") }; local:f(false()) div local:f(false())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-div-011.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-div-012'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:dayTimeDuration(\"PT1H\") }; local:f(false()) div local:f(true())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-div-012.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-div-013'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:f($x) { if ($x) then xs:duration(\"P2M\") else xs:yearMonthDuration(\"P2M\") }; local:f(false()) div 2", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-div-013.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "P1M") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-div-014'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:f($x) { if ($x) then xs:duration(\"P2M\") else xs:yearMonthDuration(\"P2M\") }; local:f(true()) div 2", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-div-014.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-div-015'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:f($x) { if ($x) then xs:duration(\"P1D\") else xs:dayTimeDuration(\"P1D\") }; local:f(false()) div 2", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-div-015.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "PT12H") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-div-016'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:dayTimeDuration(\"P1D\") }; local:f(true()) div 2", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-div-016.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.