-module('prod_GeneralComp_gt_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['generalexpression397'/1]).
-export(['generalexpression398'/1]).
-export(['generalexpression399'/1]).
-export(['generalexpression400'/1]).
-export(['generalexpression401'/1]).
-export(['generalexpression402'/1]).
-export(['generalexpression403'/1]).
-export(['generalexpression404'/1]).
-export(['generalexpression405'/1]).
-export(['generalexpression406'/1]).
-export(['generalexpression407'/1]).
-export(['generalexpression408'/1]).
-export(['generalexpression409'/1]).
-export(['generalexpression410'/1]).
-export(['generalexpression411'/1]).
-export(['generalexpression412'/1]).
-export(['generalexpression413'/1]).
-export(['generalexpression414'/1]).
-export(['generalexpression415'/1]).
-export(['generalexpression416'/1]).
-export(['generalexpression417'/1]).
-export(['generalexpression418'/1]).
-export(['generalexpression419'/1]).
-export(['generalexpression420'/1]).
-export(['generalexpression421'/1]).
-export(['generalexpression422'/1]).
-export(['generalexpression423'/1]).
-export(['generalexpression424'/1]).
-export(['generalexpression425'/1]).
-export(['generalexpression426'/1]).
-export(['generalexpression427'/1]).
-export(['generalexpression428'/1]).
-export(['generalexpression429'/1]).
-export(['generalexpression430'/1]).
-export(['generalexpression431'/1]).
-export(['generalexpression432'/1]).
-export(['generalexpression433'/1]).
-export(['generalexpression434'/1]).
-export(['generalexpression435'/1]).
-export(['generalexpression436'/1]).
-export(['generalexpression437'/1]).
-export(['generalexpression438'/1]).
-export(['generalexpression439'/1]).
-export(['generalexpression440'/1]).
-export(['generalexpression441'/1]).
-export(['generalexpression442'/1]).
-export(['generalexpression443'/1]).
-export(['generalexpression444'/1]).
-export(['generalexpression445'/1]).
-export(['generalexpression446'/1]).
-export(['generalexpression447'/1]).
-export(['generalexpression448'/1]).
-export(['generalexpression449'/1]).
-export(['generalexpression450'/1]).
-export(['generalexpression451'/1]).
-export(['generalexpression452'/1]).
-export(['generalexpression453'/1]).
-export(['generalexpression454'/1]).
-export(['generalexpression455'/1]).
-export(['generalexpression456'/1]).
-export(['generalexpression457'/1]).
-export(['generalexpression458'/1]).
-export(['generalexpression459'/1]).
-export(['generalexpression460'/1]).
-export(['generalexpression461'/1]).
-export(['generalexpression462'/1]).
-export(['generalexpression463'/1]).
-export(['generalexpression464'/1]).
-export(['generalexpression465'/1]).
-export(['generalexpression466'/1]).
-export(['generalexpression467'/1]).
-export(['generalexpression468'/1]).
-export(['generalexpression469'/1]).
-export(['generalexpression470'/1]).
-export(['generalexpression471'/1]).
-export(['generalexpression472'/1]).
-export(['generalexpression473'/1]).
-export(['generalexpression474'/1]).
-export(['generalexpression475'/1]).
-export(['generalexpression476'/1]).
-export(['generalexpression477'/1]).
-export(['generalexpression478'/1]).
-export(['generalexpression479'/1]).
-export(['generalexpression480'/1]).
-export(['generalexpression481'/1]).
-export(['generalexpression482'/1]).
-export(['generalexpression483'/1]).
-export(['generalexpression484'/1]).
-export(['generalexpression485'/1]).
-export(['generalexpression486'/1]).
-export(['generalexpression487'/1]).
-export(['generalexpression488'/1]).
-export(['generalexpression489'/1]).
-export(['generalexpression490'/1]).
-export(['generalexpression491'/1]).
-export(['generalexpression492'/1]).
-export(['generalexpression493'/1]).
-export(['generalexpression494'/1]).
-export(['greaterthanonanyuri-1'/1]).
-export(['K-GenCompGT-1'/1]).
-export(['K-GenCompGT-2'/1]).
-export(['K-GenCompGT-3'/1]).
-export(['K-GenCompGT-4'/1]).
-export(['K-GenCompGT-5'/1]).
-export(['K-GenCompGT-6'/1]).
-export(['K-GenCompGT-7'/1]).
-export(['K-GenCompGT-8'/1]).
-export(['K-GenCompGT-9'/1]).
-export(['K-GenCompGT-10'/1]).
-export(['K-GenCompGT-11'/1]).
-export(['K-GenCompGT-12'/1]).
-export(['K-GenCompGT-13'/1]).
-export(['K-GenCompGT-14'/1]).
-export(['K-GenCompGT-15'/1]).
-export(['K-GenCompGT-16'/1]).
-export(['K-GenCompGT-17'/1]).
-export(['K-GenCompGT-18'/1]).
-export(['K-GenCompGT-19'/1]).
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
'generalexpression397', 
'generalexpression398', 
'generalexpression399', 
'generalexpression400', 
'generalexpression401', 
'generalexpression402', 
'generalexpression403', 
'generalexpression404', 
'generalexpression405', 
'generalexpression406', 
'generalexpression407', 
'generalexpression408', 
'generalexpression409', 
'generalexpression410', 
'generalexpression411', 
'generalexpression412', 
'generalexpression413', 
'generalexpression414', 
'generalexpression415', 
'generalexpression416', 
'generalexpression417', 
'generalexpression418', 
'generalexpression419', 
'generalexpression420', 
'generalexpression421', 
'generalexpression422', 
'generalexpression423', 
'generalexpression424', 
'generalexpression425', 
'generalexpression426', 
'generalexpression427', 
'generalexpression428', 
'generalexpression429', 
'generalexpression430', 
'generalexpression431', 
'generalexpression432', 
'generalexpression433', 
'generalexpression434', 
'generalexpression435', 
'generalexpression436', 
'generalexpression437', 
'generalexpression438', 
'generalexpression439', 
'generalexpression440', 
'generalexpression441', 
'generalexpression442', 
'generalexpression443', 
'generalexpression444', 
'generalexpression445', 
'generalexpression446', 
'generalexpression447', 
'generalexpression448', 
'generalexpression449', 
'generalexpression450', 
'generalexpression451', 
'generalexpression452', 
'generalexpression453', 
'generalexpression454', 
'generalexpression455', 
'generalexpression456', 
'generalexpression457', 
'generalexpression458', 
'generalexpression459', 
'generalexpression460', 
'generalexpression461', 
'generalexpression462', 
'generalexpression463', 
'generalexpression464', 
'generalexpression465', 
'generalexpression466', 
'generalexpression467', 
'generalexpression468', 
'generalexpression469', 
'generalexpression470', 
'generalexpression471', 
'generalexpression472', 
'generalexpression473', 
'generalexpression474', 
'generalexpression475', 
'generalexpression476', 
'generalexpression477', 
'generalexpression478', 
'generalexpression479', 
'generalexpression480', 
'generalexpression481', 
'generalexpression482', 
'generalexpression483', 
'generalexpression484', 
'generalexpression485', 
'generalexpression486', 
'generalexpression487', 
'generalexpression488', 
'generalexpression489', 
'generalexpression490', 
'generalexpression491', 
'generalexpression492', 
'generalexpression493', 
'generalexpression494', 
'greaterthanonanyuri-1', 
'K-GenCompGT-1', 
'K-GenCompGT-2', 
'K-GenCompGT-3', 
'K-GenCompGT-4', 
'K-GenCompGT-5', 
'K-GenCompGT-6', 
'K-GenCompGT-7', 
'K-GenCompGT-8', 
'K-GenCompGT-9', 
'K-GenCompGT-10', 
'K-GenCompGT-11', 
'K-GenCompGT-12', 
'K-GenCompGT-13', 
'K-GenCompGT-14', 
'K-GenCompGT-15', 
'K-GenCompGT-16', 
'K-GenCompGT-17', 
'K-GenCompGT-18', 
'K-GenCompGT-19'
].
environment('works',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/works.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('works-and-staff',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/works.xml"), "$works",[]}, 
{filename:join(__BaseDir, "../docs/staff.xml"), "$staff",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
].
'generalexpression397'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "() > ()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression397.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression398'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "() > 10000", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression398.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression399'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "() > (50000)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression399.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression400'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "() > (10000,50000)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression400.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression401'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "() > <a>10000</a>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression401.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression402'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "() > (<a>10000</a>)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression402.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression403'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "() > (<a>10000</a>,<b>50000</b>)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression403.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression404'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "() > (/works/employee[1]/hours[1])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression404.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression405'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "() > (/works/employee[1]/hours[1],/works/employee[6]/hours[1])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression405.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression406'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "() > ($works/works/employee[1]/hours[1],$staff/staff/employee[6]/grade[1])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-and-staff',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression406.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression407'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "10000 > ()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression407.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression408'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "10000 > (50000)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression408.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression409'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "10000 > (10000,50000)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression409.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression410'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "10000 > <a>10000</a>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression410.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression411'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "10000 > (<a>10000</a>)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression411.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression412'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "10000 > (<a>10000</a>,<b>50000</b>)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression412.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression413'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "10000 > (/works/employee[1]/hours[1])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression413.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression414'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "10000 > (/works/employee[1]/hours[1],/works/employee[6]/hours[1])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression414.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression415'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "10000 > ($works/works/employee[1]/hours[1],$staff/staff/employee[6]/grade[1])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-and-staff',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression415.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression416'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(50000) > ()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression416.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression417'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(50000) > 10000", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression417.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression418'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(50000) > (50000)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression418.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression419'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(50000) > (10000,50000)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression419.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression420'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(50000) > <a>10000</a>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression420.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression421'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(50000) > (<a>10000</a>)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression421.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression422'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(50000) > (<a>10000</a>,<b>50000</b>)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression422.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression423'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(50000) > (/works/employee[1]/hours[1])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression423.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression424'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(50000) > (/works/employee[1]/hours[1],/works/employee[6]/hours[1])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression424.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression425'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(50000) > ($works/works/employee[1]/hours[1],$staff/staff/employee[6]/grade[1])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-and-staff',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression425.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression426'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(10000,50000) > ()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression426.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression427'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(10000,50000) > 10000", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression427.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression428'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(10000,50000) > (50000)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression428.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression429'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(10000,50000) > (10000,50000)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression429.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression430'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(10000,50000) > <a>10000</a>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression430.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression431'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(10000,50000) > (<a>10000</a>)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression431.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression432'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(10000,50000) > (<a>10000</a>,<b>50000</b>)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression432.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression433'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(10000,50000) > (/works/employee[1]/hours[1])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression433.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression434'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(10000,50000) > (/works/employee[1]/hours[1],/works/employee[6]/hours[1])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression434.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression435'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(10000,50000) > ($works/works/employee[1]/hours[1],$staff/staff/employee[6]/grade[1])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-and-staff',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression435.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression436'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<a>10000</a> > ()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression436.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression437'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<a>10000</a> > 10000", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression437.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression438'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<a>10000</a> > (50000)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression438.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression439'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<a>10000</a> > (10000,50000)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression439.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression440'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<a>10000</a> > <a>10000</a>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression440.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression441'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<a>10000</a> > (<a>10000</a>)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression441.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression442'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<a>10000</a> > (<a>10000</a>,<b>50000</b>)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression442.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression443'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<a>10000</a> > (/works/employee[1]/hours[1])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression443.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression444'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<a>10000</a> > (/works/employee[1]/hours[1],/works/employee[6]/hours[1])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression444.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression445'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<a>10000</a> > ($works/works/employee[1]/hours[1],$staff/staff/employee[6]/grade[1])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-and-staff',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression445.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression446'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(<a>10000</a>) > ()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression446.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression447'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(<a>10000</a>) > 10000", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression447.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression448'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(<a>10000</a>) > (50000)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression448.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression449'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(<a>10000</a>) > (10000,50000)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression449.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression450'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(<a>10000</a>) > <a>10000</a>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression450.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression451'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(<a>10000</a>) > (<a>10000</a>)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression451.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression452'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(<a>10000</a>) > (<a>10000</a>,<b>50000</b>)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression452.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression453'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(<a>10000</a>) > (/works/employee[1]/hours[1])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression453.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression454'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(<a>10000</a>) > (/works/employee[1]/hours[1],/works/employee[6]/hours[1])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression454.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression455'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(<a>10000</a>) > ($works/works/employee[1]/hours[1],$staff/staff/employee[6]/grade[1])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-and-staff',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression455.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression456'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(<a>10000</a>,<b>50000</b>) > ()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression456.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression457'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(<a>10000</a>,<b>50000</b>) > 10000", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression457.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression458'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(<a>10000</a>,<b>50000</b>) > (50000)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression458.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression459'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(<a>10000</a>,<b>50000</b>) > (10000,50000)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression459.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression460'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(<a>10000</a>,<b>50000</b>) > <a>10000</a>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression460.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression461'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(<a>10000</a>,<b>50000</b>) > (<a>10000</a>)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression461.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression462'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(<a>10000</a>,<b>50000</b>) > (<a>10000</a>,<b>50000</b>)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression462.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression463'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(<a>10000</a>,<b>50000</b>) > (/works/employee[1]/hours[1])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression463.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression464'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(<a>10000</a>,<b>50000</b>) > (/works/employee[1]/hours[1],/works/employee[6]/hours[1])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression464.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression465'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(<a>10000</a>,<b>50000</b>) > ($works/works/employee[1]/hours[1],$staff/staff/employee[6]/grade[1])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-and-staff',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression465.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression466'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(/works/employee[1]/hours[1]) > ()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression466.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression467'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(/works/employee[1]/hours[1]) > 10000", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression467.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression468'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(/works/employee[1]/hours[1]) > (50000)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression468.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression469'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(/works/employee[1]/hours[1]) > (10000,50000)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression469.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression470'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(/works/employee[1]/hours[1]) > <a>10000</a>", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression470.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression471'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(/works/employee[1]/hours[1]) > (<a>10000</a>)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression471.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression472'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(/works/employee[1]/hours[1]) > (<a>10000</a>,<b>50000</b>)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression472.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression473'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(/works/employee[1]/hours[1]) > (/works/employee[1]/hours[1])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression473.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression474'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(/works/employee[1]/hours[1]) > (/works/employee[1]/hours[1],/works/employee[6]/hours[1])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression474.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression475'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "($works/works/employee[1]/hours[1]) > ($works/works/employee[1]/hours[1],$staff/staff/employee[6]/grade[1])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-and-staff',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression475.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression476'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(/works/employee[1]/hours[1],/works/employee[6]/hours[1]) > ()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression476.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression477'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(/works/employee[1]/hours[1],/works/employee[6]/hours[1]) > 10000", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression477.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression478'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(/works/employee[1]/hours[1],/works/employee[6]/hours[1]) > (50000)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression478.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression479'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(/works/employee[1]/hours[1],/works/employee[6]/hours[1]) > (10000,50000)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression479.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression480'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(/works/employee[1]/hours[1],/works/employee[6]/hours[1]) > <a>10000</a>", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression480.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression481'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(/works/employee[1]/hours[1],/works/employee[6]/hours[1]) > (<a>10000</a>)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression481.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression482'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(/works/employee[1]/hours[1],/works/employee[6]/hours[1]) > (<a>10000</a>,<b>50000</b>)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression482.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression483'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(/works/employee[1]/hours[1],/works/employee[6]/hours[1]) > (/works/employee[1]/hours[1])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression483.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression484'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(/works/employee[1]/hours[1],/works/employee[6]/hours[1]) > (/works/employee[1]/hours[1],/works/employee[6]/hours[1])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression484.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression485'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "($works/works/employee[1]/hours[1],$works/works/employee[6]/hours[1]) > ($works/works/employee[1]/hours[1],$staff/staff/employee[6]/grade[1])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-and-staff',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression485.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression486'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "($works/works/employee[1]/hours[1],$staff/staff/employee[6]/hours[1]) > ()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-and-staff',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression486.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression487'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "($works/works/employee[1]/hours[1],$staff/staff/employee[6]/hours[1]) > 10000", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-and-staff',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression487.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression488'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "($works/works/employee[1]/hours[1],$staff/staff/employee[6]/hours[1]) > (50000)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-and-staff',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression488.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression489'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "($works/works/employee[1]/hours[1],$staff/staff/employee[6]/hours[1]) > (10000,50000)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-and-staff',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression489.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression490'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "($works/works/employee[1]/hours[1],$staff/staff/employee[6]/hours[1]) > <a>10000</a>", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-and-staff',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression490.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression491'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "($works/works/employee[1]/hours[1],$staff/staff/employee[6]/hours[1]) > (<a>10000</a>)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-and-staff',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression491.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression492'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "($works/works/employee[1]/hours[1],$staff/staff/employee[6]/hours[1]) > (<a>10000</a>,<b>50000</b>)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-and-staff',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression492.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression493'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "($works/works/employee[1]/hours[1],$staff/staff/employee[6]/hours[1]) > ($works/works/employee[1]/hours[1])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-and-staff',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression493.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'generalexpression494'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "($works/works/employee[1]/hours[1],$staff/staff/employee[6]/hours[1]) > ($works/works/employee[1]/hours[1],$works/works/employee[6]/hours[1])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-and-staff',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "generalexpression494.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'greaterthanonanyuri-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(xs:anyURI(\"http://www.example/com\")) > (xs:anyURI(\"http://www.example/com\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "greaterthanonanyuri-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-GenCompGT-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(() > () )", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-GenCompGT-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-GenCompGT-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(1 > () )", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-GenCompGT-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-GenCompGT-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(() > 1 )", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-GenCompGT-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-GenCompGT-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(1, 2, 3) > 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-GenCompGT-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-GenCompGT-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(1, 2, 3) > 2", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-GenCompGT-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-GenCompGT-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(1, 2, 3) > 0", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-GenCompGT-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-GenCompGT-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "4 > (1, 2, 3)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-GenCompGT-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-GenCompGT-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "2 > (1, 2, 3)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-GenCompGT-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-GenCompGT-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "3 > (1, 2, 3)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-GenCompGT-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-GenCompGT-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "2 > 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-GenCompGT-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-GenCompGT-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1 >= 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-GenCompGT-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-GenCompGT-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:untypedAtomic(\"true\") > false()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-GenCompGT-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-GenCompGT-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "true() > xs:untypedAtomic(\"false\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-GenCompGT-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-GenCompGT-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(xs:untypedAtomic(\"false\") > true())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-GenCompGT-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-GenCompGT-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(false() > xs:untypedAtomic(\"true\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-GenCompGT-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-GenCompGT-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1 > xs:anyURI(\"2\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-GenCompGT-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-GenCompGT-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:anyURI(\"2\") > 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-GenCompGT-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-GenCompGT-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count((1, 2, 3, timezone-from-time(current-time()), 4)) > 0", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-GenCompGT-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-GenCompGT-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count((1, 2, 3, timezone-from-time(current-time()), 4)) >= 0", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-GenCompGT-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.