-module('prod_PathExpr_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['PathExprErr-2'/1]).
-export(['PathExpr-1'/1]).
-export(['PathExpr-2'/1]).
-export(['PathExpr-3'/1]).
-export(['PathExpr-4'/1]).
-export(['PathExpr-5'/1]).
-export(['PathExpr-5p'/1]).
-export(['PathExpr-6'/1]).
-export(['PathExpr-7'/1]).
-export(['PathExpr-7p'/1]).
-export(['PathExpr-8'/1]).
-export(['PathExpr-8p'/1]).
-export(['PathExpr-9'/1]).
-export(['PathExpr-9p'/1]).
-export(['PathExpr-10'/1]).
-export(['PathExpr-11'/1]).
-export(['PathExpr-12'/1]).
-export(['PathExpr-13'/1]).
-export(['PathExpr-14'/1]).
-export(['PathExpr-15'/1]).
-export(['PathExpr-16'/1]).
suite() -> [{timetrap,{seconds, 5}}].
end_per_suite(_Config) -> 
   ct:timetrap({seconds,60}), 
   xqerl_module:unload(all).
init_per_suite(Config) -> 
   xqerl_module:one_time_init(), 
   {ok,_} = application:ensure_all_started(xqerl),
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   __BaseDir = filename:join(TD, "prod"),
   [{base_dir, __BaseDir}|Config].
all() -> [
'PathExprErr-2', 
'PathExpr-1', 
'PathExpr-2', 
'PathExpr-3', 
'PathExpr-4', 
'PathExpr-5', 
'PathExpr-5p', 
'PathExpr-6', 
'PathExpr-7', 
'PathExpr-7p', 
'PathExpr-8', 
'PathExpr-8p', 
'PathExpr-9', 
'PathExpr-9p', 
'PathExpr-10', 
'PathExpr-11', 
'PathExpr-12', 
'PathExpr-13', 
'PathExpr-14', 
'PathExpr-15', 
'PathExpr-16'
].
environment('OneTopElement',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "PathExpr/OneTopElement.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
].
'PathExprErr-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(<a>1</a>,<b>2</b>)/(if(position() eq 1) then . else data(.))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "PathExprErr-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0018") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'PathExpr-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(.[5 * /])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('OneTopElement',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "PathExpr-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'PathExpr-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(.[(/) * 5])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('OneTopElement',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "PathExpr-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'PathExpr-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(.[/ * 5])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('OneTopElement',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "PathExpr-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'PathExpr-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(.[(/) < 5])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('OneTopElement',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "PathExpr-4.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'PathExpr-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(.[/ < 5])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('OneTopElement',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "PathExpr-5.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'PathExpr-5p'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XP20+"}. 
'PathExpr-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(.[5</])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('OneTopElement',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "PathExpr-6.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'PathExpr-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(.[/ < a])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('OneTopElement',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "PathExpr-7.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'PathExpr-7p'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XP20+"}. 
'PathExpr-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(.[/ < /b])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('OneTopElement',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "PathExpr-8.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'PathExpr-8p'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XP20+"}. 
'PathExpr-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(.[/<a div 3])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('OneTopElement',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "PathExpr-9.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'PathExpr-9p'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XP20+"}. 
'PathExpr-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(.[if (doclevel) then / else /*])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('OneTopElement',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "PathExpr-10.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XPST0008") of 
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
'PathExpr-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $a := . return fn:count(.[/ is $a])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('OneTopElement',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "PathExpr-11.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'PathExpr-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(.[/ instance of document-node(schema-element(x))])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('OneTopElement',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "PathExpr-12.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'PathExpr-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(.[let $doc := / return $doc/*])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('OneTopElement',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "PathExpr-13.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'PathExpr-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(.[/<a/>])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('OneTopElement',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "PathExpr-14.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'PathExpr-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(.[/-5])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('OneTopElement',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "PathExpr-15.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'PathExpr-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $a := . return fn:count(.[/=$a])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('OneTopElement',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "PathExpr-16.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.