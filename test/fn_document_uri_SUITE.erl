-module('fn_document_uri_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['fn-document-uri-1'/1]).
-export(['fn-document-uri-2'/1]).
-export(['fn-document-uri-3'/1]).
-export(['fn-document-uri-4'/1]).
-export(['fn-document-uri-5'/1]).
-export(['fn-document-uri-6'/1]).
-export(['fn-document-uri-7'/1]).
-export(['fn-document-uri-8'/1]).
-export(['fn-document-uri-9'/1]).
-export(['fn-document-uri-10'/1]).
-export(['fn-document-uri-11'/1]).
-export(['fn-document-uri-12'/1]).
-export(['fn-document-uri-13'/1]).
-export(['fn-document-uri-14'/1]).
-export(['fn-document-uri-15'/1]).
-export(['fn-document-uri-16'/1]).
-export(['fn-document-uri-17'/1]).
-export(['fn-document-uri-18'/1]).
-export(['fn-document-uri-19'/1]).
-export(['fn-document-uri-20'/1]).
-export(['fn-document-uri-21'/1]).
-export(['fn-document-uri-22'/1]).
-export(['fn-document-uri-23'/1]).
-export(['fn-document-uri-24'/1]).
-export(['fn-document-uri-25'/1]).
-export(['fn-document-uri-26'/1]).
-export(['fn-document-uri-27'/1]).
-export(['fn-document-uri-28'/1]).
-export(['fn-document-uri-29'/1]).
-export(['fn-document-uri-30'/1]).
-export(['fn-document-uri-31'/1]).
-export(['fn-document-uri-32'/1]).
-export(['fn-document-uri-33'/1]).
-export(['fn-document-uri-34'/1]).
-export(['fn-document-uri-35'/1]).
-export(['fn-document-uri-36'/1]).
-export(['fn-document-uri-37'/1]).
-export(['K-DocumentURIFunc-1'/1]).
-export(['K-DocumentURIFunc-2'/1]).
-export(['K-DocumentURIFunc-2a'/1]).
-export(['K-DocumentURIFunc-2b'/1]).
-export(['K-DocumentURIFunc-3'/1]).
-export(['K2-DocumentURIFunc-1'/1]).
-export(['K2-DocumentURIFunc-2'/1]).
-export(['K2-DocumentURIFunc-3'/1]).
-export(['K2-DocumentURIFunc-4'/1]).
-export(['K2-DocumentURIFunc-5'/1]).
-export(['K2-DocumentURIFunc-6'/1]).
-export(['K2-DocumentURIFunc-7'/1]).
-export(['K2-DocumentURIFunc-8'/1]).
-export(['K2-DocumentURIFunc-9'/1]).
-export(['K2-DocumentURIFunc-10'/1]).
-export(['K2-DocumentURIFunc-11'/1]).
-export(['fn-document-uri-0-ok'/1]).
suite() -> [{timetrap,{seconds, 5}}].
end_per_suite(_Config) -> 
   ct:timetrap({seconds,60}), 
   xqerl_module:unload(all).
init_per_suite(Config) -> 
   xqerl_module:one_time_init(), 
   {ok,_} = application:ensure_all_started(xqerl),
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   __BaseDir = filename:join(TD, "fn"),
   [{base_dir, __BaseDir}|Config].
all() -> [
'fn-document-uri-1', 
'fn-document-uri-2', 
'fn-document-uri-3', 
'fn-document-uri-4', 
'fn-document-uri-5', 
'fn-document-uri-6', 
'fn-document-uri-7', 
'fn-document-uri-8', 
'fn-document-uri-9', 
'fn-document-uri-10', 
'fn-document-uri-11', 
'fn-document-uri-12', 
'fn-document-uri-13', 
'fn-document-uri-14', 
'fn-document-uri-15', 
'fn-document-uri-16', 
'fn-document-uri-17', 
'fn-document-uri-18', 
'fn-document-uri-19', 
'fn-document-uri-20', 
'fn-document-uri-21', 
'fn-document-uri-22', 
'fn-document-uri-23', 
'fn-document-uri-24', 
'fn-document-uri-25', 
'fn-document-uri-26', 
'fn-document-uri-27', 
'fn-document-uri-28', 
'fn-document-uri-29', 
'fn-document-uri-30', 
'fn-document-uri-31', 
'fn-document-uri-32', 
'fn-document-uri-33', 
'fn-document-uri-34', 
'fn-document-uri-35', 
'fn-document-uri-36', 
'fn-document-uri-37', 
'K-DocumentURIFunc-1', 
'K-DocumentURIFunc-2', 
'K-DocumentURIFunc-2a', 
'K-DocumentURIFunc-2b', 
'K-DocumentURIFunc-3', 
'K2-DocumentURIFunc-1', 
'K2-DocumentURIFunc-2', 
'K2-DocumentURIFunc-3', 
'K2-DocumentURIFunc-4', 
'K2-DocumentURIFunc-5', 
'K2-DocumentURIFunc-6', 
'K2-DocumentURIFunc-7', 
'K2-DocumentURIFunc-8', 
'K2-DocumentURIFunc-9', 
'K2-DocumentURIFunc-10', 
'K2-DocumentURIFunc-11', 
'fn-document-uri-0-ok'
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
]; 
environment('TopMany',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../prod/AxisStep/TopMany.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('works-mod-uri',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/works-mod.xml"), ".","http://www.w3.org/fots/docs/works-mod.xml"}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, [{"uri","xs:string","'http://www.w3.org/fots/docs/works-mod.xml'"}]}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
].
'fn-document-uri-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:document-uri(<element1>contenty</element1>,\"Argument 2\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-document-uri-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-document-uri-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(fn:document-uri(()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-document-uri-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-document-uri-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(fn:document-uri(element anElement {\"some content\"}))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-document-uri-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-document-uri-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(fn:document-uri(comment {\"a comment node\"}))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-document-uri-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-document-uri-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(fn:document-uri(text {\"a text node\"}))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-document-uri-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-document-uri-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(fn:document-uri(attribute anAttribute {\"an attribute node\"}))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-document-uri-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-document-uri-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(fn:document-uri(processing-instruction {\"PITarget\"} {\"PIContent\"}))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-document-uri-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-document-uri-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(fn:document-uri(<?audio-output beep?>))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-document-uri-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-document-uri-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(fn:document-uri(<!-- A comment node -->))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-document-uri-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-document-uri-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(fn:document-uri(<anElement>element content</anElement>))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-document-uri-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-document-uri-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(fn:document-uri(document {<anElement>element content</anElement>}))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-document-uri-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-document-uri-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:contains(fn:document-uri(fn:doc($uri)),$uri) or (fn:document-uri(fn:doc($uri)) = \"\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod-uri',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-document-uri-12.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-document-uri-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(fn:document-uri(/works[1]/employee[1]))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-document-uri-13.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-document-uri-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(fn:document-uri(/works[1]/employee[1]/@name))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-document-uri-14.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-document-uri-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string-length(fn:string(fn:contains(fn:document-uri(fn:doc($uri)),$uri)))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod-uri',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-document-uri-15.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"4") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"5") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-document-uri-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:upper-case(fn:string(fn:contains(fn:document-uri(fn:doc($uri)),$uri)))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod-uri',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-document-uri-16.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "TRUE") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_string_value(Res, "FALSE") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-document-uri-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:lower-case(fn:string(fn:contains(fn:document-uri(fn:doc($uri)),$uri)))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod-uri',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-document-uri-17.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "true") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_string_value(Res, "false") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-document-uri-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:concat(fn:string(fn:contains(fn:document-uri(fn:doc($uri)),$uri)),\" A String\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod-uri',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-document-uri-18.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "true A String") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_string_value(Res, "false A String") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-document-uri-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string-join((fn:string(fn:contains(fn:document-uri(fn:doc($uri)),$uri)),\" A String\"),\"\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod-uri',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-document-uri-19.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "true A String") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_string_value(Res, "false A String") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-document-uri-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:substring-before(fn:string(fn:contains(fn:document-uri(/),\"works-mod\")),\"e\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-document-uri-20.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "tru") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-document-uri-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:substring-after(fn:string(fn:contains(fn:document-uri(/),\"works-mod\")),\"t\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-document-uri-21.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "rue") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-document-uri-22'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(attribute anAttribute {\"an attribute node\"})/document-uri()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-document-uri-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-document-uri-23'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(processing-instruction {\"PITarget\"} {\"PIContent\"})/document-uri()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-document-uri-23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-document-uri-24'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(<?audio-output beep?>)/document-uri()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-document-uri-24.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-document-uri-25'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(<!-- A comment node -->)/document-uri()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-document-uri-25.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-document-uri-26'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(<anElement>element content</anElement>)/document-uri()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-document-uri-26.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-document-uri-27'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(document {<anElement>element content</anElement>})/document-uri()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-document-uri-27.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-document-uri-28'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:contains((fn:doc($uri))/document-uri(),$uri) or ((fn:doc($uri))/document-uri() = \"\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod-uri',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-document-uri-28.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-document-uri-29'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count((/works[1]/employee[1])/document-uri())", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-document-uri-29.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-document-uri-30'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:count((/works[1]/employee[1]/@name)/document-uri())", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-document-uri-30.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-document-uri-31'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string-length(fn:string(fn:contains((fn:doc($uri))/document-uri(),$uri)))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod-uri',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-document-uri-31.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"4") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"5") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-document-uri-32'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:upper-case(fn:string(fn:contains((fn:doc($uri))/document-uri(),$uri)))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod-uri',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-document-uri-32.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "TRUE") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_string_value(Res, "FALSE") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-document-uri-33'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:lower-case(fn:string(fn:contains((fn:doc($uri))/document-uri(),$uri)))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod-uri',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-document-uri-33.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "true") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_string_value(Res, "false") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-document-uri-34'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:concat(fn:string(fn:contains((fn:doc($uri))/document-uri(),$uri)),\" A String\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod-uri',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-document-uri-34.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "true A String") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_string_value(Res, "false A String") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-document-uri-35'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string-join((fn:string(fn:contains((fn:doc($uri))/document-uri(),$uri)),\" A String\"),\"\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod-uri',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-document-uri-35.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "true A String") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_string_value(Res, "false A String") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-document-uri-36'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:substring-before(fn:string(fn:contains((/)/document-uri(),\"works-mod\")),\"e\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-document-uri-36.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "tru") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-document-uri-37'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:substring-after(fn:string(fn:contains((/)/document-uri(),\"works-mod\")),\"t\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-document-uri-37.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "rue") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DocumentURIFunc-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "document-uri((), \"wrong param\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-DocumentURIFunc-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DocumentURIFunc-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XP20 XQ10"}. 
'K-DocumentURIFunc-2a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "ends-with(document-uri(),\"works-mod.xml\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod-uri',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-DocumentURIFunc-2a.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DocumentURIFunc-2b'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "document-uri()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-DocumentURIFunc-2b.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-DocumentURIFunc-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(document-uri(()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-DocumentURIFunc-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DocumentURIFunc-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(document-uri(<!-- comment -->))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-DocumentURIFunc-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DocumentURIFunc-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(document-uri(attribute name {\"content\"}))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-DocumentURIFunc-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DocumentURIFunc-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(document-uri(<?target data?>))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-DocumentURIFunc-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DocumentURIFunc-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(document-uri(processing-instruction name {123}))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-DocumentURIFunc-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DocumentURIFunc-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(document-uri(text {123}))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-DocumentURIFunc-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DocumentURIFunc-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(document-uri(<elem/>))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-DocumentURIFunc-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DocumentURIFunc-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(document-uri(<elem attr=\"f\"/>/@attr))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-DocumentURIFunc-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DocumentURIFunc-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(document-uri(document {1}))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-DocumentURIFunc-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DocumentURIFunc-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $i := document { <e> <a/> <a/> <a/> <b/> <b/> <a/> <a/> </e> } return empty(document-uri($i))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-DocumentURIFunc-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-DocumentURIFunc-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $i := document { <e> <a/> <a/> <a/> <b/> <b/> <a/> <a/> </e> } return empty(document-uri(root(($i/a/b)[1])))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-DocumentURIFunc-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XPST0005") of 
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
'K2-DocumentURIFunc-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $i in (1, document-uri(.), 3) return typeswitch($i) case xs:anyURI return \"xs:anyURI\" case xs:integer return \"int\" default return \"FAILURE\"", 
   {Env,Opts} = xqerl_test:handle_environment(environment('TopMany',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-DocumentURIFunc-11.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "int xs:anyURI int") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-document-uri-0-ok'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(//works[fn:document-uri()])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod-uri',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-document-uri-0-ok.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.