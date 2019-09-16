-module('op_numeric_divide_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['op-numeric-divideint2args-1'/1]).
-export(['op-numeric-divideint2args-2'/1]).
-export(['op-numeric-divideint2args-3'/1]).
-export(['op-numeric-divideint2args-4'/1]).
-export(['op-numeric-divideint2args-5'/1]).
-export(['op-numeric-divideintg2args-1'/1]).
-export(['op-numeric-divideintg2args-2'/1]).
-export(['op-numeric-divideintg2args-3'/1]).
-export(['op-numeric-divideintg2args-4'/1]).
-export(['op-numeric-divideintg2args-5'/1]).
-export(['op-numeric-divideintg2args-6'/1]).
-export(['op-numeric-dividedec2args-1'/1]).
-export(['op-numeric-dividedec2args-2'/1]).
-export(['op-numeric-dividedec2args-3'/1]).
-export(['op-numeric-dividedec2args-4'/1]).
-export(['op-numeric-dividedec2args-5'/1]).
-export(['op-numeric-dividedbl2args-1'/1]).
-export(['op-numeric-dividedbl2args-2'/1]).
-export(['op-numeric-dividedbl2args-3'/1]).
-export(['op-numeric-dividedbl2args-4'/1]).
-export(['op-numeric-divideflt2args-1'/1]).
-export(['op-numeric-divideflt2args-2'/1]).
-export(['op-numeric-divideflt2args-3'/1]).
-export(['op-numeric-divideflt2args-4'/1]).
-export(['op-numeric-dividelng2args-1'/1]).
-export(['op-numeric-dividelng2args-2'/1]).
-export(['op-numeric-dividelng2args-3'/1]).
-export(['op-numeric-dividelng2args-4'/1]).
-export(['op-numeric-dividelng2args-5'/1]).
-export(['op-numeric-divideusht2args-1'/1]).
-export(['op-numeric-divideusht2args-2'/1]).
-export(['op-numeric-dividenint2args-1'/1]).
-export(['op-numeric-dividenint2args-2'/1]).
-export(['op-numeric-dividenint2args-3'/1]).
-export(['op-numeric-dividenint2args-4'/1]).
-export(['op-numeric-dividenint2args-5'/1]).
-export(['op-numeric-dividepint2args-1'/1]).
-export(['op-numeric-dividepint2args-2'/1]).
-export(['op-numeric-dividepint2args-3'/1]).
-export(['op-numeric-dividepint2args-4'/1]).
-export(['op-numeric-dividepint2args-5'/1]).
-export(['op-numeric-divideulng2args-1'/1]).
-export(['op-numeric-divideulng2args-2'/1]).
-export(['op-numeric-dividenpi2args-1'/1]).
-export(['op-numeric-dividenpi2args-2'/1]).
-export(['op-numeric-dividenpi2args-3'/1]).
-export(['op-numeric-dividenpi2args-4'/1]).
-export(['op-numeric-dividenni2args-1'/1]).
-export(['op-numeric-dividenni2args-2'/1]).
-export(['op-numeric-dividesht2args-1'/1]).
-export(['op-numeric-dividesht2args-2'/1]).
-export(['op-numeric-dividesht2args-3'/1]).
-export(['op-numeric-dividesht2args-4'/1]).
-export(['op-numeric-dividesht2args-5'/1]).
-export(['op-numeric-dividemix2args-1'/1]).
-export(['op-numeric-dividemix2args-2'/1]).
-export(['op-numeric-dividemix2args-3'/1]).
-export(['op-numeric-dividemix2args-4'/1]).
-export(['op-numeric-dividemix2args-5'/1]).
-export(['op-numeric-dividemix2args-6'/1]).
-export(['op-numeric-dividemix2args-7'/1]).
-export(['op-numeric-dividemix2args-8'/1]).
-export(['op-numeric-dividemix2args-9'/1]).
-export(['K-NumericDivide-1'/1]).
-export(['K-NumericDivide-2'/1]).
-export(['K-NumericDivide-3'/1]).
-export(['K-NumericDivide-4'/1]).
-export(['K-NumericDivide-5'/1]).
-export(['K-NumericDivide-6'/1]).
-export(['K-NumericDivide-7'/1]).
-export(['K-NumericDivide-8'/1]).
-export(['K-NumericDivide-9'/1]).
-export(['K-NumericDivide-10'/1]).
-export(['K-NumericDivide-11'/1]).
-export(['K-NumericDivide-12'/1]).
-export(['K-NumericDivide-13'/1]).
-export(['K-NumericDivide-14'/1]).
-export(['K-NumericDivide-15'/1]).
-export(['K-NumericDivide-16'/1]).
-export(['K-NumericDivide-17'/1]).
-export(['K-NumericDivide-18'/1]).
-export(['K-NumericDivide-19'/1]).
-export(['K-NumericDivide-20'/1]).
-export(['K-NumericDivide-21'/1]).
-export(['K-NumericDivide-22'/1]).
-export(['K-NumericDivide-23'/1]).
-export(['K-NumericDivide-24'/1]).
-export(['K-NumericDivide-25'/1]).
-export(['K-NumericDivide-26'/1]).
-export(['K-NumericDivide-27'/1]).
-export(['K-NumericDivide-28'/1]).
-export(['K-NumericDivide-29'/1]).
-export(['K-NumericDivide-30'/1]).
-export(['K-NumericDivide-31'/1]).
-export(['K-NumericDivide-32'/1]).
-export(['K-NumericDivide-33'/1]).
-export(['K-NumericDivide-34'/1]).
-export(['K-NumericDivide-35'/1]).
-export(['K-NumericDivide-36'/1]).
-export(['K-NumericDivide-37'/1]).
-export(['K-NumericDivide-38'/1]).
-export(['K-NumericDivide-39'/1]).
-export(['K-NumericDivide-40'/1]).
-export(['K-NumericDivide-41'/1]).
-export(['K-NumericDivide-42'/1]).
-export(['K-NumericDivide-43'/1]).
-export(['K2-NumericDivide-1'/1]).
-export(['K2-NumericDivide-2'/1]).
-export(['K2-NumericDivide-3'/1]).
-export(['K2-NumericDivide-4'/1]).
-export(['K2-NumericDivide-5'/1]).
-export(['K2-NumericDivide-6'/1]).
-export(['K2-NumericDivide-7'/1]).
-export(['K2-NumericDivide-8'/1]).
-export(['K2-NumericDivide-9'/1]).
-export(['K2-NumericDivide-10'/1]).
-export(['K2-NumericDivide-11'/1]).
-export(['K2-NumericDivide-12'/1]).
-export(['K2-NumericDivide-13'/1]).
-export(['K2-NumericDivide-14'/1]).
-export(['K2-NumericDivide-15'/1]).
-export(['K2-NumericDivide-16'/1]).
-export(['K2-NumericDivide-17'/1]).
-export(['op-numeric-divide-1'/1]).
-export(['cbcl-numeric-divide-001'/1]).
-export(['cbcl-numeric-divide-002'/1]).
-export(['cbcl-numeric-divide-003'/1]).
-export(['cbcl-numeric-divide-004'/1]).
-export(['cbcl-numeric-divide-005'/1]).
-export(['cbcl-numeric-divide-006'/1]).
-export(['cbcl-numeric-divide-007'/1]).
-export(['cbcl-numeric-divide-008'/1]).
-export(['cbcl-numeric-divide-009'/1]).
-export(['cbcl-numeric-divide-010'/1]).
-export(['cbcl-numeric-divide-011'/1]).
-export(['cbcl-numeric-divide-012'/1]).
-export(['cbcl-numeric-divide-013'/1]).
-export(['cbcl-numeric-divide-014'/1]).
-export(['cbcl-numeric-divide-015'/1]).
-export(['op-numeric-divide-big-01'/1]).
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
   {group, group_2}, 
   {group, group_3}, 
   {group, group_4}, 
   {group, group_5}
   ].
groups() -> [
   {group_0, [parallel], [
    'op-numeric-divideint2args-1', 
    'op-numeric-divideint2args-2', 
    'op-numeric-divideint2args-3', 
    'op-numeric-divideint2args-4', 
    'op-numeric-divideint2args-5', 
    'op-numeric-divideintg2args-1', 
    'op-numeric-divideintg2args-2', 
    'op-numeric-divideintg2args-3', 
    'op-numeric-divideintg2args-4', 
    'op-numeric-divideintg2args-5', 
    'op-numeric-divideintg2args-6', 
    'op-numeric-dividedec2args-1', 
    'op-numeric-dividedec2args-2', 
    'op-numeric-dividedec2args-3', 
    'op-numeric-dividedec2args-4', 
    'op-numeric-dividedec2args-5', 
    'op-numeric-dividedbl2args-1', 
    'op-numeric-dividedbl2args-2', 
    'op-numeric-dividedbl2args-3', 
    'op-numeric-dividedbl2args-4', 
    'op-numeric-divideflt2args-1', 
    'op-numeric-divideflt2args-2', 
    'op-numeric-divideflt2args-3']}, 
   {group_1, [parallel], [
    'op-numeric-divideflt2args-4', 
    'op-numeric-dividelng2args-1', 
    'op-numeric-dividelng2args-2', 
    'op-numeric-dividelng2args-3', 
    'op-numeric-dividelng2args-4', 
    'op-numeric-dividelng2args-5', 
    'op-numeric-divideusht2args-1', 
    'op-numeric-divideusht2args-2', 
    'op-numeric-dividenint2args-1', 
    'op-numeric-dividenint2args-2', 
    'op-numeric-dividenint2args-3', 
    'op-numeric-dividenint2args-4', 
    'op-numeric-dividenint2args-5', 
    'op-numeric-dividepint2args-1', 
    'op-numeric-dividepint2args-2', 
    'op-numeric-dividepint2args-3', 
    'op-numeric-dividepint2args-4', 
    'op-numeric-dividepint2args-5', 
    'op-numeric-divideulng2args-1', 
    'op-numeric-divideulng2args-2', 
    'op-numeric-dividenpi2args-1', 
    'op-numeric-dividenpi2args-2', 
    'op-numeric-dividenpi2args-3', 
    'op-numeric-dividenpi2args-4']}, 
   {group_2, [parallel], [
    'op-numeric-dividenni2args-1', 
    'op-numeric-dividenni2args-2', 
    'op-numeric-dividesht2args-1', 
    'op-numeric-dividesht2args-2', 
    'op-numeric-dividesht2args-3', 
    'op-numeric-dividesht2args-4', 
    'op-numeric-dividesht2args-5', 
    'op-numeric-dividemix2args-1', 
    'op-numeric-dividemix2args-2', 
    'op-numeric-dividemix2args-3', 
    'op-numeric-dividemix2args-4', 
    'op-numeric-dividemix2args-5', 
    'op-numeric-dividemix2args-6', 
    'op-numeric-dividemix2args-7', 
    'op-numeric-dividemix2args-8', 
    'op-numeric-dividemix2args-9', 
    'K-NumericDivide-1', 
    'K-NumericDivide-2', 
    'K-NumericDivide-3', 
    'K-NumericDivide-4', 
    'K-NumericDivide-5', 
    'K-NumericDivide-6', 
    'K-NumericDivide-7', 
    'K-NumericDivide-8']}, 
   {group_3, [parallel], [
    'K-NumericDivide-9', 
    'K-NumericDivide-10', 
    'K-NumericDivide-11', 
    'K-NumericDivide-12', 
    'K-NumericDivide-13', 
    'K-NumericDivide-14', 
    'K-NumericDivide-15', 
    'K-NumericDivide-16', 
    'K-NumericDivide-17', 
    'K-NumericDivide-18', 
    'K-NumericDivide-19', 
    'K-NumericDivide-20', 
    'K-NumericDivide-21', 
    'K-NumericDivide-22', 
    'K-NumericDivide-23', 
    'K-NumericDivide-24', 
    'K-NumericDivide-25', 
    'K-NumericDivide-26', 
    'K-NumericDivide-27', 
    'K-NumericDivide-28', 
    'K-NumericDivide-29', 
    'K-NumericDivide-30', 
    'K-NumericDivide-31', 
    'K-NumericDivide-32']}, 
   {group_4, [parallel], [
    'K-NumericDivide-33', 
    'K-NumericDivide-34', 
    'K-NumericDivide-35', 
    'K-NumericDivide-36', 
    'K-NumericDivide-37', 
    'K-NumericDivide-38', 
    'K-NumericDivide-39', 
    'K-NumericDivide-40', 
    'K-NumericDivide-41', 
    'K-NumericDivide-42', 
    'K-NumericDivide-43', 
    'K2-NumericDivide-1', 
    'K2-NumericDivide-2', 
    'K2-NumericDivide-3', 
    'K2-NumericDivide-4', 
    'K2-NumericDivide-5', 
    'K2-NumericDivide-6', 
    'K2-NumericDivide-7', 
    'K2-NumericDivide-8', 
    'K2-NumericDivide-9', 
    'K2-NumericDivide-10', 
    'K2-NumericDivide-11', 
    'K2-NumericDivide-12', 
    'K2-NumericDivide-13']}, 
   {group_5, [parallel], [
    'K2-NumericDivide-14', 
    'K2-NumericDivide-15', 
    'K2-NumericDivide-16', 
    'K2-NumericDivide-17', 
    'op-numeric-divide-1', 
    'cbcl-numeric-divide-001', 
    'cbcl-numeric-divide-002', 
    'cbcl-numeric-divide-003', 
    'cbcl-numeric-divide-004', 
    'cbcl-numeric-divide-005', 
    'cbcl-numeric-divide-006', 
    'cbcl-numeric-divide-007', 
    'cbcl-numeric-divide-008', 
    'cbcl-numeric-divide-009', 
    'cbcl-numeric-divide-010', 
    'cbcl-numeric-divide-011', 
    'cbcl-numeric-divide-012', 
    'cbcl-numeric-divide-013', 
    'cbcl-numeric-divide-014', 
    'cbcl-numeric-divide-015', 
    'op-numeric-divide-big-01']}].

'op-numeric-divideint2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:int(\"-2147483648\") div xs:int(\"-2147483648\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-divideint2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-divideint2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:round-half-to-even((xs:int(\"-1873914410\") div xs:int(\"-2147483648\")),10)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-divideint2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0.8726093965") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-divideint2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:round-half-to-even((xs:int(\"2147483647\") div xs:int(\"-2147483648\")),10)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-divideint2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-0.9999999995") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-divideint2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:round-half-to-even((xs:int(\"-2147483648\") div xs:int(\"-1873914410\")),10)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-divideint2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1.145988118") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-divideint2args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:round-half-to-even((xs:int(\"-2147483648\") div xs:int(\"2147483647\")),10)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-divideint2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1.0000000005") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-divideintg2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:integer(\"-999999999999999999\") div xs:integer(\"-999999999999999999\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-divideintg2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-divideintg2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:round-half-to-even((xs:integer(\"830993497117024304\") div xs:integer(\"-999999999999999999\")),18)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-divideintg2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-0.830993497117024305") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"-0.830993497117") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-divideintg2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:integer(\"999999999999999999\") div xs:integer(\"-999999999999999999\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-divideintg2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-divideintg2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:round-half-to-even((xs:integer(\"-999999999999999999\") div xs:integer(\"830993497117024304\")),18)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-divideintg2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-1.203378851301859738") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"-1.203378851301") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-divideintg2args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:integer(\"-999999999999999999\") div xs:integer(\"999999999999999999\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-divideintg2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-divideintg2args-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:integer(\"-999999999999999999\") div xs:integer(\"999999999999999999\")) instance of xs:decimal", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-divideintg2args-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-dividedec2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:decimal(\"-999999999999999999\") div xs:decimal(\"-999999999999999999\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-dividedec2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-dividedec2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:round-half-to-even((xs:decimal(\"617375191608514839\") div xs:decimal(\"-999999999999999999\")),18)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-dividedec2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-0.61737519160851484") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"-0.6173751916085") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-dividedec2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:decimal(\"999999999999999999\") div xs:decimal(\"-999999999999999999\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-dividedec2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-dividedec2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:round-half-to-even((xs:decimal(\"-999999999999999999\") div xs:decimal(\"617375191608514839\")),18)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-dividedec2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-1.619760582531006901") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"-1.619760582531") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-dividedec2args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:decimal(\"-999999999999999999\") div xs:decimal(\"999999999999999999\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-dividedec2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-dividedbl2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:double(\"-1.7976931348623157E308\") div xs:double(\"-1.7976931348623157E308\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-dividedbl2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-dividedbl2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:double(\"0\") div xs:double(\"-1.7976931348623157E308\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-dividedbl2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-dividedbl2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:double(\"1.7976931348623157E308\") div xs:double(\"-1.7976931348623157E308\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-dividedbl2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-dividedbl2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:double(\"-1.7976931348623157E308\") div xs:double(\"1.7976931348623157E308\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-dividedbl2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-divideflt2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:float(\"-3.4028235E38\") div xs:float(\"-3.4028235E38\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-divideflt2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-divideflt2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:float(\"0\") div xs:float(\"-3.4028235E38\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-divideflt2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-divideflt2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:float(\"3.4028235E38\") div xs:float(\"-3.4028235E38\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-divideflt2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-divideflt2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:float(\"-3.4028235E38\") div xs:float(\"3.4028235E38\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-divideflt2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-dividelng2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:long(\"-92233720368547758\") div xs:long(\"-92233720368547758\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-dividelng2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-dividelng2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:round-half-to-even((xs:long(\"-47175562203048468\") div xs:long(\"-92233720368547758\")),17)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-dividelng2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0.51147847028770199") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"0.511478470287") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-dividelng2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:long(\"92233720368547758\") div xs:long(\"-92233720368547758\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-dividelng2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-dividelng2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:round-half-to-even((xs:long(\"-92233720368547758\") div xs:long(\"-47175562203048468\")),17)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-dividelng2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"1.95511650654133906") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"1.955116506541") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-dividelng2args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:long(\"-92233720368547758\") div xs:long(\"92233720368547758\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-dividelng2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-divideusht2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:unsignedShort(\"0\") div xs:unsignedShort(\"44633\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-divideusht2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-divideusht2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:unsignedShort(\"0\") div xs:unsignedShort(\"65535\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-divideusht2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-dividenint2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:negativeInteger(\"-999999999999999999\") div xs:negativeInteger(\"-999999999999999999\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-dividenint2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-dividenint2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:round-half-to-even((xs:negativeInteger(\"-297014075999096793\") div xs:negativeInteger(\"-999999999999999999\")),18)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-dividenint2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0.297014075999096793") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"0.297014075999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-dividenint2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:negativeInteger(\"-1\") div xs:negativeInteger(\"-999999999999999999\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-dividenint2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0.000000000000000001") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"0.000000000000000001000000000000000001") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-dividenint2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:round-half-to-even((xs:negativeInteger(\"-999999999999999999\") div xs:negativeInteger(\"-297014075999096793\")),18)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-dividenint2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"3.366843799022646172") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"3.366843799022") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-dividenint2args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:negativeInteger(\"-999999999999999999\") div xs:negativeInteger(\"-1\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-dividenint2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-dividepint2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:positiveInteger(\"1\") div xs:positiveInteger(\"1\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-dividepint2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-dividepint2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:positiveInteger(\"52704602390610033\") div xs:positiveInteger(\"1\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-dividepint2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"52704602390610033") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-dividepint2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:positiveInteger(\"999999999999999999\") div xs:positiveInteger(\"1\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-dividepint2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-dividepint2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:round-half-to-even((xs:positiveInteger(\"1\") div xs:positiveInteger(\"52704602390610033\")),17)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-dividepint2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0.00000000000000002") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-dividepint2args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:positiveInteger(\"1\") div xs:positiveInteger(\"999999999999999999\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-dividepint2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0.000000000000000001") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"0.000000000000000001000000000000000001") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-divideulng2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:unsignedLong(\"0\") div xs:unsignedLong(\"130747108607674654\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-divideulng2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-divideulng2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:unsignedLong(\"0\") div xs:unsignedLong(\"184467440737095516\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-divideulng2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-dividenpi2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:nonPositiveInteger(\"-999999999999999999\") div xs:nonPositiveInteger(\"-999999999999999999\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-dividenpi2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-dividenpi2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:round-half-to-even((xs:nonPositiveInteger(\"-475688437271870490\") div xs:nonPositiveInteger(\"-999999999999999999\")),18)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-dividenpi2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0.47568843727187049") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"0.475688437271") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-dividenpi2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:nonPositiveInteger(\"0\") div xs:nonPositiveInteger(\"-999999999999999999\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-dividenpi2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-dividenpi2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:round-half-to-even((xs:nonPositiveInteger(\"-999999999999999999\") div xs:nonPositiveInteger(\"-475688437271870490\")),18)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-dividenpi2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"2.102216328265447024") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"2.102216328265") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-dividenni2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:nonNegativeInteger(\"0\") div xs:nonNegativeInteger(\"303884545991464527\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-dividenni2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-dividenni2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:nonNegativeInteger(\"0\") div xs:nonNegativeInteger(\"999999999999999999\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-dividenni2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-dividesht2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:short(\"-32768\") div xs:short(\"-32768\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-dividesht2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-dividesht2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:round-half-to-even((xs:short(\"-5324\") div xs:short(\"-32768\")),5)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-dividesht2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0.16248") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-dividesht2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:short(\"32767\") div xs:short(\"-32768\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-dividesht2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"-0.999969482421875") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"-0.999969482421") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-dividesht2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:round-half-to-even((xs:short(\"-32768\") div xs:short(\"-5324\")),5)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-dividesht2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"6.15477") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-dividesht2args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:short(\"-32768\") div xs:short(\"32767\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-dividesht2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"abs($result + 1.000030518509475997) lt 1e-12") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-dividemix2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "() div 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-dividemix2args-1.xq"), Qry1),
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
'op-numeric-dividemix2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1 div '1'", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-dividemix2args-2.xq"), Qry1),
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
'op-numeric-dividemix2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1 div xs:integer('1')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-dividemix2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-dividemix2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1 div <a> 2 </a>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-dividemix2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0.5") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-dividemix2args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1 div <a> <b> 2 </b> </a>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-dividemix2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0.5") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-dividemix2args-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1 div <a> <b> 2</b> <c> 2</c> </a>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-dividemix2args-6.xq"), Qry1),
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
'op-numeric-dividemix2args-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<a> 1 </a> div <b> 2 </b>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-dividemix2args-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0.5") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-dividemix2args-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1 div <a> x </a>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-dividemix2args-8.xq"), Qry1),
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
'op-numeric-dividemix2args-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1 div <a/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-dividemix2args-9.xq"), Qry1),
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
'K-NumericDivide-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:double(6) div xs:double(2) eq 3", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericDivide-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericDivide-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:decimal(6) div xs:decimal(2) eq 3", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericDivide-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericDivide-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:integer(6) div xs:integer(2) eq 3", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericDivide-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericDivide-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:float(6) div xs:float(2) eq 3", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericDivide-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericDivide-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:double(5) div xs:double(2) eq 2.5", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericDivide-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericDivide-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:double(5) div xs:double(2) ne 2.6", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericDivide-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericDivide-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:float(5) div xs:float(2) eq 2.5", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericDivide-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericDivide-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:float(5) div xs:float(2) ne 2.6", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericDivide-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericDivide-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:integer(5) div xs:integer(2) eq 2.5", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericDivide-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericDivide-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:integer(5) div xs:integer(2) ne 2.6", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericDivide-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericDivide-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:decimal(5) div xs:decimal(2) eq 2.5", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericDivide-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericDivide-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:decimal(5) div xs:decimal(2) ne 2.6", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericDivide-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericDivide-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "5 div 2 ne 2.6", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericDivide-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericDivide-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "5.0 div 2.0 eq 2.5", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericDivide-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericDivide-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "5.0 div 2.0 ne 2.6", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericDivide-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericDivide-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:decimal(6) div xs:integer(2)) instance of xs:decimal", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericDivide-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericDivide-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:integer(6) div xs:decimal(2)) instance of xs:decimal", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericDivide-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericDivide-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:integer(6) div xs:integer(2)) instance of xs:decimal", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericDivide-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericDivide-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:decimal(6) div xs:decimal(2)) instance of xs:decimal", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericDivide-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericDivide-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:float(6) div xs:decimal(2)) instance of xs:float", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericDivide-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericDivide-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:decimal(6) div xs:float(2)) instance of xs:float", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericDivide-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericDivide-22'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:float(6) div xs:integer(2)) instance of xs:float", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericDivide-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericDivide-23'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:integer(6) div xs:float(2)) instance of xs:float", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericDivide-23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericDivide-24'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:float(6) div xs:float(2)) instance of xs:float", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericDivide-24.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericDivide-25'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:decimal(6) div xs:double(2)) instance of xs:double", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericDivide-25.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericDivide-26'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:double(6) div xs:decimal(2)) instance of xs:double", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericDivide-26.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericDivide-27'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:double(6) div xs:float(2)) instance of xs:double", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericDivide-27.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericDivide-28'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:float(6) div xs:double(2)) instance of xs:double", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericDivide-28.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericDivide-29'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:double(6) div xs:integer(2)) instance of xs:double", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericDivide-29.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericDivide-30'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:integer(6) div xs:double(2)) instance of xs:double", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericDivide-30.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericDivide-31'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:double(6) div xs:double(2)) instance of xs:double", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericDivide-31.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericDivide-32'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "\"3\" div \"3\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericDivide-32.xq"), Qry1),
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
'K-NumericDivide-33'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:double(3) div \"3\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericDivide-33.xq"), Qry1),
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
'K-NumericDivide-34'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:double(3) div xs:untypedAtomic(\"3\")) eq 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericDivide-34.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericDivide-35'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:untypedAtomic(\"3\") div xs:double(3)) eq 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericDivide-35.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NumericDivide-36'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "10 div3", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericDivide-36.xq"), Qry1),
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
'K-NumericDivide-37'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "10div 3", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericDivide-37.xq"), Qry1),
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
'K-NumericDivide-38'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "10div3", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericDivide-38.xq"), Qry1),
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
'K-NumericDivide-39'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(() div ())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericDivide-39.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
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
'K-NumericDivide-40'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(1 div ())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericDivide-40.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
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
'K-NumericDivide-41'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(() div 1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericDivide-41.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
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
'K-NumericDivide-42'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(xs:double(3) div ())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericDivide-42.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
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
'K-NumericDivide-43'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(() div xs:decimal(1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NumericDivide-43.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
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
'K2-NumericDivide-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1 div 0", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-NumericDivide-1.xq"), Qry1),
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
'K2-NumericDivide-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1 div 0.0", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-NumericDivide-2.xq"), Qry1),
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
'K2-NumericDivide-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1 div +0.0", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-NumericDivide-3.xq"), Qry1),
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
'K2-NumericDivide-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1 div -0.0", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-NumericDivide-4.xq"), Qry1),
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
'K2-NumericDivide-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1 div 0e0", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-NumericDivide-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "INF") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-NumericDivide-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "-1 div 0e0", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-NumericDivide-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-INF") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-NumericDivide-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1 div xs:float(0)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-NumericDivide-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "INF") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-NumericDivide-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "-1 div xs:float(0)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-NumericDivide-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-INF") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-NumericDivide-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "+0e0 div -0e0", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-NumericDivide-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "NaN") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-NumericDivide-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "+0e0 div +0e0", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-NumericDivide-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "NaN") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-NumericDivide-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "-0e0 div -0e0", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-NumericDivide-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "NaN") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-NumericDivide-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "-0e0 div +0e0", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-NumericDivide-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "NaN") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-NumericDivide-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "+3 div +0e0", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-NumericDivide-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "INF") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-NumericDivide-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "-3 div +0e0", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-NumericDivide-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-INF") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-NumericDivide-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "+3 div -0e0", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-NumericDivide-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-INF") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-NumericDivide-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "-3 div -0e0", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-NumericDivide-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "INF") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-NumericDivide-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(div div div))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-NumericDivide-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-numeric-divide-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $x in (1, xs:decimal(2), xs:float(3), xs:double(4), xs:untypedAtomic(5)), 
                $y in (6, xs:decimal(6), xs:float(6), xs:double(6), xs:untypedAtomic(6)),
                $result in ($x div $y)
            return 
                if ($result instance of xs:integer) then \"integer\"
                else if ($result instance of xs:decimal) then \"decimal\" 
                else if ($result instance of xs:double) then \"double\"
                else if ($result instance of xs:float) then \"float\"
                else error() 
       ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-divide-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "decimal decimal float double double decimal decimal float double double float float float double double double double double double double double double double double double") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-numeric-divide-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:square($arg as xs:double) as xs:double { $arg * $arg }; 
      	xs:double('NaN') div local:square(7)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-numeric-divide-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "NaN") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-numeric-divide-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:square($arg as xs:double) as xs:double { $arg * $arg }; 
      	local:square(7) div xs:double('NaN')
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-numeric-divide-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "NaN") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-numeric-divide-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:square($arg as xs:double) as xs:double { $arg * $arg }; 
      	local:square(7) div 1e0
      	", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-numeric-divide-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "49") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-numeric-divide-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:square($arg as xs:double) as xs:double { $arg * $arg }; 
      	local:square(7) div -1e0
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-numeric-divide-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-49") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-numeric-divide-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:square($arg as xs:float) as xs:float { $arg * $arg }; 
      	xs:float('NaN') div local:square(7)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-numeric-divide-005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "NaN") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-numeric-divide-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:square($arg as xs:float) as xs:float { $arg * $arg }; 
      	local:square(7) div xs:float('NaN')
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-numeric-divide-006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "NaN") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-numeric-divide-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:square($arg as xs:float) as xs:float { $arg * $arg }; 
      	local:square(7) div xs:float(1)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-numeric-divide-007.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "49") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-numeric-divide-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:square($arg as xs:float) as xs:float { $arg * $arg }; 
      	local:square(7) div xs:float(-1)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-numeric-divide-008.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-49") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-numeric-divide-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:square($arg as xs:decimal) as xs:decimal { $arg * $arg }; 
      	local:square(2.0) div 0.0
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-numeric-divide-009.xq"), Qry1),
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
'cbcl-numeric-divide-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:square($arg as xs:decimal) as xs:decimal { $arg * $arg }; 
      	local:square(7.0) div 1.0
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-numeric-divide-010.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "49") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-numeric-divide-011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:square($arg as xs:decimal) as xs:decimal { $arg * $arg }; 
      	local:square(7.0) div -1.0
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-numeric-divide-011.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-49") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-numeric-divide-012'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:square($arg as xs:integer) as xs:integer { $arg * $arg }; 
      	local:square(2) div 0
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-numeric-divide-012.xq"), Qry1),
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
'cbcl-numeric-divide-013'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:square($arg as xs:integer) as xs:integer { $arg * $arg }; 
      	local:square(7) div 1
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-numeric-divide-013.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "49") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-numeric-divide-014'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:square($arg as xs:integer) as xs:integer { $arg * $arg }; 
      	local:square(7) div -1
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-numeric-divide-014.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-49") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-numeric-divide-015'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "10000000000000000000000000000.0 div 0.1 gt 0", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-numeric-divide-015.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"FOAR0002") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FOAR0002 " ++ binary_to_list(F)};
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
'op-numeric-divide-big-01'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(10000000000000000000000000000.0 div 0.1) cast as xs:string", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-numeric-divide-big-01.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"FOAR0002") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FOAR0002 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_string_value(Res, "100000000000000000000000000000") of 
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