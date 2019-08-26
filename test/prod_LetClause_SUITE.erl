-module('prod_LetClause_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['letexprwith-1'/1]).
-export(['letexprwith-2'/1]).
-export(['letexprwith-3'/1]).
-export(['letexprwith-4'/1]).
-export(['letexprwith-5'/1]).
-export(['letexprwith-6'/1]).
-export(['letexprwith-7'/1]).
-export(['letexprwith-8'/1]).
-export(['letexprwith-9'/1]).
-export(['letexprwith-10'/1]).
-export(['letexprwith-11'/1]).
-export(['letexprwith-12'/1]).
-export(['letexprwith-13'/1]).
-export(['letexprwith-14'/1]).
-export(['letexprwith-15'/1]).
-export(['letexprwith-16'/1]).
-export(['letexprwith-17'/1]).
-export(['letexprwith-18'/1]).
-export(['letexprwith-19'/1]).
-export(['letexprwith-20'/1]).
-export(['letexprwith-21'/1]).
-export(['letexprwith-22'/1]).
-export(['letexprwith-23'/1]).
-export(['letexprwith-24'/1]).
-export(['LetExpr001'/1]).
-export(['LetExpr002'/1]).
-export(['LetExpr003'/1]).
-export(['LetExpr004'/1]).
-export(['LetExpr005'/1]).
-export(['LetExpr006'/1]).
-export(['LetExpr007'/1]).
-export(['LetExpr008'/1]).
-export(['LetExpr009'/1]).
-export(['LetExpr010'/1]).
-export(['LetExpr011'/1]).
-export(['LetExpr012'/1]).
-export(['LetExpr013'/1]).
-export(['LetExpr014'/1]).
-export(['LetExpr015'/1]).
-export(['LetExpr016'/1]).
-export(['LetExpr017'/1]).
-export(['LetExpr018'/1]).
-export(['LetExpr019'/1]).
-export(['LetExpr020'/1]).
-export(['LetExpr020a'/1]).
-export(['LetExpr021'/1]).
-export(['K-LetExprWithout-1'/1]).
-export(['K-LetExprWithout-2'/1]).
-export(['K-LetExprWithout-3'/1]).
-export(['K-LetExprWithout-4'/1]).
-export(['K2-LetExprWithout-1'/1]).
-export(['K2-LetExprWithout-2'/1]).
-export(['K2-LetExprWithout-3'/1]).
-export(['K2-LetExprWithout-4'/1]).
-export(['K2-LetExprWithout-5'/1]).
-export(['K2-LetExprWithout-6'/1]).
-export(['K2-LetExprWithout-7'/1]).
-export(['K2-LetExprWithout-8'/1]).
-export(['K2-LetExprWithout-9'/1]).
-export(['K2-LetExprWithout-10'/1]).
-export(['K2-LetExprWithout-11'/1]).
-export(['K2-LetExprWithout-12'/1]).
-export(['K2-LetExprWithout-13'/1]).
-export(['K2-LetExprWithout-14'/1]).
-export(['K2-LetExprWithout-15'/1]).
-export(['K2-LetExprWithout-16'/1]).
-export(['K2-LetExprWithout-17'/1]).
-export(['K2-LetExprWithout-18'/1]).
-export(['K2-LetExprWithout-19'/1]).
-export(['K2-LetExprWithout-20'/1]).
-export(['K2-LetExprWithout-21'/1]).
-export(['K2-LetExprWithout-22'/1]).
-export(['K2-LetExprWithout-23'/1]).
-export(['K2-LetExprWithout-24'/1]).
-export(['K2-LetExprWithout-25'/1]).
-export(['K2-LetExprWithout-26'/1]).
-export(['xquery10keywords'/1]).
-export(['xquery10keywords2'/1]).
-export(['xquery10keywords3'/1]).
-export(['xquery30keywords'/1]).
-export(['xquery30keywords2'/1]).
-export(['xquery30keywords3'/1]).
-export(['xquery30keywords4'/1]).
-export(['xquery30keywords5'/1]).
-export(['xquery31keywords1'/1]).
-export(['xquery31keywords2'/1]).
-export(['xquery31keywords3'/1]).
-export(['xquery31keywords4'/1]).
-export(['xquery31keywords5'/1]).
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
   {group, group_1}, 
   {group, group_2}, 
   {group, group_3}
   ].
groups() -> [
   {group_0, [parallel], [
    'letexprwith-1', 
    'letexprwith-2', 
    'letexprwith-3', 
    'letexprwith-4', 
    'letexprwith-5', 
    'letexprwith-6', 
    'letexprwith-7', 
    'letexprwith-8', 
    'letexprwith-9', 
    'letexprwith-10', 
    'letexprwith-11', 
    'letexprwith-12', 
    'letexprwith-13', 
    'letexprwith-14', 
    'letexprwith-15', 
    'letexprwith-16', 
    'letexprwith-17', 
    'letexprwith-18', 
    'letexprwith-19', 
    'letexprwith-20', 
    'letexprwith-21', 
    'letexprwith-22', 
    'letexprwith-23']}, 
   {group_1, [parallel], [
    'letexprwith-24', 
    'LetExpr001', 
    'LetExpr002', 
    'LetExpr003', 
    'LetExpr004', 
    'LetExpr005', 
    'LetExpr006', 
    'LetExpr007', 
    'LetExpr008', 
    'LetExpr009', 
    'LetExpr010', 
    'LetExpr011', 
    'LetExpr012', 
    'LetExpr013', 
    'LetExpr014', 
    'LetExpr015', 
    'LetExpr016', 
    'LetExpr017', 
    'LetExpr018', 
    'LetExpr019', 
    'LetExpr020', 
    'LetExpr020a', 
    'LetExpr021', 
    'K-LetExprWithout-1']}, 
   {group_2, [parallel], [
    'K-LetExprWithout-2', 
    'K-LetExprWithout-3', 
    'K-LetExprWithout-4', 
    'K2-LetExprWithout-1', 
    'K2-LetExprWithout-2', 
    'K2-LetExprWithout-3', 
    'K2-LetExprWithout-4', 
    'K2-LetExprWithout-5', 
    'K2-LetExprWithout-6', 
    'K2-LetExprWithout-7', 
    'K2-LetExprWithout-8', 
    'K2-LetExprWithout-9', 
    'K2-LetExprWithout-10', 
    'K2-LetExprWithout-11', 
    'K2-LetExprWithout-12', 
    'K2-LetExprWithout-13', 
    'K2-LetExprWithout-14', 
    'K2-LetExprWithout-15', 
    'K2-LetExprWithout-16', 
    'K2-LetExprWithout-17', 
    'K2-LetExprWithout-18', 
    'K2-LetExprWithout-19', 
    'K2-LetExprWithout-20', 
    'K2-LetExprWithout-21']}, 
   {group_3, [parallel], [
    'K2-LetExprWithout-22', 
    'K2-LetExprWithout-23', 
    'K2-LetExprWithout-24', 
    'K2-LetExprWithout-25', 
    'K2-LetExprWithout-26', 
    'xquery10keywords', 
    'xquery10keywords2', 
    'xquery10keywords3', 
    'xquery30keywords', 
    'xquery30keywords2', 
    'xquery30keywords3', 
    'xquery30keywords4', 
    'xquery30keywords5', 
    'xquery31keywords1', 
    'xquery31keywords2', 
    'xquery31keywords3', 
    'xquery31keywords4', 
    'xquery31keywords5']}].
environment('empty',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
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
]; 
environment('acme_corp',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../op/union/acme_corp.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
].
'letexprwith-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $salary as xs:decimal := \"cat\" return $salary * 2", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "letexprwith-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'letexprwith-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $var as xs:decimal := 100 return $var", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "letexprwith-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"100") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'letexprwith-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $var as xs:integer := 100 return $var", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "letexprwith-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"100") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'letexprwith-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $var as xs:double := 100E1 return $var", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "letexprwith-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1000") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'letexprwith-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $var as xs:string := \"A String\" return $var", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "letexprwith-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "A String") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'letexprwith-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $var as xs:boolean := fn:true() return $var", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "letexprwith-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'letexprwith-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $var as xs:boolean := fn:false() return $var", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "letexprwith-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'letexprwith-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $var as xs:date := xs:date(\"1999-05-31Z\") return $var", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "letexprwith-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1999-05-31Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'letexprwith-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $var as xs:time := xs:time(\"21:23:00Z\") return $var", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "letexprwith-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "21:23:00Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'letexprwith-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $var as xs:dateTime := xs:dateTime(\"1999-05-31T13:20:00Z\") return $var", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "letexprwith-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1999-05-31T13:20:00Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'letexprwith-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $var as xs:float := xs:float(100) return $var", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "letexprwith-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"100") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'letexprwith-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $var as xs:integer := 100+200 return $var", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "letexprwith-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"300") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'letexprwith-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $var as xs:integer := fn:count((100,200)) return $var", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "letexprwith-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'letexprwith-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $var as xs:boolean := fn:not(fn:true()) return $var", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "letexprwith-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'letexprwith-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $var as xs:boolean := fn:true() and fn:true() return $var", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "letexprwith-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'letexprwith-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $var as xs:boolean := fn:true() and fn:true() return $var", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "letexprwith-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'letexprwith-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $var as xs:integer := fn:string-length(\"A String\") return $var", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "letexprwith-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"8") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'letexprwith-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $var as xs:string := xs:string((xs:integer(100))) return $var", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "letexprwith-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "100") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'letexprwith-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $var as xs:string := xs:string((xs:decimal(100))) return $var", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "letexprwith-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "100") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'letexprwith-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $var as xs:string := xs:string((xs:double(100E2))) return $var", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "letexprwith-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "10000") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'letexprwith-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $var as xs:string := xs:string(fn:true()) return $var", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "letexprwith-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "true") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'letexprwith-22'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $var as xs:integer := 100 return $var + 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "letexprwith-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"101") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'letexprwith-23'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $var as xs:boolean := if (fn:true()) then fn:true() else fn:false() return $var", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "letexprwith-23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'letexprwith-24'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $var as xs:string := typeswitch(fn:true()) case $i as xs:boolean return \"Test Passed\" default return \"Test failed\" return $var", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "letexprwith-24.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Test Passed") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'LetExpr001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $x := \"92233720368547758\" return $x", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "LetExpr001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "92233720368547758") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'LetExpr002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $x := 92233720368547758 return $x", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "LetExpr002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"92233720368547758") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'LetExpr003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $x := 92233720368547758+1 return $x", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "LetExpr003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"92233720368547759") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'LetExpr004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $x := xs:long(\"92233720368547758\") return $x", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "LetExpr004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"92233720368547758") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'LetExpr005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $x := xs:long(\"-92233720368547758\")+1 return $x", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "LetExpr005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-92233720368547757") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'LetExpr006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $x := xs:double(\"1.7976931348623157E308\") return $x", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "LetExpr006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1.7976931348623157E308") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'LetExpr007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $x:=<a>{1+1}</a> return $x", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "LetExpr007.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>2</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'LetExpr008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $x:=1, $y:=$x+1 return $x", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "LetExpr008.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'LetExpr009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $x:=1, $y:=<a>{$x+1}</a> return $y", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "LetExpr009.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>2</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'LetExpr010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $x:=(1,2,3), $y:=$x+1 return $y", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "LetExpr010.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'LetExpr011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $x :=(1 to 100)[. mod 5 eq 0] return $x", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "LetExpr011.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "5 10 15 20 25 30 35 40 45 50 55 60 65 70 75 80 85 90 95 100") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'LetExpr012'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $x :=(1 to 100)[. mod 5 eq 0], $y := $x[. mod 10 eq 0] return $y", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "LetExpr012.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "10 20 30 40 50 60 70 80 90 100") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'LetExpr013'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $x:=\"hello\", $y:=concat($x,\" there\") return $y", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "LetExpr013.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "hello there") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'LetExpr014'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $x := \"1\", $y := $x+1 return $y", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "LetExpr014.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'LetExpr015'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $x := (0,0.1e-1,2.0,'a',\"cat\",'',true()) return $x", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "LetExpr015.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0 0.01 2 a cat  true") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'LetExpr016'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $a := (<elem1/>, <elem2/>, <elem3 att=\"test\"/>) return <root>{$a}</root>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "LetExpr016.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<root><elem1/><elem2/><elem3 att=\"test\"/></root>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'LetExpr017'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $x := (<a> <b> <c> 123 </c> </b> </a>) return $x", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "LetExpr017.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a><b><c> 123 </c></b></a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'LetExpr018'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $x := (0,0.1e-1,2.0,'a',\"cat\",'',true(), ('<a> <b> <c> 123 </c> </b> </a>')/a/b) return $x", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "LetExpr018.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0019") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'LetExpr019'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $a := <elem/> let $b := <elem2/> return ($a,$b)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "LetExpr019.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem/><elem2/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'LetExpr020'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $a := 1 let $b := $a let $c := $a+$b return ($c)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "LetExpr020.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'LetExpr020a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"spec:XP30+"}. 
'LetExpr021'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $a := $b return ($a)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "LetExpr021.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-LetExprWithout-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $i := 5, $j := 20 * $i return $i, $j", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-LetExprWithout-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-LetExprWithout-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $i = 5 return 3", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-LetExprWithout-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-LetExprWithout-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $i in 5 return 3", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-LetExprWithout-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-LetExprWithout-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $i := false(); 
        declare variable $t := false(); 
        deep-equal((let $i := true(), $t := true() return ($i, $t)), (true(), true()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-LetExprWithout-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-LetExprWithout-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "deep-equal((<b/>, <b/>, <b/>, <b/>), (for $v1 in (1, 2, 3, 4) let $v2 := <b/> return ($v2))/.)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-LetExprWithout-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-LetExprWithout-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "deep-equal((<b/>, <b/>, <b/>, <b/>), (for $v1 in (1, 2, 3, 4) let $v2 := <b/> return ($v2)))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-LetExprWithout-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-LetExprWithout-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:myFunc() { let $v := . return $v }; local:myFunc()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-LetExprWithout-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-LetExprWithout-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:myFunc($arg as node()) { let $v := . return $arg/$v }; local:myFunc(<e/>)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-LetExprWithout-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-LetExprWithout-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:myFunc($arg as node()) { let $v := aNameTest return $arg/$v }; local:myFunc(<e/>)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-LetExprWithout-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-LetExprWithout-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:myFunc($arg as node()) { let $v := aNameTest return $arg/$v }; 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-LetExprWithout-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XPDY0002") of 
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
'K2-LetExprWithout-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $i as xs:integer := xs:untypedAtomic(\"1\") return $i", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-LetExprWithout-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-LetExprWithout-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "return 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-LetExprWithout-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-LetExprWithout-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $i as xs:float := 1.1 return $i", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-LetExprWithout-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-LetExprWithout-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $i as xs:double := 1.1 return $i", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-LetExprWithout-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-LetExprWithout-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $i as xs:float := 1 return $i", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-LetExprWithout-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-LetExprWithout-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $i as xs:double := 1 return $i", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-LetExprWithout-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-LetExprWithout-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $i as xs:double := xs:float(3) return $i", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-LetExprWithout-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-LetExprWithout-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $i as xs:string := xs:untypedAtomic(\"a string\") return $i", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-LetExprWithout-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-LetExprWithout-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $i as xs:string := xs:anyURI(\"http://www.example.com/\") return $i", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-LetExprWithout-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-LetExprWithout-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $e := <e/>; for $i in (<a/>, $e, <c/>) return $i is $e", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-LetExprWithout-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "false true false") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-LetExprWithout-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:function() { let $b := (i/a) return () }; empty(local:function())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-LetExprWithout-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
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
'K2-LetExprWithout-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:foo($a as xs:integer) { if($a = 3) then $a else let $a := $a return local:foo($a + 1) }; local:foo(1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-LetExprWithout-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"3") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-LetExprWithout-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $v := . return 1", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-LetExprWithout-19.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XPDY0002") of 
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
'K2-LetExprWithout-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        let $emps := //employee[location = \"Denver\"] 
        for $d in distinct-values($emps/deptno) 
        let $e := $emps[deptno = $d] 
        return <dept> <deptno>{$d}</deptno> <headcount> {count($e)} </headcount> <payroll> {sum($e/salary)} </payroll> </dept>
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('acme_corp',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-LetExprWithout-20.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<dept><deptno>1</deptno><headcount>2</headcount><payroll>130000</payroll></dept><dept><deptno>2</deptno><headcount>1</headcount><payroll>80000</payroll></dept>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-LetExprWithout-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<e/>/(for $b in 1, $i in self::node() return $i)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-LetExprWithout-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-LetExprWithout-22'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<e/>/(for $i in self::node() return $i)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-LetExprWithout-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-LetExprWithout-23'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(<e/>/(let $i := . return (string($i), data($i))))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-LetExprWithout-23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-LetExprWithout-24'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:function() { let $b := (i/a) return 1 }; local:function()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-LetExprWithout-24.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XPDY0002") of 
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
'K2-LetExprWithout-25'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $a := 1 return 
                for $b in 1 return 
                    if ($b) then 1 
                            else if ($b) then 1 
                            else if ($b) then 1 
                            else if ($b) then 1 
                            else if ($b) then 1 
                            else if ($b) then 1 
                            else if ($b) then 1 
                            else if ($b) then 1 
                            else if ($b) then 1 
                            else if ($b) then 1 
                            else if ($b) then 1 
                            else if ($b) then 1 
                            else if ($b) then 1 
                            else if ($b) then 1 
                            else if ($b) then 1 
                            else if ($b) then 1 
                            else if ($b) then 1 
                            else if ($b) then 1 
                            else if ($b) then 1 
                            else if ($b) then 1 
                            else if ($b) then 1 
                            else if ($b) then 1 
                            else if ($b) then 1 
                            else if ($b) then 1 
                            else if ($b) then 1 
                            else ()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-LetExprWithout-25.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-LetExprWithout-26'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $e := <element/>, $outer as element() := $e/element() return $outer", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-LetExprWithout-26.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xquery10keywords'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $ancestor-or-self := 1 
      let $ancestor := 1 
      let $and := 1 
      let $as := 1 
      let $ascending := 1 
      let $at := 1 
      let $attribute := 1 
      let $base-uri := 1 
      let $boundary-space := 1 
      let $by := 1 
      let $case := 1 
      let $cast := 1 
      let $castable := 1 
      let $child := 1 
      let $collation := 1 
      let $comment := 1 
      let $construction := 1 
      let $copy-namespaces := 1 
      let $declare := 1 
      let $default := 1 
      let $descendant-or-self := 1 
      let $descendant := 1 
      let $descending := 1 
      let $div := 1 
      let $document-node := 1 
      let $document := 1 
      let $element := 1 
      let $else := 1 
      let $empty-sequence := 1 
      let $empty := 1 
      let $encoding := 1 
      let $eq := 1 let $every := 1 let $except := 1 let $external := 1 let $following-sibling := 1 
      let $following := 1 let $for := 1 let $function := 1 let $ge := 1 let $greatest := 1 
      let $gt := 1 let $idiv := 1 let $if := 1 let $import := 1 let $in := 1 let $inherit := 1 
      let $instance := 1 let $intersect := 1 let $is := 1 let $item := 1 let $lax := 1 
      let $le := 1 let $least := 1 let $let := 1 let $lt := 1 let $mod := 1 let $module := 1 
      let $module := 1 let $namespace := 1 let $ne := 1 let $no-inherit := 1 
      let $no-preserve := 1 let $node := 1 let $of := 1 let $option := 1 let $or := 1 
      let $order := 1 let $ordered := 1 let $ordering := 1 let $parent := 1 let $preceding-sibling := 1 
      let $preceding := 1 let $preserve := 1 let $processing-instruction := 1 let $return := 1 
      let $satisfies := 1 let $schema-attribute := 1 let $schema-element := 1 let $schema := 1 
      let $self := 1 let $some := 1 let $stable := 1 let $strict := 1 let $strip := 1 
      let $text := 1 let $then := 1 let $to := 1 let $treat := 1 let $typeswitch := 1 
      let $union := 1 let $unordered := 1 let $validate := 1 let $variable := 1 let $version := 1 
      let $where := 1 let $xquery := 1 return 2", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xquery10keywords.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xquery10keywords2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      let $x := (/) 
      return $x /ancestor-or-self /ancestor /and /as /ascending /at /attribute 
      /base-uri /boundary-space /by 
      /case /cast /castable /child /collation /comment /construction /copy-namespaces 
      /declare /default /descendant-or-self /descendant /descending /div /document-node /document 
      /element /else /empty-sequence /empty /encoding /eq /every /except /external 
      /following-sibling /following /for /function 
      /ge /greatest /gt 
      /idiv /if /import /in /inherit /instance /intersect /is /item
       /lax /le /least /let /lt 
       /mod /module /module 
       /namespace /ne /no-inherit /no-preserve /node 
       /of /option /or /order /ordered /ordering 
       /parent /preceding-sibling /preceding /preserve /processing-instruction 
       /return 
       /satisfies /schema-attribute /schema-element /schema /self /some /stable /strict /strip 
       /text /then /to /treat /typeswitch 
       /union /unordered 
       /validate /variable /version 
       /where
       /xquery", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xquery10keywords2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xquery10keywords3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      <keywords> <ancestor-or-self/> <ancestor/> <and/> <as/> <ascending/> <at/> <attribute/> 
      <base-uri/> <boundary-space/> <by/> 
      <case/> <cast/> <castable/> <child/> <collation/> <comment/> <construction/> <copy-namespaces/> 
      <declare/> <default/> <descendant-or-self/> <descendant/> <descending/> <div/> <document-node/> <document/> 
      <element/> <else/> <empty-sequence/> <empty/> <encoding/> <eq/> <every/> <except/> <external/> 
      <following-sibling/> <following/> <for/> <function/> 
      <ge/> <greatest/> <gt/> 
      <idiv/> <if/> <import/> <in/> <inherit/> <instance/> <intersect/> <is/> <item/> 
      <lax/> <le/> <least/> <let/> <lt/> 
      <mod/> <module/> <module/> 
      <namespace/> <ne/> <no-inherit/> <no-preserve/> <node/> 
      <of/> <option/> <or/> <order/> <ordered/> <ordering/> 
      <parent/> <preceding-sibling/> <preceding/> <preserve/> <processing-instruction/> 
      <return/> 
      <satisfies/> <schema-attribute/> <schema-element/> <schema/> <self/> <some/> <stable/> <strict/> <strip/> 
      <text/> <then/> <to/> <treat/> <typeswitch/> 
      <union/> <unordered/> 
      <validate/> <variable/> <version/> 
      <where/> 
      <xquery/> </keywords>/name()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xquery10keywords3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "keywords") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xquery30keywords'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        let $NaN := 1
        let $allowing := 1
        let $ancestor-or-self := 1
        let $ancestor := 1
        let $and := 1
        let $as := 1
        let $ascending := 1
        let $at := 1
        let $attribute := 1
        let $base-uri := 1
        let $boundary-space := 1
        let $by := 1
        let $case := 1
        let $cast := 1
        let $castable := 1
        let $catch := 1
        let $child := 1
        let $collation := 1
        let $comment := 1
        let $construction := 1
        let $context := 1
        let $copy-namespaces := 1
        let $count := 1
        let $decimal-format := 1
        let $decimal-separator := 1
        let $declare := 1
        let $default := 1
        let $descendant-or-self := 1
        let $descendant := 1
        let $descending := 1
        let $digit := 1
        let $div := 1
        let $document-node := 1
        let $document := 1
        let $element := 1
        let $else := 1
        let $empty-sequence := 1
        let $empty := 1
        let $encoding := 1
        let $end := 1
        let $eq := 1
        let $every := 1
        let $except := 1
        let $external := 1
        let $following-sibling := 1
        let $following := 1
        let $for := 1
        let $function := 1
        let $ge := 1
        let $greatest := 1
        let $group := 1
        let $grouping-separator := 1
        let $gt := 1
        let $idiv := 1
        let $if := 1
        let $import := 1
        let $in := 1
        let $infinity := 1
        let $inherit := 1
        let $instance := 1
        let $intersect := 1
        let $is := 1
        let $item := 1
        let $lax := 1
        let $le := 1
        let $least := 1
        let $let := 1
        let $lt := 1
        let $minus-sign := 1
        let $mod := 1
        let $module := 1
        let $namespace-node := 1
        let $namespace := 1
        let $ne := 1
        let $next := 1
        let $no-inherit := 1
        let $no-preserve := 1
        let $node := 1
        let $of := 1
        let $only := 1
        let $option := 1
        let $or := 1
        let $order := 1
        let $ordered := 1
        let $ordering := 1
        let $parent := 1
        let $pattern-separator := 1
        let $per-mille := 1
        let $percent := 1
        let $preceding-sibling := 1
        let $preceding := 1
        let $preserve := 1
        let $previous := 1
        let $processing-instruction := 1
        let $return := 1
        let $satisfies := 1
        let $schema-attribute := 1
        let $schema-element := 1
        let $schema := 1
        let $self := 1
        let $sliding := 1
        let $some := 1
        let $stable := 1
        let $start := 1
        let $strict := 1
        let $strip := 1
        let $switch := 1
        let $text := 1
        let $then := 1
        let $to := 1
        let $treat := 1
        let $try := 1
        let $tumbling := 1
        let $type := 1
        let $typeswitch := 1
        let $union := 1
        let $unordered := 1
        let $validate := 1
        let $variable := 1
        let $version := 1
        let $when := 1
        let $where := 1
        let $window := 1
        let $xquery := 1
        let $zero-digit := 1
        return 2
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xquery30keywords.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xquery30keywords2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        let $x := (/)
        return $x
        /NaN
        /allowing
        /ancestor-or-self
        /ancestor
        /and
        /as
        /ascending
        /at
        /attribute
        /base-uri
        /boundary-space
        /by
        /case
        /cast
        /castable
        /catch
        /child
        /collation
        /comment
        /construction
        /context
        /copy-namespaces
        /count
        /decimal-format
        /decimal-separator
        /declare
        /default
        /descendant-or-self
        /descendant
        /descending
        /digit
        /div
        /document-node
        /document
        /element
        /else
        /empty-sequence
        /empty
        /encoding
        /end
        /eq
        /every
        /except
        /external
        /following-sibling
        /following
        /for
        /function
        /ge
        /greatest
        /group
        /grouping-separator
        /gt
        /idiv
        /if
        /import
        /in
        /infinity
        /inherit
        /instance
        /intersect
        /is
        /item
        /lax
        /le
        /least
        /let
        /lt
        /minus-sign
        /mod
        /module
        /namespace-node
        /namespace
        /ne
        /next
        /no-inherit
        /no-preserve
        /node
        /of
        /only
        /option
        /or
        /order
        /ordered
        /ordering
        /parent
        /pattern-separator
        /per-mille
        /percent
        /preceding-sibling
        /preceding
        /preserve
        /previous
        /processing-instruction
        /return
        /satisfies
        /schema-attribute
        /schema-element
        /schema
        /self
        /sliding
        /some
        /stable
        /start
        /strict
        /strip
        /switch
        /text
        /then
        /to
        /treat
        /try
        /tumbling
        /type
        /typeswitch
        /union
        /unordered
        /validate
        /variable
        /version
        /when
        /where
        /window
        /xquery
        /zero-digit
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xquery30keywords2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xquery30keywords3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        <keywords>
           <NaN/>
           <allowing/>
           <ancestor-or-self/>
           <ancestor/>
           <and/>
           <as/>
           <ascending/>
           <at/>
           <attribute/>
           <base-uri/>
           <boundary-space/>
           <by/>
           <case/>
           <cast/>
           <castable/>
           <catch/>
           <child/>
           <collation/>
           <comment/>
           <construction/>
           <context/>
           <copy-namespaces/>
           <count/>
           <decimal-format/>
           <decimal-separator/>
           <declare/>
           <default/>
           <descendant-or-self/>
           <descendant/>
           <descending/>
           <digit/>
           <div/>
           <document-node/>
           <document/>
           <element/>
           <else/>
           <empty-sequence/>
           <empty/>
           <encoding/>
           <end/>
           <eq/>
           <every/>
           <except/>
           <external/>
           <following-sibling/>
           <following/>
           <for/>
           <function/>
           <ge/>
           <greatest/>
           <group/>
           <grouping-separator/>
           <gt/>
           <idiv/>
           <if/>
           <import/>
           <in/>
           <infinity/>
           <inherit/>
           <instance/>
           <intersect/>
           <is/>
           <item/>
           <lax/>
           <le/>
           <least/>
           <let/>
           <lt/>
           <minus-sign/>
           <mod/>
           <module/>
           <namespace-node/>
           <namespace/>
           <ne/>
           <next/>
           <no-inherit/>
           <no-preserve/>
           <node/>
           <of/>
           <only/>
           <option/>
           <or/>
           <order/>
           <ordered/>
           <ordering/>
           <parent/>
           <pattern-separator/>
           <per-mille/>
           <percent/>
           <preceding-sibling/>
           <preceding/>
           <preserve/>
           <previous/>
           <processing-instruction/>
           <return/>
           <satisfies/>
           <schema-attribute/>
           <schema-element/>
           <schema/>
           <self/>
           <sliding/>
           <some/>
           <stable/>
           <start/>
           <strict/>
           <strip/>
           <switch/>
           <text/>
           <then/>
           <to/>
           <treat/>
           <try/>
           <tumbling/>
           <type/>
           <typeswitch/>
           <union/>
           <unordered/>
           <validate/>
           <variable/>
           <version/>
           <when/>
           <where/>
           <window/>
           <xquery/>
           <zero-digit/>
        </keywords>/name()
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xquery30keywords3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "keywords") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xquery30keywords4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         declare function local:NaN () {1};
         declare function local:allowing () {2};
         declare function local:ancestor-or-self () {3};
         declare function local:ancestor () {4};
         declare function local:and () {5};
         declare function local:as () {6};
         declare function local:ascending () {7};
         declare function local:at () {8};
         declare function local:attribute () {9};
         declare function local:base-uri () {10};
         declare function local:boundary-space () {11};
         declare function local:by () {12};
         declare function local:case () {13};
         declare function local:cast () {14};
         declare function local:castable () {15};
         declare function local:catch () {16};
         declare function local:child () {17};
         declare function local:collation () {18};
         declare function local:comment () {19};
         declare function local:construction () {20};
         declare function local:context () {21};
         declare function local:copy-namespaces () {22};
         declare function local:count () {23};
         declare function local:decimal-format () {24};
         declare function local:decimal-separator () {25};
         declare function local:declare () {26};
         declare function local:default () {27};
         declare function local:descendant-or-self () {28};
         declare function local:descendant () {29};
         declare function local:descending () {30};
         declare function local:digit () {31};
         declare function local:div () {32};
         declare function local:document-node () {33};
         declare function local:document () {34};
         declare function local:element () {35};
         declare function local:else () {36};
         declare function local:empty-sequence () {37};
         declare function local:empty () {38};
         declare function local:encoding () {39};
         declare function local:end () {40};
         declare function local:eq () {41};
         declare function local:every () {42};
         declare function local:except () {43};
         declare function local:external () {44};
         declare function local:following-sibling () {45};
         declare function local:following () {46};
         declare function local:for () {47};
         declare function local:function () {48};
         declare function local:ge () {49};
         declare function local:greatest () {50};
         declare function local:group () {51};
         declare function local:grouping-separator () {52};
         declare function local:gt () {53};
         declare function local:idiv () {54};
         declare function local:if () {55};
         declare function local:import () {56};
         declare function local:in () {57};
         declare function local:infinity () {58};
         declare function local:inherit () {59};
         declare function local:instance () {60};
         declare function local:intersect () {61};
         declare function local:is () {62};
         declare function local:item () {63};
         declare function local:lax () {64};
         declare function local:le () {65};
         declare function local:least () {66};
         declare function local:let () {67};
         declare function local:lt () {68};
         declare function local:minus-sign () {69};
         declare function local:mod () {70};
         declare function local:module () {71};
         declare function local:namespace-node () {72};
         declare function local:namespace () {73};
         declare function local:ne () {74};
         declare function local:next () {75};
         declare function local:no-inherit () {76};
         declare function local:no-preserve () {77};
         declare function local:node () {78};
         declare function local:of () {79};
         declare function local:only () {80};
         declare function local:option () {81};
         declare function local:or () {82};
         declare function local:order () {83};
         declare function local:ordered () {84};
         declare function local:ordering () {85};
         declare function local:parent () {86};
         declare function local:pattern-separator () {87};
         declare function local:per-mille () {88};
         declare function local:percent () {89};
         declare function local:preceding-sibling () {90};
         declare function local:preceding () {91};
         declare function local:preserve () {92};
         declare function local:previous () {93};
         declare function local:processing-instruction () {94};
         declare function local:return () {95};
         declare function local:satisfies () {96};
         declare function local:schema-attribute () {97};
         declare function local:schema-element () {98};
         declare function local:schema () {99};
         declare function local:self () {100};
         declare function local:sliding () {101};
         declare function local:some () {102};
         declare function local:stable () {103};
         declare function local:start () {104};
         declare function local:strict () {105};
         declare function local:strip () {106};
         declare function local:switch () {107};
         declare function local:text () {108};
         declare function local:then () {109};
         declare function local:to () {110};
         declare function local:treat () {111};
         declare function local:try () {112};
         declare function local:tumbling () {113};
         declare function local:type () {114};
         declare function local:typeswitch () {115};
         declare function local:union () {116};
         declare function local:unordered () {117};
         declare function local:validate () {118};
         declare function local:variable () {119};
         declare function local:version () {120};
         declare function local:when () {121};
         declare function local:where () {122};
         declare function local:window () {123};
         declare function local:xquery () {124};
         declare function local:zero-digit () {125};
         
         local:NaN() +
         local:allowing() +
         local:ancestor-or-self() +
         local:ancestor() +
         local:and() +
         local:as() +
         local:ascending() +
         local:at() +
         local:attribute() +
         local:base-uri() +
         local:boundary-space() +
         local:by() +
         local:case() +
         local:cast() +
         local:castable() +
         local:catch() +
         local:child() +
         local:collation() +
         local:comment() +
         local:construction() +
         local:context() +
         local:copy-namespaces() +
         local:count() +
         local:decimal-format() +
         local:decimal-separator() +
         local:declare() +
         local:default() +
         local:descendant-or-self() +
         local:descendant() +
         local:descending() +
         local:digit() +
         local:div() +
         local:document-node() +
         local:document() +
         local:element() +
         local:else() +
         local:empty-sequence() +
         local:empty() +
         local:encoding() +
         local:end() +
         local:eq() +
         local:every() +
         local:except() +
         local:external() +
         local:following-sibling() +
         local:following() +
         local:for() +
         local:function() +
         local:ge() +
         local:greatest() +
         local:group() +
         local:grouping-separator() +
         local:gt() +
         local:idiv() +
         local:if() +
         local:import() +
         local:in() +
         local:infinity() +
         local:inherit() +
         local:instance() +
         local:intersect() +
         local:is() +
         local:item() +
         local:lax() +
         local:le() +
         local:least() +
         local:let() +
         local:lt() +
         local:minus-sign() +
         local:mod() +
         local:module() +
         local:namespace-node() +
         local:namespace() +
         local:ne() +
         local:next() +
         local:no-inherit() +
         local:no-preserve() +
         local:node() +
         local:of() +
         local:only() +
         local:option() +
         local:or() +
         local:order() +
         local:ordered() +
         local:ordering() +
         local:parent() +
         local:pattern-separator() +
         local:per-mille() +
         local:percent() +
         local:preceding-sibling() +
         local:preceding() +
         local:preserve() +
         local:previous() +
         local:processing-instruction() +
         local:return() +
         local:satisfies() +
         local:schema-attribute() +
         local:schema-element() +
         local:schema() +
         local:self() +
         local:sliding() +
         local:some() +
         local:stable() +
         local:start() +
         local:strict() +
         local:strip() +
         local:switch() +
         local:text() +
         local:then() +
         local:to() +
         local:treat() +
         local:try() +
         local:tumbling() +
         local:type() +
         local:typeswitch() +
         local:union() +
         local:unordered() +
         local:validate() +
         local:variable() +
         local:version() +
         local:when() +
         local:where() +
         local:window() +
         local:xquery() +
         local:zero-digit()
         eq (125 * (125 + 1)) div 2
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xquery30keywords4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xquery30keywords5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";
         
         declare function NaN () {1};
         declare function allowing () {2};
         declare function ancestor-or-self () {3};
         declare function ancestor () {4};
         declare function and () {5};
         declare function as () {6};
         declare function ascending () {7};
         declare function at () {8};
         declare function base-uri () {9};
         declare function boundary-space () {10};
         declare function by () {11};
         declare function case () {12};
         declare function cast () {13};
         declare function castable () {14};
         declare function catch () {15};
         declare function child () {16};
         declare function collation () {17};
         declare function construction () {18};
         declare function context () {19};
         declare function copy-namespaces () {20};
         declare function count () {21};
         declare function decimal-format () {22};
         declare function decimal-separator () {23};
         declare function declare () {24};
         declare function default () {25};
         declare function descendant-or-self () {26};
         declare function descendant () {27};
         declare function descending () {28};
         declare function digit () {29};
         declare function div () {30};
         declare function document () {31};
         declare function else () {32};
         declare function empty () {33};
         declare function encoding () {34};
         declare function end () {35};
         declare function eq () {36};
         declare function every () {37};
         declare function except () {38};
         declare function external () {39};
         declare function following-sibling () {40};
         declare function following () {41};
         declare function for () {42};
         declare function ge () {43};
         declare function greatest () {44};
         declare function group () {45};
         declare function grouping-separator () {46};
         declare function gt () {47};
         declare function idiv () {48};
         declare function import () {49};
         declare function in () {50};
         declare function infinity () {51};
         declare function inherit () {52};
         declare function instance () {53};
         declare function intersect () {54};
         declare function is () {55};
         declare function lax () {56};
         declare function le () {57};
         declare function least () {58};
         declare function let () {59};
         declare function lt () {60};
         declare function minus-sign () {61};
         declare function mod () {62};
         declare function module () {63};
         declare function namespace () {64};
         declare function ne () {65};
         declare function next () {66};
         declare function no-inherit () {67};
         declare function no-preserve () {68};
         declare function of () {69};
         declare function only () {70};
         declare function option () {71};
         declare function or () {72};
         declare function order () {73};
         declare function ordered () {74};
         declare function ordering () {75};
         declare function parent () {76};
         declare function pattern-separator () {77};
         declare function per-mille () {78};
         declare function percent () {79};
         declare function preceding-sibling () {80};
         declare function preceding () {81};
         declare function preserve () {82};
         declare function previous () {83};
         declare function return () {84};
         declare function satisfies () {85};
         declare function schema () {86};
         declare function self () {87};
         declare function sliding () {88};
         declare function some () {89};
         declare function stable () {90};
         declare function start () {91};
         declare function strict () {92};
         declare function strip () {93};
         declare function then () {94};
         declare function to () {95};
         declare function treat () {96};
         declare function try () {97};
         declare function tumbling () {98};
         declare function type () {99};
         declare function union () {100};
         declare function unordered () {101};
         declare function validate () {102};
         declare function variable () {103};
         declare function version () {104};
         declare function when () {105};
         declare function where () {106};
         declare function window () {107};
         declare function xquery () {108};
         declare function zero-digit () {109};
         
         NaN() +
         allowing() +
         ancestor-or-self() +
         ancestor() +
         and() +
         as() +
         ascending() +
         at() +
         base-uri() +
         boundary-space() +
         by() +
         case() +
         cast() +
         castable() +
         catch() +
         child() +
         collation() +
         construction() +
         context() +
         copy-namespaces() +
         count() +
         decimal-format() +
         decimal-separator() +
         declare() +
         default() +
         descendant-or-self() +
         descendant() +
         descending() +
         digit() +
         div() +
         document() +
         else() +
         empty() +
         encoding() +
         end() +
         eq() +
         every() +
         except() +
         external() +
         following-sibling() +
         following() +
         for() +
         ge() +
         greatest() +
         group() +
         grouping-separator() +
         gt() +
         idiv() +
         import() +
         in() +
         infinity() +
         inherit() +
         instance() +
         intersect() +
         is() +
         lax() +
         le() +
         least() +
         let() +
         lt() +
         minus-sign() +
         mod() +
         module() +
         namespace() +
         ne() +
         next() +
         no-inherit() +
         no-preserve() +
         of() +
         only() +
         option() +
         or() +
         order() +
         ordered() +
         ordering() +
         parent() +
         pattern-separator() +
         per-mille() +
         percent() +
         preceding-sibling() +
         preceding() +
         preserve() +
         previous() +
         return() +
         satisfies() +
         schema() +
         self() +
         sliding() +
         some() +
         stable() +
         start() +
         strict() +
         strip() +
         then() +
         to() +
         treat() +
         try() +
         tumbling() +
         type() +
         union() +
         unordered() +
         validate() +
         variable() +
         version() +
         when() +
         where() +
         window() +
         xquery() +
         zero-digit()
         eq (109 * (109 + 1)) div 2
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xquery30keywords5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xquery31keywords1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        let $exponent-separator := 1
        return 2
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xquery31keywords1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xquery31keywords2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        let $x := (/)
        return $x/exponent-separator
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xquery31keywords2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xquery31keywords3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        <keywords>
           <exponent-separator/>
        </keywords>/name()
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xquery31keywords3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "keywords") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xquery31keywords4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         declare function local:exponent-separator () {126};
         local:exponent-separator()
         eq 126
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xquery31keywords4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xquery31keywords5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";
         declare function exponent-separator () {110};
         exponent-separator()
         eq 110
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xquery31keywords5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.