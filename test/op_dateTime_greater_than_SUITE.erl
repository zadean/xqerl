-module('op_dateTime_greater_than_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['op-dateTime-greater-than2args-1'/1]).
-export(['op-dateTime-greater-than2args-2'/1]).
-export(['op-dateTime-greater-than2args-3'/1]).
-export(['op-dateTime-greater-than2args-4'/1]).
-export(['op-dateTime-greater-than2args-5'/1]).
-export(['op-dateTime-greater-than2args-6'/1]).
-export(['op-dateTime-greater-than2args-7'/1]).
-export(['op-dateTime-greater-than2args-8'/1]).
-export(['op-dateTime-greater-than2args-9'/1]).
-export(['op-dateTime-greater-than2args-10'/1]).
-export(['op-dateTime-greater-than-3'/1]).
-export(['op-dateTime-greater-than-4'/1]).
-export(['op-dateTime-greater-than-5'/1]).
-export(['op-dateTime-greater-than-6'/1]).
-export(['op-dateTime-greater-than-7'/1]).
-export(['op-dateTime-greater-than-8'/1]).
-export(['op-dateTime-greater-than-9'/1]).
-export(['op-dateTime-greater-than-10'/1]).
-export(['op-dateTime-greater-than-11'/1]).
-export(['op-dateTime-greater-than-12'/1]).
-export(['op-dateTime-greater-than-13'/1]).
-export(['op-dateTime-greater-than-14'/1]).
-export(['K-DateTimeGT-1'/1]).
-export(['K-DateTimeGT-2'/1]).
-export(['K-DateTimeGT-3'/1]).
-export(['K-DateTimeGT-4'/1]).
-export(['K-DateTimeGT-5'/1]).
-export(['K-DateTimeGT-6'/1]).
-export(['cbcl-dateTime-greater-than-001'/1]).
-export(['cbcl-dateTime-greater-than-002'/1]).
-export(['cbcl-dateTime-greater-than-003'/1]).
-export(['cbcl-dateTime-greater-than-004'/1]).
-export(['cbcl-dateTime-greater-than-005'/1]).
-export(['cbcl-dateTime-greater-than-006'/1]).
-export(['cbcl-dateTime-greater-than-007'/1]).
-export(['cbcl-dateTime-greater-than-008'/1]).
-export(['cbcl-dateTime-greater-than-009'/1]).
-export(['cbcl-dateTime-greater-than-010'/1]).
-export(['cbcl-dateTime-greater-than-011'/1]).
-export(['cbcl-dateTime-greater-than-012'/1]).
-export(['cbcl-dateTime-greater-than-013'/1]).
-export(['cbcl-dateTime-greater-than-014'/1]).
-export(['cbcl-dateTime-greater-than-015'/1]).
-export(['cbcl-dateTime-greater-than-016'/1]).
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
    'op-dateTime-greater-than2args-1', 
    'op-dateTime-greater-than2args-2', 
    'op-dateTime-greater-than2args-3', 
    'op-dateTime-greater-than2args-4', 
    'op-dateTime-greater-than2args-5', 
    'op-dateTime-greater-than2args-6', 
    'op-dateTime-greater-than2args-7', 
    'op-dateTime-greater-than2args-8', 
    'op-dateTime-greater-than2args-9', 
    'op-dateTime-greater-than2args-10', 
    'op-dateTime-greater-than-3', 
    'op-dateTime-greater-than-4', 
    'op-dateTime-greater-than-5', 
    'op-dateTime-greater-than-6', 
    'op-dateTime-greater-than-7', 
    'op-dateTime-greater-than-8', 
    'op-dateTime-greater-than-9', 
    'op-dateTime-greater-than-10', 
    'op-dateTime-greater-than-11', 
    'op-dateTime-greater-than-12', 
    'op-dateTime-greater-than-13', 
    'op-dateTime-greater-than-14', 
    'K-DateTimeGT-1']}, 
   {group_1, [parallel], [
    'K-DateTimeGT-2', 
    'K-DateTimeGT-3', 
    'K-DateTimeGT-4', 
    'K-DateTimeGT-5', 
    'K-DateTimeGT-6', 
    'cbcl-dateTime-greater-than-001', 
    'cbcl-dateTime-greater-than-002', 
    'cbcl-dateTime-greater-than-003', 
    'cbcl-dateTime-greater-than-004', 
    'cbcl-dateTime-greater-than-005', 
    'cbcl-dateTime-greater-than-006', 
    'cbcl-dateTime-greater-than-007', 
    'cbcl-dateTime-greater-than-008', 
    'cbcl-dateTime-greater-than-009', 
    'cbcl-dateTime-greater-than-010', 
    'cbcl-dateTime-greater-than-011', 
    'cbcl-dateTime-greater-than-012', 
    'cbcl-dateTime-greater-than-013', 
    'cbcl-dateTime-greater-than-014', 
    'cbcl-dateTime-greater-than-015', 
    'cbcl-dateTime-greater-than-016']}].

'op-dateTime-greater-than2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"1970-01-01T00:00:00Z\") gt xs:dateTime(\"1970-01-01T00:00:00Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-dateTime-greater-than2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-dateTime-greater-than2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"1996-04-07T01:40:52Z\") gt xs:dateTime(\"1970-01-01T00:00:00Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-dateTime-greater-than2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-dateTime-greater-than2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"2030-12-31T23:59:59Z\") gt xs:dateTime(\"1970-01-01T00:00:00Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-dateTime-greater-than2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-dateTime-greater-than2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"1970-01-01T00:00:00Z\") gt xs:dateTime(\"1996-04-07T01:40:52Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-dateTime-greater-than2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-dateTime-greater-than2args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"1970-01-01T00:00:00Z\") gt xs:dateTime(\"2030-12-31T23:59:59Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-dateTime-greater-than2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-dateTime-greater-than2args-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"1970-01-01T00:00:00Z\") le xs:dateTime(\"1970-01-01T00:00:00Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-dateTime-greater-than2args-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-dateTime-greater-than2args-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"1996-04-07T01:40:52Z\") le xs:dateTime(\"1970-01-01T00:00:00Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-dateTime-greater-than2args-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-dateTime-greater-than2args-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"2030-12-31T23:59:59Z\") le xs:dateTime(\"1970-01-01T00:00:00Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-dateTime-greater-than2args-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-dateTime-greater-than2args-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"1970-01-01T00:00:00Z\") le xs:dateTime(\"1996-04-07T01:40:52Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-dateTime-greater-than2args-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-dateTime-greater-than2args-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"1970-01-01T00:00:00Z\") le xs:dateTime(\"2030-12-31T23:59:59Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-dateTime-greater-than2args-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-dateTime-greater-than-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:not((xs:dateTime(\"2004-04-02T12:00:00Z\") gt xs:dateTime(\"2003-04-02T12:00:00Z\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-dateTime-greater-than-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-dateTime-greater-than-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:not(xs:dateTime(\"2002-04-02T12:00:00Z\") ge xs:dateTime(\"2002-04-02T12:00:00Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-dateTime-greater-than-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-dateTime-greater-than-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:not(xs:dateTime(\"2002-04-02T12:00:00Z\") gt xs:dateTime(\"2002-05-02T12:00:00Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-dateTime-greater-than-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-dateTime-greater-than-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:not(xs:dateTime(\"2002-04-02T12:00:00Z\") ge xs:dateTime(\"2008-04-02T12:00:00Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-dateTime-greater-than-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-dateTime-greater-than-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:dateTime(\"2002-04-02T12:00:00Z\") gt xs:dateTime(\"2002-04-02T12:01:00Z\")) and (xs:dateTime(\"2003-04-02T12:00:00Z\") gt xs:dateTime(\"2002-04-02T12:00:00Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-dateTime-greater-than-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-dateTime-greater-than-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:dateTime(\"2002-04-02T12:00:00Z\") ge xs:dateTime(\"2005-04-02T12:00:20Z\")) and (xs:dateTime(\"2002-04-02T12:10:00Z\") ge xs:dateTime(\"2002-04-03T12:00:00Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-dateTime-greater-than-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-dateTime-greater-than-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:dateTime(\"2002-06-02T12:00:10Z\") gt xs:dateTime(\"2000-04-04T12:00:00Z\")) or (xs:dateTime(\"2002-04-02T13:00:10Z\") gt xs:dateTime(\"2001-04-02T10:00:00Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-dateTime-greater-than-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-dateTime-greater-than-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:dateTime(\"2002-04-03T12:00:10Z\") ge xs:dateTime(\"1990-04-02T12:10:00Z\")) or (xs:dateTime(\"1975-04-03T12:10:00Z\") ge xs:dateTime(\"2000-02-02T12:00:09Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-dateTime-greater-than-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-dateTime-greater-than-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:dateTime(\"1990-04-02T12:00:10Z\") gt xs:dateTime(\"2006-06-02T12:10:00Z\")) or (fn:true())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-dateTime-greater-than-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-dateTime-greater-than-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:dateTime(\"1970-04-02T12:00:20Z\") ge xs:dateTime(\"1980-04-02T12:00:20Z\")) or (fn:true())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-dateTime-greater-than-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-dateTime-greater-than-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:dateTime(\"1981-04-02T12:00:00Z\") gt xs:dateTime(\"2003-04-02T12:10:00Z\")) or (fn:false())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-dateTime-greater-than-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-dateTime-greater-than-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:dateTime(\"1976-04-03T12:00:00Z\") ge xs:dateTime(\"2002-07-02T12:00:30Z\")) or (fn:false())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-dateTime-greater-than-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DateTimeGT-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"2004-07-13T23:01:04.12\") gt xs:dateTime(\"2004-07-12T23:01:04.12\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateTimeGT-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DateTimeGT-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(xs:dateTime(\"2004-07-12T23:01:04.12\") gt xs:dateTime(\"2004-07-12T23:01:04.12\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateTimeGT-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DateTimeGT-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(xs:dateTime(\"2004-07-12T23:01:04.12\") gt xs:dateTime(\"2004-07-13T23:01:04.12\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateTimeGT-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DateTimeGT-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"2004-07-12T23:01:04.12\") ge xs:dateTime(\"2004-07-12T23:01:04.12\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateTimeGT-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DateTimeGT-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"2004-07-13T23:01:04.12\") ge xs:dateTime(\"2004-07-12T23:01:04.12\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateTimeGT-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DateTimeGT-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(xs:dateTime(\"2004-07-11T23:01:04.12\") ge xs:dateTime(\"2004-07-12T23:01:04.12\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateTimeGT-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-dateTime-greater-than-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:two-digit($number as xs:integer) { let $string := string($number) return if (string-length($string) lt 2) then concat('0', $string) else $string }; declare function local:dateTime($year as xs:integer, $month as xs:integer, $day as xs:integer) { let $m := local:two-digit($month), $d := local:two-digit($day) return xs:dateTime(concat($year, '-', $m, '-', $d, \"T12:00:00\")) }; not(local:dateTime(2008, 05, 12) gt xs:dateTime(\"1972-12-15T12:00:00\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-dateTime-greater-than-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-dateTime-greater-than-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"2008-01-30T00:01:00\") gt xs:dateTime(\"2008-01-31T01:00:00+09:00\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-dateTime-greater-than-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-dateTime-greater-than-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"2008-01-31T00:01:00+09:00\") gt xs:dateTime(\"2008-01-30T00:01:00\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-dateTime-greater-than-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-dateTime-greater-than-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"2008-01-31T00:01:00\") gt xs:dateTime(\"2008-01-31T00:01:00+09:00\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-dateTime-greater-than-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-dateTime-greater-than-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"2008-01-31T00:01:00+09:00\") gt xs:dateTime(\"2008-01-31T00:01:00\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-dateTime-greater-than-005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-dateTime-greater-than-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:two-digit($number as xs:integer) { let $string := string($number) return if (string-length($string) lt 2) then concat('0', $string) else $string }; declare function local:dateTime($year as xs:integer, $month as xs:integer, $day as xs:integer) { let $m := local:two-digit($month), $d := local:two-digit($day) return xs:dateTime(concat($year, '-', $m, '-', $d, \"T12:00:00\")) }; not(local:dateTime(2008, 05, 12) ge xs:dateTime(\"1972-12-15T12:00:00\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-dateTime-greater-than-006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-dateTime-greater-than-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"2008-01-30T00:01:00\") ge xs:dateTime(\"2008-01-31T00:01:00+09:00\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-dateTime-greater-than-007.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-dateTime-greater-than-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"2008-01-31T00:01:00+09:00\") ge xs:dateTime(\"2008-01-30T00:01:00\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-dateTime-greater-than-008.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-dateTime-greater-than-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"2008-01-31T00:01:00\") ge xs:dateTime(\"2008-01-31T00:01:00+09:00\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-dateTime-greater-than-009.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-dateTime-greater-than-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"2008-01-31T00:01:00+09:00\") ge xs:dateTime(\"2008-01-31T00:01:00\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-dateTime-greater-than-010.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-dateTime-greater-than-011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:dateTime($dateTime as xs:dateTime, $null as xs:boolean) { if ($null) then () else $dateTime }; exists(local:dateTime(xs:dateTime(\"1972-12-15T12:00:00\"), fn:true()) gt xs:dateTime(\"1972-12-15T12:00:00\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-dateTime-greater-than-011.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-dateTime-greater-than-012'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:dateTime($dateTime as xs:dateTime, $null as xs:boolean) { if ($null) then () else $dateTime }; local:dateTime(xs:dateTime(\"1972-12-15T12:00:00\"), fn:false()) gt xs:dateTime(\"1972-12-15T12:00:00\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-dateTime-greater-than-012.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-dateTime-greater-than-013'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:dateTime($dateTime as xs:dateTime, $null as xs:boolean) { if ($null) then () else $dateTime }; exists(local:dateTime(xs:dateTime(\"1972-12-15T12:00:00\"), fn:true()) le xs:dateTime(\"1972-12-15T12:00:00\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-dateTime-greater-than-013.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-dateTime-greater-than-014'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:dateTime($dateTime as xs:dateTime, $null as xs:boolean) { if ($null) then () else $dateTime }; local:dateTime(xs:dateTime(\"1972-12-15T12:00:00\"), fn:false()) le xs:dateTime(\"1972-12-15T12:00:00\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-dateTime-greater-than-014.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-dateTime-greater-than-015'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:dateTime($dateTime as xs:string, $timezone as xs:string) { xs:dateTime( concat($dateTime, $timezone) ) }; adjust-dateTime-to-timezone(local:dateTime(\"1972-12-14T00:00:00\", \"-12:00\")) gt adjust-dateTime-to-timezone(xs:dateTime(\"1972-12-15T00:00:00+12:00\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-dateTime-greater-than-015.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-dateTime-greater-than-016'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:dateTime($dateTime as xs:string, $timezone as xs:string) { xs:dateTime( concat($dateTime, $timezone) ) }; adjust-dateTime-to-timezone(local:dateTime(\"1972-12-14T00:00:00\", \"-12:00\")) ge adjust-dateTime-to-timezone(xs:dateTime(\"1972-12-15T00:00:00+12:00\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-dateTime-greater-than-016.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.