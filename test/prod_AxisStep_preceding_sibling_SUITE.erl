-module('prod_AxisStep_preceding_sibling_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['preceding-sibling-1'/1]).
-export(['preceding-sibling-2'/1]).
-export(['preceding-sibling-3'/1]).
-export(['preceding-sibling-4'/1]).
-export(['preceding-sibling-5'/1]).
-export(['preceding-sibling-6'/1]).
-export(['preceding-sibling-7'/1]).
-export(['preceding-sibling-8'/1]).
-export(['preceding-sibling-9'/1]).
-export(['preceding-sibling-10'/1]).
-export(['preceding-sibling-11'/1]).
-export(['preceding-sibling-12'/1]).
-export(['preceding-sibling-13'/1]).
-export(['preceding-sibling-14'/1]).
-export(['preceding-sibling-15'/1]).
-export(['preceding-sibling-16'/1]).
-export(['preceding-sibling-17'/1]).
-export(['preceding-sibling-18'/1]).
-export(['preceding-sibling-19'/1]).
-export(['preceding-sibling-20'/1]).
-export(['preceding-sibling-21'/1]).
-export(['unabbreviatedSyntax-25'/1]).
-export(['K2-preceding-siblingAxis-1'/1]).
-export(['K2-preceding-siblingAxis-2'/1]).
-export(['K2-preceding-siblingAxis-3'/1]).
-export(['K2-preceding-siblingAxis-4'/1]).
-export(['K2-preceding-siblingAxis-5'/1]).
-export(['preceding-sibling-attr'/1]).
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
'preceding-sibling-1', 
'preceding-sibling-2', 
'preceding-sibling-3', 
'preceding-sibling-4', 
'preceding-sibling-5', 
'preceding-sibling-6', 
'preceding-sibling-7', 
'preceding-sibling-8', 
'preceding-sibling-9', 
'preceding-sibling-10', 
'preceding-sibling-11', 
'preceding-sibling-12', 
'preceding-sibling-13', 
'preceding-sibling-14', 
'preceding-sibling-15', 
'preceding-sibling-16', 
'preceding-sibling-17', 
'preceding-sibling-18', 
'preceding-sibling-19', 
'preceding-sibling-20', 
'preceding-sibling-21', 
'unabbreviatedSyntax-25', 
'K2-preceding-siblingAxis-1', 
'K2-preceding-siblingAxis-2', 
'K2-preceding-siblingAxis-3', 
'K2-preceding-siblingAxis-4', 
'K2-preceding-siblingAxis-5', 
'preceding-sibling-attr'
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
'preceding-sibling-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(200)/preceding-sibling::*", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "preceding-sibling-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0019") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'preceding-sibling-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(/works/employee[1]/preceding-sibling::noSuchNode)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "preceding-sibling-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'preceding-sibling-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exactly-one(/works/employee[2]/preceding-sibling::employee) is exactly-one(/works/employee[1])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "preceding-sibling-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'preceding-sibling-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exactly-one(/works[1]/employee[2]/preceding-sibling::employee) is exactly-one(/works[1]/employee[2])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "preceding-sibling-4.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'preceding-sibling-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exactly-one(/works[1]/employee[2]/preceding-sibling::employee) << exactly-one(/works[1]/employee[2])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "preceding-sibling-5.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'preceding-sibling-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exactly-one(/works[1]/employee[2]/preceding-sibling::employee) << exactly-one(/works[1]/employee[2]/preceding-sibling::employee)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "preceding-sibling-6.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'preceding-sibling-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exactly-one(/works[1]/employee[2]/preceding-sibling::employee) << exactly-one(/works[1])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "preceding-sibling-7.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'preceding-sibling-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exactly-one(/works[1]/employee[13]) >> exactly-one(/works[1]/employee[12]/preceding-sibling::employee[1])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "preceding-sibling-8.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'preceding-sibling-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exactly-one(/works[1]/employee[2]/preceding-sibling::employee) >> exactly-one(/works[1]/employee[2]/preceding-sibling::employee)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "preceding-sibling-9.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'preceding-sibling-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exactly-one(/works[1]/employee[13]) >> exactly-one(/works[1]/employee[2]/preceding-sibling::employee)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "preceding-sibling-10.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'preceding-sibling-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(/works/employee[12]/*/day[2]/preceding-sibling::day) | (/works/employee[12]/*/day[2]/preceding-sibling::day)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "preceding-sibling-11.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<day>Monday</day>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'preceding-sibling-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(/works/employee[12]/*/day[2]/preceding-sibling::day) | (/works/employee[12]/*/day[2])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "preceding-sibling-12.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<day>Monday</day><day>Tuesday</day>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'preceding-sibling-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(/works[1]/employee[12]/overtime[1]/day[2]/preceding-sibling::day) intersect (/works[1]/employee[12]/overtime[1]/day[2]/preceding-sibling::day)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "preceding-sibling-13.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<day>Monday</day>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'preceding-sibling-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count((/works[1]/employee[12]/preceding-sibling::employee) except (/works[1]/employee[12]/preceding-sibling::employee))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "preceding-sibling-14.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'preceding-sibling-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(/works[1]/employee[12]/overtime/day) except (/works[1]/employee[12]/overtime/day[2]/preceding-sibling::day)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "preceding-sibling-15.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<day>Tuesday</day>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'preceding-sibling-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(/works[1]/employee[12]/preceding-sibling::employee) and fn:true()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "preceding-sibling-16.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'preceding-sibling-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(/works[1]/employee[12]/preceding-sibling::employee) and fn:false()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "preceding-sibling-17.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'preceding-sibling-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(/works[1]/employee[12]/preceding-sibling::employee) or fn:true()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "preceding-sibling-18.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'preceding-sibling-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(/works[1]/employee[12]/preceding-sibling::employee) or fn:false()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "preceding-sibling-19.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'preceding-sibling-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:deep-equal(/works[1]/employee[12]/preceding-sibling::employee,/works[1]/employee[12]/preceding-sibling::employee)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "preceding-sibling-20.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'preceding-sibling-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $var := <anElement>Some Content</anElement> return fn:count($var/preceding-sibling::*)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "preceding-sibling-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'unabbreviatedSyntax-25'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $h in (/works/employee[2]) return $h/preceding-sibling::employee[fn:position() = 1]", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "unabbreviatedSyntax-25.xq"), Qry1),
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
'K2-preceding-siblingAxis-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $i := <root> <child> <preceding2/> <child2> <preceding1/> <child3> <leaf/> </child3> <following/> </child2> <following/> </child> <following/> </root>; empty(root($i)/preceding-sibling::node())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-preceding-siblingAxis-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-preceding-siblingAxis-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $i := <root> <child> <preceding2/> <child2> <preceding1/> <child3> <leaf/> </child3> <following/> </child2> <following/> </child> <following/> </root>; empty(root($i)/preceding::node())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-preceding-siblingAxis-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-preceding-siblingAxis-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $i := <root> <child> <preceding2/> <child2> <preceding1/> <child3> <leaf/> </child3> <following/> </child2> <following/> </child> <following/> </root>; count(root($i)/preceding::node())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-preceding-siblingAxis-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-preceding-siblingAxis-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $i := <root> <child> <preceding2/> <child2> <preceding1/> <child3> <leaf/> </child3> <following/> </child2> <following/> </child> <following/> </root>; count(root($i)//leaf/preceding::node())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-preceding-siblingAxis-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-preceding-siblingAxis-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $i := <root> <child> <preceding2/> <child2> <preceding1/> <child3> <leaf/> </child3> <following/> </child2> <following/> </child> <following/> </root>; root($i)//count(preceding-sibling::node())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-preceding-siblingAxis-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0 0 0 1 0 1 0 2 2 1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'preceding-sibling-attr'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<foo a='1' b='2' c='3'> <bar>4</bar> <bar>5</bar> <bar>6</bar> </foo>/@c/preceding-sibling::node()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "preceding-sibling-attr.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.