-module('prod_AxisStep_following_sibling_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['followingsibling-1'/1]).
-export(['followingsibling-2'/1]).
-export(['followingsibling-3'/1]).
-export(['followingsibling-4'/1]).
-export(['followingsibling-5'/1]).
-export(['followingsibling-6'/1]).
-export(['followingsibling-7'/1]).
-export(['followingsibling-8'/1]).
-export(['followingsibling-9'/1]).
-export(['followingsibling-10'/1]).
-export(['followingsibling-11'/1]).
-export(['followingsibling-12'/1]).
-export(['followingsibling-13'/1]).
-export(['followingsibling-14'/1]).
-export(['followingsibling-15'/1]).
-export(['followingsibling-16'/1]).
-export(['followingsibling-17'/1]).
-export(['followingsibling-18'/1]).
-export(['followingsibling-19'/1]).
-export(['followingsibling-20'/1]).
-export(['followingsibling-21'/1]).
-export(['unabbreviatedSyntax-24'/1]).
-export(['K2-following-siblingAxis-1'/1]).
-export(['K2-following-siblingAxis-2'/1]).
-export(['K2-following-siblingAxis-3'/1]).
-export(['K2-following-siblingAxis-4'/1]).
-export(['K2-following-siblingAxis-5'/1]).
-export(['K2-following-siblingAxis-6'/1]).
-export(['K2-following-siblingAxis-7'/1]).
-export(['K2-following-siblingAxis-8'/1]).
-export(['K2-following-siblingAxis-9'/1]).
-export(['K2-following-siblingAxis-10'/1]).
-export(['following-sibling-attr'/1]).
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
    'followingsibling-1', 
    'followingsibling-2', 
    'followingsibling-3', 
    'followingsibling-4', 
    'followingsibling-5', 
    'followingsibling-6', 
    'followingsibling-7', 
    'followingsibling-8', 
    'followingsibling-9', 
    'followingsibling-10', 
    'followingsibling-11', 
    'followingsibling-12', 
    'followingsibling-13', 
    'followingsibling-14', 
    'followingsibling-15', 
    'followingsibling-16', 
    'followingsibling-17', 
    'followingsibling-18', 
    'followingsibling-19', 
    'followingsibling-20', 
    'followingsibling-21', 
    'unabbreviatedSyntax-24', 
    'K2-following-siblingAxis-1']}, 
   {group_1, [parallel], [
    'K2-following-siblingAxis-2', 
    'K2-following-siblingAxis-3', 
    'K2-following-siblingAxis-4', 
    'K2-following-siblingAxis-5', 
    'K2-following-siblingAxis-6', 
    'K2-following-siblingAxis-7', 
    'K2-following-siblingAxis-8', 
    'K2-following-siblingAxis-9', 
    'K2-following-siblingAxis-10', 
    'following-sibling-attr']}].
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
'followingsibling-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(200)/following-sibling::*", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "followingsibling-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0019") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPTY0019 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'followingsibling-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(/works/employee[1]/following-sibling::noSuchNode)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "followingsibling-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'followingsibling-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exactly-one(/works/employee[12]/following-sibling::employee) is exactly-one(/works/employee[13])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "followingsibling-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'followingsibling-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exactly-one(/works[1]/employee[12]/following-sibling::employee) is exactly-one(/works[1]/employee[12])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "followingsibling-4.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'followingsibling-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exactly-one(/works[1]/employee[12]/overtime/day[1]/following-sibling::day) << exactly-one(/works[1]/employee[13])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "followingsibling-5.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'followingsibling-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exactly-one(/works[1]/employee[12]/following-sibling::employee) << exactly-one(/works[1]/employee[12]/following-sibling::employee)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "followingsibling-6.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'followingsibling-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exactly-one(/works[1]/employee[12]/following-sibling::employee) << exactly-one(/works[1]/employee[12]/overtime[1])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "followingsibling-7.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'followingsibling-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exactly-one(/works[1]/employee[13]) >> exactly-one(/works[1]/employee[12]/overtime[1]/day[1]/following-sibling::day)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "followingsibling-8.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'followingsibling-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exactly-one(/works[1]/employee[12]/following-sibling::employee) >> exactly-one(/works[1]/employee[12]/following-sibling::employee)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "followingsibling-9.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'followingsibling-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exactly-one(/works[1]/employee[12]) >> exactly-one(/works[1]/employee[12]/following-sibling::employee)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "followingsibling-10.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'followingsibling-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(/works/employee[12]/*/day[1]/following-sibling::day) | (/works/employee[12]/*/day[1]/following-sibling::day)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "followingsibling-11.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<day>Tuesday</day>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'followingsibling-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(/works/employee[12]/*/day[1]/following-sibling::day) | (/works/employee[12]/*/day[1])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "followingsibling-12.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<day>Monday</day><day>Tuesday</day>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'followingsibling-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(/works[1]/employee[12]/overtime[1]/day[1]/following-sibling::day) intersect (/works[1]/employee[12]/overtime[1]/day[1]/following-sibling::day)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "followingsibling-13.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<day>Tuesday</day>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'followingsibling-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count((/works[1]/employee[12]/following-sibling::employee) except (/works[1]/employee[12]/following-sibling::employee))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "followingsibling-14.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'followingsibling-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(/works[1]/employee[12]/overtime/day) except (/works[1]/employee[12]/overtime/day[1]/following-sibling::day)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "followingsibling-15.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<day>Monday</day>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'followingsibling-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(/works[1]/employee[12]/following-sibling::employee) and fn:true()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "followingsibling-16.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'followingsibling-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(/works[1]/employee[12]/following-sibling::employee) and fn:false()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "followingsibling-17.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'followingsibling-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(/works[1]/employee[12]/following-sibling::employee) or fn:true()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "followingsibling-18.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'followingsibling-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(/works[1]/employee[12]/following-sibling::employee) or fn:false()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "followingsibling-19.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'followingsibling-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:deep-equal(/works[1]/employee[12]/following-sibling::employee,/works[1]/employee[12]/following-sibling::employee)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "followingsibling-20.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'followingsibling-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $var := <anElement>Some Content</anElement> return fn:count($var/following::*)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "followingsibling-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'unabbreviatedSyntax-24'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $h in (/works/employee[2]) return $h/following-sibling::employee[fn:position() = 1]", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "unabbreviatedSyntax-24.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<employee name=\"Jane Doe 3\" gender=\"female\">
   <empnum>E1</empnum>
   <pnum>P3</pnum>
   <hours>80</hours>
  </employee>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-following-siblingAxis-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<root> <child/> <child/> <child/> </root>/child[1]/following-sibling::node()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-following-siblingAxis-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<child/><child/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-following-siblingAxis-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<root> <child/> <child/> <child attr=\"foo\" attr2=\"foo\"/> </root>/child[1]/following-sibling::node()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-following-siblingAxis-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<child/><child attr=\"foo\" attr2=\"foo\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-following-siblingAxis-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(<root> <child/> <child/> <child attr=\"foo\" attr2=\"foo\"/> </root>/child[1]/following-sibling::node())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-following-siblingAxis-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-following-siblingAxis-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $i := <root> <child/> <child/> <child> <child2> <child3> <leaf/> </child3> </child2> </child> </root>; 
        root($i)//count(following-sibling::node())
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-following-siblingAxis-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0 2 1 0 0 0 0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-following-siblingAxis-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $i := <root> <child/> <child/> <child> <child2> <child3> <leaf/> </child3> </child2> </child> </root>; 
        root($i)//following-sibling::node()
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-following-siblingAxis-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<child/><child><child2><child3><leaf/></child3></child2></child>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-following-siblingAxis-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $i := <root> <child/> <child/> <child> <child2> <child3> <leaf/> </child3> </child2> </child> </root>; 
        root($i)//(following-sibling::node(), \"BOO\")
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-following-siblingAxis-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0018") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPTY0018 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-following-siblingAxis-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(<root> <child/> </root>/following-sibling::node())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-following-siblingAxis-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-following-siblingAxis-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1, <root> <child/> </root>/following-sibling::node(), 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-following-siblingAxis-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-following-siblingAxis-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1, <root/>/following-sibling::node(), 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-following-siblingAxis-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-following-siblingAxis-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<result> { <a><b/></a>/*/following::*[2] } </result>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-following-siblingAxis-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'following-sibling-attr'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<foo a='1' b='2' c='3'> <bar>4</bar> <bar>5</bar> <bar>6</bar> </foo>/@a/following-sibling::node()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "following-sibling-attr.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.