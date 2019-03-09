-module('prod_UnaryLookup_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['UnaryLookup-001'/1]).
-export(['UnaryLookup-002'/1]).
-export(['UnaryLookup-003'/1]).
-export(['UnaryLookup-004'/1]).
-export(['UnaryLookup-005'/1]).
-export(['UnaryLookup-006'/1]).
-export(['UnaryLookup-007'/1]).
-export(['UnaryLookup-008'/1]).
-export(['UnaryLookup-009'/1]).
-export(['UnaryLookup-010'/1]).
-export(['UnaryLookup-011'/1]).
-export(['UnaryLookup-012'/1]).
-export(['UnaryLookup-013'/1]).
-export(['UnaryLookup-014'/1]).
-export(['UnaryLookup-015'/1]).
-export(['UnaryLookup-016'/1]).
-export(['UnaryLookup-017'/1]).
-export(['UnaryLookup-018'/1]).
-export(['UnaryLookup-019'/1]).
-export(['UnaryLookup-020'/1]).
-export(['UnaryLookup-021'/1]).
-export(['UnaryLookup-022'/1]).
-export(['UnaryLookup-023'/1]).
-export(['UnaryLookup-024'/1]).
-export(['UnaryLookup-025'/1]).
-export(['UnaryLookup-040'/1]).
-export(['UnaryLookup-041'/1]).
-export(['UnaryLookup-042'/1]).
-export(['UnaryLookup-043'/1]).
-export(['UnaryLookup-044'/1]).
-export(['UnaryLookup-045'/1]).
-export(['UnaryLookup-046'/1]).
-export(['UnaryLookup-047'/1]).
-export(['UnaryLookup-048'/1]).
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
   __BaseDir = filename:join(TD, "prod"),
   [{base_dir, __BaseDir}|Config].
all() -> [
   {group, group_0}, 
   {group, group_1}
   ].
groups() -> [
   {group_0, [parallel], [
    'UnaryLookup-001', 
    'UnaryLookup-002', 
    'UnaryLookup-003', 
    'UnaryLookup-004', 
    'UnaryLookup-005', 
    'UnaryLookup-006', 
    'UnaryLookup-007', 
    'UnaryLookup-008', 
    'UnaryLookup-009', 
    'UnaryLookup-010', 
    'UnaryLookup-011', 
    'UnaryLookup-012', 
    'UnaryLookup-013', 
    'UnaryLookup-014', 
    'UnaryLookup-015', 
    'UnaryLookup-016', 
    'UnaryLookup-017', 
    'UnaryLookup-018', 
    'UnaryLookup-019', 
    'UnaryLookup-020', 
    'UnaryLookup-021', 
    'UnaryLookup-022', 
    'UnaryLookup-023']}, 
   {group_1, [parallel], [
    'UnaryLookup-024', 
    'UnaryLookup-025', 
    'UnaryLookup-040', 
    'UnaryLookup-041', 
    'UnaryLookup-042', 
    'UnaryLookup-043', 
    'UnaryLookup-044', 
    'UnaryLookup-045', 
    'UnaryLookup-046', 
    'UnaryLookup-047', 
    'UnaryLookup-048']}].

'UnaryLookup-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(['a', 'b'], ['c', 'd'])[?1 eq 'c']", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UnaryLookup-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"['c', 'd']") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UnaryLookup-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $i := 1 return (['a', 'b'], ['c', 'd'])[?($i) eq 'c']", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UnaryLookup-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"['c', 'd']") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UnaryLookup-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(['a', 'b'], ['c', 'd'])[ ? 001 eq 'c']", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UnaryLookup-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"['c', 'd']") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UnaryLookup-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(['a', 'b'], ['c', 'd'])[ ? -1 eq 'c']", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UnaryLookup-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UnaryLookup-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(['a', 'b'], ['c', 'd'])[ ?0 eq 'c']", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UnaryLookup-005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAY0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UnaryLookup-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(['a', 'b'], ['c', 'd'], ['e'])[ ?2 eq 'b']", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UnaryLookup-006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAY0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UnaryLookup-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(['a', 'b', 'c'], ['b', 'c', 'd'], ['e', 'f', 'b'])[ ?(1 to 2) = 'b']", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UnaryLookup-007.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"['a', 'b', 'c'], ['b', 'c', 'd']") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UnaryLookup-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $i := (1, 3) return (['a', 'b', 'c'], ['b', 'c', 'd'], ['e', 'f', 'b'])[ ?($i) = 'b']", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UnaryLookup-008.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"['b', 'c', 'd'], ['e', 'f', 'b']") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UnaryLookup-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(['a', 'b', 'c'], ['b', 'c', 'd'], ['e', 'f', 'b'])[ ?first = 'b']", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UnaryLookup-009.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UnaryLookup-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $d := current-date() return (['a', 'b', 'c'], ['b', 'c', 'd'], ['e', 'f', 'b'])[ ?($d) = 'b']", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UnaryLookup-010.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UnaryLookup-011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $d := function($x) {$x + ?2} return $d(12)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UnaryLookup-011.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UnaryLookup-012'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(1 to 10)[?1 = 3]", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UnaryLookup-012.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UnaryLookup-013'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(floor#1, ceiling#1, round#1, abs#1)[?1 = 1]", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UnaryLookup-013.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UnaryLookup-014'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(['a', 'b', 'c'], ['b', 'c', 'd'], ['e', 'f', 'b'])[ ?* = 'c']", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UnaryLookup-014.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"['a', 'b', 'c'], ['b', 'c', 'd']") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UnaryLookup-015'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "([1, [2], [3]], [[2], 2, [4]])[ ?1 = ?2 ]", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UnaryLookup-015.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[[2], 2, [4]]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UnaryLookup-016'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(['a', 'b', 'c'], ['b', 'c', 'd'], ['e', 'f', 'b'])[contains(?1, ?, 'http://www.w3.org/2005/xpath-functions/collation/codepoint')('a')]", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UnaryLookup-016.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"['a', 'b', 'c']") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UnaryLookup-017'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(['a', 'b', 'c'], ['b', 'c', 'd'], ['e', 'f', 'b'])[contains(?1, ?)('a')]", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UnaryLookup-017.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"['a', 'b', 'c']") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UnaryLookup-018'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(['a', 'b', 'c'], ['b', 'c', 'd'], ['e', 'f', 'b'])[?1.0 = 'a']", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UnaryLookup-018.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UnaryLookup-019'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(['a', 'b', 'c'], ['b', 'c', 'd'], ['e', 'f', 'b'])[?(1.0) = 'a']", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UnaryLookup-019.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UnaryLookup-020'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaValidation"}. 
'UnaryLookup-021'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        let $x := (<x>1</x>, <y>2</y>) return
        (['a', 'b', 'c'], ['b', 'c', 'd'], ['e', 'f', 'b'])[?($x) = 'b']
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UnaryLookup-021.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(['a', 'b', 'c'], ['b', 'c', 'd'])") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UnaryLookup-022'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "[['a', 'b', 'c'], ['b', 'c', 'd'], ['e', 'f', 'b']]?*[?1 = 'a']", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UnaryLookup-022.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"['a', 'b', 'c']") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UnaryLookup-023'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "[['a', 'b', 'c'], ['b', 'c', 'd'], ['e', 'f', 'b']]!?*!?1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UnaryLookup-023.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"'a', 'b', 'e'") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UnaryLookup-024'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        let $x := (<x>1</x>, <y>2</y>) return $x / ?1
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UnaryLookup-024.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UnaryLookup-025'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(['a', 'b', 'c'], ['b', 'c', 'd'], ['e', 'f', 'b'])[exists(?())]", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UnaryLookup-025.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UnaryLookup-040'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(map{'a':1, 'b':2, 'c':3},  map{'a':2, 'b':3, 'c':4})[?b eq 3]", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UnaryLookup-040.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map{'a':2, 'b':3, 'c':4}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UnaryLookup-041'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(map{1:1, 2:2, 3:3},  map{1:2, 2:3, 3:4})[?2 eq 3]", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UnaryLookup-041.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map{1:2, 2:3, 3:4}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UnaryLookup-042'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(map{1:1, 2:2, 3:3},  map{1:2, 2:3, 3:4})[?(1 to 2) = 3]", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UnaryLookup-042.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map{1:2, 2:3, 3:4}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UnaryLookup-043'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(map{'a-1':1, 'b-1':2, 'c-1':3},  map{'a-1':2, 'b-1':3, 'c-1':4})[?b-1 eq 3]", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UnaryLookup-043.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map{'a-1':2, 'b-1':3, 'c-1':4}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UnaryLookup-044'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(map{'a-1':1, 'b-1':2, 'c-1':3},  map{'a-1':2, 'b-1':3, 'c-1':4})[? (:confusing?:) b-1 eq 3]", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UnaryLookup-044.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map{'a-1':2, 'b-1':3, 'c-1':4}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UnaryLookup-045'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(map{1:1, 2:2, 3:3},  map{1:2, 2:3, 3:4})[?* = 3]", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UnaryLookup-045.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map{1:1, 2:2, 3:3},  map{1:2, 2:3, 3:4}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UnaryLookup-046'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(map{1:1, 2:2, 3:3},  map{1:2, 2:3, 3:4})[exists(?())]", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UnaryLookup-046.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UnaryLookup-047'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(map{1.1:1, 2.2:2, 3.3:3},  map{1.1:2, 2.2:3, 3.3:4})[?2.2 = 3]", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UnaryLookup-047.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UnaryLookup-048'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(map{1.1:1, 2.2:2, 3.3:3},  map{1.1:2, 2.2:3, 3.3:4})[?(2.2) = 3]?(3.3)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UnaryLookup-048.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"4") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.