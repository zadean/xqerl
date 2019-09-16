-module('prod_UnorderedExpr_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['Orderexpr-1'/1]).
-export(['Orderexpr-2'/1]).
-export(['Orderexpr-5'/1]).
-export(['Orderexpr-6'/1]).
-export(['Orderexpr-9'/1]).
-export(['Orderexpr-10'/1]).
-export(['Orderexpr-11'/1]).
-export(['Orderexpr-12'/1]).
-export(['Orderexpr-13'/1]).
-export(['Orderexpr-14'/1]).
-export(['Orderexpr-15'/1]).
-export(['Orderexpr-16'/1]).
-export(['Orderexpr-17'/1]).
-export(['Orderexpr-18'/1]).
-export(['Orderexpr-19'/1]).
-export(['Orderexpr-20'/1]).
-export(['orderedunorderedexpr-1'/1]).
-export(['orderedunorderedexpr-2'/1]).
-export(['orderedunorderedexpr-3'/1]).
-export(['orderedunorderedexpr-4'/1]).
-export(['orderedunorderedexpr-5'/1]).
-export(['orderedunorderedexpr-6'/1]).
-export(['K-OrderExpr-1'/1]).
-export(['K-OrderExpr-1a'/1]).
-export(['K-OrderExpr-2'/1]).
-export(['K-OrderExpr-2a'/1]).
-export(['K-OrderExpr-3'/1]).
-export(['K-OrderExpr-4'/1]).
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
   {group, group_1}
   ].
groups() -> [
   {group_0, [parallel], [
    'Orderexpr-1', 
    'Orderexpr-2', 
    'Orderexpr-5', 
    'Orderexpr-6', 
    'Orderexpr-9', 
    'Orderexpr-10', 
    'Orderexpr-11', 
    'Orderexpr-12', 
    'Orderexpr-13', 
    'Orderexpr-14', 
    'Orderexpr-15', 
    'Orderexpr-16', 
    'Orderexpr-17', 
    'Orderexpr-18', 
    'Orderexpr-19', 
    'Orderexpr-20', 
    'orderedunorderedexpr-1', 
    'orderedunorderedexpr-2', 
    'orderedunorderedexpr-3', 
    'orderedunorderedexpr-4', 
    'orderedunorderedexpr-5', 
    'orderedunorderedexpr-6', 
    'K-OrderExpr-1']}, 
   {group_1, [parallel], [
    'K-OrderExpr-1a', 
    'K-OrderExpr-2', 
    'K-OrderExpr-2a', 
    'K-OrderExpr-3', 
    'K-OrderExpr-4']}].
environment('partlist',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/partlist.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
].
'Orderexpr-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "ordered {//part[@partid < 2]}", 
   {Env,Opts} = xqerl_test:handle_environment(environment('partlist',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Orderexpr-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<part partid=\"0\" name=\"car\"/><part partid=\"1\" partof=\"0\" name=\"engine\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Orderexpr-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "unordered {//part[@partid < 2]}", 
   {Env,Opts} = xqerl_test:handle_environment(environment('partlist',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Orderexpr-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<part partid=\"0\" name=\"car\"/><part partid=\"1\" partof=\"0\" name=\"engine\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_xml(Res,"<part partid=\"1\" partof=\"0\" name=\"engine\"/><part partid=\"0\" name=\"car\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Orderexpr-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "ordered {//part[@partid < 2][2]}", 
   {Env,Opts} = xqerl_test:handle_environment(environment('partlist',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Orderexpr-5.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<part partid=\"1\" partof=\"0\" name=\"engine\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Orderexpr-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "unordered {//part[@partid < 2][2]}", 
   {Env,Opts} = xqerl_test:handle_environment(environment('partlist',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Orderexpr-6.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<part partid=\"1\" partof=\"0\" name=\"engine\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_xml(Res,"<part partid=\"0\" name=\"car\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Orderexpr-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "ordered {//part[@partof = 1] union //part[@partid = 1] }", 
   {Env,Opts} = xqerl_test:handle_environment(environment('partlist',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Orderexpr-9.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_count(Res, "2") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"some $e in $result satisfies $e/self::part[@partid=\"1\"][@partof=\"0\"][@name=\"engine\"]") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"some $e in $result satisfies $e/self::part[@partid=\"3\"][@partof=\"1\"][@name=\"piston\"]") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Orderexpr-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "unordered {//part[@partof = 1] union //part[@partid = 1] }", 
   {Env,Opts} = xqerl_test:handle_environment(environment('partlist',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Orderexpr-10.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_count(Res, "2") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"some $e in $result satisfies $e/self::part[@partid=\"1\"][@partof=\"0\"][@name=\"engine\"]") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"some $e in $result satisfies $e/self::part[@partid=\"3\"][@partof=\"1\"][@name=\"piston\"]") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Orderexpr-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "ordered {//part[@partof < 2] intersect //part[@partid = 1 or @partid > 2] }", 
   {Env,Opts} = xqerl_test:handle_environment(environment('partlist',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Orderexpr-11.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<part partid=\"1\" partof=\"0\" name=\"engine\"/><part partid=\"3\" partof=\"1\" name=\"piston\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Orderexpr-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "unordered {//part[@partof < 2] intersect //part[@partid = 1 or @partid > 2] }", 
   {Env,Opts} = xqerl_test:handle_environment(environment('partlist',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Orderexpr-12.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<part partid=\"1\" partof=\"0\" name=\"engine\"/><part partid=\"3\" partof=\"1\" name=\"piston\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_xml(Res,"<part partid=\"3\" partof=\"1\" name=\"piston\"/><part partid=\"1\" partof=\"0\" name=\"engine\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Orderexpr-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "ordered {//part[@partof < 2] except //part[@partid = 2] }", 
   {Env,Opts} = xqerl_test:handle_environment(environment('partlist',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Orderexpr-13.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<part partid=\"1\" partof=\"0\" name=\"engine\"/><part partid=\"3\" partof=\"1\" name=\"piston\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Orderexpr-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "unordered {//part[@partof < 2] except //part[@partid = 2] }", 
   {Env,Opts} = xqerl_test:handle_environment(environment('partlist',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Orderexpr-14.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<part partid=\"1\" partof=\"0\" name=\"engine\"/><part partid=\"3\" partof=\"1\" name=\"piston\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_xml(Res,"<part partid=\"3\" partof=\"1\" name=\"piston\"/><part partid=\"1\" partof=\"0\" name=\"engine\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Orderexpr-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "ordered {fn:subsequence((1,2,3,4),2,2)}", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Orderexpr-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2 3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Orderexpr-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "unordered {fn:subsequence((1,2,3,4),2,2)}", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Orderexpr-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "2 3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_string_value(Res, "3 2") of 
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
'Orderexpr-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "ordered {fn:reverse((3,2))}", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Orderexpr-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2 3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Orderexpr-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "unordered {fn:reverse((2,3))}", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Orderexpr-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "2 3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_string_value(Res, "3 2") of 
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
'Orderexpr-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "ordered { for $i in (//part[@partid = 1], //part[@partid = 2]), $j in (//part[@partof = $i/@partid]) where ($i/@partid + $j/@partid) < 7 return $i/@partid + $j/@partid }", 
   {Env,Opts} = xqerl_test:handle_environment(environment('partlist',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Orderexpr-19.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "4 6") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Orderexpr-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "unordered { for $i in (//part[@partid = 1], //part[@partid = 2]), $j in (//part[@partof = $i/@partid]) where ($i/@partid + $j/@partid) < 7 return $i/@partid + $j/@partid }", 
   {Env,Opts} = xqerl_test:handle_environment(environment('partlist',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Orderexpr-20.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "4 6") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_string_value(Res, "6 4") of 
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
'orderedunorderedexpr-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "ordered {if (fn:true()) then (0,1,2,3,4) else (\"A\",\"B\",\"C\")}", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderedunorderedexpr-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0 1 2 3 4") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderedunorderedexpr-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "ordered {if (1 eq 1 and 2 eq 2) then (0,1,2,3,4) else (\"a\",\"b\")}", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderedunorderedexpr-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0 1 2 3 4") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderedunorderedexpr-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "ordered {if (1 eq 1 or 2 eq 3) then (0,1,2,3,4) else (\"a\",\"b\")}", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderedunorderedexpr-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0 1 2 3 4") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderedunorderedexpr-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "ordered {if (some $x in (1, 2, 3), $y in (2, 3, 4) satisfies $x + $y = 4) then (0,1,2,3,4) else (\"a\",\"b\")}", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderedunorderedexpr-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0 1 2 3 4") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderedunorderedexpr-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "ordered {if (every $x in (1, 2, 3) satisfies $x < 4) then (0,1,2,3,4) else (\"a\",\"b\")}", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderedunorderedexpr-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0 1 2 3 4") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderedunorderedexpr-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "ordered {typeswitch(123) case $i as xs:string return (\"a\",\"b\",\"c\") case $i as xs:double return (\"a\",\"b\",\"c\") case $i as xs:integer return (1,2,3,4) default return (\"a\",\"b\",\"c\") }", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderedunorderedexpr-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 2 3 4") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-OrderExpr-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"spec:XQ10 XQ30"}. 
'K-OrderExpr-1a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "ordered{}", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-OrderExpr-1a.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-OrderExpr-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"spec:XQ10 XQ30"}. 
'K-OrderExpr-2a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "unordered{}", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-OrderExpr-2a.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-OrderExpr-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "ordered{true()}", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-OrderExpr-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-OrderExpr-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "unordered{true()}", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-OrderExpr-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.