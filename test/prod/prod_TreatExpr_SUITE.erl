-module('prod_TreatExpr_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['treat-as-1'/1]).
-export(['treat-as-2'/1]).
-export(['treat-as-3'/1]).
-export(['treat-as-4'/1]).
-export(['treat-as-5'/1]).
-export(['treat-as-6'/1]).
-export(['treat-as-7'/1]).
-export(['treat-as-8'/1]).
-export(['treat-as-9'/1]).
-export(['treat-as-10'/1]).
-export(['treat-as-11'/1]).
-export(['treat-as-12'/1]).
-export(['treat-as-13'/1]).
-export(['treat-as-14'/1]).
-export(['treat-as-15'/1]).
-export(['treat-as-16'/1]).
-export(['treat-as-17'/1]).
-export(['treat-as-18'/1]).
-export(['treat-as-19'/1]).
-export(['treat-as-20'/1]).
-export(['treat-as-21'/1]).
-export(['treat-as-22'/1]).
-export(['treat-as-23'/1]).
-export(['treat-as-24'/1]).
-export(['treat-as-25'/1]).
-export(['K-SeqExprTreat-1'/1]).
-export(['K-SeqExprTreat-2'/1]).
-export(['K-SeqExprTreat-3'/1]).
-export(['K-SeqExprTreat-4'/1]).
-export(['K-SeqExprTreat-5'/1]).
-export(['K-SeqExprTreat-6'/1]).
-export(['K-SeqExprTreat-7'/1]).
-export(['K-SeqExprTreat-8'/1]).
-export(['K-SeqExprTreat-9'/1]).
-export(['K-SeqExprTreat-10'/1]).
-export(['K-SeqExprTreat-11'/1]).
-export(['K-SeqExprTreat-12'/1]).
-export(['K-SeqExprTreat-13'/1]).
-export(['K-SeqExprTreat-14'/1]).
-export(['K-SeqExprTreat-15'/1]).
-export(['K-SeqExprTreat-16'/1]).
-export(['K-SeqExprTreat-17'/1]).
-export(['K2-SeqExprTreat-1'/1]).
-export(['K2-SeqExprTreat-2'/1]).
-export(['K2-SeqExprTreat-3'/1]).
-export(['K2-SeqExprTreat-4'/1]).
-export(['cbcl-treat-as-001'/1]).
-export(['cbcl-treat-as-002'/1]).
-export(['cbcl-treat-as-003'/1]).
-export(['cbcl-treat-as-004'/1]).
-export(['cbcl-treat-as-005'/1]).
-export(['cbcl-treat-as-006'/1]).
-export(['cbcl-treat-as-007'/1]).
-export(['cbcl-treat-as-008'/1]).
-export(['cbcl-treat-as-009'/1]).
-export(['cbcl-treat-as-010'/1]).
-export(['cbcl-treat-as-011'/1]).
-export(['cbcl-treat-as-012'/1]).
-export(['cbcl-treat-as-013'/1]).
-export(['cbcl-treat-as-014'/1]).
-export(['cbcl-treat-as-015'/1]).
-export(['cbcl-treat-as-016'/1]).
-export(['cbcl-treat-as-017'/1]).
-export(['cbcl-treat-as-018'/1]).
-export(['cbcl-treat-as-019'/1]).
-export(['cbcl-treat-as-020'/1]).
-export(['cbcl-treat-as-021'/1]).
-export(['cbcl-treat-as-022'/1]).
-export(['cbcl-treat-as-023'/1]).
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
   __BaseDir = filename:join(TD, "prod"),
   [{base_dir, __BaseDir}|Config].
all() -> [
   {group, group_0}, 
   {group, group_1}, 
   {group, group_2}
   ].
groups() -> [
   {group_0, [parallel], [
    'treat-as-1', 
    'treat-as-2', 
    'treat-as-3', 
    'treat-as-4', 
    'treat-as-5', 
    'treat-as-6', 
    'treat-as-7', 
    'treat-as-8', 
    'treat-as-9', 
    'treat-as-10', 
    'treat-as-11', 
    'treat-as-12', 
    'treat-as-13', 
    'treat-as-14', 
    'treat-as-15', 
    'treat-as-16', 
    'treat-as-17', 
    'treat-as-18', 
    'treat-as-19', 
    'treat-as-20', 
    'treat-as-21', 
    'treat-as-22', 
    'treat-as-23']}, 
   {group_1, [parallel], [
    'treat-as-24', 
    'treat-as-25', 
    'K-SeqExprTreat-1', 
    'K-SeqExprTreat-2', 
    'K-SeqExprTreat-3', 
    'K-SeqExprTreat-4', 
    'K-SeqExprTreat-5', 
    'K-SeqExprTreat-6', 
    'K-SeqExprTreat-7', 
    'K-SeqExprTreat-8', 
    'K-SeqExprTreat-9', 
    'K-SeqExprTreat-10', 
    'K-SeqExprTreat-11', 
    'K-SeqExprTreat-12', 
    'K-SeqExprTreat-13', 
    'K-SeqExprTreat-14', 
    'K-SeqExprTreat-15', 
    'K-SeqExprTreat-16', 
    'K-SeqExprTreat-17', 
    'K2-SeqExprTreat-1', 
    'K2-SeqExprTreat-2', 
    'K2-SeqExprTreat-3', 
    'K2-SeqExprTreat-4', 
    'cbcl-treat-as-001']}, 
   {group_2, [parallel], [
    'cbcl-treat-as-002', 
    'cbcl-treat-as-003', 
    'cbcl-treat-as-004', 
    'cbcl-treat-as-005', 
    'cbcl-treat-as-006', 
    'cbcl-treat-as-007', 
    'cbcl-treat-as-008', 
    'cbcl-treat-as-009', 
    'cbcl-treat-as-010', 
    'cbcl-treat-as-011', 
    'cbcl-treat-as-012', 
    'cbcl-treat-as-013', 
    'cbcl-treat-as-014', 
    'cbcl-treat-as-015', 
    'cbcl-treat-as-016', 
    'cbcl-treat-as-017', 
    'cbcl-treat-as-018', 
    'cbcl-treat-as-019', 
    'cbcl-treat-as-020', 
    'cbcl-treat-as-021', 
    'cbcl-treat-as-022', 
    'cbcl-treat-as-023']}].

'treat-as-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $var := (100+200) div 2 return fn:concat($var treat as xs:string,\"a string\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "treat-as-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0050") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPDY0050 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'treat-as-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $var := \"String 1\" return fn:concat($var treat as xs:string,\"String 2\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "treat-as-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "String 1String 2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'treat-as-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $var := 100 return ($var treat as xs:integer) div 2", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "treat-as-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"50") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'treat-as-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $var := 100 return fn:abs($var treat as xs:decimal)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "treat-as-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"100") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'treat-as-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $var := xs:decimal(100) return fn:abs($var cast as xs:integer treat as xs:integer)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "treat-as-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"100") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'treat-as-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $var := xs:float(100) return fn:abs($var treat as xs:float)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "treat-as-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"100") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'treat-as-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $var := xs:double(100) return fn:abs($var treat as xs:double)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "treat-as-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"100") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'treat-as-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $var := xs:boolean(fn:true()) return fn:not($var treat as xs:boolean)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "treat-as-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'treat-as-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $var := xs:date(\"2000-01-01+05:00\") return fn:year-from-date($var treat as xs:date)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "treat-as-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2000") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'treat-as-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $var := xs:dateTime(\"1999-05-31T13:20:00-05:00\") return fn:minutes-from-dateTime($var treat as xs:dateTime)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "treat-as-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"20") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'treat-as-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $var := xs:time(\"01:23:00+05:00\") return fn:hours-from-time($var treat as xs:time)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "treat-as-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'treat-as-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $var := 100 return ($var treat as xs:integer, $var treat as xs:integer, $var treat as xs:integer)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "treat-as-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "100 100 100") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'treat-as-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $var := 100 return (xs:decimal($var) treat as xs:decimal, xs:double($var) treat as xs:double, xs:float($var) treat as xs:float, $var treat as xs:integer)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "treat-as-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "100 100 100 100") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'treat-as-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $var := -100 return fn:abs($var cast as xs:float treat as xs:float)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "treat-as-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"100") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'treat-as-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $var := -100 return fn:abs($var cast as xs:double treat as xs:double)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "treat-as-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"100") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'treat-as-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $var := xs:float(-100) return fn:abs($var cast as xs:integer treat as xs:integer)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "treat-as-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"100") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'treat-as-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $var := xs:double(-100) return fn:abs($var cast as xs:integer treat as xs:integer)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "treat-as-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"100") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'treat-as-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $var := xs:double(-100) return fn:abs($var cast as xs:float treat as xs:float)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "treat-as-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"100") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'treat-as-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $var := xs:float(-100) return fn:abs($var cast as xs:double treat as xs:double)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "treat-as-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"100") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'treat-as-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $var := xs:decimal(-100) return fn:abs($var cast as xs:double treat as xs:double)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "treat-as-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"100") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'treat-as-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $var := xs:decimal(-100) return fn:abs($var cast as xs:float treat as xs:float)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "treat-as-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"100") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'treat-as-22'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $var := xs:float(-100) return fn:abs($var cast as xs:decimal treat as xs:decimal)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "treat-as-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"100") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'treat-as-23'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $var := xs:double(-100) return fn:abs($var cast as xs:decimal treat as xs:decimal)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "treat-as-23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"100") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'treat-as-24'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $var := (100+200) div 10 return ($var cast as xs:integer treat as xs:integer) + 10", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "treat-as-24.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"40") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'treat-as-25'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $var := (100+200) div 10 return ($var cast as xs:integer treat as xs:integer) - 10", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "treat-as-25.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"20") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprTreat-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "3 treat as xs:string", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprTreat-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0050") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPDY0050 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprTreat-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:double(\"3\") treat as xs:float", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprTreat-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0050") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPDY0050 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprTreat-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:anyURI(\"example.com/\") treat as xs:float", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprTreat-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0050") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPDY0050 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprTreat-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "3.0 treat as xs:integer", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprTreat-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0050") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPDY0050 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprTreat-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:integer(3) treat as xs:decimal instance of xs:integer", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprTreat-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprTreat-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "\"3\" treat as xs:string eq '3'", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprTreat-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprTreat-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:integer(\"3\") treat as xs:decimal instance of xs:decimal", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprTreat-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprTreat-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "3 treat as prefixDoesNotExist:integer", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprTreat-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0081") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPST0081 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprTreat-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "3 treat as xs:doesNotExist", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprTreat-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0051") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPST0051 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprTreat-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1 treat as empty-sequence()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprTreat-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0050") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPDY0050 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprTreat-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(\"asda\" treat as xs:string +) eq \"asda\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprTreat-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprTreat-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(\"asda\" treat as xs:string *) eq \"asda\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprTreat-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprTreat-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(3 treat as xs:integer * * 3) eq 9", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprTreat-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprTreat-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(3 treat as xs:integer ? * 3) eq 9", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprTreat-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprTreat-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(4 treat as item() + - 5) = ((4 treat as item()+) - 5)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprTreat-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprTreat-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "3 treat as item(", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprTreat-16.xq"), Qry1),
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
'K-SeqExprTreat-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(remove((5, 1e0), 2) treat as xs:integer) eq 5", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprTreat-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprTreat-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:decimal(3) treat as xs:integer", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprTreat-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0050") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPDY0050 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprTreat-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "3 treat as item()+ + +1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprTreat-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"4") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprTreat-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:root(self::node()) treat as document-node()/X", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprTreat-3.xq"), Qry1),
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
'K2-SeqExprTreat-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(* treat as empty-sequence()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprTreat-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-treat-as-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(1 to 10)[. mod 2 = 0] treat as xs:integer+", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-treat-as-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2 4 6 8 10") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-treat-as-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(1 to 10)[. mod 2 = 0] treat as xs:integer*", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-treat-as-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2 4 6 8 10") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-treat-as-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "zero-or-one((1 to 10)[. div 2 = 1]) treat as xs:integer+", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-treat-as-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-treat-as-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "zero-or-one((1 to 10)[. div 2 = 1]) treat as xs:integer*", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-treat-as-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-treat-as-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exactly-one((1 to 10)[. div 2 = 1]) treat as xs:integer+", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-treat-as-005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-treat-as-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exactly-one((1 to 10)[. div 2 = 1]) treat as xs:integer*", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-treat-as-006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-treat-as-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count((1 to 10)[. mod 2 = 0] treat as xs:integer+)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-treat-as-007.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "5") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-treat-as-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "subsequence((1 to 10)[. mod 2 = 0] treat as xs:integer+,1,2)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-treat-as-008.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2 4") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-treat-as-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(1 to 10)[. div 2 = 0] treat as xs:integer+", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-treat-as-009.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0050") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPDY0050 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-treat-as-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(1 to 10)[. mod 2 = 0] treat as xs:negativeInteger+", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-treat-as-010.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0050") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPDY0050 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-treat-as-011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(1 to 10)[. mod 2 = 0] treat as xs:integer", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-treat-as-011.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0050") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPDY0050 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-treat-as-012'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(1 to 10)[. mod 2 = 0] treat as xs:negativeInteger*", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-treat-as-012.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0050") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPDY0050 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-treat-as-013'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "zero-or-one((1 to 10)[. div 2 = 0]) treat as xs:integer", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-treat-as-013.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0050") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPDY0050 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-treat-as-014'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "zero-or-one((1 to 10)[. div 2 = 0]) treat as xs:integer+", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-treat-as-014.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0050") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPDY0050 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-treat-as-015'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare function local:range($arg as xs:integer) as xs:integer* { 1 to $arg };
        declare function local:double($arg as xs:integer) { $arg * 2 };
        local:double(local:range(0) treat as xs:integer)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-treat-as-015.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0050") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPDY0050 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-treat-as-016'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare function local:range($arg as xs:integer) as xs:integer* { 1 to $arg };
        declare function local:double($arg as xs:integer) { $arg * 2 };
        local:double(local:range(1) treat as xs:integer)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-treat-as-016.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-treat-as-017'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare function local:range($arg as xs:integer) as xs:integer* { 1 to $arg };
        declare function local:double($arg as xs:integer) { $arg * 2 };
        local:double(local:range(3) treat as xs:integer)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-treat-as-017.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0050") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPDY0050 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-treat-as-018'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare function local:range($arg as xs:integer) as xs:integer* { 1 to $arg };
        declare function local:double($arg as xs:integer?) { $arg * 2 };
        empty(local:double(local:range(0) treat as xs:integer?))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-treat-as-018.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-treat-as-019'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare function local:range($arg as xs:integer) as xs:integer* { 1 to $arg };
        declare function local:double($arg as xs:integer?) { $arg * 2 };
        local:double(local:range(1) treat as xs:integer?)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-treat-as-019.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-treat-as-020'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare function local:range($arg as xs:integer) as xs:integer* { 1 to $arg };
        declare function local:double($arg as xs:integer?) { $arg * 2 };
        local:double(local:range(2) treat as xs:integer?)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-treat-as-020.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0050") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPDY0050 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-treat-as-021'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare function local:range($arg as xs:integer) as xs:integer* { 1 to $arg };
        declare function local:double($arg as xs:integer+) { for $a in $arg return $a * 2 };
        local:double(local:range(0) treat as xs:integer+)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-treat-as-021.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0050") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPDY0050 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-treat-as-022'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare function local:range($arg as xs:integer) as xs:integer* { 1 to $arg };
        declare function local:double($arg as xs:integer+) { for $a in $arg return $a * 2 };
        local:double(local:range(1) treat as xs:integer+)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-treat-as-022.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-treat-as-023'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare function local:range($arg as xs:integer) as xs:integer* { 1 to $arg };
        declare function local:double($arg as xs:integer+) { for $a in $arg return $a * 2 };
        local:double(local:range(2) treat as xs:integer+)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-treat-as-023.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2 4") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.