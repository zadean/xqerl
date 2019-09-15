-module('op_numeric_equal_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['op-numeric-equalint2args-1'/1]).
-export(['op-numeric-equalint2args-2'/1]).
-export(['op-numeric-equalint2args-3'/1]).
-export(['op-numeric-equalint2args-4'/1]).
-export(['op-numeric-equalint2args-5'/1]).
-export(['op-numeric-equalint2args-6'/1]).
-export(['op-numeric-equalint2args-7'/1]).
-export(['op-numeric-equalint2args-8'/1]).
-export(['op-numeric-equalint2args-9'/1]).
-export(['op-numeric-equalint2args-10'/1]).
-export(['op-numeric-equalintg2args-1'/1]).
-export(['op-numeric-equalintg2args-2'/1]).
-export(['op-numeric-equalintg2args-3'/1]).
-export(['op-numeric-equalintg2args-4'/1]).
-export(['op-numeric-equalintg2args-5'/1]).
-export(['op-numeric-equalintg2args-6'/1]).
-export(['op-numeric-equalintg2args-7'/1]).
-export(['op-numeric-equalintg2args-8'/1]).
-export(['op-numeric-equalintg2args-9'/1]).
-export(['op-numeric-equalintg2args-10'/1]).
-export(['op-numeric-equaldec2args-1'/1]).
-export(['op-numeric-equaldec2args-2'/1]).
-export(['op-numeric-equaldec2args-3'/1]).
-export(['op-numeric-equaldec2args-4'/1]).
-export(['op-numeric-equaldec2args-5'/1]).
-export(['op-numeric-equaldec2args-6'/1]).
-export(['op-numeric-equaldec2args-7'/1]).
-export(['op-numeric-equaldec2args-8'/1]).
-export(['op-numeric-equaldec2args-9'/1]).
-export(['op-numeric-equaldec2args-10'/1]).
-export(['op-numeric-equaldbl2args-1'/1]).
-export(['op-numeric-equaldbl2args-2'/1]).
-export(['op-numeric-equaldbl2args-3'/1]).
-export(['op-numeric-equaldbl2args-4'/1]).
-export(['op-numeric-equaldbl2args-5'/1]).
-export(['op-numeric-equaldbl2args-6'/1]).
-export(['op-numeric-equaldbl2args-7'/1]).
-export(['op-numeric-equaldbl2args-8'/1]).
-export(['op-numeric-equaldbl2args-9'/1]).
-export(['op-numeric-equaldbl2args-10'/1]).
-export(['op-numeric-equalflt2args-1'/1]).
-export(['op-numeric-equalflt2args-2'/1]).
-export(['op-numeric-equalflt2args-3'/1]).
-export(['op-numeric-equalflt2args-4'/1]).
-export(['op-numeric-equalflt2args-5'/1]).
-export(['op-numeric-equalflt2args-6'/1]).
-export(['op-numeric-equalflt2args-7'/1]).
-export(['op-numeric-equalflt2args-8'/1]).
-export(['op-numeric-equalflt2args-9'/1]).
-export(['op-numeric-equalflt2args-10'/1]).
-export(['op-numeric-equallng2args-1'/1]).
-export(['op-numeric-equallng2args-2'/1]).
-export(['op-numeric-equallng2args-3'/1]).
-export(['op-numeric-equallng2args-4'/1]).
-export(['op-numeric-equallng2args-5'/1]).
-export(['op-numeric-equallng2args-6'/1]).
-export(['op-numeric-equallng2args-7'/1]).
-export(['op-numeric-equallng2args-8'/1]).
-export(['op-numeric-equallng2args-9'/1]).
-export(['op-numeric-equallng2args-10'/1]).
-export(['op-numeric-equalusht2args-1'/1]).
-export(['op-numeric-equalusht2args-2'/1]).
-export(['op-numeric-equalusht2args-3'/1]).
-export(['op-numeric-equalusht2args-4'/1]).
-export(['op-numeric-equalusht2args-5'/1]).
-export(['op-numeric-equalusht2args-6'/1]).
-export(['op-numeric-equalusht2args-7'/1]).
-export(['op-numeric-equalusht2args-8'/1]).
-export(['op-numeric-equalusht2args-9'/1]).
-export(['op-numeric-equalusht2args-10'/1]).
-export(['op-numeric-equalnint2args-1'/1]).
-export(['op-numeric-equalnint2args-2'/1]).
-export(['op-numeric-equalnint2args-3'/1]).
-export(['op-numeric-equalnint2args-4'/1]).
-export(['op-numeric-equalnint2args-5'/1]).
-export(['op-numeric-equalnint2args-6'/1]).
-export(['op-numeric-equalnint2args-7'/1]).
-export(['op-numeric-equalnint2args-8'/1]).
-export(['op-numeric-equalnint2args-9'/1]).
-export(['op-numeric-equalnint2args-10'/1]).
-export(['op-numeric-equalpint2args-1'/1]).
-export(['op-numeric-equalpint2args-2'/1]).
-export(['op-numeric-equalpint2args-3'/1]).
-export(['op-numeric-equalpint2args-4'/1]).
-export(['op-numeric-equalpint2args-5'/1]).
-export(['op-numeric-equalpint2args-6'/1]).
-export(['op-numeric-equalpint2args-7'/1]).
-export(['op-numeric-equalpint2args-8'/1]).
-export(['op-numeric-equalpint2args-9'/1]).
-export(['op-numeric-equalpint2args-10'/1]).
-export(['op-numeric-equalulng2args-1'/1]).
-export(['op-numeric-equalulng2args-2'/1]).
-export(['op-numeric-equalulng2args-3'/1]).
-export(['op-numeric-equalulng2args-4'/1]).
-export(['op-numeric-equalulng2args-5'/1]).
-export(['op-numeric-equalulng2args-6'/1]).
-export(['op-numeric-equalulng2args-7'/1]).
-export(['op-numeric-equalulng2args-8'/1]).
-export(['op-numeric-equalulng2args-9'/1]).
-export(['op-numeric-equalulng2args-10'/1]).
-export(['op-numeric-equalnpi2args-1'/1]).
-export(['op-numeric-equalnpi2args-2'/1]).
-export(['op-numeric-equalnpi2args-3'/1]).
-export(['op-numeric-equalnpi2args-4'/1]).
-export(['op-numeric-equalnpi2args-5'/1]).
-export(['op-numeric-equalnpi2args-6'/1]).
-export(['op-numeric-equalnpi2args-7'/1]).
-export(['op-numeric-equalnpi2args-8'/1]).
-export(['op-numeric-equalnpi2args-9'/1]).
-export(['op-numeric-equalnpi2args-10'/1]).
-export(['op-numeric-equalnni2args-1'/1]).
-export(['op-numeric-equalnni2args-2'/1]).
-export(['op-numeric-equalnni2args-3'/1]).
-export(['op-numeric-equalnni2args-4'/1]).
-export(['op-numeric-equalnni2args-5'/1]).
-export(['op-numeric-equalnni2args-6'/1]).
-export(['op-numeric-equalnni2args-7'/1]).
-export(['op-numeric-equalnni2args-8'/1]).
-export(['op-numeric-equalnni2args-9'/1]).
-export(['op-numeric-equalnni2args-10'/1]).
-export(['op-numeric-equalsht2args-1'/1]).
-export(['op-numeric-equalsht2args-2'/1]).
-export(['op-numeric-equalsht2args-3'/1]).
-export(['op-numeric-equalsht2args-4'/1]).
-export(['op-numeric-equalsht2args-5'/1]).
-export(['op-numeric-equalsht2args-6'/1]).
-export(['op-numeric-equalsht2args-7'/1]).
-export(['op-numeric-equalsht2args-8'/1]).
-export(['op-numeric-equalsht2args-9'/1]).
-export(['op-numeric-equalsht2args-10'/1]).
-export(['op-numeric-equal-emptyseq'/1]).
-export(['K-NumericEqual-1'/1]).
-export(['K-NumericEqual-2'/1]).
-export(['K-NumericEqual-3'/1]).
-export(['K-NumericEqual-4'/1]).
-export(['K-NumericEqual-5'/1]).
-export(['K-NumericEqual-6'/1]).
-export(['K-NumericEqual-7'/1]).
-export(['K-NumericEqual-8'/1]).
-export(['K-NumericEqual-9'/1]).
-export(['K-NumericEqual-10'/1]).
-export(['K-NumericEqual-11'/1]).
-export(['K-NumericEqual-12'/1]).
-export(['K-NumericEqual-13'/1]).
-export(['K-NumericEqual-14'/1]).
-export(['K-NumericEqual-15'/1]).
-export(['K-NumericEqual-16'/1]).
-export(['K-NumericEqual-17'/1]).
-export(['K-NumericEqual-18'/1]).
-export(['K-NumericEqual-19'/1]).
-export(['K-NumericEqual-20'/1]).
-export(['K-NumericEqual-21'/1]).
-export(['K-NumericEqual-22'/1]).
-export(['K-NumericEqual-23'/1]).
-export(['K-NumericEqual-24'/1]).
-export(['K-NumericEqual-25'/1]).
-export(['K-NumericEqual-26'/1]).
-export(['K-NumericEqual-27'/1]).
-export(['K-NumericEqual-28'/1]).
-export(['K-NumericEqual-29'/1]).
-export(['K-NumericEqual-30'/1]).
-export(['K-NumericEqual-31'/1]).
-export(['K-NumericEqual-32'/1]).
-export(['K-NumericEqual-33'/1]).
-export(['K-NumericEqual-34'/1]).
-export(['K-NumericEqual-35'/1]).
-export(['K-NumericEqual-36'/1]).
-export(['K-NumericEqual-37'/1]).
-export(['K-NumericEqual-38'/1]).
-export(['K-NumericEqual-39'/1]).
-export(['K-NumericEqual-40'/1]).
-export(['K-NumericEqual-41'/1]).
-export(['K-NumericEqual-42'/1]).
-export(['K-NumericEqual-43'/1]).
-export(['K-NumericEqual-44'/1]).
-export(['K-NumericEqual-45'/1]).
-export(['K-NumericEqual-46'/1]).
-export(['K-NumericEqual-47'/1]).
-export(['K2-NumericEqual-1'/1]).
-export(['K2-NumericEqual-2'/1]).
-export(['K2-NumericEqual-3'/1]).
-export(['K2-NumericEqual-4'/1]).
-export(['K2-NumericEqual-5'/1]).
-export(['K2-NumericEqual-6'/1]).
-export(['cbcl-numeric-equal-001'/1]).
-export(['cbcl-numeric-equal-002'/1]).
-export(['cbcl-numeric-equal-003'/1]).
-export(['cbcl-numeric-equal-004'/1]).
-export(['cbcl-numeric-equal-005'/1]).
-export(['cbcl-numeric-equal-006'/1]).
-export(['cbcl-numeric-equal-007'/1]).
-export(['cbcl-numeric-equal-008'/1]).
-export(['cbcl-numeric-equal-009'/1]).
-export(['cbcl-numeric-equal-010'/1]).
-export(['cbcl-numeric-equal-011'/1]).
-export(['cbcl-numeric-equal-012'/1]).
-export(['cbcl-numeric-equal-013'/1]).
-export(['cbcl-numeric-equal-014'/1]).
-export(['cbcl-numeric-equal-015'/1]).
-export(['cbcl-numeric-equal-016'/1]).
-export(['cbcl-numeric-equal-017'/1]).
-export(['cbcl-numeric-equal-018'/1]).
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
   {group, group_2}, 
   {group, group_3}, 
   {group, group_4}, 
   {group, group_5}, 
   {group, group_6}, 
   {group, group_7}, 
   {group, group_8}
   ].
groups() -> [
   {group_0, [parallel], [
    'op-numeric-equalint2args-1', 
    'op-numeric-equalint2args-2', 
    'op-numeric-equalint2args-3', 
    'op-numeric-equalint2args-4', 
    'op-numeric-equalint2args-5', 
    'op-numeric-equalint2args-6', 
    'op-numeric-equalint2args-7', 
    'op-numeric-equalint2args-8', 
    'op-numeric-equalint2args-9', 
    'op-numeric-equalint2args-10', 
    'op-numeric-equalintg2args-1', 
    'op-numeric-equalintg2args-2', 
    'op-numeric-equalintg2args-3', 
    'op-numeric-equalintg2args-4', 
    'op-numeric-equalintg2args-5', 
    'op-numeric-equalintg2args-6', 
    'op-numeric-equalintg2args-7', 
    'op-numeric-equalintg2args-8', 
    'op-numeric-equalintg2args-9', 
    'op-numeric-equalintg2args-10', 
    'op-numeric-equaldec2args-1', 
    'op-numeric-equaldec2args-2', 
    'op-numeric-equaldec2args-3']}, 
   {group_1, [parallel], [
    'op-numeric-equaldec2args-4', 
    'op-numeric-equaldec2args-5', 
    'op-numeric-equaldec2args-6', 
    'op-numeric-equaldec2args-7', 
    'op-numeric-equaldec2args-8', 
    'op-numeric-equaldec2args-9', 
    'op-numeric-equaldec2args-10', 
    'op-numeric-equaldbl2args-1', 
    'op-numeric-equaldbl2args-2', 
    'op-numeric-equaldbl2args-3', 
    'op-numeric-equaldbl2args-4', 
    'op-numeric-equaldbl2args-5', 
    'op-numeric-equaldbl2args-6', 
    'op-numeric-equaldbl2args-7', 
    'op-numeric-equaldbl2args-8', 
    'op-numeric-equaldbl2args-9', 
    'op-numeric-equaldbl2args-10', 
    'op-numeric-equalflt2args-1', 
    'op-numeric-equalflt2args-2', 
    'op-numeric-equalflt2args-3', 
    'op-numeric-equalflt2args-4', 
    'op-numeric-equalflt2args-5', 
    'op-numeric-equalflt2args-6', 
    'op-numeric-equalflt2args-7']}, 
   {group_2, [parallel], [
    'op-numeric-equalflt2args-8', 
    'op-numeric-equalflt2args-9', 
    'op-numeric-equalflt2args-10', 
    'op-numeric-equallng2args-1', 
    'op-numeric-equallng2args-2', 
    'op-numeric-equallng2args-3', 
    'op-numeric-equallng2args-4', 
    'op-numeric-equallng2args-5', 
    'op-numeric-equallng2args-6', 
    'op-numeric-equallng2args-7', 
    'op-numeric-equallng2args-8', 
    'op-numeric-equallng2args-9', 
    'op-numeric-equallng2args-10', 
    'op-numeric-equalusht2args-1', 
    'op-numeric-equalusht2args-2', 
    'op-numeric-equalusht2args-3', 
    'op-numeric-equalusht2args-4', 
    'op-numeric-equalusht2args-5', 
    'op-numeric-equalusht2args-6', 
    'op-numeric-equalusht2args-7', 
    'op-numeric-equalusht2args-8', 
    'op-numeric-equalusht2args-9', 
    'op-numeric-equalusht2args-10', 
    'op-numeric-equalnint2args-1']}, 
   {group_3, [parallel], [
    'op-numeric-equalnint2args-2', 
    'op-numeric-equalnint2args-3', 
    'op-numeric-equalnint2args-4', 
    'op-numeric-equalnint2args-5', 
    'op-numeric-equalnint2args-6', 
    'op-numeric-equalnint2args-7', 
    'op-numeric-equalnint2args-8', 
    'op-numeric-equalnint2args-9', 
    'op-numeric-equalnint2args-10', 
    'op-numeric-equalpint2args-1', 
    'op-numeric-equalpint2args-2', 
    'op-numeric-equalpint2args-3', 
    'op-numeric-equalpint2args-4', 
    'op-numeric-equalpint2args-5', 
    'op-numeric-equalpint2args-6', 
    'op-numeric-equalpint2args-7', 
    'op-numeric-equalpint2args-8', 
    'op-numeric-equalpint2args-9', 
    'op-numeric-equalpint2args-10', 
    'op-numeric-equalulng2args-1', 
    'op-numeric-equalulng2args-2', 
    'op-numeric-equalulng2args-3', 
    'op-numeric-equalulng2args-4', 
    'op-numeric-equalulng2args-5']}, 
   {group_4, [parallel], [
    'op-numeric-equalulng2args-6', 
    'op-numeric-equalulng2args-7', 
    'op-numeric-equalulng2args-8', 
    'op-numeric-equalulng2args-9', 
    'op-numeric-equalulng2args-10', 
    'op-numeric-equalnpi2args-1', 
    'op-numeric-equalnpi2args-2', 
    'op-numeric-equalnpi2args-3', 
    'op-numeric-equalnpi2args-4', 
    'op-numeric-equalnpi2args-5', 
    'op-numeric-equalnpi2args-6', 
    'op-numeric-equalnpi2args-7', 
    'op-numeric-equalnpi2args-8', 
    'op-numeric-equalnpi2args-9', 
    'op-numeric-equalnpi2args-10', 
    'op-numeric-equalnni2args-1', 
    'op-numeric-equalnni2args-2', 
    'op-numeric-equalnni2args-3', 
    'op-numeric-equalnni2args-4', 
    'op-numeric-equalnni2args-5', 
    'op-numeric-equalnni2args-6', 
    'op-numeric-equalnni2args-7', 
    'op-numeric-equalnni2args-8', 
    'op-numeric-equalnni2args-9']}, 
   {group_5, [parallel], [
    'op-numeric-equalnni2args-10', 
    'op-numeric-equalsht2args-1', 
    'op-numeric-equalsht2args-2', 
    'op-numeric-equalsht2args-3', 
    'op-numeric-equalsht2args-4', 
    'op-numeric-equalsht2args-5', 
    'op-numeric-equalsht2args-6', 
    'op-numeric-equalsht2args-7', 
    'op-numeric-equalsht2args-8', 
    'op-numeric-equalsht2args-9', 
    'op-numeric-equalsht2args-10', 
    'op-numeric-equal-emptyseq', 
    'K-NumericEqual-1', 
    'K-NumericEqual-2', 
    'K-NumericEqual-3', 
    'K-NumericEqual-4', 
    'K-NumericEqual-5', 
    'K-NumericEqual-6', 
    'K-NumericEqual-7', 
    'K-NumericEqual-8', 
    'K-NumericEqual-9', 
    'K-NumericEqual-10', 
    'K-NumericEqual-11', 
    'K-NumericEqual-12']}, 
   {group_6, [parallel], [
    'K-NumericEqual-13', 
    'K-NumericEqual-14', 
    'K-NumericEqual-15', 
    'K-NumericEqual-16', 
    'K-NumericEqual-17', 
    'K-NumericEqual-18', 
    'K-NumericEqual-19', 
    'K-NumericEqual-20', 
    'K-NumericEqual-21', 
    'K-NumericEqual-22', 
    'K-NumericEqual-23', 
    'K-NumericEqual-24', 
    'K-NumericEqual-25', 
    'K-NumericEqual-26', 
    'K-NumericEqual-27', 
    'K-NumericEqual-28', 
    'K-NumericEqual-29', 
    'K-NumericEqual-30', 
    'K-NumericEqual-31', 
    'K-NumericEqual-32', 
    'K-NumericEqual-33', 
    'K-NumericEqual-34', 
    'K-NumericEqual-35', 
    'K-NumericEqual-36']}, 
   {group_7, [parallel], [
    'K-NumericEqual-37', 
    'K-NumericEqual-38', 
    'K-NumericEqual-39', 
    'K-NumericEqual-40', 
    'K-NumericEqual-41', 
    'K-NumericEqual-42', 
    'K-NumericEqual-43', 
    'K-NumericEqual-44', 
    'K-NumericEqual-45', 
    'K-NumericEqual-46', 
    'K-NumericEqual-47', 
    'K2-NumericEqual-1', 
    'K2-NumericEqual-2', 
    'K2-NumericEqual-3', 
    'K2-NumericEqual-4', 
    'K2-NumericEqual-5', 
    'K2-NumericEqual-6', 
    'cbcl-numeric-equal-001', 
    'cbcl-numeric-equal-002', 
    'cbcl-numeric-equal-003', 
    'cbcl-numeric-equal-004', 
    'cbcl-numeric-equal-005', 
    'cbcl-numeric-equal-006', 
    'cbcl-numeric-equal-007']}, 
   {group_8, [parallel], [
    'cbcl-numeric-equal-008', 
    'cbcl-numeric-equal-009', 
    'cbcl-numeric-equal-010', 
    'cbcl-numeric-equal-011', 
    'cbcl-numeric-equal-012', 
    'cbcl-numeric-equal-013', 
    'cbcl-numeric-equal-014', 
    'cbcl-numeric-equal-015', 
    'cbcl-numeric-equal-016', 
    'cbcl-numeric-equal-017', 
    'cbcl-numeric-equal-018']}].

'op-numeric-equalint2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:int(\"-2147483648\") eq xs:int(\"-2147483648\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalint2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalint2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:int(\"-1873914410\") eq xs:int(\"-2147483648\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalint2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalint2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:int(\"2147483647\") eq xs:int(\"-2147483648\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalint2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalint2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:int(\"-2147483648\") eq xs:int(\"-1873914410\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalint2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalint2args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:int(\"-2147483648\") eq xs:int(\"2147483647\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalint2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalint2args-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:int(\"-2147483648\") ne xs:int(\"-2147483648\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalint2args-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalint2args-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:int(\"-1873914410\") ne xs:int(\"-2147483648\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalint2args-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalint2args-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:int(\"2147483647\") ne xs:int(\"-2147483648\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalint2args-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalint2args-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:int(\"-2147483648\") ne xs:int(\"-1873914410\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalint2args-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalint2args-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:int(\"-2147483648\") ne xs:int(\"2147483647\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalint2args-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalintg2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:integer(\"-999999999999999999\") eq xs:integer(\"-999999999999999999\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalintg2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalintg2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:integer(\"830993497117024304\") eq xs:integer(\"-999999999999999999\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalintg2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalintg2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:integer(\"999999999999999999\") eq xs:integer(\"-999999999999999999\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalintg2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalintg2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:integer(\"-999999999999999999\") eq xs:integer(\"830993497117024304\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalintg2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalintg2args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:integer(\"-999999999999999999\") eq xs:integer(\"999999999999999999\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalintg2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalintg2args-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:integer(\"-999999999999999999\") ne xs:integer(\"-999999999999999999\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalintg2args-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalintg2args-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:integer(\"830993497117024304\") ne xs:integer(\"-999999999999999999\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalintg2args-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalintg2args-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:integer(\"999999999999999999\") ne xs:integer(\"-999999999999999999\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalintg2args-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalintg2args-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:integer(\"-999999999999999999\") ne xs:integer(\"830993497117024304\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalintg2args-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalintg2args-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:integer(\"-999999999999999999\") ne xs:integer(\"999999999999999999\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalintg2args-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equaldec2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:decimal(\"-999999999999999999\") eq xs:decimal(\"-999999999999999999\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equaldec2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equaldec2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:decimal(\"617375191608514839\") eq xs:decimal(\"-999999999999999999\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equaldec2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equaldec2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:decimal(\"999999999999999999\") eq xs:decimal(\"-999999999999999999\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equaldec2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equaldec2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:decimal(\"-999999999999999999\") eq xs:decimal(\"617375191608514839\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equaldec2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equaldec2args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:decimal(\"-999999999999999999\") eq xs:decimal(\"999999999999999999\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equaldec2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equaldec2args-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:decimal(\"-999999999999999999\") ne xs:decimal(\"-999999999999999999\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equaldec2args-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equaldec2args-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:decimal(\"617375191608514839\") ne xs:decimal(\"-999999999999999999\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equaldec2args-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equaldec2args-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:decimal(\"999999999999999999\") ne xs:decimal(\"-999999999999999999\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equaldec2args-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equaldec2args-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:decimal(\"-999999999999999999\") ne xs:decimal(\"617375191608514839\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equaldec2args-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equaldec2args-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:decimal(\"-999999999999999999\") ne xs:decimal(\"999999999999999999\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equaldec2args-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equaldbl2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:double(\"-1.7976931348623157E308\") eq xs:double(\"-1.7976931348623157E308\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equaldbl2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equaldbl2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:double(\"0\") eq xs:double(\"-1.7976931348623157E308\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equaldbl2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equaldbl2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:double(\"1.7976931348623157E308\") eq xs:double(\"-1.7976931348623157E308\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equaldbl2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equaldbl2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:double(\"-1.7976931348623157E308\") eq xs:double(\"0\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equaldbl2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equaldbl2args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:double(\"-1.7976931348623157E308\") eq xs:double(\"1.7976931348623157E308\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equaldbl2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equaldbl2args-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:double(\"-1.7976931348623157E308\") ne xs:double(\"-1.7976931348623157E308\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equaldbl2args-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equaldbl2args-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:double(\"0\") ne xs:double(\"-1.7976931348623157E308\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equaldbl2args-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equaldbl2args-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:double(\"1.7976931348623157E308\") ne xs:double(\"-1.7976931348623157E308\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equaldbl2args-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equaldbl2args-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:double(\"-1.7976931348623157E308\") ne xs:double(\"0\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equaldbl2args-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equaldbl2args-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:double(\"-1.7976931348623157E308\") ne xs:double(\"1.7976931348623157E308\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equaldbl2args-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalflt2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:float(\"-3.4028235E38\") eq xs:float(\"-3.4028235E38\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalflt2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalflt2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:float(\"0\") eq xs:float(\"-3.4028235E38\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalflt2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalflt2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:float(\"3.4028235E38\") eq xs:float(\"-3.4028235E38\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalflt2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalflt2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:float(\"-3.4028235E38\") eq xs:float(\"0\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalflt2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalflt2args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:float(\"-3.4028235E38\") eq xs:float(\"3.4028235E38\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalflt2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalflt2args-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:float(\"-3.4028235E38\") ne xs:float(\"-3.4028235E38\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalflt2args-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalflt2args-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:float(\"0\") ne xs:float(\"-3.4028235E38\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalflt2args-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalflt2args-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:float(\"3.4028235E38\") ne xs:float(\"-3.4028235E38\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalflt2args-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalflt2args-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:float(\"-3.4028235E38\") ne xs:float(\"0\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalflt2args-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalflt2args-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:float(\"-3.4028235E38\") ne xs:float(\"3.4028235E38\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalflt2args-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equallng2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:long(\"-92233720368547758\") eq xs:long(\"-92233720368547758\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equallng2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equallng2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:long(\"-47175562203048468\") eq xs:long(\"-92233720368547758\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equallng2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equallng2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:long(\"92233720368547758\") eq xs:long(\"-92233720368547758\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equallng2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equallng2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:long(\"-92233720368547758\") eq xs:long(\"-47175562203048468\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equallng2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equallng2args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:long(\"-92233720368547758\") eq xs:long(\"92233720368547758\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equallng2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equallng2args-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:long(\"-92233720368547758\") ne xs:long(\"-92233720368547758\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equallng2args-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equallng2args-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:long(\"-47175562203048468\") ne xs:long(\"-92233720368547758\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equallng2args-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equallng2args-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:long(\"92233720368547758\") ne xs:long(\"-92233720368547758\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equallng2args-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equallng2args-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:long(\"-92233720368547758\") ne xs:long(\"-47175562203048468\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equallng2args-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equallng2args-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:long(\"-92233720368547758\") ne xs:long(\"92233720368547758\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equallng2args-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalusht2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:unsignedShort(\"0\") eq xs:unsignedShort(\"0\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalusht2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalusht2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:unsignedShort(\"44633\") eq xs:unsignedShort(\"0\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalusht2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalusht2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:unsignedShort(\"65535\") eq xs:unsignedShort(\"0\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalusht2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalusht2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:unsignedShort(\"0\") eq xs:unsignedShort(\"44633\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalusht2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalusht2args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:unsignedShort(\"0\") eq xs:unsignedShort(\"65535\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalusht2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalusht2args-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:unsignedShort(\"0\") ne xs:unsignedShort(\"0\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalusht2args-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalusht2args-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:unsignedShort(\"44633\") ne xs:unsignedShort(\"0\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalusht2args-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalusht2args-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:unsignedShort(\"65535\") ne xs:unsignedShort(\"0\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalusht2args-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalusht2args-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:unsignedShort(\"0\") ne xs:unsignedShort(\"44633\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalusht2args-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalusht2args-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:unsignedShort(\"0\") ne xs:unsignedShort(\"65535\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalusht2args-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalnint2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:negativeInteger(\"-999999999999999999\") eq xs:negativeInteger(\"-999999999999999999\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalnint2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalnint2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:negativeInteger(\"-297014075999096793\") eq xs:negativeInteger(\"-999999999999999999\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalnint2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalnint2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:negativeInteger(\"-1\") eq xs:negativeInteger(\"-999999999999999999\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalnint2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalnint2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:negativeInteger(\"-999999999999999999\") eq xs:negativeInteger(\"-297014075999096793\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalnint2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalnint2args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:negativeInteger(\"-999999999999999999\") eq xs:negativeInteger(\"-1\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalnint2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalnint2args-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:negativeInteger(\"-999999999999999999\") ne xs:negativeInteger(\"-999999999999999999\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalnint2args-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalnint2args-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:negativeInteger(\"-297014075999096793\") ne xs:negativeInteger(\"-999999999999999999\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalnint2args-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalnint2args-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:negativeInteger(\"-1\") ne xs:negativeInteger(\"-999999999999999999\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalnint2args-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalnint2args-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:negativeInteger(\"-999999999999999999\") ne xs:negativeInteger(\"-297014075999096793\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalnint2args-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalnint2args-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:negativeInteger(\"-999999999999999999\") ne xs:negativeInteger(\"-1\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalnint2args-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalpint2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:positiveInteger(\"1\") eq xs:positiveInteger(\"1\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalpint2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalpint2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:positiveInteger(\"52704602390610033\") eq xs:positiveInteger(\"1\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalpint2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalpint2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:positiveInteger(\"999999999999999999\") eq xs:positiveInteger(\"1\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalpint2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalpint2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:positiveInteger(\"1\") eq xs:positiveInteger(\"52704602390610033\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalpint2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalpint2args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:positiveInteger(\"1\") eq xs:positiveInteger(\"999999999999999999\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalpint2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalpint2args-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:positiveInteger(\"1\") ne xs:positiveInteger(\"1\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalpint2args-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalpint2args-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:positiveInteger(\"52704602390610033\") ne xs:positiveInteger(\"1\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalpint2args-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalpint2args-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:positiveInteger(\"999999999999999999\") ne xs:positiveInteger(\"1\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalpint2args-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalpint2args-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:positiveInteger(\"1\") ne xs:positiveInteger(\"52704602390610033\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalpint2args-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalpint2args-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:positiveInteger(\"1\") ne xs:positiveInteger(\"999999999999999999\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalpint2args-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalulng2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:unsignedLong(\"0\") eq xs:unsignedLong(\"0\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalulng2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalulng2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:unsignedLong(\"130747108607674654\") eq xs:unsignedLong(\"0\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalulng2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalulng2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:unsignedLong(\"184467440737095516\") eq xs:unsignedLong(\"0\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalulng2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalulng2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:unsignedLong(\"0\") eq xs:unsignedLong(\"130747108607674654\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalulng2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalulng2args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:unsignedLong(\"0\") eq xs:unsignedLong(\"184467440737095516\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalulng2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalulng2args-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:unsignedLong(\"0\") ne xs:unsignedLong(\"0\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalulng2args-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalulng2args-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:unsignedLong(\"130747108607674654\") ne xs:unsignedLong(\"0\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalulng2args-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalulng2args-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:unsignedLong(\"184467440737095516\") ne xs:unsignedLong(\"0\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalulng2args-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalulng2args-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:unsignedLong(\"0\") ne xs:unsignedLong(\"130747108607674654\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalulng2args-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalulng2args-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:unsignedLong(\"0\") ne xs:unsignedLong(\"184467440737095516\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalulng2args-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalnpi2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:nonPositiveInteger(\"-999999999999999999\") eq xs:nonPositiveInteger(\"-999999999999999999\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalnpi2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalnpi2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:nonPositiveInteger(\"-475688437271870490\") eq xs:nonPositiveInteger(\"-999999999999999999\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalnpi2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalnpi2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:nonPositiveInteger(\"0\") eq xs:nonPositiveInteger(\"-999999999999999999\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalnpi2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalnpi2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:nonPositiveInteger(\"-999999999999999999\") eq xs:nonPositiveInteger(\"-475688437271870490\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalnpi2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalnpi2args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:nonPositiveInteger(\"-999999999999999999\") eq xs:nonPositiveInteger(\"0\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalnpi2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalnpi2args-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:nonPositiveInteger(\"-999999999999999999\") ne xs:nonPositiveInteger(\"-999999999999999999\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalnpi2args-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalnpi2args-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:nonPositiveInteger(\"-475688437271870490\") ne xs:nonPositiveInteger(\"-999999999999999999\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalnpi2args-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalnpi2args-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:nonPositiveInteger(\"0\") ne xs:nonPositiveInteger(\"-999999999999999999\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalnpi2args-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalnpi2args-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:nonPositiveInteger(\"-999999999999999999\") ne xs:nonPositiveInteger(\"-475688437271870490\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalnpi2args-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalnpi2args-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:nonPositiveInteger(\"-999999999999999999\") ne xs:nonPositiveInteger(\"0\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalnpi2args-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalnni2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:nonNegativeInteger(\"0\") eq xs:nonNegativeInteger(\"0\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalnni2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalnni2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:nonNegativeInteger(\"303884545991464527\") eq xs:nonNegativeInteger(\"0\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalnni2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalnni2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:nonNegativeInteger(\"999999999999999999\") eq xs:nonNegativeInteger(\"0\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalnni2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalnni2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:nonNegativeInteger(\"0\") eq xs:nonNegativeInteger(\"303884545991464527\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalnni2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalnni2args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:nonNegativeInteger(\"0\") eq xs:nonNegativeInteger(\"999999999999999999\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalnni2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalnni2args-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:nonNegativeInteger(\"0\") ne xs:nonNegativeInteger(\"0\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalnni2args-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalnni2args-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:nonNegativeInteger(\"303884545991464527\") ne xs:nonNegativeInteger(\"0\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalnni2args-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalnni2args-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:nonNegativeInteger(\"999999999999999999\") ne xs:nonNegativeInteger(\"0\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalnni2args-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalnni2args-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:nonNegativeInteger(\"0\") ne xs:nonNegativeInteger(\"303884545991464527\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalnni2args-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalnni2args-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:nonNegativeInteger(\"0\") ne xs:nonNegativeInteger(\"999999999999999999\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalnni2args-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalsht2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:short(\"-32768\") eq xs:short(\"-32768\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalsht2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalsht2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:short(\"-5324\") eq xs:short(\"-32768\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalsht2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalsht2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:short(\"32767\") eq xs:short(\"-32768\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalsht2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalsht2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:short(\"-32768\") eq xs:short(\"-5324\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalsht2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalsht2args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:short(\"-32768\") eq xs:short(\"32767\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalsht2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalsht2args-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:short(\"-32768\") ne xs:short(\"-32768\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalsht2args-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalsht2args-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:short(\"-5324\") ne xs:short(\"-32768\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalsht2args-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalsht2args-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:short(\"32767\") ne xs:short(\"-32768\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalsht2args-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalsht2args-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:short(\"-32768\") ne xs:short(\"-5324\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalsht2args-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equalsht2args-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:short(\"-32768\") ne xs:short(\"32767\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equalsht2args-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-equal-emptyseq'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "() eq ()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-equal-emptyseq.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XPST0005") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPST0005 " ++ binary_to_list(F)};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericEqual-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:integer(1) eq xs:integer(1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericEqual-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericEqual-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:integer(1) ne xs:integer(2)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericEqual-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericEqual-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:integer(1) eq xs:integer(1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericEqual-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericEqual-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:integer(-1) eq xs:integer(-1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericEqual-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericEqual-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:integer(1) ne xs:integer(2)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericEqual-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericEqual-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:decimal(1.1) eq xs:decimal(1.1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericEqual-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericEqual-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:decimal(1.1) ne xs:decimal(2.1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericEqual-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericEqual-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:decimal(1.1) eq xs:decimal(1.1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericEqual-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericEqual-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:decimal(-1.1) eq xs:decimal(-1.1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericEqual-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericEqual-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:decimal(1.1) ne xs:decimal(2.1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericEqual-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericEqual-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:integer(2) ne xs:decimal(2.6)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericEqual-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericEqual-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:double(1.1) eq xs:double(1.1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericEqual-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericEqual-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:double(-1.1) eq xs:double(-1.1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericEqual-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericEqual-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:double(1.1) ne xs:double(2.1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericEqual-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericEqual-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:double(-1) ne xs:double(1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericEqual-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericEqual-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:double(\"NaN\") ne xs:double(\"NaN\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericEqual-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericEqual-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:double(\"NaN\") ne xs:double(0)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericEqual-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericEqual-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:double(0) ne xs:double(\"NaN\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericEqual-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericEqual-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:double(\"-INF\") eq xs:double(\"-INF\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericEqual-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericEqual-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:double(\"INF\") eq xs:double(\"INF\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericEqual-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericEqual-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:double(\"-INF\") ne xs:double(\"INF\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericEqual-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericEqual-22'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:double(\"INF\") ne xs:double(\"-INF\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericEqual-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericEqual-23'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:double(\"INF\") ne xs:double(\"0\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericEqual-23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericEqual-24'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:double(\"-INF\") ne xs:double(\"0\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericEqual-24.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericEqual-25'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:double(\"0\") ne xs:double(\"INF\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericEqual-25.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericEqual-26'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:double(\"0\") ne xs:double(\"-INF\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericEqual-26.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericEqual-27'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:float(1.1) eq xs:float(1.1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericEqual-27.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericEqual-28'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:float(-1.1) eq xs:float(-1.1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericEqual-28.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericEqual-29'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:float(1.1) ne xs:float(2.1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericEqual-29.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericEqual-30'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:float(\"NaN\") ne xs:float(\"NaN\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericEqual-30.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericEqual-31'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:float(\"NaN\") ne xs:float(0)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericEqual-31.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericEqual-32'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:float(0) ne xs:float(\"NaN\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericEqual-32.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericEqual-33'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:float(\"-INF\") eq xs:float(\"-INF\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericEqual-33.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericEqual-34'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:float(\"INF\") eq xs:float(\"INF\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericEqual-34.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericEqual-35'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:float(\"-INF\") ne xs:float(\"INF\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericEqual-35.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericEqual-36'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:float(\"INF\") ne xs:float(\"-INF\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericEqual-36.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericEqual-37'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:float(\"INF\") ne xs:float(\"0\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericEqual-37.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericEqual-38'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:float(\"-INF\") ne xs:float(\"0\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericEqual-38.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericEqual-39'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:float(\"0\") ne xs:float(\"INF\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericEqual-39.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericEqual-40'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:float(\"0\") ne xs:float(\"-INF\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericEqual-40.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericEqual-41'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(remove(remove((current-time(), 1), 1), 1)) eq 0", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericEqual-41.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericEqual-42'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(0 eq count((1, 2, timezone-from-time(current-time()))))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericEqual-42.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericEqual-43'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "0 ne count((1, 2, timezone-from-time(current-time())))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericEqual-43.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericEqual-44'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:untypedAtomic(\"3\"), 3) eq 3", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericEqual-44.xq"), Qry1),
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
'K-NumericEqual-45'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(xs:untypedAtomic(\"1\") to 3) eq 3", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericEqual-45.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericEqual-46'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:untypedAtomic(\"three\") + 3", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericEqual-46.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0001") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FORG0001 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericEqual-47'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1 := 3", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericEqual-47.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPST0003 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-NumericEqual-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1 eq <?target 1?>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-NumericEqual-1.xq"), Qry1),
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
'K2-NumericEqual-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<?target 1?> eq 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-NumericEqual-2.xq"), Qry1),
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
'K2-NumericEqual-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1 eq <!--1-->", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-NumericEqual-3.xq"), Qry1),
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
'K2-NumericEqual-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<!--1--> eq 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-NumericEqual-4.xq"), Qry1),
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
'K2-NumericEqual-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1 eq text {\"1\"}", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-NumericEqual-5.xq"), Qry1),
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
'K2-NumericEqual-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "text {\"1\"} eq 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-NumericEqual-6.xq"), Qry1),
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
'cbcl-numeric-equal-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:square($arg as xs:double) as xs:double { $arg * $arg }; 
      	not( local:square(1e0) eq local:square(2e0) )", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-numeric-equal-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-numeric-equal-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:square($arg as xs:float) as xs:float { $arg * $arg }; 
      	not( local:square(xs:float(1e0)) eq local:square(xs:float(2e0)) )", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-numeric-equal-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-numeric-equal-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:square($arg as xs:decimal) as xs:decimal { $arg * $arg }; 
      	not( local:square(1.0) eq local:square(2.0) )", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-numeric-equal-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-numeric-equal-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:square($arg as xs:integer) as xs:integer { $arg * $arg }; 
      	not( local:square(1) eq local:square(2) )", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-numeric-equal-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-numeric-equal-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:square($arg as xs:double) as xs:double { $arg * $arg }; 
      	not( local:square(1e0) ne local:square(2e0) )", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-numeric-equal-005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-numeric-equal-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:square($arg as xs:float) as xs:float { $arg * $arg }; 
      	not( local:square(xs:float(1e0)) ne local:square(xs:float(2e0)) )", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-numeric-equal-006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-numeric-equal-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:square($arg as xs:decimal) as xs:decimal { $arg * $arg }; 
      	not( local:square(1.0) ne local:square(2.0) )", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-numeric-equal-007.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-numeric-equal-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:square($arg as xs:integer) as xs:integer { $arg * $arg }; 
      	not( local:square(1) ne local:square(2) )", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-numeric-equal-008.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-numeric-equal-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:square($arg as xs:integer) as xs:integer { $arg * $arg }; 
      	let $x := local:square(4) return 0 eq $x - 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-numeric-equal-009.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-numeric-equal-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:square($arg as xs:integer) as xs:integer { $arg * $arg }; 
      	let $x := local:square(4) return 0 eq $x + 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-numeric-equal-010.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-numeric-equal-011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:square($arg as xs:integer) as xs:integer { $arg * $arg }; 
      	let $x := local:square(4) return 4 eq $x + 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-numeric-equal-011.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-numeric-equal-012'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:square($arg as xs:integer) as xs:integer { $arg * $arg }; 
      	let $x := local:square(4) return 4 eq 1 + $x", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-numeric-equal-012.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-numeric-equal-013'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:square($arg as xs:integer) as xs:integer { $arg * $arg }; 
      	let $x := local:square(4) return -52676506002282294014967032012 eq $x + 52676506002282294014967032012", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-numeric-equal-013.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOAR0002") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FOAR0002 " ++ binary_to_list(F)};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-numeric-equal-014'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:square($arg as xs:integer) as xs:integer { $arg * $arg }; 
      	let $x := local:square(4) return -52676506002282294014967032012 eq 52676506002282294014967032012 + $x", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-numeric-equal-014.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOAR0002") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FOAR0002 " ++ binary_to_list(F)};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-numeric-equal-015'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:square($arg as xs:integer) as xs:integer { $arg * $arg }; 
      	let $x := local:square(4) return 4 eq 1 - $x", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-numeric-equal-015.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOAR0002") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FOAR0002 " ++ binary_to_list(F)};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-numeric-equal-016'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:square($arg as xs:integer) as xs:integer { $arg * $arg }; 
      	let $x := local:square(4) return 4 eq $x - 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-numeric-equal-016.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-numeric-equal-017'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:square($arg as xs:integer) as xs:integer { $arg * $arg }; 
      	let $x := local:square(4) return -52676506002282294014967032012 eq 52676506002282294014967032012 - $x", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-numeric-equal-017.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOAR0002") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FOAR0002 " ++ binary_to_list(F)};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-numeric-equal-018'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:square($arg as xs:integer) as xs:integer { $arg * $arg }; 
      	let $x := local:square(4) return 52676506002282294014967032012 eq $x - 52676506002282294014967032012", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-numeric-equal-018.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOAR0002") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FOAR0002 " ++ binary_to_list(F)};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.