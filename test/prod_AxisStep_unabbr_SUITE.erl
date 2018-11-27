-module('prod_AxisStep_unabbr_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['unabbreviatedSyntax-1'/1]).
-export(['unabbreviatedSyntax-2'/1]).
-export(['unabbreviatedSyntax-3'/1]).
-export(['unabbreviatedSyntax-4'/1]).
-export(['unabbreviatedSyntax-5'/1]).
-export(['unabbreviatedSyntax-8'/1]).
-export(['unabbreviatedSyntax-9'/1]).
-export(['unabbreviatedSyntax-12'/1]).
-export(['unabbreviatedSyntax-13'/1]).
-export(['unabbreviatedSyntax-14'/1]).
-export(['unabbreviatedSyntax-15'/1]).
-export(['unabbreviatedSyntax-16'/1]).
-export(['unabbreviatedSyntax-18'/1]).
-export(['unabbreviatedSyntax-19'/1]).
-export(['unabbreviatedSyntax-20'/1]).
-export(['unabbreviatedSyntax-21'/1]).
-export(['unabbreviatedSyntax-22'/1]).
-export(['unabbreviatedSyntax-23'/1]).
-export(['unabbreviatedSyntax-26'/1]).
-export(['unabbreviatedSyntax-27'/1]).
-export(['unabbreviatedSyntax-28'/1]).
-export(['unabbreviatedSyntax-29'/1]).
-export(['unabbreviatedSyntax-30'/1]).
-export(['unabbreviatedSyntax-31'/1]).
-export(['unabbreviatedSyntax-32'/1]).
-export(['unabbreviatedSyntax-33'/1]).
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
'unabbreviatedSyntax-1', 
'unabbreviatedSyntax-2', 
'unabbreviatedSyntax-3', 
'unabbreviatedSyntax-4', 
'unabbreviatedSyntax-5', 
'unabbreviatedSyntax-8', 
'unabbreviatedSyntax-9', 
'unabbreviatedSyntax-12', 
'unabbreviatedSyntax-13', 
'unabbreviatedSyntax-14', 
'unabbreviatedSyntax-15', 
'unabbreviatedSyntax-16', 
'unabbreviatedSyntax-18', 
'unabbreviatedSyntax-19', 
'unabbreviatedSyntax-20', 
'unabbreviatedSyntax-21', 
'unabbreviatedSyntax-22', 
'unabbreviatedSyntax-23', 
'unabbreviatedSyntax-26', 
'unabbreviatedSyntax-27', 
'unabbreviatedSyntax-28', 
'unabbreviatedSyntax-29', 
'unabbreviatedSyntax-30', 
'unabbreviatedSyntax-31', 
'unabbreviatedSyntax-32', 
'unabbreviatedSyntax-33'
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
'unabbreviatedSyntax-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $h in (/works/employee) return $h/child::empnum", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "unabbreviatedSyntax-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E2</empnum><empnum>E2</empnum><empnum>E3</empnum><empnum>E3</empnum><empnum>E4</empnum><empnum>E4</empnum><empnum>E4</empnum>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'unabbreviatedSyntax-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $h in (/works/employee[1]) return $h/child::*", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "unabbreviatedSyntax-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<empnum>E1</empnum><pnum>P1</pnum><hours>40</hours>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'unabbreviatedSyntax-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $h in (/works[1]/employee[2]) return $h/child::text()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "unabbreviatedSyntax-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_norm_string_value(Res, "Text data from Employee[2]") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'unabbreviatedSyntax-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $h in (/works/employee[1]) return $h/child::node()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "unabbreviatedSyntax-4.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"$result[self::empnum] eq 'E1'") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"$result[self::pnum] eq 'P1'") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"$result[self::hours] eq '40'") of 
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
'unabbreviatedSyntax-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $h in (/works/employee[2]) return $h/child::node()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "unabbreviatedSyntax-5.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"$result[self::empnum] eq 'E1'") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"$result[self::pnum] eq 'P2'") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"($result[self::hours])[1] eq '70'") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"($result[self::hours])[2] eq '20'") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"contains(($result[self::text()])[last()],'Text data from Employee[2]')") of 
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
'unabbreviatedSyntax-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $h in (/works/employee[1]/hours) return $h/parent::node()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "unabbreviatedSyntax-8.xq"), Qry1),
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
'unabbreviatedSyntax-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $h in (/works/employee) return $h/descendant::empnum", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "unabbreviatedSyntax-9.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E2</empnum><empnum>E2</empnum><empnum>E3</empnum><empnum>E3</empnum><empnum>E4</empnum><empnum>E4</empnum><empnum>E4</empnum>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'unabbreviatedSyntax-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $h in (/works/employee[1]) return $h/descendant-or-self::employee", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "unabbreviatedSyntax-12.xq"), Qry1),
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
'unabbreviatedSyntax-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $h in (/works/employee[1]) return $h/self::employee", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "unabbreviatedSyntax-13.xq"), Qry1),
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
'unabbreviatedSyntax-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $h in (/works[1]/employee[1]) return fn:count(($h/self::employee[1000]))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "unabbreviatedSyntax-14.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'unabbreviatedSyntax-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $h in (/works) return $h/child::employee/descendant::empnum", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "unabbreviatedSyntax-15.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E2</empnum><empnum>E2</empnum><empnum>E3</empnum><empnum>E3</empnum><empnum>E4</empnum><empnum>E4</empnum><empnum>E4</empnum>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'unabbreviatedSyntax-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $h in (/works) return $h/child::*/child::pnum", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "unabbreviatedSyntax-16.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<pnum>P1</pnum><pnum>P2</pnum><pnum>P3</pnum><pnum>P4</pnum><pnum>P5</pnum><pnum>P6</pnum><pnum>P1</pnum><pnum>P2</pnum><pnum>P2</pnum><pnum>P2</pnum><pnum>P2</pnum><pnum>P4</pnum><pnum>P5</pnum>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'unabbreviatedSyntax-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $h in (/works) return $h/descendant::pnum", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "unabbreviatedSyntax-18.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<pnum>P1</pnum><pnum>P2</pnum><pnum>P3</pnum><pnum>P4</pnum><pnum>P5</pnum><pnum>P6</pnum><pnum>P1</pnum><pnum>P2</pnum><pnum>P2</pnum><pnum>P2</pnum><pnum>P2</pnum><pnum>P4</pnum><pnum>P5</pnum>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'unabbreviatedSyntax-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $h in (/works) return $h/descendant::employee/child::pnum", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "unabbreviatedSyntax-19.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<pnum>P1</pnum><pnum>P2</pnum><pnum>P3</pnum><pnum>P4</pnum><pnum>P5</pnum><pnum>P6</pnum><pnum>P1</pnum><pnum>P2</pnum><pnum>P2</pnum><pnum>P2</pnum><pnum>P2</pnum><pnum>P4</pnum><pnum>P5</pnum>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'unabbreviatedSyntax-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $h in (/works) return $h/child::employee[fn:position() = 1]", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "unabbreviatedSyntax-20.xq"), Qry1),
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
'unabbreviatedSyntax-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $h in (/works) return $h/child::employee[fn:position() = fn:last()]", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "unabbreviatedSyntax-21.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<employee name=\"Jane Doe 13\" gender=\"female\" type=\"FT\">
   <empnum>E4</empnum>
   <pnum>P5</pnum>
   <hours>80</hours>
   <status>active</status>
  </employee>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'unabbreviatedSyntax-22'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $h in (/works) return $h/child::employee[fn:position() = fn:last()-1]", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "unabbreviatedSyntax-22.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<employee name=\"John Doe 12\" gender=\"male\">
   <empnum>E4</empnum>
   <pnum>P4</pnum>
   <hours>40</hours>
   <overtime>
     <day>Monday</day>
     <day>Tuesday</day>
   </overtime>
  </employee>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'unabbreviatedSyntax-23'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $h in (/works/employee) return $h/child::hours[fn:position() > 1]", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "unabbreviatedSyntax-23.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<hours>20</hours><hours>40</hours><hours>30</hours>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'unabbreviatedSyntax-26'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $h in (/works) return $h/descendant::employee[fn:position() = 12]", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "unabbreviatedSyntax-26.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<employee name=\"John Doe 12\" gender=\"male\">
   <empnum>E4</empnum>
   <pnum>P4</pnum>
   <hours>40</hours>
   <overtime>
     <day>Monday</day>
     <day>Tuesday</day>
   </overtime>
  </employee>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'unabbreviatedSyntax-27'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "/child::works/child::employee[fn:position() = 5]/child::hours[fn:position() = 2]", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "unabbreviatedSyntax-27.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<hours>30</hours>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'unabbreviatedSyntax-28'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $h in (/works) return $h/child::employee[attribute::name eq \"Jane Doe 11\"]", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "unabbreviatedSyntax-28.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<employee name=\"Jane Doe 11\" gender=\"female\">
   <empnum>E4</empnum>
   <pnum>P2</pnum>
   <hours>20</hours>
  </employee>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'unabbreviatedSyntax-29'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $h in (/works) return $h/child::employee[attribute::gender eq 'female'][fn:position() = 5]", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "unabbreviatedSyntax-29.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<employee name=\"Jane Doe 9\" gender=\"female\">
   <empnum>E3</empnum>
   <pnum>P2</pnum>
   <hours>20</hours>
  </employee>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'unabbreviatedSyntax-30'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $h in (/works) return $h/child::employee[child::empnum = 'E3']", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "unabbreviatedSyntax-30.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<employee name=\"Jane Doe 9\" gender=\"female\">
   <empnum>E3</empnum>
   <pnum>P2</pnum>
   <hours>20</hours>
  </employee><employee name=\"John Doe 10\" gender=\"male\">
   <empnum>E3</empnum>
   <pnum>P2</pnum>
   <hours>20</hours>
  </employee>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'unabbreviatedSyntax-31'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $h in (/works) return $h/child::employee[child::status]", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "unabbreviatedSyntax-31.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<employee name=\"Jane Doe 13\" gender=\"female\" type=\"FT\">
   <empnum>E4</empnum>
   <pnum>P5</pnum>
   <hours>80</hours>
   <status>active</status>
  </employee>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'unabbreviatedSyntax-32'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $h in (/works/employee[7]) return $h/child::*[self::pnum or self::empnum]", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "unabbreviatedSyntax-32.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<empnum>E2</empnum><pnum>P1</pnum>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'unabbreviatedSyntax-33'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $h in (/works/employee[6]) return $h/child::*[self::empnum or self::pnum][fn:position() = fn:last()]", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "unabbreviatedSyntax-33.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<pnum>P6</pnum>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.