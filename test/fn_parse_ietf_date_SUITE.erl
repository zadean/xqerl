-module('fn_parse_ietf_date_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['parse-ietf-date-0'/1]).
-export(['parse-ietf-date-1'/1]).
-export(['parse-ietf-date-2'/1]).
-export(['parse-ietf-date-3'/1]).
-export(['parse-ietf-date-4'/1]).
-export(['parse-ietf-date-5'/1]).
-export(['parse-ietf-date-6'/1]).
-export(['parse-ietf-date-7'/1]).
-export(['parse-ietf-date-8'/1]).
-export(['parse-ietf-date-9'/1]).
-export(['parse-ietf-date-10'/1]).
-export(['parse-ietf-date-11'/1]).
-export(['parse-ietf-date-12'/1]).
-export(['parse-ietf-date-13'/1]).
-export(['parse-ietf-date-14'/1]).
-export(['parse-ietf-date-15'/1]).
-export(['parse-ietf-date-16'/1]).
-export(['parse-ietf-date-17'/1]).
-export(['parse-ietf-date-18'/1]).
-export(['parse-ietf-date-19'/1]).
-export(['parse-ietf-date-20'/1]).
-export(['parse-ietf-date-21'/1]).
-export(['parse-ietf-date-22'/1]).
-export(['parse-ietf-date-23'/1]).
-export(['parse-ietf-date-24'/1]).
-export(['parse-ietf-date-25'/1]).
-export(['parse-ietf-date-26'/1]).
-export(['parse-ietf-date-27'/1]).
-export(['parse-ietf-date-28'/1]).
-export(['parse-ietf-date-29'/1]).
-export(['parse-ietf-date-30'/1]).
-export(['parse-ietf-date-31'/1]).
-export(['parse-ietf-date-32'/1]).
-export(['parse-ietf-date-33'/1]).
-export(['parse-ietf-date-34'/1]).
-export(['parse-ietf-date-35'/1]).
-export(['parse-ietf-date-36'/1]).
-export(['parse-ietf-date-37'/1]).
-export(['parse-ietf-date-38'/1]).
-export(['parse-ietf-date-39'/1]).
-export(['parse-ietf-date-40'/1]).
-export(['parse-ietf-date-41'/1]).
-export(['parse-ietf-date-42'/1]).
-export(['parse-ietf-date-43'/1]).
-export(['parse-ietf-date-44'/1]).
-export(['parse-ietf-date-45'/1]).
-export(['parse-ietf-date-46'/1]).
-export(['parse-ietf-date-47'/1]).
-export(['parse-ietf-date-48'/1]).
-export(['parse-ietf-date-49'/1]).
-export(['parse-ietf-date-50'/1]).
-export(['parse-ietf-date-51'/1]).
-export(['parse-ietf-date-52'/1]).
-export(['parse-ietf-date-53'/1]).
-export(['parse-ietf-date-54'/1]).
-export(['parse-ietf-date-54a'/1]).
-export(['parse-ietf-date-55'/1]).
-export(['parse-ietf-date-56'/1]).
-export(['parse-ietf-date-57'/1]).
-export(['parse-ietf-date-58'/1]).
-export(['parse-ietf-date-59'/1]).
-export(['parse-ietf-date-60'/1]).
-export(['parse-ietf-date-61'/1]).
-export(['parse-ietf-date-62'/1]).
-export(['parse-ietf-date-63'/1]).
-export(['parse-ietf-date-64'/1]).
-export(['parse-ietf-date-errs-0'/1]).
-export(['parse-ietf-date-errs2'/1]).
-export(['parse-ietf-date-errs3'/1]).
-export(['parse-ietf-date-errs4'/1]).
-export(['parse-ietf-date-errs5'/1]).
-export(['parse-ietf-date-errs6'/1]).
-export(['parse-ietf-date-errs7'/1]).
-export(['parse-ietf-date-errs8'/1]).
-export(['parse-ietf-date-errs9'/1]).
-export(['parse-ietf-date-errs10'/1]).
-export(['parse-ietf-date-errs11'/1]).
-export(['parse-ietf-date-errs12'/1]).
-export(['parse-ietf-date-errs13'/1]).
-export(['parse-ietf-date-errs14'/1]).
-export(['parse-ietf-date-errs15'/1]).
-export(['parse-ietf-date-errs16'/1]).
-export(['parse-ietf-date-errs17'/1]).
-export(['parse-ietf-date-errs18'/1]).
-export(['parse-ietf-date-errs19'/1]).
-export(['parse-ietf-date-errs20'/1]).
-export(['parse-ietf-date-errs21'/1]).
-export(['parse-ietf-date-errs22'/1]).
-export(['parse-ietf-date-errs23'/1]).
-export(['parse-ietf-date-errs24'/1]).
-export(['parse-ietf-date-errs25'/1]).
-export(['parse-ietf-date-errs26'/1]).
-export(['parse-ietf-date-errs27'/1]).
-export(['parse-ietf-date-errs28'/1]).
-export(['parse-ietf-date-errs29'/1]).
-export(['parse-ietf-date-errs30'/1]).
-export(['parse-ietf-date-errs31'/1]).
-export(['parse-ietf-date-errs32'/1]).
-export(['parse-ietf-date-errs33'/1]).
-export(['parse-ietf-date-errs34'/1]).
-export(['parse-ietf-date-errs35'/1]).
-export(['parse-ietf-date-errs36'/1]).
-export(['parse-ietf-date-errs37'/1]).
-export(['parse-ietf-date-errs38'/1]).
-export(['parse-ietf-date-errs39'/1]).
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
   {group, group_1}, 
   {group, group_2}, 
   {group, group_3}, 
   {group, group_4}
   ].
groups() -> [
   {group_0, [parallel], [
    'parse-ietf-date-0', 
    'parse-ietf-date-1', 
    'parse-ietf-date-2', 
    'parse-ietf-date-3', 
    'parse-ietf-date-4', 
    'parse-ietf-date-5', 
    'parse-ietf-date-6', 
    'parse-ietf-date-7', 
    'parse-ietf-date-8', 
    'parse-ietf-date-9', 
    'parse-ietf-date-10', 
    'parse-ietf-date-11', 
    'parse-ietf-date-12', 
    'parse-ietf-date-13', 
    'parse-ietf-date-14', 
    'parse-ietf-date-15', 
    'parse-ietf-date-16', 
    'parse-ietf-date-17', 
    'parse-ietf-date-18', 
    'parse-ietf-date-19', 
    'parse-ietf-date-20', 
    'parse-ietf-date-21', 
    'parse-ietf-date-22']}, 
   {group_1, [parallel], [
    'parse-ietf-date-23', 
    'parse-ietf-date-24', 
    'parse-ietf-date-25', 
    'parse-ietf-date-26', 
    'parse-ietf-date-27', 
    'parse-ietf-date-28', 
    'parse-ietf-date-29', 
    'parse-ietf-date-30', 
    'parse-ietf-date-31', 
    'parse-ietf-date-32', 
    'parse-ietf-date-33', 
    'parse-ietf-date-34', 
    'parse-ietf-date-35', 
    'parse-ietf-date-36', 
    'parse-ietf-date-37', 
    'parse-ietf-date-38', 
    'parse-ietf-date-39', 
    'parse-ietf-date-40', 
    'parse-ietf-date-41', 
    'parse-ietf-date-42', 
    'parse-ietf-date-43', 
    'parse-ietf-date-44', 
    'parse-ietf-date-45', 
    'parse-ietf-date-46']}, 
   {group_2, [parallel], [
    'parse-ietf-date-47', 
    'parse-ietf-date-48', 
    'parse-ietf-date-49', 
    'parse-ietf-date-50', 
    'parse-ietf-date-51', 
    'parse-ietf-date-52', 
    'parse-ietf-date-53', 
    'parse-ietf-date-54', 
    'parse-ietf-date-54a', 
    'parse-ietf-date-55', 
    'parse-ietf-date-56', 
    'parse-ietf-date-57', 
    'parse-ietf-date-58', 
    'parse-ietf-date-59', 
    'parse-ietf-date-60', 
    'parse-ietf-date-61', 
    'parse-ietf-date-62', 
    'parse-ietf-date-63', 
    'parse-ietf-date-64', 
    'parse-ietf-date-errs-0', 
    'parse-ietf-date-errs2', 
    'parse-ietf-date-errs3', 
    'parse-ietf-date-errs4', 
    'parse-ietf-date-errs5']}, 
   {group_3, [parallel], [
    'parse-ietf-date-errs6', 
    'parse-ietf-date-errs7', 
    'parse-ietf-date-errs8', 
    'parse-ietf-date-errs9', 
    'parse-ietf-date-errs10', 
    'parse-ietf-date-errs11', 
    'parse-ietf-date-errs12', 
    'parse-ietf-date-errs13', 
    'parse-ietf-date-errs14', 
    'parse-ietf-date-errs15', 
    'parse-ietf-date-errs16', 
    'parse-ietf-date-errs17', 
    'parse-ietf-date-errs18', 
    'parse-ietf-date-errs19', 
    'parse-ietf-date-errs20', 
    'parse-ietf-date-errs21', 
    'parse-ietf-date-errs22', 
    'parse-ietf-date-errs23', 
    'parse-ietf-date-errs24', 
    'parse-ietf-date-errs25', 
    'parse-ietf-date-errs26', 
    'parse-ietf-date-errs27', 
    'parse-ietf-date-errs28', 
    'parse-ietf-date-errs29']}, 
   {group_4, [parallel], [
    'parse-ietf-date-errs30', 
    'parse-ietf-date-errs31', 
    'parse-ietf-date-errs32', 
    'parse-ietf-date-errs33', 
    'parse-ietf-date-errs34', 
    'parse-ietf-date-errs35', 
    'parse-ietf-date-errs36', 
    'parse-ietf-date-errs37', 
    'parse-ietf-date-errs38', 
    'parse-ietf-date-errs39']}].

'parse-ietf-date-0'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if (parse-ietf-date(\"Wed, 20 Aug 2014 19:36:01 GMT\") = $d)
	  then \"pass\"
	  else \"fail\"", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:dateTime","xs:dateTime('2014-08-20T19:36:01Z')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-0.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "pass") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if (parse-ietf-date(\"  Wed, 20 Aug 2014 19:36:01 GMT\") = $d)
	  then \"pass\"
	  else \"fail\"", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:dateTime","xs:dateTime('2014-08-20T19:36:01Z')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "pass") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if (parse-ietf-date(\"Wed, 20 Aug 2014 19:36:01 GMT    \") = $d)
	  then \"pass\"
	  else \"fail\"", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:dateTime","xs:dateTime('2014-08-20T19:36:01Z')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "pass") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if (parse-ietf-date(\"Wed 20 Aug 2014 19:36:01 GMT\") = $d)
	  then \"pass\"
	  else \"fail\"", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:dateTime","xs:dateTime('2014-08-20T19:36:01Z')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "pass") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if (parse-ietf-date(\"Wednesday 20 Aug 2014 19:36:01 GMT\") = $d)
	  then \"pass\"
	  else \"fail\"", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:dateTime","xs:dateTime('2014-08-20T19:36:01Z')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-4.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "pass") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if (parse-ietf-date(\"Wed, 20 Aug 2014 19:36:01.25 GMT\") = $d)
	  then \"pass\"
	  else \"fail\"", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:dateTime","xs:dateTime('2014-08-20T19:36:01.25Z')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-5.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "pass") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if (parse-ietf-date(\"Wed, 20 Aug 2014 19:36:01.299 GMT\") = xs:dateTime($d))
	  then \"pass\"
	  else \"fail\"", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:string","'2014-08-20T19:36:01.299Z'"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-6.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "pass") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if (parse-ietf-date(\"wed, 20 aug 2014 19:36:01 gmt\") = $d)
	  then \"pass\"
	  else \"fail\"", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:dateTime","xs:dateTime('2014-08-20T19:36:01Z')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-7.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "pass") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if (parse-ietf-date(\"WED, 20 AUG 2014 19:36:01 GMT\") = $d)
	  then \"pass\"
	  else \"fail\"", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:dateTime","xs:dateTime('2014-08-20T19:36:01Z')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-8.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "pass") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if (parse-ietf-date(\"Wed, 20 Aug 2014 19:36 GMT\") = $d)
	  then \"pass\"
	  else \"fail\"", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:dateTime","xs:dateTime('2014-08-20T19:36:00Z')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-9.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "pass") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if (parse-ietf-date(\"WED, 20 AUG 2014 19:36:01\") = $d)
	  then \"pass\"
	  else \"fail\"", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:dateTime","xs:dateTime('2014-08-20T19:36:01Z')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-10.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "pass") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if (parse-ietf-date(\"Wed, 20 Aug 2014 19:36\") = $d)
	  then \"pass\"
	  else \"fail\"", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:dateTime","xs:dateTime('2014-08-20T19:36:00Z')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-11.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "pass") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if (parse-ietf-date(\"Wed, 20 Aug 2014 19:36:01GMT\") = $d)
	  then \"pass\"
	  else \"fail\"", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:dateTime","xs:dateTime('2014-08-20T19:36:01Z')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-12.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "pass") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if (parse-ietf-date(\"Wed, 20 Aug 2014 19:36GMT\") = $d)
	  then \"pass\"
	  else \"fail\"", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:dateTime","xs:dateTime('2014-08-20T19:36:00Z')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-13.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "pass") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if (parse-ietf-date(\" 20 Aug 2014 19:36:01 GMT\") = $d)
	  then \"pass\"
	  else \"fail\"", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:dateTime","xs:dateTime('2014-08-20T19:36:01Z')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-14.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "pass") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if (parse-ietf-date(\"Tue, 9 Sep 2014 19:36:01 GMT\") = $d)
	  then \"pass\"
	  else \"fail\"", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:dateTime","xs:dateTime('2014-09-09T19:36:01Z')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-15.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "pass") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if (parse-ietf-date(\"Tue,  9 Sep 2014 19:36:01 GMT\") = $d)
	  then \"pass\"
	  else \"fail\"", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:dateTime","xs:dateTime('2014-09-09T19:36:01Z')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-16.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "pass") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if (parse-ietf-date(\"Tue, 09 Sep 2014 19:36:01 GMT\") = $d)
	  then \"pass\"
	  else \"fail\"", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:dateTime","xs:dateTime('2014-09-09T19:36:01Z')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-17.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "pass") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if (parse-ietf-date(\"Mon 8 Sep 2014 19:36:01 GMT\") = $d)
	  then \"pass\"
	  else \"fail\"", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:dateTime","xs:dateTime('2014-09-08T19:36:01Z')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-18.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "pass") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if (parse-ietf-date(\"Aug-20 19:36 2014\") = $d)
	  then \"pass\"
	  else \"fail\"", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:dateTime","xs:dateTime('2014-08-20T19:36:00Z')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-19.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "pass") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if (parse-ietf-date(\"Aug 20 19:36 2014\") = $d)
	  then \"pass\"
	  else \"fail\"", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:dateTime","xs:dateTime('2014-08-20T19:36:00Z')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-20.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "pass") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if (parse-ietf-date(\"Wed, 20 - Aug - 2014 19:36\") = $d)
	  then \"pass\"
	  else \"fail\"", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:dateTime","xs:dateTime('2014-08-20T19:36:00Z')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-21.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "pass") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-22'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if (parse-ietf-date(\"Wed, 20- Aug- 2014 19:36\") = $d)
	  then \"pass\"
	  else \"fail\"", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:dateTime","xs:dateTime('2014-08-20T19:36:00Z')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-22.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "pass") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-23'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if (parse-ietf-date(\"Wed, 20 -Aug -2014 19:36\") = $d)
	  then \"pass\"
	  else \"fail\"", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:dateTime","xs:dateTime('2014-08-20T19:36:00Z')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-23.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "pass") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-24'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if (parse-ietf-date(\"Sun, 20 Aug 2014 19:36:01 GMT\") = $d)
	  then \"pass\"
	  else \"fail\"", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:dateTime","xs:dateTime('2014-08-20T19:36:01Z')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-24.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "pass") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-25'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if (parse-ietf-date(\"Mon, 20 Aug 2014 19:36:01 GMT\") = $d)
	  then \"pass\"
	  else \"fail\"", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:dateTime","xs:dateTime('2014-08-20T19:36:01Z')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-25.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "pass") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-26'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if (parse-ietf-date(\"Tuesday, 20 Aug 2014 19:36:01 GMT\") = $d)
	  then \"pass\"
	  else \"fail\"", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:dateTime","xs:dateTime('2014-08-20T19:36:01Z')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-26.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "pass") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-27'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if (parse-ietf-date(\"Thursday, 20 Aug 2014 19:36:01 GMT\") = $d)
	  then \"pass\"
	  else \"fail\"", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:dateTime","xs:dateTime('2014-08-20T19:36:01Z')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-27.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "pass") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-28'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if (parse-ietf-date(\"FRI, 20 Aug 2014 19:36:01 GMT\") = $d)
	  then \"pass\"
	  else \"fail\"", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:dateTime","xs:dateTime('2014-08-20T19:36:01Z')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-28.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "pass") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-29'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if (parse-ietf-date(\"SAT, 20 Aug 2014 19:36:01 GMT\") = $d)
	  then \"pass\"
	  else \"fail\"", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:dateTime","xs:dateTime('2014-08-20T19:36:01Z')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-29.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "pass") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-30'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if (parse-ietf-date(\"Wed, 20 Aug 2014 19:36:01 UT\") = $d)
	  then \"pass\"
	  else \"fail\"", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:dateTime","xs:dateTime('2014-08-20T19:36:01Z')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-30.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "pass") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-31'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if (parse-ietf-date(\"Wed, 20 Aug 2014 19:36:01 UTC\") = $d)
	  then \"pass\"
	  else \"fail\"", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:dateTime","xs:dateTime('2014-08-20T19:36:01Z')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-31.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "pass") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-32'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if (parse-ietf-date(\"Wed, 20 Aug 2014 14:36:01 EST\") = $d)
	  then \"pass\"
	  else \"fail\"", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:dateTime","xs:dateTime('2014-08-20T19:36:01Z')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-32.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "pass") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-33'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if (parse-ietf-date(\"Wed, 20 Aug 2014 15:36:01 EDT\") = $d)
	  then \"pass\"
	  else \"fail\"", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:dateTime","xs:dateTime('2014-08-20T19:36:01Z')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-33.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "pass") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-34'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if (parse-ietf-date(\"Wed, 20 Aug 2014 13:36:01 CST\") = $d)
	  then \"pass\"
	  else \"fail\"", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:dateTime","xs:dateTime('2014-08-20T19:36:01Z')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-34.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "pass") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-35'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if (parse-ietf-date(\"Wed, 20 Aug 2014 14:36:01 CDT\") = $d)
	  then \"pass\"
	  else \"fail\"", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:dateTime","xs:dateTime('2014-08-20T19:36:01Z')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-35.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "pass") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-36'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if (parse-ietf-date(\"Wed, 20 Aug 2014 12:36:01 MST\") = $d)
	  then \"pass\"
	  else \"fail\"", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:dateTime","xs:dateTime('2014-08-20T19:36:01Z')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-36.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "pass") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-37'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if (parse-ietf-date(\"Wed, 20 Aug 2014 13:36:01 MDT\") = $d)
	  then \"pass\"
	  else \"fail\"", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:dateTime","xs:dateTime('2014-08-20T19:36:01Z')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-37.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "pass") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-38'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if (parse-ietf-date(\"Wed, 20 Aug 2014 11:36:01 PST\") = $d)
	  then \"pass\"
	  else \"fail\"", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:dateTime","xs:dateTime('2014-08-20T19:36:01Z')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-38.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "pass") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-39'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if (parse-ietf-date(\"Wed, 20 Aug 2014 12:36:01 PDT\") = $d)
	  then \"pass\"
	  else \"fail\"", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:dateTime","xs:dateTime('2014-08-20T19:36:01Z')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-39.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "pass") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-40'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-40.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-41'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"20 Aug 14 19:36:01\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-41.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:dateTime") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:dateTime('1914-08-20T19:36:01Z')") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-42'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"Wed, 20 Aug 2014 14:36:01 -05:00(EST)\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-42.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:dateTime") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:dateTime('2014-08-20T19:36:01Z')") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-43'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"Wed, 20 Aug 2014 14:36:01 -05:00(GMT)\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-43.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:dateTime") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:dateTime('2014-08-20T19:36:01Z')") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-44'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"Wed, 20 Aug 2014 14:36:01 -05:00  (  EST  )\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-44.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:dateTime") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:dateTime('2014-08-20T19:36:01Z')") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-45'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"Wed, 20 Aug 2014 14:36:01-05:00\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-45.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:dateTime") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:dateTime('2014-08-20T19:36:01Z')") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-46'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"Wed, 20 Aug 2014 14:36:01-05\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-46.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:dateTime") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:dateTime('2014-08-20T19:36:01Z')") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-47'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"Wed, 20 Aug 2014 14:36:01-05:\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-47.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:dateTime") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:dateTime('2014-08-20T19:36:01Z')") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-48'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"Wed, 20 Aug 2014 14:36:01 -05\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-48.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:dateTime") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:dateTime('2014-08-20T19:36:01Z')") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-49'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"Wed, 20 Aug 2014 14:36:01 -0500\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-49.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:dateTime") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:dateTime('2014-08-20T19:36:01Z')") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-50'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"Wed, 20 Aug 2014 14:36:01 +0500\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-50.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:dateTime") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:dateTime('2014-08-20T09:36:01Z')") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-51'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"Wed, 20 Aug 2014 14:36:01 +0500(EST)\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-51.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:dateTime") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:dateTime('2014-08-20T09:36:01Z')") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-52'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"Wed, 20 Aug 2014 14:36:01+05\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-52.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:dateTime") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:dateTime('2014-08-20T09:36:01Z')") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-53'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"Aug 20 14:36:01 -05 2014\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-53.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:dateTime") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:dateTime('2014-08-20T19:36:01Z')") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-54'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"Aug 20 14:36:01 -05:00 2014\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-54.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:dateTime") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:dateTime('2014-08-20T19:36:01Z')") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-54a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"Aug 20 14:36:01 -05:00(EST) 2014\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-54a.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:dateTime") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:dateTime('2014-08-20T19:36:01Z')") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-55'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"Wed Aug 20 19:36:01 2014\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-55.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:dateTime") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:dateTime('2014-08-20T19:36:01Z')") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-56'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"Wed, Aug 20 14:36:01EST 2014\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-56.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:dateTime") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:dateTime('2014-08-20T19:36:01Z')") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-57'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"Wed Aug 20 14:36:01-05:00 2014\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-57.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:dateTime") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:dateTime('2014-08-20T19:36:01Z')") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-58'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"Aug 20 19:36:01 14\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-58.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:dateTime") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:dateTime('1914-08-20T19:36:01Z')") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-59'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"Aug-20 14:36:01-05(EST) 14\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-59.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:dateTime") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:dateTime('1914-08-20T19:36:01Z')") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-60'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"Feb-02 02:02-02: 02\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-60.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:dateTime") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:dateTime('1902-02-02T04:02:00Z')") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-61'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"Aug 20 4:36:01 -5:00 2014\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-61.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:dateTime") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:dateTime('2014-08-20T09:36:01Z')") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-62'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"Aug 20 4:36:01 -500 2014\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-62.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:dateTime") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:dateTime('2014-08-20T04:36:01-05:00')") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-63'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"Aug 20 24:00:00 2014\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-63.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:dateTime") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:dateTime('2014-08-21T00:00:00Z')") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-64'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"Aug 20 24:00 2014\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-64.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:dateTime") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:dateTime('2014-08-21T00:00:00Z')") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-errs-0'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"2014-08-20T19:36:01Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-errs-0.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0010") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-errs2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"Wed, 020 Aug 2014 19:36:01 GMT\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-errs2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0010") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-errs3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"Wed, 20 August 2014 19:36:01 GMT\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-errs3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0010") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-errs4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"Wed, 20 Aug 114 19:36:01 GMT\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-errs4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0010") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-errs5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"Wed, 20 Aug 2014 9:36:01 GMT\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-errs5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:dateTime") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:dateTime('2014-08-20T09:36:01Z')") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-errs6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"Wed, 20 Aug 2014 19:36:01 CET\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-errs6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0010") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-errs7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"Mon, 32 Aug 2014 19:36:01 GMT\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-errs7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0010") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-errs8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"Sat, 29 Feb 2014 19:36:01 GMT\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-errs8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0010") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-errs9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"Feb 28 19:36:01 GMT -2000\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-errs9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0010") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-errs10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"Wed, 00 Aug 2014 19:36:01 GMT\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-errs10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0010") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-errs11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"Boy 20 Aug 2014 19:36:01 GMT\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-errs11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0010") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-errs12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"Manchester, 20 Aug 2014 19:36:01 GMT\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-errs12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0010") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-errs13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"Aug,20 19:36:01 2014\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-errs13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0010") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-errs14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"Aug20 19:36:01 2014\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-errs14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0010") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-errs15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"Wed,20 Aug 2014 19:36:01\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-errs15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0010") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-errs16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"Aug 2014 19:36:01\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-errs16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0010") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-errs17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"20Aug 2014 19:36:01\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-errs17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0010") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-errs18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"20 Aug2014 19:36:01\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-errs18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0010") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-errs19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"Aug 20 19:36:01GMT2014\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-errs19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0010") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-errs20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"Aug 20 19:36:01GMT Manchester\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-errs20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0010") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-errs21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"Aug 20 19:36:01GMT 014\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-errs21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0010") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-errs22'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"Wed, 20 Aug 2014 19:36:01 GMT Manchester\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-errs22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0010") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-errs23'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"Aug 20 19.36.01GMT 2014\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-errs23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0010") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-errs24'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"Aug 20 19:3:01GMT 2014\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-errs24.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0010") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-errs25'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"Aug 20 19:36:0.1GMT 2014\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-errs25.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0010") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-errs26'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"Aug 20 19:36:GMT 2014\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-errs26.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0010") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-errs27'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"Aug 20 19:36:01.GMT 2014\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-errs27.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0010") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-errs28'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"Aug 20 19:36:01 -5 2014\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-errs28.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:dateTime") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:dateTime('2014-08-20T19:36:01-05:00')") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-errs29'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"Aug 20 19:36:01 -05:0 2014\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-errs29.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0010") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-errs30'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"Aug 20 19:36:01 -05:00 () 2014\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-errs30.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0010") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-errs31'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"Aug 20 19:36:01 -05:00 (CET) 2014\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-errs31.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0010") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-errs32'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"Aug 20 19:36:01 -05:00 EST 2014\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-errs32.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0010") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-errs33'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"Aug 20 19:36(EST) 2014\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-errs33.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0010") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-errs34'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-errs34.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0010") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-errs35'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"Aug 20 29:36:01GMT 2014\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-errs35.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0010") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-errs36'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"Aug 20 19:66:01GMT 2014\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-errs36.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0010") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-errs37'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"Aug 20 19:36:71GMT 2014\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-errs37.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0010") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-errs38'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"Aug 20 19:36:01 -15:00 2014\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-errs38.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0010") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'parse-ietf-date-errs39'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-ietf-date(\"Aug 20 19:36:01 -05:60 2014\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "parse-ietf-date-errs39.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0010") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.