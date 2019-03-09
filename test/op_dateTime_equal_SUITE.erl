-module('op_dateTime_equal_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['op-dateTime-equal2args-1'/1]).
-export(['op-dateTime-equal2args-2'/1]).
-export(['op-dateTime-equal2args-3'/1]).
-export(['op-dateTime-equal2args-4'/1]).
-export(['op-dateTime-equal2args-5'/1]).
-export(['op-dateTime-equal2args-6'/1]).
-export(['op-dateTime-equal2args-7'/1]).
-export(['op-dateTime-equal2args-8'/1]).
-export(['op-dateTime-equal2args-9'/1]).
-export(['op-dateTime-equal2args-10'/1]).
-export(['op-dateTime-equal2args-11'/1]).
-export(['op-dateTime-equal2args-12'/1]).
-export(['op-dateTime-equal2args-13'/1]).
-export(['op-dateTime-equal2args-14'/1]).
-export(['op-dateTime-equal2args-15'/1]).
-export(['op-dateTime-equal2args-16'/1]).
-export(['op-dateTime-equal2args-17'/1]).
-export(['op-dateTime-equal2args-18'/1]).
-export(['op-dateTime-equal2args-19'/1]).
-export(['op-dateTime-equal2args-20'/1]).
-export(['K-DateTimeEQ-1'/1]).
-export(['K-DateTimeEQ-2'/1]).
-export(['K-DateTimeEQ-3'/1]).
-export(['K-DateTimeEQ-4'/1]).
-export(['K-DateTimeEQ-5'/1]).
-export(['K-DateTimeEQ-6'/1]).
-export(['K-DateTimeEQ-7'/1]).
-export(['K-DateTimeEQ-8'/1]).
-export(['K-DateTimeEQ-9'/1]).
-export(['K-DateTimeEQ-10'/1]).
-export(['K-DateTimeEQ-11'/1]).
-export(['K-DateTimeEQ-12'/1]).
-export(['K-DateTimeEQ-13'/1]).
-export(['K-DateTimeEQ-14'/1]).
-export(['K-DateTimeEQ-15'/1]).
-export(['K-DateTimeEQ-16'/1]).
-export(['K-DateTimeEQ-17'/1]).
-export(['K-DateTimeEQ-18'/1]).
-export(['K-DateTimeEQ-19'/1]).
-export(['K-DateTimeEQ-20'/1]).
-export(['K-DateTimeEQ-21'/1]).
-export(['K-DateTimeEQ-22'/1]).
-export(['K-DateTimeEQ-23'/1]).
-export(['K-DateTimeEQ-24'/1]).
-export(['K-DateTimeEQ-25'/1]).
-export(['K-DateTimeEQ-26'/1]).
-export(['K-DateTimeEQ-27'/1]).
-export(['K-DateTimeEQ-28'/1]).
-export(['K-DateTimeEQ-29'/1]).
-export(['K-DateTimeEQ-30'/1]).
-export(['K-DateTimeEQ-31'/1]).
-export(['K-DateTimeEQ-32'/1]).
-export(['K2-DateTimeEQ-1'/1]).
-export(['cbcl-dateTime-equal-001'/1]).
-export(['cbcl-dateTime-equal-002'/1]).
-export(['cbcl-dateTime-equal-003'/1]).
-export(['cbcl-dateTime-equal-004'/1]).
-export(['cbcl-dateTime-equal-005'/1]).
-export(['cbcl-dateTime-equal-006'/1]).
-export(['cbcl-dateTime-equal-007'/1]).
-export(['cbcl-dateTime-equal-008'/1]).
-export(['cbcl-dateTime-equal-009'/1]).
-export(['cbcl-dateTime-equal-010'/1]).
-export(['cbcl-dateTime-equal-011'/1]).
-export(['cbcl-dateTime-equal-012'/1]).
-export(['cbcl-dateTime-equal-013'/1]).
-export(['cbcl-dateTime-equal-014'/1]).
-export(['cbcl-dateTime-equal-015'/1]).
-export(['cbcl-dateTime-equal-016'/1]).
-export(['cbcl-dateTime-equal-017'/1]).
-export(['cbcl-dateTime-equal-018'/1]).
-export(['UnionType-equal-01'/1]).
-export(['UnionType-equal-02'/1]).
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
   {group, group_3}
   ].
groups() -> [
   {group_0, [parallel], [
    'op-dateTime-equal2args-1', 
    'op-dateTime-equal2args-2', 
    'op-dateTime-equal2args-3', 
    'op-dateTime-equal2args-4', 
    'op-dateTime-equal2args-5', 
    'op-dateTime-equal2args-6', 
    'op-dateTime-equal2args-7', 
    'op-dateTime-equal2args-8', 
    'op-dateTime-equal2args-9', 
    'op-dateTime-equal2args-10', 
    'op-dateTime-equal2args-11', 
    'op-dateTime-equal2args-12', 
    'op-dateTime-equal2args-13', 
    'op-dateTime-equal2args-14', 
    'op-dateTime-equal2args-15', 
    'op-dateTime-equal2args-16', 
    'op-dateTime-equal2args-17', 
    'op-dateTime-equal2args-18', 
    'op-dateTime-equal2args-19', 
    'op-dateTime-equal2args-20', 
    'K-DateTimeEQ-1', 
    'K-DateTimeEQ-2', 
    'K-DateTimeEQ-3']}, 
   {group_1, [parallel], [
    'K-DateTimeEQ-4', 
    'K-DateTimeEQ-5', 
    'K-DateTimeEQ-6', 
    'K-DateTimeEQ-7', 
    'K-DateTimeEQ-8', 
    'K-DateTimeEQ-9', 
    'K-DateTimeEQ-10', 
    'K-DateTimeEQ-11', 
    'K-DateTimeEQ-12', 
    'K-DateTimeEQ-13', 
    'K-DateTimeEQ-14', 
    'K-DateTimeEQ-15', 
    'K-DateTimeEQ-16', 
    'K-DateTimeEQ-17', 
    'K-DateTimeEQ-18', 
    'K-DateTimeEQ-19', 
    'K-DateTimeEQ-20', 
    'K-DateTimeEQ-21', 
    'K-DateTimeEQ-22', 
    'K-DateTimeEQ-23', 
    'K-DateTimeEQ-24', 
    'K-DateTimeEQ-25', 
    'K-DateTimeEQ-26', 
    'K-DateTimeEQ-27']}, 
   {group_2, [parallel], [
    'K-DateTimeEQ-28', 
    'K-DateTimeEQ-29', 
    'K-DateTimeEQ-30', 
    'K-DateTimeEQ-31', 
    'K-DateTimeEQ-32', 
    'K2-DateTimeEQ-1', 
    'cbcl-dateTime-equal-001', 
    'cbcl-dateTime-equal-002', 
    'cbcl-dateTime-equal-003', 
    'cbcl-dateTime-equal-004', 
    'cbcl-dateTime-equal-005', 
    'cbcl-dateTime-equal-006', 
    'cbcl-dateTime-equal-007', 
    'cbcl-dateTime-equal-008', 
    'cbcl-dateTime-equal-009', 
    'cbcl-dateTime-equal-010', 
    'cbcl-dateTime-equal-011', 
    'cbcl-dateTime-equal-012', 
    'cbcl-dateTime-equal-013', 
    'cbcl-dateTime-equal-014', 
    'cbcl-dateTime-equal-015', 
    'cbcl-dateTime-equal-016', 
    'cbcl-dateTime-equal-017', 
    'cbcl-dateTime-equal-018']}, 
   {group_3, [parallel], [
    'UnionType-equal-01', 
    'UnionType-equal-02']}].
environment('union-List-defined-Types',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, [{filename:join(__BaseDir, "../prod/SchemaImport/unionListDefined.xsd"),"http://www.w3.org/XQueryTest/unionListDefined"}]}, 
{resources, []}, 
{modules, []}
].
'op-dateTime-equal2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"1970-01-01T00:00:00Z\") eq xs:dateTime(\"1970-01-01T00:00:00Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-dateTime-equal2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-dateTime-equal2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"1996-04-07T01:40:52Z\") eq xs:dateTime(\"1970-01-01T00:00:00Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-dateTime-equal2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-dateTime-equal2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"2030-12-31T23:59:59Z\") eq xs:dateTime(\"1970-01-01T00:00:00Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-dateTime-equal2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-dateTime-equal2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"1970-01-01T00:00:00Z\") eq xs:dateTime(\"1996-04-07T01:40:52Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-dateTime-equal2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-dateTime-equal2args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"1970-01-01T00:00:00Z\") eq xs:dateTime(\"2030-12-31T23:59:59Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-dateTime-equal2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-dateTime-equal2args-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"1970-01-01T00:00:00Z\") ne xs:dateTime(\"1970-01-01T00:00:00Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-dateTime-equal2args-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-dateTime-equal2args-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"1996-04-07T01:40:52Z\") ne xs:dateTime(\"1970-01-01T00:00:00Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-dateTime-equal2args-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-dateTime-equal2args-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"2030-12-31T23:59:59Z\") ne xs:dateTime(\"1970-01-01T00:00:00Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-dateTime-equal2args-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-dateTime-equal2args-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"1970-01-01T00:00:00Z\") ne xs:dateTime(\"1996-04-07T01:40:52Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-dateTime-equal2args-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-dateTime-equal2args-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"1970-01-01T00:00:00Z\") ne xs:dateTime(\"2030-12-31T23:59:59Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-dateTime-equal2args-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-dateTime-equal2args-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"1970-01-01T00:00:00Z\") le xs:dateTime(\"1970-01-01T00:00:00Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-dateTime-equal2args-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-dateTime-equal2args-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"1996-04-07T01:40:52Z\") le xs:dateTime(\"1970-01-01T00:00:00Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-dateTime-equal2args-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-dateTime-equal2args-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"2030-12-31T23:59:59Z\") le xs:dateTime(\"1970-01-01T00:00:00Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-dateTime-equal2args-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-dateTime-equal2args-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"1970-01-01T00:00:00Z\") le xs:dateTime(\"1996-04-07T01:40:52Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-dateTime-equal2args-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-dateTime-equal2args-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"1970-01-01T00:00:00Z\") le xs:dateTime(\"2030-12-31T23:59:59Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-dateTime-equal2args-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-dateTime-equal2args-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"1970-01-01T00:00:00Z\") ge xs:dateTime(\"1970-01-01T00:00:00Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-dateTime-equal2args-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-dateTime-equal2args-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"1996-04-07T01:40:52Z\") ge xs:dateTime(\"1970-01-01T00:00:00Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-dateTime-equal2args-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-dateTime-equal2args-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"2030-12-31T23:59:59Z\") ge xs:dateTime(\"1970-01-01T00:00:00Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-dateTime-equal2args-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-dateTime-equal2args-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"1970-01-01T00:00:00Z\") ge xs:dateTime(\"1996-04-07T01:40:52Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-dateTime-equal2args-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'op-dateTime-equal2args-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"1970-01-01T00:00:00Z\") ge xs:dateTime(\"2030-12-31T23:59:59Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "op-dateTime-equal2args-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DateTimeEQ-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"2004-08-12T23:01:04.12\") eq xs:dateTime(\"2004-08-12T23:01:04.12\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateTimeEQ-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DateTimeEQ-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(xs:dateTime(\"2004-08-12T23:01:04.12\") eq xs:dateTime(\"2004-08-12T23:01:04.13\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateTimeEQ-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DateTimeEQ-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"2004-08-12T23:01:05.12\") ne xs:dateTime(\"2004-08-12T23:01:04.12\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateTimeEQ-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DateTimeEQ-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(xs:dateTime(\"2004-07-12T23:01:04.12\") ne xs:dateTime(\"2004-07-12T23:01:04.12\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateTimeEQ-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DateTimeEQ-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"1999-12-04T16:00:12.345-00:00\") eq xs:dateTime(\"1999-12-04T16:00:12.345Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateTimeEQ-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DateTimeEQ-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"1999-12-04T16:00:12.345+00:00\") eq xs:dateTime(\"1999-12-04T16:00:12.345Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateTimeEQ-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DateTimeEQ-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"1999-12-04T16:00:12.345Z\") eq xs:dateTime(\"1999-12-04T16:00:12.345Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateTimeEQ-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DateTimeEQ-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"1999-12-04T16:00:12.345-00:00\") eq xs:dateTime(\"1999-12-04T16:00:12.345+00:00\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateTimeEQ-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DateTimeEQ-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"1999-12-04T12:12:23\") eq xs:date(\"1999-12-04\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateTimeEQ-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DateTimeEQ-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"1999-12-04T12:12:23\") ne xs:date(\"1999-12-04\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateTimeEQ-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DateTimeEQ-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"1999-12-04T12:12:23\") le xs:date(\"1999-12-04\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateTimeEQ-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DateTimeEQ-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"1999-12-04T12:12:23\") lt xs:date(\"1999-12-04\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateTimeEQ-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DateTimeEQ-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"1999-12-04T12:12:23\") ge xs:date(\"1999-12-04\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateTimeEQ-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DateTimeEQ-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"1999-12-04T12:12:23\") gt xs:date(\"1999-12-04\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateTimeEQ-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DateTimeEQ-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:date(\"1999-12-04\") eq xs:dateTime(\"1999-12-04T12:12:23\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateTimeEQ-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DateTimeEQ-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:date(\"1999-12-04\") ne xs:dateTime(\"1999-12-04T12:12:23\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateTimeEQ-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DateTimeEQ-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:date(\"1999-12-04\") le xs:dateTime(\"1999-12-04T12:12:23\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateTimeEQ-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DateTimeEQ-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:date(\"1999-12-04\") lt xs:dateTime(\"1999-12-04T12:12:23\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateTimeEQ-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DateTimeEQ-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:date(\"1999-12-04\") ge xs:dateTime(\"1999-12-04T12:12:23\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateTimeEQ-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DateTimeEQ-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:date(\"1999-12-04\") gt xs:dateTime(\"1999-12-04T12:12:23\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateTimeEQ-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DateTimeEQ-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"1999-12-04T12:12:23\") eq xs:time(\"22:12:04\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateTimeEQ-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DateTimeEQ-22'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"1999-12-04T12:12:23\") ne xs:time(\"22:12:04\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateTimeEQ-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DateTimeEQ-23'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"1999-12-04T12:12:23\") le xs:time(\"22:12:04\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateTimeEQ-23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DateTimeEQ-24'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"1999-12-04T12:12:23\") lt xs:time(\"22:12:04\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateTimeEQ-24.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DateTimeEQ-25'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"1999-12-04T12:12:23\") ge xs:time(\"22:12:04\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateTimeEQ-25.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DateTimeEQ-26'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"1999-12-04T12:12:23\") gt xs:time(\"22:12:04\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateTimeEQ-26.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DateTimeEQ-27'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:time(\"22:12:04\") eq xs:dateTime(\"1999-12-04T12:12:23\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateTimeEQ-27.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DateTimeEQ-28'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:time(\"22:12:04\") ne xs:dateTime(\"1999-12-04T12:12:23\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateTimeEQ-28.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DateTimeEQ-29'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:time(\"22:12:04\") le xs:dateTime(\"1999-12-04T12:12:23\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateTimeEQ-29.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DateTimeEQ-30'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:time(\"22:12:04\") lt xs:dateTime(\"1999-12-04T12:12:23\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateTimeEQ-30.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DateTimeEQ-31'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:time(\"22:12:04\") ge xs:dateTime(\"1999-12-04T12:12:23\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateTimeEQ-31.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DateTimeEQ-32'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:time(\"22:12:04\") gt xs:dateTime(\"1999-12-04T12:12:23\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-DateTimeEQ-32.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DateTimeEQ-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"2002-03-06T00:00:00Z\") ne xs:dateTime(\"2002-03-05T00:00:00+03:00\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-DateTimeEQ-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-dateTime-equal-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:two-digit($number as xs:integer) { 
      		let $string := string($number) 
      		return if (string-length($string) lt 2) then concat('0', $string) else $string 
      	}; 
      	declare function local:dateTime($year as xs:integer, $month as xs:integer, $day as xs:integer) { 
      		let $m := local:two-digit($month), $d := local:two-digit($day) 
      		return xs:dateTime(concat($year, '-', $m, '-', $d, \"T12:00:00\")) 
      	}; 
      	not(local:dateTime(2008, 05, 12) eq xs:dateTime(\"1972-12-15T12:00:00\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-dateTime-equal-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-dateTime-equal-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	xs:dateTime(\"2008-01-30T00:01:00\") eq xs:dateTime(\"2008-01-31T01:00:00+09:00\")
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-dateTime-equal-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-dateTime-equal-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"2008-01-31T00:01:00+09:00\") eq xs:dateTime(\"2008-01-30T00:01:00\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-dateTime-equal-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-dateTime-equal-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"2008-01-31T00:01:00\") eq xs:dateTime(\"2008-01-31T00:01:00+09:00\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-dateTime-equal-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-dateTime-equal-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"2008-01-31T00:01:00+09:00\") eq xs:dateTime(\"2008-01-31T00:01:00\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-dateTime-equal-005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-dateTime-equal-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:two-digit($number as xs:integer) { 
      		let $string := string($number) 
      		return if (string-length($string) lt 2) then concat('0', $string) else $string 
      	}; 
      	declare function local:dateTime($year as xs:integer, $month as xs:integer, $day as xs:integer) { 
      		let $m := local:two-digit($month), $d := local:two-digit($day) 
      		return xs:dateTime(concat($year, '-', $m, '-', $d, \"T12:00:00\")) 
      	}; 
      	not(local:dateTime(2008, 05, 12) ne xs:dateTime(\"1972-12-15T12:00:00\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-dateTime-equal-006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-dateTime-equal-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"2008-01-30T00:01:00\") ne xs:dateTime(\"2008-01-31T00:01:00+09:00\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-dateTime-equal-007.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-dateTime-equal-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"2008-01-31T00:01:00+09:00\") ne xs:dateTime(\"2008-01-30T00:01:00\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-dateTime-equal-008.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-dateTime-equal-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"2008-01-31T00:01:00\") ne xs:dateTime(\"2008-01-31T00:01:00+09:00\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-dateTime-equal-009.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-dateTime-equal-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"2008-01-31T00:01:00+09:00\") ne xs:dateTime(\"2008-01-31T00:01:00\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-dateTime-equal-010.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-dateTime-equal-011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:dateTime($dateTime as xs:dateTime, $null as xs:boolean) { if ($null) then () else $dateTime }; exists(local:dateTime(xs:dateTime(\"1972-12-15T12:00:00\"), fn:true()) eq xs:dateTime(\"1972-12-15T12:00:00\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-dateTime-equal-011.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-dateTime-equal-012'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:dateTime($dateTime as xs:dateTime, $null as xs:boolean) { if ($null) then () else $dateTime }; local:dateTime(xs:dateTime(\"1972-12-15T12:00:00\"), fn:false()) eq xs:dateTime(\"1972-12-15T12:00:00\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-dateTime-equal-012.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-dateTime-equal-013'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:dateTime($dateTime as xs:dateTime, $null as xs:boolean) { if ($null) then () else $dateTime }; exists(local:dateTime(xs:dateTime(\"1972-12-15T12:00:00\"), fn:true()) ne xs:dateTime(\"1972-12-15T12:00:00\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-dateTime-equal-013.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-dateTime-equal-014'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:dateTime($dateTime as xs:dateTime, $null as xs:boolean) { if ($null) then () else $dateTime }; local:dateTime(xs:dateTime(\"1972-12-15T12:00:00\"), fn:false()) ne xs:dateTime(\"1972-12-15T12:00:00\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-dateTime-equal-014.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-dateTime-equal-015'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:dateTime($dateTime as xs:string, $timezone as xs:string) { 
      		xs:dateTime( concat($dateTime, $timezone) ) 
      	}; 
      	adjust-dateTime-to-timezone(local:dateTime(\"1972-12-14T00:00:00\", \"-12:00\")) eq 
      	adjust-dateTime-to-timezone(xs:dateTime(\"1972-12-15T00:00:00+12:00\"))
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-dateTime-equal-015.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-dateTime-equal-016'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare function local:dateTime($dateTime as xs:string, $timezone as xs:string) { 
      		xs:dateTime( concat($dateTime, $timezone) ) 
      	}; 
      	adjust-dateTime-to-timezone(local:dateTime(\"1972-12-14T00:00:00\", \"-12:00\")) ne 
      	adjust-dateTime-to-timezone(xs:dateTime(\"1972-12-15T00:00:00+12:00\"))
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-dateTime-equal-016.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-dateTime-equal-017'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"1972-12-15T00:00:00+12:00\") eq xs:dateTime(\"1972-12-15T00:00:01\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-dateTime-equal-017.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-dateTime-equal-018'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"1972-12-15T00:00:00+12:00\") ne xs:dateTime(\"1972-12-15T00:00:01\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-dateTime-equal-018.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UnionType-equal-01'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'UnionType-equal-02'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}.