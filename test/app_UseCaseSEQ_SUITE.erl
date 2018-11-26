-module('app_UseCaseSEQ_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['seq-queries-results-q1'/1]).
-export(['seq-queries-results-q2'/1]).
-export(['seq-queries-results-q3'/1]).
-export(['seq-queries-results-q4'/1]).
-export(['seq-queries-results-q5'/1]).
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
   __BaseDir = filename:join(TD, "app"),
   [{base_dir, __BaseDir}|Config].
all() -> [
'seq-queries-results-q1', 
'seq-queries-results-q2', 
'seq-queries-results-q3', 
'seq-queries-results-q4', 
'seq-queries-results-q5'
].
environment('report1',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/report1.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
].
'seq-queries-results-q1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $s in //section[section.title = \"Procedure\"] return ($s//incision)[2]/instrument", 
   {Env,Opts} = xqerl_test:handle_environment(environment('report1',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "seq-queries-results-q1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<instrument>electrocautery</instrument>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'seq-queries-results-q2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $s in //section[section.title = \"Procedure\"] return ($s//instrument)[position()<=2]", 
   {Env,Opts} = xqerl_test:handle_environment(environment('report1',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "seq-queries-results-q2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<instrument>using electrocautery.</instrument><instrument>electrocautery</instrument>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'seq-queries-results-q3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $i2 := (//incision)[2] for $a in (//action)[. >> $i2][position()<=2] return $a//instrument", 
   {Env,Opts} = xqerl_test:handle_environment(environment('report1',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "seq-queries-results-q3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<instrument>Hasson trocar</instrument><instrument>trocar</instrument>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'seq-queries-results-q4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $p in //section[section.title = \"Procedure\"] where not(some $a in $p//anesthesia satisfies $a << ($p//incision)[1] ) return $p", 
   {Env,Opts} = xqerl_test:handle_environment(environment('report1',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "seq-queries-results-q4.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'seq-queries-results-q5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<critical_sequence> { let $proc := //section[section.title=\"Procedure\"][1], $i1 := ($proc//incision)[1], $i2 := ($proc//incision)[2] for $n in $proc//node() except $i1//node() where $n >> $i1 and $n << $i2 return $n } </critical_sequence>", 
   {Env,Opts} = xqerl_test:handle_environment(environment('report1',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "seq-queries-results-q5.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<critical_sequence>
      The fascia was identified and
      <action>#2 0 Maxon stay sutures were placed on each side of the midline.
      </action>#2 0 Maxon stay sutures were placed on each side of the midline.
       
       </critical_sequence>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.