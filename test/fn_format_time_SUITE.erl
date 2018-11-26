-module('fn_format_time_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['format-time-002a'/1]).
-export(['format-time-002b'/1]).
-export(['format-time-002c'/1]).
-export(['format-time-002d'/1]).
-export(['format-time-002e'/1]).
-export(['format-time-002f'/1]).
-export(['format-time-002g'/1]).
-export(['format-time-002h'/1]).
-export(['format-time-002i'/1]).
-export(['format-time-002j'/1]).
-export(['format-time-004'/1]).
-export(['format-time-013n'/1]).
-export(['format-time-013p'/1]).
-export(['format-time-013q'/1]).
-export(['format-time-013r'/1]).
-export(['format-time-013s'/1]).
-export(['format-time-013t'/1]).
-export(['format-time-013u'/1]).
-export(['format-time-013v'/1]).
-export(['format-time-014'/1]).
-export(['format-time-015'/1]).
-export(['format-time-016'/1]).
-export(['format-time-017'/1]).
-export(['format-time-018'/1]).
-export(['format-time-019'/1]).
-export(['format-time-020'/1]).
-export(['format-time-021'/1]).
-export(['format-time-022'/1]).
-export(['format-time-023p'/1]).
-export(['format-time-023q'/1]).
-export(['format-time-023r'/1]).
-export(['format-time-023s'/1]).
-export(['format-time-023t'/1]).
-export(['format-time-023u'/1]).
-export(['format-time-023v'/1]).
-export(['format-time-024p'/1]).
-export(['format-time-024q'/1]).
-export(['format-time-024r'/1]).
-export(['format-time-024s'/1]).
-export(['format-time-024t'/1]).
-export(['format-time-024u'/1]).
-export(['format-time-024v'/1]).
-export(['format-time-809err'/1]).
-export(['format-time-810err'/1]).
-export(['format-time-811err'/1]).
-export(['format-time-812err'/1]).
-export(['format-time-813err'/1]).
-export(['format-time-814err'/1]).
-export(['format-time-815err'/1]).
-export(['format-time-816err'/1]).
-export(['format-time-817err'/1]).
-export(['format-time-818err'/1]).
-export(['format-time-inpt-er1'/1]).
-export(['format-time-inpt-er2'/1]).
-export(['format-time-inpt-er3'/1]).
-export(['format-time-inpt-er4'/1]).
-export(['format-time-1340err'/1]).
-export(['millisecs-001'/1]).
-export(['millisecs-002'/1]).
-export(['millisecs-003'/1]).
-export(['millisecs-004'/1]).
-export(['millisecs-005'/1]).
-export(['millisecs-006'/1]).
-export(['millisecs-007'/1]).
-export(['millisecs-008'/1]).
-export(['millisecs-009'/1]).
-export(['millisecs-010'/1]).
-export(['millisecs-011'/1]).
-export(['millisecs-012'/1]).
-export(['millisecs-013'/1]).
-export(['millisecs-014'/1]).
-export(['millisecs-015'/1]).
-export(['millisecs-016'/1]).
-export(['millisecs-017'/1]).
-export(['millisecs-018'/1]).
-export(['millisecs-019'/1]).
-export(['millisecs-020'/1]).
-export(['millisecs-021'/1]).
-export(['millisecs-022'/1]).
-export(['millisecs-023'/1]).
-export(['millisecs-024'/1]).
-export(['millisecs-025'/1]).
-export(['millisecs-026'/1]).
-export(['millisecs-901'/1]).
-export(['millisecs-902'/1]).
-export(['millisecs-903'/1]).
-export(['millisecs-904'/1]).
-export(['millisecs-905'/1]).
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
   __BaseDir = filename:join(TD, "fn"),
   [{base_dir, __BaseDir}|Config].
all() -> [
'format-time-002a', 
'format-time-002b', 
'format-time-002c', 
'format-time-002d', 
'format-time-002e', 
'format-time-002f', 
'format-time-002g', 
'format-time-002h', 
'format-time-002i', 
'format-time-002j', 
'format-time-004', 
'format-time-013n', 
'format-time-013p', 
'format-time-013q', 
'format-time-013r', 
'format-time-013s', 
'format-time-013t', 
'format-time-013u', 
'format-time-013v', 
'format-time-014', 
'format-time-015', 
'format-time-016', 
'format-time-017', 
'format-time-018', 
'format-time-019', 
'format-time-020', 
'format-time-021', 
'format-time-022', 
'format-time-023p', 
'format-time-023q', 
'format-time-023r', 
'format-time-023s', 
'format-time-023t', 
'format-time-023u', 
'format-time-023v', 
'format-time-024p', 
'format-time-024q', 
'format-time-024r', 
'format-time-024s', 
'format-time-024t', 
'format-time-024u', 
'format-time-024v', 
'format-time-809err', 
'format-time-810err', 
'format-time-811err', 
'format-time-812err', 
'format-time-813err', 
'format-time-814err', 
'format-time-815err', 
'format-time-816err', 
'format-time-817err', 
'format-time-818err', 
'format-time-inpt-er1', 
'format-time-inpt-er2', 
'format-time-inpt-er3', 
'format-time-inpt-er4', 
'format-time-1340err', 
'millisecs-001', 
'millisecs-002', 
'millisecs-003', 
'millisecs-004', 
'millisecs-005', 
'millisecs-006', 
'millisecs-007', 
'millisecs-008', 
'millisecs-009', 
'millisecs-010', 
'millisecs-011', 
'millisecs-012', 
'millisecs-013', 
'millisecs-014', 
'millisecs-015', 
'millisecs-016', 
'millisecs-017', 
'millisecs-018', 
'millisecs-019', 
'millisecs-020', 
'millisecs-021', 
'millisecs-022', 
'millisecs-023', 
'millisecs-024', 
'millisecs-025', 
'millisecs-026', 
'millisecs-901', 
'millisecs-902', 
'millisecs-903', 
'millisecs-904', 
'millisecs-905'
].

'format-time-002a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time($t,\"[H01]:[m01]\")", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:time","xs:time('09:15:06.456')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "format-time-002a.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "09:15") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-time-002b'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time($t,\"[H]:[m]\")", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:time","xs:time('09:15:06.456')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "format-time-002b.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "9:15") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-time-002c'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time($t,\"[H01]:[m01]:[s01]\")", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:time","xs:time('09:15:06.456')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "format-time-002c.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "09:15:06") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-time-002d'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time($t,\"[H]:[m]:[s]\")", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:time","xs:time('09:15:06.456')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "format-time-002d.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "9:15:06") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-time-002e'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time($t,\"[H]:[m]:[s1]\")", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:time","xs:time('09:15:06.456')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "format-time-002e.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "9:15:6") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-time-002f'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time($t,\"[H]:[m]:[s01]:[f001]\")", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:time","xs:time('09:15:06.456')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "format-time-002f.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "9:15:06:456") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-time-002g'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time($t,\"[H]:[m]:[s].[f,1-1]\")", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:time","xs:time('09:15:06.456')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "format-time-002g.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "9:15:06.4") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-time-002h'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time($t,\"[H]:[m]:[s].[f1,1-1]\")", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:time","xs:time('09:15:06.456')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "format-time-002h.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "9:15:06.4") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-time-002i'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time($t,\"[H]:[m]:[s].[f01]\")", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:time","xs:time('09:15:06.456')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "format-time-002i.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "9:15:06.45") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-time-002j'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time($t,\"[H]:[m]:[s].[f001]\")", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:time","xs:time('09:15:06.456')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "format-time-002j.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "9:15:06.456") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-time-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        for $i in 1 to 24 return
        format-time($t + xs:dayTimeDuration('PT1H')*$i, '[h].[m]')", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:time","xs:time('09:15:06.456')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "format-time-004.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_norm_string_value(Res, "10.15 11.15 12.15 1.15 2.15 3.15 4.15 5.15 6.15 7.15 8.15 9.15 10.15 11.15 12.15 1.15 2.15 3.15 4.15 5.15 6.15 7.15 8.15 9.15") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-time-013n'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time($t, '[m,3]')", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:time","xs:time('09:15:06.456')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "format-time-013n.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "015") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-time-013p'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time($t, '[f,4-4]')", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:time","xs:time('09:15:06.456')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "format-time-013p.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "4560") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-time-013q'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time($t, '[f,1-4]')", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:time","xs:time('09:15:06.456')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "format-time-013q.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "456") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-time-013r'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time($t, '[f,2-5]')", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:time","xs:time('09:15:06.456')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "format-time-013r.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "456") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-time-013s'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time($t, '[f,2-2]')", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:time","xs:time('09:15:06.456')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "format-time-013s.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "45") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-time-013t'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time($t, '[f,1-*]')", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:time","xs:time('09:15:06.456')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "format-time-013t.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "456") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-time-013u'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time($t, '[f,*-2]')", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:time","xs:time('09:15:06.456')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "format-time-013u.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "45") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-time-013v'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time($t, '[f,3]')", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:time","xs:time('09:15:06.456')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "format-time-013v.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "456") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-time-014'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string-join(
               for $z in -28 to +28
               return format-time(adjust-time-to-timezone(
               $t, $z*xs:dayTimeDuration('PT30M')), '[h01][m01][Z]'), '; ')", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:time","xs:time('09:15:06.456Z')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "format-time-014.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_norm_string_value(Res, "0715-14:00; 0745-13:30; 0815-13:00; 0845-12:30; 0915-12:00; 0945-11:30; 1015-11:00; 1045-10:30; 1115-10:00; 1145-09:30; 1215-09:00; 1245-08:30; 0115-08:00; 0145-07:30; 0215-07:00; 0245-06:30; 0315-06:00; 0345-05:30; 0415-05:00; 0445-04:30; 0515-04:00; 0545-03:30; 0615-03:00; 0645-02:30; 0715-02:00; 0745-01:30; 0815-01:00; 0845-00:30; 0915+00:00; 0945+00:30; 1015+01:00; 1045+01:30; 1115+02:00; 1145+02:30; 1215+03:00; 1245+03:30; 0115+04:00; 0145+04:30; 0215+05:00; 0245+05:30; 0315+06:00; 0345+06:30; 0415+07:00; 0445+07:30; 0515+08:00; 0545+08:30; 0615+09:00; 0645+09:30; 0715+10:00; 0745+10:30; 0815+11:00; 0845+11:30; 0915+12:00; 0945+12:30; 1015+13:00; 1045+13:30; 1115+14:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-time-015'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string-join(
               for $z in -28 to +28
               return format-time(adjust-time-to-timezone(
                        $t, $z*xs:dayTimeDuration('PT30M')), '[h01][m01][z]'), '; ')", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:time","xs:time('09:15:06.456Z')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "format-time-015.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_norm_string_value(Res, "0715GMT-14:00; 0745GMT-13:30; 0815GMT-13:00; 0845GMT-12:30; 0915GMT-12:00; 0945GMT-11:30; 1015GMT-11:00; 1045GMT-10:30; 1115GMT-10:00; 1145GMT-09:30; 1215GMT-09:00; 1245GMT-08:30; 0115GMT-08:00; 0145GMT-07:30; 0215GMT-07:00; 0245GMT-06:30; 0315GMT-06:00; 0345GMT-05:30; 0415GMT-05:00; 0445GMT-04:30; 0515GMT-04:00; 0545GMT-03:30; 0615GMT-03:00; 0645GMT-02:30; 0715GMT-02:00; 0745GMT-01:30; 0815GMT-01:00; 0845GMT-00:30; 0915GMT+00:00; 0945GMT+00:30; 1015GMT+01:00; 1045GMT+01:30; 1115GMT+02:00; 1145GMT+02:30; 1215GMT+03:00; 1245GMT+03:30; 0115GMT+04:00; 0145GMT+04:30; 0215GMT+05:00; 0245GMT+05:30; 0315GMT+06:00; 0345GMT+06:30; 0415GMT+07:00; 0445GMT+07:30; 0515GMT+08:00; 0545GMT+08:30; 0615GMT+09:00; 0645GMT+09:30; 0715GMT+10:00; 0745GMT+10:30; 0815GMT+11:00; 0845GMT+11:30; 0915GMT+12:00; 0945GMT+12:30; 1015GMT+13:00; 1045GMT+13:30; 1115GMT+14:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-time-016'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string-join(
               for $z in -28 to +28
               return format-time(adjust-time-to-timezone(
                        $t, $z*xs:dayTimeDuration('PT30M')), '[h01][m01][z,6-6]'), '; ')", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:time","xs:time('09:15:06.456Z')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "format-time-016.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_norm_string_value(Res, "0715GMT-14:00; 0745GMT-13:30; 0815GMT-13:00; 0845GMT-12:30; 0915GMT-12:00; 0945GMT-11:30; 1015GMT-11:00; 1045GMT-10:30; 1115GMT-10:00; 1145GMT-09:30; 1215GMT-09:00; 1245GMT-08:30; 0115GMT-08:00; 0145GMT-07:30; 0215GMT-07:00; 0245GMT-06:30; 0315GMT-06:00; 0345GMT-05:30; 0415GMT-05:00; 0445GMT-04:30; 0515GMT-04:00; 0545GMT-03:30; 0615GMT-03:00; 0645GMT-02:30; 0715GMT-02:00; 0745GMT-01:30; 0815GMT-01:00; 0845GMT-00:30; 0915GMT+00:00; 0945GMT+00:30; 1015GMT+01:00; 1045GMT+01:30; 1115GMT+02:00; 1145GMT+02:30; 1215GMT+03:00; 1245GMT+03:30; 0115GMT+04:00; 0145GMT+04:30; 0215GMT+05:00; 0245GMT+05:30; 0315GMT+06:00; 0345GMT+06:30; 0415GMT+07:00; 0445GMT+07:30; 0515GMT+08:00; 0545GMT+08:30; 0615GMT+09:00; 0645GMT+09:30; 0715GMT+10:00; 0745GMT+10:30; 0815GMT+11:00; 0845GMT+11:30; 0915GMT+12:00; 0945GMT+12:30; 1015GMT+13:00; 1045GMT+13:30; 1115GMT+14:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-time-017'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string-join(
               for $z in -28 to +28
               return format-time(adjust-time-to-timezone($t, $z*xs:dayTimeDuration('PT30M')), '[h01][m01][z,5-6]'), '; ')", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:time","xs:time('09:15:06.456Z')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "format-time-017.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_norm_string_value(Res, "0715GMT-14:00; 0745GMT-13:30; 0815GMT-13:00; 0845GMT-12:30; 0915GMT-12:00; 0945GMT-11:30; 1015GMT-11:00; 1045GMT-10:30; 1115GMT-10:00; 1145GMT-09:30; 1215GMT-09:00; 1245GMT-08:30; 0115GMT-08:00; 0145GMT-07:30; 0215GMT-07:00; 0245GMT-06:30; 0315GMT-06:00; 0345GMT-05:30; 0415GMT-05:00; 0445GMT-04:30; 0515GMT-04:00; 0545GMT-03:30; 0615GMT-03:00; 0645GMT-02:30; 0715GMT-02:00; 0745GMT-01:30; 0815GMT-01:00; 0845GMT-00:30; 0915GMT+00:00; 0945GMT+00:30; 1015GMT+01:00; 1045GMT+01:30; 1115GMT+02:00; 1145GMT+02:30; 1215GMT+03:00; 1245GMT+03:30; 0115GMT+04:00; 0145GMT+04:30; 0215GMT+05:00; 0245GMT+05:30; 0315GMT+06:00; 0345GMT+06:30; 0415GMT+07:00; 0445GMT+07:30; 0515GMT+08:00; 0545GMT+08:30; 0615GMT+09:00; 0645GMT+09:30; 0715GMT+10:00; 0745GMT+10:30; 0815GMT+11:00; 0845GMT+11:30; 0915GMT+12:00; 0945GMT+12:30; 1015GMT+13:00; 1045GMT+13:30; 1115GMT+14:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-time-018'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string-join(
               for $z in -28 to +28
               return format-time(adjust-time-to-timezone($t, $z*xs:dayTimeDuration('PT30M')), '[h01][m01][z,2-6]'), '; ')", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:time","xs:time('09:15:06.456Z')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "format-time-018.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_norm_string_value(Res, "0715GMT-14:00; 0745GMT-13:30; 0815GMT-13:00; 0845GMT-12:30; 0915GMT-12:00; 0945GMT-11:30; 1015GMT-11:00; 1045GMT-10:30; 1115GMT-10:00; 1145GMT-09:30; 1215GMT-09:00; 1245GMT-08:30; 0115GMT-08:00; 0145GMT-07:30; 0215GMT-07:00; 0245GMT-06:30; 0315GMT-06:00; 0345GMT-05:30; 0415GMT-05:00; 0445GMT-04:30; 0515GMT-04:00; 0545GMT-03:30; 0615GMT-03:00; 0645GMT-02:30; 0715GMT-02:00; 0745GMT-01:30; 0815GMT-01:00; 0845GMT-00:30; 0915GMT+00:00; 0945GMT+00:30; 1015GMT+01:00; 1045GMT+01:30; 1115GMT+02:00; 1145GMT+02:30; 1215GMT+03:00; 1245GMT+03:30; 0115GMT+04:00; 0145GMT+04:30; 0215GMT+05:00; 0245GMT+05:30; 0315GMT+06:00; 0345GMT+06:30; 0415GMT+07:00; 0445GMT+07:30; 0515GMT+08:00; 0545GMT+08:30; 0615GMT+09:00; 0645GMT+09:30; 0715GMT+10:00; 0745GMT+10:30; 0815GMT+11:00; 0845GMT+11:30; 0915GMT+12:00; 0945GMT+12:30; 1015GMT+13:00; 1045GMT+13:30; 1115GMT+14:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-time-019'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time(xs:time('09:15:06.456'),\"[f๐๐๐]\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "format-time-019.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "๔๕๖") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-time-020'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time(xs:time('09:15:06.456'),\"[H٠]:[m٠]:[s٠٠]:[f٠٠٠]\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "format-time-020.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "٩:١٥:٠٦:٤٥٦") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-time-021'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time(xs:time('09:15:06.456'),\"[Pn]/[PNn]/[PN]\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "format-time-021.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "am/Am/AM") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_string_value(Res, "a.m./A.M./A.M.") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-time-022'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time(xs:time('15:15:06.456'),\"[Pn]/[PNn]/[PN]\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "format-time-022.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "pm/Pm/PM") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_string_value(Res, "p.m./P.M./P.M.") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-time-023p'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time($t, '[f,4-4]')", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:time","xs:time('09:15:06.006')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "format-time-023p.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0060") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-time-023q'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time($t, '[f,1-4]')", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:time","xs:time('09:15:06.006')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "format-time-023q.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "006") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-time-023r'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time($t, '[f,2-5]')", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:time","xs:time('09:15:06.006')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "format-time-023r.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "006") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-time-023s'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time($t, '[f,2-2]')", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:time","xs:time('09:15:06.006')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "format-time-023s.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-time-023t'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time($t, '[f,1-*]')", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:time","xs:time('09:15:06.006')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "format-time-023t.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "006") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-time-023u'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time($t, '[f,*-2]')", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:time","xs:time('09:15:06.006')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "format-time-023u.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-time-023v'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time($t, '[f,3]')", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:time","xs:time('09:15:06.006')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "format-time-023v.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "006") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-time-024p'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time($t, '[f,4-4]')", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:time","xs:time('09:15:06.100')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "format-time-024p.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1000") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-time-024q'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time($t, '[f,1-4]')", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:time","xs:time('09:15:06.100')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "format-time-024q.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-time-024r'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time($t, '[f,2-5]')", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:time","xs:time('09:15:06.100')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "format-time-024r.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "10") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-time-024s'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time($t, '[f,2-2]')", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:time","xs:time('09:15:06.100')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "format-time-024s.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "10") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-time-024t'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time($t, '[f,1-*]')", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:time","xs:time('09:15:06.100')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "format-time-024t.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-time-024u'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time($t, '[f,*-2]')", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:time","xs:time('09:15:06.100')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "format-time-024u.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-time-024v'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time($t, '[f,3]')", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:time","xs:time('09:15:06.100')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "format-time-024v.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "100") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-time-809err'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time(current-time(), '[Y]', 'en', (), ())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "format-time-809err.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XTDE1350") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOFD1350") of 
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
'format-time-810err'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time(current-time(), '[M]', 'en', (), ())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "format-time-810err.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XTDE1350") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOFD1350") of 
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
'format-time-811err'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time(current-time(), '[d]', 'en', (), ())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "format-time-811err.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XTDE1350") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOFD1350") of 
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
'format-time-812err'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time(current-time(), '[d]', 'en', (), ())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "format-time-812err.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XTDE1350") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOFD1350") of 
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
'format-time-813err'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time(current-time(), '[F]', 'en', (), ())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "format-time-813err.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XTDE1350") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOFD1350") of 
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
'format-time-814err'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time(current-time(), '[W]', 'en', (), ())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "format-time-814err.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XTDE1350") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOFD1350") of 
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
'format-time-815err'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time(current-time(), '[w]', 'en', (), ())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "format-time-815err.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XTDE1350") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOFD1350") of 
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
'format-time-816err'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time(current-time(), '[E]', 'en', (), ())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "format-time-816err.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XTDE1350") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOFD1350") of 
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
'format-time-817err'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time(current-time(), '[bla]', 'en', (), ())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "format-time-817err.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XTDE1340") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOFD1340") of 
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
'format-time-818err'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time(current-time(), '[H9#]')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "format-time-818err.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOFD1340") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-time-inpt-er1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time('abc', '[bla]', 'en', (), ())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "format-time-inpt-er1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-time-inpt-er2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time(current-time(), '[bla]', 'en', (), (), 6)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "format-time-inpt-er2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-time-inpt-er3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time(current-time(), '[bla]', 'en', (), (), 6)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "format-time-inpt-er3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-time-inpt-er4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time(current-time(), \"[H01]\", \"\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "format-time-inpt-er4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-time-1340err'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time(current-time(), '[y]', 'en', (), ())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "format-time-1340err.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XTDE1340") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOFD1340") of 
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
'millisecs-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time(xs:time('12:01:01.123'), '[f]')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "millisecs-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"123\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'millisecs-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time(xs:time('12:01:01.123'), '[f1]')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "millisecs-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"123\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'millisecs-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time(xs:time('12:01:01.123'), '[f99]')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "millisecs-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"12\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'millisecs-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time(xs:time('12:01:01.123'), '[f001]')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "millisecs-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"123\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'millisecs-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time(xs:time('12:01:01.123'), '[f99#]')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "millisecs-005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"123\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'millisecs-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time(xs:time('12:01:01.12'), '[f99#]')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "millisecs-006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"12\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'millisecs-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time(xs:time('12:01:01.12'), '[f777]')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "millisecs-007.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"120\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'millisecs-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time(xs:time('12:01:01.127'), '[f01]')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "millisecs-008.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"12\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'millisecs-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time(xs:time('12:01:01.125'), '[f01]')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "millisecs-009.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"12\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'millisecs-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time(xs:time('12:01:01.135'), '[f01]')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "millisecs-010.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"13\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'millisecs-011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time(xs:time('12:01:01.135'), \"[f0'0'0]\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "millisecs-011.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"1'3'5\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'millisecs-012'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time(xs:time('12:01:01.135'), \"[f00'0]\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "millisecs-012.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"13'5\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'millisecs-013'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time(xs:time('12:01:01.135'), \"[f,6-*]\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "millisecs-013.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"135000\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'millisecs-014'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time(xs:time('12:01:01.133'), \"[f,*-2]\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "millisecs-014.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"13\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'millisecs-015'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time(xs:time('12:01:01.133'), \"[f,2-4]\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "millisecs-015.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"133\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'millisecs-016'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time(xs:time('12:01:01'), \"[f,2-4]\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "millisecs-016.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"00\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'millisecs-017'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time(xs:time('12:01:01'), \"[f]\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "millisecs-017.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"0\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'millisecs-018'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time(xs:time('12:01:01.123'), \"[f111,2-2]\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "millisecs-018.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"123\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'millisecs-019'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time(xs:time('12:01:01.123'), \"[fi]\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "millisecs-019.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'millisecs-020'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time(xs:time('12:01:01.123'), \"[f٠٠٠]\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "millisecs-020.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"١٢٣\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'millisecs-021'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time(xs:time('12:01:01.123'), \"[f٠~٠~٠]\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "millisecs-021.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"١~٢~٣\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'millisecs-022'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time(xs:time('12:01:01.999'), \"[f99]\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "millisecs-022.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"99\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'millisecs-023'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time(xs:time('12:01:01.123'), \"[ f 0 0 0 ]\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "millisecs-023.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"123\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'millisecs-024'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time(xs:time('12:01:01.189'), \"[f٠#,3-3]\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "millisecs-024.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"١٨٩\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'millisecs-025'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time(xs:time('12:01:01.1'), \"[f1###,3-3]\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "millisecs-025.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"100\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'millisecs-026'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time(xs:time('12:01:01.5'), \"[f1###,2-3]\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "millisecs-026.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"50\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'millisecs-901'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time(xs:time('12:01:01.123'), \"[f#99]\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "millisecs-901.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOFD1340") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'millisecs-902'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time(xs:time('12:01:01.123'), \"[f1,0-3]\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "millisecs-902.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOFD1340") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'millisecs-903'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time(xs:time('12:01:01.123'), \"[f1,*-0]\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "millisecs-903.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOFD1340") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'millisecs-904'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time(xs:time('12:01:01.123'), \"[f1,3-2]\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "millisecs-904.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOFD1340") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'millisecs-905'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-time(xs:time('12:01:01.123'), \"[f#9٠]\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "millisecs-905.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOFD1340") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.