-module('fn_lang_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['fn-lang1args-1'/1]).
-export(['fn-lang1args-2'/1]).
-export(['fn-lang1args-3'/1]).
-export(['fn-lang-1'/1]).
-export(['fn-lang-2'/1]).
-export(['fn-lang-3'/1]).
-export(['fn-lang-4'/1]).
-export(['fn-lang-5'/1]).
-export(['fn-lang-6'/1]).
-export(['fn-lang-7'/1]).
-export(['fn-lang-8'/1]).
-export(['fn-lang-9'/1]).
-export(['fn-lang-10'/1]).
-export(['fn-lang-11'/1]).
-export(['fn-lang-12'/1]).
-export(['fn-lang-13'/1]).
-export(['fn-lang-14'/1]).
-export(['fn-lang-15'/1]).
-export(['fn-lang-16'/1]).
-export(['fn-lang-17'/1]).
-export(['fn-lang-18'/1]).
-export(['fn-lang-19'/1]).
-export(['fn-lang-20'/1]).
-export(['fn-lang-21'/1]).
-export(['fn-lang-22'/1]).
-export(['fn-lang-23'/1]).
-export(['fn-lang-24'/1]).
-export(['fn-lang-25'/1]).
-export(['fn-lang-26'/1]).
-export(['fn-lang-27'/1]).
-export(['fn-lang-28'/1]).
-export(['fn-lang-29'/1]).
-export(['fn-lang-30'/1]).
-export(['fn-lang-31'/1]).
-export(['fn-lang-32'/1]).
-export(['K-NodeLangFunc-1'/1]).
-export(['K-NodeLangFunc-2'/1]).
-export(['K-NodeLangFunc-3'/1]).
-export(['K-NodeLangFunc-4'/1]).
-export(['K2-NodeLangFunc-1'/1]).
-export(['K2-NodeLangFunc-2'/1]).
-export(['K2-NodeLangFunc-3'/1]).
-export(['K2-NodeLangFunc-4'/1]).
-export(['K2-NodeLangFunc-5'/1]).
-export(['K2-NodeLangFunc-6'/1]).
-export(['cbcl-fn-lang-001'/1]).
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
'fn-lang1args-1', 
'fn-lang1args-2', 
'fn-lang1args-3', 
'fn-lang-1', 
'fn-lang-2', 
'fn-lang-3', 
'fn-lang-4', 
'fn-lang-5', 
'fn-lang-6', 
'fn-lang-7', 
'fn-lang-8', 
'fn-lang-9', 
'fn-lang-10', 
'fn-lang-11', 
'fn-lang-12', 
'fn-lang-13', 
'fn-lang-14', 
'fn-lang-15', 
'fn-lang-16', 
'fn-lang-17', 
'fn-lang-18', 
'fn-lang-19', 
'fn-lang-20', 
'fn-lang-21', 
'fn-lang-22', 
'fn-lang-23', 
'fn-lang-24', 
'fn-lang-25', 
'fn-lang-26', 
'fn-lang-27', 
'fn-lang-28', 
'fn-lang-29', 
'fn-lang-30', 
'fn-lang-31', 
'fn-lang-32', 
'K-NodeLangFunc-1', 
'K-NodeLangFunc-2', 
'K-NodeLangFunc-3', 
'K-NodeLangFunc-4', 
'K2-NodeLangFunc-1', 
'K2-NodeLangFunc-2', 
'K2-NodeLangFunc-3', 
'K2-NodeLangFunc-4', 
'K2-NodeLangFunc-5', 
'K2-NodeLangFunc-6', 
'cbcl-fn-lang-001'
].
environment('emptydoc',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('atomicns',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/atomicns.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('lang',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "lang/lang.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
].
'fn-lang1args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:lang(xs:string(\"en\"),/root[1]/time[1])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('atomicns',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-lang1args-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-lang1args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:lang(xs:string(\"EN\"),./root[1]/time[1])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('atomicns',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-lang1args-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-lang1args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:lang(xs:string(\"eN\"),./root[1]/time[1])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('atomicns',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-lang1args-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-lang-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare namespace eg = \"http://example.org\"; 
        declare function eg:noContextFunction() { fn:lang(\"en\") }; 
        eg:noContextFunction()
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-lang-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-lang-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(fn:lang((), ./langs[1]/para[1]))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('lang',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-lang-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-lang-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " for $x in /langs/para[1] return $x/fn:lang(\"en\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('lang',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-lang-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-lang-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $x in /langs/div[1]/para return $x/fn:lang(\"en\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('lang',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-lang-4.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-lang-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $x in /langs/para[2] return $x/fn:lang(\"EN\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('lang',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-lang-5.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-lang-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " for $x in /langs/para[2] return $x/fn:lang(\"En\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('lang',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-lang-6.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-lang-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $x in /langs/para[2] return $x/fn:lang(\"eN\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('lang',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-lang-7.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-lang-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $x in /langs/para[2] return $x/fn:lang(\"en\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('lang',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-lang-8.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-lang-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $x in /langs/para[3] return $x/fn:lang(\"en-us\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('lang',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-lang-9.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-lang-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $x in /langs/para[3] return $x/fn:lang(\"EN\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('lang',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-lang-10.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-lang-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $x in /langs/para[3] return $x/fn:lang(\"En\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('lang',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-lang-11.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-lang-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $x in /langs/para[3] return $x/fn:lang(\"eN\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('lang',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-lang-12.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-lang-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $x in /langs/para[3] return $x/fn:lang(\"en\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('lang',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-lang-13.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-lang-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $x in /langs/para[3] return $x/fn:lang(\"en-us\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('lang',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-lang-14.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-lang-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1[fn:lang(\"en-us\")]", 
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-lang-15.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-lang-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $x in /langs/para[3] return $x/fn:lang(\"us-us\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('lang',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-lang-16.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-lang-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $x in /langs/para[2] return $x/fn:lang(\"fr\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('lang',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-lang-17.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-lang-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:lang(\"en\",fn:exactly-one(/langs/para[1]))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('lang',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-lang-18.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-lang-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:lang(\"fr\",fn:exactly-one(/langs/para[1]))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('lang',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-lang-19.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-lang-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:lang(\"en\",fn:exactly-one(/langs/para[3]))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('lang',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-lang-20.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-lang-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:lang(\"en\",fn:exactly-one(/langs/para[2]))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('lang',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-lang-21.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-lang-22'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:lang(\"en\",.)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-lang-22.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-lang-23'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:lang(\"de\",fn:exactly-one(/langs/para[4]))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('lang',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-lang-23.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-lang-24'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:lang(\"de-DE\",fn:exactly-one(/langs/para[4]))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('lang',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-lang-24.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-lang-25'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:lang(\"DE-de\",fn:exactly-one(/langs/para[4]))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('lang',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-lang-25.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-lang-26'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:lang(\"de-DE-1996\",fn:exactly-one(/langs/para[4]))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('lang',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-lang-26.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-lang-27'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:lang(\"de-DE-1998\",fn:exactly-one(/langs/para[4]))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('lang',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-lang-27.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-lang-28'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:lang(\"de-D\",fn:exactly-one(/langs/para[4]))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('lang',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-lang-28.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-lang-29'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:lang(\"de-DE-\",fn:exactly-one(/langs/para[4]))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('lang',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-lang-29.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-lang-30'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:lang(\"de-DE-1996-x\",fn:exactly-one(/langs/para[4]))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('lang',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-lang-30.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-lang-31'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $l := /langs/para[4]!fn:lang#1 return /langs/para[1]!$l('en')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('lang',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-lang-31.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-lang-32'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $l := /langs/para[4]!fn:lang#1 return /langs/para[1]!$l('de')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('lang',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-lang-32.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NodeLangFunc-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "lang()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NodeLangFunc-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NodeLangFunc-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if(false()) then lang(\"en\", .) else true()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NodeLangFunc-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NodeLangFunc-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if(false()) then lang(\"en\") else true()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NodeLangFunc-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-NodeLangFunc-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "lang(\"en\", 2)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('emptydoc',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-NodeLangFunc-4.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-NodeLangFunc-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $i := <e xml:lang=\"en\"> <b xml:lang=\"de\"/> </e> return (lang(\"de\", $i/b), lang(\"de\", $i))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-NodeLangFunc-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "true false") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-NodeLangFunc-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $i := <e xml:lang=\"en\"> <b xml:lang=\"de\"/> </e> return lang(\"de\", $i/b/@xml:lang)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-NodeLangFunc-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-NodeLangFunc-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "lang(\"de\", attribute xml:lang {()})", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-NodeLangFunc-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-NodeLangFunc-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "lang(\"en\", <e xml:lang=\"ene\"/>)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-NodeLangFunc-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-NodeLangFunc-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:lang(\"fr\", attribute xml:lang {\"fr\"})", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-NodeLangFunc-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-NodeLangFunc-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:lang(\"fr\", attribute xml:lang {()})", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-NodeLangFunc-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-fn-lang-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	if(current-date() > xs:date(\"2000-01-01\")) then lang(\"en\",<a/>) else ()
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-fn-lang-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.