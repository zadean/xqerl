-module('fn_local_name_from_QName_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['LocalNameFromQNameFunc001'/1]).
-export(['LocalNameFromQNameFunc002'/1]).
-export(['LocalNameFromQNameFunc003'/1]).
-export(['LocalNameFromQNameFunc004'/1]).
-export(['LocalNameFromQNameFunc005'/1]).
-export(['LocalNameFromQNameFunc006'/1]).
-export(['LocalNameFromQNameFunc007'/1]).
-export(['LocalNameFromQNameFunc009'/1]).
-export(['LocalNameFromQNameFunc010'/1]).
-export(['LocalNameFromQNameFunc011'/1]).
-export(['LocalNameFromQNameFunc012'/1]).
-export(['LocalNameFromQNameFunc013'/1]).
-export(['LocalNameFromQNameFunc014'/1]).
-export(['LocalNameFromQNameFunc015'/1]).
-export(['LocalNameFromQNameFunc015a'/1]).
-export(['LocalNameFromQNameFunc016'/1]).
-export(['LocalNameFromQNameFunc017'/1]).
-export(['LocalNameFromQNameFunc018'/1]).
-export(['LocalNameFromQNameFunc019'/1]).
-export(['LocalNameFromQNameFunc020'/1]).
-export(['LocalNameFromQNameFunc021'/1]).
-export(['fn-local-name-from-qname-022'/1]).
-export(['fn-local-name-from-qname-023'/1]).
-export(['fn-local-name-from-qname-024'/1]).
-export(['K-LocalNameFromQNameFunc-1'/1]).
-export(['K-LocalNameFromQNameFunc-2'/1]).
-export(['K-LocalNameFromQNameFunc-3'/1]).
-export(['K-LocalNameFromQNameFunc-4'/1]).
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
   __BaseDir = filename:join(TD, "fn"),
   [{base_dir, __BaseDir}|Config].
all() -> [
   {group, group_0}, 
   {group, group_1}
   ].
groups() -> [
   {group_0, [parallel], [
    'LocalNameFromQNameFunc001', 
    'LocalNameFromQNameFunc002', 
    'LocalNameFromQNameFunc003', 
    'LocalNameFromQNameFunc004', 
    'LocalNameFromQNameFunc005', 
    'LocalNameFromQNameFunc006', 
    'LocalNameFromQNameFunc007', 
    'LocalNameFromQNameFunc009', 
    'LocalNameFromQNameFunc010', 
    'LocalNameFromQNameFunc011', 
    'LocalNameFromQNameFunc012', 
    'LocalNameFromQNameFunc013', 
    'LocalNameFromQNameFunc014', 
    'LocalNameFromQNameFunc015', 
    'LocalNameFromQNameFunc015a', 
    'LocalNameFromQNameFunc016', 
    'LocalNameFromQNameFunc017', 
    'LocalNameFromQNameFunc018', 
    'LocalNameFromQNameFunc019', 
    'LocalNameFromQNameFunc020', 
    'LocalNameFromQNameFunc021', 
    'fn-local-name-from-qname-022', 
    'fn-local-name-from-qname-023']}, 
   {group_1, [parallel], [
    'fn-local-name-from-qname-024', 
    'K-LocalNameFromQNameFunc-1', 
    'K-LocalNameFromQNameFunc-2', 
    'K-LocalNameFromQNameFunc-3', 
    'K-LocalNameFromQNameFunc-4']}].
environment('atomic',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/atomic.xml"), ".","http://www.w3.org/fots/docs/atomic.xml"}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{schemas, [{filename:join(__BaseDir, "../docs/atomic.xsd"),"http://www.w3.org/XQueryTest"}]}, 
{resources, []}, 
{modules, []}
]; 
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
]; 
environment('qname',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/QName-source.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, [{"http://www.example.com/QNameXSD",""}]},
{schemas, [{filename:join(__BaseDir, "../docs/QName-schema.xsd"),"http://www.example.com/QNameXSD"}]}, 
{resources, []}, 
{modules, []}
]; 
environment('fsx',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../prod/ForClause/fsx.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
].
'LocalNameFromQNameFunc001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaValidation"}. 
'LocalNameFromQNameFunc002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaValidation"}. 
'LocalNameFromQNameFunc003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaValidation"}. 
'LocalNameFromQNameFunc004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaValidation"}. 
'LocalNameFromQNameFunc005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaValidation"}. 
'LocalNameFromQNameFunc006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:local-name-from-QName(())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "LocalNameFromQNameFunc006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'LocalNameFromQNameFunc007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:local-name-from-QName(((),()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "LocalNameFromQNameFunc007.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'LocalNameFromQNameFunc009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:local-name-from-QName(\"\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "LocalNameFromQNameFunc009.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'LocalNameFromQNameFunc010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaValidation"}. 
'LocalNameFromQNameFunc011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:local-name-from-QName()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "LocalNameFromQNameFunc011.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'LocalNameFromQNameFunc012'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaValidation"}. 
'LocalNameFromQNameFunc013'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaValidation"}. 
'LocalNameFromQNameFunc014'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaValidation"}. 
'LocalNameFromQNameFunc015'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"spec:XQ10 XP20"}. 
'LocalNameFromQNameFunc015a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:local-name-from-QName((//Folder)[1])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('fsx',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "LocalNameFromQNameFunc015a.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0117") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'LocalNameFromQNameFunc016'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:local-name-from-QName(xs:integer(\"100\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "LocalNameFromQNameFunc016.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'LocalNameFromQNameFunc017'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:local-name-from-QName(xs:time(\"12:00:00Z\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "LocalNameFromQNameFunc017.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'LocalNameFromQNameFunc018'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaValidation"}. 
'LocalNameFromQNameFunc019'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaValidation"}. 
'LocalNameFromQNameFunc020'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaValidation"}. 
'LocalNameFromQNameFunc021'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport"}. 
'fn-local-name-from-qname-022'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaValidation"}. 
'fn-local-name-from-qname-023'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaValidation"}. 
'fn-local-name-from-qname-024'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:local-name-from-QName(node-name(/*))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-local-name-from-qname-024.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "works") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-LocalNameFromQNameFunc-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "local-name-from-QName()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-LocalNameFromQNameFunc-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-LocalNameFromQNameFunc-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "local-name-from-QName(1, 2)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-LocalNameFromQNameFunc-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-LocalNameFromQNameFunc-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(local-name-from-QName( () ))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-LocalNameFromQNameFunc-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-LocalNameFromQNameFunc-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "local-name-from-QName( QName(\"example.com/\", \"pre:lname\")) eq \"lname\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-LocalNameFromQNameFunc-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.