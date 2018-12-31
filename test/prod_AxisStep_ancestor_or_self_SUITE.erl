-module('prod_AxisStep_ancestor_or_self_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['ancestorself-1'/1]).
-export(['ancestorself-2'/1]).
-export(['ancestorself-3'/1]).
-export(['ancestorself-4'/1]).
-export(['ancestorself-5'/1]).
-export(['ancestorself-6'/1]).
-export(['ancestorself-7'/1]).
-export(['ancestorself-8'/1]).
-export(['ancestorself-9'/1]).
-export(['ancestorself-10'/1]).
-export(['ancestorself-11'/1]).
-export(['ancestorself-12'/1]).
-export(['ancestorself-13'/1]).
-export(['ancestorself-14'/1]).
-export(['ancestorself-15'/1]).
-export(['ancestorself-16'/1]).
-export(['ancestorself-17'/1]).
-export(['ancestorself-18'/1]).
-export(['ancestorself-19'/1]).
-export(['ancestorself-20'/1]).
-export(['ancestorself-21'/1]).
-export(['unabbreviatedSyntax-11'/1]).
-export(['K2-ancestor-or-selfAxis-1'/1]).
-export(['K2-ancestor-or-selfAxis-2'/1]).
-export(['K2-ancestor-or-selfAxis-3'/1]).
-export(['K2-ancestor-or-selfAxis-4'/1]).
-export(['K2-ancestor-or-selfAxis-5'/1]).
-export(['K2-ancestor-or-selfAxis-6'/1]).
-export(['K2-ancestor-or-selfAxis-7'/1]).
-export(['K2-ancestor-or-selfAxis-8'/1]).
-export(['K2-ancestor-or-selfAxis-9'/1]).
suite() -> [{timetrap,{seconds, 5}}].
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
'ancestorself-1', 
'ancestorself-2', 
'ancestorself-3', 
'ancestorself-4', 
'ancestorself-5', 
'ancestorself-6', 
'ancestorself-7', 
'ancestorself-8', 
'ancestorself-9', 
'ancestorself-10', 
'ancestorself-11', 
'ancestorself-12', 
'ancestorself-13', 
'ancestorself-14', 
'ancestorself-15', 
'ancestorself-16', 
'ancestorself-17', 
'ancestorself-18', 
'ancestorself-19', 
'ancestorself-20', 
'ancestorself-21', 
'unabbreviatedSyntax-11', 
'K2-ancestor-or-selfAxis-1', 
'K2-ancestor-or-selfAxis-2', 
'K2-ancestor-or-selfAxis-3', 
'K2-ancestor-or-selfAxis-4', 
'K2-ancestor-or-selfAxis-5', 
'K2-ancestor-or-selfAxis-6', 
'K2-ancestor-or-selfAxis-7', 
'K2-ancestor-or-selfAxis-8', 
'K2-ancestor-or-selfAxis-9'
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
'ancestorself-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(200)/ancestor-or-self::*", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ancestorself-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0019") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ancestorself-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(/works/employee[1]/ancestor-or-self::noSuchNode)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ancestorself-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ancestorself-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exactly-one(/works/employee[1]/ancestor-or-self::works) is exactly-one(/works)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ancestorself-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ancestorself-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exactly-one(/works/employee[1]/ancestor-or-self::works) is exactly-one(/works/employee[1])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ancestorself-4.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ancestorself-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exactly-one(/works/employee[1]/ancestor-or-self::works) << exactly-one(/works/employee[1])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ancestorself-5.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ancestorself-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exactly-one(/works/employee[1]/ancestor-or-self::works) << exactly-one(/works/employee[1]/ancestor-or-self::works)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ancestorself-6.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ancestorself-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exactly-one(/works/employee[1]/ancestor-or-self::works) << exactly-one(/works/employee[1])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ancestorself-7.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ancestorself-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exactly-one(/works/employee[1]) >> exactly-one(/works/employee[1]/ancestor-or-self::works)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ancestorself-8.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ancestorself-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exactly-one(/works/employee[1]/ancestor-or-self::works) >> exactly-one(/works/employee[1]/ancestor-or-self::works)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ancestorself-9.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ancestorself-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exactly-one(/works/employee[1]/ancestor-or-self::works) >> exactly-one(/works/employee[1]/hours)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ancestorself-10.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ancestorself-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "((/works/employee[12]/*/day/ancestor-or-self::overtime) | (/works/employee[12]/*/day/ancestor-or-self::overtime))/count(*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ancestorself-11.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ancestorself-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "((/works/employee[12]/*/day[1]/ancestor-or-self::overtime) | (/works/employee[12]/*/day[2]/ancestor-or-self::overtime))/count(*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ancestorself-12.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ancestorself-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "((/works/employee[12]/overtime/day/ancestor-or-self::employee) intersect (/works/employee[12]/overtime/day/ancestor-or-self::employee))/@name", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ancestorself-13.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "John Doe 12") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ancestorself-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count((/works/employee[12]/overtime/day[ancestor-or-self::overtime]) except (/works/employee[12]/overtime/day[ancestor-or-self::overtime]))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ancestorself-14.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ancestorself-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(/works/employee[12]/overtime/day[ancestor-or-self::overtime]) except (/works/employee[12]/overtime/day[1])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ancestorself-15.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Tuesday") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ancestorself-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(/works/employee[12]/overtime/day[ancestor-or-self::overtime]) and fn:true()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ancestorself-16.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ancestorself-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(/works/employee[12]/overtime/day[ancestor-or-self::overtime]) and fn:false()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ancestorself-17.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ancestorself-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(/works/employee[12]/overtime/day[ancestor-or-self::overtime]) or fn:true()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ancestorself-18.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ancestorself-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(/works/employee[12]/overtime/day[ancestor-or-self::overtime]) or fn:false()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ancestorself-19.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ancestorself-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:deep-equal(/works/employee[12]/overtime/ancestor-or-self::works,/works/employee[12]/overtime/ancestor-or-self::works)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ancestorself-20.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ancestorself-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $var := <anElement>Some Content</anElement> return $var/ancestor-or-self::*", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ancestorself-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<anElement>Some Content</anElement>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'unabbreviatedSyntax-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(for $h in (/works/employee[1]/hours) return $h/ancestor-or-self::employee)/@name", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "unabbreviatedSyntax-11.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Jane Doe 1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-ancestor-or-selfAxis-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<out>{1, <element/>/ancestor-or-self::node(), 1}</out>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-ancestor-or-selfAxis-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out>1<element/>1</out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-ancestor-or-selfAxis-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<out>{1, <?target data?>/ancestor-or-self::node(), 1}</out>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-ancestor-or-selfAxis-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out>1<?target data?>1</out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-ancestor-or-selfAxis-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1, (attribute name {\"content\"}/ancestor-or-self::node() instance of attribute(name)), 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-ancestor-or-selfAxis-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1, true(), 1") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-ancestor-or-selfAxis-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<out>{1, <!-- content -->/ancestor-or-self::node(), 1}</out>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-ancestor-or-selfAxis-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out>1<!-- content -->1</out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-ancestor-or-selfAxis-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1, document {()}/ancestor-or-self::node(), 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-ancestor-or-selfAxis-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"$result[1] eq 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"$result[2] instance of document-node()") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"$result[3] eq 1") of 
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
'K2-ancestor-or-selfAxis-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1, text {\"\"}/ancestor-or-self::node(), 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-ancestor-or-selfAxis-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"$result[1] eq 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"$result[2] instance of text()") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"$result[3] eq 1") of 
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
'K2-ancestor-or-selfAxis-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(<a> <b c=\"\"> <c/> </b> <d/> </a>/b/c/(ancestor-or-self::*))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-ancestor-or-selfAxis-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"3") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-ancestor-or-selfAxis-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<a> <b c=\"\"> <c/> </b> <d/> </a>//count(ancestor-or-self::*)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-ancestor-or-selfAxis-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 2 3 2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-ancestor-or-selfAxis-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<r> <a> <b> <c/> </b> </a> </r>/a/b/c/(ancestor-or-self::*[1], ancestor-or-self::*[2], ancestor-or-self::*[last()], ancestor-or-self::*[10])", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-ancestor-or-selfAxis-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<r><a><b><c/></b></a></r><b><c/></b><c/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.