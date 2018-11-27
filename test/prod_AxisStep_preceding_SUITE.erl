-module('prod_AxisStep_preceding_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['preceding-1'/1]).
-export(['preceding-2'/1]).
-export(['preceding-3'/1]).
-export(['preceding-4'/1]).
-export(['preceding-5'/1]).
-export(['preceding-6'/1]).
-export(['preceding-7'/1]).
-export(['preceding-8'/1]).
-export(['preceding-9'/1]).
-export(['preceding-10'/1]).
-export(['preceding-11'/1]).
-export(['preceding-12'/1]).
-export(['preceding-13'/1]).
-export(['preceding-14'/1]).
-export(['preceding-15'/1]).
-export(['preceding-16'/1]).
-export(['preceding-17'/1]).
-export(['preceding-18'/1]).
-export(['preceding-19'/1]).
-export(['preceding-20'/1]).
-export(['preceding-21'/1]).
-export(['preceding-22'/1]).
-export(['preceding-23'/1]).
-export(['K2-precedingAxis-1'/1]).
-export(['K2-precedingAxis-2'/1]).
-export(['K2-precedingAxis-3'/1]).
-export(['K2-precedingAxis-4'/1]).
-export(['K2-precedingAxis-5'/1]).
-export(['K2-precedingAxis-6'/1]).
-export(['K2-precedingAxis-7'/1]).
-export(['K2-precedingAxis-8'/1]).
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
'preceding-1', 
'preceding-2', 
'preceding-3', 
'preceding-4', 
'preceding-5', 
'preceding-6', 
'preceding-7', 
'preceding-8', 
'preceding-9', 
'preceding-10', 
'preceding-11', 
'preceding-12', 
'preceding-13', 
'preceding-14', 
'preceding-15', 
'preceding-16', 
'preceding-17', 
'preceding-18', 
'preceding-19', 
'preceding-20', 
'preceding-21', 
'preceding-22', 
'preceding-23', 
'K2-precedingAxis-1', 
'K2-precedingAxis-2', 
'K2-precedingAxis-3', 
'K2-precedingAxis-4', 
'K2-precedingAxis-5', 
'K2-precedingAxis-6', 
'K2-precedingAxis-7', 
'K2-precedingAxis-8'
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
'preceding-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(200)/preceding::*", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "preceding-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0019") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'preceding-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(/works/employee[1]/preceding::noSuchNode)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "preceding-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'preceding-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exactly-one(/works/employee[2]/preceding::employee) is exactly-one(/works/employee[1])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "preceding-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'preceding-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exactly-one(/works[1]/employee[2]/preceding::employee) is exactly-one(/works[1]/employee[2])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "preceding-4.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'preceding-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exactly-one(/works[1]/employee[2]/preceding::employee) << exactly-one(/works[1]/employee[2])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "preceding-5.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'preceding-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exactly-one(/works[1]/employee[2]/preceding::employee) << exactly-one(/works[1]/employee[2]/preceding::employee)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "preceding-6.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'preceding-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exactly-one(/works[1]/employee[2]/preceding::employee) << exactly-one(/works[1])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "preceding-7.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'preceding-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exactly-one(/works[1]/employee[13]) >> exactly-one(/works[1]/employee[12]/overtime[1]/day[2]/preceding::day)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "preceding-8.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'preceding-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exactly-one(/works[1]/employee[2]/preceding::employee) >> exactly-one(/works[1]/employee[2]/preceding::employee)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "preceding-9.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'preceding-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exactly-one(/works[1]/employee[13]) >> exactly-one(/works[1]/employee[2]/preceding::employee)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "preceding-10.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'preceding-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(/works/employee[12]/*/day[2]/preceding::day) | (/works/employee[12]/*/day[2]/preceding::day)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "preceding-11.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<day>Monday</day>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'preceding-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(/works/employee[12]/*/day[2]/preceding::day) | (/works/employee[12]/*/day[2])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "preceding-12.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<day>Monday</day><day>Tuesday</day>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'preceding-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(/works[1]/employee[12]/overtime[1]/day[2]/preceding::day) intersect (/works[1]/employee[12]/overtime[1]/day[2]/preceding::day)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "preceding-13.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<day>Monday</day>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'preceding-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count((/works[1]/employee[12]/preceding::employee) except (/works[1]/employee[12]/preceding::employee))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "preceding-14.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'preceding-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(/works[1]/employee[12]/overtime/day) except (/works[1]/employee[12]/overtime/day[2]/preceding::day)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "preceding-15.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<day>Tuesday</day>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'preceding-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(/works[1]/employee[12]/preceding::employee) and fn:true()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "preceding-16.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'preceding-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(/works[1]/employee[12]/preceding::employee) and fn:false()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "preceding-17.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'preceding-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(/works[1]/employee[12]/preceding::employee) or fn:true()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "preceding-18.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'preceding-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(/works[1]/employee[12]/preceding::employee) or fn:false()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "preceding-19.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'preceding-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:deep-equal(/works[1]/employee[12]/preceding::employee,/works[1]/employee[12]/preceding::employee)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "preceding-20.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'preceding-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $var := <anElement>Some Content</anElement> return fn:count($var/preceding::*)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "preceding-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'preceding-22'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<result> { (//node())[last()]/preceding::node() } </result>", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "AxisStep.preceding/SmallTree.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, []}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "preceding-22.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>
    <section1 noValue=\"\">
        text1
        <?target1 data1?>
        <?target2 data2?>
        <?target3 data3?>
    </section1>
        text1
        <?target1 data1?>
        <?target2 data2?>
        <?target3 data3?>
    
    <section2 attr1=\"1\" attr2=\"2\"/>
    <!-- comment1 -->
    <section3/>
    <!-- comment2 -->
    <!-- comment3 -->
    <noChildren/>
    <oneTextChild>theTextChild2</oneTextChild>theTextChild2</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'preceding-23'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<result> { (//node())[last()]/preceding::node(), empty((//node())[last()]/preceding::node()) } </result>", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "AxisStep.preceding/AttributesAndElements.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, []}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "preceding-23.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>true</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-precedingAxis-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $i := <root> <child/> <child/> <child> <child2> <child3> <leaf/> </child3> </child2> </child> </root>; empty(root($i)/preceding::node())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-precedingAxis-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-precedingAxis-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $i := <root> <child> <child2> <child3> <leaf/> </child3> <following/> </child2> <following/> </child> <following/> </root>; empty(root($i)//leaf/preceding::node())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-precedingAxis-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-precedingAxis-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $i := <root> <child> <preceding2/> <child2> <preceding1/> <child3> <leaf/> </child3> <following/> </child2> <following/> </child> <following/> </root>; root($i)//leaf/preceding::node()[1]", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-precedingAxis-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<preceding1/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-precedingAxis-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $i := <root> <child> <preceding2/> <child2> <preceding1/> <child3> <leaf/> </child3> <following/> </child2> <following/> </child> <following/> </root>; root($i)//leaf/(preceding::node())[1]", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-precedingAxis-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<preceding2/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-precedingAxis-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $i := <root> <child> <preceding2/> <child2> <preceding1/> <child3> <leaf/> </child3> <following/> </child2> <following/> </child> <following/> </root>; root($i)//leaf/(preceding::node())[last()]", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-precedingAxis-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<preceding1/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-precedingAxis-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $i := <root> <child> <preceding2/> <child2> <preceding1/> <child3> <leaf/> </child3> <following/> </child2> <following/> </child> <following/> </root>; root($i)//leaf/preceding::node()[last()]", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-precedingAxis-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<preceding2/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-precedingAxis-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $i := <root> <child> <preceding2/> <child2> <preceding1/> <child3> <leaf/> </child3> <following/> </child2> <following/> </child> <following/> </root>; count(root($i)//leaf/preceding::node())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-precedingAxis-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-precedingAxis-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $i := <root> <child> <preceding2/> <child2> <preceding1/> <child3> <leaf/> </child3> <following/> </child2> <following/> </child> <following/> </root>; root($i)//count(preceding::*)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-precedingAxis-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0 0 0 1 1 2 2 4 6 8") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.