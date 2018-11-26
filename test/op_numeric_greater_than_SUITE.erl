-module('op_numeric_greater_than_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['op-numeric-greater-thanint2args-1'/1]).
-export(['op-numeric-greater-thanint2args-2'/1]).
-export(['op-numeric-greater-thanint2args-3'/1]).
-export(['op-numeric-greater-thanint2args-4'/1]).
-export(['op-numeric-greater-thanint2args-5'/1]).
-export(['op-numeric-greater-thanintg2args-1'/1]).
-export(['op-numeric-greater-thanintg2args-2'/1]).
-export(['op-numeric-greater-thanintg2args-3'/1]).
-export(['op-numeric-greater-thanintg2args-4'/1]).
-export(['op-numeric-greater-thanintg2args-5'/1]).
-export(['op-numeric-greater-thandec2args-1'/1]).
-export(['op-numeric-greater-thandec2args-2'/1]).
-export(['op-numeric-greater-thandec2args-3'/1]).
-export(['op-numeric-greater-thandec2args-4'/1]).
-export(['op-numeric-greater-thandec2args-5'/1]).
-export(['op-numeric-greater-thandbl2args-1'/1]).
-export(['op-numeric-greater-thandbl2args-2'/1]).
-export(['op-numeric-greater-thandbl2args-3'/1]).
-export(['op-numeric-greater-thandbl2args-4'/1]).
-export(['op-numeric-greater-thandbl2args-5'/1]).
-export(['op-numeric-greater-thanflt2args-1'/1]).
-export(['op-numeric-greater-thanflt2args-2'/1]).
-export(['op-numeric-greater-thanflt2args-3'/1]).
-export(['op-numeric-greater-thanflt2args-4'/1]).
-export(['op-numeric-greater-thanflt2args-5'/1]).
-export(['op-numeric-greater-thanlng2args-1'/1]).
-export(['op-numeric-greater-thanlng2args-2'/1]).
-export(['op-numeric-greater-thanlng2args-3'/1]).
-export(['op-numeric-greater-thanlng2args-4'/1]).
-export(['op-numeric-greater-thanlng2args-5'/1]).
-export(['op-numeric-greater-thanusht2args-1'/1]).
-export(['op-numeric-greater-thanusht2args-2'/1]).
-export(['op-numeric-greater-thanusht2args-3'/1]).
-export(['op-numeric-greater-thanusht2args-4'/1]).
-export(['op-numeric-greater-thanusht2args-5'/1]).
-export(['op-numeric-greater-thannint2args-1'/1]).
-export(['op-numeric-greater-thannint2args-2'/1]).
-export(['op-numeric-greater-thannint2args-3'/1]).
-export(['op-numeric-greater-thannint2args-4'/1]).
-export(['op-numeric-greater-thannint2args-5'/1]).
-export(['op-numeric-greater-thanpint2args-1'/1]).
-export(['op-numeric-greater-thanpint2args-2'/1]).
-export(['op-numeric-greater-thanpint2args-3'/1]).
-export(['op-numeric-greater-thanpint2args-4'/1]).
-export(['op-numeric-greater-thanpint2args-5'/1]).
-export(['op-numeric-greater-thanulng2args-1'/1]).
-export(['op-numeric-greater-thanulng2args-2'/1]).
-export(['op-numeric-greater-thanulng2args-3'/1]).
-export(['op-numeric-greater-thanulng2args-4'/1]).
-export(['op-numeric-greater-thanulng2args-5'/1]).
-export(['op-numeric-greater-thannpi2args-1'/1]).
-export(['op-numeric-greater-thannpi2args-2'/1]).
-export(['op-numeric-greater-thannpi2args-3'/1]).
-export(['op-numeric-greater-thannpi2args-4'/1]).
-export(['op-numeric-greater-thannpi2args-5'/1]).
-export(['op-numeric-greater-thannni2args-1'/1]).
-export(['op-numeric-greater-thannni2args-2'/1]).
-export(['op-numeric-greater-thannni2args-3'/1]).
-export(['op-numeric-greater-thannni2args-4'/1]).
-export(['op-numeric-greater-thannni2args-5'/1]).
-export(['op-numeric-greater-thansht2args-1'/1]).
-export(['op-numeric-greater-thansht2args-2'/1]).
-export(['op-numeric-greater-thansht2args-3'/1]).
-export(['op-numeric-greater-thansht2args-4'/1]).
-export(['op-numeric-greater-thansht2args-5'/1]).
-export(['K-NumericGT-1'/1]).
-export(['K-NumericGT-2'/1]).
-export(['K-NumericGT-3'/1]).
-export(['K-NumericGT-4'/1]).
-export(['K-NumericGT-5'/1]).
-export(['K-NumericGT-6'/1]).
-export(['K-NumericGT-7'/1]).
-export(['K-NumericGT-8'/1]).
-export(['K-NumericGT-9'/1]).
-export(['K-NumericGT-10'/1]).
-export(['K-NumericGT-11'/1]).
-export(['K-NumericGT-12'/1]).
-export(['K-NumericGT-13'/1]).
-export(['K-NumericGT-14'/1]).
-export(['K-NumericGT-15'/1]).
-export(['K-NumericGT-16'/1]).
-export(['K-NumericGT-17'/1]).
-export(['K-NumericGT-18'/1]).
-export(['K-NumericGT-19'/1]).
-export(['K-NumericGT-20'/1]).
-export(['K-NumericGT-21'/1]).
-export(['K-NumericGT-22'/1]).
-export(['K-NumericGT-23'/1]).
-export(['K2-NumericGT-1'/1]).
-export(['K2-NumericGT-2'/1]).
-export(['K2-NumericGT-3'/1]).
-export(['K2-NumericGT-4'/1]).
-export(['cbcl-numeric-greater-than-001'/1]).
-export(['cbcl-numeric-greater-than-002'/1]).
-export(['cbcl-numeric-greater-than-003'/1]).
-export(['cbcl-numeric-greater-than-004'/1]).
-export(['cbcl-numeric-greater-than-005'/1]).
-export(['cbcl-numeric-greater-than-006'/1]).
-export(['cbcl-numeric-greater-than-007'/1]).
-export(['cbcl-numeric-greater-than-008'/1]).
-export(['cbcl-numeric-greater-than-009'/1]).
-export(['cbcl-numeric-greater-than-010'/1]).
-export(['cbcl-numeric-greater-than-011'/1]).
-export(['cbcl-numeric-greater-than-012'/1]).
-export(['cbcl-numeric-greater-than-013'/1]).
-export(['cbcl-numeric-greater-than-014'/1]).
-export(['cbcl-numeric-greater-than-015'/1]).
-export(['cbcl-numeric-greater-than-016'/1]).
-export(['cbcl-numeric-greater-than-017'/1]).
-export(['cbcl-numeric-greater-than-018'/1]).
-export(['cbcl-numeric-greater-than-019'/1]).
-export(['cbcl-numeric-greater-than-020'/1]).
-export(['cbcl-numeric-greater-than-021'/1]).
-export(['cbcl-numeric-greater-than-022'/1]).
-export(['cbcl-numeric-greater-than-023'/1]).
-export(['cbcl-numeric-greater-than-024'/1]).
-export(['numeric-greater-than-101'/1]).
-export(['numeric-greater-than-102'/1]).
suite() -> [{timetrap,{seconds,5}}].
end_per_suite(_Config) -> 
   ct:timetrap({seconds,60}), 
   xqerl_module:unload(all).
init_per_suite(Config) -> 
   xqerl_db:install([node()]),
   xqerl_module:one_time_init(), 
   {ok,_} = application:ensure_all_started(xqerl),
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   __BaseDir = filename:join(TD, "op"),
   [{base_dir, __BaseDir}|Config].
all() -> [
'op-numeric-greater-thanint2args-1', 
'op-numeric-greater-thanint2args-2', 
'op-numeric-greater-thanint2args-3', 
'op-numeric-greater-thanint2args-4', 
'op-numeric-greater-thanint2args-5', 
'op-numeric-greater-thanintg2args-1', 
'op-numeric-greater-thanintg2args-2', 
'op-numeric-greater-thanintg2args-3', 
'op-numeric-greater-thanintg2args-4', 
'op-numeric-greater-thanintg2args-5', 
'op-numeric-greater-thandec2args-1', 
'op-numeric-greater-thandec2args-2', 
'op-numeric-greater-thandec2args-3', 
'op-numeric-greater-thandec2args-4', 
'op-numeric-greater-thandec2args-5', 
'op-numeric-greater-thandbl2args-1', 
'op-numeric-greater-thandbl2args-2', 
'op-numeric-greater-thandbl2args-3', 
'op-numeric-greater-thandbl2args-4', 
'op-numeric-greater-thandbl2args-5', 
'op-numeric-greater-thanflt2args-1', 
'op-numeric-greater-thanflt2args-2', 
'op-numeric-greater-thanflt2args-3', 
'op-numeric-greater-thanflt2args-4', 
'op-numeric-greater-thanflt2args-5', 
'op-numeric-greater-thanlng2args-1', 
'op-numeric-greater-thanlng2args-2', 
'op-numeric-greater-thanlng2args-3', 
'op-numeric-greater-thanlng2args-4', 
'op-numeric-greater-thanlng2args-5', 
'op-numeric-greater-thanusht2args-1', 
'op-numeric-greater-thanusht2args-2', 
'op-numeric-greater-thanusht2args-3', 
'op-numeric-greater-thanusht2args-4', 
'op-numeric-greater-thanusht2args-5', 
'op-numeric-greater-thannint2args-1', 
'op-numeric-greater-thannint2args-2', 
'op-numeric-greater-thannint2args-3', 
'op-numeric-greater-thannint2args-4', 
'op-numeric-greater-thannint2args-5', 
'op-numeric-greater-thanpint2args-1', 
'op-numeric-greater-thanpint2args-2', 
'op-numeric-greater-thanpint2args-3', 
'op-numeric-greater-thanpint2args-4', 
'op-numeric-greater-thanpint2args-5', 
'op-numeric-greater-thanulng2args-1', 
'op-numeric-greater-thanulng2args-2', 
'op-numeric-greater-thanulng2args-3', 
'op-numeric-greater-thanulng2args-4', 
'op-numeric-greater-thanulng2args-5', 
'op-numeric-greater-thannpi2args-1', 
'op-numeric-greater-thannpi2args-2', 
'op-numeric-greater-thannpi2args-3', 
'op-numeric-greater-thannpi2args-4', 
'op-numeric-greater-thannpi2args-5', 
'op-numeric-greater-thannni2args-1', 
'op-numeric-greater-thannni2args-2', 
'op-numeric-greater-thannni2args-3', 
'op-numeric-greater-thannni2args-4', 
'op-numeric-greater-thannni2args-5', 
'op-numeric-greater-thansht2args-1', 
'op-numeric-greater-thansht2args-2', 
'op-numeric-greater-thansht2args-3', 
'op-numeric-greater-thansht2args-4', 
'op-numeric-greater-thansht2args-5', 
'K-NumericGT-1', 
'K-NumericGT-2', 
'K-NumericGT-3', 
'K-NumericGT-4', 
'K-NumericGT-5', 
'K-NumericGT-6', 
'K-NumericGT-7', 
'K-NumericGT-8', 
'K-NumericGT-9', 
'K-NumericGT-10', 
'K-NumericGT-11', 
'K-NumericGT-12', 
'K-NumericGT-13', 
'K-NumericGT-14', 
'K-NumericGT-15', 
'K-NumericGT-16', 
'K-NumericGT-17', 
'K-NumericGT-18', 
'K-NumericGT-19', 
'K-NumericGT-20', 
'K-NumericGT-21', 
'K-NumericGT-22', 
'K-NumericGT-23', 
'K2-NumericGT-1', 
'K2-NumericGT-2', 
'K2-NumericGT-3', 
'K2-NumericGT-4', 
'cbcl-numeric-greater-than-001', 
'cbcl-numeric-greater-than-002', 
'cbcl-numeric-greater-than-003', 
'cbcl-numeric-greater-than-004', 
'cbcl-numeric-greater-than-005', 
'cbcl-numeric-greater-than-006', 
'cbcl-numeric-greater-than-007', 
'cbcl-numeric-greater-than-008', 
'cbcl-numeric-greater-than-009', 
'cbcl-numeric-greater-than-010', 
'cbcl-numeric-greater-than-011', 
'cbcl-numeric-greater-than-012', 
'cbcl-numeric-greater-than-013', 
'cbcl-numeric-greater-than-014', 
'cbcl-numeric-greater-than-015', 
'cbcl-numeric-greater-than-016', 
'cbcl-numeric-greater-than-017', 
'cbcl-numeric-greater-than-018', 
'cbcl-numeric-greater-than-019', 
'cbcl-numeric-greater-than-020', 
'cbcl-numeric-greater-than-021', 
'cbcl-numeric-greater-than-022', 
'cbcl-numeric-greater-than-023', 
'cbcl-numeric-greater-than-024', 
'numeric-greater-than-101', 
'numeric-greater-than-102'
].

'op-numeric-greater-thanint2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:int(\"-2147483648\") gt xs:int(\"-2147483648\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thanint2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thanint2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:int(\"-1873914410\") gt xs:int(\"-2147483648\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thanint2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thanint2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:int(\"2147483647\") gt xs:int(\"-2147483648\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thanint2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thanint2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:int(\"-2147483648\") gt xs:int(\"-1873914410\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thanint2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thanint2args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:int(\"-2147483648\") gt xs:int(\"2147483647\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thanint2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thanintg2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:integer(\"-999999999999999999\") gt xs:integer(\"-999999999999999999\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thanintg2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thanintg2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:integer(\"830993497117024304\") gt xs:integer(\"-999999999999999999\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thanintg2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thanintg2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:integer(\"999999999999999999\") gt xs:integer(\"-999999999999999999\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thanintg2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thanintg2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:integer(\"-999999999999999999\") gt xs:integer(\"830993497117024304\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thanintg2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thanintg2args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:integer(\"-999999999999999999\") gt xs:integer(\"999999999999999999\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thanintg2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thandec2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:decimal(\"-999999999999999999\") gt xs:decimal(\"-999999999999999999\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thandec2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thandec2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:decimal(\"617375191608514839\") gt xs:decimal(\"-999999999999999999\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thandec2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thandec2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:decimal(\"999999999999999999\") gt xs:decimal(\"-999999999999999999\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thandec2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thandec2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:decimal(\"-999999999999999999\") gt xs:decimal(\"617375191608514839\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thandec2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thandec2args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:decimal(\"-999999999999999999\") gt xs:decimal(\"999999999999999999\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thandec2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thandbl2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:double(\"-1.7976931348623157E308\") gt xs:double(\"-1.7976931348623157E308\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thandbl2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thandbl2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:double(\"0\") gt xs:double(\"-1.7976931348623157E308\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thandbl2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thandbl2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:double(\"1.7976931348623157E308\") gt xs:double(\"-1.7976931348623157E308\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thandbl2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thandbl2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:double(\"-1.7976931348623157E308\") gt xs:double(\"0\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thandbl2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thandbl2args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:double(\"-1.7976931348623157E308\") gt xs:double(\"1.7976931348623157E308\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thandbl2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thanflt2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:float(\"-3.4028235E38\") gt xs:float(\"-3.4028235E38\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thanflt2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thanflt2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:float(\"0\") gt xs:float(\"-3.4028235E38\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thanflt2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thanflt2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:float(\"3.4028235E38\") gt xs:float(\"-3.4028235E38\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thanflt2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thanflt2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:float(\"-3.4028235E38\") gt xs:float(\"0\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thanflt2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thanflt2args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:float(\"-3.4028235E38\") gt xs:float(\"3.4028235E38\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thanflt2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thanlng2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:long(\"-92233720368547758\") gt xs:long(\"-92233720368547758\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thanlng2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thanlng2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:long(\"-47175562203048468\") gt xs:long(\"-92233720368547758\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thanlng2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thanlng2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:long(\"92233720368547758\") gt xs:long(\"-92233720368547758\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thanlng2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thanlng2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:long(\"-92233720368547758\") gt xs:long(\"-47175562203048468\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thanlng2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thanlng2args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:long(\"-92233720368547758\") gt xs:long(\"92233720368547758\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thanlng2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thanusht2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:unsignedShort(\"0\") gt xs:unsignedShort(\"0\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thanusht2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thanusht2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:unsignedShort(\"44633\") gt xs:unsignedShort(\"0\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thanusht2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thanusht2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:unsignedShort(\"65535\") gt xs:unsignedShort(\"0\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thanusht2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thanusht2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:unsignedShort(\"0\") gt xs:unsignedShort(\"44633\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thanusht2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thanusht2args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:unsignedShort(\"0\") gt xs:unsignedShort(\"65535\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thanusht2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thannint2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:negativeInteger(\"-999999999999999999\") gt xs:negativeInteger(\"-999999999999999999\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thannint2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thannint2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:negativeInteger(\"-297014075999096793\") gt xs:negativeInteger(\"-999999999999999999\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thannint2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thannint2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:negativeInteger(\"-1\") gt xs:negativeInteger(\"-999999999999999999\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thannint2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thannint2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:negativeInteger(\"-999999999999999999\") gt xs:negativeInteger(\"-297014075999096793\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thannint2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thannint2args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:negativeInteger(\"-999999999999999999\") gt xs:negativeInteger(\"-1\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thannint2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thanpint2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:positiveInteger(\"1\") gt xs:positiveInteger(\"1\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thanpint2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thanpint2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:positiveInteger(\"52704602390610033\") gt xs:positiveInteger(\"1\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thanpint2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thanpint2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:positiveInteger(\"999999999999999999\") gt xs:positiveInteger(\"1\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thanpint2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thanpint2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:positiveInteger(\"1\") gt xs:positiveInteger(\"52704602390610033\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thanpint2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thanpint2args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:positiveInteger(\"1\") gt xs:positiveInteger(\"999999999999999999\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thanpint2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thanulng2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:unsignedLong(\"0\") gt xs:unsignedLong(\"0\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thanulng2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thanulng2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:unsignedLong(\"130747108607674654\") gt xs:unsignedLong(\"0\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thanulng2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thanulng2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:unsignedLong(\"184467440737095516\") gt xs:unsignedLong(\"0\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thanulng2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thanulng2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:unsignedLong(\"0\") gt xs:unsignedLong(\"130747108607674654\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thanulng2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thanulng2args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:unsignedLong(\"0\") gt xs:unsignedLong(\"184467440737095516\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thanulng2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thannpi2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:nonPositiveInteger(\"-999999999999999999\") gt xs:nonPositiveInteger(\"-999999999999999999\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thannpi2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thannpi2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:nonPositiveInteger(\"-475688437271870490\") gt xs:nonPositiveInteger(\"-999999999999999999\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thannpi2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thannpi2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:nonPositiveInteger(\"0\") gt xs:nonPositiveInteger(\"-999999999999999999\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thannpi2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thannpi2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:nonPositiveInteger(\"-999999999999999999\") gt xs:nonPositiveInteger(\"-475688437271870490\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thannpi2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thannpi2args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:nonPositiveInteger(\"-999999999999999999\") gt xs:nonPositiveInteger(\"0\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thannpi2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thannni2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:nonNegativeInteger(\"0\") gt xs:nonNegativeInteger(\"0\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thannni2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thannni2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:nonNegativeInteger(\"303884545991464527\") gt xs:nonNegativeInteger(\"0\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thannni2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thannni2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:nonNegativeInteger(\"999999999999999999\") gt xs:nonNegativeInteger(\"0\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thannni2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thannni2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:nonNegativeInteger(\"0\") gt xs:nonNegativeInteger(\"303884545991464527\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thannni2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thannni2args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:nonNegativeInteger(\"0\") gt xs:nonNegativeInteger(\"999999999999999999\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thannni2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thansht2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:short(\"-32768\") gt xs:short(\"-32768\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thansht2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thansht2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:short(\"-5324\") gt xs:short(\"-32768\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thansht2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thansht2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:short(\"32767\") gt xs:short(\"-32768\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thansht2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thansht2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:short(\"-32768\") gt xs:short(\"-5324\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thansht2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-greater-thansht2args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:short(\"-32768\") gt xs:short(\"32767\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "op-numeric-greater-thansht2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericGT-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:integer(1) gt xs:integer(-1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-NumericGT-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericGT-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:integer(1) ge xs:integer(1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-NumericGT-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericGT-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:decimal(1) gt xs:decimal(-1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-NumericGT-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericGT-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:decimal(1) ge xs:decimal(1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-NumericGT-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericGT-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "0 gt xs:double(\"-INF\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-NumericGT-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericGT-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:double(\"INF\") gt 0", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-NumericGT-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericGT-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:double(1) gt xs:double(-1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-NumericGT-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericGT-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:double(1) ge xs:double(1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-NumericGT-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericGT-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "0 gt xs:float(\"-INF\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-NumericGT-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericGT-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:float(\"INF\") gt 0", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-NumericGT-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericGT-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:float(1) gt xs:float(-1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-NumericGT-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericGT-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:float(1) ge xs:float(1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-NumericGT-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericGT-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(xs:double(\"NaN\") gt 1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-NumericGT-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericGT-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(xs:float(\"NaN\") gt 1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-NumericGT-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericGT-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(xs:double(\"NaN\") ge 1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-NumericGT-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericGT-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(xs:float(\"NaN\") ge 1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-NumericGT-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericGT-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(1 gt xs:double(\"NaN\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-NumericGT-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericGT-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(1 gt xs:float(\"NaN\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-NumericGT-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericGT-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(1 ge xs:double(\"NaN\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-NumericGT-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericGT-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(1 ge xs:float(\"NaN\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-NumericGT-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericGT-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1 le count((1, 2, 3, timezone-from-time(current-time()), 4))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-NumericGT-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericGT-22'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count((1, 2, 3, timezone-from-time(current-time()), 4)) ge 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-NumericGT-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericGT-23'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count((1, 2, 3, timezone-from-time(current-time()), 4)) gt 0", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-NumericGT-23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-NumericGT-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:unsignedLong(\"100\") gt xs:unsignedLong(\"18446744073709551615\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-NumericGT-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-NumericGT-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:unsignedLong(\"18446744073709551615\") gt xs:unsignedLong(\"100\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-NumericGT-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-NumericGT-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:double(\"3\") gt xs:double(\"NaN\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-NumericGT-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-NumericGT-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:float(\"3\") lt xs:float(\"NaN\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-NumericGT-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-numeric-greater-than-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:square($arg as xs:double) as xs:double { $arg * $arg }; not( local:square(1e0) gt local:square(2e0) )", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-numeric-greater-than-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-numeric-greater-than-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:square($arg as xs:float) as xs:float { $arg * $arg }; not( local:square(xs:float(1e0)) gt local:square(xs:float(2e0)) )", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-numeric-greater-than-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-numeric-greater-than-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:square($arg as xs:decimal) as xs:decimal { $arg * $arg }; not( local:square(1.0) gt local:square(2.0) )", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-numeric-greater-than-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-numeric-greater-than-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:square($arg as xs:integer) as xs:integer { $arg * $arg }; not( local:square(1) gt local:square(2) )", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-numeric-greater-than-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-numeric-greater-than-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:square($arg as xs:double) as xs:double { $arg * $arg }; not( local:square(1e0) le local:square(2e0) )", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-numeric-greater-than-005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-numeric-greater-than-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:square($arg as xs:float) as xs:float { $arg * $arg }; not( local:square(xs:float(1e0)) le local:square(xs:float(2e0)) )", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-numeric-greater-than-006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-numeric-greater-than-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:square($arg as xs:decimal) as xs:decimal { $arg * $arg }; not( local:square(1.0) le local:square(2.0) )", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-numeric-greater-than-007.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-numeric-greater-than-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:square($arg as xs:integer) as xs:integer { $arg * $arg }; not( local:square(1) le local:square(2) )", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-numeric-greater-than-008.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-numeric-greater-than-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:square($arg as xs:double) as xs:double { $arg * $arg }; not(not( local:square(1e0) gt local:square(2e0) ))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-numeric-greater-than-009.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-numeric-greater-than-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:square($arg as xs:float) as xs:float { $arg * $arg }; not(not( local:square(xs:float(1e0)) gt local:square(xs:float(2e0)) ))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-numeric-greater-than-010.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-numeric-greater-than-011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:square($arg as xs:double) as xs:double { $arg * $arg }; not(not( local:square(1e0) le local:square(2e0) ))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-numeric-greater-than-011.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-numeric-greater-than-012'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:square($arg as xs:float) as xs:float { $arg * $arg }; not(not( local:square(xs:float(1e0)) le local:square(xs:float(2e0)) ))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-numeric-greater-than-012.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-numeric-greater-than-013'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:factorial($arg as xs:integer) as xs:integer { if ($arg lt 1) then 1 else $arg * local:factorial($arg - 1) }; let $x := local:factorial(5) return $x + 1 gt 121", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-numeric-greater-than-013.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-numeric-greater-than-014'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:factorial($arg as xs:integer) as xs:integer { if ($arg lt 1) then 1 else $arg * local:factorial($arg - 1) }; let $x := local:factorial(5) return $x - 1 gt 121", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-numeric-greater-than-014.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-numeric-greater-than-015'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:factorial($arg as xs:integer) as xs:integer { if ($arg lt 1) then 1 else $arg * local:factorial($arg - 1) }; let $x := local:factorial(5) return 121 gt $x + 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-numeric-greater-than-015.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-numeric-greater-than-016'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:factorial($arg as xs:integer) as xs:integer { if ($arg lt 1) then 1 else $arg * local:factorial($arg - 1) }; let $x := local:factorial(5) return 121 gt 1 + $x", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-numeric-greater-than-016.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-numeric-greater-than-017'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:factorial($arg as xs:integer) as xs:integer { if ($arg lt 1) then 1 else $arg * local:factorial($arg - 1) }; let $x := local:factorial(5) return $x + 1 le 121", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-numeric-greater-than-017.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-numeric-greater-than-018'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:factorial($arg as xs:integer) as xs:integer { if ($arg lt 1) then 1 else $arg * local:factorial($arg - 1) }; let $x := local:factorial(5) return $x - 1 le 121", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-numeric-greater-than-018.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-numeric-greater-than-019'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:factorial($arg as xs:integer) as xs:integer { if ($arg lt 1) then 1 else $arg * local:factorial($arg - 1) }; let $x := local:factorial(5) return 121 le $x + 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-numeric-greater-than-019.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-numeric-greater-than-020'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:factorial($arg as xs:integer) as xs:integer { if ($arg lt 1) then 1 else $arg * local:factorial($arg - 1) }; let $x := local:factorial(5) return 121 le 1 + $x", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-numeric-greater-than-020.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-numeric-greater-than-021'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:factorial($arg as xs:integer) as xs:integer { if ($arg lt 1) then 1 else $arg * local:factorial($arg - 1) }; let $x := local:factorial(5) return 121 gt $x - 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-numeric-greater-than-021.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-numeric-greater-than-022'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:factorial($arg as xs:integer) as xs:integer { if ($arg lt 1) then 1 else $arg * local:factorial($arg - 1) }; let $x := local:factorial(5) return 1 + $x gt 121", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-numeric-greater-than-022.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-numeric-greater-than-023'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:factorial($arg as xs:integer) as xs:integer { if ($arg lt 1) then 1 else $arg * local:factorial($arg - 1) }; let $x := local:factorial(5) return 1 + $x le 121", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-numeric-greater-than-023.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-numeric-greater-than-024'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:factorial($arg as xs:integer) as xs:integer { if ($arg lt 1) then 1 else $arg * local:factorial($arg - 1) }; let $x := local:factorial(5) return 121 le $x - 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-numeric-greater-than-024.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'numeric-greater-than-101'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
   let $ex :=
   <bla><n> -2 </n>
      <n> -3.0e5 </n>
      <n> +2345.6e0 </n>
      <n>
         +5678e0
      </n>
      <n>
         1.2345e4
      </n>
      <n>
         5.6789e+4
      </n>
      <n>
         INF
      </n>
   </bla>
   return
   $ex//n[.>1000] ! xs:double(.)
         ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "numeric-greater-than-101.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(2345.6, 5678, 12345, 56789, xs:double(\"INF\"))") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'numeric-greater-than-102'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
   let $ex :=
   <bla><n>10</n>
      <n>123</n>
      <n> 1234 </n>
      <n> 2345.6 </n>
      <n>
         1555
      </n>
      <n> 12345 </n>
   </bla>
   return
   $ex//n[.>1000] ! xs:decimal(.)
         ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "numeric-greater-than-102.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(1234, 2345.6, 1555, 12345)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.