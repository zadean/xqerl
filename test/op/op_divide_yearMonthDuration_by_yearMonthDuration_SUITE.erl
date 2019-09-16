-module('op_divide_yearMonthDuration_by_yearMonthDuration_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['op-divide-yearMonthDuration-by-yearMonthDuration2args-1'/1]).
-export(['op-divide-yearMonthDuration-by-yearMonthDuration2args-2'/1]).
-export(['op-divide-yearMonthDuration-by-yearMonthDuration2args-3'/1]).
-export(['op-divide-yearMonthDuration-by-yearMonthDuration2args-4'/1]).
-export(['op-divide-yearMonthDuration-by-yearMonthDuration2args-5'/1]).
-export(['op-divide-yearMonthDuration-by-yMD-1'/1]).
-export(['op-divide-yearMonthDuration-by-yMD-2'/1]).
-export(['op-divide-yearMonthDuration-by-yMD-3'/1]).
-export(['op-divide-yearMonthDuration-by-yMD-4'/1]).
-export(['op-divide-yearMonthDuration-by-yMD-5'/1]).
-export(['op-divide-yearMonthDuration-by-yMD-6'/1]).
-export(['op-divide-yearMonthDuration-by-yMD-7'/1]).
-export(['op-divide-yearMonthDuration-by-yMD-8'/1]).
-export(['op-divide-yearMonthDuration-by-yMD-9'/1]).
-export(['op-divide-yearMonthDuration-by-yMD-10'/1]).
-export(['op-divide-yearMonthDuration-by-yMD-11'/1]).
-export(['op-divide-yearMonthDuration-by-yMD-12'/1]).
-export(['op-divide-yearMonthDuration-by-yMD-13'/1]).
-export(['op-divide-yearMonthDuration-by-yMD-14'/1]).
-export(['op-divide-yearMonthDuration-by-yMD-15'/1]).
-export(['op-divide-yearMonthDuration-by-yMD-16'/1]).
-export(['K-YearMonthDurationDivideYMD-1'/1]).
-export(['cbcl-divide-yearMonthDuration-by-yearMonthDuration-001'/1]).
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
   {group, group_0}
   ].
groups() -> [
   {group_0, [parallel], [
    'op-divide-yearMonthDuration-by-yearMonthDuration2args-1', 
    'op-divide-yearMonthDuration-by-yearMonthDuration2args-2', 
    'op-divide-yearMonthDuration-by-yearMonthDuration2args-3', 
    'op-divide-yearMonthDuration-by-yearMonthDuration2args-4', 
    'op-divide-yearMonthDuration-by-yearMonthDuration2args-5', 
    'op-divide-yearMonthDuration-by-yMD-1', 
    'op-divide-yearMonthDuration-by-yMD-2', 
    'op-divide-yearMonthDuration-by-yMD-3', 
    'op-divide-yearMonthDuration-by-yMD-4', 
    'op-divide-yearMonthDuration-by-yMD-5', 
    'op-divide-yearMonthDuration-by-yMD-6', 
    'op-divide-yearMonthDuration-by-yMD-7', 
    'op-divide-yearMonthDuration-by-yMD-8', 
    'op-divide-yearMonthDuration-by-yMD-9', 
    'op-divide-yearMonthDuration-by-yMD-10', 
    'op-divide-yearMonthDuration-by-yMD-11', 
    'op-divide-yearMonthDuration-by-yMD-12', 
    'op-divide-yearMonthDuration-by-yMD-13', 
    'op-divide-yearMonthDuration-by-yMD-14', 
    'op-divide-yearMonthDuration-by-yMD-15', 
    'op-divide-yearMonthDuration-by-yMD-16', 
    'K-YearMonthDurationDivideYMD-1', 
    'cbcl-divide-yearMonthDuration-by-yearMonthDuration-001']}].

'op-divide-yearMonthDuration-by-yearMonthDuration2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:yearMonthDuration(\"P0Y0M\") div xs:yearMonthDuration(\"P0Y1M\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-divide-yearMonthDuration-by-yearMonthDuration2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-divide-yearMonthDuration-by-yearMonthDuration2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:yearMonthDuration(\"P1000Y6M\") div xs:yearMonthDuration(\"P0Y1M\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-divide-yearMonthDuration-by-yearMonthDuration2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"12006") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-divide-yearMonthDuration-by-yearMonthDuration2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:yearMonthDuration(\"P2030Y12M\") div xs:yearMonthDuration(\"P0Y1M\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-divide-yearMonthDuration-by-yearMonthDuration2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"24372") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-divide-yearMonthDuration-by-yearMonthDuration2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:yearMonthDuration(\"P0Y0M\") div xs:yearMonthDuration(\"P1000Y6M\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-divide-yearMonthDuration-by-yearMonthDuration2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-divide-yearMonthDuration-by-yearMonthDuration2args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:yearMonthDuration(\"P0Y0M\") div xs:yearMonthDuration(\"P2030Y12M\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-divide-yearMonthDuration-by-yearMonthDuration2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-divide-yearMonthDuration-by-yMD-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:yearMonthDuration(\"P3Y4M\") div xs:yearMonthDuration(\"-P1Y4M\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-divide-yearMonthDuration-by-yMD-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-2.5") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-divide-yearMonthDuration-by-yMD-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:yearMonthDuration(\"P10Y11M\") div xs:yearMonthDuration(\"P12Y07M\") and fn:false()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-divide-yearMonthDuration-by-yMD-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-divide-yearMonthDuration-by-yMD-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:yearMonthDuration(\"P20Y10M\") div xs:yearMonthDuration(\"P19Y10M\") or fn:false()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-divide-yearMonthDuration-by-yMD-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-divide-yearMonthDuration-by-yMD-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:not(xs:yearMonthDuration(\"P11Y04M\") div xs:yearMonthDuration(\"P02Y11M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-divide-yearMonthDuration-by-yMD-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-divide-yearMonthDuration-by-yMD-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:boolean(xs:yearMonthDuration(\"P05Y08M\") div xs:yearMonthDuration(\"P03Y06M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-divide-yearMonthDuration-by-yMD-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-divide-yearMonthDuration-by-yMD-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:number(xs:yearMonthDuration(\"P02Y09M\") div xs:yearMonthDuration(\"P02Y09M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-divide-yearMonthDuration-by-yMD-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-divide-yearMonthDuration-by-yMD-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string(xs:yearMonthDuration(\"P03Y08M\") div xs:yearMonthDuration(\"P03Y08M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-divide-yearMonthDuration-by-yMD-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"1\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-divide-yearMonthDuration-by-yMD-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:yearMonthDuration(\"P10Y01M\") div xs:yearMonthDuration(\"-P10Y01M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-divide-yearMonthDuration-by-yMD-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-divide-yearMonthDuration-by-yMD-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:yearMonthDuration(\"P01Y01M\") div xs:yearMonthDuration(\"P02Y02M\")) and (xs:yearMonthDuration(\"P02Y03M\") div xs:yearMonthDuration(\"P04Y04M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-divide-yearMonthDuration-by-yMD-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-divide-yearMonthDuration-by-yMD-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:yearMonthDuration(\"P05Y02M\") div xs:yearMonthDuration(\"P03Y04M\")) or (xs:yearMonthDuration(\"P05Y03M\") div xs:yearMonthDuration(\"P01Y03M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-divide-yearMonthDuration-by-yMD-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-divide-yearMonthDuration-by-yMD-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "round-half-to-even( (xs:yearMonthDuration(\"P42Y10M\") div xs:yearMonthDuration(\"P20Y10M\")) div (xs:yearMonthDuration(\"P20Y11M\") div xs:yearMonthDuration(\"P18Y11M\")), 15)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-divide-yearMonthDuration-by-yMD-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1.859410358565737") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-divide-yearMonthDuration-by-yMD-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:yearMonthDuration(\"P10Y11M\") div xs:yearMonthDuration(\"P05Y07M\")) and (fn:true())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-divide-yearMonthDuration-by-yMD-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-divide-yearMonthDuration-by-yMD-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:yearMonthDuration(\"P23Y11M\") div xs:yearMonthDuration(\"P23Y11M\")) eq xs:decimal(2.0)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-divide-yearMonthDuration-by-yMD-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-divide-yearMonthDuration-by-yMD-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:yearMonthDuration(\"P21Y12M\") div xs:yearMonthDuration(\"P08Y05M\")) ne xs:decimal(2.0)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-divide-yearMonthDuration-by-yMD-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-divide-yearMonthDuration-by-yMD-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:yearMonthDuration(\"P10Y01M\") div xs:yearMonthDuration(\"P17Y02M\")) le xs:decimal(2.0)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-divide-yearMonthDuration-by-yMD-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-divide-yearMonthDuration-by-yMD-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:yearMonthDuration(\"P13Y09M\") div xs:yearMonthDuration(\"P18Y02M\")) ge xs:decimal(2.0)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-divide-yearMonthDuration-by-yMD-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-YearMonthDurationDivideYMD-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:yearMonthDuration(\"P3Y36M\") div xs:yearMonthDuration(\"P60Y\") eq 0.1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-YearMonthDurationDivideYMD-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-divide-yearMonthDuration-by-yearMonthDuration-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:yearMonthDuration(\"P2Y\") div xs:yearMonthDuration(\"P0Y\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-divide-yearMonthDuration-by-yearMonthDuration-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAR0001") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FOAR0001 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.