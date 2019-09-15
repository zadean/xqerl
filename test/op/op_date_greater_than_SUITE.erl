-module('op_date_greater_than_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['op-date-greater-than2args-1'/1]).
-export(['op-date-greater-than2args-2'/1]).
-export(['op-date-greater-than2args-3'/1]).
-export(['op-date-greater-than2args-4'/1]).
-export(['op-date-greater-than2args-5'/1]).
-export(['op-date-greater-than2args-6'/1]).
-export(['op-date-greater-than2args-7'/1]).
-export(['op-date-greater-than2args-8'/1]).
-export(['op-date-greater-than2args-9'/1]).
-export(['op-date-greater-than2args-10'/1]).
-export(['op-date-greater-than-1'/1]).
-export(['op-date-greater-than-2'/1]).
-export(['op-date-greater-than-3'/1]).
-export(['op-date-greater-than-4'/1]).
-export(['op-date-greater-than-5'/1]).
-export(['op-date-greater-than-6'/1]).
-export(['op-date-greater-than-7'/1]).
-export(['op-date-greater-than-8'/1]).
-export(['op-date-greater-than-9'/1]).
-export(['op-date-greater-than-10'/1]).
-export(['op-date-greater-than-11'/1]).
-export(['op-date-greater-than-12'/1]).
-export(['op-date-greater-than-13'/1]).
-export(['op-date-greater-than-14'/1]).
-export(['K-DateGT-1'/1]).
-export(['K-DateGT-2'/1]).
-export(['K-DateGT-3'/1]).
-export(['K-DateGT-4'/1]).
-export(['K-DateGT-5'/1]).
-export(['K-DateGT-6'/1]).
-export(['cbcl-date-gt-001'/1]).
-export(['cbcl-date-le-001'/1]).
-export(['cbcl-date-greater-equal-001'/1]).
-export(['cbcl-date-greater-equal-002'/1]).
-export(['cbcl-date-greater-equal-003'/1]).
-export(['cbcl-date-greater-equal-004'/1]).
-export(['cbcl-date-greater-equal-005'/1]).
-export(['cbcl-date-greater-equal-006'/1]).
-export(['cbcl-date-greater-equal-007'/1]).
-export(['cbcl-date-greater-equal-008'/1]).
-export(['cbcl-date-greater-equal-009'/1]).
-export(['cbcl-date-greater-equal-010'/1]).
-export(['cbcl-date-greater-than-011'/1]).
-export(['cbcl-date-greater-than-012'/1]).
-export(['cbcl-date-greater-than-013'/1]).
-export(['cbcl-date-greater-than-014'/1]).
-export(['cbcl-date-greater-than-015'/1]).
-export(['cbcl-date-greater-than-016'/1]).
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
   {group, group_1}, 
   {group, group_2}
   ].
groups() -> [
   {group_0, [parallel], [
    'op-date-greater-than2args-1', 
    'op-date-greater-than2args-2', 
    'op-date-greater-than2args-3', 
    'op-date-greater-than2args-4', 
    'op-date-greater-than2args-5', 
    'op-date-greater-than2args-6', 
    'op-date-greater-than2args-7', 
    'op-date-greater-than2args-8', 
    'op-date-greater-than2args-9', 
    'op-date-greater-than2args-10', 
    'op-date-greater-than-1', 
    'op-date-greater-than-2', 
    'op-date-greater-than-3', 
    'op-date-greater-than-4', 
    'op-date-greater-than-5', 
    'op-date-greater-than-6', 
    'op-date-greater-than-7', 
    'op-date-greater-than-8', 
    'op-date-greater-than-9', 
    'op-date-greater-than-10', 
    'op-date-greater-than-11', 
    'op-date-greater-than-12', 
    'op-date-greater-than-13']}, 
   {group_1, [parallel], [
    'op-date-greater-than-14', 
    'K-DateGT-1', 
    'K-DateGT-2', 
    'K-DateGT-3', 
    'K-DateGT-4', 
    'K-DateGT-5', 
    'K-DateGT-6', 
    'cbcl-date-gt-001', 
    'cbcl-date-le-001', 
    'cbcl-date-greater-equal-001', 
    'cbcl-date-greater-equal-002', 
    'cbcl-date-greater-equal-003', 
    'cbcl-date-greater-equal-004', 
    'cbcl-date-greater-equal-005', 
    'cbcl-date-greater-equal-006', 
    'cbcl-date-greater-equal-007', 
    'cbcl-date-greater-equal-008', 
    'cbcl-date-greater-equal-009', 
    'cbcl-date-greater-equal-010', 
    'cbcl-date-greater-than-011', 
    'cbcl-date-greater-than-012', 
    'cbcl-date-greater-than-013', 
    'cbcl-date-greater-than-014', 
    'cbcl-date-greater-than-015']}, 
   {group_2, [parallel], [
    'cbcl-date-greater-than-016']}].

'op-date-greater-than2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:date(\"1970-01-01Z\") gt xs:date(\"1970-01-01Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-date-greater-than2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-date-greater-than2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:date(\"1983-11-17Z\") gt xs:date(\"1970-01-01Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-date-greater-than2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-date-greater-than2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:date(\"2030-12-31Z\") gt xs:date(\"1970-01-01Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-date-greater-than2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-date-greater-than2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:date(\"1970-01-01Z\") gt xs:date(\"1983-11-17Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-date-greater-than2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-date-greater-than2args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:date(\"1970-01-01Z\") gt xs:date(\"2030-12-31Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-date-greater-than2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-date-greater-than2args-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:date(\"1970-01-01Z\") le xs:date(\"1970-01-01Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-date-greater-than2args-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-date-greater-than2args-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:date(\"1983-11-17Z\") le xs:date(\"1970-01-01Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-date-greater-than2args-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-date-greater-than2args-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:date(\"2030-12-31Z\") le xs:date(\"1970-01-01Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-date-greater-than2args-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-date-greater-than2args-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:date(\"1970-01-01Z\") le xs:date(\"1983-11-17Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-date-greater-than2args-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-date-greater-than2args-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:date(\"1970-01-01Z\") le xs:date(\"2030-12-31Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-date-greater-than2args-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-date-greater-than-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:date(\"2004-12-25Z\") gt xs:date(\"2004-12-25+07:00\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-date-greater-than-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-date-greater-than-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:date(\"2004-12-25-12:00\") gt xs:date(\"2004-12-26+12:00\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-date-greater-than-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-date-greater-than-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:not((xs:date(\"2005-12-26Z\") gt xs:date(\"2005-12-25Z\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-date-greater-than-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-date-greater-than-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:not(xs:date(\"2005-04-02Z\") ge xs:date(\"2005-04-02Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-date-greater-than-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-date-greater-than-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:not(xs:date(\"2000-11-09Z\") gt xs:date(\"2000-11-10Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-date-greater-than-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-date-greater-than-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:not(xs:date(\"2005-10-23Z\") ge xs:date(\"2005-10-25Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-date-greater-than-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-date-greater-than-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:date(\"2000-01-01Z\") gt xs:date(\"2000-01-01Z\")) and (xs:date(\"2001-02-02Z\") gt xs:date(\"2001-03-02Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-date-greater-than-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-date-greater-than-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:date(\"2000-01-25Z\") ge xs:date(\"2000-10-26Z\")) and (xs:date(\"1975-10-26Z\") ge xs:date(\"1975-10-28Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-date-greater-than-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-date-greater-than-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:date(\"2000-10-26Z\") gt xs:date(\"2000-10-28Z\")) or (xs:date(\"1976-10-28Z\") gt xs:date(\"1976-10-28Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-date-greater-than-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-date-greater-than-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:date(\"1976-10-25Z\") ge xs:date(\"1976-10-28Z\")) or (xs:date(\"1980-08-11Z\") ge xs:date(\"1980-08-10Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-date-greater-than-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-date-greater-than-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:date(\"1980-05-18Z\") gt xs:date(\"1980-05-17Z\")) or (fn:true())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-date-greater-than-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-date-greater-than-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:date(\"2000-10-25Z\") ge xs:date(\"2000-10-26Z\")) or (fn:true())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-date-greater-than-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-date-greater-than-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:date(\"1980-01-01Z\") gt xs:date(\"1980-10-01Z\")) or (fn:false())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-date-greater-than-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-date-greater-than-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:date(\"1980-10-25Z\") ge xs:date(\"1980-10-26Z\")) or (fn:false())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-date-greater-than-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DateGT-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:date(\"2004-07-13\") gt xs:date(\"2004-07-12\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateGT-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DateGT-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(xs:date(\"2004-07-12\") gt xs:date(\"2004-07-12\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateGT-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DateGT-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(xs:date(\"2004-07-12\") gt xs:date(\"2004-07-13\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateGT-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DateGT-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:date(\"2004-07-12\") ge xs:date(\"2004-07-12\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateGT-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DateGT-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:date(\"2004-07-13\") ge xs:date(\"2004-07-12\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateGT-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DateGT-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(xs:date(\"2004-07-11\") ge xs:date(\"2004-07-12\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateGT-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-date-gt-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:date(\"25252734927766555-07-28\") > xs:date(\"-25252734927766555-06-07+02:00\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-date-gt-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"FODT0001") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FODT0001 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-date-le-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:date(\"-25252734927766555-06-07+02:00\") <= xs:date(\"25252734927766555-07-28\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-date-le-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"FODT0001") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FODT0001 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-date-greater-equal-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:two-digit($number as xs:integer) { let $string := string($number) return if (string-length($string) lt 2) then concat('0', $string) else $string }; declare function local:date($year as xs:integer, $month as xs:integer, $day as xs:integer) { let $m := local:two-digit($month), $d := local:two-digit($day) return xs:date(concat($year, '-', $m, '-', $d)) }; 
      	not(local:date(2008, 05, 12) lt xs:date(\"1972-12-15\"))
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-date-greater-equal-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-date-greater-equal-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:date(\"2008-01-30\") lt xs:date(\"2008-01-31+09:00\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-date-greater-equal-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-date-greater-equal-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:date(\"2008-01-31+09:00\") lt xs:date(\"2008-01-30\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-date-greater-equal-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-date-greater-equal-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:date(\"2008-01-31\") lt xs:date(\"2008-01-31+09:00\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-date-greater-equal-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-date-greater-equal-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:date(\"2008-01-31+09:00\") lt xs:date(\"2008-01-31\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-date-greater-equal-005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-date-greater-equal-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:two-digit($number as xs:integer) { let $string := string($number) return if (string-length($string) lt 2) then concat('0', $string) else $string }; 
      	declare function local:date($year as xs:integer, $month as xs:integer, $day as xs:integer) { let $m := local:two-digit($month), $d := local:two-digit($day) return xs:date(concat($year, '-', $m, '-', $d)) }; 
      	not(local:date(2008, 05, 12) ge xs:date(\"1972-12-15\"))
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-date-greater-equal-006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-date-greater-equal-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:date(\"2008-01-30\") ge xs:date(\"2008-01-31+09:00\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-date-greater-equal-007.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-date-greater-equal-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:date(\"2008-01-31+09:00\") ge xs:date(\"2008-01-30\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-date-greater-equal-008.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-date-greater-equal-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:date(\"2008-01-31\") ge xs:date(\"2008-01-31+09:00\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-date-greater-equal-009.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-date-greater-equal-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:date(\"2008-01-31+09:00\") ge xs:date(\"2008-01-31\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-date-greater-equal-010.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-date-greater-than-011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:date($date as xs:date, $null as xs:boolean) { if ($null) then () else $date }; 
      	exists(local:date(xs:date(\"1972-12-15\"), fn:true()) gt xs:date(\"1972-12-15\"))
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-date-greater-than-011.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-date-greater-than-012'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:date($date as xs:date, $null as xs:boolean) { if ($null) then () else $date }; 
      	local:date(xs:date(\"1972-12-15\"), fn:false()) gt xs:date(\"1972-12-15\")
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-date-greater-than-012.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-date-greater-than-013'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:date($date as xs:date, $null as xs:boolean) { if ($null) then () else $date }; 
      	exists(local:date(xs:date(\"1972-12-15\"), fn:true()) le xs:date(\"1972-12-15\"))
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-date-greater-than-013.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-date-greater-than-014'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:date($date as xs:date, $null as xs:boolean) { if ($null) then () else $date }; 
      	local:date(xs:date(\"1972-12-15\"), fn:false()) le xs:date(\"1972-12-15\")
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-date-greater-than-014.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-date-greater-than-015'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:date($date as xs:string, $timezone as xs:string) { xs:date( concat($date, $timezone) ) }; 
      	adjust-date-to-timezone(local:date(\"1972-12-14\", \"-12:00\")) gt adjust-date-to-timezone(xs:date(\"1972-12-15+12:00\"))
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-date-greater-than-015.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-date-greater-than-016'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:date($date as xs:string, $timezone as xs:string) { xs:date( concat($date, $timezone) ) }; 
      	adjust-date-to-timezone(local:date(\"1972-12-14\", \"-12:00\")) ge adjust-date-to-timezone(xs:date(\"1972-12-15+12:00\"))
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-date-greater-than-016.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.