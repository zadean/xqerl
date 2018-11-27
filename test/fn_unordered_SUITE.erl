-module('fn_unordered_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['fn-unordered-mix-args-001'/1]).
-export(['fn-unordered-mix-args-002'/1]).
-export(['fn-unordered-mix-args-003'/1]).
-export(['fn-unordered-mix-args-004'/1]).
-export(['fn-unordered-mix-args-005'/1]).
-export(['fn-unordered-mix-args-006'/1]).
-export(['fn-unordered-mix-args-007'/1]).
-export(['fn-unordered-mix-args-008'/1]).
-export(['fn-unordered-mix-args-009'/1]).
-export(['fn-unordered-mix-args-010'/1]).
-export(['fn-unordered-mix-args-011'/1]).
-export(['fn-unordered-mix-args-012'/1]).
-export(['fn-unordered-mix-args-013'/1]).
-export(['fn-unordered-mix-args-014'/1]).
-export(['fn-unordered-mix-args-015'/1]).
-export(['fn-unordered-mix-args-016'/1]).
-export(['fn-unordered-mix-args-017'/1]).
-export(['fn-unordered-mix-args-018'/1]).
-export(['fn-unordered-mix-args-019'/1]).
-export(['fn-unordered-mix-args-020'/1]).
-export(['fn-unordered-mix-args-021'/1]).
-export(['fn-unordered-mix-args-022'/1]).
-export(['fn-unordered-mix-args-023'/1]).
-export(['K-SeqUnorderedFunc-1'/1]).
-export(['K-SeqUnorderedFunc-2'/1]).
-export(['K-SeqUnorderedFunc-3'/1]).
-export(['K-SeqUnorderedFunc-4'/1]).
-export(['K-SeqUnorderedFunc-5'/1]).
-export(['K-SeqUnorderedFunc-6'/1]).
-export(['K-SeqUnorderedFunc-7'/1]).
-export(['K-SeqUnorderedFunc-8'/1]).
-export(['cbcl-fn-unordered-001'/1]).
-export(['cbcl-fn-unordered-002'/1]).
-export(['cbcl-fn-unordered-003'/1]).
-export(['fn-unordered-101'/1]).
-export(['fn-unordered-102'/1]).
-export(['fn-unordered-103'/1]).
-export(['fn-unordered-104'/1]).
-export(['fn-unordered-105'/1]).
-export(['fn-unordered-106'/1]).
-export(['fn-unordered-107'/1]).
-export(['fn-unordered-108'/1]).
-export(['fn-unordered-109'/1]).
suite() -> [{timetrap,{seconds, 5}}].
end_per_suite(_Config) -> 
   ct:timetrap({seconds,60}), 
   xqerl_module:unload(all).
init_per_suite(Config) -> 
   xqerl_module:one_time_init(), 
   {ok,_} = application:ensure_all_started(xqerl),
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   __BaseDir = filename:join(TD, "fn"),
   [{base_dir, __BaseDir}|Config].
all() -> [
'fn-unordered-mix-args-001', 
'fn-unordered-mix-args-002', 
'fn-unordered-mix-args-003', 
'fn-unordered-mix-args-004', 
'fn-unordered-mix-args-005', 
'fn-unordered-mix-args-006', 
'fn-unordered-mix-args-007', 
'fn-unordered-mix-args-008', 
'fn-unordered-mix-args-009', 
'fn-unordered-mix-args-010', 
'fn-unordered-mix-args-011', 
'fn-unordered-mix-args-012', 
'fn-unordered-mix-args-013', 
'fn-unordered-mix-args-014', 
'fn-unordered-mix-args-015', 
'fn-unordered-mix-args-016', 
'fn-unordered-mix-args-017', 
'fn-unordered-mix-args-018', 
'fn-unordered-mix-args-019', 
'fn-unordered-mix-args-020', 
'fn-unordered-mix-args-021', 
'fn-unordered-mix-args-022', 
'fn-unordered-mix-args-023', 
'K-SeqUnorderedFunc-1', 
'K-SeqUnorderedFunc-2', 
'K-SeqUnorderedFunc-3', 
'K-SeqUnorderedFunc-4', 
'K-SeqUnorderedFunc-5', 
'K-SeqUnorderedFunc-6', 
'K-SeqUnorderedFunc-7', 
'K-SeqUnorderedFunc-8', 
'cbcl-fn-unordered-001', 
'cbcl-fn-unordered-002', 
'cbcl-fn-unordered-003', 
'fn-unordered-101', 
'fn-unordered-102', 
'fn-unordered-103', 
'fn-unordered-104', 
'fn-unordered-105', 
'fn-unordered-106', 
'fn-unordered-107', 
'fn-unordered-108', 
'fn-unordered-109'
].
environment('works-mod',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/works-mod.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
].
'fn-unordered-mix-args-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unordered( (\"c\",1, \"xzy\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unordered-mix-args-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"\"c\", 1, \"xzy\"") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unordered-mix-args-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unordered( (\"c\", \"b\", \"a\") )", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unordered-mix-args-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"\"c\",  \"b\", \"a\"") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unordered-mix-args-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unordered ( (\"a\", \"b\", \"c\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unordered-mix-args-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"\"a\", \"b\", \"c\"") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unordered-mix-args-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unordered ( (\"a\", xs:string(\"\"), \"b\", \"c\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unordered-mix-args-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"\"a\", \"\",  \"b\", \"c\"") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unordered-mix-args-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unordered ( (\"a\", xs:anyURI(\"www.example.com\"), \"b\", \"c\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unordered-mix-args-005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"\"a\", \"www.example.com\", \"b\", \"c\"") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unordered-mix-args-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unordered ( (\"a\", (), (), \"b\", \"c\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unordered-mix-args-006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"\"a\", \"b\", \"c\"") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unordered-mix-args-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unordered ( (\"a\", xs:integer(\"100\"), xs:integer(\"-100\"), \"b\", \"c\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unordered-mix-args-007.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"\"a\", 100, -100, \"b\", \"c\"") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unordered-mix-args-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unordered ( (\"a\", xs:decimal(\"-1.000000000001\"), xs:integer(\"-100\"), \"b\", \"c\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unordered-mix-args-008.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"\"a\", -1.000000000001, -100, \"b\", \"c\"") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unordered-mix-args-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unordered ( (\"a\", xs:float(\"INF\"), \"b\", \"c\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unordered-mix-args-009.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"\"a\", xs:float(\"INF\"), \"b\", \"c\"") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unordered-mix-args-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unordered ( (\"a\", xs:float(\"-INF\"), \"b\", \"c\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unordered-mix-args-010.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"\"a\", xs:float('-INF'), \"b\", \"c\"") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unordered-mix-args-011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unordered ( (\"a\", xs:float(\"NaN\"), \"b\", \"c\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unordered-mix-args-011.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"\"a\", xs:float('NaN'), \"b\", \"c\"") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unordered-mix-args-012'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unordered ( (\"a\", xs:float(\"1.01\"), \"b\", \"c\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unordered-mix-args-012.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"\"a\", 1.01, \"b\", \"c\"") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unordered-mix-args-013'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unordered ( (\"a\", xs:double(\"NaN\"), \"b\", \"c\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unordered-mix-args-013.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"\"a\", xs:double('NaN'), \"b\", \"c\"") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unordered-mix-args-014'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unordered ( (\"a\", xs:double(\"1.01\"), \"b\", \"c\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unordered-mix-args-014.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"\"a\", 1.01, \"b\", \"c\"") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unordered-mix-args-015'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unordered ( (\"a\", xs:double(\"-INF\"), \"b\", \"c\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unordered-mix-args-015.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"\"a\", xs:double('-INF'), \"b\", \"c\"") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unordered-mix-args-016'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unordered ( (\"a\", xs:double(\"INF\"), \"b\", \"c\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unordered-mix-args-016.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"\"a\", xs:double(\"INF\"), \"b\", \"c\"") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unordered-mix-args-017'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unordered ( (\"a\", xs:boolean(\"1\"), \"b\", \"c\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unordered-mix-args-017.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"\"a\", true(), \"b\", \"c\"") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unordered-mix-args-018'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unordered ( (\"a\", xs:boolean(\"0\"), \"b\", \"c\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unordered-mix-args-018.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"\"a\", false(), \"b\", \"c\"") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unordered-mix-args-019'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unordered ( (\"a\", xs:boolean(\"true\"), \"b\", \"c\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unordered-mix-args-019.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"\"a\", true(), \"b\", \"c\"") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unordered-mix-args-020'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unordered ( (\"a\", xs:boolean(\"false\"), \"b\", \"c\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unordered-mix-args-020.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"\"a\", false(), \"b\", \"c\"") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unordered-mix-args-021'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unordered ( (\"a\", xs:date(\"1993-03-31\"), \"b\", \"c\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unordered-mix-args-021.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"\"a\", xs:date('1993-03-31'), \"b\", \"c\"") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unordered-mix-args-022'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unordered ( (\"a\", xs:dateTime(\"1972-12-31T00:00:00\"), \"b\", \"c\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unordered-mix-args-022.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"\"a\", xs:dateTime(\"1972-12-31T00:00:00\"), \"b\", \"c\"") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unordered-mix-args-023'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unordered ( (\"a\", xs:time(\"12:30:00\"), \"b\", \"c\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unordered-mix-args-023.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"\"a\", xs:time('12:30:00'), \"b\", \"c\"") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqUnorderedFunc-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "unordered()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-SeqUnorderedFunc-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqUnorderedFunc-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "unordered(1, 2)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-SeqUnorderedFunc-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqUnorderedFunc-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "unordered(1) eq 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-SeqUnorderedFunc-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqUnorderedFunc-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(unordered((1, 2, 3))) eq 3", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-SeqUnorderedFunc-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqUnorderedFunc-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(unordered((1, 2, current-time()))) eq 3", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-SeqUnorderedFunc-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqUnorderedFunc-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(unordered(()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-SeqUnorderedFunc-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XPST0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqUnorderedFunc-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "deep-equal((1, 2, 3), unordered((1, 2, 3)))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-SeqUnorderedFunc-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqUnorderedFunc-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "unordered(error())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-SeqUnorderedFunc-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOER0000") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-fn-unordered-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "boolean(unordered(reverse((1 to 10)[. div 2 = 2])))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-fn-unordered-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-fn-unordered-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "local-name(unordered(<a><b/><c/></a>/*[1]))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-fn-unordered-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "b") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-fn-unordered-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "floor(unordered((1 to 10)[. div 2 = 0]))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-fn-unordered-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unordered-101'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(/works/employee[last()]/unordered(preceding-sibling::*))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unordered-101.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"12") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unordered-102'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(/works/employee[last()]/unordered(preceding::*))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unordered-102.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"54") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unordered-103'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count((/works//day)[last()]/unordered(ancestor-or-self::*))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unordered-103.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"4") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unordered-104'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(unordered(reverse(for $i in (1,2,1) return /works/employee)))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unordered-104.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"39") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unordered-105'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(unordered(reverse(/works/employee[@name] | /works/employee[@gender])))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unordered-105.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"13") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unordered-106'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(unordered(for $e in reverse(/works/employee) return $e/@gender))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unordered-106.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"13") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unordered-107'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(for $e in unordered(reverse(/works/employee)) return $e/@gender)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unordered-107.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"13") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unordered-108'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "unordered(for $e at $i in /works/employee return $e/hours[1]*$i)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unordered-108.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"40, 140, 240, 80, 100, 72, 280, 640, 180, 200, 220, 480, 1040") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unordered-109'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "unordered(for $e at $i in reverse(/works/employee) return $e/hours[1]*$i)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unordered-109.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"520, 840, 880, 200, 180, 96, 280, 480, 100, 80, 60, 80, 80") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.