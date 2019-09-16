-module('op_gMonth_equal_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['op-gMonth-equal2args-1'/1]).
-export(['op-gMonth-equal2args-2'/1]).
-export(['op-gMonth-equal2args-3'/1]).
-export(['op-gMonth-equal2args-4'/1]).
-export(['op-gMonth-equal2args-5'/1]).
-export(['op-gMonth-equal2args-6'/1]).
-export(['op-gMonth-equal2args-7'/1]).
-export(['op-gMonth-equal2args-8'/1]).
-export(['op-gMonth-equal2args-9'/1]).
-export(['op-gMonth-equal2args-10'/1]).
-export(['op-gMonth-equal-2'/1]).
-export(['op-gMonth-equal-3'/1]).
-export(['op-gMonth-equal-4'/1]).
-export(['op-gMonth-equal-5'/1]).
-export(['op-gMonth-equal-6'/1]).
-export(['op-gMonth-equal-7'/1]).
-export(['op-gMonth-equal-8'/1]).
-export(['op-gMonth-equal-9'/1]).
-export(['op-gMonth-equal-10'/1]).
-export(['op-gMonth-equal-11'/1]).
-export(['op-gMonth-equal-12'/1]).
-export(['op-gMonth-equal-13'/1]).
-export(['op-gMonth-equal-14'/1]).
-export(['K-gMonthEQ-1'/1]).
-export(['K-gMonthEQ-2'/1]).
-export(['K-gMonthEQ-3'/1]).
-export(['K-gMonthEQ-4'/1]).
-export(['K-gMonthEQ-5'/1]).
-export(['K-gMonthEQ-6'/1]).
-export(['K-gMonthEQ-7'/1]).
-export(['K-gMonthEQ-8'/1]).
-export(['cbcl-gMonth-equal-001'/1]).
-export(['cbcl-gMonth-equal-002'/1]).
-export(['cbcl-gMonth-equal-003'/1]).
-export(['cbcl-gMonth-equal-004'/1]).
-export(['cbcl-gMonth-equal-005'/1]).
-export(['cbcl-gMonth-equal-006'/1]).
-export(['cbcl-gMonth-equal-007'/1]).
-export(['cbcl-gMonth-equal-008'/1]).
-export(['cbcl-gMonth-equal-009'/1]).
-export(['cbcl-gMonth-equal-010'/1]).
-export(['cbcl-gMonth-equal-011'/1]).
-export(['cbcl-gMonth-equal-012'/1]).
-export(['cbcl-gMonth-equal-013'/1]).
-export(['cbcl-gMonth-equal-014'/1]).
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
   {group, group_1}
   ].
groups() -> [
   {group_0, [parallel], [
    'op-gMonth-equal2args-1', 
    'op-gMonth-equal2args-2', 
    'op-gMonth-equal2args-3', 
    'op-gMonth-equal2args-4', 
    'op-gMonth-equal2args-5', 
    'op-gMonth-equal2args-6', 
    'op-gMonth-equal2args-7', 
    'op-gMonth-equal2args-8', 
    'op-gMonth-equal2args-9', 
    'op-gMonth-equal2args-10', 
    'op-gMonth-equal-2', 
    'op-gMonth-equal-3', 
    'op-gMonth-equal-4', 
    'op-gMonth-equal-5', 
    'op-gMonth-equal-6', 
    'op-gMonth-equal-7', 
    'op-gMonth-equal-8', 
    'op-gMonth-equal-9', 
    'op-gMonth-equal-10', 
    'op-gMonth-equal-11', 
    'op-gMonth-equal-12', 
    'op-gMonth-equal-13', 
    'op-gMonth-equal-14']}, 
   {group_1, [parallel], [
    'K-gMonthEQ-1', 
    'K-gMonthEQ-2', 
    'K-gMonthEQ-3', 
    'K-gMonthEQ-4', 
    'K-gMonthEQ-5', 
    'K-gMonthEQ-6', 
    'K-gMonthEQ-7', 
    'K-gMonthEQ-8', 
    'cbcl-gMonth-equal-001', 
    'cbcl-gMonth-equal-002', 
    'cbcl-gMonth-equal-003', 
    'cbcl-gMonth-equal-004', 
    'cbcl-gMonth-equal-005', 
    'cbcl-gMonth-equal-006', 
    'cbcl-gMonth-equal-007', 
    'cbcl-gMonth-equal-008', 
    'cbcl-gMonth-equal-009', 
    'cbcl-gMonth-equal-010', 
    'cbcl-gMonth-equal-011', 
    'cbcl-gMonth-equal-012', 
    'cbcl-gMonth-equal-013', 
    'cbcl-gMonth-equal-014']}].

'op-gMonth-equal2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:gMonth(\"--01Z\") eq xs:gMonth(\"--01Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-gMonth-equal2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-gMonth-equal2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:gMonth(\"--07Z\") eq xs:gMonth(\"--01Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-gMonth-equal2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-gMonth-equal2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:gMonth(\"--12Z\") eq xs:gMonth(\"--01Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-gMonth-equal2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-gMonth-equal2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:gMonth(\"--01Z\") eq xs:gMonth(\"--07Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-gMonth-equal2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-gMonth-equal2args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:gMonth(\"--01Z\") eq xs:gMonth(\"--12Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-gMonth-equal2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-gMonth-equal2args-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:gMonth(\"--01Z\") ne xs:gMonth(\"--01Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-gMonth-equal2args-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-gMonth-equal2args-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:gMonth(\"--07Z\") ne xs:gMonth(\"--01Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-gMonth-equal2args-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-gMonth-equal2args-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:gMonth(\"--12Z\") ne xs:gMonth(\"--01Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-gMonth-equal2args-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-gMonth-equal2args-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:gMonth(\"--01Z\") ne xs:gMonth(\"--07Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-gMonth-equal2args-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-gMonth-equal2args-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:gMonth(\"--01Z\") ne xs:gMonth(\"--12Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-gMonth-equal2args-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-gMonth-equal-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:gMonth(\"--12-05:00\") eq xs:gMonth(\"--12Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-gMonth-equal-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-gMonth-equal-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:not((xs:gMonth(\"--12Z\") eq xs:gMonth(\"--12Z\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-gMonth-equal-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-gMonth-equal-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:not(xs:gMonth(\"--05Z\") ne xs:gMonth(\"--06Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-gMonth-equal-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-gMonth-equal-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:not(xs:gMonth(\"--11Z\") eq xs:gMonth(\"--10Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-gMonth-equal-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-gMonth-equal-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:not(xs:gMonth(\"--05Z\") ne xs:gMonth(\"--05Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-gMonth-equal-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-gMonth-equal-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:gMonth(\"--04Z\") eq xs:gMonth(\"--02Z\")) and (xs:gMonth(\"--01Z\") eq xs:gMonth(\"--12Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-gMonth-equal-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-gMonth-equal-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:gMonth(\"--12Z\") ne xs:gMonth(\"--03Z\")) and (xs:gMonth(\"--05Z\") ne xs:gMonth(\"--08Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-gMonth-equal-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-gMonth-equal-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:gMonth(\"--02Z\") eq xs:gMonth(\"--02Z\")) or (xs:gMonth(\"--06Z\") eq xs:gMonth(\"--06Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-gMonth-equal-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-gMonth-equal-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:gMonth(\"--06Z\") ne xs:gMonth(\"--06Z\")) or (xs:gMonth(\"--08Z\") ne xs:gMonth(\"--09Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-gMonth-equal-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-gMonth-equal-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:gMonth(\"--03Z\") eq xs:gMonth(\"--01Z\")) or (fn:true())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-gMonth-equal-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-gMonth-equal-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:gMonth(\"--08Z\") ne xs:gMonth(\"--07Z\")) or (fn:true())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-gMonth-equal-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-gMonth-equal-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:gMonth(\"--05Z\") eq xs:gMonth(\"--05Z\")) or (fn:false())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-gMonth-equal-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-gMonth-equal-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:gMonth(\"--09Z\") ne xs:gMonth(\"--09Z\")) or (fn:false())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-gMonth-equal-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-gMonthEQ-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:gMonth(\"--11 \") eq xs:gMonth(\"--11\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-gMonthEQ-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-gMonthEQ-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(xs:gMonth(\"--11\") eq xs:gMonth(\"--01\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-gMonthEQ-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-gMonthEQ-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:gMonth(\"--12\") ne xs:gMonth(\"--10\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-gMonthEQ-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-gMonthEQ-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(xs:gMonth(\"--03\") ne xs:gMonth(\"--03\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-gMonthEQ-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-gMonthEQ-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:gMonth(\"--01-00:00\") eq xs:gMonth(\"--01Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-gMonthEQ-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-gMonthEQ-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:gMonth(\"--01+00:00\") eq xs:gMonth(\"--01Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-gMonthEQ-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-gMonthEQ-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:gMonth(\"--01Z\") eq xs:gMonth(\"--01Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-gMonthEQ-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-gMonthEQ-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:gMonth(\"--01-00:00\") eq xs:gMonth(\"--01+00:00\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-gMonthEQ-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-gMonth-equal-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:gMonth($month as xs:integer) { if ($month lt 10) then xs:gMonth(concat(\"--0\", $month)) else xs:gMonth(concat(\"--\", $month)) }; not(local:gMonth(1) eq xs:gMonth(\"--06\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-gMonth-equal-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-gMonth-equal-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if (implicit-timezone() eq xs:dayTimeDuration('PT9M'))
            then xs:gMonth(\"--06\") eq xs:gMonth(\"--06+09:01\")
            else xs:gMonth(\"--06\") eq xs:gMonth(\"--06+09:00\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-gMonth-equal-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-gMonth-equal-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if (implicit-timezone() eq xs:dayTimeDuration('PT9M'))
            then xs:gMonth(\"--06+09:01\") eq xs:gMonth(\"--06\")
            else xs:gMonth(\"--06+09:00\") eq xs:gMonth(\"--06\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-gMonth-equal-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-gMonth-equal-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if (implicit-timezone() eq xs:dayTimeDuration('-PT9M'))
            then xs:gMonth(\"--06\") eq xs:gMonth(\"--06-09:01\")
            else xs:gMonth(\"--06\") eq xs:gMonth(\"--06-09:00\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-gMonth-equal-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-gMonth-equal-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if (implicit-timezone() eq xs:dayTimeDuration('-PT9M'))
            then xs:gMonth(\"--06-09:01\") eq xs:gMonth(\"--06\")
            else xs:gMonth(\"--06-09:00\") eq xs:gMonth(\"--06\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-gMonth-equal-005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-gMonth-equal-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:gMonth($month as xs:integer) { if ($month lt 10) then xs:gMonth(concat(\"--0\", $month)) else xs:gMonth(concat(\"--\", $month)) }; not(local:gMonth(1) ne xs:gMonth(\"--06\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-gMonth-equal-006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-gMonth-equal-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if (implicit-timezone() eq xs:dayTimeDuration('PT9M'))
            then xs:gMonth(\"--06\") ne xs:gMonth(\"--06+09:01\")
            else xs:gMonth(\"--06\") ne xs:gMonth(\"--06+09:00\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-gMonth-equal-007.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-gMonth-equal-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if (implicit-timezone() eq xs:dayTimeDuration('PT9M'))
            then xs:gMonth(\"--06+09:01\") ne xs:gMonth(\"--06\")
            else xs:gMonth(\"--06+09:00\") ne xs:gMonth(\"--06\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-gMonth-equal-008.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-gMonth-equal-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if (implicit-timezone() eq xs:dayTimeDuration('-PT9M'))
            then xs:gMonth(\"--06\") ne xs:gMonth(\"--06-09:01\")
            else xs:gMonth(\"--06\") ne xs:gMonth(\"--06-09:00\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-gMonth-equal-009.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-gMonth-equal-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if (implicit-timezone() eq xs:dayTimeDuration('-PT9M'))
            then xs:gMonth(\"--06-09:01\") ne xs:gMonth(\"--06\")
            else xs:gMonth(\"--06-09:00\") ne xs:gMonth(\"--06\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-gMonth-equal-010.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-gMonth-equal-011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:gMonth($gMonth as xs:gMonth, $null as xs:boolean) { if ($null) then () else $gMonth }; exists(local:gMonth(xs:gMonth(\"--12\"), fn:true()) eq xs:gMonth(\"--12\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-gMonth-equal-011.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-gMonth-equal-012'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:gMonth($gMonth as xs:gMonth, $null as xs:boolean) { if ($null) then () else $gMonth }; local:gMonth(xs:gMonth(\"--12\"), fn:false()) eq xs:gMonth(\"--12\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-gMonth-equal-012.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-gMonth-equal-013'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:gMonth($gMonth as xs:gMonth, $null as xs:boolean) { if ($null) then () else $gMonth }; exists(local:gMonth(xs:gMonth(\"--12\"), fn:true()) ne xs:gMonth(\"--12\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-gMonth-equal-013.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-gMonth-equal-014'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:gMonth($gMonth as xs:gMonth, $null as xs:boolean) { if ($null) then () else $gMonth }; local:gMonth(xs:gMonth(\"--12\"), fn:false()) ne xs:gMonth(\"--12\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-gMonth-equal-014.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.