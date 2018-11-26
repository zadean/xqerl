-module('prod_OrderingModeDecl_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['orderDecl-1'/1]).
-export(['orderDecl-2'/1]).
-export(['orderdecl-3'/1]).
-export(['orderDecl-4'/1]).
-export(['orderdecl-5'/1]).
-export(['orderdecl-6'/1]).
-export(['orderDecl-7'/1]).
-export(['orderDecl-8'/1]).
-export(['orderDecl-9'/1]).
-export(['orderDecl-10'/1]).
-export(['orderDecl-11'/1]).
-export(['orderDecl-12'/1]).
-export(['orderDecl-13'/1]).
-export(['orderdecl-14'/1]).
-export(['orderDecl-15'/1]).
-export(['orderDecl-16'/1]).
-export(['orderDecl-17'/1]).
-export(['orderDecl-18'/1]).
-export(['orderDecl-20'/1]).
-export(['orderDecl-21'/1]).
-export(['orderDecl-22'/1]).
-export(['orderDecl-23'/1]).
-export(['K-DefaultOrderingProlog-1'/1]).
-export(['K-DefaultOrderingProlog-2'/1]).
-export(['K-DefaultOrderingProlog-3'/1]).
-export(['K2-DefaultOrderingProlog-1'/1]).
-export(['K2-DefaultOrderingProlog-2'/1]).
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
   __BaseDir = filename:join(TD, "prod"),
   [{base_dir, __BaseDir}|Config].
all() -> [
'orderDecl-1', 
'orderDecl-2', 
'orderdecl-3', 
'orderDecl-4', 
'orderdecl-5', 
'orderdecl-6', 
'orderDecl-7', 
'orderDecl-8', 
'orderDecl-9', 
'orderDecl-10', 
'orderDecl-11', 
'orderDecl-12', 
'orderDecl-13', 
'orderdecl-14', 
'orderDecl-15', 
'orderDecl-16', 
'orderDecl-17', 
'orderDecl-18', 
'orderDecl-20', 
'orderDecl-21', 
'orderDecl-22', 
'orderDecl-23', 
'K-DefaultOrderingProlog-1', 
'K-DefaultOrderingProlog-2', 
'K-DefaultOrderingProlog-3', 
'K2-DefaultOrderingProlog-1', 
'K2-DefaultOrderingProlog-2'
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
'orderDecl-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare ordering unordered; declare ordering ordered; \"aa\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "orderDecl-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0065") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderDecl-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare ordering ordered; let $a := <a><b>1</b><c>2</c></a> return $a/b union $a/c", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "orderDecl-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<b>1</b><c>2</c>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderdecl-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare ordering unordered; (<a>1</a>) union (<b>2</b>)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "orderdecl-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<a>1</a><b>2</b>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_xml(Res,"<b>2</b><a>1</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderDecl-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare ordering ordered; (//overtime) intersect (//overtime)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "orderDecl-4.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<overtime>
     <day>Monday</day>
     <day>Tuesday</day>
   </overtime>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderdecl-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare ordering unordered; (//overtime) intersect (//overtime)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "orderdecl-5.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<overtime>
     <day>Monday</day>
     <day>Tuesday</day>
   </overtime>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderdecl-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare ordering ordered; (//employee[1]) except (//employee[2])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "orderdecl-6.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<employee name=\"Jane Doe 1\" gender=\"female\">
   <empnum>E1</empnum>
   <pnum>P1</pnum>
   <hours>40</hours>
  </employee>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderDecl-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare ordering unordered; (//employee[1]) except (//employee[2])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "orderDecl-7.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<employee name=\"Jane Doe 1\" gender=\"female\">
   <empnum>E1</empnum>
   <pnum>P1</pnum>
   <hours>40</hours>
  </employee>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderDecl-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare ordering ordered; for $x in //hours return $x", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "orderDecl-8.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<hours>40</hours><hours>70</hours><hours>20</hours><hours>80</hours><hours>20</hours><hours>40</hours><hours>20</hours><hours>30</hours><hours>12</hours><hours>40</hours><hours>80</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>40</hours><hours>80</hours>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderDecl-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare ordering ordered; for $x in //hours order by $x descending return $x", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "orderDecl-9.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<hours>80</hours><hours>80</hours><hours>80</hours><hours>70</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>30</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>12</hours>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderDecl-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare ordering ordered; for $x in //hours order by $x ascending return $x", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "orderDecl-10.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<hours>12</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>30</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>70</hours><hours>80</hours><hours>80</hours><hours>80</hours>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderDecl-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare ordering unordered; for $x in //hours order by $x descending return $x", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "orderDecl-11.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<hours>80</hours><hours>80</hours><hours>80</hours><hours>70</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>30</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>12</hours>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderDecl-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare ordering unordered; for $x in //hours order by $x ascending return $x", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "orderDecl-12.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<hours>12</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>30</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>70</hours><hours>80</hours><hours>80</hours><hours>80</hours>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderDecl-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare ordering ordered; for $x in (/works/employee/hours) return $x", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "orderDecl-13.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<hours>40</hours><hours>70</hours><hours>20</hours><hours>80</hours><hours>20</hours><hours>40</hours><hours>20</hours><hours>30</hours><hours>12</hours><hours>40</hours><hours>80</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>40</hours><hours>80</hours>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderdecl-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare ordering unordered; for $x in (/works/employee[4]/hours) return $x", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "orderdecl-14.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<hours>20</hours><hours>40</hours>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_xml(Res,"<hours>40</hours><hours>20</hours>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderDecl-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare ordering ordered; for $x in (//day) return $x", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "orderDecl-15.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<day>Monday</day><day>Tuesday</day>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderDecl-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare ordering unordered; for $x in (//day) return $x", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "orderDecl-16.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<day>Monday</day><day>Tuesday</day>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_xml(Res,"<day>Tuesday</day><day>Monday</day>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderDecl-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare ordering unordered; ordered { for $x in /works//day return $x }", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "orderDecl-17.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<day>Monday</day><day>Tuesday</day>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderDecl-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare ordering ordered; unordered { for $x in /works//day return $x }", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "orderDecl-18.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<day>Monday</day><day>Tuesday</day>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_xml(Res,"<day>Tuesday</day><day>Monday</day>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderDecl-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare ordering ordered; for $x in /works//overtime return $x/child::day", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "orderDecl-20.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<day>Monday</day><day>Tuesday</day>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderDecl-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare ordering ordered; for $x in /works//day[1] return $x/parent::node()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "orderDecl-21.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<overtime>
     <day>Monday</day>
     <day>Tuesday</day>
   </overtime>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderDecl-22'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare ordering ordered; for $x in /works//day[1] return $x/following::day", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "orderDecl-22.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<day>Tuesday</day>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0010") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderDecl-23'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare ordering ordered; for $x in /works//overtime return $x/descendant::day", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "orderDecl-23.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<day>Monday</day><day>Tuesday</day>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DefaultOrderingProlog-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare(::)ordering ordered; 1 eq 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-DefaultOrderingProlog-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DefaultOrderingProlog-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare(::)ordering unordered; 1 eq 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-DefaultOrderingProlog-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DefaultOrderingProlog-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare(::)ordering unordered; declare(::)ordering ordered; 1 eq 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-DefaultOrderingProlog-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0065") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DefaultOrderingProlog-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "ordering eq ordering", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-DefaultOrderingProlog-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DefaultOrderingProlog-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "order eq order", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-DefaultOrderingProlog-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.