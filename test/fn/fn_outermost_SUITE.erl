-module('fn_outermost_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['fn-outermost-001'/1]).
-export(['fn-outermost-002'/1]).
-export(['fn-outermost-003'/1]).
-export(['fn-outermost-004'/1]).
-export(['fn-outermost-005'/1]).
-export(['fn-outermost-006'/1]).
-export(['fn-outermost-007'/1]).
-export(['fn-outermost-008'/1]).
-export(['fn-outermost-009'/1]).
-export(['fn-outermost-010'/1]).
-export(['fn-outermost-011'/1]).
-export(['fn-outermost-012'/1]).
-export(['fn-outermost-013'/1]).
-export(['fn-outermost-014'/1]).
-export(['fn-outermost-015'/1]).
-export(['fn-outermost-016'/1]).
-export(['fn-outermost-017'/1]).
-export(['fn-outermost-018'/1]).
-export(['fn-outermost-019'/1]).
-export(['fn-outermost-020'/1]).
-export(['fn-outermost-021'/1]).
-export(['fn-outermost-022'/1]).
-export(['fn-outermost-023'/1]).
-export(['fn-outermost-024'/1]).
-export(['fn-outermost-025'/1]).
-export(['fn-outermost-026'/1]).
-export(['fn-outermost-027'/1]).
-export(['fn-outermost-028'/1]).
-export(['fn-outermost-029'/1]).
-export(['fn-outermost-030'/1]).
-export(['fn-outermost-031'/1]).
-export(['fn-outermost-032'/1]).
-export(['fn-outermost-033'/1]).
-export(['fn-outermost-034'/1]).
-export(['fn-outermost-035'/1]).
-export(['fn-outermost-036'/1]).
-export(['fn-outermost-037'/1]).
-export(['fn-outermost-038'/1]).
-export(['fn-outermost-039'/1]).
-export(['fn-outermost-040'/1]).
-export(['fn-outermost-041'/1]).
-export(['fn-outermost-042'/1]).
-export(['fn-outermost-043'/1]).
-export(['fn-outermost-044'/1]).
-export(['fn-outermost-045'/1]).
-export(['fn-outermost-046'/1]).
-export(['fn-outermost-047'/1]).
-export(['fn-outermost-048'/1]).
-export(['fn-outermost-049'/1]).
-export(['fn-outermost-050'/1]).
-export(['fn-outermost-051'/1]).
-export(['fn-outermost-052'/1]).
-export(['fn-outermost-053'/1]).
-export(['fn-outermost-054'/1]).
-export(['fn-outermost-055'/1]).
-export(['fn-outermost-056'/1]).
-export(['fn-outermost-057'/1]).
-export(['fn-outermost-058'/1]).
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
   __BaseDir = filename:join(TD, "fn"),
   [{base_dir, __BaseDir}|Config].
all() -> [
   {group, group_0}, 
   {group, group_1}, 
   {group, group_2}
   ].
groups() -> [
   {group_0, [parallel], [
    'fn-outermost-001', 
    'fn-outermost-002', 
    'fn-outermost-003', 
    'fn-outermost-004', 
    'fn-outermost-005', 
    'fn-outermost-006', 
    'fn-outermost-007', 
    'fn-outermost-008', 
    'fn-outermost-009', 
    'fn-outermost-010', 
    'fn-outermost-011', 
    'fn-outermost-012', 
    'fn-outermost-013', 
    'fn-outermost-014', 
    'fn-outermost-015', 
    'fn-outermost-016', 
    'fn-outermost-017', 
    'fn-outermost-018', 
    'fn-outermost-019', 
    'fn-outermost-020', 
    'fn-outermost-021', 
    'fn-outermost-022', 
    'fn-outermost-023']}, 
   {group_1, [parallel], [
    'fn-outermost-024', 
    'fn-outermost-025', 
    'fn-outermost-026', 
    'fn-outermost-027', 
    'fn-outermost-028', 
    'fn-outermost-029', 
    'fn-outermost-030', 
    'fn-outermost-031', 
    'fn-outermost-032', 
    'fn-outermost-033', 
    'fn-outermost-034', 
    'fn-outermost-035', 
    'fn-outermost-036', 
    'fn-outermost-037', 
    'fn-outermost-038', 
    'fn-outermost-039', 
    'fn-outermost-040', 
    'fn-outermost-041', 
    'fn-outermost-042', 
    'fn-outermost-043', 
    'fn-outermost-044', 
    'fn-outermost-045', 
    'fn-outermost-046', 
    'fn-outermost-047']}, 
   {group_2, [parallel], [
    'fn-outermost-048', 
    'fn-outermost-049', 
    'fn-outermost-050', 
    'fn-outermost-051', 
    'fn-outermost-052', 
    'fn-outermost-053', 
    'fn-outermost-054', 
    'fn-outermost-055', 
    'fn-outermost-056', 
    'fn-outermost-057', 
    'fn-outermost-058']}].
environment('outermost',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "innermost/innermost.xml"), ".",[]}, 
{filename:join(__BaseDir, "innermost/doc1.xml"), "$doc1",[]}, 
{filename:join(__BaseDir, "innermost/doc2.xml"), "$doc2",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
].
'fn-outermost-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:outermost()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-outermost-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPST0017 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-outermost-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:outermost#0", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-outermost-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPST0017 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-outermost-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:outermost( (), 1 )", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-outermost-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPST0017 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-outermost-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:outermost#2", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-outermost-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPST0017 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-outermost-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:exists( fn:outermost#1 )", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-outermost-005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-outermost-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:outermost( 1 )", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-outermost-006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-outermost-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:outermost( fn:dateTime#2 )", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-outermost-007.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-outermost-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:staticTyping"}. 
'fn-outermost-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "( fn:outermost( if (current-date() eq xs:date('1900-01-01'))
                                 then .
                                 else 1 ),
              fn:outermost( if (current-date() eq xs:date('1900-01-01'))
                                 then 1
                                 else . ) )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('outermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-outermost-009.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-outermost-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:staticTyping"}. 
'fn-outermost-011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "( fn:outermost( if (current-date() eq xs:date('1900-01-01'))
                                 then .
                                 else fn:dateTime#2 ),
              fn:outermost( if (current-date() eq xs:date('1900-01-01'))
                                 then fn:dateTime#2
                                 else . ) )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('outermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-outermost-011.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-outermost-012'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:outermost( / )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('outermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-outermost-012.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-outermost-013'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:deep-equal(fn:outermost( / ), / )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('outermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-outermost-013.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-outermost-014'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:outermost( //*/@* )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('outermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-outermost-014.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_count(Res, "7") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-outermost-015'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:outermost( //*/@* ) ! string()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('outermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-outermost-015.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"('0a','00a','000a','01a','010a','02a','020a')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-outermost-016'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "deep-equal(fn:outermost( //*/@* ), //*/@*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('outermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-outermost-016.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-outermost-017'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"spec:XP30+, feature:namespace-axis"}. 
'fn-outermost-018'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"spec:XP30+, feature:namespace-axis"}. 
'fn-outermost-019'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"spec:XP30+, feature:namespace-axis"}. 
'fn-outermost-020'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"spec:XP30+, feature:namespace-axis"}. 
'fn-outermost-021'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"spec:XP30+, feature:namespace-axis"}. 
'fn-outermost-022'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"spec:XP30+, feature:namespace-axis"}. 
'fn-outermost-023'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:outermost( //processing-instruction() )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('outermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-outermost-023.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_count(Res, "7") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-outermost-024'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:outermost( //processing-instruction() ) ! local-name() ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('outermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-outermost-024.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"('level-0','level-00','level-000','level-01','level-010','level-02','level-020')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-outermost-025'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:deep-equal( fn:outermost( //processing-instruction() ), 
                          //processing-instruction() )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('outermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-outermost-025.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-outermost-026'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:outermost( //comment() )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('outermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-outermost-026.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_count(Res, "7") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-outermost-027'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:outermost( //comment() ) ! string()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('outermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-outermost-027.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"('0c','00c','000c','01c','010c','02c','020c')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-outermost-028'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:deep-equal( fn:outermost( //comment() ),
                           //comment() )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('outermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-outermost-028.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-outermost-029'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:outermost( //text() )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('outermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-outermost-029.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_count(Res, "14") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-outermost-030'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:outermost( //text() ) ! string() ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('outermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-outermost-030.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"('0t',' ',
                         '00t',' ','000t',' ',
                         '01t',' ','010t',' ',
                         '02t',' ','020t',' ')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-outermost-031'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:deep-equal( fn:outermost( //text() ),
                           //text() )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('outermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-outermost-031.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-outermost-032'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:outermost( //* )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('outermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-outermost-032.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-outermost-033'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:outermost( //* ) ! local-name(.)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('outermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-outermost-033.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"('root')") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-outermost-034'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:deep-equal( fn:outermost( //* ), 
                           let $nodes := //*
                           return $nodes except $nodes/descendant::node() )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('outermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-outermost-034.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-outermost-035'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:outermost( //node() )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('outermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-outermost-035.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-outermost-036'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:deep-equal( fn:outermost( //node() ), 
                           let $nodes := //node()
                           return $nodes except $nodes/descendant::node() )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('outermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-outermost-036.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-outermost-037'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:outermost( /root/node() )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('outermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-outermost-037.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_count(Res, "8") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-outermost-038'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:deep-equal( fn:outermost( /root/node() ), 
                           let $nodes := /root/node()
                           return $nodes except $nodes/descendant::node() )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('outermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-outermost-038.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-outermost-039'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:outermost( /root/descendant::node() )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('outermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-outermost-039.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_count(Res, "8") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-outermost-040'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:deep-equal( fn:outermost( /root/descendant::node() ), 
                           let $nodes := /root/descendant::node()
                           return $nodes except $nodes/descendant::node() )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('outermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-outermost-040.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-outermost-041'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:outermost( /root/level[1]/level[1]/ancestor::node() )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('outermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-outermost-041.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-outermost-042'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:deep-equal( fn:outermost( /root/level[1]/level[1]/ancestor::node() ), 
                           let $nodes := /root/level[1]/level[1]/ancestor::node()
                           return $nodes except $nodes/descendant::node() )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('outermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-outermost-042.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-outermost-043'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:outermost( /root/level[1]/level[last()]/preceding-sibling::node() )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('outermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-outermost-043.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_count(Res, "5") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-outermost-044'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:deep-equal( fn:outermost( /root/level[1]/level[last()]/preceding-sibling::node() ), 
                           let $nodes := /root/level[1]/level[last()]/preceding-sibling::node()
                           return $nodes except $nodes/descendant::node() )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('outermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-outermost-044.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-outermost-045'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:outermost( /root/level[1]/level[last()]/preceding::node() )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('outermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-outermost-045.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_count(Res, "10") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-outermost-046'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:deep-equal( fn:outermost( /root/level[1]/level[last()]/preceding::node() ), 
                           let $nodes := /root/level[1]/level[last()]/preceding::node()
                           return $nodes except $nodes/descendant::node() )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('outermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-outermost-046.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-outermost-047'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:outermost( /root/level[1]/following-sibling::node() )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('outermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-outermost-047.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_count(Res, "2") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-outermost-048'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:deep-equal( fn:outermost( /root/level[1]/following-sibling::node() ), 
                           let $nodes := /root/level[1]/following-sibling::node()
                           return $nodes except $nodes/descendant::node() )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('outermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-outermost-048.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-outermost-049'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:outermost( /root/level[1]/level[1]/following::node() )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('outermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-outermost-049.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_count(Res, "2") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-outermost-050'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:deep-equal( fn:outermost( /root/level[1]/level[1]/following::node() ), 
                           let $nodes := /root/level[1]/level[1]/following::node()
                           return $nodes except $nodes/descendant::node() )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('outermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-outermost-050.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-outermost-051'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:outermost( /root/node()/.. )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('outermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-outermost-051.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-outermost-052'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:deep-equal( fn:outermost( /root/node()/.. ), 
                           let $nodes := /root/node()/..
                           return $nodes except $nodes/descendant::node() )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('outermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-outermost-052.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-outermost-053'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:outermost( ($doc1//node(), $doc2//node()) )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('outermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-outermost-053.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_count(Res, "2") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-outermost-054'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:deep-equal( fn:outermost( ($doc1//node(), $doc2//node()) ),
                           let $nodes := ($doc1//node(), $doc2//node())
                           return $nodes except $nodes/descendant::node() )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('outermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-outermost-054.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-outermost-055'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $in := for $x in //* order by local-name($x) return $x
            return deep-equal(fn:outermost($in)/local-name(), fn:outermost(//*)/local-name())", 
   {Env,Opts} = xqerl_test:handle_environment(environment('outermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-outermost-055.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-outermost-056'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $in := for $x in //* order by local-name($x) return $x
            return deep-equal(fn:outermost(($in, $in))/local-name(), fn:outermost(//*)/local-name())", 
   {Env,Opts} = xqerl_test:handle_environment(environment('outermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-outermost-056.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-outermost-057'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "outermost(//rubbish)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('outermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-outermost-057.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-outermost-058'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "outermost(//*) except //*", 
   {Env,Opts} = xqerl_test:handle_environment(environment('outermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-outermost-058.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.