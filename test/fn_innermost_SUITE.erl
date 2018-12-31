-module('fn_innermost_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['fn-innermost-001'/1]).
-export(['fn-innermost-002'/1]).
-export(['fn-innermost-003'/1]).
-export(['fn-innermost-004'/1]).
-export(['fn-innermost-005'/1]).
-export(['fn-innermost-006'/1]).
-export(['fn-innermost-007'/1]).
-export(['fn-innermost-008'/1]).
-export(['fn-innermost-009'/1]).
-export(['fn-innermost-010'/1]).
-export(['fn-innermost-011'/1]).
-export(['fn-innermost-012'/1]).
-export(['fn-innermost-013'/1]).
-export(['fn-innermost-014'/1]).
-export(['fn-innermost-015'/1]).
-export(['fn-innermost-016'/1]).
-export(['fn-innermost-017'/1]).
-export(['fn-innermost-018'/1]).
-export(['fn-innermost-019'/1]).
-export(['fn-innermost-020'/1]).
-export(['fn-innermost-021'/1]).
-export(['fn-innermost-022'/1]).
-export(['fn-innermost-023'/1]).
-export(['fn-innermost-024'/1]).
-export(['fn-innermost-025'/1]).
-export(['fn-innermost-026'/1]).
-export(['fn-innermost-027'/1]).
-export(['fn-innermost-028'/1]).
-export(['fn-innermost-029'/1]).
-export(['fn-innermost-030'/1]).
-export(['fn-innermost-031'/1]).
-export(['fn-innermost-032'/1]).
-export(['fn-innermost-033'/1]).
-export(['fn-innermost-034'/1]).
-export(['fn-innermost-035'/1]).
-export(['fn-innermost-036'/1]).
-export(['fn-innermost-037'/1]).
-export(['fn-innermost-038'/1]).
-export(['fn-innermost-039'/1]).
-export(['fn-innermost-040'/1]).
-export(['fn-innermost-041'/1]).
-export(['fn-innermost-042'/1]).
-export(['fn-innermost-043'/1]).
-export(['fn-innermost-044'/1]).
-export(['fn-innermost-045'/1]).
-export(['fn-innermost-046'/1]).
-export(['fn-innermost-047'/1]).
-export(['fn-innermost-048'/1]).
-export(['fn-innermost-049'/1]).
-export(['fn-innermost-050'/1]).
-export(['fn-innermost-051'/1]).
-export(['fn-innermost-052'/1]).
-export(['fn-innermost-053'/1]).
-export(['fn-innermost-054'/1]).
-export(['fn-innermost-055'/1]).
-export(['fn-innermost-056'/1]).
-export(['fn-innermost-057'/1]).
-export(['fn-innermost-058'/1]).
suite() -> [{timetrap,{seconds, 5}}].
end_per_suite(_Config) -> 
   ct:timetrap({seconds,60}), 
   xqerl_code_server:unload(all).
init_per_suite(Config) -> 
   {ok,_} = application:ensure_all_started(xqerl),
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   __BaseDir = filename:join(TD, "fn"),
   [{base_dir, __BaseDir}|Config].
all() -> [
'fn-innermost-001', 
'fn-innermost-002', 
'fn-innermost-003', 
'fn-innermost-004', 
'fn-innermost-005', 
'fn-innermost-006', 
'fn-innermost-007', 
'fn-innermost-008', 
'fn-innermost-009', 
'fn-innermost-010', 
'fn-innermost-011', 
'fn-innermost-012', 
'fn-innermost-013', 
'fn-innermost-014', 
'fn-innermost-015', 
'fn-innermost-016', 
'fn-innermost-017', 
'fn-innermost-018', 
'fn-innermost-019', 
'fn-innermost-020', 
'fn-innermost-021', 
'fn-innermost-022', 
'fn-innermost-023', 
'fn-innermost-024', 
'fn-innermost-025', 
'fn-innermost-026', 
'fn-innermost-027', 
'fn-innermost-028', 
'fn-innermost-029', 
'fn-innermost-030', 
'fn-innermost-031', 
'fn-innermost-032', 
'fn-innermost-033', 
'fn-innermost-034', 
'fn-innermost-035', 
'fn-innermost-036', 
'fn-innermost-037', 
'fn-innermost-038', 
'fn-innermost-039', 
'fn-innermost-040', 
'fn-innermost-041', 
'fn-innermost-042', 
'fn-innermost-043', 
'fn-innermost-044', 
'fn-innermost-045', 
'fn-innermost-046', 
'fn-innermost-047', 
'fn-innermost-048', 
'fn-innermost-049', 
'fn-innermost-050', 
'fn-innermost-051', 
'fn-innermost-052', 
'fn-innermost-053', 
'fn-innermost-054', 
'fn-innermost-055', 
'fn-innermost-056', 
'fn-innermost-057', 
'fn-innermost-058'
].
environment('innermost',__BaseDir) ->
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
'fn-innermost-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:innermost()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-innermost-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-innermost-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:innermost#0", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-innermost-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-innermost-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:innermost( (), 1 )", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-innermost-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-innermost-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:innermost#2", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-innermost-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-innermost-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:exists( fn:innermost#1 )", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-innermost-005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-innermost-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:innermost( 1 )", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-innermost-006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-innermost-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:innermost( fn:dateTime#2 )", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-innermost-007.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-innermost-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}. 
'fn-innermost-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "( fn:innermost( if (current-date() eq xs:date('1900-01-01'))
                                 then .
                                 else 1 ),
              fn:innermost( if (current-date() eq xs:date('1900-01-01'))
                                 then 1
                                 else . ) )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-innermost-009.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-innermost-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}. 
'fn-innermost-011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "( fn:innermost( if (current-date() eq xs:date('1900-01-01'))
                                 then .
                                 else fn:dateTime#2 ),
              fn:innermost( if (current-date() eq xs:date('1900-01-01'))
                                 then fn:dateTime#2
                                 else . ) )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-innermost-011.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-innermost-012'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:innermost( / )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-innermost-012.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-innermost-013'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:deep-equal(fn:innermost( / ), / )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-innermost-013.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-innermost-014'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:innermost( //*/@* )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-innermost-014.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_count(Res, "7") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-innermost-015'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:innermost( //*/@* ) ! string()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-innermost-015.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"('0a','00a','000a','01a','010a','02a','020a')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-innermost-016'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "deep-equal(fn:innermost( //*/@* ), //*/@*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-innermost-016.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-innermost-017'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XP30+"}. 
'fn-innermost-018'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XP30+"}. 
'fn-innermost-019'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XP30+"}. 
'fn-innermost-020'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XP30+"}. 
'fn-innermost-021'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XP30+"}. 
'fn-innermost-022'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XP30+"}. 
'fn-innermost-023'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:innermost( //processing-instruction() )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-innermost-023.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_count(Res, "7") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-innermost-024'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:innermost( //processing-instruction() ) ! local-name() ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-innermost-024.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"('level-0','level-00','level-000','level-01','level-010','level-02','level-020')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-innermost-025'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:deep-equal( fn:innermost( //processing-instruction() ), 
                          //processing-instruction() )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-innermost-025.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-innermost-026'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:innermost( //comment() )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-innermost-026.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_count(Res, "7") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-innermost-027'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:innermost( //comment() ) ! string()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-innermost-027.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"('0c','00c','000c','01c','010c','02c','020c')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-innermost-028'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:deep-equal( fn:innermost( //comment() ),
                           //comment() )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-innermost-028.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-innermost-029'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:innermost( //text() )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-innermost-029.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_count(Res, "14") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-innermost-030'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:innermost( //text() ) ! string() ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-innermost-030.xq"), Qry1),
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
'fn-innermost-031'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:deep-equal( fn:innermost( //text() ),
                           //text() )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-innermost-031.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-innermost-032'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:innermost( //* )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-innermost-032.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_count(Res, "14") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-innermost-033'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:innermost( //* ) ! local-name(.)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-innermost-033.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"('empty-level-0',   'non-empty-level-0',
                         'empty-level-00',  'non-empty-level-00',
                         'empty-level-000', 'non-empty-level-000',
                         'empty-level-01',  'non-empty-level-01',
                         'empty-level-010', 'non-empty-level-010',
                         'empty-level-02',  'non-empty-level-02',
                         'empty-level-020', 'non-empty-level-020')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-innermost-034'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:deep-equal( fn:innermost( //* ), 
                           let $nodes := //*
                           return $nodes except $nodes/ancestor::node() )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-innermost-034.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-innermost-035'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:innermost( //node() )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-innermost-035.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_count(Res, "35") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-innermost-036'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:deep-equal( fn:innermost( //node() ), 
                           let $nodes := //node()
                           return $nodes except $nodes/ancestor::node() )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-innermost-036.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-innermost-037'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:innermost( /root/node() )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-innermost-037.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_count(Res, "8") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-innermost-038'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:deep-equal( fn:innermost( /root/node() ), 
                           let $nodes := /root/node()
                           return $nodes except $nodes/ancestor::node() )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-innermost-038.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-innermost-039'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:innermost( /root/descendant::node() )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-innermost-039.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_count(Res, "35") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-innermost-040'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:deep-equal( fn:innermost( /root/descendant::node() ), 
                           let $nodes := /root/descendant::node()
                           return $nodes except $nodes/ancestor::node() )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-innermost-040.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-innermost-041'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:innermost( /root/level[1]/level[1]/ancestor::node() )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-innermost-041.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-innermost-042'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:deep-equal( fn:innermost( /root/level[1]/level[1]/ancestor::node() ), 
                           let $nodes := /root/level[1]/level[1]/ancestor::node()
                           return $nodes except $nodes/ancestor::node() )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-innermost-042.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-innermost-043'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:innermost( /root/level[1]/level[last()]/preceding-sibling::node() )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-innermost-043.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_count(Res, "5") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-innermost-044'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:deep-equal( fn:innermost( /root/level[1]/level[last()]/preceding-sibling::node() ), 
                           let $nodes := /root/level[1]/level[last()]/preceding-sibling::node()
                           return $nodes except $nodes/ancestor::node() )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-innermost-044.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-innermost-045'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:innermost( /root/level[1]/level[last()]/preceding::node() )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-innermost-045.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_count(Res, "10") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-innermost-046'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:deep-equal( fn:innermost( /root/level[1]/level[last()]/preceding::node() ), 
                           let $nodes := /root/level[1]/level[last()]/preceding::node()
                           return $nodes except $nodes/ancestor::node() )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-innermost-046.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-innermost-047'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:innermost( /root/level[1]/following-sibling::node() )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-innermost-047.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_count(Res, "2") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-innermost-048'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:deep-equal( fn:innermost( /root/level[1]/following-sibling::node() ), 
                           let $nodes := /root/level[1]/following-sibling::node()
                           return $nodes except $nodes/ancestor::node() )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-innermost-048.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-innermost-049'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:innermost( /root/level[1]/level[1]/following::node() )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-innermost-049.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_count(Res, "20") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-innermost-050'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:deep-equal( fn:innermost( /root/level[1]/level[1]/following::node() ), 
                           let $nodes := /root/level[1]/level[1]/following::node()
                           return $nodes except $nodes/ancestor::node() )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-innermost-050.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-innermost-051'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:innermost( /root/node()/.. )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-innermost-051.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-innermost-052'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:deep-equal( fn:innermost( /root/node()/.. ), 
                           let $nodes := /root/node()/..
                           return $nodes except $nodes/ancestor::node() )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-innermost-052.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-innermost-053'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:innermost( ($doc1//node(), $doc2//node()) )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-innermost-053.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_count(Res, "26") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-innermost-054'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:deep-equal( fn:innermost( ($doc1//node(), $doc2//node()) ),
                           let $nodes := ($doc1//node(), $doc2//node())
                           return $nodes except $nodes/ancestor::node() )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-innermost-054.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-innermost-055'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $in := for $x in //* order by local-name($x) return $x
            return deep-equal(fn:innermost($in)/local-name(), fn:innermost(//*)/local-name())", 
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-innermost-055.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-innermost-056'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $in := for $x in //* order by local-name($x) return $x
            return deep-equal(fn:innermost(($in, $in))/local-name(), fn:innermost(//*)/local-name())", 
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-innermost-056.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-innermost-057'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "innermost(//rubbish)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-innermost-057.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-innermost-058'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "innermost(//*) except //*", 
   {Env,Opts} = xqerl_test:handle_environment(environment('innermost',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-innermost-058.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.